; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extdev.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/extdev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvbios_extdev_func = type { i8, i8, i8 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nvbios_extdev_skip_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #3
  store i8 0, ptr %2, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #3
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #3
  %6 = call fastcc zeroext i16 @extdev_table(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %7 = icmp ne i16 %6, 0
  %8 = load i8, ptr %2, align 1
  %9 = icmp eq i8 %8, 64
  %10 = select i1 %7, i1 %9, i1 false
  %11 = load i8, ptr %3, align 1
  %12 = icmp ugt i8 %11, 4
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = zext i8 %11 to i32
  %16 = zext i16 %6 to i32
  %17 = add nuw nsw i32 %16, 4
  %18 = sub nsw i32 %17, %15
  %19 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %18) #3
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14, %1
  br label %23

23:                                               ; preds = %22, %14
  %24 = phi i1 [ false, %22 ], [ true, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #3
  ret i1 %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @extdev_table(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #3
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #3
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #3
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #3
  store i8 0, ptr %9, align 1, !annotation !8
  %10 = call zeroext i16 @dcb_table(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #3
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %5
  %13 = load i8, ptr %6, align 1
  switch i8 %13, label %31 [
    i8 65, label %14
    i8 64, label %14
    i8 48, label %14
  ]

14:                                               ; preds = %12, %12, %12
  %15 = zext i16 %10 to i32
  %16 = add nuw nsw i32 %15, 18
  %17 = call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %16) #3
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = zext i16 %17 to i32
  %21 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %20) #3
  store i8 %21, ptr %1, align 1
  %22 = add nuw nsw i32 %20, 1
  %23 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %22) #3
  store i8 %23, ptr %2, align 1
  %24 = add nuw nsw i32 %20, 2
  %25 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %24) #3
  store i8 %25, ptr %4, align 1
  %26 = add nuw nsw i32 %20, 3
  %27 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %26) #3
  store i8 %27, ptr %3, align 1
  %28 = load i8, ptr %2, align 1
  %29 = zext i8 %28 to i16
  %30 = add i16 %17, %29
  br label %31

31:                                               ; preds = %19, %14, %12, %5
  %32 = phi i16 [ %30, %19 ], [ 0, %12 ], [ 0, %5 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #3
  ret i16 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_extdev_parse(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #3
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #3
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #3
  store i8 0, ptr %5, align 1, !annotation !8
  %8 = call fastcc zeroext i16 @extdev_table(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %5) #3
  %9 = icmp ne i16 %8, 0
  %10 = load i8, ptr %5, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp sgt i32 %11, %1
  %13 = select i1 %9, i1 %12, i1 false
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #3
  br label %33

15:                                               ; preds = %3
  %16 = load i8, ptr %7, align 1
  %17 = zext i8 %16 to i32
  %18 = mul i32 %17, %1
  %19 = trunc i32 %18 to i16
  %20 = add i16 %8, %19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #3
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %15
  %23 = zext i16 %20 to i32
  %24 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %23) #3
  store i8 %24, ptr %2, align 1
  %25 = add nuw nsw i32 %23, 1
  %26 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %25) #3
  %27 = getelementptr inbounds %struct.nvbios_extdev_func, ptr %2, i32 0, i32 1
  store i8 %26, ptr %27, align 1
  %28 = add nuw nsw i32 %23, 2
  %29 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %28) #3
  %30 = lshr i8 %29, 4
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.nvbios_extdev_func, ptr %2, i32 0, i32 2
  store i8 %31, ptr %32, align 1
  br label %33

33:                                               ; preds = %22, %15, %14
  %34 = phi i32 [ 0, %22 ], [ -22, %15 ], [ -22, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #3
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_extdev_find(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #3
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #3
  store i8 0, ptr %7, align 1, !annotation !8
  %8 = getelementptr inbounds %struct.nvbios_extdev_func, ptr %2, i32 0, i32 1
  %9 = getelementptr inbounds %struct.nvbios_extdev_func, ptr %2, i32 0, i32 2
  br label %10

10:                                               ; preds = %25, %3
  %11 = phi i8 [ 0, %3 ], [ %26, %25 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #3
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #3
  store i8 0, ptr %5, align 1, !annotation !8
  %12 = call fastcc zeroext i16 @extdev_table(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %5) #3
  %13 = icmp ne i16 %12, 0
  %14 = load i8, ptr %5, align 1
  %15 = icmp ugt i8 %14, %11
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #3
  br label %38

18:                                               ; preds = %10
  %19 = zext i8 %11 to i16
  %20 = load i8, ptr %7, align 1
  %21 = zext i8 %20 to i16
  %22 = mul nuw i16 %21, %19
  %23 = add i16 %22, %12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #3
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %18
  %26 = add nuw i8 %11, 1
  %27 = zext i16 %23 to i32
  %28 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %27) #3
  store i8 %28, ptr %2, align 1
  %29 = add nuw nsw i32 %27, 1
  %30 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %29) #3
  store i8 %30, ptr %8, align 1
  %31 = add nuw nsw i32 %27, 2
  %32 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %31) #3
  %33 = lshr i8 %32, 4
  %34 = and i8 %33, 1
  store i8 %34, ptr %9, align 1
  %35 = load i8, ptr %2, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %38, label %10

38:                                               ; preds = %25, %18, %17
  %39 = phi i32 [ -22, %17 ], [ -22, %18 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #3
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

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
