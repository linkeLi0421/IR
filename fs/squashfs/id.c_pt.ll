; ModuleID = '/llk/IR/fs/squashfs/id.c_pt.bc'
source_filename = "../fs/squashfs/id.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @squashfs_get_id(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = shl i32 %1, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  %10 = and i32 %9, 8188
  store i32 %10, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #3
  store i32 0, ptr %6, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.squashfs_sb_info, ptr %8, i32 0, i32 23
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = lshr i32 %9, 13
  %16 = getelementptr inbounds %struct.squashfs_sb_info, ptr %8, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i64, ptr %17, i32 %15
  %19 = load i64, ptr %18, align 8
  store i64 %19, ptr %5, align 8
  %20 = call i32 @squashfs_read_metadata(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 4) #3
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = load i32, ptr %6, align 4
  store i32 %23, ptr %2, align 4
  br label %24

24:                                               ; preds = %22, %14, %3
  %25 = phi i32 [ 0, %22 ], [ -22, %3 ], [ %20, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_read_metadata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @squashfs_read_id_index_table(ptr noundef %0, i64 noundef %1, i64 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = zext i16 %3 to i32
  %6 = shl nuw nsw i32 %5, 2
  %7 = add nuw nsw i32 %6, 8191
  %8 = lshr i32 %7, 13
  %9 = shl nuw nsw i32 %8, 3
  %10 = icmp eq i16 %3, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %4
  %12 = zext i32 %9 to i64
  %13 = sub i64 %2, %1
  %14 = icmp eq i64 %13, %12
  br i1 %14, label %15, label %41

15:                                               ; preds = %11
  %16 = tail call ptr @squashfs_read_table(ptr noundef %0, i64 noundef %1, i32 noundef %9) #3
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %41, label %18

18:                                               ; preds = %15
  %19 = add nsw i32 %8, -1
  br label %20

20:                                               ; preds = %23, %18
  %21 = phi i32 [ %26, %23 ], [ 0, %18 ]
  %22 = icmp eq i32 %21, %19
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = getelementptr i64, ptr %16, i32 %21
  %25 = load i64, ptr %24, align 8
  %26 = add i32 %21, 1
  %27 = getelementptr i64, ptr %16, i32 %26
  %28 = load i64, ptr %27, align 8
  %29 = icmp ule i64 %28, %25
  %30 = sub i64 %28, %25
  %31 = icmp ugt i64 %30, 8194
  %32 = or i1 %29, %31
  br i1 %32, label %40, label %20

33:                                               ; preds = %20
  %34 = getelementptr i64, ptr %16, i32 %19
  %35 = load i64, ptr %34, align 8
  %36 = icmp uge i64 %35, %1
  %37 = sub i64 %1, %35
  %38 = icmp ugt i64 %37, 8194
  %39 = or i1 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %23
  tail call void @kfree(ptr noundef %16) #3
  br label %41

41:                                               ; preds = %40, %33, %15, %11, %4
  %42 = phi ptr [ %16, %15 ], [ %16, %33 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -22 to ptr), %11 ], [ inttoptr (i32 -22 to ptr), %40 ]
  ret ptr %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_read_table(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

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
