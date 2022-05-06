; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/volt.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/volt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_volt = type { i32, i32, i32, i32, i8, i8, i16, i32, i32 }
%struct.nvbios_volt_entry = type { i32, i8 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_volt_table(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %6, i8 0, i32 6, i1 false), !annotation !8
  %7 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 80, ptr noundef nonnull %6) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bit_entry, ptr %6, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  switch i8 %11, label %37 [
    i8 2, label %13
    i8 1, label %12
  ]

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi i32 [ 16, %12 ], [ 12, %9 ]
  %15 = getelementptr inbounds %struct.bit_entry, ptr %6, i32 0, i32 3
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = add nuw nsw i32 %14, %17
  %19 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %18) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %13
  %22 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %19) #5
  store i8 %22, ptr %1, align 1
  switch i8 %22, label %37 [
    i8 18, label %29
    i8 32, label %24
    i8 48, label %23
    i8 64, label %23
    i8 80, label %23
  ]

23:                                               ; preds = %21, %21, %21
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ 3, %23 ], [ 2, %21 ]
  %26 = phi i32 [ 2, %23 ], [ 3, %21 ]
  %27 = add i32 %19, 1
  %28 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %27) #5
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i8 [ 5, %21 ], [ %28, %24 ]
  %31 = phi i32 [ 2, %21 ], [ %25, %24 ]
  %32 = phi i32 [ 1, %21 ], [ %26, %24 ]
  store i8 %30, ptr %2, align 1
  %33 = add i32 %19, %31
  %34 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %33) #5
  store i8 %34, ptr %3, align 1
  %35 = add i32 %19, %32
  %36 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %35) #5
  store i8 %36, ptr %4, align 1
  br label %37

37:                                               ; preds = %29, %21, %13, %9, %5
  %38 = phi i32 [ 0, %13 ], [ 0, %21 ], [ 0, %5 ], [ 0, %9 ], [ %19, %29 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #5
  ret i32 %38
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
define dso_local i32 @nvbios_volt_parse(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 @nvbios_volt_table(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false)
  %8 = icmp eq i32 %7, 0
  %9 = load i8, ptr %1, align 1
  %10 = select i1 %8, i8 0, i8 %9
  switch i8 %10, label %92 [
    i8 18, label %11
    i8 32, label %16
    i8 48, label %21
    i8 64, label %26
    i8 80, label %58
  ]

11:                                               ; preds = %6
  %12 = add i32 %7, 4
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %12) #5
  %14 = getelementptr inbounds %struct.nvbios_volt, ptr %5, i32 0, i32 5
  store i8 %13, ptr %14, align 1
  %15 = getelementptr inbounds %struct.nvbios_volt, ptr %5, i32 0, i32 4
  store i8 0, ptr %15, align 4
  br label %92

16:                                               ; preds = %6
  %17 = add i32 %7, 5
  %18 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %17) #5
  %19 = getelementptr inbounds %struct.nvbios_volt, ptr %5, i32 0, i32 5
  store i8 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.nvbios_volt, ptr %5, i32 0, i32 4
  store i8 0, ptr %20, align 4
  br label %92

21:                                               ; preds = %6
  %22 = add i32 %7, 4
  %23 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %22) #5
  %24 = getelementptr inbounds %struct.nvbios_volt, ptr %5, i32 0, i32 5
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds %struct.nvbios_volt, ptr %5, i32 0, i32 4
  store i8 0, ptr %25, align 4
  br label %92

26:                                               ; preds = %6
  %27 = add i32 %7, 4
  %28 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %27) #5
  %29 = getelementptr inbounds %struct.nvbios_volt, ptr %5, i32 0, i32 3
  store i32 %28, ptr %29, align 4
  %30 = add i32 %7, 8
  %31 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %30) #5
  %32 = getelementptr inbounds %struct.nvbios_volt, ptr %5, i32 0, i32 6
  store i16 %31, ptr %32, align 2
  %33 = add i32 %7, 11
  %34 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %33) #5
  %35 = getelementptr inbounds %struct.nvbios_volt, ptr %5, i32 0, i32 5
  store i8 %34, ptr %35, align 1
  %36 = getelementptr inbounds %struct.nvbios_volt, ptr %5, i32 0, i32 4
  store i8 1, ptr %36, align 4
  %37 = load i32, ptr %29, align 4
  %38 = load i16, ptr %32, align 2
  %39 = sext i16 %38 to i32
  %40 = zext i8 %34 to i32
  %41 = mul nsw i32 %39, %40
  %42 = add i32 %41, %37
  %43 = tail call i32 @llvm.umin.i32(i32 %37, i32 %42)
  %44 = getelementptr inbounds %struct.nvbios_volt, ptr %5, i32 0, i32 1
  store i32 %43, ptr %44, align 4
  %45 = add i32 %7, 14
  %46 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %45) #5
  %47 = getelementptr inbounds %struct.nvbios_volt, ptr %5, i32 0, i32 2
  store i32 %46, ptr %47, align 4
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %49, label %92

49:                                               ; preds = %26
  %50 = load i32, ptr %29, align 4
  %51 = load i16, ptr %32, align 2
  %52 = sext i16 %51 to i32
  %53 = load i8, ptr %35, align 1
  %54 = zext i8 %53 to i32
  %55 = mul nsw i32 %54, %52
  %56 = add i32 %55, %50
  %57 = tail call i32 @llvm.umax.i32(i32 %50, i32 %56)
  store i32 %57, ptr %47, align 4
  br label %92

58:                                               ; preds = %6
  %59 = add i32 %7, 10
  %60 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %59) #5
  %61 = getelementptr inbounds %struct.nvbios_volt, ptr %5, i32 0, i32 1
  store i32 %60, ptr %61, align 4
  %62 = add i32 %7, 14
  %63 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %62) #5
  %64 = getelementptr inbounds %struct.nvbios_volt, ptr %5, i32 0, i32 2
  store i32 %63, ptr %64, align 4
  %65 = add i32 %7, 18
  %66 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %65) #5
  %67 = and i32 %66, 16777215
  %68 = getelementptr inbounds %struct.nvbios_volt, ptr %5, i32 0, i32 3
  store i32 %67, ptr %68, align 4
  %69 = add i32 %7, 4
  %70 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %69) #5
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %58
  store i32 1, ptr %5, align 4
  %74 = add i32 %7, 5
  %75 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %74) #5
  %76 = udiv i32 %75, 1000
  %77 = getelementptr inbounds %struct.nvbios_volt, ptr %5, i32 0, i32 7
  store i32 %76, ptr %77, align 4
  %78 = add i32 %7, 22
  %79 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %78) #5
  %80 = getelementptr inbounds %struct.nvbios_volt, ptr %5, i32 0, i32 8
  store i32 %79, ptr %80, align 4
  br label %92

81:                                               ; preds = %58
  store i32 0, ptr %5, align 4
  %82 = add i32 %7, 6
  %83 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %82) #5
  %84 = getelementptr inbounds %struct.nvbios_volt, ptr %5, i32 0, i32 5
  store i8 %83, ptr %84, align 1
  %85 = add i32 %7, 22
  %86 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %85) #5
  %87 = getelementptr inbounds %struct.nvbios_volt, ptr %5, i32 0, i32 6
  store i16 %86, ptr %87, align 2
  %88 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %69) #5
  %89 = getelementptr inbounds %struct.nvbios_volt, ptr %5, i32 0, i32 4
  %90 = lshr i8 %88, 1
  %91 = and i8 %90, 1
  store i8 %91, ptr %89, align 4
  br label %92

92:                                               ; preds = %81, %73, %49, %26, %21, %16, %11, %6
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_volt_entry(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  store i8 0, ptr %6, align 1, !annotation !8
  %7 = call i32 @nvbios_volt_table(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %3)
  %8 = icmp ne i32 %7, 0
  %9 = load i8, ptr %6, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp sgt i32 %10, %1
  %12 = select i1 %8, i1 %11, i1 false
  br i1 %12, label %13, label %21

13:                                               ; preds = %4
  %14 = load i8, ptr %5, align 1
  %15 = zext i8 %14 to i32
  %16 = add i32 %7, %15
  %17 = load i8, ptr %3, align 1
  %18 = zext i8 %17 to i32
  %19 = mul i32 %18, %1
  %20 = add i32 %16, %19
  br label %21

21:                                               ; preds = %13, %4
  %22 = phi i32 [ %20, %13 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_volt_entry_parse(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #5
  store i8 0, ptr %7, align 1, !annotation !8
  %8 = call i32 @nvbios_volt_table(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %3) #5
  %9 = icmp ne i32 %8, 0
  %10 = load i8, ptr %7, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp sgt i32 %11, %1
  %13 = select i1 %9, i1 %12, i1 false
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  store i64 0, ptr %4, align 4
  br label %48

15:                                               ; preds = %5
  %16 = load i8, ptr %6, align 1
  %17 = zext i8 %16 to i32
  %18 = add i32 %8, %17
  %19 = load i8, ptr %3, align 1
  %20 = zext i8 %19 to i32
  %21 = mul i32 %20, %1
  %22 = add i32 %18, %21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  store i64 0, ptr %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %15
  %25 = load i8, ptr %2, align 1
  switch i8 %25, label %48 [
    i8 18, label %26
    i8 32, label %26
    i8 48, label %33
    i8 80, label %41
  ]

26:                                               ; preds = %24, %24
  %27 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %22) #5
  %28 = zext i8 %27 to i32
  %29 = mul nuw nsw i32 %28, 10000
  store i32 %29, ptr %4, align 4
  %30 = add i32 %22, 1
  %31 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %30) #5
  %32 = getelementptr inbounds %struct.nvbios_volt_entry, ptr %4, i32 0, i32 1
  store i8 %31, ptr %32, align 4
  br label %48

33:                                               ; preds = %24
  %34 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %22) #5
  %35 = zext i8 %34 to i32
  %36 = mul nuw nsw i32 %35, 10000
  store i32 %36, ptr %4, align 4
  %37 = add i32 %22, 1
  %38 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %37) #5
  %39 = lshr i8 %38, 2
  %40 = getelementptr inbounds %struct.nvbios_volt_entry, ptr %4, i32 0, i32 1
  store i8 %39, ptr %40, align 4
  br label %48

41:                                               ; preds = %24
  %42 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %22) #5
  %43 = and i32 %42, 2097151
  store i32 %43, ptr %4, align 4
  %44 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %22) #5
  %45 = lshr i32 %44, 23
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.nvbios_volt_entry, ptr %4, i32 0, i32 1
  store i8 %46, ptr %47, align 4
  br label %48

48:                                               ; preds = %41, %33, %26, %24, %15, %14
  %49 = phi i32 [ %22, %24 ], [ %22, %41 ], [ %22, %33 ], [ %22, %26 ], [ 0, %14 ], [ 0, %15 ]
  ret i32 %49
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
