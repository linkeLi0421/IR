; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/conn.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/conn.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvbios_connE = type { i8, i8, i8, i8, i8, i8, i8 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_connTe(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call zeroext i16 @dcb_table(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #4
  %7 = zext i16 %6 to i32
  %8 = icmp eq i16 %6, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = load i8, ptr %1, align 1
  %11 = icmp ugt i8 %10, 47
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load i8, ptr %2, align 1
  %14 = icmp ugt i8 %13, 21
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = add nuw nsw i32 %7, 20
  %17 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %16) #4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = zext i16 %17 to i32
  %21 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %20) #4
  store i8 %21, ptr %1, align 1
  %22 = add nuw nsw i32 %20, 1
  %23 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %22) #4
  store i8 %23, ptr %2, align 1
  %24 = add nuw nsw i32 %20, 2
  %25 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %24) #4
  store i8 %25, ptr %3, align 1
  %26 = add nuw nsw i32 %20, 3
  %27 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %26) #4
  store i8 %27, ptr %4, align 1
  br label %28

28:                                               ; preds = %19, %15, %12, %9, %5
  %29 = phi i32 [ %20, %19 ], [ 0, %12 ], [ 0, %9 ], [ 0, %5 ], [ 0, %15 ]
  ret i32 %29
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
define dso_local i32 @nvbios_connTp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readnone %5) local_unnamed_addr #0 {
  %7 = tail call i32 @nvbios_connTe(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %8 = icmp eq i32 %7, 0
  %9 = load i8, ptr %1, align 1
  %10 = select i1 %8, i8 0, i8 %9
  switch i8 %10, label %11 [
    i8 48, label %12
    i8 64, label %12
  ]

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %11, %6, %6
  %13 = phi i32 [ 0, %11 ], [ %7, %6 ], [ %7, %6 ]
  ret i32 %13
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_connEe(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #4
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
  store i8 0, ptr %6, align 1, !annotation !8
  %7 = call i32 @nvbios_connTe(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %3)
  %8 = icmp ne i32 %7, 0
  %9 = load i8, ptr %6, align 1
  %10 = icmp ugt i8 %9, %1
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = zext i8 %1 to i32
  %14 = load i8, ptr %5, align 1
  %15 = zext i8 %14 to i32
  %16 = add i32 %7, %15
  %17 = load i8, ptr %3, align 1
  %18 = zext i8 %17 to i32
  %19 = mul nuw nsw i32 %18, %13
  %20 = add i32 %16, %19
  br label %21

21:                                               ; preds = %12, %4
  %22 = phi i32 [ %20, %12 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_connEp(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  store i8 0, ptr %7, align 1, !annotation !8
  %8 = call i32 @nvbios_connTe(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %3) #4
  %9 = icmp ne i32 %8, 0
  %10 = load i8, ptr %7, align 1
  %11 = icmp ugt i8 %10, %1
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(7) %4, i8 0, i32 7, i1 false)
  br label %69

14:                                               ; preds = %5
  %15 = zext i8 %1 to i32
  %16 = load i8, ptr %6, align 1
  %17 = zext i8 %16 to i32
  %18 = add i32 %8, %17
  %19 = load i8, ptr %3, align 1
  %20 = zext i8 %19 to i32
  %21 = mul nuw nsw i32 %20, %15
  %22 = add i32 %18, %21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(7) %4, i8 0, i32 7, i1 false)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %69, label %24

24:                                               ; preds = %14
  %25 = load i8, ptr %2, align 1
  switch i8 %25, label %69 [
    i8 48, label %26
    i8 64, label %26
  ]

26:                                               ; preds = %24, %24
  %27 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %22) #4
  store i8 %27, ptr %4, align 1
  %28 = add i32 %22, 1
  %29 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %28) #4
  %30 = and i8 %29, 15
  %31 = getelementptr inbounds %struct.nvbios_connE, ptr %4, i32 0, i32 1
  store i8 %30, ptr %31, align 1
  %32 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %28) #4
  %33 = lshr i8 %32, 4
  %34 = and i8 %33, 3
  %35 = getelementptr inbounds %struct.nvbios_connE, ptr %4, i32 0, i32 2
  store i8 %34, ptr %35, align 1
  %36 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %28) #4
  %37 = lshr i8 %36, 6
  %38 = getelementptr inbounds %struct.nvbios_connE, ptr %4, i32 0, i32 3
  store i8 %37, ptr %38, align 1
  %39 = load i8, ptr %3, align 1
  %40 = icmp ult i8 %39, 4
  br i1 %40, label %69, label %41

41:                                               ; preds = %26
  %42 = add i32 %22, 2
  %43 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %42) #4
  %44 = shl i8 %43, 2
  %45 = and i8 %44, 12
  %46 = load i8, ptr %35, align 1
  %47 = or i8 %45, %46
  store i8 %47, ptr %35, align 1
  %48 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %42) #4
  %49 = and i8 %48, 12
  %50 = load i8, ptr %38, align 1
  %51 = or i8 %50, %49
  store i8 %51, ptr %38, align 1
  %52 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %42) #4
  %53 = lshr i8 %52, 4
  %54 = getelementptr inbounds %struct.nvbios_connE, ptr %4, i32 0, i32 4
  store i8 %53, ptr %54, align 1
  %55 = add i32 %22, 3
  %56 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %55) #4
  %57 = shl i8 %56, 4
  %58 = and i8 %57, 112
  %59 = load i8, ptr %35, align 1
  %60 = or i8 %58, %59
  store i8 %60, ptr %35, align 1
  %61 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %55) #4
  %62 = lshr i8 %61, 3
  %63 = and i8 %62, 1
  %64 = getelementptr inbounds %struct.nvbios_connE, ptr %4, i32 0, i32 5
  store i8 %63, ptr %64, align 1
  %65 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %55) #4
  %66 = lshr i8 %65, 4
  %67 = and i8 %66, 7
  %68 = getelementptr inbounds %struct.nvbios_connE, ptr %4, i32 0, i32 6
  store i8 %67, ptr %68, align 1
  br label %69

69:                                               ; preds = %41, %26, %24, %14, %13
  %70 = phi i32 [ %22, %41 ], [ %22, %26 ], [ 0, %24 ], [ 0, %14 ], [ 0, %13 ]
  ret i32 %70
}

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
