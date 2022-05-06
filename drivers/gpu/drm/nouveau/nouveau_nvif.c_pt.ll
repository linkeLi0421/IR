; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_nvif.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_nvif.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvif_notify_req_v0 = type { i8, i8, [5 x i8], i8, i64, [0 x i8] }

@.str = private unnamed_addr constant [5 x i8] c"nvkm\00", align 1
@nvif_driver_nvkm = dso_local local_unnamed_addr constant %struct.nvif_driver { ptr @.str, ptr @nvkm_client_driver_init, ptr null, ptr @nvkm_client_suspend, ptr @nvkm_client_resume, ptr @nvkm_client_ioctl, ptr @nvkm_client_map, ptr @nvkm_client_unmap, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"drivers/gpu/drm/nouveau/nouveau_nvif.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_client_driver_init(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call i32 @nvkm_client_new(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @nvkm_client_ntfy, ptr noundef %4) #2
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_client_suspend(ptr noundef %0) #0 {
  %2 = tail call i32 @nvkm_object_fini(ptr noundef %0, i1 noundef zeroext true) #2
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_client_resume(ptr noundef %0) #0 {
  %2 = tail call i32 @nvkm_object_init(ptr noundef %0) #2
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_client_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call i32 @nvkm_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_client_map(ptr nocapture noundef readnone %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = trunc i64 %1 to i32
  %5 = tail call ptr @ioremap(i32 noundef %4, i32 noundef %2) #2
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_client_unmap(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call void @iounmap(ptr noundef %1) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_client_new(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_client_ntfy(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %1, 16
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = load i8, ptr %0, align 8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.nvif_notify_req_v0, ptr %0, i32 0, i32 3
  %11 = load i8, ptr %10, align 1
  switch i8 %11, label %17 [
    i8 0, label %13
    i8 1, label %15
  ]

12:                                               ; preds = %6, %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 85, i32 noundef 9, ptr noundef null) #2
  br label %18

13:                                               ; preds = %9
  %14 = tail call i32 @nvif_notify(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %3) #2
  br label %18

15:                                               ; preds = %9
  %16 = tail call i32 @usif_notify(ptr noundef %0, i32 noundef 16, ptr noundef %2, i32 noundef %3) #2
  br label %18

17:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 95, i32 noundef 9, ptr noundef null) #2
  br label %18

18:                                               ; preds = %17, %15, %13, %12
  %19 = phi i32 [ 0, %17 ], [ %16, %15 ], [ %14, %13 ], [ 0, %12 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usif_notify(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
