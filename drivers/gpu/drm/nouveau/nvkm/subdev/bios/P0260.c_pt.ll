; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/P0260.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/P0260.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_P0260Te(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %8, i8 0, i32 6, i1 false), !annotation !8
  %9 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 80, ptr noundef nonnull %8) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bit_entry, ptr %8, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 2
  %15 = getelementptr inbounds %struct.bit_entry, ptr %8, i32 0, i32 2
  %16 = load i16, ptr %15, align 2
  %17 = icmp ugt i16 %16, 99
  %18 = select i1 %14, i1 %17, i1 false
  br i1 %18, label %19, label %36

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.bit_entry, ptr %8, i32 0, i32 3
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = add nuw nsw i32 %22, 96
  %24 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %23) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %19
  %27 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %24) #4
  store i8 %27, ptr %1, align 1
  %28 = icmp eq i8 %27, 16
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = add i32 %24, 1
  %31 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %30) #4
  store i8 %31, ptr %2, align 1
  %32 = add i32 %24, 2
  %33 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %32) #4
  store i8 %33, ptr %3, align 1
  store i8 4, ptr %4, align 1
  %34 = add i32 %24, 3
  %35 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %34) #4
  store i8 %35, ptr %5, align 1
  store i8 4, ptr %6, align 1
  br label %36

36:                                               ; preds = %29, %26, %19, %11, %7
  %37 = phi i32 [ %24, %29 ], [ 0, %19 ], [ 0, %26 ], [ 0, %7 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #4
  ret i32 %37
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
define dso_local i32 @nvbios_P0260Ee(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #4
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #4
  %9 = call i32 @nvbios_P0260Te(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %10 = icmp ne i32 %9, 0
  %11 = load i8, ptr %6, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp sgt i32 %12, %1
  %14 = select i1 %10, i1 %13, i1 false
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load i8, ptr %5, align 1
  %17 = zext i8 %16 to i32
  %18 = add i32 %9, %17
  %19 = load i8, ptr %3, align 1
  %20 = zext i8 %19 to i32
  %21 = mul i32 %20, %1
  %22 = add i32 %18, %21
  br label %23

23:                                               ; preds = %15, %4
  %24 = phi i32 [ %22, %15 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_P0260Ep(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #4
  %10 = call i32 @nvbios_P0260Te(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %9) #4
  %11 = icmp ne i32 %10, 0
  %12 = load i8, ptr %7, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sgt i32 %13, %1
  %15 = select i1 %11, i1 %14, i1 false
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  br label %31

17:                                               ; preds = %5
  %18 = load i8, ptr %6, align 1
  %19 = zext i8 %18 to i32
  %20 = add i32 %10, %19
  %21 = load i8, ptr %3, align 1
  %22 = zext i8 %21 to i32
  %23 = mul i32 %22, %1
  %24 = add i32 %20, %23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  store i32 0, ptr %4, align 4
  %25 = icmp ne i32 %24, 0
  %26 = load i8, ptr %2, align 1
  %27 = icmp eq i8 %26, 16
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %24) #4
  br label %31

31:                                               ; preds = %29, %16
  %32 = phi i32 [ 0, %16 ], [ %30, %29 ]
  %33 = phi i32 [ 0, %16 ], [ %24, %29 ]
  store i32 %32, ptr %4, align 4
  br label %34

34:                                               ; preds = %31, %17
  %35 = phi i32 [ 0, %17 ], [ %33, %31 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_P0260Xe(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #4
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #4
  store i8 0, ptr %8, align 1, !annotation !8
  %9 = call i32 @nvbios_P0260Te(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %3)
  %10 = icmp ne i32 %9, 0
  %11 = load i8, ptr %8, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp sgt i32 %12, %1
  %14 = select i1 %10, i1 %13, i1 false
  br i1 %14, label %15, label %29

15:                                               ; preds = %4
  %16 = load i8, ptr %5, align 1
  %17 = zext i8 %16 to i32
  %18 = add i32 %9, %17
  %19 = load i8, ptr %6, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, ptr %7, align 1
  %22 = zext i8 %21 to i32
  %23 = mul nuw nsw i32 %22, %20
  %24 = add i32 %18, %23
  %25 = load i8, ptr %3, align 1
  %26 = zext i8 %25 to i32
  %27 = mul i32 %26, %1
  %28 = add i32 %24, %27
  br label %29

29:                                               ; preds = %15, %4
  %30 = phi i32 [ %28, %15 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_P0260Xp(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #4
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #4
  store i8 0, ptr %9, align 1, !annotation !8
  %10 = call i32 @nvbios_P0260Te(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %3) #4
  %11 = icmp ne i32 %10, 0
  %12 = load i8, ptr %9, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sgt i32 %13, %1
  %15 = select i1 %11, i1 %14, i1 false
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  br label %37

17:                                               ; preds = %5
  %18 = load i8, ptr %6, align 1
  %19 = zext i8 %18 to i32
  %20 = add i32 %10, %19
  %21 = load i8, ptr %7, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, ptr %8, align 1
  %24 = zext i8 %23 to i32
  %25 = mul nuw nsw i32 %24, %22
  %26 = add i32 %20, %25
  %27 = load i8, ptr %3, align 1
  %28 = zext i8 %27 to i32
  %29 = mul i32 %28, %1
  %30 = add i32 %26, %29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  store i32 0, ptr %4, align 4
  %31 = icmp ne i32 %30, 0
  %32 = load i8, ptr %2, align 1
  %33 = icmp eq i8 %32, 16
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %40

35:                                               ; preds = %17
  %36 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %30) #4
  br label %37

37:                                               ; preds = %35, %16
  %38 = phi i32 [ 0, %16 ], [ %36, %35 ]
  %39 = phi i32 [ 0, %16 ], [ %30, %35 ]
  store i32 %38, ptr %4, align 4
  br label %40

40:                                               ; preds = %37, %17
  %41 = phi i32 [ 0, %17 ], [ %39, %37 ]
  ret i32 %41
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
