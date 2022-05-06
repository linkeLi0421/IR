; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/gpio.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/gpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_gpio_table(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call zeroext i16 @dcb_table(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %5
  %9 = load i8, ptr %1, align 1
  %10 = icmp ugt i8 %9, 47
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i8, ptr %2, align 1
  %13 = icmp ugt i8 %12, 11
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = zext i16 %6 to i32
  %16 = add nuw nsw i32 %15, 10
  br label %26

17:                                               ; preds = %8
  %18 = icmp ugt i8 %9, 33
  br i1 %18, label %19, label %46

19:                                               ; preds = %17, %11
  %20 = zext i16 %6 to i32
  %21 = add nsw i32 %20, -1
  %22 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %21) #3
  %23 = icmp ugt i8 %22, 18
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  %25 = add nsw i32 %20, -15
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi i32 [ %25, %24 ], [ %16, %14 ]
  %28 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %27) #3
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = zext i16 %28 to i32
  %32 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %31) #3
  store i8 %32, ptr %1, align 1
  %33 = icmp ult i8 %32, 48
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = icmp ult i8 %32, 66
  br i1 %35, label %36, label %46

36:                                               ; preds = %34
  %37 = add nuw nsw i32 %31, 1
  %38 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %37) #3
  br label %39

39:                                               ; preds = %36, %30
  %40 = phi i8 [ %38, %36 ], [ 3, %30 ]
  %41 = phi i32 [ 3, %36 ], [ 1, %30 ]
  store i8 %40, ptr %2, align 1
  %42 = add nuw nsw i32 %31, 2
  %43 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %42) #3
  store i8 %43, ptr %3, align 1
  %44 = add nuw nsw i32 %41, %31
  %45 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %44) #3
  store i8 %45, ptr %4, align 1
  br label %46

46:                                               ; preds = %39, %34, %26, %19, %17, %5
  %47 = phi i16 [ 0, %26 ], [ 0, %5 ], [ 0, %34 ], [ 0, %19 ], [ 0, %17 ], [ %28, %39 ]
  ret i16 %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_gpio_entry(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #3
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #3
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #3
  store i8 0, ptr %8, align 1, !annotation !8
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = call zeroext i16 @dcb_gpio_table(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %4)
  br label %16

12:                                               ; preds = %5
  %13 = trunc i32 %1 to i8
  %14 = add i8 %13, -1
  %15 = call zeroext i16 @dcb_xpio_table(ptr noundef %0, i8 noundef zeroext %14, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %4) #3
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi i16 [ %15, %12 ], [ %11, %10 ]
  %18 = icmp ne i16 %17, 0
  %19 = load i8, ptr %7, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp sgt i32 %20, %2
  %22 = select i1 %18, i1 %21, i1 false
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = zext i16 %17 to i32
  %25 = load i8, ptr %6, align 1
  %26 = zext i8 %25 to i32
  %27 = add nuw nsw i32 %26, %24
  %28 = load i8, ptr %4, align 1
  %29 = zext i8 %28 to i32
  %30 = mul i32 %29, %2
  %31 = add i32 %27, %30
  %32 = trunc i32 %31 to i16
  br label %33

33:                                               ; preds = %23, %16
  %34 = phi i16 [ %32, %23 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #3
  ret i16 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_xpio_table(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_gpio_parse(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #3
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #3
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #3
  store i8 0, ptr %9, align 1, !annotation !8
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = call zeroext i16 @dcb_gpio_table(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %4) #3
  br label %17

13:                                               ; preds = %6
  %14 = trunc i32 %1 to i8
  %15 = add i8 %14, -1
  %16 = call zeroext i16 @dcb_xpio_table(ptr noundef %0, i8 noundef zeroext %15, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %4) #3
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi i16 [ %16, %13 ], [ %12, %11 ]
  %19 = icmp ne i16 %18, 0
  %20 = load i8, ptr %8, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp sgt i32 %21, %2
  %23 = select i1 %19, i1 %22, i1 false
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #3
  br label %97

25:                                               ; preds = %17
  %26 = zext i16 %18 to i32
  %27 = load i8, ptr %7, align 1
  %28 = zext i8 %27 to i32
  %29 = add nuw nsw i32 %28, %26
  %30 = load i8, ptr %4, align 1
  %31 = zext i8 %30 to i32
  %32 = mul i32 %31, %2
  %33 = add i32 %29, %32
  %34 = trunc i32 %33 to i16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #3
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %97, label %36

36:                                               ; preds = %25
  %37 = load i8, ptr %3, align 1
  %38 = icmp ult i8 %37, 64
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = and i32 %33, 65535
  %41 = call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %40) #3
  %42 = lshr i16 %41, 5
  %43 = trunc i16 %42 to i8
  %44 = and i8 %43, 63
  %45 = trunc i16 %41 to i8
  %46 = and i8 %45, 31
  %47 = lshr i16 %41, 11
  %48 = trunc i16 %47 to i8
  %49 = and i8 %48, 3
  %50 = lshr i16 %41, 13
  %51 = trunc i16 %50 to i8
  %52 = and i8 %51, 3
  %53 = lshr i16 %41, 15
  %54 = trunc i16 %53 to i8
  store i8 %44, ptr %5, align 1
  %55 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %46, ptr %55, align 1
  %56 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 %49, ptr %56, align 1
  %57 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 %52, ptr %57, align 1
  %58 = getelementptr inbounds i8, ptr %5, i32 4
  store i8 %54, ptr %58, align 1
  br label %97

59:                                               ; preds = %36
  %60 = icmp eq i8 %37, 64
  %61 = and i32 %33, 65535
  %62 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %61) #3
  br i1 %60, label %63, label %80

63:                                               ; preds = %59
  %64 = lshr i32 %62, 8
  %65 = trunc i32 %64 to i8
  %66 = trunc i32 %62 to i8
  %67 = and i8 %66, 31
  %68 = lshr i32 %62, 27
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 3
  %71 = lshr i32 %62, 29
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 3
  %74 = lshr i32 %62, 31
  %75 = trunc i32 %74 to i8
  store i8 %65, ptr %5, align 1
  %76 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %67, ptr %76, align 1
  %77 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 %70, ptr %77, align 1
  %78 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 %73, ptr %78, align 1
  %79 = getelementptr inbounds i8, ptr %5, i32 4
  store i8 %75, ptr %79, align 1
  br label %97

80:                                               ; preds = %59
  %81 = add nuw nsw i32 %61, 4
  %82 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %81) #3
  %83 = lshr i32 %62, 8
  %84 = trunc i32 %83 to i8
  %85 = trunc i32 %62 to i8
  %86 = and i8 %85, 63
  %87 = trunc i32 %82 to i8
  %88 = lshr i8 %87, 4
  %89 = and i8 %88, 3
  %90 = lshr i8 %87, 6
  %91 = lshr i32 %62, 31
  %92 = trunc i32 %91 to i8
  store i8 %84, ptr %5, align 1
  %93 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %86, ptr %93, align 1
  %94 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 %89, ptr %94, align 1
  %95 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 %90, ptr %95, align 1
  %96 = getelementptr inbounds i8, ptr %5, i32 4
  store i8 %92, ptr %96, align 1
  br label %97

97:                                               ; preds = %80, %63, %39, %25, %24
  %98 = phi i16 [ 0, %24 ], [ %34, %39 ], [ %34, %80 ], [ %34, %63 ], [ 0, %25 ]
  ret i16 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_gpio_match(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 {
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #3
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #3
  store i8 0, ptr %9, align 1, !annotation !8
  %10 = tail call zeroext i16 @dcb_gpio_parse(ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %3, -1
  %14 = getelementptr inbounds %struct.dcb_gpio_func, ptr %6, i32 0, i32 1
  %15 = icmp eq i8 %2, -1
  br label %16

16:                                               ; preds = %26, %12
  %17 = phi i16 [ %10, %12 ], [ %29, %26 ]
  %18 = phi i8 [ 1, %12 ], [ %27, %26 ]
  br i1 %13, label %22, label %19

19:                                               ; preds = %16
  %20 = load i8, ptr %14, align 1
  %21 = icmp eq i8 %20, %3
  br i1 %21, label %22, label %26

22:                                               ; preds = %19, %16
  br i1 %15, label %58, label %23

23:                                               ; preds = %22
  %24 = load i8, ptr %6, align 1
  %25 = icmp eq i8 %24, %2
  br i1 %25, label %58, label %26

26:                                               ; preds = %23, %19
  %27 = add i8 %18, 1
  %28 = zext i8 %18 to i32
  %29 = tail call zeroext i16 @dcb_gpio_parse(ptr noundef %0, i32 noundef %1, i32 noundef %28, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %16

31:                                               ; preds = %26, %7
  %32 = call zeroext i16 @dcb_table(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %5) #3
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %31
  %35 = load i8, ptr %4, align 1
  %36 = icmp ugt i8 %35, 33
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = icmp ult i8 %35, 48
  %39 = icmp eq i8 %2, 12
  %40 = and i1 %39, %38
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = zext i16 %32 to i32
  %43 = add nsw i32 %42, -5
  %44 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %43) #3
  %45 = add nsw i32 %42, -4
  %46 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %45) #3
  %47 = and i8 %44, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %41
  %50 = lshr i8 %46, 4
  %51 = lshr i8 %44, 1
  %52 = and i8 %51, 1
  %53 = xor i8 %52, 1
  store i8 12, ptr %6, align 1
  %54 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %50, ptr %54, align 1
  %55 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 %52, ptr %55, align 1
  %56 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 %53, ptr %56, align 1
  %57 = getelementptr inbounds i8, ptr %6, i32 4
  store i8 0, ptr %57, align 1
  store i8 0, ptr %4, align 1
  br label %58

58:                                               ; preds = %49, %41, %37, %34, %31, %23, %22
  %59 = phi i16 [ %32, %49 ], [ 0, %34 ], [ 0, %37 ], [ 0, %31 ], [ 0, %41 ], [ %17, %23 ], [ %17, %22 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #3
  ret i16 %59
}

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
