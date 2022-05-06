; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/vpstate.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/vpstate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_vpstate_header = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.nvbios_vpstate_entry = type { i8, i16 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_vpstate_parse(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bit_entry, align 2
  %4 = icmp eq ptr %1, null
  br i1 %4, label %71, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %3, i8 0, i32 6, i1 false) #4, !annotation !8
  %6 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 80, ptr noundef nonnull %3) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 2
  %12 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 2
  %13 = load i16, ptr %12, align 2
  %14 = icmp ugt i16 %13, 59
  %15 = select i1 %11, i1 %14, i1 false
  br i1 %15, label %17, label %16

16:                                               ; preds = %8, %5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #4
  store i32 0, ptr %1, align 4
  br label %71

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 3
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = add nuw nsw i32 %20, 56
  %22 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %21) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #4
  store i32 %22, ptr %1, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %71, label %24

24:                                               ; preds = %17
  %25 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %22) #4
  %26 = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %1, i32 0, i32 1
  store i8 %25, ptr %26, align 4
  %27 = icmp eq i8 %25, 16
  br i1 %27, label %28, label %71

28:                                               ; preds = %24
  %29 = load i32, ptr %1, align 4
  %30 = add i32 %29, 1
  %31 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %30) #4
  %32 = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %1, i32 0, i32 2
  store i8 %31, ptr %32, align 1
  %33 = load i32, ptr %1, align 4
  %34 = add i32 %33, 2
  %35 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %34) #4
  %36 = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %1, i32 0, i32 4
  store i8 %35, ptr %36, align 1
  %37 = load i32, ptr %1, align 4
  %38 = add i32 %37, 3
  %39 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %38) #4
  %40 = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %1, i32 0, i32 6
  store i8 %39, ptr %40, align 1
  %41 = load i32, ptr %1, align 4
  %42 = add i32 %41, 4
  %43 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %42) #4
  %44 = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %1, i32 0, i32 5
  store i8 %43, ptr %44, align 4
  %45 = load i32, ptr %1, align 4
  %46 = add i32 %45, 5
  %47 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %46) #4
  %48 = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %1, i32 0, i32 3
  store i8 %47, ptr %48, align 2
  %49 = load i32, ptr %1, align 4
  %50 = add i32 %49, 15
  %51 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %50) #4
  %52 = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %1, i32 0, i32 7
  store i8 %51, ptr %52, align 2
  %53 = load i8, ptr %32, align 1
  %54 = icmp ugt i8 %53, 16
  br i1 %54, label %57, label %55

55:                                               ; preds = %28
  %56 = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %1, i32 0, i32 8
  store i8 -1, ptr %56, align 1
  br label %69

57:                                               ; preds = %28
  %58 = load i32, ptr %1, align 4
  %59 = add i32 %58, 16
  %60 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %59) #4
  %61 = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %1, i32 0, i32 8
  store i8 %60, ptr %61, align 1
  %62 = load i8, ptr %32, align 1
  %63 = icmp ugt i8 %62, 17
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i32, ptr %1, align 4
  %66 = add i32 %65, 17
  %67 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %66) #4
  %68 = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %1, i32 0, i32 9
  store i8 %67, ptr %68, align 4
  br label %71

69:                                               ; preds = %57, %55
  %70 = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %1, i32 0, i32 9
  store i8 -1, ptr %70, align 4
  br label %71

71:                                               ; preds = %69, %64, %24, %17, %16, %2
  %72 = phi i32 [ -22, %2 ], [ -19, %17 ], [ 0, %69 ], [ 0, %64 ], [ -22, %24 ], [ -19, %16 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_vpstate_entry(ptr noundef %0, ptr noundef readonly %1, i8 noundef zeroext %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp ne ptr %3, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %36

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %1, i32 0, i32 3
  %10 = load i8, ptr %9, align 2
  %11 = icmp ult i8 %10, %2
  br i1 %11, label %36, label %12

12:                                               ; preds = %8
  %13 = zext i8 %2 to i32
  %14 = load i32, ptr %1, align 4
  %15 = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %1, i32 0, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = add i32 %14, %17
  %19 = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %1, i32 0, i32 4
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %1, i32 0, i32 6
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %1, i32 0, i32 5
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i32
  %28 = mul nuw nsw i32 %27, %24
  %29 = add nuw nsw i32 %28, %21
  %30 = mul nuw nsw i32 %29, %13
  %31 = add i32 %18, %30
  %32 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %31) #4
  store i8 %32, ptr %3, align 2
  %33 = add i32 %31, 5
  %34 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %33) #4
  %35 = getelementptr inbounds %struct.nvbios_vpstate_entry, ptr %3, i32 0, i32 1
  store i16 %34, ptr %35, align 2
  br label %36

36:                                               ; preds = %12, %8, %4
  %37 = phi i32 [ 0, %12 ], [ -22, %8 ], [ -22, %4 ]
  ret i32 %37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
