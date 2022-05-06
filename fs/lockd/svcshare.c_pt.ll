; ModuleID = '/llk/IR/fs/lockd/svcshare.c_pt.bc'
source_filename = "../fs/lockd/svcshare.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nlm_args = type { %struct.nlm_cookie, %struct.nlm_lock, i32, i32, i32, i32, i32, i32 }
%struct.nlm_cookie = type { [32 x i8], i32 }
%struct.nlm_lock = type { ptr, i32, %struct.nfs_fh, %struct.xdr_netobj, i32, %struct.file_lock }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.xdr_netobj = type { i32, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.123 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.123 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.nlm_file = type { %struct.hlist_node, %struct.nfs_fh, [2 x ptr], ptr, %struct.list_head, i32, i32, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nlm_share = type { ptr, ptr, ptr, %struct.xdr_netobj, i32, i32 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nlmsvc_share_file(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nlm_args, ptr %2, i32 0, i32 1, i32 3
  %5 = getelementptr inbounds %struct.nlm_file, ptr %1, i32 0, i32 3
  %6 = getelementptr inbounds %struct.nlm_args, ptr %2, i32 0, i32 1, i32 3, i32 1
  %7 = getelementptr inbounds %struct.nlm_args, ptr %2, i32 0, i32 6
  %8 = getelementptr inbounds %struct.nlm_args, ptr %2, i32 0, i32 7
  br label %9

9:                                                ; preds = %34, %3
  %10 = phi ptr [ %5, %3 ], [ %11, %34 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nlm_share, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nlm_share, ptr %11, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %4, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.nlm_share, ptr %11, i32 0, i32 3, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %6, align 4
  %26 = tail call i32 @bcmp(ptr %24, ptr %25, i32 %19) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %55, label %28

28:                                               ; preds = %22, %17, %13
  %29 = load i32, ptr %7, align 8
  %30 = getelementptr inbounds %struct.nlm_share, ptr %11, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %28
  %35 = load i32, ptr %8, align 4
  %36 = getelementptr inbounds %struct.nlm_share, ptr %11, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %9, label %61

40:                                               ; preds = %9
  %41 = load i32, ptr %4, align 4
  %42 = add i32 %41, 28
  %43 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %42, i32 noundef 3264) #6
  %44 = icmp eq ptr %43, null
  br i1 %44, label %61, label %45

45:                                               ; preds = %40
  %46 = load i32, ptr %4, align 4
  %47 = getelementptr %struct.nlm_share, ptr %43, i32 1
  %48 = load ptr, ptr %6, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %47, ptr align 1 %48, i32 %46, i1 false)
  %49 = getelementptr inbounds %struct.nlm_share, ptr %43, i32 0, i32 2
  store ptr %1, ptr %49, align 8
  %50 = getelementptr inbounds %struct.nlm_share, ptr %43, i32 0, i32 1
  store ptr %0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.nlm_share, ptr %43, i32 0, i32 3
  %52 = getelementptr inbounds %struct.nlm_share, ptr %43, i32 0, i32 3, i32 1
  store ptr %47, ptr %52, align 16
  %53 = load i32, ptr %4, align 4
  store i32 %53, ptr %51, align 4
  %54 = load ptr, ptr %5, align 4
  store ptr %54, ptr %43, align 64
  store ptr %43, ptr %5, align 4
  br label %55

55:                                               ; preds = %45, %22
  %56 = phi ptr [ %43, %45 ], [ %11, %22 ]
  %57 = load i32, ptr %7, align 8
  %58 = getelementptr inbounds %struct.nlm_share, ptr %56, i32 0, i32 4
  store i32 %57, ptr %58, align 4
  %59 = load i32, ptr %8, align 4
  %60 = getelementptr inbounds %struct.nlm_share, ptr %56, i32 0, i32 5
  store i32 %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %55, %40, %34, %28
  %62 = phi i32 [ 0, %55 ], [ 33554432, %40 ], [ 16777216, %34 ], [ 16777216, %28 ]
  ret i32 %62
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nlmsvc_unshare_file(ptr noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nlm_args, ptr %2, i32 0, i32 1, i32 3
  %5 = getelementptr inbounds %struct.nlm_file, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nlm_args, ptr %2, i32 0, i32 1, i32 3, i32 1
  br label %10

10:                                               ; preds = %29, %8
  %11 = phi ptr [ %6, %8 ], [ %30, %29 ]
  %12 = phi ptr [ %5, %8 ], [ %11, %29 ]
  %13 = getelementptr inbounds %struct.nlm_share, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.nlm_share, ptr %11, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %4, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.nlm_share, ptr %11, i32 0, i32 3, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %9, align 4
  %25 = tail call i32 @bcmp(ptr %23, ptr %24, i32 %18) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load ptr, ptr %11, align 4
  store ptr %28, ptr %12, align 4
  tail call void @kfree(ptr noundef nonnull %11) #5
  br label %32

29:                                               ; preds = %21, %16, %10
  %30 = load ptr, ptr %11, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %10

32:                                               ; preds = %29, %27, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nlmsvc_traverse_shares(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nlm_file, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %9

7:                                                ; preds = %12
  %8 = icmp eq ptr %18, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %18, %7 ], [ %5, %3 ]
  %11 = phi ptr [ %13, %7 ], [ %4, %3 ]
  br label %12

12:                                               ; preds = %19, %9
  %13 = phi ptr [ %10, %9 ], [ %20, %19 ]
  %14 = getelementptr inbounds %struct.nlm_share, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %2(ptr noundef %15, ptr noundef %0) #5
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %13, align 4
  br i1 %17, label %7, label %19

19:                                               ; preds = %12
  store ptr %18, ptr %11, align 4
  tail call void @kfree(ptr noundef nonnull %13) #5
  %20 = load ptr, ptr %11, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %12

22:                                               ; preds = %19, %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
