; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvif/device.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/device.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv_device_time_v0 = type { i8, [7 x i8], i64 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_user_func = type { ptr, ptr }

@nvif_device_time.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [38 x i8] c"drivers/gpu/drm/nouveau/nvif/device.c\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"nvifDevice\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @nvif_device_time(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.nv_device_time_v0, align 8
  %3 = getelementptr inbounds %struct.nvif_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false)
  %7 = call i32 @nvif_object_mthd(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2, i32 noundef 16) #4
  %8 = icmp ne i32 %7, 0
  %9 = load i1, ptr @nvif_device_time.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %6
  store i1 true, ptr @nvif_device_time.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 34, i32 noundef 9, ptr noundef null) #4
  br label %13

13:                                               ; preds = %12, %6
  %14 = getelementptr inbounds %struct.nv_device_time_v0, ptr %2, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #4
  br label %20

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.nvif_user_func, ptr %4, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i64 %18(ptr noundef %3) #4
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i64 [ %19, %16 ], [ %15, %13 ]
  ret i64 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_mthd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvif_device_dtor(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @nvif_user_dtor(ptr noundef %0) #4
  %2 = getelementptr inbounds %struct.nvif_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #4
  store ptr null, ptr %2, align 8
  tail call void @nvif_object_dtor(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_user_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_device_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq ptr %1, null
  %9 = select i1 %8, ptr @.str.1, ptr %1
  %10 = tail call i32 @nvif_object_ctor(ptr noundef %0, ptr noundef %9, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #4
  %11 = getelementptr inbounds %struct.nvif_device, ptr %6, i32 0, i32 2
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %struct.nvif_device, ptr %6, i32 0, i32 4
  store ptr null, ptr %12, align 8
  %13 = icmp eq i32 %10, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.nvif_device, ptr %6, i32 0, i32 1
  store i8 0, ptr %15, align 8
  %16 = tail call i32 @nvif_object_mthd(ptr noundef %6, i32 noundef 0, ptr noundef %15, i32 noundef 104) #4
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi i32 [ %16, %14 ], [ %10, %7 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
