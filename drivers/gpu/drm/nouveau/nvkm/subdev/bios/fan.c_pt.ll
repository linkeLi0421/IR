; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/fan.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/fan.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_therm_fan = type { i32, i32, i8, i8, i16, i16, i32, [10 x %struct.nvbios_therm_trip_point], i8, i8, i8 }
%struct.nvbios_therm_trip_point = type { i32, i32, i32 }

@switch.table.nvbios_fan_parse = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 2], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_fan_parse(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %3, i8 0, i32 6, i1 false) #4, !annotation !8
  %4 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 80, ptr noundef nonnull %3) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 2
  %10 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 2
  %11 = load i16, ptr %10, align 2
  %12 = icmp ugt i16 %11, 91
  %13 = select i1 %9, i1 %12, i1 false
  br i1 %13, label %14, label %24

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 3
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = add nuw nsw i32 %17, 88
  %19 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %18) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %19) #4
  %23 = icmp eq i8 %22, 16
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %14, %6, %2
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #4
  br label %57

25:                                               ; preds = %21
  %26 = add i32 %19, 1
  %27 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %26) #4
  %28 = add i32 %19, 2
  %29 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %28) #4
  %30 = add i32 %19, 3
  %31 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %30) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #4
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %25
  %34 = zext i8 %27 to i32
  %35 = add i32 %19, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %33
  %38 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %35) #4
  %39 = icmp ult i8 %38, 3
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = sext i8 %38 to i32
  %42 = getelementptr inbounds [3 x i32], ptr @switch.table.nvbios_fan_parse, i32 0, i32 %41
  %43 = load i32, ptr %42, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i32 [ %43, %40 ], [ 0, %37 ]
  store i32 %45, ptr %1, align 4
  %46 = getelementptr inbounds %struct.nvbios_therm_fan, ptr %1, i32 0, i32 6
  store i32 1, ptr %46, align 4
  %47 = add i32 %35, 2
  %48 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %47) #4
  %49 = getelementptr inbounds %struct.nvbios_therm_fan, ptr %1, i32 0, i32 2
  store i8 %48, ptr %49, align 4
  %50 = add i32 %35, 3
  %51 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %50) #4
  %52 = getelementptr inbounds %struct.nvbios_therm_fan, ptr %1, i32 0, i32 3
  store i8 %51, ptr %52, align 1
  %53 = add i32 %35, 11
  %54 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %53) #4
  %55 = and i32 %54, 16777215
  %56 = getelementptr inbounds %struct.nvbios_therm_fan, ptr %1, i32 0, i32 1
  store i32 %55, ptr %56, align 4
  br label %57

57:                                               ; preds = %44, %33, %25, %24
  %58 = phi i32 [ %35, %44 ], [ 0, %33 ], [ 0, %25 ], [ 0, %24 ]
  ret i32 %58
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
