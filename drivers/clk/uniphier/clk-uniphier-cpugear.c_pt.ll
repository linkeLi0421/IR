; ModuleID = '/llk/IR/drivers/clk/uniphier/clk-uniphier-cpugear.c_pt.bc'
source_filename = "../drivers/clk/uniphier/clk-uniphier-cpugear.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.uniphier_clk_cpugear_data = type { [16 x ptr], i32, i32, i32 }
%struct.uniphier_clk_cpugear = type { %struct.clk_hw, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@uniphier_clk_cpugear_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__clk_mux_determine_rate, ptr @uniphier_clk_cpugear_set_parent, ptr @uniphier_clk_cpugear_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @uniphier_clk_register_cpugear(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #4
  %6 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 12, i1 false), !annotation !8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 24, i32 noundef 3520) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %4
  store ptr %2, ptr %5, align 4
  %10 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @uniphier_clk_cpugear_ops, ptr %10, align 4
  %11 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.uniphier_clk_cpugear_data, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.uniphier_clk_cpugear, ptr %7, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.uniphier_clk_cpugear_data, ptr %3, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.uniphier_clk_cpugear, ptr %7, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.uniphier_clk_cpugear_data, ptr %3, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.uniphier_clk_cpugear, ptr %7, i32 0, i32 3
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_hw, ptr %7, i32 0, i32 2
  store ptr %5, ptr %24, align 4
  %25 = call i32 @devm_clk_hw_register(ptr noundef %0, ptr noundef nonnull %7) #4
  %26 = icmp eq i32 %25, 0
  %27 = inttoptr i32 %25 to ptr
  %28 = select i1 %26, ptr %7, ptr %27
  br label %29

29:                                               ; preds = %9, %4
  %30 = phi ptr [ inttoptr (i32 -12 to ptr), %4 ], [ %28, %9 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #4
  ret ptr %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_clk_cpugear_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.uniphier_clk_cpugear, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uniphier_clk_cpugear, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 4
  %9 = getelementptr inbounds %struct.uniphier_clk_cpugear, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = zext i8 %1 to i32
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %8, i32 noundef %10, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 4
  %16 = load i32, ptr %6, align 4
  %17 = add i32 %16, 8
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %17, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %14
  %21 = tail call i64 @ktime_get() #4
  %22 = add i64 %21, 1000
  br label %23

23:                                               ; preds = %33, %20
  %24 = load ptr, ptr %4, align 4
  %25 = load i32, ptr %6, align 4
  %26 = add i32 %25, 8
  %27 = call i32 @regmap_read(ptr noundef %24, i32 noundef %26, ptr noundef nonnull %3) #4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load i32, ptr %3, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = call i64 @ktime_get() #4
  %35 = icmp sgt i64 %34, %22
  br i1 %35, label %36, label %23

36:                                               ; preds = %33
  %37 = load ptr, ptr %4, align 4
  %38 = load i32, ptr %6, align 4
  %39 = add i32 %38, 8
  %40 = call i32 @regmap_read(ptr noundef %37, i32 noundef %39, ptr noundef nonnull %3) #4
  br label %41

41:                                               ; preds = %36, %29, %23
  %42 = phi i32 [ %40, %36 ], [ 0, %29 ], [ %27, %23 ]
  %43 = icmp ne i32 %42, 0
  %44 = load i32, ptr %3, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %43, i1 true, i1 %46
  %48 = select i1 %47, i32 0, i32 -110
  %49 = select i1 %43, i32 %42, i32 %48
  br label %50

50:                                               ; preds = %41, %14, %2
  %51 = phi i32 [ %49, %41 ], [ %12, %2 ], [ %18, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @uniphier_clk_cpugear_get_parent(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.uniphier_clk_cpugear, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uniphier_clk_cpugear, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %2) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = trunc i32 %8 to i8
  br label %20

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.uniphier_clk_cpugear, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %2, align 4
  %16 = and i32 %15, %14
  %17 = icmp ult i32 %16, %3
  %18 = trunc i32 %16 to i8
  %19 = select i1 %17, i8 %18, i8 -22
  br label %20

20:                                               ; preds = %12, %10
  %21 = phi i8 [ %11, %10 ], [ %19, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  ret i8 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #3

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
