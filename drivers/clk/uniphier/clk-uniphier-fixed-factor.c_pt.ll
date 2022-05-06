; ModuleID = '/llk/IR/drivers/clk/uniphier/clk-uniphier-fixed-factor.c_pt.bc'
source_filename = "../drivers/clk/uniphier/clk-uniphier-fixed-factor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.uniphier_clk_fixed_factor_data = type { ptr, i32, i32 }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @uniphier_clk_register_fixed_factor(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #4
  %5 = getelementptr inbounds i8, ptr %4, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 12, i1 false), !annotation !8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 20, i32 noundef 3520) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %3
  store ptr %1, ptr %4, align 4
  %9 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  store ptr @clk_fixed_factor_ops, ptr %9, align 4
  %10 = load ptr, ptr %2, align 4
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 6
  store i32 %12, ptr %13, align 4
  %14 = select i1 %11, ptr null, ptr %2
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 2
  store ptr %14, ptr %15, align 4
  %16 = icmp ne ptr %10, null
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 5
  store i8 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.uniphier_clk_fixed_factor_data, ptr %2, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.clk_fixed_factor, ptr %6, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.uniphier_clk_fixed_factor_data, ptr %2, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.clk_fixed_factor, ptr %6, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.clk_hw, ptr %6, i32 0, i32 2
  store ptr %4, ptr %25, align 4
  %26 = call i32 @devm_clk_hw_register(ptr noundef %0, ptr noundef nonnull %6) #4
  %27 = icmp eq i32 %26, 0
  %28 = inttoptr i32 %26 to ptr
  %29 = select i1 %27, ptr %6, ptr %28
  br label %30

30:                                               ; preds = %8, %3
  %31 = phi ptr [ inttoptr (i32 -12 to ptr), %3 ], [ %29, %8 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #4
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
