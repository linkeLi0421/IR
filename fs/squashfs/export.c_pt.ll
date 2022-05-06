; ModuleID = '/llk/IR/fs/squashfs/export.c_pt.bc'
source_filename = "../fs/squashfs/export.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }
%struct.anon.37 = type { i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.33, %struct.list_head, %struct.list_head, %union.anon.34 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.31 }
%union.anon.31 = type { i64 }
%union.anon.33 = type { %struct.list_head }
%union.anon.34 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.27, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.28, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.29, ptr, %struct.address_space, %struct.list_head, %union.anon.30, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.27 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.28 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.29 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.30 = type { ptr }

@squashfs_export_ops = dso_local local_unnamed_addr constant %struct.export_operations { ptr null, ptr @squashfs_fh_to_dentry, ptr @squashfs_fh_to_parent, ptr null, ptr @squashfs_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @squashfs_read_inode_lookup_table(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = shl i32 %3, 3
  %6 = add i32 %5, 8191
  %7 = lshr i32 %6, 13
  %8 = shl nuw nsw i32 %7, 3
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %40, label %10

10:                                               ; preds = %4
  %11 = zext i32 %8 to i64
  %12 = sub i64 %2, %1
  %13 = icmp eq i64 %12, %11
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = tail call ptr @squashfs_read_table(ptr noundef %0, i64 noundef %1, i32 noundef %8) #3
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %40, label %17

17:                                               ; preds = %14
  %18 = add nsw i32 %7, -1
  br label %19

19:                                               ; preds = %22, %17
  %20 = phi i32 [ %25, %22 ], [ 0, %17 ]
  %21 = icmp eq i32 %20, %18
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  %23 = getelementptr i64, ptr %15, i32 %20
  %24 = load i64, ptr %23, align 8
  %25 = add i32 %20, 1
  %26 = getelementptr i64, ptr %15, i32 %25
  %27 = load i64, ptr %26, align 8
  %28 = icmp ule i64 %27, %24
  %29 = sub i64 %27, %24
  %30 = icmp ugt i64 %29, 8194
  %31 = or i1 %28, %30
  br i1 %31, label %39, label %19

32:                                               ; preds = %19
  %33 = getelementptr i64, ptr %15, i32 %18
  %34 = load i64, ptr %33, align 8
  %35 = icmp uge i64 %34, %1
  %36 = sub i64 %1, %34
  %37 = icmp ugt i64 %36, 8194
  %38 = or i1 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32, %22
  tail call void @kfree(ptr noundef %15) #3
  br label %40

40:                                               ; preds = %39, %32, %14, %10, %4
  %41 = phi ptr [ %15, %14 ], [ %15, %32 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -22 to ptr), %10 ], [ inttoptr (i32 -22 to ptr), %39 ]
  ret ptr %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_read_table(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @squashfs_fh_to_dentry(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = add i32 %3, -3
  %9 = icmp ult i32 %8, -2
  %10 = icmp slt i32 %2, 2
  %11 = or i1 %10, %9
  br i1 %11, label %39, label %12

12:                                               ; preds = %4
  %13 = load i32, ptr %1, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  %16 = add i32 %13, -1
  %17 = shl i32 %16, 3
  %18 = lshr i32 %17, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #3
  %19 = and i32 %17, 8184
  store i32 %19, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #3
  store i64 0, ptr %7, align 8, !annotation !8
  %20 = icmp eq i32 %13, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.squashfs_sb_info, ptr %15, i32 0, i32 20
  %23 = load i32, ptr %22, align 8
  %24 = icmp ult i32 %16, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.squashfs_sb_info, ptr %15, i32 0, i32 13
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i64, ptr %27, i32 %18
  %29 = load i64, ptr %28, align 8
  store i64 %29, ptr %6, align 8
  %30 = call i32 @squashfs_read_metadata(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 8) #3
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %21, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  br label %39

33:                                               ; preds = %25
  %34 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  %35 = icmp sgt i64 %34, -1
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = call ptr @squashfs_iget(ptr noundef %0, i64 noundef %34, i32 noundef %13) #3
  %38 = call ptr @d_obtain_alias(ptr noundef %37) #3
  br label %39

39:                                               ; preds = %36, %33, %32, %4
  %40 = phi ptr [ null, %4 ], [ %38, %36 ], [ inttoptr (i32 -2 to ptr), %33 ], [ inttoptr (i32 -2 to ptr), %32 ]
  ret ptr %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @squashfs_fh_to_parent(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = icmp ne i32 %3, 2
  %9 = icmp slt i32 %2, 4
  %10 = or i1 %9, %8
  br i1 %10, label %39, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.anon.37, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  %16 = add i32 %13, -1
  %17 = shl i32 %16, 3
  %18 = lshr i32 %17, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #3
  %19 = and i32 %17, 8184
  store i32 %19, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #3
  store i64 0, ptr %7, align 8, !annotation !8
  %20 = icmp eq i32 %13, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.squashfs_sb_info, ptr %15, i32 0, i32 20
  %23 = load i32, ptr %22, align 8
  %24 = icmp ult i32 %16, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.squashfs_sb_info, ptr %15, i32 0, i32 13
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i64, ptr %27, i32 %18
  %29 = load i64, ptr %28, align 8
  store i64 %29, ptr %6, align 8
  %30 = call i32 @squashfs_read_metadata(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 8) #3
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %21, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  br label %39

33:                                               ; preds = %25
  %34 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  %35 = icmp sgt i64 %34, -1
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = call ptr @squashfs_iget(ptr noundef %0, i64 noundef %34, i32 noundef %13) #3
  %38 = call ptr @d_obtain_alias(ptr noundef %37) #3
  br label %39

39:                                               ; preds = %36, %33, %32, %4
  %40 = phi ptr [ null, %4 ], [ %38, %36 ], [ inttoptr (i32 -2 to ptr), %33 ], [ inttoptr (i32 -2 to ptr), %32 ]
  ret ptr %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @squashfs_get_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -8
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = add i32 %8, -1
  %14 = shl i32 %13, 3
  %15 = lshr i32 %14, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  %16 = and i32 %14, 8184
  store i32 %16, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #3
  store i64 0, ptr %4, align 8, !annotation !8
  %17 = icmp eq i32 %8, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.squashfs_sb_info, ptr %12, i32 0, i32 20
  %20 = load i32, ptr %19, align 8
  %21 = icmp ult i32 %13, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.squashfs_sb_info, ptr %12, i32 0, i32 13
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i64, ptr %24, i32 %15
  %26 = load i64, ptr %25, align 8
  store i64 %26, ptr %3, align 8
  %27 = call i32 @squashfs_read_metadata(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 8) #3
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %18, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  br label %36

30:                                               ; preds = %22
  %31 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  %32 = icmp sgt i64 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = call ptr @squashfs_iget(ptr noundef %10, i64 noundef %31, i32 noundef %8) #3
  %35 = call ptr @d_obtain_alias(ptr noundef %34) #3
  br label %36

36:                                               ; preds = %33, %30, %29
  %37 = phi ptr [ %35, %33 ], [ inttoptr (i32 -2 to ptr), %30 ], [ inttoptr (i32 -2 to ptr), %29 ]
  ret ptr %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_iget(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_read_metadata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
