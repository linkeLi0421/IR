; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/pmu.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/pmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_pmuE = type { i8, i32 }
%struct.nvbios_pmuR = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_pmuTe(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %6, i8 0, i32 6, i1 false), !annotation !8
  %7 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 112, ptr noundef nonnull %6) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bit_entry, ptr %6, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 2
  %13 = getelementptr inbounds %struct.bit_entry, ptr %6, i32 0, i32 2
  %14 = load i16, ptr %13, align 2
  %15 = icmp ugt i16 %14, 3
  %16 = select i1 %12, i1 %15, i1 false
  br i1 %16, label %17, label %31

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.bit_entry, ptr %6, i32 0, i32 3
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %20) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %21) #4
  store i8 %24, ptr %1, align 1
  %25 = add i32 %21, 1
  %26 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %25) #4
  store i8 %26, ptr %2, align 1
  %27 = add i32 %21, 2
  %28 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %27) #4
  store i8 %28, ptr %4, align 1
  %29 = add i32 %21, 3
  %30 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %29) #4
  store i8 %30, ptr %3, align 1
  br label %31

31:                                               ; preds = %23, %17, %9, %5
  %32 = phi i32 [ 0, %5 ], [ %21, %23 ], [ 0, %17 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #4
  ret i32 %32
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
define dso_local i32 @nvbios_pmuEe(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #4
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
  store i8 0, ptr %6, align 1, !annotation !8
  %7 = call i32 @nvbios_pmuTe(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %8 = icmp ne i32 %7, 0
  %9 = load i8, ptr %5, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp sgt i32 %10, %1
  %12 = select i1 %8, i1 %11, i1 false
  br i1 %12, label %13, label %21

13:                                               ; preds = %4
  %14 = load i8, ptr %3, align 1
  %15 = zext i8 %14 to i32
  %16 = add i32 %7, %15
  %17 = load i8, ptr %6, align 1
  %18 = zext i8 %17 to i32
  %19 = mul i32 %18, %1
  %20 = add i32 %16, %19
  store i8 %17, ptr %3, align 1
  br label %21

21:                                               ; preds = %13, %4
  %22 = phi i32 [ %20, %13 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_pmuEp(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  store i8 0, ptr %7, align 1, !annotation !8
  %8 = call i32 @nvbios_pmuTe(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7) #4
  %9 = icmp ne i32 %8, 0
  %10 = load i8, ptr %6, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp sgt i32 %11, %1
  %13 = select i1 %9, i1 %12, i1 false
  br i1 %13, label %14, label %22

14:                                               ; preds = %5
  %15 = load i8, ptr %3, align 1
  %16 = zext i8 %15 to i32
  %17 = add i32 %8, %16
  %18 = load i8, ptr %7, align 1
  %19 = zext i8 %18 to i32
  %20 = mul i32 %19, %1
  %21 = add i32 %17, %20
  store i8 %18, ptr %3, align 1
  br label %22

22:                                               ; preds = %14, %5
  %23 = phi i32 [ %21, %14 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  store i64 0, ptr %4, align 4
  %24 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %23) #4
  store i8 %24, ptr %4, align 4
  %25 = add i32 %23, 2
  %26 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %25) #4
  %27 = getelementptr inbounds %struct.nvbios_pmuE, ptr %4, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nvbios_pmuRm(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  store i8 0, ptr %7, align 1, !annotation !8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(44) %2, i8 0, i32 44, i1 false)
  br label %8

8:                                                ; preds = %31, %3
  %9 = phi i8 [ 0, %3 ], [ %10, %31 ]
  %10 = add i8 %9, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #4
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #4
  store i8 0, ptr %5, align 1, !annotation !8
  %11 = call i32 @nvbios_pmuTe(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %5) #4
  %12 = icmp ne i32 %11, 0
  %13 = load i8, ptr %4, align 1
  %14 = icmp ugt i8 %13, %9
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %25

16:                                               ; preds = %8
  %17 = zext i8 %9 to i32
  %18 = load i8, ptr %7, align 1
  %19 = zext i8 %18 to i32
  %20 = add i32 %11, %19
  %21 = load i8, ptr %5, align 1
  %22 = zext i8 %21 to i32
  %23 = mul nuw nsw i32 %22, %17
  %24 = add i32 %20, %23
  store i8 %21, ptr %7, align 1
  br label %25

25:                                               ; preds = %16, %8
  %26 = phi i32 [ %24, %16 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #4
  %27 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %26) #4
  %28 = add i32 %26, 2
  %29 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %28) #4
  %30 = icmp eq i32 %26, 0
  br i1 %30, label %73, label %31

31:                                               ; preds = %25
  %32 = icmp ne i8 %27, %1
  %33 = icmp eq i32 %29, 0
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %8, label %35

35:                                               ; preds = %31
  %36 = add i32 %29, 8
  %37 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %36) #4
  %38 = getelementptr inbounds %struct.nvbios_pmuR, ptr %2, i32 0, i32 6
  store i32 %37, ptr %38, align 4
  %39 = add i32 %29, 12
  %40 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %39) #4
  %41 = getelementptr inbounds %struct.nvbios_pmuR, ptr %2, i32 0, i32 10
  store i32 %40, ptr %41, align 4
  %42 = add i32 %29, 48
  %43 = getelementptr inbounds %struct.nvbios_pmuR, ptr %2, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = add i32 %29, 16
  %45 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %44) #4
  %46 = add i32 %29, 24
  %47 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %46) #4
  %48 = add i32 %47, %45
  store i32 %48, ptr %2, align 4
  %49 = add i32 %29, 28
  %50 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %49) #4
  %51 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %46) #4
  %52 = sub i32 %50, %51
  %53 = getelementptr inbounds %struct.nvbios_pmuR, ptr %2, i32 0, i32 2
  store i32 %52, ptr %53, align 4
  %54 = load i32, ptr %43, align 4
  %55 = add i32 %54, %52
  %56 = getelementptr inbounds %struct.nvbios_pmuR, ptr %2, i32 0, i32 4
  store i32 %55, ptr %56, align 4
  %57 = load i32, ptr %2, align 4
  %58 = add i32 %57, %52
  %59 = getelementptr inbounds %struct.nvbios_pmuR, ptr %2, i32 0, i32 3
  store i32 %58, ptr %59, align 4
  %60 = add i32 %29, 32
  %61 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %60) #4
  %62 = getelementptr inbounds %struct.nvbios_pmuR, ptr %2, i32 0, i32 5
  store i32 %61, ptr %62, align 4
  %63 = add i32 %29, 36
  %64 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %63) #4
  %65 = add i32 %64, %42
  %66 = getelementptr inbounds %struct.nvbios_pmuR, ptr %2, i32 0, i32 8
  store i32 %65, ptr %66, align 4
  %67 = add i32 %29, 40
  %68 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %67) #4
  %69 = getelementptr inbounds %struct.nvbios_pmuR, ptr %2, i32 0, i32 7
  store i32 %68, ptr %69, align 4
  %70 = add i32 %29, 44
  %71 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %70) #4
  %72 = getelementptr inbounds %struct.nvbios_pmuR, ptr %2, i32 0, i32 9
  store i32 %71, ptr %72, align 4
  br label %73

73:                                               ; preds = %35, %25
  %74 = xor i1 %30, true
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  ret i1 %74
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
