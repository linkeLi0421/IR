; ModuleID = '/llk/IR/fs/nfs/delegation.c_pt.bc'
source_filename = "../fs/nfs/delegation.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_remove_bad_delegation:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_remove_bad_delegation\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_remove_bad_delegation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.83 }
%union.anon.83 = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.nfs_delegation = type { %struct.list_head, ptr, ptr, %struct.nfs4_stateid_struct, i32, i32, i64, i32, %struct.refcount_struct, %struct.spinlock, %struct.callback_head }
%struct.list_head = type { ptr, ptr }
%struct.nfs4_stateid_struct = type { %union.anon.116, i32 }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type { i32, [12 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.12 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.12 = type { %struct.callback_head }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.151, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.152, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.153, ptr, %struct.address_space, %struct.list_head, %union.anon.154, i32, i32, ptr, ptr }
%union.anon.151 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.152 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.153 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.__kernel_sockaddr_storage = type { %union.anon.85 }
%union.anon.85 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.nfs4_state = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, %struct.spinlock, %struct.seqlock_t, %struct.nfs4_stateid_struct, %struct.nfs4_stateid_struct, i32, i32, i32, i32, %struct.refcount_struct, %struct.wait_queue_head, %struct.callback_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.nfs4_state_owner = type { ptr, %struct.list_head, i32, %struct.rb_node, ptr, %struct.spinlock, %struct.atomic_t, i32, %struct.list_head, %struct.nfs_seqid_counter, %struct.seqcount_spinlock, %struct.mutex }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nfs_seqid_counter = type { i64, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.rpc_wait_queue }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.nfs4_minor_version_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.nfs_inode = type { i64, %struct.nfs_fh, i32, i32, i32, i32, i32, i32, %struct.rb_root, %struct.list_head, %struct.list_head, %union.anon.155, %struct.list_head, ptr, %struct.list_head, ptr, %struct.rw_semaphore, ptr, i64, i64, %struct.inode, ptr }
%union.anon.155 = type { %struct.anon.157 }
%struct.anon.157 = type { %struct.atomic_t, %struct.nfs_mds_commit_info, %struct.mutex }
%struct.nfs_mds_commit_info = type { %struct.atomic_t, %struct.atomic_t, %struct.list_head }

@nfs_active_delegations = internal global %struct.atomic_t zeroinitializer, align 4
@nfs_delegation_watermark = internal global i32 5000, align 4
@__kstrtab_nfs_remove_bad_delegation = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_remove_bad_delegation = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_remove_bad_delegation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_remove_bad_delegation to i32), ptr @__kstrtab_nfs_remove_bad_delegation, ptr @__kstrtabns_nfs_remove_bad_delegation }, section "___ksymtab_gpl+nfs_remove_bad_delegation", align 4
@__param_str_delegation_watermark = internal constant [27 x i8] c"nfsv4.delegation_watermark\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_delegation_watermark = internal constant %struct.kernel_param { ptr @__param_str_delegation_watermark, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @nfs_delegation_watermark } }, section "__param", align 4
@__UNIQUE_ID_delegation_watermarktype720 = internal constant [41 x i8] c"nfsv4.parmtype=delegation_watermark:uint\00", section ".modinfo", align 1
@__tracepoint_nfs4_reclaim_delegation = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__tracepoint_nfs4_set_delegation = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_delegation_watermarktype720, ptr @__ksymtab_nfs_remove_bad_delegation, ptr @__param_delegation_watermark], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_mark_delegation_referenced(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_delegation, ptr %0, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @nfs4_get_valid_delegation(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 -52
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs_delegation, ptr %3, i32 0, i32 7
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load volatile i32, ptr %6, align 4
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr %3, ptr null
  br label %15

15:                                               ; preds = %10, %5, %1
  %16 = phi ptr [ null, %1 ], [ null, %5 ], [ %14, %10 ]
  ret ptr %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_have_delegation(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %3 = getelementptr i8, ptr %0, i32 -52
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = and i32 %1, 3
  %8 = getelementptr inbounds %struct.nfs_delegation, ptr %4, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.nfs_delegation, ptr %4, i32 0, i32 7
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load volatile i32, ptr %13, align 4
  %19 = and i32 %18, 16
  %20 = icmp eq i32 %19, 0
  %21 = lshr exact i32 %19, 4
  %22 = xor i32 %21, 1
  br i1 %20, label %23, label %24

23:                                               ; preds = %17
  tail call void @_set_bit(i32 noundef 3, ptr noundef %13) #11
  br label %24

24:                                               ; preds = %23, %17, %12, %6, %2
  %25 = phi i32 [ 1, %23 ], [ 0, %2 ], [ 0, %6 ], [ 0, %12 ], [ %22, %17 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_check_delegation(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %3 = getelementptr i8, ptr %0, i32 -52
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = and i32 %1, 3
  %8 = getelementptr inbounds %struct.nfs_delegation, ptr %4, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %12, label %22

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.nfs_delegation, ptr %4, i32 0, i32 7
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load volatile i32, ptr %13, align 4
  %19 = lshr i32 %18, 4
  %20 = and i32 %19, 1
  %21 = xor i32 %20, 1
  br label %22

22:                                               ; preds = %17, %12, %6, %2
  %23 = phi i32 [ 0, %2 ], [ 0, %6 ], [ 0, %12 ], [ %21, %17 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_inode_reclaim_delegation(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %6 = getelementptr i8, ptr %0, i32 -52
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %60, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nfs_delegation, ptr %7, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %10) #11
  %11 = getelementptr inbounds %struct.nfs_delegation, ptr %7, i32 0, i32 7
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %9
  %16 = load volatile i32, ptr %11, align 4
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nfs_delegation, ptr %7, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %20, ptr noundef align 4 dereferenceable(16) %3, i32 16, i1 false) #11
  %21 = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %3, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nfs_delegation, ptr %7, i32 0, i32 3, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nfs_delegation, ptr %7, i32 0, i32 4
  store i32 %2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nfs_delegation, ptr %7, i32 0, i32 5
  store i32 %4, ptr %25, align 8
  %26 = getelementptr inbounds %struct.nfs_delegation, ptr %7, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %1, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 24
  store i32 0, ptr %30, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %1) #11, !srcloc !10
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #11, !srcloc !11
  br label %32

32:                                               ; preds = %29, %19
  store ptr %1, ptr %26, align 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %11) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %33 = load i16, ptr %10, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %35 = icmp eq ptr %27, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %27) #11, !srcloc !10
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %27, ptr nonnull %27, i32 1, ptr nonnull elementtype(i32) %27) #11, !srcloc !17
  %38 = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  tail call void @__put_cred(ptr noundef nonnull %27) #11
  br label %41

41:                                               ; preds = %40, %36, %32
  %42 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_reclaim_delegation, i32 0, i32 1), align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = tail call ptr @llvm.thread.pointer() #11
  %46 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 5
  %49 = getelementptr i32, ptr @__cpu_online_mask, i32 %48
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %47, 31
  %52 = shl nuw i32 1, %51
  %53 = and i32 %52, %50
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %44
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  %56 = tail call i32 @__traceiter_nfs4_reclaim_delegation(ptr noundef null, ptr noundef %0, i32 noundef %2) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br label %62

57:                                               ; preds = %15, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %58 = load i16, ptr %10, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %60

60:                                               ; preds = %57, %5
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %61 = tail call i32 @nfs_inode_set_delegation(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %62

62:                                               ; preds = %60, %55, %44, %41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_cred(ptr noundef %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #11, !srcloc !10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #11, !srcloc !17
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @__put_cred(ptr noundef nonnull %0) #11
  br label %8

8:                                                ; preds = %7, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_inode_set_delegation(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3136, i32 noundef 80) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %192, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.nfs_delegation, ptr %12, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %15, ptr noundef align 4 dereferenceable(16) %3, i32 16, i1 false) #11
  %16 = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %3, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nfs_delegation, ptr %12, i32 0, i32 3, i32 1
  store i32 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.nfs_delegation, ptr %12, i32 0, i32 8
  store volatile i32 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nfs_delegation, ptr %12, i32 0, i32 4
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nfs_delegation, ptr %12, i32 0, i32 5
  store i32 %4, ptr %21, align 8
  %22 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 33
  %23 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %22, ptr elementtype(i64) %22) #11, !srcloc !21
  %24 = getelementptr inbounds %struct.nfs_delegation, ptr %12, i32 0, i32 6
  store i64 %23, ptr %24, align 8
  %25 = icmp eq ptr %1, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 24
  store i32 0, ptr %27, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %1) #11, !srcloc !10
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #11, !srcloc !11
  br label %29

29:                                               ; preds = %26, %14
  %30 = getelementptr inbounds %struct.nfs_delegation, ptr %12, i32 0, i32 1
  store ptr %1, ptr %30, align 8
  %31 = getelementptr inbounds %struct.nfs_delegation, ptr %12, i32 0, i32 2
  store ptr %0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.nfs_delegation, ptr %12, i32 0, i32 7
  store i32 8, ptr %32, align 8
  %33 = getelementptr inbounds %struct.nfs_delegation, ptr %12, i32 0, i32 9
  store i32 0, ptr %33, align 8
  %34 = getelementptr inbounds %struct.nfs_client, ptr %10, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %34) #11
  %35 = getelementptr i8, ptr %0, i32 -52
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %128, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.nfs_delegation, ptr %36, i32 0, i32 3
  %40 = getelementptr inbounds %struct.nfs_delegation, ptr %36, i32 0, i32 3, i32 0, i32 0, i32 1
  %41 = getelementptr inbounds %struct.nfs_delegation, ptr %12, i32 0, i32 3, i32 0, i32 0, i32 1
  %42 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %40, ptr noundef dereferenceable(12) %41, i32 12) #11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %90

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.nfs_delegation, ptr %36, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %45) #11
  %46 = load i32, ptr %15, align 8
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #11
  %48 = load i32, ptr %39, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #11
  %50 = sub i32 %47, %49
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %44
  store i32 %46, ptr %39, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !22
  %53 = load i32, ptr %20, align 4
  %54 = getelementptr inbounds %struct.nfs_delegation, ptr %36, i32 0, i32 4
  store i32 %53, ptr %54, align 4
  %55 = load i32, ptr %21, align 8
  %56 = getelementptr inbounds %struct.nfs_delegation, ptr %36, i32 0, i32 5
  store i32 %55, ptr %56, align 8
  %57 = getelementptr inbounds %struct.nfs_delegation, ptr %36, i32 0, i32 7
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %58, 32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %87, label %61

61:                                               ; preds = %52
  %62 = load i64, ptr %24, align 8
  %63 = getelementptr inbounds %struct.nfs_delegation, ptr %36, i32 0, i32 6
  store i64 %62, ptr %63, align 8
  %64 = load ptr, ptr %30, align 8
  %65 = getelementptr inbounds %struct.nfs_delegation, ptr %36, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8
  %67 = tail call i32 @cred_fscmp(ptr noundef %66, ptr noundef %64) #11
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %61
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !23
  %70 = icmp eq ptr %64, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.cred, ptr %64, i32 0, i32 24
  store i32 0, ptr %72, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %64) #11, !srcloc !10
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %64, ptr nonnull %64, i32 1, ptr nonnull elementtype(i32) %64) #11, !srcloc !11
  br label %74

74:                                               ; preds = %71, %69
  %75 = ptrtoint ptr %64 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %65) #11, !srcloc !10
  %76 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %75, ptr %65) #11, !srcloc !24
  %77 = extractvalue { i32, i32 } %76, 0
  %78 = inttoptr i32 %77 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !25
  %79 = icmp eq i32 %77, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %74
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %78) #11, !srcloc !10
  %81 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %78, ptr nonnull %78, i32 1, ptr nonnull elementtype(i32) %78) #11, !srcloc !17
  %82 = extractvalue { i32, i32 } %81, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  tail call void @__put_cred(ptr noundef nonnull %78) #11
  br label %85

85:                                               ; preds = %84, %80, %74, %61
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %57) #11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nfs_active_delegations) #11, !srcloc !10
  %86 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nfs_active_delegations, ptr nonnull @nfs_active_delegations, i32 1, ptr nonnull elementtype(i32) @nfs_active_delegations) #11, !srcloc !11
  br label %87

87:                                               ; preds = %85, %52, %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %88 = load i16, ptr %45, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %45, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %158

90:                                               ; preds = %38
  %91 = getelementptr inbounds %struct.nfs_delegation, ptr %36, i32 0, i32 7
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %92, 32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load i32, ptr %20, align 4
  %97 = getelementptr inbounds %struct.nfs_delegation, ptr %36, i32 0, i32 4
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %96, %98
  %100 = and i32 %96, 2
  %101 = icmp eq i32 %100, 0
  %102 = or i1 %99, %101
  br i1 %102, label %158, label %103

103:                                              ; preds = %95
  %104 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %91) #11
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %158

106:                                              ; preds = %103
  %107 = load ptr, ptr %35, align 4
  br label %108

108:                                              ; preds = %106, %90
  %109 = phi ptr [ %107, %106 ], [ %36, %90 ]
  %110 = icmp ne ptr %109, null
  %111 = icmp eq ptr %109, %36
  %112 = and i1 %110, %111
  br i1 %112, label %113, label %158

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.nfs_delegation, ptr %36, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %114) #11
  %115 = getelementptr inbounds %struct.nfs_delegation, ptr %36, i32 0, i32 2
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %119 = load i16, ptr %114, align 4
  %120 = add i16 %119, 1
  store i16 %120, ptr %114, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %158

121:                                              ; preds = %113
  %122 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = load ptr, ptr %36, align 4
  %125 = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  store ptr %123, ptr %125, align 4
  store volatile ptr %124, ptr %123, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %122, align 4
  store ptr null, ptr %115, align 4
  store volatile ptr null, ptr %35, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %126 = load i16, ptr %114, align 4
  %127 = add i16 %126, 1
  store i16 %127, ptr %114, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %128

128:                                              ; preds = %121, %29
  %129 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %129) #11
  %130 = getelementptr i8, ptr %0, i32 -152
  %131 = load i32, ptr %130, align 8
  %132 = and i32 %131, 256
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %128
  tail call void @nfs_set_cache_invalid(ptr noundef %0, i32 noundef 122398) #11
  br label %135

135:                                              ; preds = %134, %128
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %136 = load i16, ptr %129, align 4
  %137 = add i16 %136, 1
  store i16 %137, ptr %129, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %138 = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 52
  %139 = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 52, i32 1
  %140 = load ptr, ptr %139, align 4
  store ptr %138, ptr %12, align 8
  %141 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %140, ptr %141, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !26
  store volatile ptr %12, ptr %140, align 4
  store ptr %12, ptr %139, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !27
  store volatile ptr %12, ptr %35, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nfs_active_delegations) #11, !srcloc !10
  %142 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nfs_active_delegations, ptr nonnull @nfs_active_delegations, i32 1, ptr nonnull elementtype(i32) @nfs_active_delegations) #11, !srcloc !11
  %143 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_set_delegation, i32 0, i32 1), align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %135
  %146 = tail call ptr @llvm.thread.pointer() #11
  %147 = getelementptr inbounds %struct.thread_info, ptr %146, i32 0, i32 2
  %148 = load i32, ptr %147, align 8
  %149 = lshr i32 %148, 5
  %150 = getelementptr i32, ptr @__cpu_online_mask, i32 %149
  %151 = load volatile i32, ptr %150, align 4
  %152 = and i32 %148, 31
  %153 = shl nuw i32 1, %152
  %154 = and i32 %153, %151
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %145
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !28
  %157 = tail call i32 @__traceiter_nfs4_set_delegation(ptr noundef null, ptr noundef %0, i32 noundef %2) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  br label %158

158:                                              ; preds = %156, %145, %135, %118, %108, %103, %95, %87
  %159 = phi ptr [ %12, %87 ], [ %12, %103 ], [ null, %95 ], [ null, %135 ], [ null, %145 ], [ null, %156 ], [ %12, %118 ], [ %12, %108 ]
  %160 = phi ptr [ null, %87 ], [ null, %103 ], [ %12, %95 ], [ %36, %135 ], [ %36, %145 ], [ %36, %156 ], [ null, %118 ], [ null, %108 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %161 = load i16, ptr %34, align 4
  %162 = add i16 %161, 1
  store i16 %162, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %163 = icmp eq ptr %159, null
  br i1 %163, label %175, label %164

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.nfs_delegation, ptr %159, i32 0, i32 1
  %166 = load ptr, ptr %165, align 8
  %167 = icmp eq ptr %166, null
  br i1 %167, label %173, label %168

168:                                              ; preds = %164
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %166) #11, !srcloc !10
  %169 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %166, ptr nonnull %166, i32 1, ptr nonnull elementtype(i32) %166) #11, !srcloc !17
  %170 = extractvalue { i32, i32 } %169, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  tail call void @__put_cred(ptr noundef nonnull %166) #11
  br label %173

173:                                              ; preds = %172, %168, %164
  store ptr null, ptr %165, align 8
  %174 = getelementptr inbounds %struct.nfs_delegation, ptr %159, i32 0, i32 10
  tail call void @kvfree_call_rcu(ptr noundef %174, ptr noundef nonnull inttoptr (i32 68 to ptr)) #11
  br label %175

175:                                              ; preds = %173, %158
  %176 = icmp eq ptr %160, null
  br i1 %176, label %192, label %177

177:                                              ; preds = %175
  %178 = tail call fastcc i32 @nfs_do_return_delegation(ptr noundef %0, ptr noundef nonnull %160, i32 noundef 0)
  %179 = getelementptr inbounds %struct.nfs_delegation, ptr %160, i32 0, i32 7
  %180 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %179) #11
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.nfs_delegation, ptr %160, i32 0, i32 3, i32 1
  store i32 0, ptr %183, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nfs_active_delegations) #11, !srcloc !10
  %184 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nfs_active_delegations, ptr nonnull @nfs_active_delegations, i32 1, ptr nonnull elementtype(i32) @nfs_active_delegations) #11, !srcloc !30
  %185 = load volatile i32, ptr %179, align 4
  %186 = and i32 %185, 16
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.nfs_delegation, ptr %160, i32 0, i32 2
  %190 = load ptr, ptr %189, align 4
  tail call void @nfs_clear_verifier_delegated(ptr noundef %190) #11
  br label %191

191:                                              ; preds = %188, %182, %177
  tail call fastcc void @nfs_put_delegation(ptr noundef nonnull %160) #11
  br label %192

192:                                              ; preds = %191, %175, %5
  %193 = phi i32 [ -12, %5 ], [ 0, %191 ], [ 0, %175 ]
  ret i32 %193
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_set_cache_invalid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs_do_return_delegation(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nfs_delegation, ptr %1, i32 0, i32 7
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nfs_delegation, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %9) #11
  %10 = getelementptr inbounds %struct.nfs_delegation, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 24
  store i32 0, ptr %14, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %11) #11, !srcloc !10
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #11, !srcloc !11
  br label %16

16:                                               ; preds = %13, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %17 = load i16, ptr %9, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %19 = getelementptr inbounds %struct.nfs_delegation, ptr %1, i32 0, i32 3
  %20 = tail call i32 @nfs4_proc_delegreturn(ptr noundef %0, ptr noundef %11, ptr noundef %19, i32 noundef %2) #11
  br i1 %12, label %26, label %21

21:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %11) #11, !srcloc !10
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #11, !srcloc !17
  %23 = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @__put_cred(ptr noundef nonnull %11) #11
  br label %26

26:                                               ; preds = %25, %21, %16, %3
  %27 = phi i32 [ 0, %3 ], [ %20, %16 ], [ %20, %21 ], [ %20, %25 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs_free_delegation(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_delegation, ptr %0, i32 0, i32 7
  %3 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %2) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs_delegation, ptr %0, i32 0, i32 3, i32 1
  store i32 0, ptr %6, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nfs_active_delegations) #11, !srcloc !10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nfs_active_delegations, ptr nonnull @nfs_active_delegations, i32 1, ptr nonnull elementtype(i32) @nfs_active_delegations) #11, !srcloc !30
  %8 = load volatile i32, ptr %2, align 4
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.nfs_delegation, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void @nfs_clear_verifier_delegated(ptr noundef %13) #11
  br label %14

14:                                               ; preds = %11, %5, %1
  tail call fastcc void @nfs_put_delegation(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_client_return_marked_delegations(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @nfs_client_for_each_server(ptr noundef %0, ptr noundef nonnull @nfs_server_return_marked_delegations, ptr noundef null) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %44

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  %6 = tail call i32 @_test_and_clear_bit(i32 noundef 18, ptr noundef %5) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %44, label %8

8:                                                ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %9 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 10
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %44

13:                                               ; preds = %36, %8
  %14 = phi ptr [ %38, %36 ], [ %10, %8 ]
  %15 = phi i8 [ %37, %36 ], [ 0, %8 ]
  %16 = getelementptr i8, ptr %14, i32 -4
  %17 = getelementptr i8, ptr %14, i32 444
  %18 = load volatile ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %36, label %20

20:                                               ; preds = %30, %13
  %21 = phi ptr [ %32, %30 ], [ %18, %13 ]
  %22 = phi i1 [ %31, %30 ], [ false, %13 ]
  %23 = getelementptr inbounds %struct.nfs_delegation, ptr %21, i32 0, i32 7
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 256
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  tail call void @_set_bit(i32 noundef 1, ptr noundef %23) #11
  %28 = load ptr, ptr %16, align 8
  %29 = getelementptr inbounds %struct.nfs_client, ptr %28, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %29) #11
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %23) #11
  br label %30

30:                                               ; preds = %27, %20
  %31 = phi i1 [ true, %27 ], [ %22, %20 ]
  %32 = load volatile ptr, ptr %21, align 8
  %33 = icmp eq ptr %32, %17
  br i1 %33, label %34, label %20

34:                                               ; preds = %30
  %35 = select i1 %31, i8 1, i8 %15
  br label %36

36:                                               ; preds = %34, %13
  %37 = phi i8 [ %15, %13 ], [ %35, %34 ]
  %38 = load volatile ptr, ptr %14, align 4
  %39 = icmp eq ptr %38, %9
  br i1 %39, label %40, label %13

40:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %41 = and i8 %37, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void @msleep(i32 noundef 1000) #11
  br label %44

44:                                               ; preds = %43, %40, %12, %4, %1
  %45 = phi i32 [ %2, %1 ], [ 0, %43 ], [ 0, %40 ], [ 0, %12 ], [ 0, %4 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_client_for_each_server(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_server_return_marked_delegations(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 52
  br label %4

4:                                                ; preds = %117, %2
  %5 = phi ptr [ null, %2 ], [ %94, %117 ]
  %6 = phi ptr [ null, %2 ], [ %95, %117 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -52
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp ne ptr %10, null
  %12 = icmp eq ptr %10, %5
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %16, label %14

14:                                               ; preds = %8, %4
  %15 = load volatile ptr, ptr %3, align 8
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi ptr [ %15, %14 ], [ %5, %8 ]
  %18 = icmp eq ptr %17, %3
  br i1 %18, label %125, label %19

19:                                               ; preds = %121, %16
  %20 = phi ptr [ %123, %121 ], [ %17, %16 ]
  %21 = phi ptr [ %122, %121 ], [ null, %16 ]
  %22 = getelementptr inbounds %struct.nfs_delegation, ptr %20, i32 0, i32 7
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %121

26:                                               ; preds = %19
  %27 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %22) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load volatile i32, ptr %22, align 4
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.nfs_delegation, ptr %20, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %34) #11
  %35 = getelementptr inbounds %struct.nfs_delegation, ptr %20, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = getelementptr i8, ptr %36, i32 -72
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %42 = load i16, ptr %34, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br i1 %41, label %44, label %48

44:                                               ; preds = %38, %26
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %22) #11
  br label %48

45:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %46 = load i16, ptr %34, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %48

48:                                               ; preds = %45, %44, %38, %29
  %49 = phi i1 [ false, %44 ], [ true, %38 ], [ true, %29 ], [ true, %45 ]
  %50 = load volatile i32, ptr %22, align 4
  %51 = and i32 %50, 16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load volatile i32, ptr %22, align 4
  %55 = and i32 %54, 256
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load volatile i32, ptr %22, align 4
  %59 = and i32 %58, 32
  %60 = icmp ne i32 %59, 0
  %61 = or i1 %49, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %57, %53, %48
  %63 = icmp eq ptr %20, null
  br i1 %63, label %121, label %64

64:                                               ; preds = %62
  %65 = load volatile i32, ptr %22, align 4
  %66 = and i32 %65, 32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %121

68:                                               ; preds = %64
  %69 = load volatile i32, ptr %22, align 4
  %70 = and i32 %69, 16
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, ptr %20, ptr %21
  br label %121

73:                                               ; preds = %57
  %74 = icmp eq ptr %21, null
  br i1 %74, label %93, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.nfs_delegation, ptr %21, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %76) #11
  %77 = getelementptr inbounds %struct.nfs_delegation, ptr %21, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = tail call ptr @igrab(ptr noundef nonnull %78) #11
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %80, %75
  %84 = getelementptr inbounds %struct.nfs_delegation, ptr %21, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 7, ptr noundef %84) #11
  br label %85

85:                                               ; preds = %83, %80
  %86 = phi ptr [ null, %83 ], [ %81, %80 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %87 = load i16, ptr %76, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr %76, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %89 = icmp eq ptr %86, null
  %90 = select i1 %89, ptr %5, ptr %21
  %91 = select i1 %89, ptr %6, ptr %86
  %92 = select i1 %89, ptr null, ptr %6
  br label %93

93:                                               ; preds = %85, %73
  %94 = phi ptr [ %90, %85 ], [ %5, %73 ]
  %95 = phi ptr [ %91, %85 ], [ %6, %73 ]
  %96 = phi ptr [ %92, %85 ], [ null, %73 ]
  %97 = getelementptr inbounds %struct.nfs_delegation, ptr %20, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %97) #11
  %98 = getelementptr inbounds %struct.nfs_delegation, ptr %20, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %93
  %102 = tail call ptr @igrab(ptr noundef nonnull %99) #11
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %93
  tail call void @_set_bit(i32 noundef 7, ptr noundef %22) #11
  br label %105

105:                                              ; preds = %104, %101
  %106 = phi ptr [ null, %104 ], [ %102, %101 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %107 = load i16, ptr %97, align 4
  %108 = add i16 %107, 1
  store i16 %108, ptr %97, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %109 = icmp eq ptr %106, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  tail call void @iput(ptr noundef %96) #11
  br label %117

111:                                              ; preds = %105
  %112 = getelementptr i8, ptr %106, i32 -296
  %113 = tail call fastcc ptr @nfs_start_delegation_return_locked(ptr noundef %112)
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  tail call void @iput(ptr noundef %96) #11
  %114 = tail call fastcc i32 @nfs_end_delegation_return(ptr noundef nonnull %106, ptr noundef %113, i32 noundef 0)
  tail call void @iput(ptr noundef nonnull %106) #11
  %115 = tail call i32 @__cond_resched() #11
  %116 = icmp eq i32 %114, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111, %110
  br label %4

118:                                              ; preds = %111
  %119 = load ptr, ptr %0, align 8
  %120 = getelementptr inbounds %struct.nfs_client, ptr %119, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %120) #11
  br label %126

121:                                              ; preds = %68, %64, %62, %19
  %122 = phi ptr [ %21, %64 ], [ %21, %62 ], [ %21, %19 ], [ %72, %68 ]
  %123 = load volatile ptr, ptr %20, align 8
  %124 = icmp eq ptr %123, %3
  br i1 %124, label %125, label %19

125:                                              ; preds = %121, %16
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %126

126:                                              ; preds = %125, %118
  %127 = phi i32 [ 0, %125 ], [ %114, %118 ]
  %128 = phi ptr [ %6, %125 ], [ %95, %118 ]
  tail call void @iput(ptr noundef %128) #11
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_inode_evict_delegation(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %6 = getelementptr i8, ptr %0, i32 -52
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %52

10:                                               ; preds = %1
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds %struct.nfs_client, ptr %11, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %12) #11
  %13 = load ptr, ptr %6, align 4
  %14 = icmp ne ptr %13, null
  %15 = icmp eq ptr %13, %7
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.nfs_delegation, ptr %7, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %18) #11
  %19 = getelementptr inbounds %struct.nfs_delegation, ptr %7, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %23 = load i16, ptr %18, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %32

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  store ptr null, ptr %19, align 4
  store volatile ptr null, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %30 = load i16, ptr %18, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %32

32:                                               ; preds = %25, %22, %10
  %33 = phi ptr [ %7, %25 ], [ null, %22 ], [ null, %10 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %34 = load i16, ptr %12, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %36 = icmp eq ptr %33, null
  br i1 %36, label %52, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.nfs_delegation, ptr %33, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 4, ptr noundef %38) #11
  tail call void @_set_bit(i32 noundef 7, ptr noundef %38) #11
  %39 = tail call fastcc i32 @nfs_do_return_delegation(ptr noundef %0, ptr noundef nonnull %33, i32 noundef 1)
  %40 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %38) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.nfs_delegation, ptr %33, i32 0, i32 3, i32 1
  store i32 0, ptr %43, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nfs_active_delegations) #11, !srcloc !10
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nfs_active_delegations, ptr nonnull @nfs_active_delegations, i32 1, ptr nonnull elementtype(i32) @nfs_active_delegations) #11, !srcloc !30
  %45 = load volatile i32, ptr %38, align 4
  %46 = and i32 %45, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.nfs_delegation, ptr %33, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  tail call void @nfs_clear_verifier_delegated(ptr noundef %50) #11
  br label %51

51:                                               ; preds = %48, %42, %37
  tail call fastcc void @nfs_put_delegation(ptr noundef nonnull %33) #11
  br label %52

52:                                               ; preds = %51, %32, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_inode_return_delegation(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -296
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %3 = tail call fastcc ptr @nfs_start_delegation_return_locked(ptr noundef %2) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !31
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 40
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.file_lock_context, ptr %7, i32 0, i32 3
  %11 = load volatile ptr, ptr %10, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !32
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.file_lock_context, ptr %7, i32 0, i32 3, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %10
  br i1 %16, label %19, label %17

17:                                               ; preds = %13, %9
  %18 = tail call i32 @__break_lease(ptr noundef %0, i32 noundef 3, i32 noundef 32) #11
  br label %19

19:                                               ; preds = %17, %13, %5
  %20 = load i16, ptr %0, align 8
  %21 = and i16 %20, -4096
  %22 = icmp eq i16 %21, -32768
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call i32 @nfs_wb_all(ptr noundef %0) #11
  br label %25

25:                                               ; preds = %23, %19
  %26 = tail call fastcc i32 @nfs_end_delegation_return(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1)
  br label %27

27:                                               ; preds = %25, %1
  %28 = phi i32 [ %26, %25 ], [ 0, %1 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_wb_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs_end_delegation_return(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %1, null
  br i1 %9, label %166, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 0
  %12 = select i1 %11, i32 2051, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !31
  %13 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 40
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.file_lock_context, ptr %14, i32 0, i32 3
  %18 = load volatile ptr, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !32
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.file_lock_context, ptr %14, i32 0, i32 3, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %17
  br i1 %23, label %27, label %24

24:                                               ; preds = %20, %16
  %25 = tail call i32 @__break_lease(ptr noundef %0, i32 noundef %12, i32 noundef 32) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %134

27:                                               ; preds = %24, %20, %10
  %28 = getelementptr inbounds %struct.nfs_delegation, ptr %1, i32 0, i32 7
  %29 = getelementptr inbounds %struct.nfs_delegation, ptr %1, i32 0, i32 3
  %30 = getelementptr i8, ptr %0, i32 -72
  %31 = getelementptr inbounds %struct.nfs_delegation, ptr %1, i32 0, i32 3, i32 1
  br label %32

32:                                               ; preds = %131, %27
  %33 = load volatile i32, ptr %28, align 4
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %144

36:                                               ; preds = %121, %32
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %37 = load volatile ptr, ptr %30, align 4
  %38 = icmp eq ptr %37, %30
  br i1 %38, label %127, label %39

39:                                               ; preds = %124, %36
  %40 = phi ptr [ %125, %124 ], [ %37, %36 ]
  %41 = getelementptr i8, ptr %40, i32 -64
  %42 = getelementptr i8, ptr %40, i32 -16
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %124, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.nfs4_state, ptr %43, i32 0, i32 5
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %124, label %50

50:                                               ; preds = %45
  %51 = load volatile i32, ptr %46, align 4
  %52 = and i32 %51, 512
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %124

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.nfs4_state, ptr %43, i32 0, i32 8, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = load i32, ptr %31, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %124

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.nfs4_state, ptr %43, i32 0, i32 8
  %61 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %60, ptr noundef dereferenceable(16) %29, i32 16) #11
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %124

63:                                               ; preds = %59
  %64 = tail call ptr @get_nfs_open_context(ptr noundef %41) #11
  %65 = icmp eq ptr %64, null
  br i1 %65, label %124, label %66

66:                                               ; preds = %63
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %67 = getelementptr inbounds %struct.nfs4_state, ptr %43, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.nfs4_state_owner, ptr %68, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %69) #11
  %70 = getelementptr inbounds %struct.nfs4_state_owner, ptr %68, i32 0, i32 10
  %71 = load volatile i32, ptr %70, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !33
  %72 = and i32 %71, -2
  %73 = tail call i32 @nfs4_open_delegation_recall(ptr noundef %41, ptr noundef nonnull %43, ptr noundef %29) #11
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %121

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.nfs4_state, ptr %43, i32 0, i32 4
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.inode, ptr %77, i32 0, i32 40
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %117, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.file_lock_context, ptr %79, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef nonnull %79) #11
  %83 = getelementptr inbounds %struct.file_lock_context, ptr %79, i32 0, i32 1
  br label %84

84:                                               ; preds = %110, %81
  %85 = phi i32 [ 0, %81 ], [ %111, %110 ]
  %86 = phi ptr [ %82, %81 ], [ %83, %110 ]
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %86
  br i1 %88, label %110, label %89

89:                                               ; preds = %106, %84
  %90 = phi ptr [ %108, %106 ], [ %87, %84 ]
  %91 = phi i32 [ %107, %106 ], [ %85, %84 ]
  %92 = getelementptr i8, ptr %90, i32 64
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.file, ptr %93, i32 0, i32 15
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.nfs_open_context, ptr %95, i32 0, i32 5
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, %43
  br i1 %98, label %99, label %106

99:                                               ; preds = %89
  %100 = getelementptr i8, ptr %90, i32 -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %101 = load i16, ptr %79, align 4
  %102 = add i16 %101, 1
  store i16 %102, ptr %79, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %103 = tail call i32 @nfs4_lock_delegation_recall(ptr noundef %100, ptr noundef nonnull %43, ptr noundef %29) #11
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %99
  tail call void @_raw_spin_lock(ptr noundef nonnull %79) #11
  br label %106

106:                                              ; preds = %105, %89
  %107 = phi i32 [ %91, %89 ], [ %103, %105 ]
  %108 = load ptr, ptr %90, align 4
  %109 = icmp eq ptr %108, %86
  br i1 %109, label %110, label %89

110:                                              ; preds = %106, %84
  %111 = phi i32 [ %85, %84 ], [ %107, %106 ]
  %112 = icmp eq ptr %86, %82
  br i1 %112, label %84, label %113

113:                                              ; preds = %110
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %114 = load i16, ptr %79, align 4
  %115 = add i16 %114, 1
  store i16 %115, ptr %79, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %116 = icmp eq i32 %111, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %113, %75
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !34
  %118 = load volatile i32, ptr %70, align 4
  %119 = icmp eq i32 %118, %72
  %120 = select i1 %119, i32 0, i32 -11
  br label %121

121:                                              ; preds = %117, %113, %99, %66
  %122 = phi i32 [ %111, %113 ], [ %73, %66 ], [ %120, %117 ], [ %103, %99 ]
  tail call void @mutex_unlock(ptr noundef %69) #11
  tail call void @put_nfs_open_context(ptr noundef %41) #11
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %36, label %128

124:                                              ; preds = %63, %59, %54, %50, %45, %39
  %125 = load volatile ptr, ptr %40, align 4
  %126 = icmp eq ptr %125, %30
  br i1 %126, label %127, label %39

127:                                              ; preds = %124, %36
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %144

128:                                              ; preds = %121
  %129 = icmp ne i32 %122, -11
  %130 = select i1 %11, i1 true, i1 %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = tail call i32 @nfs4_wait_clnt_recover(ptr noundef %8) #11
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %32, label %134

134:                                              ; preds = %131, %128, %24
  %135 = phi i32 [ %25, %24 ], [ %132, %131 ], [ %122, %128 ]
  %136 = getelementptr inbounds %struct.nfs_delegation, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %136) #11
  %137 = getelementptr inbounds %struct.nfs_delegation, ptr %1, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %137) #11
  %138 = icmp eq i32 %135, -11
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  tail call void @_set_bit(i32 noundef 8, ptr noundef %137) #11
  %140 = getelementptr inbounds %struct.nfs_client, ptr %8, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 18, ptr noundef %140) #11
  br label %141

141:                                              ; preds = %139, %134
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %142 = load i16, ptr %136, align 4
  %143 = add i16 %142, 1
  store i16 %143, ptr %136, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %146

144:                                              ; preds = %127, %32
  %145 = tail call fastcc i32 @nfs_do_return_delegation(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2)
  br label %146

146:                                              ; preds = %144, %141
  %147 = phi i32 [ %135, %141 ], [ %145, %144 ]
  %148 = getelementptr inbounds %struct.nfs_delegation, ptr %1, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !35
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %148) #11, !srcloc !10
  %149 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %148, ptr %148, i32 1, ptr elementtype(i32) %148) #11, !srcloc !36
  %150 = extractvalue { i32, i32, i32 } %149, 0
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %155, label %152

152:                                              ; preds = %146
  %153 = icmp sgt i32 %150, 0
  br i1 %153, label %166, label %154, !prof !37

154:                                              ; preds = %152
  tail call void @refcount_warn_saturate(ptr noundef %148, i32 noundef 3) #11
  br label %166

155:                                              ; preds = %146
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !38
  %156 = getelementptr inbounds %struct.nfs_delegation, ptr %1, i32 0, i32 1
  %157 = load ptr, ptr %156, align 8
  %158 = icmp eq ptr %157, null
  br i1 %158, label %164, label %159

159:                                              ; preds = %155
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %157) #11, !srcloc !10
  %160 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %157, ptr nonnull %157, i32 1, ptr nonnull elementtype(i32) %157) #11, !srcloc !17
  %161 = extractvalue { i32, i32 } %160, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  tail call void @__put_cred(ptr noundef nonnull %157) #11
  br label %164

164:                                              ; preds = %163, %159, %155
  store ptr null, ptr %156, align 8
  %165 = getelementptr inbounds %struct.nfs_delegation, ptr %1, i32 0, i32 10
  tail call void @kvfree_call_rcu(ptr noundef %165, ptr noundef nonnull inttoptr (i32 68 to ptr)) #11
  br label %166

166:                                              ; preds = %164, %154, %152, %3
  %167 = phi i32 [ 0, %3 ], [ %147, %152 ], [ %147, %154 ], [ %147, %164 ]
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_inode_return_delegation_on_close(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %56, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %4 = getelementptr i8, ptr %0, i32 -52
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %53, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 7
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %7
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %12
  %17 = load volatile i32, ptr %8, align 4
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load volatile i32, ptr @nfs_active_delegations, align 4
  %22 = load i32, ptr @nfs_delegation_watermark, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %53, label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %25) #11
  %26 = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %0, i32 -72
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %8) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %8) #11
  %37 = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #11, !srcloc !10
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #11, !srcloc !39
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41, !prof !40

41:                                               ; preds = %36
  %42 = add i32 %39, 1
  %43 = or i32 %42, %39
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %47, label %45, !prof !37

45:                                               ; preds = %41, %36
  %46 = phi i32 [ 2, %36 ], [ 1, %41 ]
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef %46) #11
  br label %47

47:                                               ; preds = %45, %41, %33, %29, %24
  %48 = phi ptr [ null, %33 ], [ null, %29 ], [ null, %24 ], [ %5, %41 ], [ %5, %45 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %49 = load i16, ptr %25, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %51 = icmp eq ptr %48, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  tail call void @nfs_clear_verifier_delegated(ptr noundef nonnull %0) #11
  br label %53

53:                                               ; preds = %52, %47, %20, %12, %7, %3
  %54 = phi ptr [ %48, %52 ], [ null, %47 ], [ null, %20 ], [ null, %3 ], [ null, %7 ], [ null, %12 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %55 = tail call fastcc i32 @nfs_end_delegation_return(ptr noundef nonnull %0, ptr noundef %54, i32 noundef 0)
  br label %56

56:                                               ; preds = %53, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_clear_verifier_delegated(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_inode_make_writeable(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %2 = getelementptr i8, ptr %0, i32 -52
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs_delegation, ptr %3, i32 0, i32 7
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %5
  %11 = load volatile i32, ptr %6, align 4
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 27
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nfs_client, ptr %19, i32 0, i32 36
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.nfs_delegation, ptr %3, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %10, %5, %1
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %55

29:                                               ; preds = %23, %14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %30 = getelementptr i8, ptr %0, i32 -296
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %31 = tail call fastcc ptr @nfs_start_delegation_return_locked(ptr noundef %30) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %55, label %33

33:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !31
  %34 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 40
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.file_lock_context, ptr %35, i32 0, i32 3
  %39 = load volatile ptr, ptr %38, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !32
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.file_lock_context, ptr %35, i32 0, i32 3, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %38
  br i1 %44, label %47, label %45

45:                                               ; preds = %41, %37
  %46 = tail call i32 @__break_lease(ptr noundef %0, i32 noundef 3, i32 noundef 32) #11
  br label %47

47:                                               ; preds = %45, %41, %33
  %48 = load i16, ptr %0, align 8
  %49 = and i16 %48, -4096
  %50 = icmp eq i16 %49, -32768
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = tail call i32 @nfs_wb_all(ptr noundef %0) #11
  br label %53

53:                                               ; preds = %51, %47
  %54 = tail call fastcc i32 @nfs_end_delegation_return(ptr noundef %0, ptr noundef nonnull %31, i32 noundef 1) #11
  br label %55

55:                                               ; preds = %53, %29, %28
  %56 = phi i32 [ 0, %28 ], [ %54, %53 ], [ 0, %29 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_expire_all_delegations(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 10
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %21, label %5

5:                                                ; preds = %18, %1
  %6 = phi ptr [ %19, %18 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -4
  %8 = getelementptr i8, ptr %6, i32 444
  %9 = load volatile ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %18, label %11

11:                                               ; preds = %11, %5
  %12 = phi ptr [ %16, %11 ], [ %9, %5 ]
  %13 = getelementptr inbounds %struct.nfs_delegation, ptr %12, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %13) #11
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr inbounds %struct.nfs_client, ptr %14, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %15) #11
  %16 = load volatile ptr, ptr %12, align 8
  %17 = icmp eq ptr %16, %8
  br i1 %17, label %18, label %11

18:                                               ; preds = %11, %5
  %19 = load volatile ptr, ptr %6, align 4
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %21, label %5

21:                                               ; preds = %18, %1
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %22 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @nfs4_schedule_state_manager(ptr noundef %0) #11
  br label %27

27:                                               ; preds = %26, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_server_return_all_delegations(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %5 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 52
  %6 = load volatile ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %18

9:                                                ; preds = %9, %4
  %10 = phi ptr [ %14, %9 ], [ %6, %4 ]
  %11 = getelementptr inbounds %struct.nfs_delegation, ptr %10, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %11) #11
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %13) #11
  %14 = load volatile ptr, ptr %10, align 8
  %15 = icmp eq ptr %14, %5
  br i1 %15, label %16, label %9

16:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  tail call void @nfs4_schedule_state_manager(ptr noundef nonnull %2) #11
  %17 = tail call i32 @nfs4_wait_clnt_recover(ptr noundef nonnull %2) #11
  br label %18

18:                                               ; preds = %16, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_schedule_state_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_wait_clnt_recover(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_remove_bad_delegation(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.nfs4_stateid_struct, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #11, !annotation !41
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %4 = getelementptr i8, ptr %0, i32 -52
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 3
  br i1 %8, label %10, label %14

10:                                               ; preds = %7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef align 4 dereferenceable(16) %9, i32 16, i1 false) #11
  %11 = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 3, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %3, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  br label %36

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.anon.117, ptr %1, i32 0, i32 1
  %16 = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 3, i32 0, i32 0, i32 1
  %17 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %15, ptr noundef dereferenceable(12) %16, i32 12) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %20) #11
  %21 = load i32, ptr %1, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %9, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #11
  %26 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  %27 = sub i32 %25, %26
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %30 = load i16, ptr %20, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %50

32:                                               ; preds = %23
  store i32 %21, ptr %9, align 8
  br label %33

33:                                               ; preds = %32, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %34 = load i16, ptr %20, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %36

36:                                               ; preds = %33, %10
  %37 = phi ptr [ %3, %10 ], [ %1, %33 ]
  %38 = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 7
  %39 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %38) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 3, i32 1
  store i32 0, ptr %42, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nfs_active_delegations) #11, !srcloc !10
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nfs_active_delegations, ptr nonnull @nfs_active_delegations, i32 1, ptr nonnull elementtype(i32) @nfs_active_delegations) #11, !srcloc !30
  %44 = load volatile i32, ptr %38, align 4
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.nfs_delegation, ptr %5, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  tail call void @nfs_clear_verifier_delegated(ptr noundef %49) #11
  br label %51

50:                                               ; preds = %29, %14, %2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %52

51:                                               ; preds = %47, %41, %36
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  call void @nfs_inode_find_state_and_recover(ptr noundef %0, ptr noundef nonnull %37) #11
  br label %52

52:                                               ; preds = %51, %50
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_delegation_mark_returned(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %46, label %4

4:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %5 = getelementptr i8, ptr %0, i32 -52
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %45, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nfs_delegation, ptr %6, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %9) #11
  %10 = getelementptr inbounds %struct.nfs_delegation, ptr %6, i32 0, i32 3
  %11 = getelementptr inbounds %struct.anon.117, ptr %1, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nfs_delegation, ptr %6, i32 0, i32 3, i32 0, i32 0, i32 1
  %13 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %11, ptr noundef dereferenceable(12) %12, i32 12) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %8
  %16 = load i32, ptr %1, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %10, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #11
  %21 = tail call i32 @llvm.bswap.i32(i32 %16) #11
  %22 = sub i32 %20, %21
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %18
  %25 = icmp eq i32 %19, %16
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  store i32 %16, ptr %10, align 8
  br label %27

27:                                               ; preds = %26, %24, %15
  %28 = getelementptr inbounds %struct.nfs_delegation, ptr %6, i32 0, i32 7
  %29 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %28) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nfs_delegation, ptr %6, i32 0, i32 3, i32 1
  store i32 0, ptr %32, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nfs_active_delegations) #11, !srcloc !10
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nfs_active_delegations, ptr nonnull @nfs_active_delegations, i32 1, ptr nonnull elementtype(i32) @nfs_active_delegations) #11, !srcloc !30
  %34 = load volatile i32, ptr %28, align 4
  %35 = and i32 %34, 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.nfs_delegation, ptr %6, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  tail call void @nfs_clear_verifier_delegated(ptr noundef %39) #11
  br label %40

40:                                               ; preds = %37, %31, %27, %18
  %41 = getelementptr inbounds %struct.nfs_delegation, ptr %6, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %41) #11
  br label %42

42:                                               ; preds = %40, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %43 = load i16, ptr %9, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %45

45:                                               ; preds = %42, %4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  tail call void @nfs_inode_find_state_and_recover(ptr noundef nonnull %0, ptr noundef %1) #11
  br label %46

46:                                               ; preds = %45, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_inode_find_state_and_recover(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_expire_unused_delegation_types(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %3 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 10
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = and i32 %1, 2
  %8 = icmp eq i32 %7, 0
  br label %9

9:                                                ; preds = %31, %6
  %10 = phi ptr [ %4, %6 ], [ %32, %31 ]
  %11 = getelementptr i8, ptr %10, i32 -4
  %12 = getelementptr i8, ptr %10, i32 444
  %13 = load volatile ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %31, label %15

15:                                               ; preds = %28, %9
  %16 = phi ptr [ %29, %28 ], [ %13, %9 ]
  %17 = getelementptr inbounds %struct.nfs_delegation, ptr %16, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 3
  %20 = and i1 %8, %19
  %21 = and i32 %18, %1
  %22 = icmp eq i32 %21, 0
  %23 = or i1 %20, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.nfs_delegation, ptr %16, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 2, ptr noundef %25) #11
  %26 = load ptr, ptr %11, align 8
  %27 = getelementptr inbounds %struct.nfs_client, ptr %26, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %27) #11
  br label %28

28:                                               ; preds = %24, %15
  %29 = load volatile ptr, ptr %16, align 8
  %30 = icmp eq ptr %29, %12
  br i1 %30, label %31, label %15

31:                                               ; preds = %28, %9
  %32 = load volatile ptr, ptr %10, align 4
  %33 = icmp eq ptr %32, %3
  br i1 %33, label %34, label %9

34:                                               ; preds = %31, %2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %35 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  tail call void @nfs4_schedule_state_manager(ptr noundef %0) #11
  br label %40

40:                                               ; preds = %39, %34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_expire_unreferenced_delegations(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 10
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %25, label %5

5:                                                ; preds = %22, %1
  %6 = phi ptr [ %23, %22 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -4
  %8 = getelementptr i8, ptr %6, i32 444
  %9 = load volatile ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %22, label %11

11:                                               ; preds = %19, %5
  %12 = phi ptr [ %20, %19 ], [ %9, %5 ]
  %13 = getelementptr inbounds %struct.nfs_delegation, ptr %12, i32 0, i32 7
  %14 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %13) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %13) #11
  %17 = load ptr, ptr %7, align 8
  %18 = getelementptr inbounds %struct.nfs_client, ptr %17, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %18) #11
  br label %19

19:                                               ; preds = %16, %11
  %20 = load volatile ptr, ptr %12, align 8
  %21 = icmp eq ptr %20, %8
  br i1 %21, label %22, label %11

22:                                               ; preds = %19, %5
  %23 = load volatile ptr, ptr %6, align 4
  %24 = icmp eq ptr %23, %2
  br i1 %24, label %25, label %5

25:                                               ; preds = %22, %1
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %26 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void @nfs4_schedule_state_manager(ptr noundef %0) #11
  br label %31

31:                                               ; preds = %30, %25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_async_inode_return_delegation(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %8 = getelementptr i8, ptr %0, i32 -52
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %51, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.nfs_delegation, ptr %9, i32 0, i32 7
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %11
  %17 = load volatile i32, ptr %12, align 4
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %16
  %21 = icmp eq ptr %1, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.nfs_client, ptr %7, i32 0, i32 31
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nfs_delegation, ptr %9, i32 0, i32 3
  %28 = tail call zeroext i1 %26(ptr noundef %27, ptr noundef nonnull %1) #11
  br i1 %28, label %29, label %51

29:                                               ; preds = %22, %20
  tail call void @_set_bit(i32 noundef 1, ptr noundef %12) #11
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds %struct.nfs_client, ptr %30, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %31) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !31
  %32 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 40
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.file_lock_context, ptr %33, i32 0, i32 3
  %37 = load volatile ptr, ptr %36, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !32
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.file_lock_context, ptr %33, i32 0, i32 3, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %36
  br i1 %42, label %45, label %43

43:                                               ; preds = %39, %35
  %44 = tail call i32 @__break_lease(ptr noundef %0, i32 noundef 2051, i32 noundef 32) #11
  br label %45

45:                                               ; preds = %43, %39, %29
  %46 = getelementptr inbounds %struct.nfs_client, ptr %7, i32 0, i32 22
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %47, 32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  tail call void @nfs4_schedule_state_manager(ptr noundef %7) #11
  br label %52

51:                                               ; preds = %22, %16, %11, %2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %52

52:                                               ; preds = %51, %50, %45
  %53 = phi i32 [ -2, %51 ], [ 0, %45 ], [ 0, %50 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs_delegation_find_inode(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %3 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 10
  %4 = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  br label %5

5:                                                ; preds = %57, %2
  %6 = phi ptr [ %3, %2 ], [ %7, %57 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %62, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 444
  %11 = load volatile ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %57, label %13

13:                                               ; preds = %52, %9
  %14 = phi ptr [ %55, %52 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.nfs_delegation, ptr %14, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %15) #11
  %16 = getelementptr inbounds %struct.nfs_delegation, ptr %14, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %52, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.nfs_delegation, ptr %14, i32 0, i32 7
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %17, i32 -288
  %26 = load i16, ptr %1, align 2
  %27 = load i16, ptr %25, align 2
  %28 = icmp eq i16 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = zext i16 %26 to i32
  %31 = getelementptr i8, ptr %17, i32 -286
  %32 = tail call i32 @bcmp(ptr %4, ptr %31, i32 %30) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %7, i32 168
  %36 = load ptr, ptr %35, align 4
  %37 = tail call zeroext i1 @nfs_sb_active(ptr noundef %36) #11
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.nfs_delegation, ptr %14, i32 0, i32 2
  %40 = load ptr, ptr %35, align 4
  %41 = load ptr, ptr %39, align 4
  %42 = tail call ptr @igrab(ptr noundef %41) #11
  br label %43

43:                                               ; preds = %38, %34
  %44 = phi ptr [ %42, %38 ], [ null, %34 ]
  %45 = phi ptr [ %40, %38 ], [ null, %34 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %46 = load i16, ptr %15, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %48 = icmp eq ptr %44, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = icmp eq ptr %45, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %49
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  tail call void @nfs_sb_deactive(ptr noundef nonnull %45) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  br label %60

52:                                               ; preds = %29, %24, %19, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %53 = load i16, ptr %15, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %55 = load volatile ptr, ptr %14, align 8
  %56 = icmp eq ptr %55, %10
  br i1 %56, label %57, label %13

57:                                               ; preds = %52, %43, %9
  %58 = phi ptr [ %44, %43 ], [ inttoptr (i32 -2 to ptr), %9 ], [ inttoptr (i32 -2 to ptr), %52 ]
  %59 = icmp eq ptr %58, inttoptr (i32 -2 to ptr)
  br i1 %59, label %5, label %60

60:                                               ; preds = %57, %51, %49
  %61 = phi ptr [ inttoptr (i32 -11 to ptr), %51 ], [ inttoptr (i32 -11 to ptr), %49 ], [ %58, %57 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %63

62:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi ptr [ %61, %60 ], [ inttoptr (i32 -2 to ptr), %62 ]
  ret ptr %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_delegation_mark_reclaim(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 10
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %23, label %5

5:                                                ; preds = %20, %1
  %6 = phi ptr [ %21, %20 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 444
  %8 = load volatile ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %20, label %10

10:                                               ; preds = %17, %5
  %11 = phi ptr [ %18, %17 ], [ %8, %5 ]
  %12 = getelementptr inbounds %struct.nfs_delegation, ptr %11, i32 0, i32 7
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %12) #11
  br label %17

17:                                               ; preds = %16, %10
  %18 = load volatile ptr, ptr %11, align 8
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %20, label %10

20:                                               ; preds = %17, %5
  %21 = load volatile ptr, ptr %6, align 4
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %23, label %5

23:                                               ; preds = %20, %1
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_delegation_reap_unclaimed(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @nfs_client_for_each_server(ptr noundef %0, ptr noundef nonnull @nfs_server_reap_unclaimed_delegations, ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_server_reap_unclaimed_delegations(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 52
  br label %4

4:                                                ; preds = %45, %2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  br label %5

5:                                                ; preds = %31, %4
  %6 = load volatile ptr, ptr %3, align 8
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %50, label %8

8:                                                ; preds = %47, %5
  %9 = phi ptr [ %48, %47 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.nfs_delegation, ptr %9, i32 0, i32 7
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %8
  %15 = load volatile i32, ptr %10, align 4
  %16 = and i32 %15, 16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = load volatile i32, ptr %10, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nfs_delegation, ptr %9, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %23) #11
  %24 = getelementptr inbounds %struct.nfs_delegation, ptr %9, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @igrab(ptr noundef nonnull %25) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %22
  tail call void @_set_bit(i32 noundef 7, ptr noundef %10) #11
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi ptr [ null, %30 ], [ %28, %27 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %33 = load i16, ptr %23, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %35 = icmp eq ptr %32, null
  br i1 %35, label %5, label %36

36:                                               ; preds = %31
  %37 = getelementptr i8, ptr %32, i32 -296
  %38 = tail call fastcc ptr @nfs_start_delegation_return_locked(ptr noundef %37)
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = tail call fastcc ptr @nfs_detach_delegation(ptr noundef %37, ptr noundef nonnull %38, ptr noundef %0)
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call fastcc void @nfs_free_delegation(ptr noundef nonnull %38)
  br label %44

44:                                               ; preds = %43, %40
  tail call fastcc void @nfs_put_delegation(ptr noundef nonnull %38)
  br label %45

45:                                               ; preds = %44, %36
  tail call void @iput(ptr noundef nonnull %32) #11
  %46 = tail call i32 @__cond_resched() #11
  br label %4

47:                                               ; preds = %18, %14, %8
  %48 = load volatile ptr, ptr %9, align 8
  %49 = icmp eq ptr %48, %3
  br i1 %49, label %50, label %8

50:                                               ; preds = %47, %5
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_mark_test_expired_all_delegations(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 10
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %26, label %5

5:                                                ; preds = %23, %1
  %6 = phi ptr [ %24, %23 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -4
  %8 = getelementptr i8, ptr %6, i32 444
  %9 = load volatile ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %23, label %11

11:                                               ; preds = %20, %5
  %12 = phi ptr [ %21, %20 ], [ %9, %5 ]
  %13 = getelementptr inbounds %struct.nfs_delegation, ptr %12, i32 0, i32 3, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.nfs_delegation, ptr %12, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %17) #11
  tail call void @_set_bit(i32 noundef 6, ptr noundef %17) #11
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr inbounds %struct.nfs_client, ptr %18, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 13, ptr noundef %19) #11
  br label %20

20:                                               ; preds = %16, %11
  %21 = load volatile ptr, ptr %12, align 8
  %22 = icmp eq ptr %21, %8
  br i1 %22, label %23, label %11

23:                                               ; preds = %20, %5
  %24 = load volatile ptr, ptr %6, align 4
  %25 = icmp eq ptr %24, %2
  br i1 %25, label %26, label %5

26:                                               ; preds = %23, %1
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_test_expired_all_delegations(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 10
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %26, label %5

5:                                                ; preds = %23, %1
  %6 = phi ptr [ %24, %23 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -4
  %8 = getelementptr i8, ptr %6, i32 444
  %9 = load volatile ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %23, label %11

11:                                               ; preds = %20, %5
  %12 = phi ptr [ %21, %20 ], [ %9, %5 ]
  %13 = getelementptr inbounds %struct.nfs_delegation, ptr %12, i32 0, i32 3, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.nfs_delegation, ptr %12, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %17) #11
  tail call void @_set_bit(i32 noundef 6, ptr noundef %17) #11
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr inbounds %struct.nfs_client, ptr %18, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 13, ptr noundef %19) #11
  br label %20

20:                                               ; preds = %16, %11
  %21 = load volatile ptr, ptr %12, align 8
  %22 = icmp eq ptr %21, %8
  br i1 %22, label %23, label %11

23:                                               ; preds = %20, %5
  %24 = load volatile ptr, ptr %6, align 4
  %25 = icmp eq ptr %24, %2
  br i1 %25, label %26, label %5

26:                                               ; preds = %23, %1
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  tail call void @nfs4_schedule_state_manager(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_reap_expired_delegations(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @nfs_client_for_each_server(ptr noundef %0, ptr noundef nonnull @nfs_server_reap_expired_delegations, ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_server_reap_expired_delegations(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.nfs4_stateid_struct, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !41
  %4 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 52
  %5 = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %3, i32 0, i32 1
  br label %6

6:                                                ; preds = %60, %2
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  br label %7

7:                                                ; preds = %33, %6
  %8 = load volatile ptr, ptr %4, align 8
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %66, label %10

10:                                               ; preds = %63, %7
  %11 = phi ptr [ %64, %63 ], [ %8, %7 ]
  %12 = getelementptr inbounds %struct.nfs_delegation, ptr %11, i32 0, i32 7
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 128
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %63

16:                                               ; preds = %10
  %17 = load volatile i32, ptr %12, align 4
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %63

20:                                               ; preds = %16
  %21 = load volatile i32, ptr %12, align 4
  %22 = and i32 %21, 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %63, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nfs_delegation, ptr %11, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %25) #11
  %26 = getelementptr inbounds %struct.nfs_delegation, ptr %11, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = call ptr @igrab(ptr noundef nonnull %27) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %24
  call void @_set_bit(i32 noundef 7, ptr noundef %12) #11
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi ptr [ null, %32 ], [ %30, %29 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %35 = load i16, ptr %25, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %25, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %37 = icmp eq ptr %34, null
  br i1 %37, label %7, label %38

38:                                               ; preds = %33
  call void @_raw_spin_lock(ptr noundef %25) #11
  %39 = getelementptr inbounds %struct.nfs_delegation, ptr %11, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !42
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %40) #11, !srcloc !10
  %43 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %40, ptr nonnull %40, i32 0, i32 1, ptr nonnull elementtype(i32) %40) #11, !srcloc !43
  %44 = extractvalue { i32, i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !44
  %47 = getelementptr inbounds %struct.cred, ptr %40, i32 0, i32 24
  store i32 0, ptr %47, align 4
  br label %48

48:                                               ; preds = %46, %42, %38
  %49 = phi ptr [ %40, %46 ], [ null, %38 ], [ null, %42 ]
  %50 = getelementptr inbounds %struct.nfs_delegation, ptr %11, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef align 4 dereferenceable(16) %50, i32 16, i1 false) #11
  %51 = getelementptr inbounds %struct.nfs_delegation, ptr %11, i32 0, i32 3, i32 1
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %5, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %53 = load i16, ptr %25, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %25, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  call void @_clear_bit(i32 noundef 6, ptr noundef %12) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  call fastcc void @nfs_delegation_test_free_expired(ptr noundef nonnull %34, ptr noundef nonnull %3, ptr noundef %49)
  call fastcc void @put_cred(ptr noundef %49)
  %55 = load ptr, ptr %0, align 8
  %56 = getelementptr inbounds %struct.nfs_client, ptr %55, i32 0, i32 22
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 70
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  call void @iput(ptr noundef nonnull %34) #11
  %61 = call i32 @__cond_resched() #11
  br label %6

62:                                               ; preds = %48
  call fastcc void @nfs_inode_mark_test_expired_delegation(ptr noundef %0, ptr noundef nonnull %34)
  call void @iput(ptr noundef nonnull %34) #11
  br label %67

63:                                               ; preds = %20, %16, %10
  %64 = load volatile ptr, ptr %11, align 8
  %65 = icmp eq ptr %64, %4
  br i1 %65, label %66, label %10

66:                                               ; preds = %63, %7
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i32 [ -11, %62 ], [ 0, %66 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #11
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_inode_find_delegation_state_and_recover(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %8 = getelementptr i8, ptr %0, i32 -52
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.nfs_delegation, ptr %9, i32 0, i32 3
  %13 = getelementptr inbounds %struct.nfs_delegation, ptr %9, i32 0, i32 3, i32 0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.anon.117, ptr %1, i32 0, i32 1
  %15 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %13, ptr noundef dereferenceable(12) %14, i32 12) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %11
  %18 = load i32, ptr %1, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %12, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  %23 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  %24 = sub i32 %22, %23
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %42

26:                                               ; preds = %20, %17
  %27 = getelementptr inbounds %struct.nfs_delegation, ptr %9, i32 0, i32 7
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.nfs_delegation, ptr %9, i32 0, i32 3, i32 1
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 27
  %38 = load ptr, ptr %37, align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %27) #11
  tail call void @_set_bit(i32 noundef 6, ptr noundef %27) #11
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.nfs_client, ptr %39, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 13, ptr noundef %40) #11
  br label %41

41:                                               ; preds = %35, %31
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  tail call void @nfs4_schedule_state_manager(ptr noundef %7) #11
  br label %44

42:                                               ; preds = %20, %11, %2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %44

43:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %44

44:                                               ; preds = %43, %42, %41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_delegations_present(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 10
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %2
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 444
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %3, label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 0, %3 ], [ 1, %7 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs4_refresh_delegation_stateid(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %5 = getelementptr i8, ptr %1, i32 -52
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.anon.117, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.nfs_delegation, ptr %6, i32 0, i32 3, i32 0, i32 0, i32 1
  %11 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %9, ptr noundef dereferenceable(12) %10, i32 12) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.nfs_delegation, ptr %6, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  %17 = load i32, ptr %0, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  %19 = sub i32 %16, %18
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.nfs_delegation, ptr %6, i32 0, i32 7
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 %15, ptr %0, align 4
  br label %27

27:                                               ; preds = %26, %21, %13, %8, %4
  %28 = phi i1 [ false, %21 ], [ true, %26 ], [ false, %13 ], [ false, %8 ], [ false, %4 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %29

29:                                               ; preds = %27, %2
  %30 = phi i1 [ %28, %27 ], [ false, %2 ]
  ret i1 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs4_copy_delegation_stateid(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %5 = getelementptr i8, ptr %0, i32 -52
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %42, label %8

8:                                                ; preds = %4
  %9 = and i32 %1, 3
  %10 = getelementptr inbounds %struct.nfs_delegation, ptr %6, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %10) #11
  %11 = getelementptr inbounds %struct.nfs_delegation, ptr %6, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %9
  %14 = icmp eq i32 %13, %9
  br i1 %14, label %15, label %38

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.nfs_delegation, ptr %6, i32 0, i32 7
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load volatile i32, ptr %16, align 4
  %22 = and i32 %21, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nfs_delegation, ptr %6, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %2, ptr noundef align 4 dereferenceable(16) %25, i32 16, i1 false) #11
  %26 = getelementptr inbounds %struct.nfs_delegation, ptr %6, i32 0, i32 3, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %2, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %16) #11
  %29 = icmp eq ptr %3, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.nfs_delegation, ptr %6, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.cred, ptr %32, i32 0, i32 24
  store i32 0, ptr %35, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %32) #11, !srcloc !10
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %32, ptr nonnull %32, i32 1, ptr nonnull elementtype(i32) %32) #11, !srcloc !11
  br label %37

37:                                               ; preds = %34, %30
  store ptr %32, ptr %3, align 4
  br label %38

38:                                               ; preds = %37, %24, %20, %15, %8
  %39 = phi i1 [ true, %24 ], [ true, %37 ], [ false, %8 ], [ false, %15 ], [ false, %20 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %40 = load i16, ptr %10, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %42

42:                                               ; preds = %38, %4
  %43 = phi i1 [ %39, %38 ], [ false, %4 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  ret i1 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs4_delegation_flush_on_close(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %2 = getelementptr i8, ptr %0, i32 -52
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs_delegation, ptr %3, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %0, i32 -112
  %12 = load volatile i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_delegation, ptr %3, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = icmp uge i32 %12, %14
  br label %16

16:                                               ; preds = %10, %5, %1
  %17 = phi i1 [ true, %1 ], [ true, %5 ], [ %15, %10 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  ret i1 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_reclaim_delegation(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cred_fscmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_set_delegation(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_delegreturn(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs_put_delegation(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_delegation, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !35
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #11, !srcloc !10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #11, !srcloc !36
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %22, label %8, !prof !37

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #11
  br label %22

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !38
  %10 = getelementptr inbounds %struct.nfs_delegation, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %11) #11, !srcloc !10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #11, !srcloc !17
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @__put_cred(ptr noundef nonnull %11) #11
  br label %18

18:                                               ; preds = %17, %13, %9
  store ptr null, ptr %10, align 8
  %19 = icmp eq ptr %0, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.nfs_delegation, ptr %0, i32 0, i32 10
  tail call void @kvfree_call_rcu(ptr noundef %21, ptr noundef nonnull inttoptr (i32 68 to ptr)) #11
  br label %22

22:                                               ; preds = %20, %18, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nfs_start_delegation_return_locked(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_inode, ptr %0, i32 0, i32 15
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs_delegation, ptr %3, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %6) #11
  %7 = getelementptr inbounds %struct.nfs_delegation, ptr %3, i32 0, i32 7
  %8 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %7) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %7) #11
  %11 = getelementptr inbounds %struct.nfs_delegation, ptr %3, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #11, !srcloc !10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #11, !srcloc !39
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !40

15:                                               ; preds = %10
  %16 = add i32 %13, 1
  %17 = or i32 %16, %13
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %21, label %19, !prof !37

19:                                               ; preds = %15, %10
  %20 = phi i32 [ 2, %10 ], [ 1, %15 ]
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef %20) #11
  br label %21

21:                                               ; preds = %19, %15, %5
  %22 = phi ptr [ null, %5 ], [ %3, %15 ], [ %3, %19 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %23 = load i16, ptr %6, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %25 = icmp eq ptr %22, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.nfs_inode, ptr %0, i32 0, i32 20
  tail call void @nfs_clear_verifier_delegated(ptr noundef %27) #11
  br label %28

28:                                               ; preds = %26, %21, %1
  %29 = phi ptr [ null, %1 ], [ %22, %26 ], [ null, %21 ]
  ret ptr %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nfs_detach_delegation(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.nfs_client, ptr %4, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.nfs_inode, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, null
  %9 = icmp eq ptr %7, %1
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.nfs_delegation, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.nfs_delegation, ptr %1, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %17 = load i16, ptr %12, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %26

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %1, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  store ptr null, ptr %13, align 4
  store volatile ptr null, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %24 = load i16, ptr %12, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %26

26:                                               ; preds = %19, %16, %3
  %27 = phi ptr [ %1, %19 ], [ null, %16 ], [ null, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %28 = load i16, ptr %5, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  ret ptr %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__break_lease(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_nfs_open_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_open_delegation_recall(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_nfs_open_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_lock_delegation_recall(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_sb_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_sb_deactive(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs_delegation_test_free_expired(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nfs_client, ptr %10, i32 0, i32 31
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %9, ptr noundef %1, ptr noundef nonnull %2) #11
  switch i32 %15, label %17 [
    i32 -10011, label %16
    i32 -10025, label %16
  ]

16:                                               ; preds = %5, %5
  tail call void @nfs_remove_bad_delegation(ptr noundef %0, ptr noundef %1)
  br label %17

17:                                               ; preds = %16, %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs_inode_mark_test_expired_delegation(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %3 = getelementptr i8, ptr %1, i32 -52
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfs_delegation, ptr %4, i32 0, i32 3, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nfs_delegation, ptr %4, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %11) #11
  tail call void @_set_bit(i32 noundef 6, ptr noundef %11) #11
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 13, ptr noundef %13) #11
  br label %14

14:                                               ; preds = %10, %6, %2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!8 = !{i64 2149132332}
!9 = !{i64 2149132549}
!10 = !{i64 705124, i64 2148195095, i64 2148195121, i64 2148195168, i64 2148195190, i64 2148195218, i64 2148195238}
!11 = !{i64 2148206510, i64 2148206536, i64 2148206565, i64 2148206599, i64 2148206630, i64 2148206653}
!12 = !{i64 2148873728}
!13 = !{i64 2148869552}
!14 = !{i64 2148869627, i64 2148869654, i64 2148869701, i64 2148869723, i64 2148869751, i64 2148869771}
!15 = !{i64 2148896731}
!16 = !{i64 2148307189}
!17 = !{i64 2148209551, i64 2148209583, i64 2148209612, i64 2148209646, i64 2148209677, i64 2148209700}
!18 = !{i64 2148307392}
!19 = !{i64 2156939739}
!20 = !{i64 2156939921}
!21 = !{i64 694738, i64 694759}
!22 = !{i64 2158271992}
!23 = !{i64 2158271532}
!24 = !{i64 713774, i64 713791, i64 713815, i64 713841, i64 713859}
!25 = !{i64 2158271862}
!26 = !{i64 2149157573}
!27 = !{i64 2158279769}
!28 = !{i64 2156922706}
!29 = !{i64 2156922880}
!30 = !{i64 2148208867, i64 2148208893, i64 2148208922, i64 2148208956, i64 2148208987, i64 2148209010}
!31 = !{i64 2151713820}
!32 = !{i64 2147845782}
!33 = !{i64 2158247812}
!34 = !{i64 2149645909}
!35 = !{i64 2148308190}
!36 = !{i64 2148210325, i64 2148210357, i64 2148210386, i64 2148210420, i64 2148210451, i64 2148210474}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2149300761}
!39 = !{i64 2148207968, i64 2148208000, i64 2148208029, i64 2148208063, i64 2148208094, i64 2148208117}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{!"auto-init"}
!42 = !{i64 2148206017}
!43 = !{i64 691693, i64 691718, i64 691740, i64 691756, i64 691768, i64 691788, i64 691812, i64 691828, i64 691840}
!44 = !{i64 2148206143}
