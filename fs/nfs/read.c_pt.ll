; ModuleID = '/llk/IR/fs/nfs/read.c_pt.bc'
source_filename = "../fs/nfs/read.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_pageio_init_read:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_pageio_init_read\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_pageio_init_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_pageio_reset_read_mds:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_pageio_reset_read_mds\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_pageio_reset_read_mds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nfs_pageio_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_rw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nfs_pgio_completion_ops = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.151, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.152, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.153, ptr, %struct.address_space, %struct.list_head, %union.anon.154, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.151 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.152 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.153 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.154 = type { ptr }
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
%struct.__kernel_sockaddr_storage = type { %union.anon.85 }
%union.anon.85 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.pnfs_layoutdriver_type = type { %struct.list_head, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_pageio_descriptor = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, [1 x %struct.nfs_pgio_mirror], ptr, i32, i16, i8 }
%struct.nfs_pgio_mirror = type { %struct.list_head, i32, i32, i32, i32, i8 }
%struct.nfs_readdesc = type { %struct.nfs_pageio_descriptor, ptr }
%struct.page = type { i32, %union.anon.7, %union.anon.34, %struct.atomic_t }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.34 = type { %struct.atomic_t }
%struct.anon.36 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs_iostats = type { [8 x i64], [27 x i32], [20 x i8] }
%struct.file = type { %union.anon.6, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.6 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs_pgio_header = type { ptr, ptr, %struct.list_head, ptr, %struct.nfs_writeverf, i32, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rpc_task, %struct.nfs_fattr, %struct.nfs_pgio_args, %struct.nfs_pgio_res, i32, ptr, i64, %struct.nfs_page_array, ptr, i32, i32 }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.87, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.87 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.113, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.113 = type { %struct.anon.115 }
%struct.anon.115 = type { i64 }
%struct.nfs_pgio_args = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, %struct.nfs4_stateid_struct, i64, i32, i32, ptr, %union.anon.118 }
%struct.nfs4_sequence_args = type { ptr, i8 }
%struct.nfs4_stateid_struct = type { %union.anon.116, i32 }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type { i32, [12 x i8] }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { ptr, [3 x i32], i32 }
%struct.nfs_pgio_res = type { %struct.nfs4_sequence_res, ptr, i64, i32, %union.anon.120 }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%union.anon.120 = type { %struct.anon.121 }
%struct.anon.121 = type { i32, i32 }
%struct.nfs_page_array = type { ptr, i32, [8 x ptr] }
%struct.nfs_page = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, %struct.kref, i32, %struct.nfs_write_verifier, ptr, ptr, i16 }
%struct.kref = type { %struct.refcount_struct }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_task_setup = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8 }

@nfs_pgio_rw_ops = external dso_local constant %struct.nfs_pageio_ops, align 4
@nfs_rw_read_ops = internal constant %struct.nfs_rw_ops { ptr @nfs_readhdr_alloc, ptr @nfs_readhdr_free, ptr @nfs_readpage_done, ptr @nfs_readpage_result, ptr @nfs_initiate_read }, align 4
@__kstrtab_nfs_pageio_init_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_pageio_init_read = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_pageio_init_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_pageio_init_read to i32), ptr @__kstrtab_nfs_pageio_init_read, ptr @__kstrtabns_nfs_pageio_init_read }, section "___ksymtab_gpl+nfs_pageio_init_read", align 4
@nfs_pageio_reset_read_mds.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [14 x i8] c"fs/nfs/read.c\00", align 1
@__kstrtab_nfs_pageio_reset_read_mds = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_pageio_reset_read_mds = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_pageio_reset_read_mds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_pageio_reset_read_mds to i32), ptr @__kstrtab_nfs_pageio_reset_read_mds, ptr @__kstrtabns_nfs_pageio_reset_read_mds }, section "___ksymtab_gpl+nfs_pageio_reset_read_mds", align 4
@nfs_async_read_completion_ops = internal constant %struct.nfs_pgio_completion_ops { ptr @nfs_async_read_error, ptr null, ptr @nfs_read_completion, ptr null }, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"nfs_read_data\00", align 1
@nfs_rdata_cachep = internal unnamed_addr global ptr null, align 4
@__tracepoint_nfs_aop_readpage = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nfs_pageio_complete_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_nfs_aop_readpage_done = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs_aop_readahead = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs_aop_readahead_done = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs_readpage_done = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs_readpage_short = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs_initiate_read = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_nfs_pageio_init_read, ptr @__ksymtab_nfs_pageio_reset_read_mds], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_pageio_init_read(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nfs_server, ptr %8, i32 0, i32 44
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = or i1 %11, %2
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %10, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %4
  %17 = phi ptr [ %15, %13 ], [ @nfs_pgio_rw_ops, %4 ]
  %18 = getelementptr inbounds %struct.nfs_server, ptr %8, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  tail call void @nfs_pageio_init(ptr noundef %0, ptr noundef %1, ptr noundef %17, ptr noundef %3, ptr noundef nonnull @nfs_rw_read_ops, i32 noundef %19, i32 noundef 0) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_pageio_reset_read_mds(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs_pageio_ops, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void %7(ptr noundef %0) #9
  br label %10

10:                                               ; preds = %9, %5, %1
  store ptr @nfs_pgio_rw_ops, ptr %2, align 4
  %11 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 1
  %14 = load i1, ptr @nfs_pageio_reset_read_mds.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %10
  store i1 true, ptr @nfs_pageio_reset_read_mds.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 104, i32 noundef 9, ptr noundef null) #9
  br label %18

18:                                               ; preds = %17, %10
  %19 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 27
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nfs_server, ptr %25, i32 0, i32 11
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %20, i32 0, i32 3
  store i32 %27, ptr %28, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_readpage(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nfs_readdesc, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %3, i8 0, i32 96, i1 false), !annotation !10
  %4 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !11

8:                                                ; preds = %2
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %2
  %11 = ptrtoint ptr %1 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 524288
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load volatile i32, ptr %14, align 4
  %20 = and i32 %19, 1024
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !11

22:                                               ; preds = %18
  %23 = tail call ptr @swapcache_mapping(ptr noundef %14) #9
  br label %27

24:                                               ; preds = %18, %12
  %25 = getelementptr inbounds %struct.anon.36, ptr %14, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi ptr [ %23, %22 ], [ %26, %24 ]
  %29 = load ptr, ptr %28, align 4
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_aop_readpage, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = tail call ptr @llvm.thread.pointer() #9
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %44 = tail call i32 @__traceiter_nfs_aop_readpage(ptr noundef null, ptr noundef %29, ptr noundef %1) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  br label %45

45:                                               ; preds = %43, %32, %27
  %46 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 8
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 27
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !14
  %51 = getelementptr inbounds %struct.nfs_server, ptr %49, i32 0, i32 6
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr %struct.nfs_iostats, ptr %52, i32 0, i32 1, i32 8
  %54 = ptrtoint ptr %53 to i32
  %55 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %56 = inttoptr i32 %55 to ptr
  %57 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %56) #7, !srcloc !15
  %58 = add i32 %57, %54
  %59 = inttoptr i32 %58 to ptr
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %50) #9, !srcloc !16
  %62 = tail call i32 @nfs_wb_page(ptr noundef %29, ptr noundef %1) #9
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %161

64:                                               ; preds = %45
  %65 = load volatile i32, ptr %4, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68, !prof !11

68:                                               ; preds = %64
  %69 = add i32 %65, -1
  br label %72

70:                                               ; preds = %64
  %71 = ptrtoint ptr %1 to i32
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = inttoptr i32 %73 to ptr
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %75, 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  br label %161

79:                                               ; preds = %72
  %80 = getelementptr i8, ptr %29, i32 -156
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %81, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %161

84:                                               ; preds = %79
  %85 = icmp eq ptr %0, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %84
  %87 = tail call ptr @nfs_find_open_context(ptr noundef %29, ptr noundef null, i32 noundef 1) #9
  %88 = getelementptr inbounds %struct.nfs_readdesc, ptr %3, i32 0, i32 1
  store ptr %87, ptr %88, align 4
  %89 = icmp eq ptr %87, null
  br i1 %89, label %161, label %95

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %92 = load ptr, ptr %91, align 8
  %93 = tail call ptr @get_nfs_open_context(ptr noundef %92) #9
  %94 = getelementptr inbounds %struct.nfs_readdesc, ptr %3, i32 0, i32 1
  store ptr %93, ptr %94, align 4
  br label %95

95:                                               ; preds = %90, %86
  %96 = phi ptr [ %87, %86 ], [ %93, %90 ]
  %97 = getelementptr inbounds %struct.nfs_readdesc, ptr %3, i32 0, i32 1
  %98 = getelementptr inbounds %struct.nfs_open_context, ptr %96, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %98) #9, !srcloc !19
  %99 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %98) #9, !srcloc !20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %100 = load ptr, ptr %46, align 4
  %101 = getelementptr inbounds %struct.super_block, ptr %100, i32 0, i32 27
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.nfs_server, ptr %102, i32 0, i32 44
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %95
  %107 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %104, i32 0, i32 15
  %108 = load ptr, ptr %107, align 4
  br label %109

109:                                              ; preds = %106, %95
  %110 = phi ptr [ %108, %106 ], [ @nfs_pgio_rw_ops, %95 ]
  %111 = getelementptr inbounds %struct.nfs_server, ptr %102, i32 0, i32 11
  %112 = load i32, ptr %111, align 4
  call void @nfs_pageio_init(ptr noundef nonnull %3, ptr noundef %29, ptr noundef %110, ptr noundef nonnull @nfs_async_read_completion_ops, ptr noundef nonnull @nfs_rw_read_ops, i32 noundef %112, i32 noundef 0) #9
  %113 = call i32 @readpage_async_filler(ptr noundef nonnull %3, ptr noundef %1)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %143

115:                                              ; preds = %109
  call fastcc void @nfs_pageio_complete_read(ptr noundef nonnull %3)
  %116 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %3, i32 0, i32 4
  %117 = load i32, ptr %116, align 4
  %118 = icmp slt i32 %117, 0
  %119 = call i32 @llvm.smin.i32(i32 %117, i32 0)
  br i1 %118, label %143, label %120

120:                                              ; preds = %115
  %121 = call fastcc i32 @wait_on_page_locked_killable(ptr noundef %1)
  %122 = load volatile i32, ptr %4, align 4
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125, !prof !11

125:                                              ; preds = %120
  %126 = add i32 %122, -1
  br label %129

127:                                              ; preds = %120
  %128 = ptrtoint ptr %1 to i32
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  %131 = inttoptr i32 %130 to ptr
  %132 = load volatile i32, ptr %131, align 4
  %133 = and i32 %132, 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %129
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  br label %143

136:                                              ; preds = %129
  %137 = icmp eq i32 %121, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %136
  %139 = load ptr, ptr %97, align 4
  %140 = getelementptr inbounds %struct.nfs_open_context, ptr %139, i32 0, i32 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !22
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %140) #9, !srcloc !19
  %141 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %140) #9, !srcloc !20
  %142 = extractvalue { i32, i32 } %141, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  br label %143

143:                                              ; preds = %138, %136, %135, %115, %109
  %144 = phi i32 [ %113, %109 ], [ %119, %115 ], [ %121, %136 ], [ %142, %138 ], [ %121, %135 ]
  %145 = load ptr, ptr %97, align 4
  call void @put_nfs_open_context(ptr noundef %145) #9
  %146 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_aop_readpage_done, i32 0, i32 1), align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %178

148:                                              ; preds = %143
  %149 = tail call ptr @llvm.thread.pointer() #9
  %150 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 2
  %151 = load i32, ptr %150, align 8
  %152 = lshr i32 %151, 5
  %153 = getelementptr i32, ptr @__cpu_online_mask, i32 %152
  %154 = load volatile i32, ptr %153, align 4
  %155 = and i32 %151, 31
  %156 = shl nuw i32 1, %155
  %157 = and i32 %156, %154
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %178, label %159

159:                                              ; preds = %148
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  %160 = call i32 @__traceiter_nfs_aop_readpage_done(ptr noundef null, ptr noundef %29, ptr noundef %1, i32 noundef %144) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  br label %178

161:                                              ; preds = %86, %79, %78, %45
  %162 = phi i32 [ %62, %45 ], [ 0, %78 ], [ -116, %79 ], [ -9, %86 ]
  tail call void @unlock_page(ptr noundef %1) #9
  %163 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_aop_readpage_done, i32 0, i32 1), align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %161
  %166 = tail call ptr @llvm.thread.pointer() #9
  %167 = getelementptr inbounds %struct.thread_info, ptr %166, i32 0, i32 2
  %168 = load i32, ptr %167, align 8
  %169 = lshr i32 %168, 5
  %170 = getelementptr i32, ptr @__cpu_online_mask, i32 %169
  %171 = load volatile i32, ptr %170, align 4
  %172 = and i32 %168, 31
  %173 = shl nuw i32 1, %172
  %174 = and i32 %173, %171
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %165
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  %177 = tail call i32 @__traceiter_nfs_aop_readpage_done(ptr noundef null, ptr noundef %29, ptr noundef %1, i32 noundef %162) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  br label %178

178:                                              ; preds = %176, %165, %161, %159, %148, %143
  %179 = phi i32 [ %144, %143 ], [ %144, %148 ], [ %144, %159 ], [ %162, %161 ], [ %162, %165 ], [ %162, %176 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #9
  ret i32 %179
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_wb_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_find_open_context(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_nfs_open_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @readpage_async_filler(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !11

7:                                                ; preds = %2
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %1 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = inttoptr i32 %12 to ptr
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 524288
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load volatile i32, ptr %13, align 4
  %19 = and i32 %18, 1024
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21, !prof !11

21:                                               ; preds = %17
  %22 = tail call ptr @swapcache_mapping(ptr noundef %13) #9
  br label %26

23:                                               ; preds = %17, %11
  %24 = getelementptr inbounds %struct.anon.36, ptr %13, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi ptr [ %22, %21 ], [ %25, %23 ]
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 27
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nfs_server, ptr %32, i32 0, i32 11
  %34 = load i32, ptr %33, align 4
  %35 = load volatile i32, ptr %3, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38, !prof !11

38:                                               ; preds = %26
  %39 = add i32 %35, -1
  br label %42

40:                                               ; preds = %26
  %41 = ptrtoint ptr %1 to i32
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = inttoptr i32 %43 to ptr
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 524288
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load volatile i32, ptr %44, align 4
  %50 = and i32 %49, 1024
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52, !prof !11

52:                                               ; preds = %48
  %53 = tail call ptr @swapcache_mapping(ptr noundef %44) #9
  br label %57

54:                                               ; preds = %48, %42
  %55 = getelementptr inbounds %struct.anon.36, ptr %44, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %52
  %58 = phi ptr [ %53, %52 ], [ %56, %54 ]
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.inode, ptr %59, i32 0, i32 22
  %61 = getelementptr inbounds %struct.inode, ptr %59, i32 0, i32 13
  br label %62

62:                                               ; preds = %70, %57
  %63 = load volatile i32, ptr %60, align 4
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %66, %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !27
  %67 = load volatile i32, ptr %60, align 4
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %66

70:                                               ; preds = %66, %62
  %71 = phi i32 [ %63, %62 ], [ %67, %66 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  %72 = load i64, ptr %61, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  %73 = load volatile i32, ptr %60, align 4
  %74 = icmp eq i32 %73, %71
  br i1 %74, label %75, label %62

75:                                               ; preds = %70
  %76 = icmp sgt i64 %72, 0
  br i1 %76, label %77, label %112

77:                                               ; preds = %75
  %78 = load volatile i32, ptr %3, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81, !prof !11

81:                                               ; preds = %77
  %82 = add i32 %78, -1
  br label %85

83:                                               ; preds = %77
  %84 = ptrtoint ptr %1 to i32
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = inttoptr i32 %86 to ptr
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %88, 524288
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load volatile i32, ptr %87, align 4
  %93 = and i32 %92, 1024
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95, !prof !11

95:                                               ; preds = %91
  %96 = tail call i32 @__page_file_index(ptr noundef %1) #9
  br label %100

97:                                               ; preds = %91, %85
  %98 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  br label %100

100:                                              ; preds = %97, %95
  %101 = phi i32 [ %96, %95 ], [ %99, %97 ]
  %102 = add nsw i64 %72, -1
  %103 = lshr i64 %102, 12
  %104 = trunc i64 %103 to i32
  %105 = icmp ult i32 %101, %104
  br i1 %105, label %113, label %106

106:                                              ; preds = %100
  %107 = icmp eq i32 %101, %104
  br i1 %107, label %108, label %112

108:                                              ; preds = %106
  %109 = trunc i64 %102 to i32
  %110 = and i32 %109, 4095
  %111 = add nuw nsw i32 %110, 1
  br label %113

112:                                              ; preds = %106, %75
  tail call void @zero_user_segments(ptr noundef %1, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #9
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !30
  tail call void @_set_bit(i32 noundef 2, ptr noundef %1) #9
  tail call void @unlock_page(ptr noundef %1) #9
  br label %142

113:                                              ; preds = %108, %100
  %114 = phi i32 [ 4096, %100 ], [ %111, %108 ]
  %115 = add i32 %34, -1
  %116 = add i32 %115, %114
  %117 = sub i32 0, %34
  %118 = and i32 %116, %117
  %119 = tail call i32 @llvm.umin.i32(i32 %118, i32 4096)
  %120 = getelementptr inbounds %struct.nfs_readdesc, ptr %0, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = tail call ptr @nfs_create_request(ptr noundef %121, ptr noundef %1, i32 noundef 0, i32 noundef %119) #9
  %123 = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  br i1 %123, label %140, label %124

124:                                              ; preds = %113
  %125 = icmp ult i32 %114, 4096
  br i1 %125, label %126, label %127

126:                                              ; preds = %124
  tail call void @zero_user_segments(ptr noundef %1, i32 noundef %114, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #9
  br label %127

127:                                              ; preds = %126, %124
  %128 = tail call i32 @nfs_pageio_add_request(ptr noundef %0, ptr noundef %122) #9
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %127
  %131 = load volatile ptr, ptr %122, align 4
  %132 = icmp eq ptr %131, %122
  br i1 %132, label %137, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  store ptr %135, ptr %136, align 4
  store volatile ptr %131, ptr %135, align 4
  store volatile ptr %122, ptr %122, align 4
  store ptr %122, ptr %134, align 4
  br label %137

137:                                              ; preds = %133, %130
  %138 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  %139 = load i32, ptr %138, align 4
  tail call fastcc void @nfs_readpage_release(ptr noundef %122, i32 noundef %139)
  br label %142

140:                                              ; preds = %113
  %141 = ptrtoint ptr %122 to i32
  tail call void @unlock_page(ptr noundef %1) #9
  br label %142

142:                                              ; preds = %140, %137, %127, %112
  %143 = phi i32 [ 0, %112 ], [ 0, %127 ], [ %141, %140 ], [ %139, %137 ]
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs_pageio_complete_read(ptr noundef %0) unnamed_addr #0 {
  tail call void @nfs_pageio_complete(ptr noundef %0) #9
  %2 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 4
  %4 = icmp ne i32 %3, 1
  %5 = load i1, ptr @nfs_pageio_complete_read.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %1
  store i1 true, ptr @nfs_pageio_complete_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 85, i32 noundef 9, ptr noundef null) #9
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = zext i32 %13 to i64
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr i8, ptr %15, i32 -8
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, %14
  store i64 %18, ptr %16, align 8
  %19 = load i32, ptr %12, align 4
  %20 = add i32 %19, 4095
  %21 = lshr i32 %20, 12
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 27
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !14
  %28 = zext i32 %21 to i64
  %29 = getelementptr inbounds %struct.nfs_server, ptr %26, i32 0, i32 6
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr [8 x i64], ptr %30, i32 0, i32 6
  %32 = ptrtoint ptr %31 to i32
  %33 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %34 = inttoptr i32 %33 to ptr
  %35 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %34) #7, !srcloc !15
  %36 = add i32 %35, %32
  %37 = inttoptr i32 %36 to ptr
  %38 = load i64, ptr %37, align 8
  %39 = add i64 %38, %28
  store i64 %39, ptr %37, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #9, !srcloc !16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wait_on_page_locked_killable(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !11

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call i32 @folio_wait_bit_killable(ptr noundef %12, i32 noundef 0) #9
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi i32 [ %17, %16 ], [ 0, %10 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_nfs_open_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_readpages(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.nfs_readdesc, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %5, i8 0, i32 96, i1 false), !annotation !10
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -4
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_aop_readahead, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %4
  %13 = tail call ptr @llvm.thread.pointer() #9
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %24 = tail call i32 @__traceiter_nfs_aop_readahead(ptr noundef null, ptr noundef %6, ptr noundef %9, i32 noundef %3) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !32
  br label %25

25:                                               ; preds = %23, %12, %4
  %26 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 27
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !14
  %31 = getelementptr inbounds %struct.nfs_server, ptr %29, i32 0, i32 6
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr %struct.nfs_iostats, ptr %32, i32 0, i32 1, i32 9
  %34 = ptrtoint ptr %33 to i32
  %35 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %36 = inttoptr i32 %35 to ptr
  %37 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %36) #7, !srcloc !15
  %38 = add i32 %37, %34
  %39 = inttoptr i32 %38 to ptr
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #9, !srcloc !16
  %42 = getelementptr i8, ptr %6, i32 -156
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %112

46:                                               ; preds = %25
  %47 = icmp eq ptr %0, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = tail call ptr @nfs_find_open_context(ptr noundef %6, ptr noundef null, i32 noundef 1) #9
  %50 = getelementptr inbounds %struct.nfs_readdesc, ptr %5, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  %51 = icmp eq ptr %49, null
  br i1 %51, label %112, label %57

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %54 = load ptr, ptr %53, align 8
  %55 = tail call ptr @get_nfs_open_context(ptr noundef %54) #9
  %56 = getelementptr inbounds %struct.nfs_readdesc, ptr %5, i32 0, i32 1
  store ptr %55, ptr %56, align 4
  br label %57

57:                                               ; preds = %52, %48
  %58 = load ptr, ptr %26, align 4
  %59 = getelementptr inbounds %struct.super_block, ptr %58, i32 0, i32 27
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nfs_server, ptr %60, i32 0, i32 44
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %62, i32 0, i32 15
  %66 = load ptr, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %57
  %68 = phi ptr [ %66, %64 ], [ @nfs_pgio_rw_ops, %57 ]
  %69 = getelementptr inbounds %struct.nfs_server, ptr %60, i32 0, i32 11
  %70 = load i32, ptr %69, align 4
  call void @nfs_pageio_init(ptr noundef nonnull %5, ptr noundef %6, ptr noundef %68, ptr noundef nonnull @nfs_async_read_completion_ops, ptr noundef nonnull @nfs_rw_read_ops, i32 noundef %70, i32 noundef 0) #9
  %71 = call i32 @read_cache_pages(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @readpage_async_filler, ptr noundef nonnull %5) #9
  call void @nfs_pageio_complete(ptr noundef nonnull %5) #9
  %72 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %5, i32 0, i32 11
  %73 = load i32, ptr %72, align 4
  %74 = icmp ne i32 %73, 1
  %75 = load i1, ptr @nfs_pageio_complete_read.__already_done, align 1
  %76 = xor i1 %75, true
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %79, !prof !9

78:                                               ; preds = %67
  store i1 true, ptr @nfs_pageio_complete_read.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 85, i32 noundef 9, ptr noundef null) #9
  br label %79

79:                                               ; preds = %78, %67
  %80 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %5, i32 0, i32 12
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %81, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = zext i32 %83 to i64
  %85 = load ptr, ptr %5, align 4
  %86 = getelementptr i8, ptr %85, i32 -8
  %87 = load i64, ptr %86, align 8
  %88 = add i64 %87, %84
  store i64 %88, ptr %86, align 8
  %89 = load i32, ptr %82, align 4
  %90 = add i32 %89, 4095
  %91 = lshr i32 %90, 12
  %92 = load ptr, ptr %5, align 4
  %93 = getelementptr inbounds %struct.inode, ptr %92, i32 0, i32 8
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.super_block, ptr %94, i32 0, i32 27
  %96 = load ptr, ptr %95, align 4
  %97 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !14
  %98 = zext i32 %91 to i64
  %99 = getelementptr inbounds %struct.nfs_server, ptr %96, i32 0, i32 6
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr [8 x i64], ptr %100, i32 0, i32 6
  %102 = ptrtoint ptr %101 to i32
  %103 = call i32 @llvm.read_register.i32(metadata !0) #9
  %104 = inttoptr i32 %103 to ptr
  %105 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %104) #7, !srcloc !15
  %106 = add i32 %105, %102
  %107 = inttoptr i32 %106 to ptr
  %108 = load i64, ptr %107, align 8
  %109 = add i64 %108, %98
  store i64 %109, ptr %107, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %97) #9, !srcloc !16
  %110 = getelementptr inbounds %struct.nfs_readdesc, ptr %5, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  call void @put_nfs_open_context(ptr noundef %111) #9
  br label %112

112:                                              ; preds = %79, %48, %25
  %113 = phi i32 [ -116, %25 ], [ -9, %48 ], [ %71, %79 ]
  %114 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_aop_readahead_done, i32 0, i32 1), align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  %117 = tail call ptr @llvm.thread.pointer() #9
  %118 = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 2
  %119 = load i32, ptr %118, align 8
  %120 = lshr i32 %119, 5
  %121 = getelementptr i32, ptr @__cpu_online_mask, i32 %120
  %122 = load volatile i32, ptr %121, align 4
  %123 = and i32 %119, 31
  %124 = shl nuw i32 1, %123
  %125 = and i32 %124, %122
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %116
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !33
  %128 = call i32 @__traceiter_nfs_aop_readahead_done(ptr noundef null, ptr noundef %6, i32 noundef %3, i32 noundef %113) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  br label %129

129:                                              ; preds = %127, %116, %112
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #9
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_cache_pages(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @nfs_init_readpagecache() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 632, i32 noundef 0, i32 noundef 8192, ptr noundef null) #9
  store ptr %1, ptr @nfs_rdata_cachep, align 4
  %2 = icmp eq ptr %1, null
  %3 = select i1 %2, i32 -12, i32 0
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_destroy_readpagecache() local_unnamed_addr #0 {
  %1 = load ptr, ptr @nfs_rdata_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @swapcache_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_aop_readpage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_async_read_error(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %16, label %5

5:                                                ; preds = %13, %2
  %6 = phi ptr [ %14, %13 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %7, ptr %11, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %10, align 4
  br label %13

13:                                               ; preds = %9, %5
  tail call fastcc void @nfs_readpage_release(ptr noundef %6, i32 noundef %1)
  %14 = load volatile ptr, ptr %0, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %5

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_read_completion(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 17
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %74

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 2
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %74, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 16
  %12 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 15
  br label %13

13:                                               ; preds = %71, %10
  %14 = phi ptr [ %8, %10 ], [ %72, %71 ]
  %15 = phi i32 [ 0, %10 ], [ %40, %71 ]
  %16 = getelementptr inbounds %struct.nfs_page, ptr %14, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nfs_page, ptr %14, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nfs_page, ptr %14, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %19
  %23 = load volatile i32, ptr %2, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %13
  %27 = load i32, ptr %11, align 8
  %28 = icmp ult i32 %27, %15
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = sub i32 %27, %15
  %31 = icmp ult i32 %30, %21
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = add i32 %30, %19
  %34 = icmp ult i32 %33, %19
  br i1 %34, label %35, label %36, !prof !9

35:                                               ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 170, i32 noundef 9, ptr noundef null) #9
  br label %36

36:                                               ; preds = %35, %32, %26
  %37 = phi i32 [ %19, %26 ], [ %33, %35 ], [ %33, %32 ]
  tail call void @zero_user_segments(ptr noundef %17, i32 noundef %37, i32 noundef %22, i32 noundef 0, i32 noundef 0) #9
  br label %38

38:                                               ; preds = %36, %29, %13
  %39 = load i32, ptr %20, align 4
  %40 = add i32 %39, %15
  %41 = load volatile i32, ptr %2, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %38
  %45 = load i32, ptr %11, align 8
  %46 = icmp ugt i32 %40, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = tail call zeroext i1 @nfs_page_group_sync_on_bit(ptr noundef %14, i32 noundef 8) #9
  br i1 %48, label %49, label %63

49:                                               ; preds = %47
  %50 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !30
  tail call void @_set_bit(i32 noundef 2, ptr noundef %50) #9
  br label %63

51:                                               ; preds = %44
  %52 = load i32, ptr %12, align 4
  %53 = getelementptr inbounds %struct.nfs_page, ptr %14, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nfs_lock_context, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nfs_open_context, ptr %56, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !35
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %57) #9, !srcloc !19
  %58 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %52, ptr %57) #9, !srcloc !20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  br label %63

59:                                               ; preds = %38
  %60 = tail call zeroext i1 @nfs_page_group_sync_on_bit(ptr noundef %14, i32 noundef 8) #9
  br i1 %60, label %61, label %63

61:                                               ; preds = %59
  %62 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !30
  tail call void @_set_bit(i32 noundef 2, ptr noundef %62) #9
  br label %63

63:                                               ; preds = %61, %59, %51, %49, %47
  %64 = phi i32 [ %52, %51 ], [ 0, %47 ], [ 0, %49 ], [ 0, %59 ], [ 0, %61 ]
  %65 = load volatile ptr, ptr %14, align 4
  %66 = icmp eq ptr %65, %14
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  store ptr %69, ptr %70, align 4
  store volatile ptr %65, ptr %69, align 4
  store volatile ptr %14, ptr %14, align 4
  store ptr %14, ptr %68, align 4
  br label %71

71:                                               ; preds = %67, %63
  tail call fastcc void @nfs_readpage_release(ptr noundef %14, i32 noundef %64)
  %72 = load volatile ptr, ptr %7, align 4
  %73 = icmp eq ptr %72, %7
  br i1 %73, label %74, label %13

74:                                               ; preds = %71, %6, %1
  %75 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 9
  %76 = load ptr, ptr %75, align 4
  tail call void %76(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs_readpage_release(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  switch i32 %1, label %17 [
    i32 -5, label %5
    i32 -122, label %5
    i32 -116, label %5
    i32 -30, label %5
    i32 -28, label %5
    i32 -27, label %5
    i32 -13, label %5
    i32 -12, label %5
    i32 -7, label %5
  ]

5:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %6 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !11

10:                                               ; preds = %5
  %11 = add i32 %7, -1
  br label %14

12:                                               ; preds = %5
  %13 = ptrtoint ptr %4 to i32
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  %16 = inttoptr i32 %15 to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %16) #9
  br label %17

17:                                               ; preds = %14, %2
  %18 = tail call zeroext i1 @nfs_page_group_sync_on_bit(ptr noundef %0, i32 noundef 7) #9
  br i1 %18, label %19, label %80

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24, !prof !11

24:                                               ; preds = %19
  %25 = add i32 %21, -1
  br label %28

26:                                               ; preds = %19
  %27 = ptrtoint ptr %4 to i32
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = inttoptr i32 %29 to ptr
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 524288
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load volatile i32, ptr %30, align 4
  %36 = and i32 %35, 1024
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38, !prof !11

38:                                               ; preds = %34
  %39 = tail call ptr @swapcache_mapping(ptr noundef %30) #9
  br label %43

40:                                               ; preds = %34, %28
  %41 = getelementptr inbounds %struct.anon.36, ptr %30, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %38
  %44 = phi ptr [ %39, %38 ], [ %42, %40 ]
  %45 = load volatile i32, ptr %20, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48, !prof !11

48:                                               ; preds = %43
  %49 = add i32 %45, -1
  br label %52

50:                                               ; preds = %43
  %51 = ptrtoint ptr %4 to i32
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = inttoptr i32 %53 to ptr
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  br label %79

59:                                               ; preds = %52
  %60 = load volatile i32, ptr %20, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63, !prof !11

63:                                               ; preds = %59
  %64 = add i32 %60, -1
  br label %67

65:                                               ; preds = %59
  %66 = ptrtoint ptr %4 to i32
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = inttoptr i32 %68 to ptr
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 256
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load volatile i32, ptr %4, align 4
  %75 = and i32 %74, 8192
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = tail call i32 @generic_error_remove_page(ptr noundef %44, ptr noundef %4) #9
  br label %79

79:                                               ; preds = %77, %73, %67, %58
  tail call void @unlock_page(ptr noundef %4) #9
  br label %80

80:                                               ; preds = %79, %17
  tail call void @nfs_release_request(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_page_group_sync_on_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_error_remove_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_release_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_create_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_pageio_add_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_wait_bit_killable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_aop_readpage_done(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_aop_readahead(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_aop_readahead_done(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @nfs_readhdr_alloc() #0 {
  %1 = load ptr, ptr @nfs_rdata_cachep, align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 3520) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.nfs_pgio_header, ptr %2, i32 0, i32 5
  store i32 1, ptr %5, align 8
  br label %6

6:                                                ; preds = %4, %0
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_readhdr_free(ptr noundef %0) #0 {
  %2 = load ptr, ptr @nfs_rdata_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_readpage_done(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nfs_client, ptr %8, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %10, i32 0, i32 36
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0, ptr noundef %1) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %67

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 27
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !14
  %22 = shl i64 %17, 32
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds %struct.nfs_server, ptr %20, i32 0, i32 6
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr [8 x i64], ptr %25, i32 0, i32 4
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %29 = inttoptr i32 %28 to ptr
  %30 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #7, !srcloc !15
  %31 = add i32 %30, %27
  %32 = inttoptr i32 %31 to ptr
  %33 = load i64, ptr %32, align 8
  %34 = add i64 %33, %23
  store i64 %34, ptr %32, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #9, !srcloc !16
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_readpage_done, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %15
  %38 = tail call ptr @llvm.thread.pointer() #9
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 5
  %42 = getelementptr i32, ptr @__cpu_online_mask, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %40, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %37
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  %49 = tail call i32 @__traceiter_nfs_readpage_done(ptr noundef null, ptr noundef %0, ptr noundef %1) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !38
  br label %50

50:                                               ; preds = %48, %37, %15
  %51 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, -116
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  tail call void @nfs_set_inode_stale(ptr noundef %2) #9
  %55 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %55) #9
  %56 = getelementptr i8, ptr %2, i32 -152
  %57 = load i32, ptr %56, align 8
  %58 = or i32 %57, 824
  store i32 %58, ptr %56, align 8
  %59 = load i16, ptr %2, align 8
  %60 = and i16 %59, -4096
  %61 = icmp eq i16 %60, 16384
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = or i32 %57, 826
  store i32 %63, ptr %56, align 8
  br label %64

64:                                               ; preds = %62, %54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !39
  %65 = load i16, ptr %55, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %55, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !40
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !41
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !42
  br label %67

67:                                               ; preds = %64, %50, %3
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_readpage_result(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 4, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 5
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, %8
  %12 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 7
  %13 = load i64, ptr %12, align 8
  %14 = sub i64 %11, %13
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 16
  %17 = load i32, ptr %16, align 8
  %18 = icmp ugt i32 %17, %15
  br i1 %18, label %19, label %87

19:                                               ; preds = %6
  store i32 %15, ptr %16, align 8
  %20 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 1, ptr noundef %20) #9
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %20) #9
  br label %87

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 6
  %25 = load i32, ptr %24, align 8
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %87

28:                                               ; preds = %21
  %29 = load ptr, ptr %1, align 8
  %30 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 27
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !14
  %35 = getelementptr inbounds %struct.nfs_server, ptr %33, i32 0, i32 6
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr %struct.nfs_iostats, ptr %36, i32 0, i32 1, i32 22
  %38 = ptrtoint ptr %37 to i32
  %39 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %40 = inttoptr i32 %39 to ptr
  %41 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %40) #7, !srcloc !15
  %42 = add i32 %41, %38
  %43 = inttoptr i32 %42 to ptr
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #9, !srcloc !16
  %46 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_readpage_short, i32 0, i32 1), align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %28
  %49 = tail call ptr @llvm.thread.pointer() #9
  %50 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = lshr i32 %51, 5
  %53 = getelementptr i32, ptr @__cpu_online_mask, i32 %52
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %51, 31
  %56 = shl nuw i32 1, %55
  %57 = and i32 %56, %54
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %48
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %60 = tail call i32 @__traceiter_nfs_readpage_short(ptr noundef null, ptr noundef %0, ptr noundef %1) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !44
  br label %61

61:                                               ; preds = %59, %48, %28
  %62 = load i64, ptr %22, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 5
  %66 = load i64, ptr %65, align 8
  tail call void @nfs_set_pgio_error(ptr noundef %1, i32 noundef -5, i64 noundef %66) #9
  br label %87

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 12
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 14
  store i32 -11, ptr %72, align 8
  br label %87

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 24
  %75 = load i64, ptr %74, align 8
  %76 = add i64 %75, %62
  store i64 %76, ptr %74, align 8
  %77 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 5
  %78 = load i64, ptr %77, align 8
  %79 = add i64 %78, %62
  store i64 %79, ptr %77, align 8
  %80 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 7
  %81 = load i32, ptr %80, align 4
  %82 = trunc i64 %62 to i32
  %83 = add i32 %81, %82
  store i32 %83, ptr %80, align 4
  %84 = load i32, ptr %24, align 8
  %85 = sub i32 %84, %82
  store i32 %85, ptr %24, align 8
  store i64 0, ptr %22, align 8
  store i32 0, ptr %3, align 4
  %86 = tail call i32 @rpc_restart_call_prepare(ptr noundef %0) #9
  br label %87

87:                                               ; preds = %73, %71, %64, %21, %19, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_initiate_read(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i32 noundef %4) #0 {
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i16 0, i16 66
  %12 = getelementptr inbounds %struct.rpc_task_setup, ptr %3, i32 0, i32 8
  %13 = load i16, ptr %12, align 4
  %14 = or i16 %11, %13
  store i16 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %2, i32 0, i32 35
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %0, ptr noundef %1) #9
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_initiate_read, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %5
  %20 = tail call ptr @llvm.thread.pointer() #9
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !45
  %31 = tail call i32 @__traceiter_nfs_initiate_read(ptr noundef null, ptr noundef %0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !46
  br label %32

32:                                               ; preds = %30, %19, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_set_inode_stale(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_readpage_done(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_set_pgio_error(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_restart_call_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_readpage_short(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_initiate_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

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
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2157324069}
!13 = !{i64 2157324235}
!14 = !{i64 306410, i64 306471}
!15 = !{i64 325110}
!16 = !{i64 309427}
!17 = !{i64 2149882932}
!18 = !{i64 2157654277}
!19 = !{i64 411171, i64 2147901142, i64 2147901168, i64 2147901215, i64 2147901237, i64 2147901265, i64 2147901285}
!20 = !{i64 419821, i64 419838, i64 419862, i64 419888, i64 419906}
!21 = !{i64 2157654594}
!22 = !{i64 2157655395}
!23 = !{i64 2157655712}
!24 = !{i64 2157340900}
!25 = !{i64 2157341086}
!26 = !{i64 2151826299}
!27 = !{i64 2151826141}
!28 = !{i64 2151826443}
!29 = !{i64 2149318285}
!30 = !{i64 2149883953}
!31 = !{i64 2157358154}
!32 = !{i64 2157358342}
!33 = !{i64 2157379362}
!34 = !{i64 2157379558}
!35 = !{i64 2157648934}
!36 = !{i64 2157649255}
!37 = !{i64 2157412653}
!38 = !{i64 2157412817}
!39 = !{i64 2149075480}
!40 = !{i64 2149071304}
!41 = !{i64 2149071379, i64 2149071406, i64 2149071453, i64 2149071475, i64 2149071503, i64 2149071523}
!42 = !{i64 2149098483}
!43 = !{i64 2157433528}
!44 = !{i64 2157433694}
!45 = !{i64 2157395989}
!46 = !{i64 2157396141}
