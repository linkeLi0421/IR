; ModuleID = '/llk/IR/fs/ubifs/ioctl.c_pt.bc'
source_filename = "../fs/ubifs/ioctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ubifs_inode = type { %struct.inode, i64, i64, i32, i32, i32, i8, %struct.mutex, %struct.rw_semaphore, %struct.spinlock, i64, i64, i32, i32, i32, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.ubifs_budget_req = type { i24, i16, i32, i32, i32 }
%struct.fileattr = type { i32, i32, i32, i32, i32, i32, i8 }
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
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ubifs_set_inode_flags(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -16462
  %7 = lshr i32 %3, 1
  %8 = and i32 %7, 1
  %9 = or i32 %8, %6
  %10 = and i32 %7, 4
  %11 = or i32 %10, %9
  %12 = shl i32 %3, 1
  %13 = and i32 %12, 8
  %14 = or i32 %13, %11
  %15 = shl i32 %3, 2
  %16 = and i32 %15, 64
  %17 = or i32 %16, %14
  %18 = shl i32 %3, 8
  %19 = and i32 %18, 16384
  %20 = or i32 %19, %17
  store i32 %20, ptr %4, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_fileattr_get(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 7340032
  %5 = icmp eq i32 %4, 5242880
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ubifs_inode, ptr %8, i32 0, i32 12
  %10 = load i32, ptr %9, align 8
  %11 = shl i32 %10, 2
  %12 = and i32 %11, 60
  %13 = shl i32 %10, 12
  %14 = and i32 %13, 65536
  %15 = or i32 %12, %14
  %16 = shl i32 %10, 5
  %17 = and i32 %16, 2048
  %18 = or i32 %15, %17
  tail call void @fileattr_fill_flags(ptr noundef %1, i32 noundef %18) #5
  br label %19

19:                                               ; preds = %6, %2
  %20 = phi i32 [ 0, %6 ], [ -25, %2 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fileattr_fill_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_fileattr_set(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = alloca %struct.ubifs_budget_req, align 4
  %5 = alloca %struct.timespec64, align 8
  %6 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %2, align 4
  %9 = load i32, ptr %1, align 8
  %10 = and i32 %9, 7340032
  %11 = icmp eq i32 %10, 5242880
  br i1 %11, label %105, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 6
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -33529
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %105

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %105

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %105

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br label %34

34:                                               ; preds = %30, %12
  %35 = phi i1 [ true, %12 ], [ %33, %30 ]
  %36 = and i32 %8, -67645
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %105

39:                                               ; preds = %34
  %40 = load i16, ptr %7, align 8
  %41 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 27
  %44 = load ptr, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #5
  %45 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 0, ptr %45, align 4, !annotation !8
  store i32 1048576, ptr %4, align 4
  %46 = getelementptr inbounds %struct.ubifs_inode, ptr %7, i32 0, i32 15
  %47 = load i32, ptr %46, align 4
  %48 = trunc i32 %47 to i16
  %49 = and i16 %48, 32767
  store i16 %49, ptr %45, align 4
  %50 = getelementptr inbounds %struct.ubifs_budget_req, ptr %4, i32 0, i32 2
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.ubifs_budget_req, ptr %4, i32 0, i32 3
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.ubifs_budget_req, ptr %4, i32 0, i32 4
  store i32 0, ptr %52, align 4
  %53 = call i32 @ubifs_budget_space(ptr noundef %44, ptr noundef nonnull %4) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %103

55:                                               ; preds = %39
  %56 = and i16 %40, -4096
  %57 = icmp eq i16 %56, 16384
  %58 = select i1 %57, i32 65596, i32 60
  %59 = and i32 %58, %8
  %60 = getelementptr inbounds %struct.ubifs_inode, ptr %7, i32 0, i32 7
  call void @mutex_lock(ptr noundef %60) #5
  %61 = getelementptr inbounds %struct.ubifs_inode, ptr %7, i32 0, i32 12
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, -32
  %64 = lshr exact i32 %59, 2
  %65 = and i32 %64, 15
  %66 = lshr i32 %59, 12
  %67 = or i32 %65, %66
  %68 = or i32 %67, %63
  store i32 %68, ptr %61, align 8
  %69 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, -16462
  %72 = lshr i32 %68, 1
  %73 = and i32 %72, 1
  %74 = and i32 %72, 4
  %75 = lshr exact i32 %59, 1
  %76 = and i32 %75, 8
  %77 = shl nuw nsw i32 %66, 2
  %78 = shl i32 %62, 8
  %79 = and i32 %78, 16384
  %80 = or i32 %77, %76
  %81 = or i32 %79, %80
  %82 = or i32 %81, %71
  %83 = or i32 %82, %73
  %84 = or i32 %83, %74
  store i32 %84, ptr %69, align 4
  %85 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef %7) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %85, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  %86 = getelementptr inbounds %struct.ubifs_inode, ptr %7, i32 0, i32 6
  %87 = load i8, ptr %86, align 4
  %88 = and i8 %87, 1
  call void @__mark_inode_dirty(ptr noundef %7, i32 noundef 1) #5
  call void @mutex_unlock(ptr noundef %60) #5
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %55
  call void @ubifs_release_budget(ptr noundef %44, ptr noundef nonnull %4) #5
  br label %91

91:                                               ; preds = %90, %55
  %92 = load ptr, ptr %41, align 4
  %93 = getelementptr inbounds %struct.super_block, ptr %92, i32 0, i32 10
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, 16
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, ptr %69, align 4
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97, %91
  %102 = call i32 @write_inode_now(ptr noundef %7, i32 noundef 1) #5
  br label %103

103:                                              ; preds = %101, %97, %39
  %104 = phi i32 [ %53, %39 ], [ %102, %101 ], [ 0, %97 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #5
  br label %105

105:                                              ; preds = %103, %34, %26, %22, %17, %3
  %106 = phi i32 [ %104, %103 ], [ -25, %3 ], [ -95, %34 ], [ -95, %26 ], [ -95, %22 ], [ -95, %17 ]
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  switch i32 %1, label %21 [
    i32 -2146671085, label %4
    i32 1074554389, label %14
    i32 -1073125866, label %15
    i32 -1068472809, label %16
    i32 -1069521384, label %17
    i32 -1069521383, label %18
    i32 -1065327078, label %19
    i32 -2146408933, label %20
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @ubifs_enable_encryption(ptr noundef %10) #5
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 -95, i32 %11
  br label %21

14:                                               ; preds = %3
  br label %21

15:                                               ; preds = %3
  br label %21

16:                                               ; preds = %3
  br label %21

17:                                               ; preds = %3
  br label %21

18:                                               ; preds = %3
  br label %21

19:                                               ; preds = %3
  br label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %19, %18, %17, %16, %15, %14, %4, %3
  %22 = phi i32 [ -95, %20 ], [ -95, %19 ], [ -95, %18 ], [ -95, %17 ], [ -95, %16 ], [ -95, %15 ], [ -95, %14 ], [ -25, %3 ], [ %13, %4 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_enable_encryption(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_budget_space(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_release_budget(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }

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
