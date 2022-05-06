; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvif/user.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/user.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_user_func = type { ptr, ptr }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_sclass = type { i32, i32, i32 }

@nvif_userc361 = external dso_local constant %struct.nvif_user_func, align 4
@.str = private unnamed_addr constant [13 x i8] c"nvifUsermode\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvif_user_dtor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvif_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvif_device, ptr %0, i32 0, i32 4, i32 1
  tail call void @nvif_object_dtor(ptr noundef %6) #3
  store ptr null, ptr %2, align 8
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_user_ctor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.nvif_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %39

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store ptr null, ptr %3, align 4, !annotation !8
  %8 = call i32 @nvif_object_sclass_get(ptr noundef %0, ptr noundef nonnull %3) #3
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = icmp eq i32 %8, 0
  %12 = load ptr, ptr %3, align 4
  br i1 %11, label %14, label %15

13:                                               ; preds = %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  br label %39

14:                                               ; preds = %28, %10
  call void @nvif_object_sclass_put(ptr noundef nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  br label %39

15:                                               ; preds = %28, %10
  %16 = phi i32 [ %29, %28 ], [ 0, %10 ]
  %17 = getelementptr %struct.nvif_sclass, ptr %12, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 50017
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = getelementptr %struct.nvif_sclass, ptr %12, i32 %16, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr %struct.nvif_sclass, ptr %12, i32 %16, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp slt i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %20, %15
  %29 = add nuw nsw i32 %16, 1
  %30 = icmp eq i32 %29, %8
  br i1 %30, label %14, label %15

31:                                               ; preds = %24
  call void @nvif_object_sclass_put(ptr noundef nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  %32 = icmp eq ptr %1, null
  %33 = select i1 %32, ptr @.str, ptr %1
  %34 = getelementptr inbounds %struct.nvif_device, ptr %0, i32 0, i32 4, i32 1
  %35 = call i32 @nvif_object_ctor(ptr noundef %0, ptr noundef %33, i32 noundef 0, i32 noundef 50017, ptr noundef null, i32 noundef 0, ptr noundef %34) #3
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 @nvif_object_map(ptr noundef %34, ptr noundef null, i32 noundef 0) #3
  store ptr @nvif_userc361, ptr %4, align 8
  br label %39

39:                                               ; preds = %37, %31, %14, %13, %2
  %40 = phi i32 [ 0, %37 ], [ 0, %2 ], [ %35, %31 ], [ -19, %13 ], [ -19, %14 ]
  ret i32 %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_sclass_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_sclass_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_map(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
