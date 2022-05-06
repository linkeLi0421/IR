; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/xpio.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/xpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvbios_xpio = type { i8, i8, i8 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_xpio_table(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call zeroext i16 @dcb_gpio_table(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #2
  %8 = zext i16 %7 to i32
  %9 = icmp eq i16 %7, 0
  br i1 %9, label %49, label %10

10:                                               ; preds = %6
  %11 = load i8, ptr %2, align 1
  %12 = icmp ugt i8 %11, 63
  br i1 %12, label %13, label %49

13:                                               ; preds = %10
  %14 = load i8, ptr %3, align 1
  %15 = icmp ugt i8 %14, 5
  br i1 %15, label %16, label %49

16:                                               ; preds = %13
  %17 = add nuw nsw i32 %8, 4
  %18 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %17) #2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %49, label %20

20:                                               ; preds = %16
  %21 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %8) #2
  store i8 %21, ptr %2, align 1
  %22 = add nuw nsw i32 %8, 1
  %23 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %22) #2
  store i8 %23, ptr %3, align 1
  %24 = add nuw nsw i32 %8, 2
  %25 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %24) #2
  store i8 %25, ptr %4, align 1
  %26 = add nuw nsw i32 %8, 3
  %27 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %26) #2
  store i8 %27, ptr %5, align 1
  %28 = zext i16 %18 to i32
  %29 = load i8, ptr %4, align 1
  %30 = icmp ugt i8 %29, %1
  br i1 %30, label %31, label %49

31:                                               ; preds = %20
  %32 = zext i8 %1 to i32
  %33 = load i8, ptr %3, align 1
  %34 = zext i8 %33 to i32
  %35 = add nuw nsw i32 %34, %28
  %36 = zext i8 %27 to i32
  %37 = mul nuw nsw i32 %36, %32
  %38 = add nuw nsw i32 %35, %37
  %39 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %38) #2
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %31
  %42 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %28) #2
  store i8 %42, ptr %2, align 1
  %43 = add nuw nsw i32 %28, 1
  %44 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %43) #2
  store i8 %44, ptr %3, align 1
  %45 = add nuw nsw i32 %28, 2
  %46 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %45) #2
  store i8 %46, ptr %4, align 1
  %47 = add nuw nsw i32 %28, 3
  %48 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %47) #2
  store i8 %48, ptr %5, align 1
  br label %49

49:                                               ; preds = %41, %31, %20, %16, %13, %10, %6
  %50 = phi i16 [ %39, %41 ], [ 0, %20 ], [ 0, %31 ], [ 0, %13 ], [ 0, %10 ], [ 0, %6 ], [ 0, %16 ]
  ret i16 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_xpio_parse(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = tail call zeroext i16 @dcb_xpio_table(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %9 = zext i16 %8 to i32
  %10 = icmp eq i16 %8, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = load i8, ptr %5, align 1
  %13 = icmp ugt i8 %12, 5
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = add nuw nsw i32 %9, 4
  %16 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %15) #2
  store i8 %16, ptr %6, align 1
  %17 = add nuw nsw i32 %9, 5
  %18 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %17) #2
  %19 = getelementptr inbounds %struct.nvbios_xpio, ptr %6, i32 0, i32 1
  store i8 %18, ptr %19, align 1
  %20 = add nuw nsw i32 %9, 6
  %21 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %20) #2
  %22 = getelementptr inbounds %struct.nvbios_xpio, ptr %6, i32 0, i32 2
  store i8 %21, ptr %22, align 1
  br label %23

23:                                               ; preds = %14, %11, %7
  ret i16 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_gpio_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
