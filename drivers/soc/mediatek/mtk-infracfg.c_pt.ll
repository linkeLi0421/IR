; ModuleID = '/llk/IR/drivers/soc/mediatek/mtk-infracfg.c_pt.bc'
source_filename = "../drivers/soc/mediatek/mtk-infracfg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtk_infracfg_set_bus_protection(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store i32 0, ptr %4, align 4, !annotation !8
  br i1 %2, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %0, i32 noundef 544, i32 noundef %1, i32 noundef %1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %9

7:                                                ; preds = %3
  %8 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 608, i32 noundef %1) #3
  br label %9

9:                                                ; preds = %7, %5
  %10 = tail call i32 @jiffies_to_usecs(i32 noundef 100) #3
  %11 = zext i32 %10 to i64
  %12 = tail call i64 @ktime_get() #3
  %13 = mul nuw nsw i64 %11, 1000
  %14 = add i64 %13, %12
  %15 = call i32 @regmap_read(ptr noundef %0, i32 noundef 552, ptr noundef nonnull %4) #3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %9
  %18 = icmp eq i32 %10, 0
  br label %19

19:                                               ; preds = %27, %17
  %20 = load i32, ptr %4, align 4
  %21 = and i32 %20, %1
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %37, label %23

23:                                               ; preds = %19
  br i1 %18, label %27, label %24

24:                                               ; preds = %23
  %25 = call i64 @ktime_get() #3
  %26 = icmp sgt i64 %25, %14
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %23
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #3
  %28 = call i32 @regmap_read(ptr noundef %0, i32 noundef 552, ptr noundef nonnull %4) #3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %19, label %39

30:                                               ; preds = %24
  %31 = call i32 @regmap_read(ptr noundef %0, i32 noundef 552, ptr noundef nonnull %4) #3
  %32 = icmp eq i32 %31, 0
  %33 = load i32, ptr %4, align 4
  %34 = and i32 %33, %1
  %35 = icmp eq i32 %34, %1
  %36 = select i1 %35, i32 0, i32 -110
  br i1 %32, label %37, label %39

37:                                               ; preds = %30, %19
  %38 = phi i32 [ %36, %30 ], [ 0, %19 ]
  br label %39

39:                                               ; preds = %37, %30, %27, %9
  %40 = phi i32 [ %38, %37 ], [ %31, %30 ], [ %15, %9 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  ret i32 %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtk_infracfg_clear_bus_protection(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store i32 0, ptr %4, align 4, !annotation !8
  br i1 %2, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %0, i32 noundef 544, i32 noundef %1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %9

7:                                                ; preds = %3
  %8 = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 612, i32 noundef %1) #3
  br label %9

9:                                                ; preds = %7, %5
  %10 = tail call i32 @jiffies_to_usecs(i32 noundef 100) #3
  %11 = zext i32 %10 to i64
  %12 = tail call i64 @ktime_get() #3
  %13 = mul nuw nsw i64 %11, 1000
  %14 = add i64 %13, %12
  %15 = call i32 @regmap_read(ptr noundef %0, i32 noundef 552, ptr noundef nonnull %4) #3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %9
  %18 = icmp eq i32 %10, 0
  br label %19

19:                                               ; preds = %27, %17
  %20 = load i32, ptr %4, align 4
  %21 = and i32 %20, %1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %19
  br i1 %18, label %27, label %24

24:                                               ; preds = %23
  %25 = call i64 @ktime_get() #3
  %26 = icmp sgt i64 %25, %14
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %23
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #3
  %28 = call i32 @regmap_read(ptr noundef %0, i32 noundef 552, ptr noundef nonnull %4) #3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %19, label %39

30:                                               ; preds = %24
  %31 = call i32 @regmap_read(ptr noundef %0, i32 noundef 552, ptr noundef nonnull %4) #3
  %32 = icmp eq i32 %31, 0
  %33 = load i32, ptr %4, align 4
  %34 = and i32 %33, %1
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 0, i32 -110
  br i1 %32, label %37, label %39

37:                                               ; preds = %30, %19
  %38 = phi i32 [ %36, %30 ], [ 0, %19 ]
  br label %39

39:                                               ; preds = %37, %30, %27, %9
  %40 = phi i32 [ %38, %37 ], [ %31, %30 ], [ %15, %9 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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
