; ModuleID = '/llk/IR/drivers/clk/uniphier/clk-uniphier-gate.c_pt.bc'
source_filename = "../drivers/clk/uniphier/clk-uniphier-gate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.uniphier_clk_gate = type { %struct.clk_hw, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.uniphier_clk_gate_data = type { ptr, i32, i32 }

@uniphier_clk_gate_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @uniphier_clk_gate_enable, ptr @uniphier_clk_gate_disable, ptr @uniphier_clk_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [25 x i8] c"\014failed to disable clk\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\014is_enabled() may return wrong result\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @uniphier_clk_register_gate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #5
  %6 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 12, i1 false), !annotation !8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 24, i32 noundef 3520) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %4
  store ptr %2, ptr %5, align 4
  %10 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @uniphier_clk_gate_ops, ptr %10, align 4
  %11 = load ptr, ptr %3, align 4
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 %13, ptr %14, align 4
  %15 = select i1 %12, ptr null, ptr %3
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %15, ptr %16, align 4
  %17 = icmp ne ptr %11, null
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.uniphier_clk_gate, ptr %7, i32 0, i32 1
  store ptr %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.uniphier_clk_gate_data, ptr %3, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.uniphier_clk_gate, ptr %7, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.uniphier_clk_gate_data, ptr %3, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.uniphier_clk_gate, ptr %7, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_hw, ptr %7, i32 0, i32 2
  store ptr %5, ptr %27, align 4
  %28 = call i32 @devm_clk_hw_register(ptr noundef %0, ptr noundef nonnull %7) #5
  %29 = icmp eq i32 %28, 0
  %30 = inttoptr i32 %28 to ptr
  %31 = select i1 %29, ptr %7, ptr %30
  br label %32

32:                                               ; preds = %9, %4
  %33 = phi ptr [ inttoptr (i32 -12 to ptr), %4 ], [ %31, %9 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #5
  ret ptr %33
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_clk_gate_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.uniphier_clk_gate, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uniphier_clk_gate, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uniphier_clk_gate, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = shl nuw i32 1, %7
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef %8, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #5
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_clk_gate_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.uniphier_clk_gate, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uniphier_clk_gate, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uniphier_clk_gate, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = shl nuw i32 1, %7
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef %8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %13

13:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_clk_gate_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.uniphier_clk_gate, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uniphier_clk_gate, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %2) #5
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i32, ptr %2, align 4
  %13 = getelementptr inbounds %struct.uniphier_clk_gate, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %12, %14
  %16 = and i32 %15, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
