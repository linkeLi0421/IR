; ModuleID = '/llk/IR/fs/nfs/direct.c_pt.bc'
source_filename = "../fs/nfs/direct.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_dreq_bytes_left:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_dreq_bytes_left\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_dreq_bytes_left:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nfs_commit_completion_ops = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nfs_pgio_completion_ops = type { ptr, ptr, ptr, ptr }
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
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.23, %union.anon.42 }
%union.anon.23 = type { ptr }
%union.anon.42 = type { i64 }
%struct.nfs_pageio_descriptor = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, [1 x %struct.nfs_pgio_mirror], ptr, i32, i16, i8 }
%struct.nfs_pgio_mirror = type { %struct.list_head, i32, i32, i32, i32, i8 }
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
%struct.nfs_direct_req = type { %struct.kref, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.spinlock, i64, i32, i32, i32, i32, %struct.completion, %struct.nfs_mds_commit_info, %struct.pnfs_ds_commit_info, %struct.work_struct, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfs_mds_commit_info = type { %struct.atomic_t, %struct.atomic_t, %struct.list_head }
%struct.pnfs_ds_commit_info = type { %struct.list_head, i32, i32, ptr }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.nfs_page = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, %struct.kref, i32, %struct.nfs_write_verifier, ptr, ptr, i16 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.page = type { i32, %union.anon.24, %union.anon.41, %struct.atomic_t }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.41 = type { %struct.atomic_t }
%struct.pnfs_layoutdriver_type = type { %struct.list_head, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_commit_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.pnfs_commit_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pnfs_commit_array = type { %struct.list_head, %struct.list_head, ptr, %struct.callback_head, %struct.refcount_struct, i32, [0 x %struct.pnfs_commit_bucket] }
%struct.pnfs_commit_bucket = type { %struct.list_head, %struct.list_head, ptr, %struct.nfs_writeverf }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_pgio_header = type { ptr, ptr, %struct.list_head, ptr, %struct.nfs_writeverf, i32, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rpc_task, %struct.nfs_fattr, %struct.nfs_pgio_args, %struct.nfs_pgio_res, i32, ptr, i64, %struct.nfs_page_array, ptr, i32, i32 }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.133, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.133 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.137, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.137 = type { %struct.anon.139 }
%struct.anon.139 = type { i64 }
%struct.nfs_pgio_args = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, %struct.nfs4_stateid_struct, i64, i32, i32, ptr, %union.anon.142 }
%struct.nfs4_sequence_args = type { ptr, i8 }
%struct.nfs4_stateid_struct = type { %union.anon.140, i32 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { i32, [12 x i8] }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { ptr, [3 x i32], i32 }
%struct.nfs_pgio_res = type { %struct.nfs4_sequence_res, ptr, i64, i32, %union.anon.144 }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%union.anon.144 = type { %struct.anon.145 }
%struct.anon.145 = type { i32, i32 }
%struct.nfs_page_array = type { ptr, i32, [8 x ptr] }
%struct.nfs_commit_data = type { %struct.rpc_task, ptr, ptr, %struct.nfs_fattr, %struct.nfs_writeverf, %struct.list_head, %struct.list_head, ptr, %struct.nfs_commitargs, %struct.nfs_commitres, ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, i32 }
%struct.nfs_commitargs = type { %struct.nfs4_sequence_args, ptr, i64, i32, ptr }
%struct.nfs_commitres = type { %struct.nfs4_sequence_res, i32, ptr, ptr, ptr }

@nfs_direct_commit_completion_ops = internal constant %struct.nfs_commit_completion_ops { ptr @nfs_direct_commit_complete, ptr @nfs_direct_resched_write }, align 4
@__kstrtab_nfs_dreq_bytes_left = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_dreq_bytes_left = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_dreq_bytes_left = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_dreq_bytes_left to i32), ptr @__kstrtab_nfs_dreq_bytes_left, ptr @__kstrtabns_nfs_dreq_bytes_left }, section "___ksymtab_gpl+nfs_dreq_bytes_left", align 4
@.str = private unnamed_addr constant [17 x i8] c"nfs_direct_cache\00", align 1
@nfs_direct_cachep = internal unnamed_addr global ptr null, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@nfs_direct_write_completion_ops = internal constant %struct.nfs_pgio_completion_ops { ptr @nfs_write_sync_pgio_error, ptr @nfs_direct_pgio_init, ptr @nfs_direct_write_completion, ptr @nfs_direct_write_reschedule_io }, align 4
@nfsiod_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@nfs_direct_complete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fs/nfs/direct.c\00", align 1
@nfs_direct_read_completion_ops = internal constant %struct.nfs_pgio_completion_ops { ptr @nfs_read_sync_pgio_error, ptr @nfs_direct_pgio_init, ptr @nfs_direct_read_completion, ptr null }, align 4
@nfs_direct_wait.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_nfs_dreq_bytes_left], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_direct_IO(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 2
  %13 = load i8, ptr %12, align 2, !range !9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call i32 @nfs_file_direct_read(ptr noundef %0, ptr noundef %1)
  br label %19

17:                                               ; preds = %11
  %18 = tail call i32 @nfs_file_direct_write(ptr noundef %0, ptr noundef %1)
  br label %19

19:                                               ; preds = %17, %15, %2
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ], [ 0, %2 ]
  ret i32 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_file_direct_read(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nfs_pageio_descriptor, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 17
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !10
  %17 = sext i32 %11 to i64
  %18 = getelementptr inbounds %struct.nfs_server, ptr %15, i32 0, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr [8 x i64], ptr %19, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #6, !srcloc !11
  %25 = add i32 %24, %21
  %26 = inttoptr i32 %25 to ptr
  %27 = load i64, ptr %26, align 8
  %28 = add i64 %27, %17
  store i64 %28, ptr %26, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #10, !srcloc !12
  %29 = icmp eq i32 %11, 0
  br i1 %29, label %253, label %30

30:                                               ; preds = %2
  %31 = load ptr, ptr @nfs_direct_cachep, align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %31, i32 noundef 3520) #10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %253, label %34

34:                                               ; preds = %30
  store volatile i32 1, ptr %32, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %32) #10, !srcloc !13
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %32, ptr nonnull %32, i32 1, ptr nonnull elementtype(i32) %32) #10, !srcloc !14
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38, !prof !15

38:                                               ; preds = %34
  %39 = add i32 %36, 1
  %40 = or i32 %39, %36
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %44, label %42, !prof !16

42:                                               ; preds = %38, %34
  %43 = phi i32 [ 2, %34 ], [ 1, %38 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %32, i32 noundef %43) #10
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 12
  store i32 0, ptr %45, align 8
  %46 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 12, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %46, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #10
  %47 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 13, i32 2
  store volatile ptr %47, ptr %47, align 8
  %48 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 13, i32 2, i32 1
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 14
  store volatile ptr %49, ptr %49, align 8
  %50 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 14, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 14, i32 3
  store ptr null, ptr %51, align 8
  %52 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 15
  store i32 -32, ptr %52, align 4
  %53 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 15, i32 1
  store volatile ptr %53, ptr %53, align 8
  %54 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 15, i32 1, i32 1
  store ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 15, i32 2
  store ptr @nfs_direct_write_schedule_work, ptr %55, align 8
  %56 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 6
  store i32 0, ptr %56, align 8
  %57 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 4
  store ptr %9, ptr %57, align 8
  %58 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 9
  store i32 %11, ptr %58, align 4
  %59 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 10
  store i32 %11, ptr %59, align 8
  %60 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 7
  store i64 %61, ptr %62, align 8
  %63 = load ptr, ptr %0, align 8
  %64 = getelementptr inbounds %struct.file, ptr %63, i32 0, i32 15
  %65 = load ptr, ptr %64, align 8
  %66 = tail call ptr @get_nfs_open_context(ptr noundef %65) #10
  %67 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 1
  store ptr %66, ptr %67, align 4
  %68 = tail call ptr @nfs_get_lock_context(ptr noundef %66) #10
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %72

70:                                               ; preds = %44
  %71 = ptrtoint ptr %68 to i32
  tail call fastcc void @nfs_direct_req_release(ptr noundef nonnull %32)
  br label %251

72:                                               ; preds = %44
  %73 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 2
  store ptr %68, ptr %73, align 8
  %74 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 3
  store ptr %0, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %72
  %80 = load i8, ptr %1, align 8
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 16
  store i32 3, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %79
  tail call void @nfs_start_io_direct(ptr noundef %9) #10
  %85 = zext i32 %11 to i64
  %86 = getelementptr i8, ptr %9, i32 -8
  %87 = load i64, ptr %86, align 8
  %88 = add i64 %87, %85
  store i64 %88, ptr %86, align 8
  %89 = load i64, ptr %60, align 8
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(92) %3, i8 0, i32 92, i1 false) #10, !annotation !17
  %90 = load ptr, ptr %57, align 8
  %91 = getelementptr inbounds %struct.inode, ptr %90, i32 0, i32 8
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.super_block, ptr %92, i32 0, i32 27
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.nfs_server, ptr %94, i32 0, i32 11
  %96 = load i32, ptr %95, align 4
  %97 = tail call i32 @llvm.umax.i32(i32 %96, i32 4096) #10
  call void @nfs_pageio_init_read(ptr noundef nonnull %3, ptr noundef %90, i1 noundef zeroext false, ptr noundef nonnull @nfs_direct_read_completion_ops) #10
  %98 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 5
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %98) #10, !srcloc !13
  %99 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %98, ptr %98, i32 1, ptr elementtype(i32) %98) #10, !srcloc !18
  %100 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %3, i32 0, i32 9
  store ptr %32, ptr %100, align 4
  %101 = getelementptr inbounds %struct.inode, ptr %90, i32 0, i32 36
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %101) #10, !srcloc !13
  %102 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %101, ptr %101, i32 1, ptr elementtype(i32) %101) #10, !srcloc !18
  %103 = load i32, ptr %10, align 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %84
  call void @nfs_pageio_complete(ptr noundef nonnull %3) #10
  br label %203

106:                                              ; preds = %84
  %107 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %3, i32 0, i32 4
  br label %108

108:                                              ; preds = %193, %106
  %109 = phi i64 [ %89, %106 ], [ %195, %193 ]
  %110 = phi i32 [ 0, %106 ], [ %194, %193 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !17
  %111 = call i32 @iov_iter_get_pages_alloc(ptr noundef %1, ptr noundef nonnull %4, i32 noundef %97, ptr noundef nonnull %5) #10
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %190, label %113

113:                                              ; preds = %108
  call void @iov_iter_advance(ptr noundef %1, i32 noundef %111) #10
  %114 = load i32, ptr %5, align 4
  %115 = add nuw i32 %111, 4095
  %116 = add i32 %115, %114
  %117 = lshr i32 %116, 12
  %118 = icmp ult i32 %116, 4096
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load ptr, ptr %4, align 4
  call void @kvfree(ptr noundef %120) #10
  br label %193

121:                                              ; preds = %113
  %122 = call i32 @llvm.umax.i32(i32 %117, i32 1) #10
  br label %123

123:                                              ; preds = %150, %121
  %124 = phi i32 [ 0, %150 ], [ %114, %121 ]
  %125 = phi i64 [ %154, %150 ], [ %109, %121 ]
  %126 = phi i32 [ %157, %150 ], [ 0, %121 ]
  %127 = phi i32 [ %151, %150 ], [ %111, %121 ]
  %128 = phi i32 [ %152, %150 ], [ %110, %121 ]
  %129 = sub i32 4096, %124
  %130 = call i32 @llvm.umin.i32(i32 %127, i32 %129) #10
  %131 = load ptr, ptr %67, align 4
  %132 = load ptr, ptr %4, align 4
  %133 = getelementptr ptr, ptr %132, i32 %126
  %134 = load ptr, ptr %133, align 4
  %135 = call ptr @nfs_create_request(ptr noundef %131, ptr noundef %134, i32 noundef %124, i32 noundef %130) #10
  %136 = icmp ugt ptr %135, inttoptr (i32 -4096 to ptr)
  br i1 %136, label %137, label %139

137:                                              ; preds = %123
  %138 = ptrtoint ptr %135 to i32
  br label %159

139:                                              ; preds = %123
  %140 = lshr i64 %125, 12
  %141 = trunc i64 %140 to i32
  %142 = getelementptr inbounds %struct.nfs_page, ptr %135, i32 0, i32 3
  store i32 %141, ptr %142, align 4
  %143 = trunc i64 %125 to i32
  %144 = and i32 %143, 4095
  %145 = getelementptr inbounds %struct.nfs_page, ptr %135, i32 0, i32 4
  store i32 %144, ptr %145, align 4
  %146 = call i32 @nfs_pageio_add_request(ptr noundef nonnull %3, ptr noundef %135) #10
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %139
  %149 = load i32, ptr %107, align 4
  call void @nfs_release_request(ptr noundef %135) #10
  br label %159

150:                                              ; preds = %139
  store i32 0, ptr %5, align 4
  %151 = sub i32 %127, %130
  %152 = add i32 %130, %128
  %153 = zext i32 %130 to i64
  %154 = add i64 %125, %153
  %155 = load i32, ptr %59, align 8
  %156 = sub i32 %155, %130
  store i32 %156, ptr %59, align 8
  %157 = add nuw nsw i32 %126, 1
  %158 = icmp eq i32 %157, %122
  br i1 %158, label %159, label %123

159:                                              ; preds = %150, %148, %137
  %160 = phi i32 [ %128, %148 ], [ %128, %137 ], [ %152, %150 ]
  %161 = phi i64 [ %125, %148 ], [ %125, %137 ], [ %154, %150 ]
  %162 = phi i32 [ %149, %148 ], [ %138, %137 ], [ %111, %150 ]
  %163 = load ptr, ptr %4, align 4
  br label %164

164:                                              ; preds = %184, %159
  %165 = phi i32 [ %185, %184 ], [ 0, %159 ]
  %166 = getelementptr ptr, ptr %163, i32 %165
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.page, ptr %167, i32 0, i32 1
  %169 = load volatile i32, ptr %168, align 4
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172, !prof !16

172:                                              ; preds = %164
  %173 = add i32 %169, -1
  br label %176

174:                                              ; preds = %164
  %175 = ptrtoint ptr %167 to i32
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i32 [ %173, %172 ], [ %175, %174 ]
  %178 = inttoptr i32 %177 to ptr
  %179 = getelementptr inbounds %struct.page, ptr %178, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %179) #10, !srcloc !13
  %180 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %179, ptr %179, i32 1, ptr elementtype(i32) %179) #10, !srcloc !20
  %181 = extractvalue { i32, i32 } %180, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  call void @__put_page(ptr noundef %178) #10
  br label %184

184:                                              ; preds = %183, %176
  %185 = add nuw i32 %165, 1
  %186 = icmp eq i32 %185, %117
  br i1 %186, label %187, label %164

187:                                              ; preds = %184
  %188 = load ptr, ptr %4, align 4
  call void @kvfree(ptr noundef %188) #10
  %189 = icmp slt i32 %162, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187, %108
  %191 = phi i32 [ %110, %108 ], [ %160, %187 ]
  %192 = phi i32 [ %111, %108 ], [ %162, %187 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %199

193:                                              ; preds = %187, %119
  %194 = phi i32 [ %110, %119 ], [ %160, %187 ]
  %195 = phi i64 [ %109, %119 ], [ %161, %187 ]
  %196 = phi i32 [ %111, %119 ], [ %162, %187 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %197 = load i32, ptr %10, align 8
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %108

199:                                              ; preds = %193, %190
  %200 = phi i32 [ %191, %190 ], [ %194, %193 ]
  %201 = phi i32 [ %192, %190 ], [ %196, %193 ]
  call void @nfs_pageio_complete(ptr noundef nonnull %3) #10
  %202 = icmp eq i32 %200, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %199, %105
  %204 = phi i32 [ -22, %105 ], [ %201, %199 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %101) #10, !srcloc !13
  %205 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %101, ptr %101, i32 1, ptr elementtype(i32) %101) #10, !srcloc !20
  %206 = extractvalue { i32, i32 } %205, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.inode, ptr %90, i32 0, i32 23
  call void @wake_up_bit(ptr noundef %209, i32 noundef 9) #10
  br label %210

210:                                              ; preds = %208, %203
  call fastcc void @nfs_direct_req_release(ptr noundef %32) #10
  %211 = icmp slt i32 %204, 0
  %212 = select i1 %211, i32 %204, i32 -5
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %3) #10
  call void @nfs_end_io_direct(ptr noundef %9) #10
  br label %251

213:                                              ; preds = %199
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %98) #10, !srcloc !13
  %214 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %98, ptr %98, i32 1, ptr elementtype(i32) %98) #10, !srcloc !20
  %215 = extractvalue { i32, i32 } %214, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  call fastcc void @nfs_direct_complete(ptr noundef %32) #10
  br label %218

218:                                              ; preds = %217, %213
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %3) #10
  call void @nfs_end_io_direct(ptr noundef %9) #10
  %219 = icmp sgt i32 %200, 0
  br i1 %219, label %220, label %251

220:                                              ; preds = %218
  %221 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 3
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %248

224:                                              ; preds = %220
  %225 = call i32 @wait_for_completion_killable(ptr noundef %45) #10
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 8
  %229 = load i32, ptr %228, align 8
  %230 = icmp slt i32 %229, 0
  %231 = load i1, ptr @nfs_direct_wait.__already_done, align 1
  %232 = xor i1 %231, true
  %233 = select i1 %230, i1 %232, i1 false
  br i1 %233, label %234, label %235, !prof !15

234:                                              ; preds = %227
  store i1 true, ptr @nfs_direct_wait.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 254, i32 noundef 9, ptr noundef null) #10
  br label %248

235:                                              ; preds = %227
  %236 = icmp eq i32 %229, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %235
  %238 = getelementptr inbounds %struct.nfs_direct_req, ptr %32, i32 0, i32 11
  %239 = load i32, ptr %238, align 4
  br label %240

240:                                              ; preds = %237, %235, %224
  %241 = phi i32 [ %229, %235 ], [ %239, %237 ], [ %225, %224 ]
  %242 = icmp sgt i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %240
  %244 = sub nsw i32 %200, %241
  %245 = zext i32 %241 to i64
  %246 = load i64, ptr %60, align 8
  %247 = add i64 %246, %245
  store i64 %247, ptr %60, align 8
  br label %248

248:                                              ; preds = %243, %240, %234, %220
  %249 = phi i32 [ %241, %243 ], [ %241, %240 ], [ %229, %234 ], [ -529, %220 ]
  %250 = phi i32 [ %244, %243 ], [ %200, %240 ], [ %200, %234 ], [ %200, %220 ]
  call void @iov_iter_revert(ptr noundef %1, i32 noundef %250) #10
  br label %251

251:                                              ; preds = %248, %218, %210, %70
  %252 = phi i32 [ %71, %70 ], [ %249, %248 ], [ %200, %218 ], [ %212, %210 ]
  call fastcc void @nfs_direct_req_release(ptr noundef nonnull %32)
  br label %253

253:                                              ; preds = %251, %30, %2
  %254 = phi i32 [ %252, %251 ], [ 0, %2 ], [ -12, %30 ]
  ret i32 %254
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_file_direct_write(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nfs_pageio_descriptor, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 17
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @generic_write_checks(ptr noundef %0, ptr noundef %1) #10
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %301, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 27
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !10
  %19 = zext i32 %10 to i64
  %20 = getelementptr inbounds %struct.nfs_server, ptr %17, i32 0, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr [8 x i64], ptr %21, i32 0, i32 3
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #6, !srcloc !11
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = load i64, ptr %28, align 8
  %30 = add i64 %29, %19
  store i64 %30, ptr %28, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #10, !srcloc !12
  %31 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %34 = load i32, ptr %33, align 8
  %35 = zext i32 %34 to i64
  %36 = add i64 %32, 17592186044415
  %37 = add i64 %36, %35
  %38 = lshr i64 %37, 12
  %39 = load ptr, ptr @nfs_direct_cachep, align 4
  %40 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %39, i32 noundef 3520) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %301, label %42

42:                                               ; preds = %12
  store volatile i32 1, ptr %40, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %40) #10, !srcloc !13
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %40, ptr nonnull %40, i32 1, ptr nonnull elementtype(i32) %40) #10, !srcloc !14
  %44 = extractvalue { i32, i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46, !prof !15

46:                                               ; preds = %42
  %47 = add i32 %44, 1
  %48 = or i32 %47, %44
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %52, label %50, !prof !16

50:                                               ; preds = %46, %42
  %51 = phi i32 [ 2, %42 ], [ 1, %46 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %40, i32 noundef %51) #10
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 12
  store i32 0, ptr %53, align 8
  %54 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 12, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %54, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #10
  %55 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 13, i32 2
  store volatile ptr %55, ptr %55, align 8
  %56 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 13, i32 2, i32 1
  store ptr %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 14
  store volatile ptr %57, ptr %57, align 8
  %58 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 14, i32 0, i32 1
  store ptr %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 14, i32 3
  store ptr null, ptr %59, align 8
  %60 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 15
  store i32 -32, ptr %60, align 4
  %61 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 15, i32 1
  store volatile ptr %61, ptr %61, align 8
  %62 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 15, i32 1, i32 1
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 15, i32 2
  store ptr @nfs_direct_write_schedule_work, ptr %63, align 8
  %64 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 6
  store i32 0, ptr %64, align 8
  %65 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 4
  store ptr %9, ptr %65, align 8
  %66 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 9
  store i32 %10, ptr %66, align 4
  %67 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 10
  store i32 %10, ptr %67, align 8
  %68 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 7
  store i64 %32, ptr %68, align 8
  %69 = load ptr, ptr %0, align 8
  %70 = getelementptr inbounds %struct.file, ptr %69, i32 0, i32 15
  %71 = load ptr, ptr %70, align 8
  %72 = tail call ptr @get_nfs_open_context(ptr noundef %71) #10
  %73 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 1
  store ptr %72, ptr %73, align 4
  %74 = tail call ptr @nfs_get_lock_context(ptr noundef %72) #10
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %78

76:                                               ; preds = %52
  %77 = ptrtoint ptr %74 to i32
  tail call fastcc void @nfs_direct_req_release(ptr noundef nonnull %40)
  br label %299

78:                                               ; preds = %52
  %79 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 2
  store ptr %74, ptr %79, align 8
  %80 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 2
  %81 = load ptr, ptr %80, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 3
  store ptr %0, ptr %84, align 4
  br label %85

85:                                               ; preds = %83, %78
  %86 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.super_block, ptr %87, i32 0, i32 27
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.nfs_server, ptr %89, i32 0, i32 44
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %103, label %93

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %91, i32 0, i32 17
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = tail call ptr %95(ptr noundef %9) #10
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.pnfs_ds_commit_info, ptr %98, i32 0, i32 3
  %102 = load ptr, ptr %101, align 4
  store ptr %102, ptr %59, align 8
  br label %103

103:                                              ; preds = %100, %97, %93, %85
  tail call void @nfs_start_io_direct(ptr noundef %9) #10
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(92) %3, i8 0, i32 92, i1 false) #10, !annotation !17
  %104 = load ptr, ptr %65, align 8
  %105 = getelementptr inbounds %struct.inode, ptr %104, i32 0, i32 8
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.super_block, ptr %106, i32 0, i32 27
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.nfs_server, ptr %108, i32 0, i32 13
  %110 = load i32, ptr %109, align 4
  %111 = tail call i32 @llvm.umax.i32(i32 %110, i32 4096) #10
  call void @nfs_pageio_init_write(ptr noundef nonnull %3, ptr noundef %104, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @nfs_direct_write_completion_ops) #10
  %112 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %3, i32 0, i32 9
  store ptr %40, ptr %112, align 4
  %113 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 5
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %113) #10, !srcloc !13
  %114 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %113, ptr %113, i32 1, ptr elementtype(i32) %113) #10, !srcloc !18
  %115 = getelementptr inbounds %struct.inode, ptr %104, i32 0, i32 36
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %115) #10, !srcloc !13
  %116 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %115, ptr %115, i32 1, ptr elementtype(i32) %115) #10, !srcloc !18
  %117 = load i32, ptr %33, align 8
  %118 = zext i32 %117 to i64
  %119 = getelementptr i8, ptr %104, i32 -16
  %120 = load i64, ptr %119, align 8
  %121 = add i64 %120, %118
  store i64 %121, ptr %119, align 8
  %122 = load i32, ptr %33, align 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %103
  call void @nfs_pageio_complete(ptr noundef nonnull %3) #10
  br label %229

125:                                              ; preds = %103
  %126 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %3, i32 0, i32 4
  br label %127

127:                                              ; preds = %219, %125
  %128 = phi i64 [ %32, %125 ], [ %221, %219 ]
  %129 = phi i32 [ 0, %125 ], [ %220, %219 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !17
  %130 = call i32 @iov_iter_get_pages_alloc(ptr noundef %1, ptr noundef nonnull %4, i32 noundef %111, ptr noundef nonnull %5) #10
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %216, label %132

132:                                              ; preds = %127
  call void @iov_iter_advance(ptr noundef %1, i32 noundef %130) #10
  %133 = load i32, ptr %5, align 4
  %134 = add nuw i32 %130, 4095
  %135 = add i32 %134, %133
  %136 = lshr i32 %135, 12
  %137 = icmp ult i32 %135, 4096
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load ptr, ptr %4, align 4
  call void @kvfree(ptr noundef %139) #10
  br label %219

140:                                              ; preds = %132
  %141 = call i32 @llvm.umax.i32(i32 %136, i32 1) #10
  br label %142

142:                                              ; preds = %176, %140
  %143 = phi i32 [ 0, %176 ], [ %133, %140 ]
  %144 = phi i64 [ %180, %176 ], [ %128, %140 ]
  %145 = phi i32 [ %183, %176 ], [ 0, %140 ]
  %146 = phi i32 [ %177, %176 ], [ %130, %140 ]
  %147 = phi i32 [ %178, %176 ], [ %129, %140 ]
  %148 = sub i32 4096, %143
  %149 = call i32 @llvm.umin.i32(i32 %146, i32 %148) #10
  %150 = load ptr, ptr %73, align 4
  %151 = load ptr, ptr %4, align 4
  %152 = getelementptr ptr, ptr %151, i32 %145
  %153 = load ptr, ptr %152, align 4
  %154 = call ptr @nfs_create_request(ptr noundef %150, ptr noundef %153, i32 noundef %143, i32 noundef %149) #10
  %155 = icmp ugt ptr %154, inttoptr (i32 -4096 to ptr)
  br i1 %155, label %156, label %158

156:                                              ; preds = %142
  %157 = ptrtoint ptr %154 to i32
  br label %185

158:                                              ; preds = %142
  %159 = load i32, ptr %126, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  call void @nfs_free_request(ptr noundef %154) #10
  %162 = load i32, ptr %126, align 4
  br label %185

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.nfs_page, ptr %154, i32 0, i32 8
  %165 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %164) #10
  %166 = lshr i64 %144, 12
  %167 = trunc i64 %166 to i32
  %168 = getelementptr inbounds %struct.nfs_page, ptr %154, i32 0, i32 3
  store i32 %167, ptr %168, align 4
  %169 = trunc i64 %144 to i32
  %170 = and i32 %169, 4095
  %171 = getelementptr inbounds %struct.nfs_page, ptr %154, i32 0, i32 4
  store i32 %170, ptr %171, align 4
  %172 = call i32 @nfs_pageio_add_request(ptr noundef nonnull %3, ptr noundef %154) #10
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %163
  %175 = load i32, ptr %126, align 4
  call void @nfs_unlock_and_release_request(ptr noundef %154) #10
  br label %185

176:                                              ; preds = %163
  store i32 0, ptr %5, align 4
  %177 = sub i32 %146, %149
  %178 = add i32 %149, %147
  %179 = zext i32 %149 to i64
  %180 = add i64 %144, %179
  %181 = load i32, ptr %67, align 8
  %182 = sub i32 %181, %149
  store i32 %182, ptr %67, align 8
  %183 = add nuw nsw i32 %145, 1
  %184 = icmp eq i32 %183, %141
  br i1 %184, label %185, label %142

185:                                              ; preds = %176, %174, %161, %156
  %186 = phi i32 [ %147, %174 ], [ %147, %161 ], [ %147, %156 ], [ %178, %176 ]
  %187 = phi i64 [ %144, %174 ], [ %144, %161 ], [ %144, %156 ], [ %180, %176 ]
  %188 = phi i32 [ %175, %174 ], [ %162, %161 ], [ %157, %156 ], [ %130, %176 ]
  %189 = load ptr, ptr %4, align 4
  br label %190

190:                                              ; preds = %210, %185
  %191 = phi i32 [ %211, %210 ], [ 0, %185 ]
  %192 = getelementptr ptr, ptr %189, i32 %191
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.page, ptr %193, i32 0, i32 1
  %195 = load volatile i32, ptr %194, align 4
  %196 = and i32 %195, 1
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198, !prof !16

198:                                              ; preds = %190
  %199 = add i32 %195, -1
  br label %202

200:                                              ; preds = %190
  %201 = ptrtoint ptr %193 to i32
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi i32 [ %199, %198 ], [ %201, %200 ]
  %204 = inttoptr i32 %203 to ptr
  %205 = getelementptr inbounds %struct.page, ptr %204, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %205) #10, !srcloc !13
  %206 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %205, ptr %205, i32 1, ptr elementtype(i32) %205) #10, !srcloc !20
  %207 = extractvalue { i32, i32 } %206, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  call void @__put_page(ptr noundef %204) #10
  br label %210

210:                                              ; preds = %209, %202
  %211 = add nuw i32 %191, 1
  %212 = icmp eq i32 %211, %136
  br i1 %212, label %213, label %190

213:                                              ; preds = %210
  %214 = load ptr, ptr %4, align 4
  call void @kvfree(ptr noundef %214) #10
  %215 = icmp slt i32 %188, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %213, %127
  %217 = phi i32 [ %129, %127 ], [ %186, %213 ]
  %218 = phi i32 [ %130, %127 ], [ %188, %213 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %225

219:                                              ; preds = %213, %138
  %220 = phi i32 [ %129, %138 ], [ %186, %213 ]
  %221 = phi i64 [ %128, %138 ], [ %187, %213 ]
  %222 = phi i32 [ %130, %138 ], [ %188, %213 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %223 = load i32, ptr %33, align 8
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %127

225:                                              ; preds = %219, %216
  %226 = phi i32 [ %217, %216 ], [ %220, %219 ]
  %227 = phi i32 [ %218, %216 ], [ %222, %219 ]
  call void @nfs_pageio_complete(ptr noundef nonnull %3) #10
  %228 = icmp eq i32 %226, 0
  br i1 %228, label %229, label %239

229:                                              ; preds = %225, %124
  %230 = phi i32 [ 0, %124 ], [ %227, %225 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %115) #10, !srcloc !13
  %231 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %115, ptr %115, i32 1, ptr elementtype(i32) %115) #10, !srcloc !20
  %232 = extractvalue { i32, i32 } %231, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.inode, ptr %104, i32 0, i32 23
  call void @wake_up_bit(ptr noundef %235, i32 noundef 9) #10
  br label %236

236:                                              ; preds = %234, %229
  call fastcc void @nfs_direct_req_release(ptr noundef %40) #10
  %237 = icmp slt i32 %230, 0
  %238 = select i1 %237, i32 %230, i32 -5
  br label %246

239:                                              ; preds = %225
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %113) #10, !srcloc !13
  %240 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %113, ptr %113, i32 1, ptr elementtype(i32) %113) #10, !srcloc !20
  %241 = extractvalue { i32, i32 } %240, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %239
  %244 = load ptr, ptr @nfsiod_workqueue, align 4
  %245 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %244, ptr noundef %60) #10
  br label %246

246:                                              ; preds = %243, %239, %236
  %247 = phi i32 [ %238, %236 ], [ %226, %243 ], [ %226, %239 ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %3) #10
  %248 = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 7
  %249 = load i32, ptr %248, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %256, label %251

251:                                              ; preds = %246
  %252 = lshr i64 %32, 12
  %253 = trunc i64 %252 to i32
  %254 = trunc i64 %38 to i32
  %255 = call i32 @invalidate_inode_pages2_range(ptr noundef %8, i32 noundef %253, i32 noundef %254) #10
  br label %256

256:                                              ; preds = %251, %246
  call void @nfs_end_io_direct(ptr noundef %9) #10
  %257 = icmp sgt i32 %247, 0
  br i1 %257, label %258, label %299

258:                                              ; preds = %256
  %259 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 3
  %260 = load ptr, ptr %259, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %296

262:                                              ; preds = %258
  %263 = call i32 @wait_for_completion_killable(ptr noundef %53) #10
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %278

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 8
  %267 = load i32, ptr %266, align 8
  %268 = icmp slt i32 %267, 0
  %269 = load i1, ptr @nfs_direct_wait.__already_done, align 1
  %270 = xor i1 %269, true
  %271 = select i1 %268, i1 %270, i1 false
  br i1 %271, label %272, label %273, !prof !15

272:                                              ; preds = %265
  store i1 true, ptr @nfs_direct_wait.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 254, i32 noundef 9, ptr noundef null) #10
  br label %296

273:                                              ; preds = %265
  %274 = icmp eq i32 %267, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %273
  %276 = getelementptr inbounds %struct.nfs_direct_req, ptr %40, i32 0, i32 11
  %277 = load i32, ptr %276, align 4
  br label %278

278:                                              ; preds = %275, %273, %262
  %279 = phi i32 [ %267, %273 ], [ %277, %275 ], [ %263, %262 ]
  %280 = icmp sgt i32 %279, 0
  br i1 %280, label %281, label %296

281:                                              ; preds = %278
  %282 = sub nsw i32 %247, %279
  %283 = zext i32 %279 to i64
  %284 = add i64 %32, %283
  store i64 %284, ptr %31, align 8
  %285 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %286 = load i32, ptr %285, align 8
  %287 = and i32 %286, 2
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %296, label %289

289:                                              ; preds = %281
  %290 = load ptr, ptr %0, align 8
  %291 = add i64 %284, -1
  %292 = lshr i32 %286, 2
  %293 = and i32 %292, 1
  %294 = xor i32 %293, 1
  %295 = call i32 @vfs_fsync_range(ptr noundef %290, i64 noundef %32, i64 noundef %291, i32 noundef %294) #10
  br label %296

296:                                              ; preds = %289, %281, %278, %272, %258
  %297 = phi i32 [ %279, %278 ], [ %279, %281 ], [ %279, %289 ], [ %267, %272 ], [ -529, %258 ]
  %298 = phi i32 [ %247, %278 ], [ %282, %281 ], [ %282, %289 ], [ %247, %272 ], [ %247, %258 ]
  call void @iov_iter_revert(ptr noundef %1, i32 noundef %298) #10
  br label %299

299:                                              ; preds = %296, %256, %76
  %300 = phi i32 [ %77, %76 ], [ %297, %296 ], [ %247, %256 ]
  call fastcc void @nfs_direct_req_release(ptr noundef nonnull %40)
  br label %301

301:                                              ; preds = %299, %12, %2
  %302 = phi i32 [ %10, %2 ], [ %300, %299 ], [ -12, %12 ]
  ret i32 %302
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @nfs_init_cinfo_from_dreq(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %0, align 4
  %5 = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 13
  %6 = getelementptr inbounds %struct.nfs_commit_info, ptr %0, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nfs_direct_req, ptr %1, i32 0, i32 14
  %8 = getelementptr inbounds %struct.nfs_commit_info, ptr %0, i32 0, i32 2
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nfs_commit_info, ptr %0, i32 0, i32 3
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nfs_commit_info, ptr %0, i32 0, i32 4
  store ptr @nfs_direct_commit_completion_ops, ptr %10, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @nfs_dreq_bytes_left(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_nfs_open_context(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_get_lock_context(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs_direct_req_release(ptr noundef %0) unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #10, !srcloc !13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #10, !srcloc !23
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %32, label %7, !prof !16

7:                                                ; preds = %5
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #10
  br label %32

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !24
  %9 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 14
  %10 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 14, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.pnfs_commit_ops, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void %17(ptr noundef %9, ptr noundef %11) #10
  br label %20

20:                                               ; preds = %19, %15, %8
  %21 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @nfs_put_lock_context(ptr noundef nonnull %22) #10
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @put_nfs_open_context(ptr noundef nonnull %27) #10
  br label %30

30:                                               ; preds = %29, %25
  %31 = load ptr, ptr @nfs_direct_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %31, ptr noundef %0) #10
  br label %32

32:                                               ; preds = %30, %7, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_start_io_direct(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_end_io_direct(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_checks(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @nfs_init_directcache() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 128, i32 noundef 0, i32 noundef 1179648, ptr noundef null) #10
  store ptr %1, ptr @nfs_direct_cachep, align 4
  %2 = icmp eq ptr %1, null
  %3 = select i1 %2, i32 -12, i32 0
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_destroy_directcache() local_unnamed_addr #0 {
  %1 = load ptr, ptr @nfs_direct_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_direct_write_schedule_work(ptr noundef %0) #0 {
  %2 = alloca %struct.nfs_commit_info, align 4
  %3 = alloca %struct.list_head, align 8
  %4 = alloca %struct.nfs_commit_info, align 4
  %5 = alloca %struct.list_head, align 8
  %6 = getelementptr i8, ptr %0, i32 -108
  %7 = getelementptr i8, ptr %0, i32 16
  %8 = load i32, ptr %7, align 4
  store i32 0, ptr %7, align 4
  switch i32 %8, label %26 [
    i32 1, label %9
    i32 2, label %25
  ]

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store ptr %5, ptr %5, align 8
  %10 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 -92
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %4, align 4
  %13 = getelementptr i8, ptr %0, i32 -36
  %14 = getelementptr inbounds %struct.nfs_commit_info, ptr %4, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr i8, ptr %0, i32 -20
  %16 = getelementptr inbounds %struct.nfs_commit_info, ptr %4, i32 0, i32 2
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nfs_commit_info, ptr %4, i32 0, i32 3
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nfs_commit_info, ptr %4, i32 0, i32 4
  store ptr @nfs_direct_commit_completion_ops, ptr %18, align 4
  %19 = call i32 @nfs_scan_commit(ptr noundef %12, ptr noundef nonnull %5, ptr noundef nonnull %4) #10
  %20 = load ptr, ptr %11, align 8
  %21 = call i32 @nfs_generic_commit_list(ptr noundef %20, ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %4) #10
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %9
  call fastcc void @nfs_direct_write_reschedule(ptr noundef %6) #10
  br label %24

24:                                               ; preds = %23, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  br label %69

25:                                               ; preds = %1
  tail call fastcc void @nfs_direct_write_reschedule(ptr noundef %6)
  br label %69

26:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store ptr %3, ptr %3, align 8
  %27 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %27, align 4
  %28 = getelementptr i8, ptr %0, i32 -92
  %29 = load ptr, ptr %28, align 8
  store ptr %29, ptr %2, align 4
  %30 = getelementptr i8, ptr %0, i32 -36
  %31 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr i8, ptr %0, i32 -20
  %33 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 2
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 3
  store ptr %6, ptr %34, align 4
  %35 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 4
  store ptr @nfs_direct_commit_completion_ops, ptr %35, align 4
  %36 = getelementptr i8, ptr %29, i32 -92
  call void @mutex_lock(ptr noundef %36) #10
  %37 = getelementptr i8, ptr %0, i32 -12
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %26
  %41 = getelementptr i8, ptr %0, i32 -4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.pnfs_commit_ops, ptr %42, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  call void %44(ptr noundef nonnull %3, ptr noundef nonnull %2) #10
  %45 = load ptr, ptr %31, align 4
  br label %46

46:                                               ; preds = %40, %26
  %47 = phi ptr [ %30, %26 ], [ %45, %40 ]
  %48 = getelementptr inbounds %struct.nfs_mds_commit_info, ptr %47, i32 0, i32 2
  %49 = call i32 @nfs_scan_commit_list(ptr noundef %48, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #10
  %50 = load ptr, ptr %2, align 4
  %51 = getelementptr i8, ptr %50, i32 -92
  call void @mutex_unlock(ptr noundef %51) #10
  %52 = load volatile ptr, ptr %3, align 8
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %65, label %54

54:                                               ; preds = %62, %46
  %55 = phi ptr [ %63, %62 ], [ %52, %46 ]
  %56 = load volatile ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, %55
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %60, ptr %61, align 4
  store volatile ptr %56, ptr %60, align 4
  store volatile ptr %55, ptr %55, align 4
  store ptr %55, ptr %59, align 4
  br label %62

62:                                               ; preds = %58, %54
  call void @nfs_release_request(ptr noundef %55) #10
  call void @nfs_unlock_and_release_request(ptr noundef %55) #10
  %63 = load volatile ptr, ptr %3, align 8
  %64 = icmp eq ptr %63, %3
  br i1 %64, label %65, label %54

65:                                               ; preds = %62, %46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  %66 = load ptr, ptr %28, align 8
  %67 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 9
  %68 = load ptr, ptr %67, align 8
  call void @nfs_zap_mapping(ptr noundef %66, ptr noundef %68) #10
  call fastcc void @nfs_direct_complete(ptr noundef %6)
  br label %69

69:                                               ; preds = %65, %25, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs_direct_write_reschedule(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.nfs_pageio_descriptor, align 4
  %3 = alloca %struct.list_head, align 8
  %4 = alloca %struct.nfs_commit_info, align 4
  %5 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(92) %2, i8 0, i32 92, i1 false), !annotation !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store ptr %3, ptr %3, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store ptr %5, ptr %5, align 8
  %7 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 13
  %11 = getelementptr inbounds %struct.nfs_commit_info, ptr %4, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 14
  %13 = getelementptr inbounds %struct.nfs_commit_info, ptr %4, i32 0, i32 2
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nfs_commit_info, ptr %4, i32 0, i32 3
  store ptr %0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nfs_commit_info, ptr %4, i32 0, i32 4
  store ptr @nfs_direct_commit_completion_ops, ptr %15, align 4
  %16 = getelementptr i8, ptr %9, i32 -92
  call void @mutex_lock(ptr noundef %16) #10
  %17 = icmp eq ptr %12, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 14, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 14, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.pnfs_commit_ops, ptr %24, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  call void %26(ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %27 = load ptr, ptr %11, align 4
  br label %28

28:                                               ; preds = %22, %18, %1
  %29 = phi ptr [ %10, %1 ], [ %10, %18 ], [ %27, %22 ]
  %30 = getelementptr inbounds %struct.nfs_mds_commit_info, ptr %29, i32 0, i32 2
  %31 = call i32 @nfs_scan_commit_list(ptr noundef %30, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0) #10
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr i8, ptr %32, i32 -92
  call void @mutex_unlock(ptr noundef %33) #10
  %34 = load ptr, ptr %8, align 8
  %35 = load ptr, ptr %3, align 8
  %36 = icmp eq ptr %35, %3
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 8
  store i32 0, ptr %38, align 8
  %39 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 9
  store i32 0, ptr %39, align 4
  br label %79

40:                                               ; preds = %63, %28
  %41 = phi ptr [ %64, %63 ], [ %35, %28 ]
  %42 = getelementptr inbounds %struct.nfs_page, ptr %41, i32 0, i32 11
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %41
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.nfs_page, ptr %41, i32 0, i32 10
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %41
  br i1 %48, label %63, label %49

49:                                               ; preds = %57, %45
  %50 = phi ptr [ %59, %57 ], [ %47, %45 ]
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %55, ptr %56, align 4
  store volatile ptr %51, ptr %55, align 4
  store volatile ptr %50, ptr %50, align 4
  store ptr %50, ptr %54, align 4
  br label %57

57:                                               ; preds = %53, %49
  call void @nfs_release_request(ptr noundef %50) #10
  %58 = getelementptr inbounds %struct.nfs_page, ptr %50, i32 0, i32 10
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %42, align 4
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %62, label %49

62:                                               ; preds = %57
  call void @nfs_join_page_group(ptr noundef %41, ptr noundef %34) #10
  br label %63

63:                                               ; preds = %62, %45, %40
  %64 = load ptr, ptr %41, align 4
  %65 = icmp eq ptr %64, %3
  br i1 %65, label %66, label %40

66:                                               ; preds = %63
  %67 = load ptr, ptr %3, align 8
  %68 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 8
  store i32 0, ptr %68, align 8
  %69 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 9
  store i32 0, ptr %69, align 4
  %70 = icmp eq ptr %67, %3
  br i1 %70, label %79, label %71

71:                                               ; preds = %71, %66
  %72 = phi ptr [ %77, %71 ], [ %67, %66 ]
  %73 = phi i32 [ %76, %71 ], [ 0, %66 ]
  %74 = getelementptr inbounds %struct.nfs_page, ptr %72, i32 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, %73
  store i32 %76, ptr %69, align 4
  %77 = load ptr, ptr %72, align 4
  %78 = icmp eq ptr %77, %3
  br i1 %78, label %79, label %71

79:                                               ; preds = %71, %66, %37
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  %80 = load volatile ptr, ptr %12, align 4
  %81 = icmp eq ptr %80, %12
  br i1 %81, label %96, label %82

82:                                               ; preds = %93, %79
  %83 = phi ptr [ %94, %93 ], [ %80, %79 ]
  %84 = getelementptr inbounds %struct.pnfs_commit_array, ptr %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.pnfs_commit_array, ptr %83, i32 0, i32 5
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %88, %82
  %89 = phi i32 [ %91, %88 ], [ 0, %82 ]
  %90 = getelementptr %struct.pnfs_commit_bucket, ptr %84, i32 %89, i32 3, i32 1
  store i32 -1, ptr %90, align 4
  %91 = add nuw i32 %89, 1
  %92 = icmp eq i32 %91, %86
  br i1 %92, label %93, label %88

93:                                               ; preds = %88, %82
  %94 = load volatile ptr, ptr %83, align 4
  %95 = icmp eq ptr %94, %12
  br i1 %95, label %96, label %82

96:                                               ; preds = %93, %79
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !26
  %97 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 5
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %97) #10, !srcloc !13
  %98 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %97, ptr %97, i32 1, ptr elementtype(i32) %97) #10, !srcloc !18
  %99 = load ptr, ptr %8, align 8
  call void @nfs_pageio_init_write(ptr noundef nonnull %2, ptr noundef %99, i32 noundef 4, i1 noundef zeroext false, ptr noundef nonnull @nfs_direct_write_completion_ops) #10
  %100 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %2, i32 0, i32 9
  store ptr %0, ptr %100, align 4
  %101 = load ptr, ptr %3, align 8
  %102 = icmp eq ptr %101, %3
  br i1 %102, label %132, label %103

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 16
  %105 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %2, i32 0, i32 4
  %106 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 11
  br label %107

107:                                              ; preds = %130, %103
  %108 = phi ptr [ %101, %103 ], [ %109, %130 ]
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.nfs_page, ptr %108, i32 0, i32 12
  %111 = load i16, ptr %110, align 4
  %112 = add i16 %111, 1
  store i16 %112, ptr %110, align 4
  %113 = call i32 @nfs_pageio_add_request(ptr noundef nonnull %2, ptr noundef %108) #10
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = load ptr, ptr %108, align 4
  %119 = getelementptr inbounds %struct.list_head, ptr %118, i32 0, i32 1
  store ptr %117, ptr %119, align 4
  store volatile ptr %118, ptr %117, align 4
  %120 = load ptr, ptr %7, align 4
  store ptr %108, ptr %7, align 4
  store ptr %5, ptr %108, align 4
  store ptr %120, ptr %116, align 4
  store volatile ptr %108, ptr %120, align 4
  %121 = load ptr, ptr %4, align 4
  %122 = getelementptr inbounds %struct.inode, ptr %121, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %122) #10
  store i32 0, ptr %104, align 4
  %123 = load i32, ptr %105, align 4
  %124 = icmp slt i32 %123, 0
  %125 = select i1 %124, i32 %123, i32 -5
  store i32 %125, ptr %106, align 4
  %126 = load ptr, ptr %4, align 4
  %127 = getelementptr inbounds %struct.inode, ptr %126, i32 0, i32 17
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  %128 = load i16, ptr %127, align 4
  %129 = add i16 %128, 1
  store i16 %129, ptr %127, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !28
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !29
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  br label %130

130:                                              ; preds = %115, %107
  call void @nfs_release_request(ptr noundef %108) #10
  %131 = icmp eq ptr %109, %3
  br i1 %131, label %132, label %107

132:                                              ; preds = %130, %96
  call void @nfs_pageio_complete(ptr noundef nonnull %2) #10
  %133 = load volatile ptr, ptr %5, align 8
  %134 = icmp eq ptr %133, %5
  br i1 %134, label %146, label %135

135:                                              ; preds = %143, %132
  %136 = phi ptr [ %144, %143 ], [ %133, %132 ]
  %137 = load volatile ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, %136
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.list_head, ptr %136, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.list_head, ptr %137, i32 0, i32 1
  store ptr %141, ptr %142, align 4
  store volatile ptr %137, ptr %141, align 4
  store volatile ptr %136, ptr %136, align 4
  store ptr %136, ptr %140, align 4
  br label %143

143:                                              ; preds = %139, %135
  call void @nfs_unlock_and_release_request(ptr noundef %136) #10
  %144 = load volatile ptr, ptr %5, align 8
  %145 = icmp eq ptr %144, %5
  br i1 %145, label %146, label %135

146:                                              ; preds = %143, %132
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %97) #10, !srcloc !13
  %147 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %97, ptr %97, i32 1, ptr elementtype(i32) %97) #10, !srcloc !20
  %148 = extractvalue { i32, i32 } %147, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load ptr, ptr @nfsiod_workqueue, align 4
  %152 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 15
  %153 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %151, ptr noundef %152) #10
  br label %154

154:                                              ; preds = %150, %146
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_zap_mapping(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs_direct_complete(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #10, !srcloc !13
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #10, !srcloc !20
  %6 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23
  tail call void @wake_up_bit(ptr noundef %9, i32 noundef 9) #10
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 8
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = icmp slt i32 %18, 0
  %22 = load i1, ptr @nfs_direct_complete.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %27, !prof !15

25:                                               ; preds = %20
  store i1 true, ptr @nfs_direct_complete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 277, i32 noundef 9, ptr noundef null) #10
  %26 = load ptr, ptr %11, align 4
  br label %27

27:                                               ; preds = %25, %20, %14
  %28 = phi ptr [ %12, %14 ], [ %26, %25 ], [ %12, %20 ]
  %29 = phi i32 [ %16, %14 ], [ %18, %25 ], [ %18, %20 ]
  %30 = getelementptr inbounds %struct.kiocb, ptr %28, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef %28, i32 noundef %29) #10
  br label %32

32:                                               ; preds = %27, %10
  %33 = getelementptr inbounds %struct.nfs_direct_req, ptr %0, i32 0, i32 12
  tail call void @complete(ptr noundef %33) #10
  tail call fastcc void @nfs_direct_req_release(ptr noundef %0)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_scan_commit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_generic_commit_list(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_init_write(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_pageio_add_request(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_release_request(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_unlock_and_release_request(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_scan_commit_list(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_join_page_group(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_write_sync_pgio_error(ptr noundef %0, i32 noundef %1) #0 {
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
  tail call void @nfs_unlock_and_release_request(ptr noundef %6) #10
  %14 = load volatile ptr, ptr %0, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %5

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_direct_pgio_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #10, !srcloc !13
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #10, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_direct_write_completion(ptr noundef %0) #0 {
  %2 = alloca %struct.nfs_commit_info, align 4
  %3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  %5 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.nfs_direct_req, ptr %4, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %2, align 4
  %8 = getelementptr inbounds %struct.nfs_direct_req, ptr %4, i32 0, i32 13
  %9 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nfs_direct_req, ptr %4, i32 0, i32 14
  %11 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 3
  store ptr %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 4
  store ptr @nfs_direct_commit_completion_ops, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nfs_direct_req, ptr %4, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %14) #10
  %15 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 17
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  %20 = load i16, ptr %14, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  br label %132

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 7
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 16
  %26 = load i32, ptr %25, align 8
  %27 = zext i32 %26 to i64
  %28 = add i64 %24, %27
  %29 = getelementptr inbounds %struct.nfs_direct_req, ptr %4, i32 0, i32 7
  %30 = load i64, ptr %29, align 8
  %31 = icmp sgt i64 %28, %30
  %32 = sub i64 %28, %30
  %33 = trunc i64 %32 to i32
  %34 = select i1 %31, i32 %33, i32 0
  %35 = load volatile i32, ptr %15, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %22
  %39 = load volatile i32, ptr %15, align 4
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.nfs_direct_req, ptr %4, i32 0, i32 9
  %44 = load i32, ptr %43, align 4
  br label %64

45:                                               ; preds = %38, %22
  %46 = getelementptr inbounds %struct.nfs_direct_req, ptr %4, i32 0, i32 9
  %47 = load i32, ptr %46, align 4
  %48 = icmp slt i32 %47, %34
  br i1 %48, label %64, label %49

49:                                               ; preds = %45
  store i32 %34, ptr %46, align 4
  %50 = getelementptr inbounds %struct.nfs_direct_req, ptr %4, i32 0, i32 8
  %51 = load i32, ptr %50, align 8
  %52 = icmp sgt i32 %51, %34
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 %34, ptr %50, align 8
  br label %54

54:                                               ; preds = %53, %49
  %55 = load volatile i32, ptr %15, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 15
  %60 = load i32, ptr %59, align 4
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i32 [ %60, %58 ], [ 0, %54 ]
  %63 = getelementptr inbounds %struct.nfs_direct_req, ptr %4, i32 0, i32 11
  store i32 %62, ptr %63, align 4
  br label %64

64:                                               ; preds = %61, %45, %42
  %65 = phi i32 [ %44, %42 ], [ %47, %45 ], [ %34, %61 ]
  %66 = tail call i32 @llvm.smin.i32(i32 %34, i32 %65) #10
  %67 = getelementptr inbounds %struct.nfs_direct_req, ptr %4, i32 0, i32 8
  %68 = load i32, ptr %67, align 8
  %69 = icmp slt i32 %68, %66
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 %66, ptr %67, align 8
  br label %71

71:                                               ; preds = %70, %64
  %72 = load i32, ptr %25, align 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = tail call i32 @nfs_write_need_commit(ptr noundef %0) #10
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.nfs_direct_req, ptr %4, i32 0, i32 16
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 1, ptr %78, align 4
  br label %82

82:                                               ; preds = %81, %77, %74, %71
  %83 = phi i32 [ 2147483647, %74 ], [ 2147483647, %71 ], [ 1, %81 ], [ %79, %77 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  %84 = load i16, ptr %14, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  %86 = load volatile ptr, ptr %5, align 4
  %87 = icmp eq ptr %86, %5
  br i1 %87, label %132, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 4
  %90 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 27
  br label %92

92:                                               ; preds = %129, %88
  %93 = phi ptr [ %86, %88 ], [ %130, %129 ]
  %94 = load volatile ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, %93
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  store ptr %98, ptr %99, align 4
  store volatile ptr %94, ptr %98, align 4
  store volatile ptr %93, ptr %93, align 4
  store ptr %93, ptr %97, align 4
  br label %100

100:                                              ; preds = %96, %92
  switch i32 %83, label %129 [
    i32 1, label %101
    i32 2, label %117
  ]

101:                                              ; preds = %100
  %102 = getelementptr inbounds %struct.nfs_page, ptr %93, i32 0, i32 7
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %102) #10, !srcloc !13
  %103 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %102, ptr %102, i32 1, ptr elementtype(i32) %102) #10, !srcloc !14
  %104 = extractvalue { i32, i32, i32 } %103, 0
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106, !prof !15

106:                                              ; preds = %101
  %107 = add i32 %104, 1
  %108 = or i32 %107, %104
  %109 = icmp sgt i32 %108, -1
  br i1 %109, label %112, label %110, !prof !16

110:                                              ; preds = %106, %101
  %111 = phi i32 [ 2, %101 ], [ 1, %106 ]
  call void @refcount_warn_saturate(ptr noundef %102, i32 noundef %111) #10
  br label %112

112:                                              ; preds = %110, %106
  %113 = getelementptr inbounds %struct.nfs_page, ptr %93, i32 0, i32 9
  %114 = load i64, ptr %89, align 4
  store i64 %114, ptr %113, align 4
  %115 = load ptr, ptr %90, align 4
  %116 = load i32, ptr %91, align 4
  call void @nfs_mark_request_commit(ptr noundef %93, ptr noundef %115, ptr noundef nonnull %2, i32 noundef %116) #10
  br label %129

117:                                              ; preds = %100
  %118 = getelementptr inbounds %struct.nfs_page, ptr %93, i32 0, i32 7
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %118) #10, !srcloc !13
  %119 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %118, ptr %118, i32 1, ptr elementtype(i32) %118) #10, !srcloc !14
  %120 = extractvalue { i32, i32, i32 } %119, 0
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %126, label %122, !prof !15

122:                                              ; preds = %117
  %123 = add i32 %120, 1
  %124 = or i32 %123, %120
  %125 = icmp sgt i32 %124, -1
  br i1 %125, label %128, label %126, !prof !16

126:                                              ; preds = %122, %117
  %127 = phi i32 [ 2, %117 ], [ 1, %122 ]
  call void @refcount_warn_saturate(ptr noundef %118, i32 noundef %127) #10
  br label %128

128:                                              ; preds = %126, %122
  call void @nfs_mark_request_commit(ptr noundef %93, ptr noundef null, ptr noundef nonnull %2, i32 noundef 0) #10
  br label %129

129:                                              ; preds = %128, %112, %100
  call void @nfs_unlock_and_release_request(ptr noundef %93) #10
  %130 = load volatile ptr, ptr %5, align 4
  %131 = icmp eq ptr %130, %5
  br i1 %131, label %132, label %92

132:                                              ; preds = %129, %82, %19
  %133 = getelementptr inbounds %struct.nfs_direct_req, ptr %4, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %133) #10, !srcloc !13
  %134 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %133, ptr %133, i32 1, ptr elementtype(i32) %133) #10, !srcloc !20
  %135 = extractvalue { i32, i32 } %134, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load ptr, ptr @nfsiod_workqueue, align 4
  %139 = getelementptr inbounds %struct.nfs_direct_req, ptr %4, i32 0, i32 15
  %140 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %138, ptr noundef %139) #10
  br label %141

141:                                              ; preds = %137, %132
  %142 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 9
  %143 = load ptr, ptr %142, align 4
  call void %143(ptr noundef %0) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_direct_write_reschedule_io(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 16
  store i32 2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 4, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 5
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = zext i32 %14 to i64
  %16 = add i64 %12, %15
  %17 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 7
  %18 = load i64, ptr %17, align 8
  %19 = sub i64 %16, %18
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 16
  store i32 %20, ptr %21, align 8
  br label %22

22:                                               ; preds = %8, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  %23 = load i16, ptr %4, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_write_need_commit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_mark_request_commit(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_put_lock_context(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_nfs_open_context(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_init_read(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_get_pages_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_create_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_read_sync_pgio_error(ptr noundef %0, i32 noundef %1) #0 {
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
  tail call void @nfs_release_request(ptr noundef %6) #10
  %14 = load volatile ptr, ptr %0, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %5

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_direct_read_completion(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 17
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  %10 = load i16, ptr %4, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  br label %103

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 7
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 16
  %16 = load i32, ptr %15, align 8
  %17 = zext i32 %16 to i64
  %18 = add i64 %14, %17
  %19 = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 7
  %20 = load i64, ptr %19, align 8
  %21 = icmp sgt i64 %18, %20
  %22 = sub i64 %18, %20
  %23 = trunc i64 %22 to i32
  %24 = select i1 %21, i32 %23, i32 0
  %25 = load volatile i32, ptr %5, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %12
  %29 = load volatile i32, ptr %5, align 4
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 9
  %34 = load i32, ptr %33, align 4
  br label %54

35:                                               ; preds = %28, %12
  %36 = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  %38 = icmp slt i32 %37, %24
  br i1 %38, label %54, label %39

39:                                               ; preds = %35
  store i32 %24, ptr %36, align 4
  %40 = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 8
  %41 = load i32, ptr %40, align 8
  %42 = icmp sgt i32 %41, %24
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 %24, ptr %40, align 8
  br label %44

44:                                               ; preds = %43, %39
  %45 = load volatile i32, ptr %5, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 15
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi i32 [ %50, %48 ], [ 0, %44 ]
  %53 = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 11
  store i32 %52, ptr %53, align 4
  br label %54

54:                                               ; preds = %51, %35, %32
  %55 = phi i32 [ %34, %32 ], [ %37, %35 ], [ %24, %51 ]
  %56 = tail call i32 @llvm.smin.i32(i32 %24, i32 %55) #10
  %57 = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 8
  %58 = load i32, ptr %57, align 8
  %59 = icmp slt i32 %58, %56
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 %56, ptr %57, align 8
  br label %61

61:                                               ; preds = %60, %54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  %62 = load i16, ptr %4, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  %64 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 2
  %65 = load volatile ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %103, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 16
  br label %69

69:                                               ; preds = %100, %67
  %70 = phi ptr [ %65, %67 ], [ %101, %100 ]
  %71 = phi i32 [ 0, %67 ], [ %93, %100 ]
  %72 = getelementptr inbounds %struct.nfs_page, ptr %70, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %74, 65536
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.page, ptr %73, i32 0, i32 1
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load i32, ptr %15, align 8
  %84 = icmp ult i32 %71, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i32, ptr %68, align 4
  %87 = icmp eq i32 %86, 3
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = tail call zeroext i1 @set_page_dirty(ptr noundef %73) #10
  br label %90

90:                                               ; preds = %88, %85, %82, %77, %69
  %91 = getelementptr inbounds %struct.nfs_page, ptr %70, i32 0, i32 6
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, %71
  %94 = load volatile ptr, ptr %70, align 4
  %95 = icmp eq ptr %94, %70
  br i1 %95, label %100, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  store ptr %98, ptr %99, align 4
  store volatile ptr %94, ptr %98, align 4
  store volatile ptr %70, ptr %70, align 4
  store ptr %70, ptr %97, align 4
  br label %100

100:                                              ; preds = %96, %90
  tail call void @nfs_release_request(ptr noundef %70) #10
  %101 = load volatile ptr, ptr %64, align 4
  %102 = icmp eq ptr %101, %64
  br i1 %102, label %103, label %69

103:                                              ; preds = %100, %61, %9
  %104 = getelementptr inbounds %struct.nfs_direct_req, ptr %3, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %104) #10, !srcloc !13
  %105 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %104, ptr %104, i32 1, ptr elementtype(i32) %104) #10, !srcloc !20
  %106 = extractvalue { i32, i32 } %105, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  tail call fastcc void @nfs_direct_complete(ptr noundef %3)
  br label %109

109:                                              ; preds = %108, %103
  %110 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 9
  %111 = load ptr, ptr %110, align 4
  tail call void %111(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_direct_commit_complete(ptr noundef %0) #0 {
  %2 = alloca %struct.nfs_commit_info, align 4
  %3 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 9, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  %7 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nfs_direct_req, ptr %6, i32 0, i32 11
  store i32 %8, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nfs_direct_req, ptr %6, i32 0, i32 9
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nfs_direct_req, ptr %6, i32 0, i32 8
  store i32 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.nfs_direct_req, ptr %6, i32 0, i32 16
  store i32 2147483647, ptr %14, align 4
  br label %22

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.nfs_direct_req, ptr %6, i32 0, i32 16
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 2147483647
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nfs_direct_req, ptr %6, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %15, %10
  %23 = phi i32 [ %8, %10 ], [ %21, %19 ], [ %8, %15 ]
  %24 = getelementptr inbounds %struct.nfs_direct_req, ptr %6, i32 0, i32 4
  %25 = load ptr, ptr %24, align 8
  store ptr %25, ptr %2, align 4
  %26 = getelementptr inbounds %struct.nfs_direct_req, ptr %6, i32 0, i32 13
  %27 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nfs_direct_req, ptr %6, i32 0, i32 14
  %29 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 2
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 3
  store ptr %6, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nfs_commit_info, ptr %2, i32 0, i32 4
  store ptr @nfs_direct_commit_completion_ops, ptr %31, align 4
  %32 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 5
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %63, label %35

35:                                               ; preds = %22
  %36 = icmp sgt i32 %23, -1
  %37 = getelementptr inbounds %struct.nfs_writeverf, ptr %4, i32 0, i32 1
  %38 = getelementptr inbounds %struct.nfs_direct_req, ptr %6, i32 0, i32 16
  br label %39

39:                                               ; preds = %58, %35
  %40 = phi ptr [ %33, %35 ], [ %59, %58 ]
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %45, ptr %46, align 4
  store volatile ptr %41, ptr %45, align 4
  store volatile ptr %40, ptr %40, align 4
  store ptr %40, ptr %44, align 4
  br label %47

47:                                               ; preds = %43, %39
  br i1 %36, label %48, label %57

48:                                               ; preds = %47
  %49 = load i32, ptr %37, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.nfs_page, ptr %40, i32 0, i32 9
  %53 = call i32 @bcmp(ptr noundef dereferenceable(8) %52, ptr noundef dereferenceable(8) %4, i32 8) #10
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51, %48
  store i32 2, ptr %38, align 4
  %56 = getelementptr inbounds %struct.nfs_page, ptr %40, i32 0, i32 12
  store i16 0, ptr %56, align 4
  call void @nfs_mark_request_commit(ptr noundef %40, ptr noundef null, ptr noundef nonnull %2, i32 noundef 0) #10
  br label %58

57:                                               ; preds = %51, %47
  call void @nfs_release_request(ptr noundef %40) #10
  br label %58

58:                                               ; preds = %57, %55
  call void @nfs_unlock_and_release_request(ptr noundef %40) #10
  %59 = load volatile ptr, ptr %32, align 4
  %60 = icmp eq ptr %59, %32
  br i1 %60, label %61, label %39

61:                                               ; preds = %58
  %62 = load ptr, ptr %27, align 4
  br label %63

63:                                               ; preds = %61, %22
  %64 = phi ptr [ %62, %61 ], [ %26, %22 ]
  %65 = call zeroext i1 @nfs_commit_end(ptr noundef %64) #10
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load ptr, ptr @nfsiod_workqueue, align 4
  %68 = getelementptr inbounds %struct.nfs_direct_req, ptr %6, i32 0, i32 15
  %69 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %67, ptr noundef %68) #10
  br label %70

70:                                               ; preds = %66, %63
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_direct_resched_write(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_commit_info, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfs_direct_req, ptr %4, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.nfs_direct_req, ptr %4, i32 0, i32 16
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2147483647
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 2, ptr %6, align 4
  br label %10

10:                                               ; preds = %9, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  %11 = load i16, ptr %5, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  tail call void @nfs_mark_request_commit(ptr noundef %1, ptr noundef null, ptr noundef %0, i32 noundef 0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_commit_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_free_request(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 572139, i64 572200}
!11 = !{i64 579244}
!12 = !{i64 575156}
!13 = !{i64 543392, i64 2148044958, i64 2148044984, i64 2148045031, i64 2148045053, i64 2148045081, i64 2148045101}
!14 = !{i64 2148109678, i64 2148109710, i64 2148109739, i64 2148109773, i64 2148109804, i64 2148109827}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{!"auto-init"}
!18 = !{i64 2148108220, i64 2148108246, i64 2148108275, i64 2148108309, i64 2148108340, i64 2148108363}
!19 = !{i64 2148208899}
!20 = !{i64 2148111261, i64 2148111293, i64 2148111322, i64 2148111356, i64 2148111387, i64 2148111410}
!21 = !{i64 2148209102}
!22 = !{i64 2148209900}
!23 = !{i64 2148112035, i64 2148112067, i64 2148112096, i64 2148112130, i64 2148112161, i64 2148112184}
!24 = !{i64 2149263982}
!25 = !{i64 2148963868}
!26 = !{i64 2148964085}
!27 = !{i64 2149190067}
!28 = !{i64 2149185891}
!29 = !{i64 2149185966, i64 2149185993, i64 2149186040, i64 2149186062, i64 2149186090, i64 2149186110}
!30 = !{i64 2149213070}
