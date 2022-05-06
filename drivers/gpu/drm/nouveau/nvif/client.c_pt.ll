; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvif/client.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/client.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nvif_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvif_client_v0 = type { i8, [7 x i8], i64, [32 x i8] }
%struct.anon.0 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_nop_v0 }
%struct.nvif_ioctl_v0 = type { i8, i8, [4 x i8], i8, i8, i64, i64, [0 x i8] }
%struct.nvif_ioctl_nop_v0 = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"nvifClient\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_client_ioctl(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvif_client, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvif_driver, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %7(ptr noundef %9, ptr noundef %1, i32 noundef %2, ptr noundef null) #5
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_client_suspend(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvif_client, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvif_driver, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %5(ptr noundef %7) #5
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_client_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvif_client, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvif_driver, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %5(ptr noundef %7) #5
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvif_client_dtor(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @nvif_object_dtor(ptr noundef %0) #5
  %2 = getelementptr inbounds %struct.nvif_client, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvif_driver, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void %7(ptr noundef %11) #5
  br label %12

12:                                               ; preds = %9, %5
  store ptr null, ptr %2, align 8
  br label %13

13:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_client_ctor(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.nvif_client_v0, align 8
  %6 = alloca %struct.anon.0, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #5
  %7 = getelementptr inbounds %struct.nvif_client_v0, ptr %5, i32 0, i32 2
  store i64 0, ptr %5, align 8
  store i64 %2, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i32 32, i1 false)
  %8 = getelementptr inbounds %struct.nvif_client_v0, ptr %5, i32 0, i32 3
  %9 = call ptr @strncpy(ptr noundef %8, ptr noundef %1, i32 noundef 32)
  %10 = icmp eq ptr %0, %3
  %11 = select i1 %10, ptr null, ptr %0
  %12 = icmp eq ptr %1, null
  %13 = select i1 %12, ptr @.str, ptr %1
  %14 = call i32 @nvif_object_ctor(ptr noundef %11, ptr noundef %13, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 48, ptr noundef %3) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.nvif_object, ptr %3, i32 0, i32 1
  store ptr %3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nvif_object, ptr %3, i32 0, i32 3
  store i32 -1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nvif_client, ptr %3, i32 0, i32 3
  store i8 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.nvif_client, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvif_client, ptr %3, i32 0, i32 1
  store ptr %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.nvif_driver, ptr %21, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvif_object, ptr %3, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 %24(ptr noundef %26, ptr noundef nonnull %6, i32 noundef 32, ptr noundef null) #5
  %28 = getelementptr inbounds %struct.anon.0, ptr %6, i32 0, i32 1
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nvif_client, ptr %3, i32 0, i32 2
  store i64 %29, ptr %30, align 8
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %16
  call void @nvif_object_dtor(ptr noundef %3) #5
  %33 = load ptr, ptr %22, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.nvif_driver, ptr %33, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %25, align 4
  call void %37(ptr noundef %40) #5
  br label %41

41:                                               ; preds = %39, %35
  store ptr null, ptr %22, align 8
  br label %42

42:                                               ; preds = %41, %32, %16, %4
  %43 = phi i32 [ %14, %4 ], [ 0, %16 ], [ %27, %32 ], [ %27, %41 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #5
  ret i32 %43
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
