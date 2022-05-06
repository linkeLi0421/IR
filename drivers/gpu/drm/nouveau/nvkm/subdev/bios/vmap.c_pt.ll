; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/vmap.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/vmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_vmap = type { i8, i8, i8 }
%struct.nvbios_vmap_entry = type { i8, i8, i32, i32, [6 x i32] }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_vmap_table(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %6, i8 0, i32 6, i1 false), !annotation !8
  %7 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 80, ptr noundef nonnull %6) #4
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.bit_entry, ptr %6, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 2
  %12 = select i1 %8, i1 %11, i1 false
  br i1 %12, label %13, label %29

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.bit_entry, ptr %6, i32 0, i32 3
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = add nuw nsw i32 %16, 32
  %18 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %17) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %13
  %21 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %18) #4
  store i8 %21, ptr %1, align 1
  switch i8 %21, label %29 [
    i8 16, label %22
    i8 32, label %22
  ]

22:                                               ; preds = %20, %20
  %23 = add i32 %18, 1
  %24 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %23) #4
  store i8 %24, ptr %2, align 1
  %25 = add i32 %18, 3
  %26 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %25) #4
  store i8 %26, ptr %3, align 1
  %27 = add i32 %18, 2
  %28 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %27) #4
  store i8 %28, ptr %4, align 1
  br label %29

29:                                               ; preds = %22, %20, %13, %5
  %30 = phi i32 [ %18, %22 ], [ 0, %20 ], [ 0, %13 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #4
  ret i32 %30
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
define dso_local i32 @nvbios_vmap_parse(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = tail call i32 @nvbios_vmap_table(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(3) %5, i8 0, i32 3, i1 false)
  %8 = icmp eq i32 %7, 0
  %9 = load i8, ptr %1, align 1
  %10 = select i1 %8, i8 0, i8 %9
  switch i8 %10, label %27 [
    i8 16, label %11
    i8 32, label %13
  ]

11:                                               ; preds = %6
  store i8 -1, ptr %5, align 1
  %12 = getelementptr inbounds %struct.nvbios_vmap, ptr %5, i32 0, i32 1
  store i8 -1, ptr %12, align 1
  br label %24

13:                                               ; preds = %6
  %14 = add i32 %7, 7
  %15 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %14) #4
  store i8 %15, ptr %5, align 1
  %16 = add i32 %7, 8
  %17 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %16) #4
  %18 = getelementptr inbounds %struct.nvbios_vmap, ptr %5, i32 0, i32 1
  store i8 %17, ptr %18, align 1
  %19 = load i8, ptr %4, align 1
  %20 = icmp ugt i8 %19, 11
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = add i32 %7, 12
  %23 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %22) #4
  br label %24

24:                                               ; preds = %21, %13, %11
  %25 = phi i8 [ %23, %21 ], [ -1, %11 ], [ -1, %13 ]
  %26 = getelementptr inbounds %struct.nvbios_vmap, ptr %5, i32 0, i32 2
  store i8 %25, ptr %26, align 1
  br label %27

27:                                               ; preds = %24, %6
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_vmap_entry(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #4
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
  store i8 0, ptr %6, align 1, !annotation !8
  %7 = call i32 @nvbios_vmap_table(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %3)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_vmap_entry_parse(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  store i8 0, ptr %7, align 1, !annotation !8
  %8 = call i32 @nvbios_vmap_table(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %3) #4
  %9 = icmp ne i32 %8, 0
  %10 = load i8, ptr %7, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp sgt i32 %11, %1
  %13 = select i1 %9, i1 %12, i1 false
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false)
  br label %71

15:                                               ; preds = %5
  %16 = load i8, ptr %6, align 1
  %17 = zext i8 %16 to i32
  %18 = add i32 %8, %17
  %19 = load i8, ptr %3, align 1
  %20 = zext i8 %19 to i32
  %21 = mul i32 %20, %1
  %22 = add i32 %18, %21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %71, label %24

24:                                               ; preds = %15
  %25 = load i8, ptr %2, align 1
  switch i8 %25, label %71 [
    i8 16, label %26
    i8 32, label %42
  ]

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 1
  store i8 -1, ptr %27, align 1
  %28 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %22) #4
  %29 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = add i32 %22, 4
  %31 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %30) #4
  %32 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 3
  store i32 %31, ptr %32, align 4
  %33 = add i32 %22, 8
  %34 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %33) #4
  %35 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 4
  store i32 %34, ptr %35, align 4
  %36 = add i32 %22, 12
  %37 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %36) #4
  %38 = getelementptr %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 4, i32 1
  store i32 %37, ptr %38, align 4
  %39 = add i32 %22, 16
  %40 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %39) #4
  %41 = getelementptr %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 4, i32 2
  store i32 %40, ptr %41, align 4
  br label %71

42:                                               ; preds = %24
  %43 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %22) #4
  store i8 %43, ptr %4, align 4
  %44 = add i32 %22, 1
  %45 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %44) #4
  %46 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 1
  store i8 %45, ptr %46, align 1
  %47 = add i32 %22, 2
  %48 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %47) #4
  %49 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 2
  store i32 %48, ptr %49, align 4
  %50 = add i32 %22, 6
  %51 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %50) #4
  %52 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 3
  store i32 %51, ptr %52, align 4
  %53 = add i32 %22, 10
  %54 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %53) #4
  %55 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 4
  store i32 %54, ptr %55, align 4
  %56 = add i32 %22, 14
  %57 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %56) #4
  %58 = getelementptr %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 4, i32 1
  store i32 %57, ptr %58, align 4
  %59 = add i32 %22, 18
  %60 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %59) #4
  %61 = getelementptr %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 4, i32 2
  store i32 %60, ptr %61, align 4
  %62 = add i32 %22, 22
  %63 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %62) #4
  %64 = getelementptr %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 4, i32 3
  store i32 %63, ptr %64, align 4
  %65 = add i32 %22, 26
  %66 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %65) #4
  %67 = getelementptr %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 4, i32 4
  store i32 %66, ptr %67, align 4
  %68 = add i32 %22, 30
  %69 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %68) #4
  %70 = getelementptr %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 4, i32 5
  store i32 %69, ptr %70, align 4
  br label %71

71:                                               ; preds = %42, %26, %24, %15, %14
  %72 = phi i32 [ %22, %24 ], [ %22, %42 ], [ %22, %26 ], [ 0, %14 ], [ 0, %15 ]
  ret i32 %72
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
