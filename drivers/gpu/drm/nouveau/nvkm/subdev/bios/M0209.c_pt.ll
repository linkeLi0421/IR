; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/M0209.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/M0209.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_M0209E = type { i8, i8, i8, i8, i8, i8 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0209Te(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %8, i8 0, i32 6, i1 false), !annotation !8
  %9 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 77, ptr noundef nonnull %8) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bit_entry, ptr %8, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 2
  %15 = getelementptr inbounds %struct.bit_entry, ptr %8, i32 0, i32 2
  %16 = load i16, ptr %15, align 2
  %17 = icmp ugt i16 %16, 12
  %18 = select i1 %14, i1 %17, i1 false
  br i1 %18, label %19, label %38

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.bit_entry, ptr %8, i32 0, i32 3
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = add nuw nsw i32 %22, 9
  %24 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %23) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %19
  %27 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %24) #4
  store i8 %27, ptr %1, align 1
  %28 = icmp eq i8 %27, 16
  br i1 %28, label %29, label %38

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
  store i8 1, ptr %5, align 1
  %36 = add i32 %24, 4
  %37 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %36) #4
  store i8 %37, ptr %3, align 1
  br label %38

38:                                               ; preds = %29, %26, %19, %11, %7
  %39 = phi i32 [ %24, %29 ], [ 0, %19 ], [ 0, %26 ], [ 0, %7 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #4
  ret i32 %39
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
define dso_local i32 @nvbios_M0209Ee(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #4
  store i8 0, ptr %8, align 1, !annotation !8
  %9 = call i32 @nvbios_M0209Te(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %8)
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
define dso_local i32 @nvbios_M0209Ep(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #4
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #4
  store i8 0, ptr %9, align 1, !annotation !8
  %10 = call i32 @nvbios_M0209Te(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %8, ptr noundef nonnull %9) #4
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
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %6, i8 0, i32 6, i1 false)
  br label %56

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
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %6, i8 0, i32 6, i1 false)
  %31 = icmp ne i32 %30, 0
  %32 = load i8, ptr %2, align 1
  %33 = icmp eq i8 %32, 16
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %56

35:                                               ; preds = %17
  %36 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %30) #4
  %37 = lshr i8 %36, 6
  %38 = and i8 %37, 1
  store i8 %38, ptr %6, align 1
  %39 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %30) #4
  %40 = and i8 %39, 63
  %41 = getelementptr inbounds %struct.nvbios_M0209E, ptr %6, i32 0, i32 1
  store i8 %40, ptr %41, align 1
  %42 = add i32 %30, 1
  %43 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %42) #4
  %44 = getelementptr inbounds %struct.nvbios_M0209E, ptr %6, i32 0, i32 2
  store i8 %43, ptr %44, align 1
  %45 = add i32 %30, 2
  %46 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %45) #4
  %47 = lshr i8 %46, 6
  %48 = and i8 %47, 1
  %49 = getelementptr inbounds %struct.nvbios_M0209E, ptr %6, i32 0, i32 3
  store i8 %48, ptr %49, align 1
  %50 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %45) #4
  %51 = and i8 %50, 7
  %52 = getelementptr inbounds %struct.nvbios_M0209E, ptr %6, i32 0, i32 4
  store i8 %51, ptr %52, align 1
  %53 = add i32 %30, 3
  %54 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %53) #4
  %55 = getelementptr inbounds %struct.nvbios_M0209E, ptr %6, i32 0, i32 5
  store i8 %54, ptr %55, align 1
  br label %56

56:                                               ; preds = %35, %17, %16
  %57 = phi i32 [ %30, %35 ], [ 0, %17 ], [ 0, %16 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_M0209Se(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
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
  %10 = call i32 @nvbios_M0209Te(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %7) #4
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
define dso_local i32 @nvbios_M0209Sp(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.nvbios_M0209E, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %11) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %11, i8 0, i32 6, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #4
  store i8 0, ptr %12, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #4
  store i8 0, ptr %13, align 1, !annotation !8
  %14 = call i32 @nvbios_M0209Ep(ptr noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %11)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %76, label %16

16:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #4
  store i8 0, ptr %9, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #4
  store i8 0, ptr %10, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #4
  store i8 0, ptr %8, align 1, !annotation !8
  %17 = call i32 @nvbios_M0209Te(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %8) #4
  %18 = icmp ne i32 %17, 0
  %19 = load i8, ptr %9, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp sgt i32 %20, %1
  %22 = select i1 %18, i1 %21, i1 false
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  br label %41

24:                                               ; preds = %16
  %25 = load i8, ptr %4, align 1
  %26 = zext i8 %25 to i32
  %27 = add i32 %17, %26
  %28 = load i8, ptr %10, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, ptr %7, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, ptr %8, align 1
  %33 = zext i8 %32 to i32
  %34 = mul nuw nsw i32 %33, %31
  %35 = add nuw nsw i32 %34, %29
  %36 = mul i32 %35, %1
  %37 = add i32 %27, %36
  store i8 %28, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  %38 = icmp ne i32 %37, 0
  %39 = icmp sgt i32 %31, %2
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %42, label %41

41:                                               ; preds = %24, %23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(2048) %5, i8 0, i32 2048, i1 false)
  br label %76

42:                                               ; preds = %24
  %43 = mul i32 %33, %2
  %44 = add i32 %43, %29
  %45 = add i32 %44, %37
  store i8 %32, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(2048) %5, i8 0, i32 2048, i1 false)
  %46 = icmp ne i32 %45, 0
  %47 = load i8, ptr %3, align 1
  %48 = icmp eq i8 %47, 16
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %76

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.nvbios_M0209E, ptr %11, i32 0, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i16
  %54 = getelementptr inbounds %struct.nvbios_M0209E, ptr %11, i32 0, i32 1
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = zext i8 %55 to i64
  %58 = shl nsw i64 -1, %57
  %59 = trunc i64 %58 to i32
  %60 = xor i32 %59, -1
  br label %61

61:                                               ; preds = %61, %50
  %62 = phi i32 [ 0, %50 ], [ %74, %61 ]
  %63 = trunc i32 %62 to i16
  %64 = urem i16 %63, %53
  %65 = zext i16 %64 to i32
  %66 = mul nuw nsw i32 %56, %65
  %67 = lshr i32 %66, 3
  %68 = and i32 %66, 7
  %69 = add i32 %67, %45
  %70 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %69) #4
  %71 = getelementptr [512 x i32], ptr %5, i32 0, i32 %62
  %72 = lshr i32 %70, %68
  %73 = and i32 %72, %60
  store i32 %73, ptr %71, align 4
  %74 = add nuw nsw i32 %62, 1
  %75 = icmp eq i32 %74, 512
  br i1 %75, label %76, label %61

76:                                               ; preds = %61, %42, %41, %6
  %77 = phi i32 [ 0, %41 ], [ 0, %42 ], [ 0, %6 ], [ %45, %61 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %11) #4
  ret i32 %77
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
