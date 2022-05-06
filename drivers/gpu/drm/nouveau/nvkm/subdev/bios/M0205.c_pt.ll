; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/M0205.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/M0205.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0205Te(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %8, i8 0, i32 6, i1 false), !annotation !8
  %9 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 77, ptr noundef nonnull %8) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bit_entry, ptr %8, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 2
  %15 = getelementptr inbounds %struct.bit_entry, ptr %8, i32 0, i32 2
  %16 = load i16, ptr %15, align 2
  %17 = icmp ugt i16 %16, 8
  %18 = select i1 %14, i1 %17, i1 false
  br i1 %18, label %19, label %40

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.bit_entry, ptr %8, i32 0, i32 3
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = add nuw nsw i32 %22, 5
  %24 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %23) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %19
  %27 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %24) #4
  store i8 %27, ptr %1, align 1
  %28 = icmp eq i8 %27, 16
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = add i32 %24, 1
  %31 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %30) #4
  store i8 %31, ptr %2, align 1
  %32 = add i32 %24, 2
  %33 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %32) #4
  store i8 %33, ptr %4, align 1
  %34 = add i32 %24, 3
  %35 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %34) #4
  store i8 %35, ptr %6, align 1
  %36 = add i32 %24, 4
  %37 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %36) #4
  store i8 %37, ptr %5, align 1
  %38 = add i32 %24, 5
  %39 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %38) #4
  store i8 %39, ptr %3, align 1
  br label %40

40:                                               ; preds = %29, %26, %19, %11, %7
  %41 = phi i32 [ %24, %29 ], [ 0, %19 ], [ 0, %26 ], [ 0, %7 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #4
  ret i32 %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0205Tp(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = tail call i32 @nvbios_M0205Te(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  store i16 0, ptr %7, align 2
  %10 = icmp ne i32 %9, 0
  %11 = load i8, ptr %1, align 1
  %12 = icmp eq i8 %11, 16
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = add i32 %9, 6
  %16 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %15) #4
  store i16 %16, ptr %7, align 2
  br label %17

17:                                               ; preds = %14, %8
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0205Ee(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #4
  store i8 0, ptr %8, align 1, !annotation !8
  %9 = call i32 @nvbios_M0205Te(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %6
  %12 = load i8, ptr %4, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sgt i32 %13, %1
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load i8, ptr %3, align 1
  %17 = zext i8 %16 to i32
  %18 = add i32 %9, %17
  %19 = load i8, ptr %5, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, ptr %7, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, ptr %8, align 1
  %24 = zext i8 %23 to i32
  %25 = mul nuw nsw i32 %24, %22
  %26 = add nuw nsw i32 %25, %20
  %27 = mul i32 %26, %1
  %28 = add i32 %18, %27
  store i8 %19, ptr %3, align 1
  store i8 %21, ptr %4, align 1
  store i8 %23, ptr %5, align 1
  br label %29

29:                                               ; preds = %15, %11, %6
  %30 = phi i32 [ %28, %15 ], [ 0, %11 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0205Ep(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #4
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #4
  store i8 0, ptr %9, align 1, !annotation !8
  %10 = call i32 @nvbios_M0205Te(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %8, ptr noundef nonnull %9) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = load i8, ptr %4, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp sgt i32 %14, %1
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  br label %38

17:                                               ; preds = %12
  %18 = load i8, ptr %3, align 1
  %19 = zext i8 %18 to i32
  %20 = add i32 %10, %19
  %21 = load i8, ptr %5, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, ptr %8, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, ptr %9, align 1
  %26 = zext i8 %25 to i32
  %27 = mul nuw nsw i32 %26, %24
  %28 = add nuw nsw i32 %27, %22
  %29 = mul i32 %28, %1
  %30 = add i32 %20, %29
  store i8 %21, ptr %3, align 1
  store i8 %23, ptr %4, align 1
  store i8 %25, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  store i8 0, ptr %6, align 1
  %31 = icmp ne i32 %30, 0
  %32 = load i8, ptr %2, align 1
  %33 = icmp eq i8 %32, 16
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %41

35:                                               ; preds = %17
  %36 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %30) #4
  %37 = and i8 %36, 15
  br label %38

38:                                               ; preds = %35, %16
  %39 = phi i8 [ 0, %16 ], [ %37, %35 ]
  %40 = phi i32 [ 0, %16 ], [ %30, %35 ]
  store i8 %39, ptr %6, align 1
  br label %41

41:                                               ; preds = %38, %17
  %42 = phi i32 [ 0, %17 ], [ %40, %38 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0205Se(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #4
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #4
  store i8 0, ptr %9, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  store i8 0, ptr %7, align 1, !annotation !8
  %10 = call i32 @nvbios_M0205Te(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %7) #4
  %11 = icmp ne i32 %10, 0
  %12 = load i8, ptr %8, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sgt i32 %13, %1
  %15 = select i1 %11, i1 %14, i1 false
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  br label %38

17:                                               ; preds = %5
  %18 = load i8, ptr %4, align 1
  %19 = zext i8 %18 to i32
  %20 = add i32 %10, %19
  %21 = load i8, ptr %9, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, ptr %6, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, ptr %7, align 1
  %26 = zext i8 %25 to i32
  %27 = mul nuw nsw i32 %26, %24
  %28 = add nuw nsw i32 %27, %22
  %29 = mul i32 %28, %1
  %30 = add i32 %20, %29
  store i8 %21, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  %31 = icmp ne i32 %30, 0
  %32 = icmp sgt i32 %24, %2
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %38

34:                                               ; preds = %17
  %35 = add i32 %30, %22
  %36 = mul i32 %26, %2
  %37 = add i32 %35, %36
  store i8 %25, ptr %4, align 1
  br label %38

38:                                               ; preds = %34, %17, %16
  %39 = phi i32 [ %37, %34 ], [ 0, %17 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0205Sp(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #4
  store i8 0, ptr %9, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #4
  store i8 0, ptr %10, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #4
  store i8 0, ptr %8, align 1, !annotation !8
  %11 = call i32 @nvbios_M0205Te(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %8) #4
  %12 = icmp ne i32 %11, 0
  %13 = load i8, ptr %9, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp sgt i32 %14, %1
  %16 = select i1 %12, i1 %15, i1 false
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  br label %35

18:                                               ; preds = %6
  %19 = load i8, ptr %4, align 1
  %20 = zext i8 %19 to i32
  %21 = add i32 %11, %20
  %22 = load i8, ptr %10, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, ptr %7, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, ptr %8, align 1
  %27 = zext i8 %26 to i32
  %28 = mul nuw nsw i32 %27, %25
  %29 = add nuw nsw i32 %28, %23
  %30 = mul i32 %29, %1
  %31 = add i32 %21, %30
  store i8 %22, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  %32 = icmp ne i32 %31, 0
  %33 = icmp sgt i32 %25, %2
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %36, label %35

35:                                               ; preds = %18, %17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #4
  br label %46

36:                                               ; preds = %18
  %37 = mul i32 %27, %2
  %38 = add i32 %37, %23
  %39 = add i32 %38, %31
  store i8 %26, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #4
  store i8 0, ptr %5, align 1
  %40 = icmp ne i32 %39, 0
  %41 = load i8, ptr %3, align 1
  %42 = icmp eq i8 %41, 16
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %39) #4
  br label %46

46:                                               ; preds = %44, %35
  %47 = phi i8 [ 0, %35 ], [ %45, %44 ]
  %48 = phi i32 [ 0, %35 ], [ %39, %44 ]
  store i8 %47, ptr %5, align 1
  br label %49

49:                                               ; preds = %46, %36
  %50 = phi i32 [ 0, %36 ], [ %48, %46 ]
  ret i32 %50
}

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
!8 = !{!"auto-init"}
