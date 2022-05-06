; ModuleID = '/llk/IR/fs/nfs/callback_proc.c_pt.bc'
source_filename = "../fs/nfs/callback_proc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.cb_process_state = type { i32, ptr, ptr, i32, ptr }
%struct.cb_getattrres = type { i32, [2 x i32], i64, i64, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs_delegation = type { %struct.list_head, ptr, ptr, %struct.nfs4_stateid_struct, i32, i32, i64, i32, %struct.refcount_struct, %struct.spinlock, %struct.callback_head }
%struct.list_head = type { ptr, ptr }
%struct.nfs4_stateid_struct = type { %union.anon.125, i32 }
%union.anon.125 = type { %struct.anon.126 }
%struct.anon.126 = type { i32, [12 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.146, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.147, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.148, ptr, %struct.address_space, %struct.list_head, %union.anon.149, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.146 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.147 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.148 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.149 = type { ptr }
%struct.cb_getattrargs = type { %struct.nfs_fh, [2 x i32] }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.cb_recallargs = type { %struct.nfs_fh, %struct.nfs4_stateid_struct, i32 }
%struct.cb_layoutrecallargs = type { i32, i32, i32, %union.anon.157 }
%union.anon.157 = type { %struct.anon.158 }
%struct.anon.158 = type { %struct.nfs_fh, %struct.pnfs_layout_range, %struct.nfs4_stateid_struct }
%struct.pnfs_layout_range = type { i32, i64, i64 }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.pnfs_layout_hdr = type { %struct.refcount_struct, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.nfs4_stateid_struct, i32, i32, i32, i64, ptr, ptr, %struct.callback_head }
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
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.pnfs_layoutdriver_type = type { %struct.list_head, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cb_devicenotifyargs = type { i32, ptr }
%struct.cb_devicenotifyitem = type { i32, i32, %struct.nfs4_deviceid, i32 }
%struct.nfs4_deviceid = type { [16 x i8] }
%struct.cb_sequenceargs = type { ptr, %struct.nfs4_sessionid, i32, i32, i32, i32, i32, ptr }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfs4_session = type { %struct.nfs4_sessionid, i32, i32, i32, i32, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, ptr }
%struct.nfs4_channel_attrs = type { i32, i32, i32, i32, i32 }
%struct.nfs4_slot_table = type { ptr, ptr, [32 x i32], %struct.spinlock, %struct.rpc_wait_queue, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.cb_sequenceres = type { i32, %struct.nfs4_sessionid, i32, i32, i32, i32 }
%struct.nfs4_slot = type { ptr, ptr, i32, i32, i32, i32, i32, i8 }
%struct.referring_call_list = type { %struct.nfs4_sessionid, i32, ptr }
%struct.referring_call = type { i32, i32 }
%struct.cb_recallanyargs = type { i32, i32 }
%struct.cb_notify_lock_args = type { %struct.nfs_fh, %struct.nfs_lowner, i8 }
%struct.nfs_lowner = type { i64, i64, i32 }
%struct.cb_offloadargs = type { %struct.nfs_fh, %struct.nfs4_stateid_struct, i32, i64, %struct.nfs_writeverf }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.nfs4_copy_state = type { %struct.list_head, %struct.list_head, %struct.nfs4_stateid_struct, %struct.completion, i64, %struct.nfs_writeverf, i32, i32, ptr, ptr }

@__tracepoint_nfs4_cb_getattr = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_nfs4_cb_recall = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs4_cb_layoutrecall_file = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs4_cb_seqid_err = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs4_cb_sequence = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__tracepoint_nfs4_cb_offload = external dso_local global %struct.tracepoint, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_callback_getattr(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  store i32 1462173696, ptr %1, align 8
  %4 = getelementptr inbounds %struct.cb_process_state, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %112, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cb_getattrres, ptr %1, i32 0, i32 1
  %9 = getelementptr %struct.cb_getattrres, ptr %1, i32 0, i32 1, i32 1
  store i32 0, ptr %9, align 4
  store i32 0, ptr %8, align 4
  store i32 287768576, ptr %1, align 8
  %10 = load ptr, ptr %4, align 4
  %11 = tail call ptr @nfs_delegation_find_inode(ptr noundef %10, ptr noundef %0) #9
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %38

13:                                               ; preds = %7
  %14 = icmp eq ptr %11, inttoptr (i32 -11 to ptr)
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = load i32, ptr %1, align 8
  br label %18

17:                                               ; preds = %13
  store i32 405209088, ptr %1, align 8
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 405209088, %17 ]
  %20 = load ptr, ptr %4, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %19)
  %22 = sub i32 0, %21
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_getattr, i32 0, i32 1), align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %112

25:                                               ; preds = %18
  %26 = tail call ptr @llvm.thread.pointer() #9
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 5
  %30 = getelementptr i32, ptr @__cpu_online_mask, i32 %29
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %28, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %33, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %112, label %36

36:                                               ; preds = %25
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !8
  %37 = tail call i32 @__traceiter_nfs4_cb_getattr(ptr noundef null, ptr noundef %20, ptr noundef %0, ptr noundef null, i32 noundef %22) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  br label %112

38:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  %39 = tail call ptr @nfs4_get_valid_delegation(ptr noundef %11) #9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %87, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.nfs_delegation, ptr %39, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %87, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 22
  %48 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 13
  br label %49

49:                                               ; preds = %57, %46
  %50 = load volatile i32, ptr %47, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %53, %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !12
  %54 = load volatile i32, ptr %47, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %53

57:                                               ; preds = %53, %49
  %58 = phi i32 [ %50, %49 ], [ %54, %53 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %59 = load i64, ptr %48, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  %60 = load volatile i32, ptr %47, align 4
  %61 = icmp eq i32 %60, %58
  br i1 %61, label %62, label %49

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.cb_getattrres, ptr %1, i32 0, i32 2
  store i64 %59, ptr %63, align 8
  %64 = getelementptr inbounds %struct.nfs_delegation, ptr %39, i32 0, i32 6
  %65 = load i64, ptr %64, align 8
  %66 = getelementptr inbounds %struct.cb_getattrres, ptr %1, i32 0, i32 3
  store i64 %65, ptr %66, align 8
  %67 = load i16, ptr %11, align 8
  %68 = and i16 %67, -4096
  %69 = icmp eq i16 %68, -32768
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = getelementptr i8, ptr %11, i32 -112
  %72 = load volatile i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = add i64 %65, 1
  store i64 %75, ptr %66, align 8
  br label %76

76:                                               ; preds = %74, %70, %62
  %77 = getelementptr inbounds %struct.cb_getattrres, ptr %1, i32 0, i32 4
  %78 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %77, ptr noundef align 8 dereferenceable(16) %78, i32 16, i1 false)
  %79 = getelementptr inbounds %struct.cb_getattrres, ptr %1, i32 0, i32 5
  %80 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %79, ptr noundef align 8 dereferenceable(16) %80, i32 16, i1 false)
  %81 = getelementptr inbounds %struct.cb_getattrargs, ptr %0, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 24
  store i32 %83, ptr %8, align 4
  %84 = getelementptr %struct.cb_getattrargs, ptr %0, i32 0, i32 1, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 3145728
  store i32 %86, ptr %9, align 4
  store i32 0, ptr %1, align 8
  br label %87

87:                                               ; preds = %76, %41, %38
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %88 = load ptr, ptr %4, align 4
  %89 = load i32, ptr %1, align 8
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  %91 = sub i32 0, %90
  %92 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_getattr, i32 0, i32 1), align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %87
  %95 = tail call ptr @llvm.thread.pointer() #9
  %96 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %97 = load i32, ptr %96, align 8
  %98 = lshr i32 %97, 5
  %99 = getelementptr i32, ptr @__cpu_online_mask, i32 %98
  %100 = load volatile i32, ptr %99, align 4
  %101 = and i32 %97, 31
  %102 = shl nuw i32 1, %101
  %103 = and i32 %102, %100
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %94
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !8
  %106 = tail call i32 @__traceiter_nfs4_cb_getattr(ptr noundef null, ptr noundef %88, ptr noundef %0, ptr noundef %11, i32 noundef %91) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  br label %107

107:                                              ; preds = %105, %94, %87
  %108 = icmp eq ptr %11, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %111 = load ptr, ptr %110, align 4
  tail call void @iput(ptr noundef nonnull %11) #9
  tail call void @nfs_sb_deactive(ptr noundef %111) #9
  br label %112

112:                                              ; preds = %109, %107, %36, %25, %18, %3
  %113 = load i32, ptr %1, align 8
  ret i32 %113
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_delegation_find_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_get_valid_delegation(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_callback_recall(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cb_process_state, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %62, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @nfs_delegation_find_inode(ptr noundef nonnull %5, ptr noundef %0) #9
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = icmp eq ptr %8, inttoptr (i32 -11 to ptr)
  %12 = select i1 %11, i32 405209088, i32 287768576
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.cb_recallargs, ptr %0, i32 0, i32 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %12)
  %16 = sub nsw i32 0, %15
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_recall, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %10
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
  br i1 %29, label %62, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  %31 = tail call i32 @__traceiter_nfs4_cb_recall(ptr noundef null, ptr noundef %13, ptr noundef %0, ptr noundef null, ptr noundef %14, i32 noundef %16) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  br label %62

32:                                               ; preds = %7
  %33 = getelementptr inbounds %struct.cb_recallargs, ptr %0, i32 0, i32 1
  %34 = tail call i32 @nfs_async_inode_return_delegation(ptr noundef %8, ptr noundef %33) #9
  %35 = icmp eq i32 %34, -2
  %36 = select i1 %35, i32 690421760, i32 572981248
  %37 = icmp eq i32 %34, 0
  %38 = select i1 %37, i32 0, i32 %36
  %39 = load ptr, ptr %4, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %38)
  %41 = sub nsw i32 0, %40
  %42 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_recall, i32 0, i32 1), align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %32
  %45 = tail call ptr @llvm.thread.pointer() #9
  %46 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 5
  %49 = getelementptr i32, ptr @__cpu_online_mask, i32 %48
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %47, 31
  %52 = shl nuw i32 1, %51
  %53 = and i32 %52, %50
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %44
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  %56 = tail call i32 @__traceiter_nfs4_cb_recall(ptr noundef null, ptr noundef %39, ptr noundef %0, ptr noundef %8, ptr noundef %33, i32 noundef %41) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  br label %57

57:                                               ; preds = %55, %44, %32
  %58 = icmp eq ptr %8, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %61 = load ptr, ptr %60, align 4
  tail call void @iput(ptr noundef nonnull %8) #9
  tail call void @nfs_sb_deactive(ptr noundef %61) #9
  br label %62

62:                                               ; preds = %59, %57, %30, %19, %10, %3
  %63 = phi i32 [ 1462173696, %3 ], [ %12, %10 ], [ %12, %19 ], [ %12, %30 ], [ %38, %57 ], [ %38, %59 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_async_inode_return_delegation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_callback_layoutrecall(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cb_process_state, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @do_callback_layoutrecall(ptr noundef nonnull %5, ptr noundef %0)
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ 10071, %3 ]
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_callback_layoutrecall(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  %4 = load i32, ptr %1, align 8
  switch i32 %4, label %199 [
    i32 1, label %5
    i32 2, label %196
  ]

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store ptr %3, ptr %3, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %1, i32 0, i32 3
  %8 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %1, i32 0, i32 3, i32 0, i32 2
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  %9 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 10
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %47, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 0, i32 0, i32 1
  br label %17

14:                                               ; preds = %44, %17
  %15 = load volatile ptr, ptr %18, align 4
  %16 = icmp eq ptr %15, %9
  br i1 %16, label %47, label %17

17:                                               ; preds = %14, %12
  %18 = phi ptr [ %10, %12 ], [ %15, %14 ]
  %19 = getelementptr i8, ptr %18, i32 436
  %20 = load volatile ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %14, label %22

22:                                               ; preds = %44, %17
  %23 = phi ptr [ %45, %44 ], [ %20, %17 ]
  %24 = getelementptr i8, ptr %23, i32 40
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 64
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = getelementptr i8, ptr %23, i32 48
  %30 = call i32 @bcmp(ptr noundef dereferenceable(12) %13, ptr noundef dereferenceable(12) %29, i32 12) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %18, i32 168
  %34 = load ptr, ptr %33, align 4
  %35 = call zeroext i1 @nfs_sb_active(ptr noundef %34) #9
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %99

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %23, i32 92
  %39 = load ptr, ptr %38, align 4
  %40 = call ptr @igrab(ptr noundef %39) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %41 = ptrtoint ptr %40 to i32
  switch i32 %41, label %96 [
    i32 0, label %42
    i32 -2, label %48
  ]

42:                                               ; preds = %37
  %43 = load ptr, ptr %33, align 4
  call void @nfs_sb_deactive(ptr noundef %43) #9
  br label %99

44:                                               ; preds = %28, %22
  %45 = load volatile ptr, ptr %23, align 8
  %46 = icmp eq ptr %45, %19
  br i1 %46, label %14, label %22

47:                                               ; preds = %14, %5
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %48

48:                                               ; preds = %47, %37
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  %49 = load volatile ptr, ptr %9, align 4
  %50 = icmp eq ptr %49, %9
  br i1 %50, label %95, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 1
  br label %56

53:                                               ; preds = %92, %56
  %54 = load volatile ptr, ptr %57, align 4
  %55 = icmp eq ptr %54, %9
  br i1 %55, label %95, label %56

56:                                               ; preds = %53, %51
  %57 = phi ptr [ %49, %51 ], [ %54, %53 ]
  %58 = getelementptr i8, ptr %57, i32 436
  %59 = load volatile ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, %58
  br i1 %60, label %53, label %61

61:                                               ; preds = %56
  %62 = load i16, ptr %7, align 2
  %63 = zext i16 %62 to i32
  br label %64

64:                                               ; preds = %92, %61
  %65 = phi ptr [ %59, %61 ], [ %93, %92 ]
  %66 = getelementptr i8, ptr %65, i32 -8
  %67 = getelementptr i8, ptr %65, i32 92
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 -288
  %70 = load i16, ptr %69, align 2
  %71 = icmp eq i16 %62, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %64
  %73 = getelementptr i8, ptr %68, i32 -286
  %74 = call i32 @bcmp(ptr %52, ptr %73, i32 %63) #9
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %72
  %77 = getelementptr i8, ptr %68, i32 -24
  %78 = load ptr, ptr %77, align 8
  %79 = icmp eq ptr %78, %66
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = getelementptr i8, ptr %57, i32 168
  %82 = load ptr, ptr %81, align 4
  %83 = call zeroext i1 @nfs_sb_active(ptr noundef %82) #9
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %99

85:                                               ; preds = %80
  %86 = getelementptr i8, ptr %65, i32 92
  %87 = load ptr, ptr %86, align 4
  %88 = call ptr @igrab(ptr noundef %87) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load ptr, ptr %81, align 4
  call void @nfs_sb_deactive(ptr noundef %91) #9
  br label %99

92:                                               ; preds = %76, %72, %64
  %93 = load volatile ptr, ptr %65, align 8
  %94 = icmp eq ptr %93, %58
  br i1 %94, label %53, label %64

95:                                               ; preds = %53, %48
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %99

96:                                               ; preds = %85, %37
  %97 = phi ptr [ %88, %85 ], [ %40, %37 ]
  %98 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %99, label %103

99:                                               ; preds = %96, %95, %90, %84, %42, %36
  %100 = phi ptr [ %97, %96 ], [ inttoptr (i32 -11 to ptr), %36 ], [ inttoptr (i32 -11 to ptr), %42 ], [ inttoptr (i32 -11 to ptr), %84 ], [ inttoptr (i32 -2 to ptr), %95 ], [ inttoptr (i32 -11 to ptr), %90 ]
  %101 = icmp eq ptr %100, inttoptr (i32 -11 to ptr)
  %102 = select i1 %101, i32 10008, i32 10060
  br label %176

103:                                              ; preds = %96
  %104 = call i32 @pnfs_layoutcommit_inode(ptr noundef %97, i1 noundef zeroext false) #9
  %105 = getelementptr inbounds %struct.inode, ptr %97, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %105) #9
  %106 = getelementptr i8, ptr %97, i32 -24
  %107 = load ptr, ptr %106, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %110 = load i16, ptr %105, align 4
  %111 = add i16 %110, 1
  store i16 %111, ptr %105, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  br label %170

112:                                              ; preds = %103
  call void @pnfs_get_layout_hdr(ptr noundef nonnull %107) #9
  %113 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %107, i32 0, i32 8
  %114 = load volatile i32, ptr %113, align 4
  %115 = and i32 %114, 64
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %165

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %107, i32 0, i32 9
  %119 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %107, i32 0, i32 9, i32 0, i32 0, i32 1
  %120 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 0, i32 0, i32 1
  %121 = call i32 @bcmp(ptr noundef dereferenceable(12) %119, ptr noundef dereferenceable(12) %120, i32 12) #9
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %165

123:                                              ; preds = %117
  %124 = load i32, ptr %8, align 4
  %125 = call i32 @llvm.bswap.i32(i32 %124) #9
  %126 = load volatile i32, ptr %113, align 4
  %127 = and i32 %126, 32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %107, i32 0, i32 11
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = icmp ult i32 %125, %131
  br i1 %134, label %165, label %135

135:                                              ; preds = %133
  %136 = icmp ugt i32 %125, %131
  br i1 %136, label %165, label %144

137:                                              ; preds = %129, %123
  %138 = load i32, ptr %118, align 4
  %139 = call i32 @llvm.bswap.i32(i32 %138) #9
  %140 = add i32 %139, 1
  %141 = icmp ugt i32 %125, %140
  br i1 %141, label %165, label %142

142:                                              ; preds = %137
  %143 = icmp ugt i32 %125, %139
  br i1 %143, label %144, label %165

144:                                              ; preds = %142, %135
  %145 = load volatile i32, ptr %113, align 4
  %146 = and i32 %145, 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %165

148:                                              ; preds = %144
  call void @pnfs_set_layout_stateid(ptr noundef nonnull %107, ptr noundef %8, ptr noundef null, i1 noundef zeroext true) #9
  %149 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %1, i32 0, i32 3, i32 0, i32 1
  %150 = load i32, ptr %8, align 8
  %151 = call i32 @llvm.bswap.i32(i32 %150) #9
  %152 = call i32 @pnfs_mark_matching_lsegs_return(ptr noundef nonnull %107, ptr noundef nonnull %3, ptr noundef %149, i32 noundef %151) #9
  %153 = icmp eq i32 %152, -2
  br i1 %153, label %154, label %165

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.inode, ptr %97, i32 0, i32 8
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.super_block, ptr %156, i32 0, i32 27
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.nfs_server, ptr %158, i32 0, i32 44
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %160, i32 0, i32 14
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %154
  call void %162(ptr noundef nonnull %107, ptr noundef %149) #9
  br label %165

165:                                              ; preds = %164, %154, %148, %144, %142, %137, %135, %133, %117, %112
  %166 = phi i32 [ 10060, %164 ], [ 10060, %154 ], [ 10008, %144 ], [ 0, %148 ], [ 10024, %142 ], [ 10008, %137 ], [ 10008, %135 ], [ 10024, %133 ], [ 10025, %117 ], [ 10060, %112 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %167 = load i16, ptr %105, align 4
  %168 = add i16 %167, 1
  store i16 %168, ptr %105, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  call void @pnfs_free_lseg_list(ptr noundef nonnull %3) #9
  %169 = call i32 @nfs_commit_inode(ptr noundef %97, i32 noundef 0) #9
  call void @pnfs_put_layout_hdr(ptr noundef nonnull %107) #9
  br label %170

170:                                              ; preds = %165, %109
  %171 = phi i32 [ %166, %165 ], [ 10060, %109 ]
  %172 = icmp eq ptr %97, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.inode, ptr %97, i32 0, i32 8
  %175 = load ptr, ptr %174, align 4
  call void @iput(ptr noundef nonnull %97) #9
  call void @nfs_sb_deactive(ptr noundef %175) #9
  br label %176

176:                                              ; preds = %173, %170, %99
  %177 = phi ptr [ %100, %99 ], [ null, %170 ], [ %97, %173 ]
  %178 = phi i32 [ %102, %99 ], [ %171, %170 ], [ %171, %173 ]
  %179 = sub nsw i32 0, %178
  %180 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_layoutrecall_file, i32 0, i32 1), align 4
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %176
  %183 = tail call ptr @llvm.thread.pointer() #9
  %184 = getelementptr inbounds %struct.thread_info, ptr %183, i32 0, i32 2
  %185 = load i32, ptr %184, align 8
  %186 = lshr i32 %185, 5
  %187 = getelementptr i32, ptr @__cpu_online_mask, i32 %186
  %188 = load volatile i32, ptr %187, align 4
  %189 = and i32 %185, 31
  %190 = shl nuw i32 1, %189
  %191 = and i32 %190, %188
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %182
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !22
  %194 = call i32 @__traceiter_nfs4_cb_layoutrecall_file(ptr noundef null, ptr noundef %0, ptr noundef %7, ptr noundef %177, ptr noundef %8, i32 noundef %179) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  br label %195

195:                                              ; preds = %193, %182, %176
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %205

196:                                              ; preds = %2
  %197 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %1, i32 0, i32 3
  %198 = tail call i32 @pnfs_destroy_layouts_byfsid(ptr noundef %0, ptr noundef %197, i1 noundef zeroext true) #9
  br label %201

199:                                              ; preds = %2
  %200 = tail call i32 @pnfs_destroy_layouts_byclid(ptr noundef %0, i1 noundef zeroext true) #9
  br label %201

201:                                              ; preds = %199, %196
  %202 = phi i32 [ %198, %196 ], [ %200, %199 ]
  %203 = icmp eq i32 %202, 0
  %204 = select i1 %203, i32 10060, i32 10008
  br label %205

205:                                              ; preds = %201, %195
  %206 = phi i32 [ %178, %195 ], [ %204, %201 ]
  ret i32 %206
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_callback_devicenotify(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cb_process_state, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %59, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %59, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.cb_devicenotifyargs, ptr %0, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nfs_client, ptr %5, i32 0, i32 10
  %13 = getelementptr %struct.nfs_client, ptr %5, i32 0, i32 9, i32 1
  br label %14

14:                                               ; preds = %54, %10
  %15 = phi i32 [ 0, %10 ], [ %56, %54 ]
  %16 = phi ptr [ null, %10 ], [ %55, %54 ]
  %17 = load ptr, ptr %11, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.nfs_server, ptr %16, i32 0, i32 44
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.cb_devicenotifyitem, ptr %17, i32 %15, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %50, label %27

27:                                               ; preds = %19, %14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  %28 = load volatile ptr, ptr %12, align 4
  %29 = icmp eq ptr %28, %12
  br i1 %29, label %49, label %30

30:                                               ; preds = %27
  %31 = getelementptr %struct.cb_devicenotifyitem, ptr %17, i32 %15, i32 1
  br label %32

32:                                               ; preds = %46, %30
  %33 = phi ptr [ %28, %30 ], [ %47, %46 ]
  %34 = getelementptr i8, ptr %33, i32 288
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %35, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %31, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = getelementptr i8, ptr %33, i32 -4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %44 = getelementptr i8, ptr %33, i32 288
  %45 = load ptr, ptr %44, align 4
  br label %50

46:                                               ; preds = %37, %32
  %47 = load volatile ptr, ptr %33, align 4
  %48 = icmp eq ptr %47, %12
  br i1 %48, label %49, label %32

49:                                               ; preds = %46, %27
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %54

50:                                               ; preds = %42, %19
  %51 = phi ptr [ %45, %42 ], [ %21, %19 ]
  %52 = phi ptr [ %43, %42 ], [ %16, %19 ]
  %53 = getelementptr %struct.cb_devicenotifyitem, ptr %17, i32 %15, i32 2
  tail call void @nfs4_delete_deviceid(ptr noundef %51, ptr noundef nonnull %5, ptr noundef %53) #9
  br label %54

54:                                               ; preds = %50, %49
  %55 = phi ptr [ %52, %50 ], [ %13, %49 ]
  %56 = add nuw i32 %15, 1
  %57 = load i32, ptr %0, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %14, label %59

59:                                               ; preds = %54, %7, %3
  %60 = phi i32 [ 1462173696, %3 ], [ 0, %7 ], [ 0, %54 ]
  %61 = getelementptr inbounds %struct.cb_devicenotifyargs, ptr %0, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  tail call void @kfree(ptr noundef %62) #9
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_delete_deviceid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_callback_sequence(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cb_process_state, ptr %2, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.cb_sequenceargs, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.cb_process_state, ptr %2, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @nfs4_find_client_sessionid(ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %9) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %111, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.nfs_client, ptr %10, i32 0, i32 36
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nfs4_session, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %111, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.nfs4_session, ptr %14, i32 0, i32 8
  %21 = getelementptr inbounds %struct.cb_sequenceres, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %21, ptr noundef align 4 dereferenceable(16) %7, i32 16, i1 false)
  %22 = getelementptr inbounds %struct.cb_sequenceargs, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.cb_sequenceres, ptr %1, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.cb_sequenceargs, ptr %0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.cb_sequenceres, ptr %1, i32 0, i32 3
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nfs4_session, ptr %14, i32 0, i32 8, i32 3
  tail call void @_raw_spin_lock(ptr noundef %28) #9
  %29 = getelementptr inbounds %struct.nfs4_session, ptr %14, i32 0, i32 8, i32 15
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.nfs_client, ptr %10, i32 0, i32 22
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 64
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 405209088, i32 1143406592
  br label %107

39:                                               ; preds = %19
  %40 = load i32, ptr %25, align 4
  %41 = tail call ptr @nfs4_lookup_slot(ptr noundef %20, i32 noundef %40) #9
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %107, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.nfs4_session, ptr %14, i32 0, i32 8, i32 10
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.cb_sequenceres, ptr %1, i32 0, i32 4
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.nfs4_session, ptr %14, i32 0, i32 8, i32 9
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.cb_sequenceres, ptr %1, i32 0, i32 5
  store i32 %48, ptr %49, align 4
  %50 = load i32, ptr %25, align 4
  %51 = load i32, ptr %44, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %77, label %53

53:                                               ; preds = %43
  %54 = load i32, ptr %22, align 4
  %55 = getelementptr inbounds %struct.nfs4_slot, ptr %41, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.nfs4_slot, ptr %41, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nfs4_session, ptr %14, i32 0, i32 8, i32 2
  %62 = lshr i32 %60, 5
  %63 = getelementptr i32, ptr %61, i32 %62
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %60, 31
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, %64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.cb_sequenceargs, ptr %0, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i32 1411842048, i32 1546059776
  br label %77

74:                                               ; preds = %53
  %75 = add i32 %56, 1
  %76 = icmp eq i32 %54, %75
  br i1 %76, label %94, label %77

77:                                               ; preds = %74, %69, %58, %43
  %78 = phi i32 [ 1160183808, %43 ], [ 405209088, %58 ], [ %73, %69 ], [ 1327955968, %74 ]
  %79 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_seqid_err, i32 0, i32 1), align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %77
  %82 = tail call ptr @llvm.thread.pointer() #9
  %83 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %84 = load i32, ptr %83, align 8
  %85 = lshr i32 %84, 5
  %86 = getelementptr i32, ptr @__cpu_online_mask, i32 %85
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %84, 31
  %89 = shl nuw i32 1, %88
  %90 = and i32 %89, %87
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %81
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  %93 = tail call i32 @__traceiter_nfs4_cb_seqid_err(ptr noundef null, ptr noundef %0, i32 noundef %78) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  br label %107

94:                                               ; preds = %74
  %95 = tail call zeroext i1 @nfs4_try_to_lock_slot(ptr noundef %20, ptr noundef %41) #9
  br i1 %95, label %96, label %107

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.cb_process_state, ptr %2, i32 0, i32 2
  store ptr %41, ptr %97, align 4
  %98 = getelementptr inbounds %struct.cb_sequenceargs, ptr %0, i32 0, i32 5
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.cb_sequenceargs, ptr %0, i32 0, i32 6
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.cb_sequenceargs, ptr %0, i32 0, i32 7
  %105 = load ptr, ptr %104, align 4
  tail call fastcc void @referring_call_exists(ptr noundef nonnull %10, i32 noundef %103, ptr noundef %105, ptr noundef %28)
  %106 = load i32, ptr %22, align 4
  store i32 %106, ptr %55, align 4
  br label %107

107:                                              ; preds = %101, %96, %94, %92, %81, %77, %39, %33
  %108 = phi i32 [ 1160183808, %39 ], [ 0, %101 ], [ %38, %33 ], [ 405209088, %94 ], [ 1395064832, %96 ], [ %78, %77 ], [ %78, %81 ], [ %78, %92 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %109 = load i16, ptr %28, align 4
  %110 = add i16 %109, 1
  store i16 %110, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  br label %111

111:                                              ; preds = %107, %12, %3
  %112 = phi i32 [ 1143406592, %3 ], [ %108, %107 ], [ 1143406592, %12 ]
  %113 = getelementptr inbounds %struct.cb_process_state, ptr %2, i32 0, i32 1
  store ptr %10, ptr %113, align 4
  %114 = getelementptr inbounds %struct.cb_sequenceargs, ptr %0, i32 0, i32 6
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.cb_sequenceargs, ptr %0, i32 0, i32 7
  br label %119

119:                                              ; preds = %119, %117
  %120 = phi i32 [ 0, %117 ], [ %124, %119 ]
  %121 = load ptr, ptr %118, align 4
  %122 = getelementptr %struct.referring_call_list, ptr %121, i32 %120, i32 2
  %123 = load ptr, ptr %122, align 4
  tail call void @kfree(ptr noundef %123) #9
  %124 = add nuw i32 %120, 1
  %125 = load i32, ptr %114, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %119, label %127

127:                                              ; preds = %119, %111
  %128 = getelementptr inbounds %struct.cb_sequenceargs, ptr %0, i32 0, i32 7
  %129 = load ptr, ptr %128, align 4
  tail call void @kfree(ptr noundef %129) #9
  %130 = icmp eq i32 %112, 1411842048
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 1411842048, ptr %2, align 4
  br label %133

132:                                              ; preds = %127
  store i32 %112, ptr %1, align 4
  br label %133

133:                                              ; preds = %132, %131
  %134 = phi i32 [ 0, %131 ], [ %112, %132 ]
  %135 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_sequence, i32 0, i32 1), align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %133
  %138 = tail call ptr @llvm.thread.pointer() #9
  %139 = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 2
  %140 = load i32, ptr %139, align 8
  %141 = lshr i32 %140, 5
  %142 = getelementptr i32, ptr @__cpu_online_mask, i32 %141
  %143 = load volatile i32, ptr %142, align 4
  %144 = and i32 %140, 31
  %145 = shl nuw i32 1, %144
  %146 = and i32 %145, %143
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %137
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %149 = tail call i32 @__traceiter_nfs4_cb_sequence(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %134) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  br label %150

150:                                              ; preds = %148, %137, %133
  ret i32 %134
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_find_client_sessionid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_lookup_slot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_try_to_lock_slot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @referring_call_exists(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 36
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs4_session, ptr %6, i32 0, i32 6
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %38, label %9

9:                                                ; preds = %35, %4
  %10 = phi i32 [ %36, %35 ], [ 0, %4 ]
  %11 = getelementptr %struct.referring_call_list, ptr %2, i32 %10
  %12 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %6, ptr noundef dereferenceable(16) %11, i32 16)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  %15 = getelementptr %struct.referring_call_list, ptr %2, i32 %10, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %14
  %19 = getelementptr %struct.referring_call_list, ptr %2, i32 %10, i32 2
  br label %24

20:                                               ; preds = %24
  %21 = add nuw i32 %25, 1
  %22 = load i32, ptr %15, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20, %18
  %25 = phi i32 [ 0, %18 ], [ %21, %20 ]
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr %struct.referring_call, ptr %26, i32 %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %28 = load i16, ptr %3, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  %30 = getelementptr %struct.referring_call, ptr %26, i32 %25, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %27, align 4
  %33 = tail call i32 @nfs4_slot_wait_on_seqid(ptr noundef %7, i32 noundef %31, i32 noundef %32, i32 noundef 50) #9
  %34 = icmp slt i32 %33, 0
  tail call void @_raw_spin_lock(ptr noundef %3) #9
  br i1 %34, label %38, label %20

35:                                               ; preds = %20, %14, %9
  %36 = add nuw i32 %10, 1
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %38, label %9

38:                                               ; preds = %35, %24, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_callback_recallany(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.cb_layoutrecallargs, align 8
  %5 = getelementptr inbounds %struct.cb_process_state, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cb_recallanyargs, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, -258848
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %8
  %14 = and i32 %10, 3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  tail call void @nfs_expire_unused_delegation_types(ptr noundef nonnull %6, i32 noundef %14) #9
  %17 = load i32, ptr %9, align 4
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %17, %16 ], [ %10, %13 ]
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %4, i8 0, i64 200, i1 false) #9
  store i32 3, ptr %4, align 8
  %24 = call fastcc i32 @do_callback_layoutrecall(ptr noundef %23, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #9
  %25 = load i32, ptr %9, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i32 [ %25, %22 ], [ %19, %18 ]
  %28 = and i32 %27, 65536
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = and i32 %27, 131072
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %39

33:                                               ; preds = %26
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr inbounds %struct.nfs_client, ptr %34, i32 0, i32 22
  call void @_set_bit(i32 noundef 16, ptr noundef %35) #9
  %36 = load i32, ptr %9, align 4
  %37 = and i32 %36, 131072
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33, %30
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr inbounds %struct.nfs_client, ptr %40, i32 0, i32 22
  call void @_set_bit(i32 noundef 17, ptr noundef %41) #9
  br label %42

42:                                               ; preds = %39, %33
  %43 = load ptr, ptr %5, align 4
  call void @nfs4_schedule_state_manager(ptr noundef %43) #9
  br label %44

44:                                               ; preds = %42, %30, %8, %3
  %45 = phi i32 [ 0, %42 ], [ 369098752, %8 ], [ 1462173696, %3 ], [ 0, %30 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_expire_unused_delegation_types(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_schedule_state_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_callback_recallslot(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cb_process_state, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nfs_client, ptr %5, i32 0, i32 36
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs4_session, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %0, align 4
  tail call void @nfs41_set_target_slotid(ptr noundef %10, i32 noundef %11) #9
  %12 = load ptr, ptr %4, align 4
  tail call void @nfs41_notify_server(ptr noundef %12) #9
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi i32 [ 0, %7 ], [ 1462173696, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs41_set_target_slotid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs41_notify_server(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_callback_notify_lock(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cb_process_state, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cb_notify_lock_args, ptr %0, i32 0, i32 2
  %9 = load i8, ptr %8, align 8, !range !28
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nfs_client, ptr %5, i32 0, i32 42
  tail call void @__wake_up(ptr noundef %12, i32 noundef 3, i32 noundef 0, ptr noundef %0) #9
  br label %13

13:                                               ; preds = %11, %7, %3
  %14 = phi i32 [ 1462173696, %3 ], [ 0, %11 ], [ 0, %7 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_callback_offload(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3392, i32 noundef 96) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %99, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cb_process_state, ptr %2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %10) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.nfs_client, ptr %11, i32 0, i32 10
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %47, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.cb_offloadargs, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 1
  br label %20

17:                                               ; preds = %23
  %18 = load volatile ptr, ptr %21, align 4
  %19 = icmp eq ptr %18, %12
  br i1 %19, label %47, label %20

20:                                               ; preds = %17, %15
  %21 = phi ptr [ %13, %15 ], [ %18, %17 ]
  %22 = getelementptr i8, ptr %21, i32 452
  br label %23

23:                                               ; preds = %27, %20
  %24 = phi ptr [ %22, %20 ], [ %25, %27 ]
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, %22
  br i1 %26, label %17, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.nfs4_copy_state, ptr %25, i32 0, i32 2, i32 0, i32 0, i32 1
  %29 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %16, ptr noundef dereferenceable(12) %28, i32 12)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %23

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.cb_offloadargs, ptr %0, i32 0, i32 3
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nfs4_copy_state, ptr %25, i32 0, i32 4
  store i64 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.cb_offloadargs, ptr %0, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.nfs4_copy_state, ptr %25, i32 0, i32 6
  store i32 %36, ptr %37, align 4
  %38 = load i32, ptr %35, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.cb_offloadargs, ptr %0, i32 0, i32 4
  %42 = getelementptr inbounds %struct.cb_offloadargs, ptr %0, i32 0, i32 4, i32 1
  %43 = load i32, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nfs4_copy_state, ptr %25, i32 0, i32 5
  %45 = getelementptr inbounds %struct.nfs4_copy_state, ptr %25, i32 0, i32 5, i32 1
  store i32 %43, ptr %45, align 8
  %46 = load i64, ptr %41, align 8
  store i64 %46, ptr %44, align 8
  br label %70

47:                                               ; preds = %17, %7
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %48 = getelementptr inbounds %struct.nfs4_copy_state, ptr %5, i32 0, i32 2
  %49 = getelementptr inbounds %struct.cb_offloadargs, ptr %0, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %48, ptr noundef align 4 dereferenceable(16) %49, i32 16, i1 false)
  %50 = getelementptr inbounds %struct.cb_offloadargs, ptr %0, i32 0, i32 3
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds %struct.nfs4_copy_state, ptr %5, i32 0, i32 4
  store i64 %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.cb_offloadargs, ptr %0, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr inbounds %struct.nfs4_copy_state, ptr %5, i32 0, i32 6
  store i32 %54, ptr %55, align 4
  %56 = icmp eq i32 %54, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.cb_offloadargs, ptr %0, i32 0, i32 4
  %59 = getelementptr inbounds %struct.cb_offloadargs, ptr %0, i32 0, i32 4, i32 1
  %60 = load i32, ptr %59, align 8
  %61 = getelementptr inbounds %struct.nfs4_copy_state, ptr %5, i32 0, i32 5
  %62 = getelementptr inbounds %struct.nfs4_copy_state, ptr %5, i32 0, i32 5, i32 1
  store i32 %60, ptr %62, align 8
  %63 = load i64, ptr %58, align 8
  store i64 %63, ptr %61, align 8
  br label %64

64:                                               ; preds = %57, %47
  %65 = load ptr, ptr %8, align 4
  %66 = getelementptr inbounds %struct.nfs_client, ptr %65, i32 0, i32 45
  %67 = getelementptr inbounds %struct.nfs_client, ptr %65, i32 0, i32 45, i32 1
  %68 = load ptr, ptr %67, align 4
  store ptr %5, ptr %67, align 4
  store ptr %66, ptr %5, align 8
  %69 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %68, ptr %69, align 4
  store volatile ptr %5, ptr %68, align 4
  br label %72

70:                                               ; preds = %40, %31
  %71 = getelementptr inbounds %struct.nfs4_copy_state, ptr %25, i32 0, i32 3
  tail call void @complete(ptr noundef %71) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  tail call void @kfree(ptr noundef nonnull %5) #9
  br label %72

72:                                               ; preds = %70, %64
  %73 = load ptr, ptr %8, align 4
  %74 = getelementptr inbounds %struct.nfs_client, ptr %73, i32 0, i32 23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %75 = load i16, ptr %74, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr %74, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  %77 = getelementptr inbounds %struct.cb_offloadargs, ptr %0, i32 0, i32 1
  %78 = getelementptr inbounds %struct.cb_offloadargs, ptr %0, i32 0, i32 3
  %79 = load i64, ptr %78, align 8
  %80 = getelementptr inbounds %struct.cb_offloadargs, ptr %0, i32 0, i32 2
  %81 = load i32, ptr %80, align 8
  %82 = getelementptr inbounds %struct.cb_offloadargs, ptr %0, i32 0, i32 4, i32 1
  %83 = load i32, ptr %82, align 8
  %84 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_cb_offload, i32 0, i32 1), align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %72
  %87 = tail call ptr @llvm.thread.pointer() #9
  %88 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %89 = load i32, ptr %88, align 8
  %90 = lshr i32 %89, 5
  %91 = getelementptr i32, ptr @__cpu_online_mask, i32 %90
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %89, 31
  %94 = shl nuw i32 1, %93
  %95 = and i32 %94, %92
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %86
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %98 = tail call i32 @__traceiter_nfs4_cb_offload(ptr noundef null, ptr noundef %0, ptr noundef %77, i64 noundef %79, i32 noundef %81, i32 noundef %83) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  br label %99

99:                                               ; preds = %97, %86, %72, %3
  %100 = phi i32 [ 371654656, %3 ], [ 0, %72 ], [ 0, %86 ], [ 0, %97 ]
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_cb_getattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_sb_deactive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_cb_recall(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_layoutcommit_inode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_get_layout_hdr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_set_layout_stateid(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_mark_matching_lsegs_return(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_free_lseg_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_commit_inode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_put_layout_hdr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_sb_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_cb_layoutrecall_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_destroy_layouts_byfsid(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_destroy_layouts_byclid(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_cb_seqid_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_slot_wait_on_seqid(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_cb_sequence(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_cb_offload(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }
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
!8 = !{i64 2157489215}
!9 = !{i64 2157489409}
!10 = !{i64 2149113780}
!11 = !{i64 2151770165}
!12 = !{i64 2151770007}
!13 = !{i64 2151770309}
!14 = !{i64 2149489961}
!15 = !{i64 2149113997}
!16 = !{i64 2157507714}
!17 = !{i64 2157507924}
!18 = !{i64 2149020528}
!19 = !{i64 2149016352}
!20 = !{i64 2149016427, i64 2149016454, i64 2149016501, i64 2149016523, i64 2149016551, i64 2149016571}
!21 = !{i64 2149043531}
!22 = !{i64 2157530791}
!23 = !{i64 2157531023}
!24 = !{i64 2156632047}
!25 = !{i64 2156632217}
!26 = !{i64 2156615368}
!27 = !{i64 2156615546}
!28 = !{i8 0, i8 2}
!29 = !{i64 2156649957}
!30 = !{i64 2156650209}
