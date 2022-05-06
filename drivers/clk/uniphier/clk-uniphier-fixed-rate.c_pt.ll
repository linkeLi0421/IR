; ModuleID = '/llk/IR/drivers/clk/uniphier/clk-uniphier-fixed-rate.c_pt.bc'
source_filename = "../drivers/clk/uniphier/clk-uniphier-fixed-rate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_fixed_rate = type { %struct.clk_hw, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_fixed_rate_ops = external dso_local constant %struct.clk_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @uniphier_clk_register_fixed_rate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #4
  %5 = getelementptr inbounds i8, ptr %4, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 16, i1 false), !annotation !8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 24, i32 noundef 3520) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  store ptr %1, ptr %4, align 4
  %9 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  store ptr @clk_fixed_rate_ops, ptr %9, align 4
  %10 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 2
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 5
  store i8 0, ptr %11, align 4
  %12 = load i32, ptr %2, align 4
  %13 = getelementptr inbounds %struct.clk_fixed_rate, ptr %6, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.clk_hw, ptr %6, i32 0, i32 2
  store ptr %4, ptr %14, align 4
  %15 = call i32 @devm_clk_hw_register(ptr noundef %0, ptr noundef nonnull %6) #4
  %16 = icmp eq i32 %15, 0
  %17 = inttoptr i32 %15 to ptr
  %18 = select i1 %16, ptr %6, ptr %17
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi ptr [ inttoptr (i32 -12 to ptr), %3 ], [ %18, %8 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #4
  ret ptr %20
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
