; ModuleID = '/llk/IR/fs/nfs/export.c_pt.bc'
source_filename = "../fs/nfs/export.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.154, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.155, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.156, ptr, %struct.address_space, %struct.list_head, %union.anon.157, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.154 = type { i32 }
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
%union.anon.155 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.156 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.157 = type { ptr }
%struct.nfs_fh = type { i16, [128 x i8] }
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
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.113, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.113 = type { %struct.anon.115 }
%struct.anon.115 = type { i64 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.85 }
%union.anon.85 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.152, %struct.list_head, %struct.list_head, %union.anon.153 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.1 }
%union.anon.1 = type { i64 }
%union.anon.152 = type { %struct.list_head }
%union.anon.153 = type { %struct.hlist_node }

@nfs_export_ops = dso_local local_unnamed_addr constant %struct.export_operations { ptr @nfs_encode_fh, ptr @nfs_fh_to_dentry, ptr null, ptr null, ptr @nfs_get_parent, ptr null, ptr null, ptr null, ptr null, ptr @nfs_fetch_iversion, i32 31 }, align 4
@__tracepoint_nfs_fh_to_dentry = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nfs_encode_fh(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -288
  %6 = getelementptr i32, ptr %1, i32 3
  %7 = load i16, ptr %5, align 2
  %8 = zext i16 %7 to i32
  %9 = add nuw nsw i32 %8, 5
  %10 = lshr i32 %9, 2
  %11 = add nuw nsw i32 %10, 3
  %12 = load i32, ptr %2, align 4
  %13 = icmp slt i32 %12, %11
  br i1 %13, label %38, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2048
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %0, i32 -296
  %21 = load i64, ptr %20, align 8
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  store i32 %23, ptr %1, align 4
  %24 = load i64, ptr %20, align 8
  %25 = trunc i64 %24 to i32
  %26 = getelementptr i32, ptr %1, i32 1
  store i32 %25, ptr %26, align 4
  %27 = load i16, ptr %0, align 8
  %28 = and i16 %27, -4096
  %29 = zext i16 %28 to i32
  %30 = getelementptr i32, ptr %1, i32 2
  store i32 %29, ptr %30, align 4
  %31 = add nuw nsw i32 %10, 2
  %32 = getelementptr i32, ptr %1, i32 %31
  store i32 0, ptr %32, align 4
  %33 = load i16, ptr %5, align 2
  store i16 %33, ptr %6, align 2
  %34 = getelementptr inbounds %struct.nfs_fh, ptr %6, i32 0, i32 1
  %35 = getelementptr i8, ptr %0, i32 -286
  %36 = load i16, ptr %5, align 2
  %37 = zext i16 %36 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %34, ptr align 2 %35, i32 %37, i1 false) #7
  br label %38

38:                                               ; preds = %19, %14, %4
  %39 = phi i32 [ %11, %19 ], [ 255, %4 ], [ 255, %14 ]
  store i32 %11, ptr %2, align 4
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nfs_fh_to_dentry(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr i32, ptr %1, i32 3
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = add nuw nsw i32 %7, 5
  %9 = lshr i32 %8, 2
  %10 = add nuw nsw i32 %9, 3
  %11 = icmp sle i32 %10, %2
  %12 = icmp eq i32 %10, %3
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %71

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @nfs_alloc_fattr_with_label(ptr noundef %16) #7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %71, label %19

19:                                               ; preds = %14
  %20 = load i32, ptr %1, align 4
  %21 = zext i32 %20 to i64
  %22 = shl nuw i64 %21, 32
  %23 = getelementptr i32, ptr %1, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = zext i32 %24 to i64
  %26 = or i64 %22, %25
  %27 = getelementptr inbounds %struct.nfs_fattr, ptr %17, i32 0, i32 9
  store i64 %26, ptr %27, align 8
  %28 = getelementptr i32, ptr %1, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = trunc i32 %29 to i16
  %31 = getelementptr inbounds %struct.nfs_fattr, ptr %17, i32 0, i32 1
  store i16 %30, ptr %31, align 4
  %32 = load i32, ptr %17, align 8
  %33 = or i32 %32, 2049
  store i32 %33, ptr %17, align 8
  %34 = tail call ptr @nfs_ilookup(ptr noundef %0, ptr noundef nonnull %17, ptr noundef %5) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %66

36:                                               ; preds = %19
  %37 = load ptr, ptr %15, align 4
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.nfs_client, ptr %38, i32 0, i32 12
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %40, i32 0, i32 9
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 %42(ptr noundef %37, ptr noundef %5, ptr noundef nonnull %17, ptr noundef null) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %36
  %46 = load i64, ptr %27, align 8
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_fh_to_dentry, i32 0, i32 1), align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = tail call ptr @llvm.thread.pointer() #7
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = lshr i32 %52, 5
  %54 = getelementptr i32, ptr @__cpu_online_mask, i32 %53
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %52, 31
  %57 = shl nuw i32 1, %56
  %58 = and i32 %57, %55
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  %61 = tail call i32 @__traceiter_nfs_fh_to_dentry(ptr noundef null, ptr noundef %0, ptr noundef %5, i64 noundef %46, i32 noundef %43) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  br label %62

62:                                               ; preds = %60, %49, %45
  %63 = inttoptr i32 %43 to ptr
  br label %69

64:                                               ; preds = %36
  %65 = tail call ptr @nfs_fhget(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %17) #7
  br label %66

66:                                               ; preds = %64, %19
  %67 = phi ptr [ %34, %19 ], [ %65, %64 ]
  %68 = tail call ptr @d_obtain_alias(ptr noundef %67) #7
  br label %69

69:                                               ; preds = %66, %62
  %70 = phi ptr [ %68, %66 ], [ %63, %62 ]
  tail call void @kfree(ptr noundef nonnull %17) #7
  br label %71

71:                                               ; preds = %69, %14, %4
  %72 = phi ptr [ null, %4 ], [ %70, %69 ], [ inttoptr (i32 -12 to ptr), %14 ]
  ret ptr %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nfs_get_parent(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca %struct.nfs_fh, align 2
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(130) %2, i8 0, i32 130, i1 false), !annotation !10
  %12 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %11, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %1
  %16 = tail call ptr @nfs_alloc_fattr_with_label(ptr noundef %8) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %12, align 4
  %20 = call i32 %19(ptr noundef %4, ptr noundef nonnull %2, ptr noundef nonnull %16) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = inttoptr i32 %20 to ptr
  br label %27

24:                                               ; preds = %18
  %25 = call ptr @nfs_fhget(ptr noundef %6, ptr noundef nonnull %2, ptr noundef nonnull %16) #7
  %26 = call ptr @d_obtain_alias(ptr noundef %25) #7
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi ptr [ %23, %22 ], [ %26, %24 ]
  call void @kfree(ptr noundef nonnull %16) #7
  br label %29

29:                                               ; preds = %27, %15, %1
  %30 = phi ptr [ %28, %27 ], [ inttoptr (i32 -13 to ptr), %1 ], [ inttoptr (i32 -12 to ptr), %15 ]
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %2) #7
  ret ptr %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @nfs_fetch_iversion(ptr noundef %0) #1 {
  %2 = tail call i32 @nfs_revalidate_inode(ptr noundef %0, i32 noundef 256) #7
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 33
  %4 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %3, ptr elementtype(i64) %3) #7, !srcloc !11
  ret i64 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fattr_with_label(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_ilookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_fhget(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_fh_to_dentry(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_revalidate_inode(ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }

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
!8 = !{i64 2157451688}
!9 = !{i64 2157451874}
!10 = !{!"auto-init"}
!11 = !{i64 220409, i64 220430}
