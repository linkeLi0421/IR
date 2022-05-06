; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/boost.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/boost.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_boostE = type { i8, i32, i32 }
%struct.nvbios_boostS = type { i8, i8, i32, i32 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_boostTe(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %8, i8 0, i32 6, i1 false), !annotation !8
  %9 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 80, ptr noundef nonnull %8) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bit_entry, ptr %8, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 2
  %15 = getelementptr inbounds %struct.bit_entry, ptr %8, i32 0, i32 2
  %16 = load i16, ptr %15, align 2
  %17 = icmp ugt i16 %16, 51
  %18 = select i1 %14, i1 %17, i1 false
  br i1 %18, label %19, label %40

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.bit_entry, ptr %8, i32 0, i32 3
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = add nuw nsw i32 %22, 48
  %24 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %23) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %19
  %27 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %24) #5
  store i8 %27, ptr %1, align 1
  %28 = icmp eq i8 %27, 17
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = add i32 %24, 1
  %31 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %30) #5
  store i8 %31, ptr %2, align 1
  %32 = add i32 %24, 5
  %33 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %32) #5
  store i8 %33, ptr %3, align 1
  %34 = add i32 %24, 2
  %35 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %34) #5
  store i8 %35, ptr %4, align 1
  %36 = add i32 %24, 4
  %37 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %36) #5
  store i8 %37, ptr %5, align 1
  %38 = add i32 %24, 3
  %39 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %38) #5
  store i8 %39, ptr %6, align 1
  br label %40

40:                                               ; preds = %29, %26, %19, %11, %7
  %41 = phi i32 [ %24, %29 ], [ 0, %19 ], [ 0, %26 ], [ 0, %7 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #5
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
define dso_local i32 @nvbios_boostEe(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #5
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #5
  store i8 0, ptr %8, align 1, !annotation !8
  %9 = call i32 @nvbios_boostTe(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %8)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_boostEp(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #5
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #5
  store i8 0, ptr %9, align 1, !annotation !8
  %10 = call i32 @nvbios_boostTe(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %8, ptr noundef nonnull %9) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = load i8, ptr %4, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp sgt i32 %14, %1
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false)
  br label %47

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
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %17
  %33 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %30) #5
  %34 = lshr i16 %33, 5
  %35 = trunc i16 %34 to i8
  %36 = and i8 %35, 15
  store i8 %36, ptr %6, align 4
  %37 = add i32 %30, 2
  %38 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %37) #5
  %39 = zext i16 %38 to i32
  %40 = mul nuw nsw i32 %39, 1000
  %41 = getelementptr inbounds %struct.nvbios_boostE, ptr %6, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  %42 = add i32 %30, 4
  %43 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %42) #5
  %44 = zext i16 %43 to i32
  %45 = mul nuw nsw i32 %44, 1000
  %46 = getelementptr inbounds %struct.nvbios_boostE, ptr %6, i32 0, i32 2
  store i32 %45, ptr %46, align 4
  br label %47

47:                                               ; preds = %32, %17, %16
  %48 = phi i32 [ 0, %16 ], [ %30, %32 ], [ 0, %17 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_boostEm(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 {
  br label %8

8:                                                ; preds = %12, %7
  %9 = phi i32 [ 0, %7 ], [ %13, %12 ]
  %10 = tail call i32 @nvbios_boostEp(ptr noundef %0, i32 noundef %9, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = add i32 %9, 1
  %14 = load i8, ptr %6, align 4
  %15 = icmp eq i8 %14, %1
  br i1 %15, label %16, label %8

16:                                               ; preds = %12, %8
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @nvbios_boostSe(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3, ptr nocapture noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #4 {
  %8 = icmp ne i32 %2, 0
  %9 = zext i8 %5 to i32
  %10 = icmp sgt i32 %9, %1
  %11 = and i1 %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = load i8, ptr %4, align 1
  %14 = zext i8 %13 to i32
  %15 = zext i8 %6 to i32
  %16 = mul i32 %15, %1
  %17 = add i32 %16, %2
  %18 = add i32 %17, %14
  store i8 %6, ptr %4, align 1
  br label %19

19:                                               ; preds = %12, %7
  %20 = phi i32 [ %18, %12 ], [ 0, %7 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_boostSp(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3, ptr nocapture noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = icmp ne i32 %2, 0
  %10 = zext i8 %5 to i32
  %11 = icmp sgt i32 %10, %1
  %12 = and i1 %9, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %7, i8 0, i32 12, i1 false)
  br label %37

14:                                               ; preds = %8
  %15 = load i8, ptr %4, align 1
  %16 = zext i8 %15 to i32
  %17 = zext i8 %6 to i32
  %18 = mul i32 %17, %1
  %19 = add i32 %18, %2
  %20 = add i32 %19, %16
  store i8 %6, ptr %4, align 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %7, i8 0, i32 12, i1 false)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %14
  %23 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %20) #5
  store i8 %23, ptr %7, align 4
  %24 = add i32 %20, 1
  %25 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %24) #5
  %26 = getelementptr inbounds %struct.nvbios_boostS, ptr %7, i32 0, i32 1
  store i8 %25, ptr %26, align 1
  %27 = add i32 %20, 2
  %28 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %27) #5
  %29 = zext i16 %28 to i32
  %30 = mul nuw nsw i32 %29, 1000
  %31 = getelementptr inbounds %struct.nvbios_boostS, ptr %7, i32 0, i32 2
  store i32 %30, ptr %31, align 4
  %32 = add i32 %20, 4
  %33 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %32) #5
  %34 = zext i16 %33 to i32
  %35 = mul nuw nsw i32 %34, 1000
  %36 = getelementptr inbounds %struct.nvbios_boostS, ptr %7, i32 0, i32 3
  store i32 %35, ptr %36, align 4
  br label %37

37:                                               ; preds = %22, %14, %13
  %38 = phi i32 [ 0, %13 ], [ %20, %22 ], [ 0, %14 ]
  ret i32 %38
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
