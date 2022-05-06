; ModuleID = '/llk/IR/drivers/clk/uniphier/clk-uniphier-mux.c_pt.bc'
source_filename = "../drivers/clk/uniphier/clk-uniphier-mux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.uniphier_clk_mux_data = type { [8 x ptr], i32, i32, [8 x i32], [8 x i32] }
%struct.uniphier_clk_mux = type { %struct.clk_hw, ptr, i32, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@uniphier_clk_mux_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__clk_mux_determine_rate, ptr @uniphier_clk_mux_set_parent, ptr @uniphier_clk_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @uniphier_clk_register_mux(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #4
  %6 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 12, i1 false), !annotation !8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 28, i32 noundef 3520) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %4
  store ptr %2, ptr %5, align 4
  %10 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @uniphier_clk_mux_ops, ptr %10, align 4
  %11 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.uniphier_clk_mux_data, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.uniphier_clk_mux, ptr %7, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.uniphier_clk_mux_data, ptr %3, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.uniphier_clk_mux, ptr %7, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.uniphier_clk_mux_data, ptr %3, i32 0, i32 3
  %22 = getelementptr inbounds %struct.uniphier_clk_mux, ptr %7, i32 0, i32 3
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.uniphier_clk_mux_data, ptr %3, i32 0, i32 4
  %24 = getelementptr inbounds %struct.uniphier_clk_mux, ptr %7, i32 0, i32 4
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.clk_hw, ptr %7, i32 0, i32 2
  store ptr %5, ptr %25, align 4
  %26 = call i32 @devm_clk_hw_register(ptr noundef %0, ptr noundef nonnull %7) #4
  %27 = icmp eq i32 %26, 0
  %28 = inttoptr i32 %26 to ptr
  %29 = select i1 %27, ptr %7, ptr %28
  br label %30

30:                                               ; preds = %9, %4
  %31 = phi ptr [ inttoptr (i32 -12 to ptr), %4 ], [ %29, %9 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #4
  ret ptr %31
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
define internal i32 @uniphier_clk_mux_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.uniphier_clk_mux, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uniphier_clk_mux, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uniphier_clk_mux, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = zext i8 %1 to i32
  %10 = getelementptr i32, ptr %8, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.uniphier_clk_mux, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i32, ptr %13, i32 %9
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %6, i32 noundef %11, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #4
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @uniphier_clk_mux_get_parent(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.uniphier_clk_mux, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uniphier_clk_mux, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %2) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.uniphier_clk_mux, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %2, align 4
  %16 = getelementptr inbounds %struct.uniphier_clk_mux, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  br label %20

18:                                               ; preds = %1
  %19 = trunc i32 %8 to i8
  br label %33

20:                                               ; preds = %30, %12
  %21 = phi i32 [ 0, %12 ], [ %31, %30 ]
  %22 = getelementptr i32, ptr %14, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %15, %23
  %25 = getelementptr i32, ptr %17, i32 %21
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = trunc i32 %21 to i8
  br label %33

30:                                               ; preds = %20
  %31 = add nuw i32 %21, 1
  %32 = icmp eq i32 %31, %3
  br i1 %32, label %33, label %20

33:                                               ; preds = %30, %28, %18, %10
  %34 = phi i8 [ %19, %18 ], [ %29, %28 ], [ -22, %10 ], [ -22, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  ret i8 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

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
