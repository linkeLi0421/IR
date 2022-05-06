; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/bit.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/bit.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.120 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.120 = type { i8, i8, i8, i8, i8 }
%struct.bit_entry = type { i8, i8, i16, i16 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bit_entry(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %38, label %7, !prof !8

7:                                                ; preds = %3
  %8 = add i32 %5, 10
  %9 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %8) #2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %4, align 4
  %13 = add i32 %12, 12
  br label %14

14:                                               ; preds = %30, %11
  %15 = phi i8 [ %31, %30 ], [ %9, %11 ]
  %16 = phi i32 [ %36, %30 ], [ %13, %11 ]
  %17 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %16) #2
  %18 = icmp eq i8 %17, %1
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %16) #2
  store i8 %20, ptr %2, align 2
  %21 = add i32 %16, 1
  %22 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %21) #2
  %23 = getelementptr inbounds %struct.bit_entry, ptr %2, i32 0, i32 1
  store i8 %22, ptr %23, align 1
  %24 = add i32 %16, 2
  %25 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %24) #2
  %26 = getelementptr inbounds %struct.bit_entry, ptr %2, i32 0, i32 2
  store i16 %25, ptr %26, align 2
  %27 = add i32 %16, 4
  %28 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %27) #2
  %29 = getelementptr inbounds %struct.bit_entry, ptr %2, i32 0, i32 3
  store i16 %28, ptr %29, align 2
  br label %38

30:                                               ; preds = %14
  %31 = add i8 %15, -1
  %32 = load i32, ptr %4, align 4
  %33 = add i32 %32, 9
  %34 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %33) #2
  %35 = zext i8 %34 to i32
  %36 = add i32 %16, %35
  %37 = icmp eq i8 %31, 0
  br i1 %37, label %38, label %14

38:                                               ; preds = %30, %19, %7, %3
  %39 = phi i32 [ 0, %19 ], [ -22, %3 ], [ -2, %7 ], [ -2, %30 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #1

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
!8 = !{!"branch_weights", i32 1, i32 2000}
