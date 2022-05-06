; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cxd2880/cxd2880_devio_spi.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2880/cxd2880_devio_spi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cxd2880_io = type { ptr, ptr, ptr, ptr, i8, i8, i8, ptr }
%struct.cxd2880_spi = type { ptr, ptr, ptr, i32, ptr }

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @cxd2880_io_spi_create(ptr noundef writeonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  store ptr @cxd2880_io_spi_read_reg, ptr %0, align 4
  %8 = getelementptr inbounds %struct.cxd2880_io, ptr %0, i32 0, i32 1
  store ptr @cxd2880_io_spi_write_reg, ptr %8, align 4
  %9 = getelementptr inbounds %struct.cxd2880_io, ptr %0, i32 0, i32 2
  store ptr @cxd2880_io_common_write_one_reg, ptr %9, align 4
  %10 = getelementptr inbounds %struct.cxd2880_io, ptr %0, i32 0, i32 3
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.cxd2880_io, ptr %0, i32 0, i32 4
  store i8 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cxd2880_io, ptr %0, i32 0, i32 5
  store i8 0, ptr %12, align 1
  %13 = getelementptr inbounds %struct.cxd2880_io, ptr %0, i32 0, i32 6
  store i8 %2, ptr %13, align 2
  br label %14

14:                                               ; preds = %7, %3
  %15 = phi i32 [ 0, %7 ], [ -22, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2880_io_spi_read_reg(ptr noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) #1 {
  %6 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #7
  %7 = icmp eq ptr %0, null
  br i1 %7, label %45, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.cxd2880_io, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %3, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %45

14:                                               ; preds = %8
  %15 = zext i8 %2 to i32
  %16 = add i32 %15, %4
  %17 = icmp ugt i32 %16, 256
  br i1 %17, label %45, label %18

18:                                               ; preds = %14
  %19 = icmp eq i32 %1, 0
  %20 = select i1 %19, i8 11, i8 10
  store i8 %20, ptr %6, align 1
  %21 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 3
  store i8 0, ptr %21, align 1
  %22 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 4
  store i8 0, ptr %22, align 1
  %23 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 5
  store i8 0, ptr %23, align 1
  %24 = icmp eq i32 %4, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  %27 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  %28 = getelementptr inbounds %struct.cxd2880_spi, ptr %10, i32 0, i32 2
  br label %29

29:                                               ; preds = %38, %25
  %30 = phi ptr [ %3, %25 ], [ %42, %38 ]
  %31 = phi i32 [ %4, %25 ], [ %43, %38 ]
  %32 = phi i8 [ %2, %25 ], [ %41, %38 ]
  store i8 %32, ptr %26, align 1
  %33 = call i32 @llvm.umin.i32(i32 %31, i32 255)
  %34 = trunc i32 %33 to i8
  store i8 %34, ptr %27, align 1
  %35 = load ptr, ptr %28, align 4
  %36 = call i32 %35(ptr noundef nonnull %10, ptr noundef nonnull %6, i32 noundef 6, ptr noundef %30, i32 noundef %33) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load i8, ptr %27, align 1
  %40 = zext i8 %39 to i32
  %41 = add i8 %39, %32
  %42 = getelementptr i8, ptr %30, i32 %40
  %43 = sub i32 %31, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %29

45:                                               ; preds = %38, %29, %18, %14, %8, %5
  %46 = phi i32 [ -22, %8 ], [ -22, %5 ], [ -22, %14 ], [ 0, %18 ], [ %36, %29 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #7
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2880_io_spi_write_reg(ptr noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef readonly %3, i32 noundef %4) #1 {
  %6 = alloca [132 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %6) #7
  %7 = getelementptr inbounds i8, ptr %6, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(132) %7, i8 0, i32 129, i1 false), !annotation !8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cxd2880_io, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = icmp eq ptr %3, null
  %14 = or i1 %13, %12
  %15 = icmp ugt i32 %4, 128
  %16 = or i1 %15, %14
  br i1 %16, label %51, label %17

17:                                               ; preds = %9
  %18 = zext i8 %2 to i32
  %19 = add nuw nsw i32 %18, %4
  %20 = icmp ugt i32 %19, 256
  br i1 %20, label %51, label %21

21:                                               ; preds = %17
  %22 = icmp eq i32 %1, 0
  %23 = select i1 %22, i8 15, i8 14
  store i8 %23, ptr %6, align 1
  %24 = icmp eq i32 %4, 0
  br i1 %24, label %51, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds [132 x i8], ptr %6, i32 0, i32 1
  %27 = getelementptr inbounds [132 x i8], ptr %6, i32 0, i32 2
  %28 = getelementptr inbounds %struct.cxd2880_spi, ptr %11, i32 0, i32 1
  br label %29

29:                                               ; preds = %44, %25
  %30 = phi ptr [ %3, %25 ], [ %48, %44 ]
  %31 = phi i32 [ %4, %25 ], [ %49, %44 ]
  %32 = phi i8 [ %2, %25 ], [ %47, %44 ]
  store i8 %32, ptr %26, align 1
  %33 = call i32 @llvm.umin.i32(i32 %31, i32 255)
  %34 = trunc i32 %33 to i8
  store i8 %34, ptr %27, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %7, ptr align 1 %30, i32 %33, i1 false)
  br i1 %22, label %35, label %38

35:                                               ; preds = %29
  %36 = add nuw nsw i32 %33, 3
  %37 = getelementptr [132 x i8], ptr %6, i32 0, i32 %36
  store i8 0, ptr %37, align 1
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi i32 [ 4, %35 ], [ 3, %29 ]
  %40 = load ptr, ptr %28, align 4
  %41 = add nuw nsw i32 %39, %33
  %42 = call i32 %40(ptr noundef nonnull %11, ptr noundef nonnull %6, i32 noundef %41) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i8, ptr %27, align 1
  %46 = zext i8 %45 to i32
  %47 = add i8 %45, %32
  %48 = getelementptr i8, ptr %30, i32 %46
  %49 = sub i32 %31, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %29

51:                                               ; preds = %44, %38, %21, %17, %9, %5
  %52 = phi i32 [ -22, %9 ], [ -22, %5 ], [ -22, %17 ], [ 0, %21 ], [ 0, %44 ], [ %42, %38 ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %6) #7
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_io_common_write_one_reg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
