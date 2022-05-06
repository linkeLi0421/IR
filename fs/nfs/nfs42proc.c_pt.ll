; ModuleID = '/llk/IR/fs/nfs/nfs42proc.c_pt.bc'
source_filename = "../fs/nfs/nfs42proc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs42_proc_layouterror:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs42_proc_layouterror\22\09\09\09\09\09"
module asm "__kstrtabns_nfs42_proc_layouterror:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type {}
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.127, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.128, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.129, ptr, %struct.address_space, %struct.list_head, %union.anon.148, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.127 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.128 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.129 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.148 = type { ptr }
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
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.__kernel_sockaddr_storage = type { %union.anon.131 }
%union.anon.131 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.nfs42_falloc_args = type { %struct.nfs4_sequence_args, ptr, %struct.nfs4_stateid_struct, i64, i64, ptr }
%struct.nfs4_sequence_args = type { ptr, i8 }
%struct.nfs4_stateid_struct = type { %union.anon.140, i32 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { i32, [12 x i8] }
%struct.nfs42_falloc_res = type { %struct.nfs4_sequence_res, i32, ptr, ptr }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%struct.nfs4_exception = type { ptr, ptr, ptr, i32, i8, i8 }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs42_copy_args = type { %struct.nfs4_sequence_args, ptr, %struct.nfs4_stateid_struct, i64, ptr, %struct.nfs4_stateid_struct, i64, i64, i8, ptr }
%struct.nfs42_copy_res = type { %struct.nfs4_sequence_res, %struct.nfs42_write_res, i8, i8, %struct.nfs_commitres }
%struct.nfs42_write_res = type { %struct.nfs4_stateid_struct, i64, %struct.nfs_writeverf }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.nfs_commitres = type { %struct.nfs4_sequence_res, i32, ptr, ptr, ptr }
%struct.nfs4_state = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, %struct.spinlock, %struct.seqlock_t, %struct.nfs4_stateid_struct, %struct.nfs4_stateid_struct, i32, i32, i32, i32, %struct.refcount_struct, %struct.wait_queue_head, %struct.callback_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.rpc_task_setup = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8 }
%struct.nfs42_offloadcancel_data = type { ptr, %struct.nfs42_offload_status_args, %struct.nfs42_offload_status_res }
%struct.nfs42_offload_status_args = type { %struct.nfs4_sequence_args, ptr, %struct.nfs4_stateid_struct }
%struct.nfs42_offload_status_res = type { %struct.nfs4_sequence_res, i64, i32 }
%struct.nfs42_copy_notify_args = type { %struct.nfs4_sequence_args, ptr, %struct.nfs4_stateid_struct, %struct.nl4_server }
%struct.nl4_server = type { i32, %union.anon.155 }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type { i32, [1025 x i8] }
%struct.nfs42_seek_args = type { %struct.nfs4_sequence_args, ptr, %struct.nfs4_stateid_struct, i64, i32 }
%struct.nfs42_seek_res = type { %struct.nfs4_sequence_res, i32, i32, i64 }
%struct.nfs42_layoutstat_data = type { ptr, %struct.nfs42_layoutstat_args, %struct.nfs42_layoutstat_res }
%struct.nfs42_layoutstat_args = type { %struct.nfs4_sequence_args, ptr, ptr, %struct.nfs4_stateid_struct, i32, ptr }
%struct.nfs42_layoutstat_res = type { %struct.nfs4_sequence_res, i32, i32 }
%struct.nfs42_layoutstat_devinfo = type { %struct.nfs4_deviceid, i64, i64, i64, i64, i64, i64, i32, %struct.nfs4_xdr_opaque_data }
%struct.nfs4_deviceid = type { [16 x i8] }
%struct.nfs4_xdr_opaque_data = type { ptr, ptr }
%struct.nfs4_xdr_opaque_ops = type { ptr, ptr }
%struct.pnfs_layout_segment = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnfs_layout_range, %struct.refcount_struct, i32, i32, ptr }
%struct.pnfs_layout_range = type { i32, i64, i64 }
%struct.pnfs_layout_hdr = type { %struct.refcount_struct, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.nfs4_stateid_struct, i32, i32, i32, i64, ptr, ptr, %struct.callback_head }
%struct.nfs42_layouterror_data = type { %struct.nfs42_layouterror_args, %struct.nfs42_layouterror_res, ptr, ptr }
%struct.nfs42_layouterror_args = type { %struct.nfs4_sequence_args, ptr, i32, [5 x %struct.nfs42_layout_error] }
%struct.nfs42_layout_error = type { i64, i64, %struct.nfs4_stateid_struct, [1 x %struct.nfs42_device_error] }
%struct.nfs42_device_error = type { %struct.nfs4_deviceid, i32, i32 }
%struct.nfs42_layouterror_res = type { %struct.nfs4_sequence_res, i32, i32 }
%struct.nfs42_clone_args = type { %struct.nfs4_sequence_args, ptr, ptr, %struct.nfs4_stateid_struct, %struct.nfs4_stateid_struct, i64, i64, i64, ptr }
%struct.nfs42_clone_res = type { %struct.nfs4_sequence_res, i32, ptr, ptr }
%struct.nfs42_getxattrargs = type { %struct.nfs4_sequence_args, ptr, ptr, i32, ptr }
%struct.nfs42_getxattrres = type { %struct.nfs4_sequence_res, i32 }
%struct.nfs42_setxattrargs = type { %struct.nfs4_sequence_args, ptr, ptr, i32, i32, ptr }
%struct.nfs42_setxattrres = type { %struct.nfs4_sequence_res, %struct.nfs4_change_info }
%struct.nfs4_change_info = type { i32, i64, i64 }
%struct.page = type { i32, %union.anon.24, %union.anon.41, %struct.atomic_t }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.41 = type { %struct.atomic_t }
%struct.nfs42_listxattrsargs = type { %struct.nfs4_sequence_args, ptr, i32, i64, ptr }
%struct.nfs42_listxattrsres = type { %struct.nfs4_sequence_res, ptr, ptr, i32, i64, i8, i32 }
%struct.nfs42_removexattrargs = type { %struct.nfs4_sequence_args, ptr, ptr }
%struct.nfs42_removexattrres = type { %struct.nfs4_sequence_res, %struct.nfs4_change_info }
%struct.nfs4_copy_state = type { %struct.list_head, %struct.list_head, %struct.nfs4_stateid_struct, %struct.completion, i64, %struct.nfs_writeverf, i32, i32, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.133, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.133 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }

@nfs4_procedures = external dso_local constant [0 x %struct.rpc_procinfo], align 4
@__const.nfs42_proc_allocate.msg = private unnamed_addr constant %struct.rpc_message { ptr getelementptr (i8, ptr @nfs4_procedures, i64 1760), ptr null, ptr null, ptr null }, align 4
@__const.nfs42_proc_deallocate.msg = private unnamed_addr constant %struct.rpc_message { ptr getelementptr (i8, ptr @nfs4_procedures, i64 1792), ptr null, ptr null, ptr null }, align 4
@nfs42_layoutstat_ops = internal constant %struct.rpc_call_ops { ptr @nfs42_layoutstat_prepare, ptr @nfs42_layoutstat_done, ptr null, ptr @nfs42_layoutstat_release }, align 4
@__const.nfs42_proc_layouterror.msg = private unnamed_addr constant %struct.rpc_message { ptr getelementptr (i8, ptr @nfs4_procedures, i64 1984), ptr null, ptr null, ptr null }, align 4
@nfs42_layouterror_ops = internal constant %struct.rpc_call_ops { ptr @nfs42_layouterror_prepare, ptr @nfs42_layouterror_done, ptr null, ptr @nfs42_layouterror_release }, align 4
@__kstrtab_nfs42_proc_layouterror = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs42_proc_layouterror = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs42_proc_layouterror = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs42_proc_layouterror to i32), ptr @__kstrtab_nfs42_proc_layouterror, ptr @__kstrtabns_nfs42_proc_layouterror }, section "___ksymtab_gpl+nfs42_proc_layouterror", align 4
@__const.nfs42_proc_clone.msg = private unnamed_addr constant %struct.rpc_message { ptr getelementptr (i8, ptr @nfs4_procedures, i64 1856), ptr null, ptr null, ptr null }, align 4
@__tracepoint_nfs4_fallocate = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_nfs4_deallocate = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs4_copy = external dso_local global %struct.tracepoint, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@nfs42_copy_dest_done.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"fs/nfs/nfs42proc.c\00", align 1
@nfs42_offload_cancel_ops = internal constant %struct.rpc_call_ops { ptr @nfs42_offload_cancel_prepare, ptr @nfs42_offload_cancel_done, ptr null, ptr @nfs42_free_offloadcancel_data }, align 4
@nfsiod_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_nfs4_offload_cancel = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s.%u.%u\00", align 1
@__tracepoint_nfs4_copy_notify = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs4_llseek = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs4_layoutstats = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs4_layouterror = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs4_clone = external dso_local global %struct.tracepoint, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_nfs42_proc_layouterror], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_allocate(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) @__const.nfs42_proc_allocate.msg, i32 16, i1 false)
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nfs_server, ptr %10, i32 0, i32 10
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 1048576
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  tail call void @down_write(ptr noundef %16) #10
  %17 = call fastcc i32 @nfs42_proc_fallocate(ptr noundef nonnull %4, ptr noundef %0, i64 noundef %1, i64 noundef %2)
  %18 = icmp eq i32 %17, -95
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 27
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nfs_server, ptr %22, i32 0, i32 10
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, -1048577
  store i32 %25, ptr %23, align 8
  br label %26

26:                                               ; preds = %19, %15
  call void @up_write(ptr noundef %16) #10
  br label %27

27:                                               ; preds = %26, %3
  %28 = phi i32 [ %17, %26 ], [ -95, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret i32 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs42_proc_fallocate(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [3 x i32], align 4
  %6 = alloca %struct.nfs42_falloc_args, align 8
  %7 = alloca %struct.nfs42_falloc_res, align 4
  %8 = alloca %struct.nfs4_exception, align 4
  %9 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #10
  %15 = getelementptr inbounds i8, ptr %8, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %15, i8 0, i32 12, i1 false)
  %16 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %17 = load ptr, ptr %16, align 8
  %18 = tail call ptr @nfs_get_lock_context(ptr noundef %17) #10
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = ptrtoint ptr %18 to i32
  br label %113

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.nfs4_exception, ptr %8, i32 0, i32 1
  store ptr %10, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nfs_lock_context, ptr %18, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nfs_open_context, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  store ptr %27, ptr %8, align 4
  %28 = tail call i32 @nfs_sync_inode(ptr noundef %10) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %111

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.nfs42_falloc_args, ptr %6, i32 0, i32 1
  %32 = getelementptr inbounds %struct.nfs42_falloc_args, ptr %6, i32 0, i32 2
  %33 = getelementptr inbounds %struct.nfs42_falloc_args, ptr %6, i32 0, i32 3
  %34 = getelementptr inbounds %struct.nfs42_falloc_args, ptr %6, i32 0, i32 4
  %35 = getelementptr inbounds %struct.nfs42_falloc_args, ptr %6, i32 0, i32 5
  %36 = getelementptr inbounds %struct.nfs42_falloc_res, ptr %7, i32 0, i32 3
  %37 = getelementptr inbounds %struct.rpc_message, ptr %0, i32 0, i32 1
  %38 = getelementptr inbounds %struct.rpc_message, ptr %0, i32 0, i32 2
  %39 = getelementptr inbounds %struct.nfs42_falloc_res, ptr %7, i32 0, i32 2
  %40 = getelementptr inbounds %struct.nfs4_exception, ptr %8, i32 0, i32 4
  br label %41

41:                                               ; preds = %105, %30
  %42 = load ptr, ptr %9, align 8
  %43 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 8
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 27
  %46 = load ptr, ptr %45, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #10
  %47 = getelementptr i8, ptr %42, i32 -288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #10
  store ptr %47, ptr %31, align 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %32, i8 0, i32 20, i1 false) #10
  store i64 %2, ptr %33, align 8
  store i64 %3, ptr %34, align 8
  store ptr %5, ptr %35, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %7, i8 0, i64 32, i1 false) #10
  store ptr %46, ptr %36, align 4
  store ptr %6, ptr %37, align 4
  store ptr %7, ptr %38, align 4
  %48 = load ptr, ptr %24, align 4
  %49 = call i32 @nfs4_set_rw_stateid(ptr noundef %32, ptr noundef %48, ptr noundef %18, i32 noundef 2) #10
  switch i32 %49, label %102 [
    i32 0, label %50
    i32 -11, label %100
  ]

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.nfs_server, ptr %46, i32 0, i32 41
  call void @nfs4_bitmask_set(ptr noundef nonnull %5, ptr noundef %51, ptr noundef %42, i32 noundef 16384) #10
  %52 = call ptr @nfs_alloc_fattr() #10
  store ptr %52, ptr %39, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %100, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.nfs_server, ptr %46, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = call i32 @nfs4_call_sync(ptr noundef %56, ptr noundef %46, ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0) #10
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load ptr, ptr %39, align 4
  %61 = call i32 @nfs_post_op_update_inode_force_wcc(ptr noundef %42, ptr noundef %60) #10
  br label %62

62:                                               ; preds = %59, %54
  %63 = phi i32 [ %61, %59 ], [ %57, %54 ]
  %64 = load ptr, ptr %0, align 4
  %65 = icmp eq ptr %64, getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs4_procedures, i32 0, i32 55)
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  %67 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_fallocate, i32 0, i32 1), align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %98

69:                                               ; preds = %66
  %70 = tail call ptr @llvm.thread.pointer() #10
  %71 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = lshr i32 %72, 5
  %74 = getelementptr i32, ptr @__cpu_online_mask, i32 %73
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %72, 31
  %77 = shl nuw i32 1, %76
  %78 = and i32 %77, %75
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %98, label %80

80:                                               ; preds = %69
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %81 = call i32 @__traceiter_nfs4_fallocate(ptr noundef null, ptr noundef %42, ptr noundef nonnull %6, i32 noundef %63) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  br label %98

82:                                               ; preds = %62
  %83 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_deallocate, i32 0, i32 1), align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  %86 = tail call ptr @llvm.thread.pointer() #10
  %87 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %88 = load i32, ptr %87, align 8
  %89 = lshr i32 %88, 5
  %90 = getelementptr i32, ptr @__cpu_online_mask, i32 %89
  %91 = load volatile i32, ptr %90, align 4
  %92 = and i32 %88, 31
  %93 = shl nuw i32 1, %92
  %94 = and i32 %93, %91
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %85
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %97 = call i32 @__traceiter_nfs4_deallocate(ptr noundef null, ptr noundef %42, ptr noundef nonnull %6, i32 noundef %63) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %98

98:                                               ; preds = %96, %85, %82, %80, %69, %66
  %99 = load ptr, ptr %39, align 4
  call void @kfree(ptr noundef %99) #10
  br label %102

100:                                              ; preds = %50, %41
  %101 = phi i32 [ -12, %50 ], [ -10025, %41 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  br label %105

102:                                              ; preds = %98, %41
  %103 = phi i32 [ %63, %98 ], [ %49, %41 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  %104 = icmp eq i32 %103, -524
  br i1 %104, label %111, label %105

105:                                              ; preds = %102, %100
  %106 = phi i32 [ %101, %100 ], [ %103, %102 ]
  %107 = call i32 @nfs4_handle_exception(ptr noundef %14, i32 noundef %106, ptr noundef nonnull %8) #10
  %108 = load i8, ptr %40, align 4
  %109 = and i8 %108, 8
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %41

111:                                              ; preds = %105, %102, %22
  %112 = phi i32 [ %28, %22 ], [ -95, %102 ], [ %107, %105 ]
  call void @nfs_put_lock_context(ptr noundef %18) #10
  br label %113

113:                                              ; preds = %111, %20
  %114 = phi i32 [ %21, %20 ], [ %112, %111 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #10
  ret i32 %114
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_deallocate(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) @__const.nfs42_proc_deallocate.msg, i32 16, i1 false)
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nfs_server, ptr %10, i32 0, i32 10
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 2097152
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  tail call void @down_write(ptr noundef %16) #10
  %17 = call fastcc i32 @nfs42_proc_fallocate(ptr noundef nonnull %4, ptr noundef %0, i64 noundef %1, i64 noundef %2)
  switch i32 %17, label %28 [
    i32 0, label %18
    i32 -95, label %21
  ]

18:                                               ; preds = %15
  %19 = add i64 %1, -1
  %20 = add i64 %19, %2
  call void @truncate_pagecache_range(ptr noundef %6, i64 noundef %1, i64 noundef %20) #10
  br label %28

21:                                               ; preds = %15
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 27
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nfs_server, ptr %24, i32 0, i32 10
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, -2097153
  store i32 %27, ptr %25, align 8
  br label %28

28:                                               ; preds = %21, %18, %15
  call void @up_write(ptr noundef %16) #10
  br label %29

29:                                               ; preds = %28, %3
  %30 = phi i32 [ %17, %28 ], [ -95, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_copy(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6, i1 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca %struct.rpc_message, align 4
  %10 = alloca %struct.nfs42_copy_args, align 8
  %11 = alloca %struct.nfs42_copy_res, align 8
  %12 = alloca %struct.nfs4_exception, align 4
  %13 = alloca %struct.nfs4_exception, align 4
  %14 = alloca i8, align 1
  %15 = zext i1 %7 to i8
  %16 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 27
  %21 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %10) #10
  %22 = getelementptr inbounds %struct.nfs42_copy_args, ptr %10, i32 0, i32 1
  %23 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %10, i8 0, i64 88, i1 false)
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr i8, ptr %24, i32 -288
  store ptr %25, ptr %22, align 8
  %26 = getelementptr inbounds %struct.nfs42_copy_args, ptr %10, i32 0, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %26, i8 0, i32 20, i1 false)
  %27 = getelementptr inbounds %struct.nfs42_copy_args, ptr %10, i32 0, i32 3
  store i64 %1, ptr %27, align 8
  %28 = getelementptr inbounds %struct.nfs42_copy_args, ptr %10, i32 0, i32 4
  %29 = getelementptr i8, ptr %17, i32 -288
  store ptr %29, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nfs42_copy_args, ptr %10, i32 0, i32 5
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %30, i8 0, i32 20, i1 false)
  %31 = getelementptr inbounds %struct.nfs42_copy_args, ptr %10, i32 0, i32 6
  store i64 %3, ptr %31, align 8
  %32 = getelementptr inbounds %struct.nfs42_copy_args, ptr %10, i32 0, i32 7
  %33 = zext i32 %4 to i64
  store i64 %33, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nfs42_copy_args, ptr %10, i32 0, i32 8
  store i8 %15, ptr %34, align 8
  %35 = getelementptr inbounds %struct.nfs42_copy_args, ptr %10, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %11) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(120) %11, i8 0, i32 120, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %12) #10
  %36 = getelementptr inbounds %struct.nfs4_exception, ptr %12, i32 0, i32 1
  %37 = getelementptr inbounds i8, ptr %12, i32 16
  store i32 0, ptr %37, align 4
  store ptr %24, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nfs4_exception, ptr %12, i32 0, i32 2
  store ptr %26, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nfs4_exception, ptr %12, i32 0, i32 3
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.nfs4_exception, ptr %12, i32 0, i32 4
  %41 = getelementptr inbounds %struct.nfs4_exception, ptr %12, i32 0, i32 5
  store i8 0, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %13) #10
  %42 = getelementptr inbounds %struct.nfs4_exception, ptr %13, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %13, i8 0, i64 20, i1 false)
  store ptr %17, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nfs4_exception, ptr %13, i32 0, i32 2
  store ptr %30, ptr %43, align 4
  %44 = getelementptr inbounds %struct.nfs4_exception, ptr %13, i32 0, i32 4
  store i8 0, ptr %44, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #10
  store i8 0, ptr %14, align 1
  %45 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %46 = load ptr, ptr %45, align 8
  %47 = call ptr @nfs_get_lock_context(ptr noundef %46) #10
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %8
  %50 = ptrtoint ptr %47 to i32
  br label %271

51:                                               ; preds = %8
  %52 = getelementptr inbounds %struct.nfs_lock_context, ptr %47, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nfs_open_context, ptr %53, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  store ptr %55, ptr %12, align 4
  %56 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 15
  %57 = load ptr, ptr %56, align 8
  %58 = call ptr @nfs_get_lock_context(ptr noundef %57) #10
  %59 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = ptrtoint ptr %58 to i32
  br label %269

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.nfs_lock_context, ptr %58, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.nfs_open_context, ptr %64, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  store ptr %66, ptr %13, align 4
  %67 = getelementptr inbounds %struct.rpc_message, ptr %9, i32 0, i32 1
  %68 = getelementptr inbounds %struct.rpc_message, ptr %9, i32 0, i32 2
  %69 = getelementptr inbounds %struct.rpc_message, ptr %9, i32 0, i32 3
  %70 = icmp eq ptr %5, null
  %71 = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %6, i32 0, i32 1
  %72 = getelementptr inbounds %struct.nfs42_copy_args, ptr %10, i32 0, i32 2, i32 1
  %73 = getelementptr inbounds %struct.nfs42_copy_res, ptr %11, i32 0, i32 4, i32 3
  %74 = getelementptr inbounds %struct.nfs42_copy_res, ptr %11, i32 0, i32 1, i32 2
  %75 = getelementptr inbounds %struct.nfs42_copy_res, ptr %11, i32 0, i32 3
  %76 = getelementptr inbounds %struct.nfs42_copy_res, ptr %11, i32 0, i32 1, i32 2, i32 1
  %77 = getelementptr inbounds %struct.nfs42_copy_res, ptr %11, i32 0, i32 1, i32 1
  br label %78

78:                                               ; preds = %258, %62
  %79 = load ptr, ptr %16, align 8
  %80 = getelementptr inbounds %struct.inode, ptr %79, i32 0, i32 24
  call void @down_write(ptr noundef %80) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs4_procedures, i32 0, i32 59), ptr %9, align 4
  store ptr %10, ptr %67, align 4
  store ptr %11, ptr %68, align 4
  store ptr null, ptr %69, align 4
  %81 = load ptr, ptr %16, align 8
  %82 = load ptr, ptr %23, align 8
  %83 = getelementptr inbounds %struct.inode, ptr %81, i32 0, i32 8
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.super_block, ptr %84, i32 0, i32 27
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.inode, ptr %82, i32 0, i32 8
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.super_block, ptr %88, i32 0, i32 27
  %90 = load ptr, ptr %89, align 4
  %91 = load i64, ptr %27, align 8
  %92 = load i64, ptr %31, align 8
  %93 = load i64, ptr %32, align 8
  br i1 %70, label %96, label %94

94:                                               ; preds = %78
  store ptr %5, ptr %35, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %26, ptr noundef align 4 dereferenceable(16) %6, i32 16, i1 false) #10
  %95 = load i32, ptr %71, align 4
  store i32 %95, ptr %72, align 4
  br label %102

96:                                               ; preds = %78
  %97 = load ptr, ptr %52, align 4
  %98 = call i32 @nfs4_set_rw_stateid(ptr noundef %26, ptr noundef %97, ptr noundef %47, i32 noundef 1) #10
  switch i32 %98, label %197 [
    i32 0, label %99
    i32 -11, label %101
  ]

99:                                               ; preds = %96
  %100 = load ptr, ptr %23, align 8
  br label %102

101:                                              ; preds = %96
  br label %197

102:                                              ; preds = %99, %94
  %103 = phi ptr [ %100, %99 ], [ %82, %94 ]
  %104 = getelementptr inbounds %struct.inode, ptr %103, i32 0, i32 9
  %105 = load ptr, ptr %104, align 8
  %106 = and i64 %93, 4294967295
  %107 = add i64 %91, -1
  %108 = add i64 %107, %106
  %109 = call i32 @nfs_filemap_write_and_wait_range(ptr noundef %105, i64 noundef %91, i64 noundef %108) #10
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %197

111:                                              ; preds = %102
  %112 = load ptr, ptr %63, align 4
  %113 = call i32 @nfs4_set_rw_stateid(ptr noundef %30, ptr noundef %112, ptr noundef %58, i32 noundef 2) #10
  switch i32 %113, label %197 [
    i32 0, label %115
    i32 -11, label %114
  ]

114:                                              ; preds = %111
  br label %197

115:                                              ; preds = %111
  %116 = call i32 @nfs_sync_inode(ptr noundef %81) #10
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %197

118:                                              ; preds = %115
  store ptr null, ptr %73, align 4
  %119 = load i8, ptr %34, align 8, !range !13
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %123 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %122, i32 noundef 3392, i32 noundef 12) #11
  store ptr %123, ptr %73, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %197, label %125

125:                                              ; preds = %121, %118
  %126 = load ptr, ptr %52, align 4
  %127 = getelementptr inbounds %struct.nfs_open_context, ptr %126, i32 0, i32 5
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.nfs4_state, ptr %128, i32 0, i32 5
  call void @_set_bit(i32 noundef 13, ptr noundef %129) #10
  %130 = load ptr, ptr %63, align 4
  %131 = getelementptr inbounds %struct.nfs_open_context, ptr %130, i32 0, i32 5
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.nfs4_state, ptr %132, i32 0, i32 5
  call void @_set_bit(i32 noundef 12, ptr noundef %133) #10
  %134 = getelementptr inbounds %struct.nfs_server, ptr %86, i32 0, i32 3
  %135 = load ptr, ptr %134, align 4
  %136 = call i32 @nfs4_call_sync(ptr noundef %135, ptr noundef %86, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef 0) #10
  %137 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_copy, i32 0, i32 1), align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %125
  %140 = tail call ptr @llvm.thread.pointer() #10
  %141 = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 2
  %142 = load i32, ptr %141, align 8
  %143 = lshr i32 %142, 5
  %144 = getelementptr i32, ptr @__cpu_online_mask, i32 %143
  %145 = load volatile i32, ptr %144, align 4
  %146 = and i32 %142, 31
  %147 = shl nuw i32 1, %146
  %148 = and i32 %147, %145
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %139
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %151 = call i32 @__traceiter_nfs4_copy(ptr noundef null, ptr noundef %82, ptr noundef %81, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %5, i32 noundef %136) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %152

152:                                              ; preds = %150, %139, %125
  switch i32 %136, label %191 [
    i32 -524, label %153
    i32 0, label %157
  ]

153:                                              ; preds = %152
  %154 = getelementptr inbounds %struct.nfs_server, ptr %86, i32 0, i32 10
  %155 = load i32, ptr %154, align 8
  %156 = and i32 %155, -16777217
  store i32 %156, ptr %154, align 8
  br label %191

157:                                              ; preds = %152
  %158 = load i8, ptr %34, align 8, !range !13
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %157
  %161 = load ptr, ptr %73, align 4
  %162 = call i32 @bcmp(ptr noundef dereferenceable(8) %74, ptr noundef dereferenceable(8) %161, i32 8) #10
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %191

164:                                              ; preds = %160, %157
  %165 = load i8, ptr %75, align 1, !range !13
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = call fastcc i32 @handle_async_copy(ptr noundef nonnull %11, ptr noundef %86, ptr noundef %90, ptr noundef %0, ptr noundef %2, ptr noundef %26, ptr noundef nonnull %14) #10
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %191

170:                                              ; preds = %167
  %171 = load i8, ptr %75, align 1
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %181, label %173

173:                                              ; preds = %170
  %174 = load i8, ptr %34, align 8, !range !13
  br label %175

175:                                              ; preds = %173, %164
  %176 = phi i8 [ %174, %173 ], [ %158, %164 ]
  %177 = icmp ne i8 %176, 0
  %178 = load i32, ptr %76, align 8
  %179 = icmp eq i32 %178, 2
  %180 = select i1 %177, i1 true, i1 %179
  br i1 %180, label %187, label %184

181:                                              ; preds = %170
  %182 = load i32, ptr %76, align 8
  %183 = icmp eq i32 %182, 2
  br i1 %183, label %187, label %184

184:                                              ; preds = %181, %175
  %185 = call fastcc i32 @process_copy_commit(ptr noundef %2, i64 noundef %92, ptr noundef nonnull %11) #10
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %184, %181, %175
  %188 = load i64, ptr %77, align 8
  call fastcc void @nfs42_copy_dest_done(ptr noundef %81, i64 noundef %92, i64 noundef %188) #10
  call void @nfs_invalidate_atime(ptr noundef %82) #10
  %189 = load i64, ptr %77, align 8
  %190 = trunc i64 %189 to i32
  br label %191

191:                                              ; preds = %187, %184, %167, %160, %153, %152
  %192 = phi i32 [ -524, %153 ], [ %190, %187 ], [ %185, %184 ], [ %168, %167 ], [ %136, %152 ], [ -11, %160 ]
  %193 = load i8, ptr %34, align 8, !range !13
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %191
  %196 = load ptr, ptr %73, align 4
  call void @kfree(ptr noundef %196) #10
  br label %197

197:                                              ; preds = %195, %191, %121, %115, %114, %111, %102, %101, %96
  %198 = phi i32 [ -10025, %101 ], [ %98, %96 ], [ %109, %102 ], [ -10025, %114 ], [ %113, %111 ], [ %116, %115 ], [ -12, %121 ], [ %192, %195 ], [ %192, %191 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10
  %199 = load ptr, ptr %16, align 8
  %200 = getelementptr inbounds %struct.inode, ptr %199, i32 0, i32 24
  call void @up_write(ptr noundef %200) #10
  %201 = icmp sgt i32 %198, -1
  br i1 %201, label %267, label %202

202:                                              ; preds = %197
  switch i32 %198, label %252 [
    i32 -524, label %203
    i32 -11, label %221
    i32 -10094, label %227
    i32 -116, label %233
    i32 -10091, label %233
  ]

203:                                              ; preds = %202
  %204 = load ptr, ptr %23, align 8
  %205 = getelementptr inbounds %struct.inode, ptr %204, i32 0, i32 8
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr inbounds %struct.super_block, ptr %206, i32 0, i32 27
  %208 = load ptr, ptr %207, align 4
  %209 = load ptr, ptr %208, align 8
  %210 = load ptr, ptr %16, align 8
  %211 = getelementptr inbounds %struct.inode, ptr %210, i32 0, i32 8
  %212 = load ptr, ptr %211, align 4
  %213 = getelementptr inbounds %struct.super_block, ptr %212, i32 0, i32 27
  %214 = load ptr, ptr %213, align 4
  %215 = load ptr, ptr %214, align 8
  %216 = getelementptr inbounds %struct.nfs_client, ptr %209, i32 0, i32 38
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr inbounds %struct.nfs_client, ptr %215, i32 0, i32 38
  %219 = load ptr, ptr %218, align 4
  %220 = call zeroext i1 @nfs4_check_serverowner_major_id(ptr noundef %217, ptr noundef %219) #10
  br i1 %220, label %267, label %233

221:                                              ; preds = %202
  %222 = load i8, ptr %14, align 1, !range !13
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %224, label %267

224:                                              ; preds = %221
  %225 = load i8, ptr %44, align 4
  %226 = or i8 %225, 8
  store i8 %226, ptr %44, align 4
  br label %258

227:                                              ; preds = %202
  %228 = load i8, ptr %34, align 8, !range !13
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %252

230:                                              ; preds = %227
  store i8 1, ptr %34, align 8
  %231 = load i8, ptr %44, align 4
  %232 = or i8 %231, 8
  store i8 %232, ptr %44, align 4
  br label %258

233:                                              ; preds = %203, %202, %202
  %234 = load ptr, ptr %23, align 8
  %235 = getelementptr inbounds %struct.inode, ptr %234, i32 0, i32 8
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.super_block, ptr %236, i32 0, i32 27
  %238 = load ptr, ptr %237, align 4
  %239 = load ptr, ptr %238, align 8
  %240 = load ptr, ptr %16, align 8
  %241 = getelementptr inbounds %struct.inode, ptr %240, i32 0, i32 8
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr inbounds %struct.super_block, ptr %242, i32 0, i32 27
  %244 = load ptr, ptr %243, align 4
  %245 = load ptr, ptr %244, align 8
  %246 = getelementptr inbounds %struct.nfs_client, ptr %239, i32 0, i32 38
  %247 = load ptr, ptr %246, align 4
  %248 = getelementptr inbounds %struct.nfs_client, ptr %245, i32 0, i32 38
  %249 = load ptr, ptr %248, align 4
  %250 = call zeroext i1 @nfs4_check_serverowner_major_id(ptr noundef %247, ptr noundef %249) #10
  br i1 %250, label %252, label %251

251:                                              ; preds = %233
  call fastcc void @nfs42_do_offload_cancel_async(ptr noundef %0, ptr noundef %26)
  br label %267

252:                                              ; preds = %233, %227, %202
  %253 = call i32 @nfs4_handle_exception(ptr noundef %21, i32 noundef %198, ptr noundef nonnull %12) #10
  %254 = call i32 @nfs4_handle_exception(ptr noundef %21, i32 noundef %198, ptr noundef nonnull %13) #10
  %255 = icmp eq i32 %254, 0
  %256 = select i1 %255, i32 %253, i32 %254
  %257 = load i8, ptr %44, align 4
  br label %258

258:                                              ; preds = %252, %230, %224
  %259 = phi i8 [ %226, %224 ], [ %232, %230 ], [ %257, %252 ]
  %260 = phi i32 [ -11, %224 ], [ -10094, %230 ], [ %256, %252 ]
  %261 = load i8, ptr %40, align 4
  %262 = and i8 %261, 8
  %263 = icmp ne i8 %262, 0
  %264 = and i8 %259, 8
  %265 = icmp ne i8 %264, 0
  %266 = select i1 %263, i1 true, i1 %265
  br i1 %266, label %78, label %267

267:                                              ; preds = %258, %251, %221, %203, %197
  %268 = phi i32 [ -95, %251 ], [ -95, %203 ], [ %260, %258 ], [ -11, %221 ], [ %198, %197 ]
  call void @nfs_put_lock_context(ptr noundef %58) #10
  br label %269

269:                                              ; preds = %267, %60
  %270 = phi i32 [ %61, %60 ], [ %268, %267 ]
  call void @nfs_put_lock_context(ptr noundef %47) #10
  br label %271

271:                                              ; preds = %269, %49
  %272 = phi i32 [ %50, %49 ], [ %270, %269 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #10
  ret i32 %272
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_get_lock_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs42_do_offload_cancel_async(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.rpc_message, align 4
  %4 = alloca %struct.rpc_task_setup, align 4
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %12 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs4_procedures, i32 0, i32 60), ptr %3, align 4
  %13 = getelementptr inbounds %struct.rpc_message, ptr %3, i32 0, i32 1
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rpc_message, ptr %3, i32 0, i32 2
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rpc_message, ptr %3, i32 0, i32 3
  %16 = getelementptr inbounds %struct.nfs_open_context, ptr %12, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  store ptr %17, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #10
  %18 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 1
  %19 = getelementptr inbounds %struct.nfs_server, ptr %10, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i64 36, i1 false)
  %20 = load ptr, ptr %19, align 4
  store ptr %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 3
  store ptr null, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 4
  store ptr %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 5
  store ptr @nfs42_offload_cancel_ops, ptr %23, align 4
  %24 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 6
  %25 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 7
  %26 = load ptr, ptr @nfsiod_workqueue, align 4
  store ptr %26, ptr %25, align 4
  %27 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 8
  store i16 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nfs_server, ptr %10, i32 0, i32 10
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 33554432
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %2
  %33 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %34 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3392, i32 noundef 80) #11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %52, label %36

36:                                               ; preds = %32
  store ptr %10, ptr %34, align 8
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr i8, ptr %37, i32 -288
  %39 = getelementptr inbounds %struct.nfs42_offloadcancel_data, ptr %34, i32 0, i32 1
  %40 = getelementptr inbounds %struct.nfs42_offloadcancel_data, ptr %34, i32 0, i32 1, i32 1
  store ptr %38, ptr %40, align 4
  %41 = getelementptr inbounds %struct.nfs42_offloadcancel_data, ptr %34, i32 0, i32 1, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(20) %41, ptr noundef align 4 dereferenceable(20) %1, i32 20, i1 false)
  store ptr %39, ptr %13, align 4
  %42 = getelementptr inbounds %struct.nfs42_offloadcancel_data, ptr %34, i32 0, i32 2
  store ptr %42, ptr %14, align 4
  store ptr %34, ptr %24, align 4
  call void @nfs4_init_sequence(ptr noundef %39, ptr noundef %42, i32 noundef 1, i32 noundef 0) #10
  %43 = call ptr @rpc_run_task(ptr noundef nonnull %4) #10
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %52, label %45

45:                                               ; preds = %36
  %46 = call i32 @__rpc_wait_for_completion_task(ptr noundef %43, ptr noundef null) #10
  %47 = icmp eq i32 %46, -524
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, ptr %28, align 8
  %50 = and i32 %49, -33554433
  store i32 %50, ptr %28, align 8
  br label %51

51:                                               ; preds = %48, %45
  call void @rpc_put_task(ptr noundef %43) #10
  br label %52

52:                                               ; preds = %51, %36, %32, %2
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_handle_exception(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_put_lock_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_copy_notify(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rpc_message, align 4
  %5 = alloca %struct.nfs4_exception, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #10
  %12 = getelementptr inbounds %struct.nfs4_exception, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  store ptr %7, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nfs_server, ptr %11, i32 0, i32 10
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 134217728
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %105, label %17

17:                                               ; preds = %3
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3392, i32 noundef 1068) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %105, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr i8, ptr %22, i32 -288
  %24 = getelementptr inbounds %struct.nfs42_copy_notify_args, ptr %19, i32 0, i32 1
  store ptr %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.nfs42_copy_notify_args, ptr %19, i32 0, i32 3
  store i32 3, ptr %25, align 8
  %26 = getelementptr inbounds %struct.nfs42_copy_notify_args, ptr %19, i32 0, i32 3, i32 1
  %27 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 27
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %32, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %34 = getelementptr inbounds %struct.nfs_client, ptr %33, i32 0, i32 11
  %35 = load ptr, ptr %34, align 8
  %36 = tail call ptr @rpc_peeraddr2str(ptr noundef %35, i32 noundef 5) #10
  %37 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %26, i32 noundef 5, ptr noundef nonnull @.str.3, ptr noundef %36) #10
  %38 = getelementptr inbounds %struct.nfs42_copy_notify_args, ptr %19, i32 0, i32 3, i32 1, i32 0, i32 1, i32 60
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nfs42_copy_notify_args, ptr %19, i32 0, i32 3, i32 1, i32 0, i32 1, i32 1
  %40 = load ptr, ptr %34, align 8
  %41 = tail call ptr @rpc_peeraddr2str(ptr noundef %40, i32 noundef 0) #10
  %42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %39, i32 noundef 58, ptr noundef nonnull @.str.4, ptr noundef %41, i32 noundef 8, i32 noundef 1) #10
  %43 = getelementptr inbounds %struct.nfs42_copy_notify_args, ptr %19, i32 0, i32 3, i32 1, i32 0, i32 1, i32 64
  store i32 %42, ptr %43, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %44 = getelementptr inbounds %struct.nfs42_copy_notify_args, ptr %19, i32 0, i32 2
  %45 = getelementptr inbounds %struct.nfs4_exception, ptr %5, i32 0, i32 2
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 1
  %47 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 2
  %48 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 3
  %49 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %50 = getelementptr inbounds %struct.nfs4_exception, ptr %5, i32 0, i32 4
  br label %51

51:                                               ; preds = %97, %21
  %52 = load ptr, ptr %6, align 8
  %53 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 8
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.super_block, ptr %54, i32 0, i32 27
  %56 = load ptr, ptr %55, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs4_procedures, i32 0, i32 63), ptr %4, align 4
  store ptr %19, ptr %46, align 4
  store ptr %2, ptr %47, align 4
  store ptr null, ptr %48, align 4
  %57 = load ptr, ptr %49, align 8
  %58 = call ptr @get_nfs_open_context(ptr noundef %57) #10
  %59 = call ptr @nfs_get_lock_context(ptr noundef %58) #10
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = ptrtoint ptr %59 to i32
  br label %94

63:                                               ; preds = %51
  %64 = call i32 @nfs4_set_rw_stateid(ptr noundef %44, ptr noundef %58, ptr noundef %59, i32 noundef 1) #10
  call void @nfs_put_lock_context(ptr noundef %59) #10
  switch i32 %64, label %94 [
    i32 0, label %65
    i32 -11, label %93
  ]

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.nfs_server, ptr %56, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = call i32 @nfs4_call_sync(ptr noundef %67, ptr noundef %56, ptr noundef nonnull %4, ptr noundef nonnull %19, ptr noundef %2, i32 noundef 0) #10
  %69 = load ptr, ptr %6, align 8
  %70 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_copy_notify, i32 0, i32 1), align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %65
  %73 = tail call ptr @llvm.thread.pointer() #10
  %74 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %75 = load i32, ptr %74, align 8
  %76 = lshr i32 %75, 5
  %77 = getelementptr i32, ptr @__cpu_online_mask, i32 %76
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %75, 31
  %80 = shl nuw i32 1, %79
  %81 = and i32 %80, %78
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %72
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  %84 = call i32 @__traceiter_nfs4_copy_notify(ptr noundef null, ptr noundef %69, ptr noundef nonnull %19, ptr noundef %2, i32 noundef %68) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %85

85:                                               ; preds = %83, %72, %65
  %86 = icmp eq i32 %68, -524
  br i1 %86, label %87, label %91

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.nfs_server, ptr %56, i32 0, i32 10
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, -134217729
  store i32 %90, ptr %88, align 8
  br label %91

91:                                               ; preds = %87, %85
  %92 = load ptr, ptr %49, align 8
  call void @put_nfs_open_context(ptr noundef %92) #10
  br label %94

93:                                               ; preds = %63
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  br label %97

94:                                               ; preds = %91, %63, %61
  %95 = phi i32 [ %62, %61 ], [ %68, %91 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  %96 = icmp eq i32 %95, -524
  br i1 %96, label %103, label %97

97:                                               ; preds = %94, %93
  %98 = phi i32 [ -10025, %93 ], [ %95, %94 ]
  %99 = call i32 @nfs4_handle_exception(ptr noundef %11, i32 noundef %98, ptr noundef nonnull %5) #10
  %100 = load i8, ptr %50, align 4
  %101 = and i8 %100, 8
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %51

103:                                              ; preds = %97, %94
  %104 = phi i32 [ %99, %97 ], [ -95, %94 ]
  call void @kfree(ptr noundef nonnull %19) #10
  br label %105

105:                                              ; preds = %103, %17, %3
  %106 = phi i32 [ %104, %103 ], [ -95, %3 ], [ -12, %17 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  ret i32 %106
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @nfs42_proc_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.nfs42_seek_args, align 8
  %5 = alloca %struct.nfs42_seek_res, align 8
  %6 = alloca %struct.rpc_message, align 4
  %7 = alloca %struct.nfs4_exception, align 4
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 27
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #10
  %14 = getelementptr inbounds i8, ptr %7, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %14, i8 0, i32 12, i1 false)
  %15 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %16 = load ptr, ptr %15, align 8
  %17 = tail call ptr @nfs_get_lock_context(ptr noundef %16) #10
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = ptrtoint ptr %17 to i32
  %21 = sext i32 %20 to i64
  br label %123

22:                                               ; preds = %3
  %23 = load ptr, ptr %8, align 8
  %24 = getelementptr inbounds %struct.nfs4_exception, ptr %7, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nfs_lock_context, ptr %17, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nfs_open_context, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  store ptr %28, ptr %7, align 4
  %29 = getelementptr inbounds %struct.nfs42_seek_args, ptr %4, i32 0, i32 1
  %30 = getelementptr inbounds %struct.nfs42_seek_args, ptr %4, i32 0, i32 2
  %31 = getelementptr inbounds %struct.nfs42_seek_args, ptr %4, i32 0, i32 3
  %32 = getelementptr inbounds %struct.nfs42_seek_args, ptr %4, i32 0, i32 4
  %33 = icmp eq i32 %2, 4
  %34 = zext i1 %33 to i32
  %35 = getelementptr inbounds %struct.rpc_message, ptr %6, i32 0, i32 1
  %36 = getelementptr inbounds %struct.rpc_message, ptr %6, i32 0, i32 2
  %37 = getelementptr inbounds %struct.rpc_message, ptr %6, i32 0, i32 3
  %38 = icmp eq i32 %2, 3
  %39 = getelementptr inbounds %struct.nfs42_seek_res, ptr %5, i32 0, i32 2
  %40 = getelementptr inbounds %struct.nfs42_seek_res, ptr %5, i32 0, i32 3
  %41 = getelementptr inbounds %struct.nfs4_exception, ptr %7, i32 0, i32 4
  br label %42

42:                                               ; preds = %117, %22
  %43 = phi ptr [ %118, %117 ], [ %23, %22 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #10
  %44 = getelementptr i8, ptr %43, i32 -288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false) #10
  store ptr %44, ptr %29, align 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %30, i8 0, i32 20, i1 false) #10
  store i64 %1, ptr %31, align 8
  store i32 %34, ptr %32, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i32 40, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs4_procedures, i32 0, i32 54), ptr %6, align 4
  store ptr %4, ptr %35, align 4
  store ptr %5, ptr %36, align 4
  store ptr null, ptr %37, align 4
  %45 = getelementptr inbounds %struct.inode, ptr %43, i32 0, i32 8
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.super_block, ptr %46, i32 0, i32 27
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nfs_server, ptr %48, i32 0, i32 10
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 524288
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %103, label %53

53:                                               ; preds = %42
  %54 = load ptr, ptr %25, align 4
  %55 = call i32 @nfs4_set_rw_stateid(ptr noundef %30, ptr noundef %54, ptr noundef %17, i32 noundef 1) #10
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = icmp eq i32 %55, -11
  %59 = select i1 %58, i32 -10025, i32 %55
  %60 = sext i32 %59 to i64
  br label %105

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.inode, ptr %43, i32 0, i32 9
  %63 = load ptr, ptr %62, align 8
  %64 = call i32 @nfs_filemap_write_and_wait_range(ptr noundef %63, i64 noundef %1, i64 noundef 9223372036854775807) #10
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = sext i32 %64 to i64
  br label %105

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.nfs_server, ptr %48, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 @nfs4_call_sync(ptr noundef %70, ptr noundef %48, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0) #10
  %72 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_llseek, i32 0, i32 1), align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = tail call ptr @llvm.thread.pointer() #10
  %76 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %77 = load i32, ptr %76, align 8
  %78 = lshr i32 %77, 5
  %79 = getelementptr i32, ptr @__cpu_online_mask, i32 %78
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %77, 31
  %82 = shl nuw i32 1, %81
  %83 = and i32 %82, %80
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %74
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  %86 = call i32 @__traceiter_nfs4_llseek(ptr noundef null, ptr noundef %43, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %71) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  br label %87

87:                                               ; preds = %85, %74, %68
  switch i32 %71, label %91 [
    i32 -524, label %88
    i32 0, label %93
  ]

88:                                               ; preds = %87
  %89 = load i32, ptr %49, align 8
  %90 = and i32 %89, -524289
  store i32 %90, ptr %49, align 8
  br label %91

91:                                               ; preds = %88, %87
  %92 = sext i32 %71 to i64
  br label %105

93:                                               ; preds = %87
  %94 = load i32, ptr %39, align 4
  %95 = icmp ne i32 %94, 0
  %96 = select i1 %38, i1 %95, i1 false
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = load i64, ptr %40, align 8
  %99 = load ptr, ptr %45, align 4
  %100 = getelementptr inbounds %struct.super_block, ptr %99, i32 0, i32 4
  %101 = load i64, ptr %100, align 8
  %102 = call i64 @vfs_setpos(ptr noundef %0, i64 noundef %98, i64 noundef %101) #10
  br label %105

103:                                              ; preds = %93, %42
  %104 = phi i64 [ -6, %93 ], [ -524, %42 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #10
  br label %108

105:                                              ; preds = %97, %91, %66, %57
  %106 = phi i64 [ %60, %57 ], [ %67, %66 ], [ %92, %91 ], [ %102, %97 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #10
  %107 = icmp sgt i64 %106, -1
  br i1 %107, label %121, label %108

108:                                              ; preds = %105, %103
  %109 = phi i64 [ %104, %103 ], [ %106, %105 ]
  %110 = icmp eq i64 %109, -524
  br i1 %110, label %121, label %111

111:                                              ; preds = %108
  %112 = trunc i64 %109 to i32
  %113 = call i32 @nfs4_handle_exception(ptr noundef %13, i32 noundef %112, ptr noundef nonnull %7) #10
  %114 = load i8, ptr %41, align 4
  %115 = and i8 %114, 8
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %111
  %118 = load ptr, ptr %8, align 8
  br label %42

119:                                              ; preds = %111
  %120 = sext i32 %113 to i64
  br label %121

121:                                              ; preds = %119, %108, %105
  %122 = phi i64 [ %120, %119 ], [ -95, %108 ], [ %106, %105 ]
  call void @nfs_put_lock_context(ptr noundef %17) #10
  br label %123

123:                                              ; preds = %121, %19
  %124 = phi i64 [ %21, %19 ], [ %122, %121 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #10
  ret i64 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_layoutstats_generic(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.rpc_message, align 4
  %4 = alloca %struct.rpc_task_setup, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs4_procedures, i32 0, i32 57), ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpc_message, ptr %3, i32 0, i32 1
  %6 = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %1, i32 0, i32 1
  store ptr %6, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rpc_message, ptr %3, i32 0, i32 2
  %8 = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %1, i32 0, i32 2
  store ptr %8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rpc_message, ptr %3, i32 0, i32 3
  store ptr null, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #10
  %10 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 1
  %11 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i64 36, i1 false)
  %12 = load ptr, ptr %11, align 4
  store ptr %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 3
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 4
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 5
  store ptr @nfs42_layoutstat_ops, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 6
  store ptr %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 8
  store i16 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %1, i32 0, i32 1, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = call zeroext i1 @nfs_sb_active(ptr noundef nonnull %21) #10
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = call ptr @igrab(ptr noundef %19) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  call void @nfs_sb_deactive(ptr noundef nonnull %21) #10
  br label %29

29:                                               ; preds = %28, %23, %2
  store ptr null, ptr %1, align 4
  br label %32

30:                                               ; preds = %25
  store ptr %19, ptr %1, align 4
  %31 = icmp eq ptr %19, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %30, %29
  call void @nfs42_layoutstat_release(ptr noundef %1)
  br label %39

33:                                               ; preds = %30
  call void @nfs4_init_sequence(ptr noundef %6, ptr noundef %8, i32 noundef 0, i32 noundef 0) #10
  %34 = call ptr @rpc_run_task(ptr noundef nonnull %4) #10
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = ptrtoint ptr %34 to i32
  br label %39

38:                                               ; preds = %33
  call void @rpc_put_task(ptr noundef %34) #10
  br label %39

39:                                               ; preds = %38, %36, %32
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ], [ -11, %32 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs42_layoutstat_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %0, i32 0, i32 1, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %0, i32 0, i32 1, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %19, %1
  %8 = phi i32 [ %20, %19 ], [ %5, %1 ]
  %9 = phi i32 [ %21, %19 ], [ 0, %1 ]
  %10 = getelementptr %struct.nfs42_layoutstat_devinfo, ptr %3, i32 %9, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.nfs4_xdr_opaque_ops, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  tail call void %15(ptr noundef %10) #10
  %18 = load i32, ptr %4, align 4
  br label %19

19:                                               ; preds = %17, %13, %7
  %20 = phi i32 [ %8, %7 ], [ %8, %13 ], [ %18, %17 ]
  %21 = add nuw nsw i32 %9, 1
  %22 = icmp slt i32 %21, %20
  br i1 %22, label %7, label %23

23:                                               ; preds = %19, %1
  %24 = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %0, i32 0, i32 1, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 -24
  %27 = load ptr, ptr %26, align 8
  tail call void @pnfs_put_layout_hdr(ptr noundef %27) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !22
  %28 = load ptr, ptr %24, align 4
  %29 = getelementptr i8, ptr %28, i32 -156
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %29) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !23
  %30 = load ptr, ptr %0, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  tail call void @iput(ptr noundef nonnull %30) #10
  tail call void @nfs_sb_deactive(ptr noundef %34) #10
  br label %35

35:                                               ; preds = %32, %23
  %36 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %36) #10
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_init_sequence(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_run_task(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_put_task(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_layouterror(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.rpc_message, align 4
  %5 = alloca %struct.rpc_task_setup, align 4
  %6 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) @__const.nfs42_proc_layouterror.msg, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #10
  %10 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i64 36, i1 false)
  store ptr %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 5
  store ptr @nfs42_layouterror_ops, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 6
  %14 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 7
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 8
  store i16 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nfs_server, ptr %19, i32 0, i32 10
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 67108864
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %93, label %24

24:                                               ; preds = %3
  %25 = icmp ugt i32 %2, 5
  br i1 %25, label %93, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %28 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3392, i32 noundef 376) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %93, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %16, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = call zeroext i1 @nfs_sb_active(ptr noundef nonnull %31) #10
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = call ptr @igrab(ptr noundef %9) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  call void @nfs_sb_deactive(ptr noundef nonnull %31) #10
  br label %39

39:                                               ; preds = %38, %33, %30
  %40 = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %28, i32 0, i32 2
  store ptr null, ptr %40, align 8
  %41 = getelementptr inbounds %struct.nfs42_layouterror_args, ptr %28, i32 0, i32 1
  store ptr null, ptr %41, align 8
  br label %62

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %28, i32 0, i32 2
  store ptr %9, ptr %43, align 8
  %44 = getelementptr inbounds %struct.nfs42_layouterror_args, ptr %28, i32 0, i32 1
  store ptr %9, ptr %44, align 8
  %45 = icmp eq ptr %9, null
  br i1 %45, label %62, label %46

46:                                               ; preds = %42
  %47 = icmp eq ptr %0, null
  br i1 %47, label %59, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %0, i32 0, i32 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #10, !srcloc !24
  %50 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #10, !srcloc !25
  %51 = extractvalue { i32, i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53, !prof !26

53:                                               ; preds = %48
  %54 = add i32 %51, 1
  %55 = or i32 %54, %51
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %63, label %57, !prof !27

57:                                               ; preds = %53, %48
  %58 = phi i32 [ 2, %48 ], [ 1, %53 ]
  call void @refcount_warn_saturate(ptr noundef %49, i32 noundef %58) #10
  br label %63

59:                                               ; preds = %46
  %60 = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %28, i32 0, i32 3
  store ptr null, ptr %60, align 4
  %61 = load ptr, ptr %16, align 4
  call void @iput(ptr noundef nonnull %9) #10
  call void @nfs_sb_deactive(ptr noundef %61) #10
  br label %62

62:                                               ; preds = %59, %42, %39
  call void @kfree(ptr noundef nonnull %28) #10
  br label %93

63:                                               ; preds = %57, %53
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !28
  %64 = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %28, i32 0, i32 3
  store ptr %0, ptr %64, align 4
  %65 = icmp eq i32 %2, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.nfs42_layouterror_args, ptr %28, i32 0, i32 2
  %68 = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %28, i32 0, i32 1, i32 1
  br label %69

69:                                               ; preds = %69, %66
  %70 = phi i32 [ 0, %66 ], [ %77, %69 ]
  %71 = getelementptr %struct.nfs42_layouterror_args, ptr %28, i32 0, i32 3, i32 %70
  %72 = getelementptr %struct.nfs42_layout_error, ptr %1, i32 %70
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %71, ptr noundef align 8 dereferenceable(64) %72, i32 64, i1 false)
  %73 = load i32, ptr %67, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %67, align 4
  %75 = load i32, ptr %68, align 8
  %76 = add i32 %75, 1
  store i32 %76, ptr %68, align 8
  %77 = add nuw i32 %70, 1
  %78 = icmp eq i32 %77, %2
  br i1 %78, label %79, label %69

79:                                               ; preds = %69, %63
  %80 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 1
  store ptr %28, ptr %80, align 4
  %81 = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %28, i32 0, i32 1
  %82 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 2
  store ptr %81, ptr %82, align 4
  store ptr %28, ptr %13, align 4
  %83 = load ptr, ptr %16, align 4
  %84 = getelementptr inbounds %struct.super_block, ptr %83, i32 0, i32 27
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.nfs_server, ptr %85, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  store ptr %87, ptr %10, align 4
  call void @nfs4_init_sequence(ptr noundef nonnull %28, ptr noundef %81, i32 noundef 0, i32 noundef 0) #10
  %88 = call ptr @rpc_run_task(ptr noundef nonnull %5) #10
  %89 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = ptrtoint ptr %88 to i32
  br label %93

92:                                               ; preds = %79
  call void @rpc_put_task(ptr noundef %88) #10
  br label %93

93:                                               ; preds = %92, %90, %62, %26, %24, %3
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ], [ -95, %3 ], [ -22, %24 ], [ -12, %62 ], [ -12, %26 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_clone(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x i32], align 4
  %7 = alloca %struct.nfs42_clone_args, align 8
  %8 = alloca %struct.nfs42_clone_res, align 4
  %9 = alloca %struct.rpc_message, align 4
  %10 = alloca %struct.nfs4_exception, align 4
  %11 = alloca %struct.nfs4_exception, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) @__const.nfs42_proc_clone.msg, i32 16, i1 false)
  %12 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 27
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #10
  %18 = getelementptr inbounds i8, ptr %10, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %18, i8 0, i32 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %11) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %11, i8 0, i32 20, i1 false)
  %19 = getelementptr inbounds %struct.nfs_server, ptr %17, i32 0, i32 10
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 8388608
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %141, label %23

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %25 = load ptr, ptr %24, align 8
  %26 = tail call ptr @nfs_get_lock_context(ptr noundef %25) #10
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = ptrtoint ptr %26 to i32
  br label %141

30:                                               ; preds = %23
  %31 = load ptr, ptr %12, align 8
  %32 = getelementptr inbounds %struct.nfs4_exception, ptr %10, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.nfs_lock_context, ptr %26, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nfs_open_context, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  store ptr %36, ptr %10, align 4
  %37 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %38 = load ptr, ptr %37, align 8
  %39 = tail call ptr @nfs_get_lock_context(ptr noundef %38) #10
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = ptrtoint ptr %39 to i32
  br label %139

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.nfs4_exception, ptr %11, i32 0, i32 1
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.nfs_lock_context, ptr %39, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nfs_open_context, ptr %48, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  store ptr %50, ptr %11, align 4
  %51 = getelementptr inbounds %struct.nfs42_clone_args, ptr %7, i32 0, i32 1
  %52 = getelementptr inbounds %struct.nfs42_clone_args, ptr %7, i32 0, i32 2
  %53 = getelementptr inbounds %struct.nfs42_clone_args, ptr %7, i32 0, i32 3
  %54 = getelementptr inbounds %struct.nfs42_clone_args, ptr %7, i32 0, i32 5
  %55 = getelementptr inbounds %struct.nfs42_clone_args, ptr %7, i32 0, i32 6
  %56 = getelementptr inbounds %struct.nfs42_clone_args, ptr %7, i32 0, i32 7
  %57 = getelementptr inbounds %struct.nfs42_clone_args, ptr %7, i32 0, i32 8
  %58 = getelementptr inbounds %struct.nfs42_clone_res, ptr %8, i32 0, i32 3
  %59 = getelementptr inbounds %struct.rpc_message, ptr %9, i32 0, i32 1
  %60 = getelementptr inbounds %struct.rpc_message, ptr %9, i32 0, i32 2
  %61 = getelementptr inbounds %struct.nfs42_clone_args, ptr %7, i32 0, i32 4
  %62 = getelementptr inbounds %struct.nfs42_clone_res, ptr %8, i32 0, i32 2
  %63 = getelementptr inbounds %struct.nfs4_exception, ptr %10, i32 0, i32 4
  %64 = getelementptr inbounds %struct.nfs4_exception, ptr %11, i32 0, i32 4
  br label %65

65:                                               ; preds = %132, %43
  %66 = phi ptr [ %133, %132 ], [ %45, %43 ]
  %67 = load ptr, ptr %12, align 8
  %68 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 8
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 27
  %71 = load ptr, ptr %70, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #10
  %72 = getelementptr i8, ptr %67, i32 -288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %7, i8 0, i64 88, i1 false) #10
  store ptr %72, ptr %51, align 8
  %73 = getelementptr i8, ptr %66, i32 -288
  store ptr %73, ptr %52, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(40) %53, i8 0, i64 40, i1 false) #10
  store i64 %2, ptr %54, align 8
  store i64 %3, ptr %55, align 8
  store i64 %4, ptr %56, align 8
  store ptr %6, ptr %57, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %8, i8 0, i64 32, i1 false) #10
  store ptr %71, ptr %58, align 4
  store ptr %7, ptr %59, align 4
  store ptr %8, ptr %60, align 4
  %74 = load ptr, ptr %33, align 4
  %75 = call i32 @nfs4_set_rw_stateid(ptr noundef %53, ptr noundef %74, ptr noundef %26, i32 noundef 1) #10
  switch i32 %75, label %112 [
    i32 0, label %76
    i32 -11, label %110
  ]

76:                                               ; preds = %65
  %77 = load ptr, ptr %47, align 4
  %78 = call i32 @nfs4_set_rw_stateid(ptr noundef %61, ptr noundef %77, ptr noundef %39, i32 noundef 2) #10
  switch i32 %78, label %112 [
    i32 0, label %79
    i32 -11, label %110
  ]

79:                                               ; preds = %76
  %80 = call ptr @nfs_alloc_fattr() #10
  store ptr %80, ptr %62, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %110, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.nfs_server, ptr %71, i32 0, i32 41
  call void @nfs4_bitmask_set(ptr noundef nonnull %6, ptr noundef %83, ptr noundef %66, i32 noundef 16384) #10
  %84 = getelementptr inbounds %struct.nfs_server, ptr %71, i32 0, i32 3
  %85 = load ptr, ptr %84, align 4
  %86 = call i32 @nfs4_call_sync(ptr noundef %85, ptr noundef %71, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0) #10
  %87 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_clone, i32 0, i32 1), align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %82
  %90 = tail call ptr @llvm.thread.pointer() #10
  %91 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %92 = load i32, ptr %91, align 8
  %93 = lshr i32 %92, 5
  %94 = getelementptr i32, ptr @__cpu_online_mask, i32 %93
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %92, 31
  %97 = shl nuw i32 1, %96
  %98 = and i32 %97, %95
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %89
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !29
  %101 = call i32 @__traceiter_nfs4_clone(ptr noundef null, ptr noundef %67, ptr noundef %66, ptr noundef nonnull %7, i32 noundef %86) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  br label %102

102:                                              ; preds = %100, %89, %82
  %103 = icmp eq i32 %86, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  call fastcc void @nfs42_copy_dest_done(ptr noundef %66, i64 noundef %3, i64 noundef %4) #10
  %105 = load ptr, ptr %62, align 4
  %106 = call i32 @nfs_post_op_update_inode(ptr noundef %66, ptr noundef %105) #10
  br label %107

107:                                              ; preds = %104, %102
  %108 = phi i32 [ %106, %104 ], [ %86, %102 ]
  %109 = load ptr, ptr %62, align 4
  call void @kfree(ptr noundef %109) #10
  br label %112

110:                                              ; preds = %79, %76, %65
  %111 = phi i32 [ -12, %79 ], [ -10025, %65 ], [ -10025, %76 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  br label %121

112:                                              ; preds = %107, %76, %65
  %113 = phi i32 [ %108, %107 ], [ %75, %65 ], [ %78, %76 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  switch i32 %113, label %121 [
    i32 -95, label %114
    i32 -524, label %114
  ]

114:                                              ; preds = %112, %112
  %115 = load ptr, ptr %14, align 4
  %116 = getelementptr inbounds %struct.super_block, ptr %115, i32 0, i32 27
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.nfs_server, ptr %117, i32 0, i32 10
  %119 = load i32, ptr %118, align 8
  %120 = and i32 %119, -8388609
  store i32 %120, ptr %118, align 8
  br label %137

121:                                              ; preds = %112, %110
  %122 = phi i32 [ %111, %110 ], [ %113, %112 ]
  %123 = call i32 @nfs4_handle_exception(ptr noundef %17, i32 noundef %122, ptr noundef nonnull %10) #10
  %124 = call i32 @nfs4_handle_exception(ptr noundef %17, i32 noundef %122, ptr noundef nonnull %11) #10
  %125 = load i8, ptr %63, align 4
  %126 = and i8 %125, 8
  %127 = icmp ne i8 %126, 0
  %128 = load i8, ptr %64, align 4
  %129 = and i8 %128, 8
  %130 = icmp ne i8 %129, 0
  %131 = select i1 %127, i1 true, i1 %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %121
  %133 = load ptr, ptr %44, align 8
  br label %65

134:                                              ; preds = %121
  %135 = icmp eq i32 %124, 0
  %136 = select i1 %135, i32 %123, i32 %124
  br label %137

137:                                              ; preds = %134, %114
  %138 = phi i32 [ -95, %114 ], [ %136, %134 ]
  call void @nfs_put_lock_context(ptr noundef %39) #10
  br label %139

139:                                              ; preds = %137, %41
  %140 = phi i32 [ %42, %41 ], [ %138, %137 ]
  call void @nfs_put_lock_context(ptr noundef %26) #10
  br label %141

141:                                              ; preds = %139, %28, %5
  %142 = phi i32 [ %29, %28 ], [ %140, %139 ], [ -95, %5 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10
  ret i32 %142
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_getxattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.nfs42_getxattrargs, align 8
  %6 = alloca %struct.nfs42_getxattrres, align 4
  %7 = alloca %struct.rpc_message, align 4
  %8 = alloca %struct.nfs4_exception, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %8, i8 0, i32 20, i1 false)
  %9 = icmp eq i32 %3, 0
  %10 = add i32 %3, 4095
  %11 = lshr i32 %10, 12
  %12 = select i1 %9, i32 16, i32 %11
  %13 = shl nuw nsw i32 %12, 2
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3264) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %79, label %16

16:                                               ; preds = %4
  %17 = icmp eq i32 %12, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %37, %16
  %19 = shl nuw i32 %12, 12
  %20 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %21 = getelementptr inbounds %struct.nfs42_getxattrargs, ptr %5, i32 0, i32 1
  %22 = getelementptr i8, ptr %0, i32 -288
  %23 = getelementptr inbounds %struct.nfs42_getxattrargs, ptr %5, i32 0, i32 2
  %24 = getelementptr inbounds %struct.nfs42_getxattrargs, ptr %5, i32 0, i32 3
  %25 = getelementptr inbounds %struct.nfs42_getxattrargs, ptr %5, i32 0, i32 4
  %26 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 1
  %27 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 2
  %28 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 3
  %29 = getelementptr inbounds %struct.nfs42_getxattrres, ptr %6, i32 0, i32 1
  %30 = getelementptr inbounds %struct.nfs4_exception, ptr %8, i32 0, i32 4
  br label %39

31:                                               ; preds = %37, %16
  %32 = phi i32 [ %36, %37 ], [ 0, %16 ]
  %33 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %34 = getelementptr ptr, ptr %14, i32 %32
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  %36 = add nuw nsw i32 %32, 1
  br i1 %35, label %67, label %37

37:                                               ; preds = %31
  %38 = icmp eq i32 %36, %12
  br i1 %38, label %18, label %31

39:                                               ; preds = %58, %18
  %40 = load ptr, ptr %20, align 4
  %41 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 27
  %42 = load ptr, ptr %41, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8
  store ptr %22, ptr %21, align 8
  store ptr %1, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 28, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs4_procedures, i32 0, i32 64), ptr %7, align 4
  store ptr %5, ptr %26, align 4
  store ptr %6, ptr %27, align 4
  store ptr null, ptr %28, align 4
  store i32 %19, ptr %24, align 8
  store ptr %14, ptr %25, align 4
  %43 = getelementptr inbounds %struct.nfs_server, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 @nfs4_call_sync(ptr noundef %44, ptr noundef %42, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #10
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %39
  %48 = load i32, ptr %29, align 4
  call void @nfs4_xattr_cache_add(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %14, i32 noundef %48) #10
  br i1 %9, label %55, label %49

49:                                               ; preds = %47
  %50 = load i32, ptr %29, align 4
  %51 = icmp ugt i32 %50, %3
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  call void @_copy_from_pages(ptr noundef %2, ptr noundef nonnull %14, i32 noundef 0, i32 noundef %50) #10
  br label %55

53:                                               ; preds = %49, %39
  %54 = phi i32 [ -34, %49 ], [ %45, %39 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  br label %58

55:                                               ; preds = %52, %47
  %56 = load i32, ptr %29, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %67, label %58

58:                                               ; preds = %55, %53
  %59 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %60 = load ptr, ptr %20, align 4
  %61 = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 27
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 @nfs4_handle_exception(ptr noundef %62, i32 noundef %59, ptr noundef nonnull %8) #10
  %64 = load i8, ptr %30, align 4
  %65 = and i8 %64, 8
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %39

67:                                               ; preds = %58, %55, %31
  %68 = phi i32 [ %56, %55 ], [ %63, %58 ], [ -12, %31 ]
  %69 = phi i32 [ %12, %55 ], [ %12, %58 ], [ %36, %31 ]
  %70 = add i32 %69, -1
  %71 = icmp sgt i32 %70, -1
  br i1 %71, label %72, label %78

72:                                               ; preds = %72, %67
  %73 = phi i32 [ %76, %72 ], [ %70, %67 ]
  %74 = getelementptr ptr, ptr %14, i32 %73
  %75 = load ptr, ptr %74, align 4
  call void @__free_pages(ptr noundef %75, i32 noundef 0) #10
  %76 = add nsw i32 %73, -1
  %77 = icmp eq i32 %73, 0
  br i1 %77, label %78, label %72

78:                                               ; preds = %72, %67
  call void @kfree(ptr noundef nonnull %14) #10
  br label %79

79:                                               ; preds = %78, %4
  %80 = phi i32 [ %68, %78 ], [ -12, %4 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #10
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_setxattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [16 x ptr], align 4
  %7 = alloca %struct.nfs42_setxattrargs, align 8
  %8 = alloca %struct.nfs42_setxattrres, align 8
  %9 = alloca %struct.rpc_message, align 4
  %10 = alloca %struct.nfs4_exception, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i32 20, i1 false)
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %12 = getelementptr inbounds %struct.nfs42_setxattrargs, ptr %7, i32 0, i32 1
  %13 = getelementptr i8, ptr %0, i32 -288
  %14 = getelementptr inbounds %struct.nfs42_setxattrargs, ptr %7, i32 0, i32 2
  %15 = getelementptr inbounds %struct.nfs42_setxattrargs, ptr %7, i32 0, i32 3
  %16 = getelementptr inbounds %struct.nfs42_setxattrargs, ptr %7, i32 0, i32 4
  %17 = getelementptr inbounds %struct.nfs42_setxattrargs, ptr %7, i32 0, i32 5
  %18 = getelementptr inbounds %struct.rpc_message, ptr %9, i32 0, i32 1
  %19 = getelementptr inbounds %struct.rpc_message, ptr %9, i32 0, i32 2
  %20 = getelementptr inbounds %struct.rpc_message, ptr %9, i32 0, i32 3
  %21 = icmp eq i32 %3, 0
  %22 = getelementptr inbounds %struct.nfs4_exception, ptr %10, i32 0, i32 4
  br label %23

23:                                               ; preds = %72, %5
  %24 = load ptr, ptr %11, align 4
  %25 = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 27
  %26 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %6, i8 0, i32 64, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #10
  store i64 0, ptr %7, align 8
  store ptr %13, ptr %12, align 8
  store ptr %1, ptr %14, align 4
  store i32 %4, ptr %15, align 8
  store i32 %3, ptr %16, align 4
  store ptr %6, ptr %17, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i32 48, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs4_procedures, i32 0, i32 65), ptr %9, align 4
  store ptr %7, ptr %18, align 4
  store ptr %8, ptr %19, align 4
  store ptr null, ptr %20, align 4
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = getelementptr inbounds %struct.nfs_server, ptr %26, i32 0, i32 20
  %29 = load i32, ptr %28, align 8
  %30 = icmp ult i32 %29, %3
  br i1 %30, label %72, label %31

31:                                               ; preds = %23
  br i1 %21, label %32, label %36

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.nfs_server, ptr %26, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 @nfs4_call_sync(ptr noundef %34, ptr noundef %26, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 1) #10
  br label %67

36:                                               ; preds = %31
  %37 = call i32 @nfs4_buf_to_pages_noslab(ptr noundef %2, i32 noundef %3, ptr noundef nonnull %6) #10
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %72, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.nfs_server, ptr %26, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 @nfs4_call_sync(ptr noundef %41, ptr noundef %26, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 1) #10
  %43 = icmp eq i32 %37, 0
  br i1 %43, label %67, label %44

44:                                               ; preds = %65, %39
  %45 = phi i32 [ %46, %65 ], [ %37, %39 ]
  %46 = add nsw i32 %45, -1
  %47 = getelementptr [16 x ptr], ptr %6, i32 0, i32 %46
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53, !prof !27

53:                                               ; preds = %44
  %54 = add i32 %50, -1
  br label %57

55:                                               ; preds = %44
  %56 = ptrtoint ptr %48 to i32
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = inttoptr i32 %58 to ptr
  %60 = getelementptr inbounds %struct.page, ptr %59, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !31
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #10, !srcloc !24
  %61 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #10, !srcloc !32
  %62 = extractvalue { i32, i32 } %61, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !33
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  call void @__put_page(ptr noundef %59) #10
  br label %65

65:                                               ; preds = %64, %57
  %66 = icmp ugt i32 %45, 1
  br i1 %66, label %44, label %67

67:                                               ; preds = %65, %39, %32
  %68 = phi i32 [ %35, %32 ], [ %42, %39 ], [ %42, %65 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.nfs42_setxattrres, ptr %8, i32 0, i32 1
  call void @nfs4_update_changeattr(ptr noundef %0, ptr noundef %71, i32 noundef %27, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  br label %81

72:                                               ; preds = %67, %36, %23
  %73 = phi i32 [ %68, %67 ], [ %37, %36 ], [ -34, %23 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  %74 = load ptr, ptr %11, align 4
  %75 = getelementptr inbounds %struct.super_block, ptr %74, i32 0, i32 27
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 @nfs4_handle_exception(ptr noundef %76, i32 noundef %73, ptr noundef nonnull %10) #10
  %78 = load i8, ptr %22, align 4
  %79 = and i8 %78, 8
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %23

81:                                               ; preds = %72, %70
  %82 = phi i32 [ 0, %70 ], [ %77, %72 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10) #10
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_listxattrs(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.nfs42_listxattrsargs, align 8
  %7 = alloca %struct.nfs42_listxattrsres, align 8
  %8 = alloca %struct.rpc_message, align 4
  %9 = alloca %struct.nfs4_exception, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %9, i8 0, i32 20, i1 false)
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %11 = getelementptr inbounds %struct.nfs42_listxattrsargs, ptr %6, i32 0, i32 1
  %12 = getelementptr i8, ptr %0, i32 -288
  %13 = getelementptr inbounds %struct.nfs42_listxattrsargs, ptr %6, i32 0, i32 2
  %14 = getelementptr inbounds %struct.nfs42_listxattrsargs, ptr %6, i32 0, i32 3
  %15 = getelementptr inbounds %struct.nfs42_listxattrsargs, ptr %6, i32 0, i32 4
  %16 = getelementptr inbounds %struct.nfs42_listxattrsres, ptr %7, i32 0, i32 2
  %17 = getelementptr inbounds %struct.nfs42_listxattrsres, ptr %7, i32 0, i32 3
  %18 = getelementptr inbounds %struct.nfs42_listxattrsres, ptr %7, i32 0, i32 5
  %19 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 1
  %20 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 2
  %21 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 3
  %22 = getelementptr inbounds %struct.nfs42_listxattrsres, ptr %7, i32 0, i32 1
  %23 = udiv i32 %2, 7
  %24 = shl i32 %23, 3
  %25 = or i32 %24, 4
  %26 = getelementptr inbounds %struct.nfs42_listxattrsres, ptr %7, i32 0, i32 6
  %27 = getelementptr inbounds %struct.nfs42_listxattrsres, ptr %7, i32 0, i32 4
  %28 = getelementptr inbounds %struct.nfs4_exception, ptr %9, i32 0, i32 4
  br label %29

29:                                               ; preds = %79, %5
  %30 = load ptr, ptr %10, align 4
  %31 = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 27
  %32 = load ptr, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false) #10
  store ptr %12, ptr %11, align 8
  %33 = load i64, ptr %3, align 8
  store i64 %33, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 56, i1 false) #10
  store ptr %1, ptr %16, align 4
  store i32 %2, ptr %17, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs4_procedures, i32 0, i32 66), ptr %8, align 4
  store ptr %6, ptr %19, align 4
  store ptr %7, ptr %20, align 4
  store ptr null, ptr %21, align 4
  %34 = call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  store ptr %34, ptr %22, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  br label %79

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.nfs_server, ptr %32, i32 0, i32 21
  %39 = load i32, ptr %38, align 4
  %40 = call i32 @llvm.umin.i32(i32 %25, i32 %39) #10
  %41 = lshr i32 %40, 12
  %42 = shl nuw nsw i32 %41, 2
  %43 = add nuw nsw i32 %42, 4
  %44 = call noalias align 64 ptr @__kmalloc(i32 noundef %43, i32 noundef 3520) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load ptr, ptr %22, align 8
  call void @__free_pages(ptr noundef %47, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  br label %79

48:                                               ; preds = %51
  %49 = add nuw nsw i32 %52, 1
  %50 = icmp eq i32 %52, %41
  br i1 %50, label %56, label %51

51:                                               ; preds = %48, %37
  %52 = phi i32 [ %49, %48 ], [ 0, %37 ]
  %53 = call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %54 = getelementptr ptr, ptr %44, i32 %52
  store ptr %53, ptr %54, align 4
  %55 = icmp eq ptr %53, null
  br i1 %55, label %65, label %48

56:                                               ; preds = %48
  store ptr %44, ptr %15, align 8
  store i32 %40, ptr %13, align 4
  %57 = getelementptr inbounds %struct.nfs_server, ptr %32, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = call i32 @nfs4_call_sync(ptr noundef %58, ptr noundef %32, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0) #10
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, ptr %26, align 4
  %63 = load i64, ptr %27, align 8
  store i64 %63, ptr %3, align 8
  %64 = load i8, ptr %18, align 8, !range !13
  store i8 %64, ptr %4, align 1
  br label %65

65:                                               ; preds = %61, %56, %51
  %66 = phi i32 [ %62, %61 ], [ %59, %56 ], [ -12, %51 ]
  br label %67

67:                                               ; preds = %73, %65
  %68 = phi i32 [ %41, %65 ], [ %74, %73 ]
  %69 = getelementptr ptr, ptr %44, i32 %68
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  call void @__free_pages(ptr noundef nonnull %70, i32 noundef 0) #10
  br label %73

73:                                               ; preds = %72, %67
  %74 = add nsw i32 %68, -1
  %75 = icmp sgt i32 %68, 0
  br i1 %75, label %67, label %76

76:                                               ; preds = %73
  call void @kfree(ptr noundef nonnull %44) #10
  %77 = load ptr, ptr %22, align 8
  call void @__free_pages(ptr noundef %77, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  %78 = icmp sgt i32 %66, -1
  br i1 %78, label %88, label %79

79:                                               ; preds = %76, %46, %36
  %80 = phi i32 [ -12, %36 ], [ %66, %76 ], [ -12, %46 ]
  %81 = load ptr, ptr %10, align 4
  %82 = getelementptr inbounds %struct.super_block, ptr %81, i32 0, i32 27
  %83 = load ptr, ptr %82, align 4
  %84 = call i32 @nfs4_handle_exception(ptr noundef %83, i32 noundef %80, ptr noundef nonnull %9) #10
  %85 = load i8, ptr %28, align 4
  %86 = and i8 %85, 8
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %29

88:                                               ; preds = %79, %76
  %89 = phi i32 [ %66, %76 ], [ %84, %79 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #10
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs42_proc_removexattr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nfs42_removexattrargs, align 8
  %4 = alloca %struct.nfs42_removexattrres, align 8
  %5 = alloca %struct.rpc_message, align 4
  %6 = alloca %struct.nfs4_exception, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false)
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %8 = getelementptr inbounds %struct.nfs42_removexattrargs, ptr %3, i32 0, i32 1
  %9 = getelementptr i8, ptr %0, i32 -288
  %10 = getelementptr inbounds %struct.nfs42_removexattrargs, ptr %3, i32 0, i32 2
  %11 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 1
  %12 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 2
  %13 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 3
  %14 = getelementptr inbounds %struct.nfs4_exception, ptr %6, i32 0, i32 4
  br label %15

15:                                               ; preds = %26, %2
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 27
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  store i64 0, ptr %3, align 8
  store ptr %9, ptr %8, align 8
  store ptr %1, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i32 48, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs4_procedures, i32 0, i32 67), ptr %5, align 4
  store ptr %3, ptr %11, align 4
  store ptr %4, ptr %12, align 4
  store ptr null, ptr %13, align 4
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = getelementptr inbounds %struct.nfs_server, ptr %18, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @nfs4_call_sync(ptr noundef %21, ptr noundef %18, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 1) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.nfs42_removexattrres, ptr %4, i32 0, i32 1
  call void @nfs4_update_changeattr(ptr noundef %0, ptr noundef %25, i32 noundef %19, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  br label %34

26:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 27
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 @nfs4_handle_exception(ptr noundef %29, i32 noundef %22, ptr noundef nonnull %6) #10
  %31 = load i8, ptr %14, align 4
  %32 = and i8 %31, 8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %15

34:                                               ; preds = %26, %24
  %35 = phi i32 [ 0, %24 ], [ %30, %26 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #10
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_sync_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_set_rw_stateid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_bitmask_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fattr() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_call_sync(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_post_op_update_inode_force_wcc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_fallocate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_deallocate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @handle_async_copy(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3392, i32 noundef 96) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %138, label %15

15:                                               ; preds = %7
  %16 = load ptr, ptr %1, align 8
  %17 = getelementptr inbounds %struct.nfs_client, ptr %16, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %17) #10
  %18 = load ptr, ptr %1, align 8
  %19 = getelementptr inbounds %struct.nfs_client, ptr %18, i32 0, i32 45
  %20 = getelementptr inbounds %struct.nfs42_copy_res, ptr %0, i32 0, i32 1
  br label %21

21:                                               ; preds = %25, %15
  %22 = phi ptr [ %19, %15 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %19
  br i1 %24, label %38, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nfs4_copy_state, ptr %23, i32 0, i32 2
  %27 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %20, ptr noundef dereferenceable(16) %26, i32 16)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %21

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %23, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %31, ptr %33, align 4
  store volatile ptr %32, ptr %31, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %30, align 4
  %34 = load ptr, ptr %1, align 8
  %35 = getelementptr inbounds %struct.nfs_client, ptr %34, i32 0, i32 23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %36 = load i16, ptr %35, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  tail call void @kfree(ptr noundef nonnull %13) #10
  br label %103

38:                                               ; preds = %21
  %39 = getelementptr inbounds %struct.nfs4_copy_state, ptr %13, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %39, ptr noundef align 8 dereferenceable(16) %20, i32 16, i1 false)
  %40 = getelementptr inbounds %struct.nfs4_copy_state, ptr %13, i32 0, i32 3
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.nfs4_copy_state, ptr %13, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %41, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #10
  %42 = getelementptr inbounds %struct.nfs_open_context, ptr %9, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nfs4_copy_state, ptr %13, i32 0, i32 9
  store ptr %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.nfs_open_context, ptr %11, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nfs4_copy_state, ptr %13, i32 0, i32 8
  store ptr %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 53
  %49 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 53, i32 1
  %50 = load ptr, ptr %49, align 4
  store ptr %13, ptr %49, align 4
  store ptr %48, ptr %13, align 8
  %51 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %50, ptr %51, align 4
  store volatile ptr %13, ptr %50, align 4
  %52 = load ptr, ptr %1, align 8
  %53 = getelementptr inbounds %struct.nfs_client, ptr %52, i32 0, i32 23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %54 = load i16, ptr %53, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %53, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  %56 = icmp eq ptr %1, %2
  br i1 %56, label %69, label %57

57:                                               ; preds = %38
  %58 = load ptr, ptr %2, align 8
  %59 = getelementptr inbounds %struct.nfs_client, ptr %58, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %59) #10
  %60 = getelementptr inbounds %struct.nfs4_copy_state, ptr %13, i32 0, i32 1
  %61 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 53
  %62 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 53, i32 1
  %63 = load ptr, ptr %62, align 4
  store ptr %60, ptr %62, align 4
  store ptr %61, ptr %60, align 8
  %64 = getelementptr inbounds %struct.nfs4_copy_state, ptr %13, i32 0, i32 1, i32 1
  store ptr %63, ptr %64, align 4
  store volatile ptr %60, ptr %63, align 4
  %65 = load ptr, ptr %2, align 8
  %66 = getelementptr inbounds %struct.nfs_client, ptr %65, i32 0, i32 23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %67 = load i16, ptr %66, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %66, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  br label %69

69:                                               ; preds = %57, %38
  %70 = tail call i32 @wait_for_completion_interruptible(ptr noundef %40) #10
  %71 = load ptr, ptr %1, align 8
  %72 = getelementptr inbounds %struct.nfs_client, ptr %71, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %72) #10
  %73 = load ptr, ptr %51, align 4
  %74 = load ptr, ptr %13, align 8
  %75 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  store ptr %73, ptr %75, align 4
  store volatile ptr %74, ptr %73, align 4
  store volatile ptr %13, ptr %13, align 8
  store ptr %13, ptr %51, align 4
  %76 = load ptr, ptr %1, align 8
  %77 = getelementptr inbounds %struct.nfs_client, ptr %76, i32 0, i32 23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %78 = load i16, ptr %77, align 4
  %79 = add i16 %78, 1
  store i16 %79, ptr %77, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  br i1 %56, label %92, label %80

80:                                               ; preds = %69
  %81 = load ptr, ptr %2, align 8
  %82 = getelementptr inbounds %struct.nfs_client, ptr %81, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %82) #10
  %83 = getelementptr inbounds %struct.nfs4_copy_state, ptr %13, i32 0, i32 1
  %84 = getelementptr inbounds %struct.nfs4_copy_state, ptr %13, i32 0, i32 1, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %83, align 8
  %87 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  store ptr %85, ptr %87, align 4
  store volatile ptr %86, ptr %85, align 4
  store volatile ptr %83, ptr %83, align 8
  store ptr %83, ptr %84, align 4
  %88 = load ptr, ptr %2, align 8
  %89 = getelementptr inbounds %struct.nfs_client, ptr %88, i32 0, i32 23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %90 = load i16, ptr %89, align 4
  %91 = add i16 %90, 1
  store i16 %91, ptr %89, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  br label %92

92:                                               ; preds = %80, %69
  %93 = icmp eq i32 %70, -512
  br i1 %93, label %116, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.nfs4_copy_state, ptr %13, i32 0, i32 7
  %96 = load i32, ptr %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.nfs4_copy_state, ptr %13, i32 0, i32 6
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 10089
  br i1 %101, label %102, label %103

102:                                              ; preds = %98, %94
  store i8 1, ptr %6, align 1
  br label %116

103:                                              ; preds = %98, %29
  %104 = phi ptr [ %23, %29 ], [ %13, %98 ]
  %105 = getelementptr inbounds %struct.nfs4_copy_state, ptr %104, i32 0, i32 4
  %106 = load i64, ptr %105, align 8
  %107 = getelementptr inbounds %struct.nfs42_copy_res, ptr %0, i32 0, i32 1, i32 1
  store i64 %106, ptr %107, align 8
  %108 = getelementptr inbounds %struct.nfs42_copy_res, ptr %0, i32 0, i32 1, i32 2
  %109 = getelementptr inbounds %struct.nfs4_copy_state, ptr %104, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(12) %108, ptr noundef align 8 dereferenceable(12) %109, i32 12, i1 false)
  %110 = getelementptr inbounds %struct.nfs4_copy_state, ptr %104, i32 0, i32 6
  %111 = load i32, ptr %110, align 4
  %112 = sub i32 0, %111
  br label %113

113:                                              ; preds = %137, %116, %103
  %114 = phi i32 [ %112, %103 ], [ %117, %116 ], [ %117, %137 ]
  %115 = phi ptr [ %104, %103 ], [ %13, %116 ], [ %13, %137 ]
  tail call void @kfree(ptr noundef %115) #10
  br label %138

116:                                              ; preds = %102, %92
  %117 = phi i32 [ -512, %92 ], [ -11, %102 ]
  tail call fastcc void @nfs42_do_offload_cancel_async(ptr noundef %4, ptr noundef %39)
  %118 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %119 = load ptr, ptr %118, align 8
  %120 = getelementptr inbounds %struct.inode, ptr %119, i32 0, i32 8
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.super_block, ptr %121, i32 0, i32 27
  %123 = load ptr, ptr %122, align 4
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr inbounds %struct.inode, ptr %126, i32 0, i32 8
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.super_block, ptr %128, i32 0, i32 27
  %130 = load ptr, ptr %129, align 4
  %131 = load ptr, ptr %130, align 8
  %132 = getelementptr inbounds %struct.nfs_client, ptr %124, i32 0, i32 38
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.nfs_client, ptr %131, i32 0, i32 38
  %135 = load ptr, ptr %134, align 4
  %136 = tail call zeroext i1 @nfs4_check_serverowner_major_id(ptr noundef %133, ptr noundef %135) #10
  br i1 %136, label %113, label %137

137:                                              ; preds = %116
  tail call fastcc void @nfs42_do_offload_cancel_async(ptr noundef %3, ptr noundef %5)
  br label %113

138:                                              ; preds = %113, %7
  %139 = phi i32 [ %114, %113 ], [ -12, %7 ]
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @process_copy_commit(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.nfs_commitres, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !8
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3392, i32 noundef 12) #11
  %7 = getelementptr inbounds %struct.nfs_commitres, ptr %4, i32 0, i32 3
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nfs42_copy_res, ptr %2, i32 0, i32 1, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @nfs4_proc_commit(ptr noundef %0, i64 noundef %1, i32 noundef %12, ptr noundef nonnull %4) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %7, align 4
  br label %23

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.nfs42_copy_res, ptr %2, i32 0, i32 1, i32 2
  %19 = load ptr, ptr %7, align 4
  %20 = call i32 @bcmp(ptr noundef dereferenceable(8) %18, ptr noundef dereferenceable(8) %19, i32 8)
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 0, i32 -11
  br label %23

23:                                               ; preds = %17, %15
  %24 = phi ptr [ %16, %15 ], [ %19, %17 ]
  %25 = phi i32 [ %13, %15 ], [ %22, %17 ]
  call void @kfree(ptr noundef %24) #10
  br label %26

26:                                               ; preds = %23, %3
  %27 = phi i32 [ %25, %23 ], [ -12, %3 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs42_copy_dest_done(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = add i64 %2, %1
  %5 = add i64 %4, 17592186044415
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = lshr i64 %1, 12
  %9 = trunc i64 %8 to i32
  %10 = lshr i64 %5, 12
  %11 = trunc i64 %10 to i32
  %12 = tail call i32 @invalidate_inode_pages2_range(ptr noundef %7, i32 noundef %9, i32 noundef %11) #10
  %13 = icmp ne i32 %12, 0
  %14 = load i1, ptr @nfs42_copy_dest_done.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !26

17:                                               ; preds = %3
  store i1 true, ptr @nfs42_copy_dest_done.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 292, i32 noundef 9, ptr noundef null) #10
  br label %18

18:                                               ; preds = %17, %3
  %19 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %19) #10
  %20 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %21 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %22

22:                                               ; preds = %30, %18
  %23 = load volatile i32, ptr %20, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %26, %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !38
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !39
  %27 = load volatile i32, ptr %20, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %26

30:                                               ; preds = %26, %22
  %31 = phi i32 [ %23, %22 ], [ %27, %26 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !40
  %32 = load i64, ptr %21, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !41
  %33 = load volatile i32, ptr %20, align 4
  %34 = icmp eq i32 %33, %31
  br i1 %34, label %35, label %22

35:                                               ; preds = %30
  %36 = icmp sgt i64 %4, %32
  br i1 %36, label %37, label %42

37:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !42
  %38 = load i32, ptr %20, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %20, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !43
  store i64 %4, ptr %21, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !44
  %40 = load i32, ptr %20, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %20, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !45
  br label %42

42:                                               ; preds = %37, %35
  tail call void @nfs_set_cache_invalid(ptr noundef %0, i32 noundef 18176) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %43 = load i16, ptr %19, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_invalidate_atime(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_commit(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_set_cache_invalid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_check_serverowner_major_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs42_offload_cancel_prepare(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nfs42_offloadcancel_data, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.nfs42_offloadcancel_data, ptr %1, i32 0, i32 2
  %7 = tail call i32 @nfs4_setup_sequence(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs42_offload_cancel_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs42_offloadcancel_data, ptr %1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_offload_cancel, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #10
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !46
  %20 = tail call i32 @__traceiter_nfs4_offload_cancel(ptr noundef null, ptr noundef %3, i32 noundef %5) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !47
  br label %21

21:                                               ; preds = %19, %8, %2
  %22 = getelementptr inbounds %struct.nfs42_offloadcancel_data, ptr %1, i32 0, i32 2
  %23 = tail call i32 @nfs41_sequence_done(ptr noundef %0, ptr noundef %22) #10
  %24 = load i32, ptr %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %1, align 8
  %28 = tail call i32 @nfs4_async_handle_error(ptr noundef %0, ptr noundef %27, ptr noundef null, ptr noundef null) #10
  %29 = icmp eq i32 %28, -11
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = tail call i32 @rpc_restart_call_prepare(ptr noundef %0) #10
  br label %32

32:                                               ; preds = %30, %26, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs42_free_offloadcancel_data(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_setup_sequence(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs41_sequence_done(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_async_handle_error(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_restart_call_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_offload_cancel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rpc_wait_for_completion_task(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_peeraddr2str(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_nfs_open_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_nfs_open_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_copy_notify(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_setpos(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_llseek(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs42_layoutstat_prepare(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %8) #10
  %9 = getelementptr i8, ptr %3, i32 -24
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %10, i32 0, i32 8
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 64
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %16 = load i16, ptr %8, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  tail call void @rpc_exit(ptr noundef %0, i32 noundef 0) #10
  br label %30

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %1, i32 0, i32 1
  %20 = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %1, i32 0, i32 1, i32 3
  %21 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %10, i32 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %20, ptr noundef align 4 dereferenceable(16) %21, i32 16, i1 false) #10
  %22 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %10, i32 0, i32 9, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %1, i32 0, i32 1, i32 3, i32 1
  store i32 %23, ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %25 = load i16, ptr %8, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %1, i32 0, i32 2
  %29 = tail call i32 @nfs4_setup_sequence(ptr noundef %27, ptr noundef %19, ptr noundef %28, ptr noundef %0) #10
  br label %30

30:                                               ; preds = %18, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs42_layoutstat_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.list_head, align 8
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %1, i32 0, i32 2
  %6 = tail call i32 @nfs4_sequence_done(ptr noundef %0, ptr noundef %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %95, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %77 [
    i32 0, label %95
    i32 -10001, label %11
    i32 -116, label %11
    i32 -10011, label %13
    i32 -10047, label %13
    i32 -10087, label %13
    i32 -10023, label %13
    i32 -10025, label %13
    i32 -10024, label %41
    i32 -524, label %69
    i32 -95, label %69
  ]

11:                                               ; preds = %8, %8
  %12 = getelementptr i8, ptr %4, i32 -296
  tail call void @pnfs_destroy_layout(ptr noundef %12) #10
  br label %77

13:                                               ; preds = %8, %8, %8, %8, %8
  %14 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %14) #10
  %15 = getelementptr i8, ptr %4, i32 -24
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %16, i32 0, i32 8
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %1, i32 0, i32 1, i32 3, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %16, i32 0, i32 9, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %16, i32 0, i32 9
  %29 = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %1, i32 0, i32 1, i32 3
  %30 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %29, ptr noundef dereferenceable(16) %28, i32 16) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store ptr %3, ptr %3, align 8
  %33 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %33, align 4
  %34 = call i32 @pnfs_mark_layout_stateid_invalid(ptr noundef %16, ptr noundef nonnull %3) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %35 = load i16, ptr %14, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %14, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !35
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !36
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  call void @pnfs_free_lseg_list(ptr noundef nonnull %3) #10
  %37 = call i32 @nfs_commit_inode(ptr noundef %4, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %77

38:                                               ; preds = %27, %21, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %39 = load i16, ptr %14, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  br label %77

41:                                               ; preds = %8
  %42 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %42) #10
  %43 = getelementptr i8, ptr %4, i32 -24
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %44, i32 0, i32 8
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %46, 64
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %1, i32 0, i32 1, i32 3, i32 0, i32 0, i32 1
  %51 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %44, i32 0, i32 9, i32 0, i32 0, i32 1
  %52 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %50, ptr noundef dereferenceable(12) %51, i32 12) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %44, i32 0, i32 9
  %56 = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %1, i32 0, i32 1, i32 3
  %57 = load i32, ptr %55, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  %59 = load i32, ptr %56, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #10
  %61 = sub i32 %58, %60
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 100) #10
  br label %64

64:                                               ; preds = %63, %54
  %65 = tail call i32 @rpc_restart_call_prepare(ptr noundef %0) #10
  br label %66

66:                                               ; preds = %64, %49, %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %67 = load i16, ptr %42, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  br label %77

69:                                               ; preds = %8, %8
  %70 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.super_block, ptr %71, i32 0, i32 27
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.nfs_server, ptr %73, i32 0, i32 10
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, -4194305
  store i32 %76, ptr %74, align 8
  br label %77

77:                                               ; preds = %69, %66, %38, %32, %11, %8
  %78 = getelementptr inbounds %struct.nfs42_layoutstat_data, ptr %1, i32 0, i32 1, i32 3
  %79 = load i32, ptr %9, align 4
  %80 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_layoutstats, i32 0, i32 1), align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = tail call ptr @llvm.thread.pointer() #10
  %84 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 2
  %85 = load i32, ptr %84, align 8
  %86 = lshr i32 %85, 5
  %87 = getelementptr i32, ptr @__cpu_online_mask, i32 %86
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %85, 31
  %90 = shl nuw i32 1, %89
  %91 = and i32 %90, %88
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %82
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !48
  %94 = call i32 @__traceiter_nfs4_layoutstats(ptr noundef null, ptr noundef %4, ptr noundef %78, i32 noundef %79) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !49
  br label %95

95:                                               ; preds = %93, %82, %77, %8, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_exit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_sequence_done(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_destroy_layout(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_mark_layout_stateid_invalid(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_free_lseg_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_commit_inode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_layoutstats(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_sb_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_sb_deactive(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_put_layout_hdr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs42_layouterror_prepare(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %12, i32 0, i32 8
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 64
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.nfs42_layouterror_args, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %12, i32 0, i32 9
  %24 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %12, i32 0, i32 9, i32 1
  br label %28

25:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %26 = load i16, ptr %13, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  tail call void @rpc_exit(ptr noundef %0, i32 noundef 0) #10
  br label %41

28:                                               ; preds = %28, %22
  %29 = phi i32 [ 0, %22 ], [ %33, %28 ]
  %30 = getelementptr %struct.nfs42_layouterror_args, ptr %1, i32 0, i32 3, i32 %29, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %30, ptr noundef align 4 dereferenceable(16) %23, i32 16, i1 false) #10
  %31 = load i32, ptr %24, align 4
  %32 = getelementptr %struct.nfs42_layouterror_args, ptr %1, i32 0, i32 3, i32 %29, i32 2, i32 1
  store i32 %31, ptr %32, align 4
  %33 = add nuw i32 %29, 1
  %34 = icmp eq i32 %33, %20
  br i1 %34, label %35, label %28

35:                                               ; preds = %28, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %36 = load i16, ptr %13, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  %38 = load ptr, ptr %8, align 8
  %39 = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %1, i32 0, i32 1
  %40 = tail call i32 @nfs4_setup_sequence(ptr noundef %38, ptr noundef %1, ptr noundef %39, ptr noundef %0) #10
  br label %41

41:                                               ; preds = %35, %25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs42_layouterror_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %1, i32 0, i32 1
  %11 = tail call i32 @nfs4_sequence_done(ptr noundef %0, ptr noundef %10) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %96, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %78 [
    i32 0, label %96
    i32 -10001, label %16
    i32 -116, label %16
    i32 -10011, label %18
    i32 -10047, label %18
    i32 -10087, label %18
    i32 -10023, label %18
    i32 -10025, label %18
    i32 -10024, label %44
    i32 -524, label %70
    i32 -95, label %70
  ]

16:                                               ; preds = %13, %13
  %17 = getelementptr i8, ptr %5, i32 -296
  tail call void @pnfs_destroy_layout(ptr noundef %17) #10
  br label %78

18:                                               ; preds = %13, %13, %13, %13, %13
  %19 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %19) #10
  %20 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %9, i32 0, i32 8
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.nfs42_layouterror_args, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %9, i32 0, i32 9, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %9, i32 0, i32 9
  %32 = getelementptr inbounds %struct.nfs42_layouterror_args, ptr %1, i32 0, i32 3, i32 0, i32 2
  %33 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %32, ptr noundef dereferenceable(16) %31, i32 16) #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store ptr %3, ptr %3, align 8
  %36 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %36, align 4
  %37 = call i32 @pnfs_mark_layout_stateid_invalid(ptr noundef %9, ptr noundef nonnull %3) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %38 = load i16, ptr %19, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %19, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !35
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !36
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  call void @pnfs_free_lseg_list(ptr noundef nonnull %3) #10
  %40 = call i32 @nfs_commit_inode(ptr noundef %5, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %78

41:                                               ; preds = %30, %24, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %42 = load i16, ptr %19, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  br label %78

44:                                               ; preds = %13
  %45 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %45) #10
  %46 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %9, i32 0, i32 8
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %47, 64
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.nfs42_layouterror_args, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 0, i32 0, i32 1
  %52 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %9, i32 0, i32 9, i32 0, i32 0, i32 1
  %53 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %51, ptr noundef dereferenceable(12) %52, i32 12) #10
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %9, i32 0, i32 9
  %57 = getelementptr inbounds %struct.nfs42_layouterror_args, ptr %1, i32 0, i32 3, i32 0, i32 2
  %58 = load i32, ptr %56, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #10
  %60 = load i32, ptr %57, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #10
  %62 = sub i32 %59, %61
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %55
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 100) #10
  br label %65

65:                                               ; preds = %64, %55
  %66 = tail call i32 @rpc_restart_call_prepare(ptr noundef %0) #10
  br label %67

67:                                               ; preds = %65, %50, %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %68 = load i16, ptr %45, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %45, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  br label %78

70:                                               ; preds = %13, %13
  %71 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.super_block, ptr %72, i32 0, i32 27
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.nfs_server, ptr %74, i32 0, i32 10
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, -67108865
  store i32 %77, ptr %75, align 8
  br label %78

78:                                               ; preds = %70, %67, %41, %35, %16, %13
  %79 = getelementptr inbounds %struct.nfs42_layouterror_args, ptr %1, i32 0, i32 3, i32 0, i32 2
  %80 = load i32, ptr %14, align 4
  %81 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_layouterror, i32 0, i32 1), align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  %84 = tail call ptr @llvm.thread.pointer() #10
  %85 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %86 = load i32, ptr %85, align 8
  %87 = lshr i32 %86, 5
  %88 = getelementptr i32, ptr @__cpu_online_mask, i32 %87
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %86, 31
  %91 = shl nuw i32 1, %90
  %92 = and i32 %91, %89
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %83
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !50
  %95 = call i32 @__traceiter_nfs4_layouterror(ptr noundef null, ptr noundef %5, ptr noundef %79, i32 noundef %80) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !51
  br label %96

96:                                               ; preds = %94, %83, %78, %13, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs42_layouterror_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @pnfs_put_lseg(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.nfs42_layouterror_data, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  tail call void @iput(ptr noundef nonnull %5) #10
  tail call void @nfs_sb_deactive(ptr noundef %9) #10
  br label %10

10:                                               ; preds = %7, %1
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_layouterror(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_put_lseg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_post_op_update_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_clone(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_xattr_cache_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_copy_from_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_buf_to_pages_noslab(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_update_changeattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
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
!8 = !{!"auto-init"}
!9 = !{i64 2158140343}
!10 = !{i64 2158140519}
!11 = !{i64 2158161637}
!12 = !{i64 2158161815}
!13 = !{i8 0, i8 2}
!14 = !{i64 2158180117}
!15 = !{i64 2158180333}
!16 = !{i64 2149184091}
!17 = !{i64 2149184308}
!18 = !{i64 2158215335}
!19 = !{i64 2158215525}
!20 = !{i64 2158123213}
!21 = !{i64 2158123393}
!22 = !{i64 2158257925}
!23 = !{i64 2158258219}
!24 = !{i64 862783, i64 2148352754, i64 2148352780, i64 2148352827, i64 2148352849, i64 2148352877, i64 2148352897}
!25 = !{i64 2148365627, i64 2148365659, i64 2148365688, i64 2148365722, i64 2148365753, i64 2148365776}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2156114710}
!29 = !{i64 2158197655}
!30 = !{i64 2158197853}
!31 = !{i64 2148464848}
!32 = !{i64 2148367210, i64 2148367242, i64 2148367271, i64 2148367305, i64 2148367336, i64 2148367359}
!33 = !{i64 2148465051}
!34 = !{i64 2149031387}
!35 = !{i64 2149027211}
!36 = !{i64 2149027286, i64 2149027313, i64 2149027360, i64 2149027382, i64 2149027410, i64 2149027430}
!37 = !{i64 2149054390}
!38 = !{i64 2151315424}
!39 = !{i64 2151315266}
!40 = !{i64 2151315568}
!41 = !{i64 2149509811}
!42 = !{i64 2151317206}
!43 = !{i64 2149510110}
!44 = !{i64 2149510411}
!45 = !{i64 2151324764}
!46 = !{i64 2158236356}
!47 = !{i64 2158236528}
!48 = !{i64 2157825912}
!49 = !{i64 2157826098}
!50 = !{i64 2157804563}
!51 = !{i64 2157804749}
