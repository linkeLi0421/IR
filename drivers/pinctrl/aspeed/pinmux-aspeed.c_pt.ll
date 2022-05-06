; ModuleID = '/llk/IR/drivers/pinctrl/aspeed/pinmux-aspeed.c_pt.bc'
source_filename = "../drivers/pinctrl/aspeed/pinmux-aspeed.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aspeed_sig_desc = type { i32, i32, i32, i32, i32 }
%struct.aspeed_pinmux_data = type { ptr, [3 x ptr], ptr, ptr, i32, ptr, i32 }
%struct.aspeed_sig_expr = type { ptr, ptr, i32, ptr }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @aspeed_sig_desc_eval(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = icmp eq ptr %2, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.aspeed_sig_desc, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef nonnull %2, i32 noundef %8, ptr noundef nonnull %4) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.aspeed_sig_desc, ptr %0, i32 0, i32 3
  %13 = getelementptr inbounds %struct.aspeed_sig_desc, ptr %0, i32 0, i32 4
  %14 = select i1 %1, ptr %12, ptr %13
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %4, align 4
  %17 = getelementptr inbounds %struct.aspeed_sig_desc, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %16
  %20 = call i32 @llvm.cttz.i32(i32 %18, i1 false) #4, !range !9
  %21 = lshr i32 %19, %20
  %22 = icmp eq i32 %21, %15
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %11, %6, %3
  %25 = phi i32 [ %23, %11 ], [ -19, %3 ], [ %9, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @aspeed_sig_expr_eval(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.aspeed_pinmux_data, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.aspeed_sig_expr, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.aspeed_sig_expr, ptr %1, i32 0, i32 3
  br label %21

15:                                               ; preds = %3
  %16 = tail call i32 %7(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #4
  br label %51

17:                                               ; preds = %48
  %18 = add nuw nsw i32 %22, 1
  %19 = load i32, ptr %10, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %17, %13
  %22 = phi i32 [ 0, %13 ], [ %18, %17 ]
  %23 = load ptr, ptr %14, align 4
  %24 = getelementptr %struct.aspeed_sig_desc, ptr %23, i32 %22
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.aspeed_pinmux_data, ptr %0, i32 0, i32 1, i32 %25
  %27 = load ptr, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  br label %51

30:                                               ; preds = %21
  %31 = getelementptr %struct.aspeed_sig_desc, ptr %23, i32 %22, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = call i32 @regmap_read(ptr noundef nonnull %27, i32 noundef %32, ptr noundef nonnull %4) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = getelementptr %struct.aspeed_sig_desc, ptr %23, i32 %22, i32 3
  %37 = getelementptr %struct.aspeed_sig_desc, ptr %23, i32 %22, i32 4
  %38 = select i1 %2, ptr %36, ptr %37
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %4, align 4
  %41 = getelementptr %struct.aspeed_sig_desc, ptr %23, i32 %22, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, %40
  %44 = call i32 @llvm.cttz.i32(i32 %42, i1 false) #4, !range !9
  %45 = lshr i32 %43, %44
  %46 = icmp eq i32 %45, %39
  %47 = zext i1 %46 to i32
  br label %48

48:                                               ; preds = %35, %30
  %49 = phi i32 [ %47, %35 ], [ %33, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %17

51:                                               ; preds = %48, %29, %17, %15, %9
  %52 = phi i32 [ %16, %15 ], [ -19, %29 ], [ 1, %9 ], [ %49, %48 ], [ 1, %17 ]
  ret i32 %52
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i32 0, i32 33}
