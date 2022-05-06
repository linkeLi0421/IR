; ModuleID = '/llk/IR/drivers/clk/actions/owl-reset.c_pt.bc'
source_filename = "../drivers/clk/actions/owl-reset.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.owl_reset = type { %struct.reset_controller_dev, ptr, ptr }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.owl_reset_map = type { i32, i32 }

@owl_reset_ops = dso_local local_unnamed_addr constant %struct.reset_control_ops { ptr @owl_reset_reset, ptr @owl_reset_assert, ptr @owl_reset_deassert, ptr @owl_reset_status }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_reset_reset(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.owl_reset, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.owl_reset_map, ptr %4, i32 %1
  %6 = getelementptr inbounds %struct.owl_reset, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %5, align 4
  %9 = getelementptr %struct.owl_reset_map, ptr %4, i32 %1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %8, i32 noundef %10, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #3
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr %struct.owl_reset_map, ptr %13, i32 %1
  %15 = load ptr, ptr %6, align 4
  %16 = load i32, ptr %14, align 4
  %17 = getelementptr %struct.owl_reset_map, ptr %13, i32 %1, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %16, i32 noundef %18, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_reset_assert(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.owl_reset, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.owl_reset_map, ptr %4, i32 %1
  %6 = getelementptr inbounds %struct.owl_reset, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %5, align 4
  %9 = getelementptr %struct.owl_reset_map, ptr %4, i32 %1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %8, i32 noundef %10, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_reset_deassert(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.owl_reset, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.owl_reset_map, ptr %4, i32 %1
  %6 = getelementptr inbounds %struct.owl_reset, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %5, align 4
  %9 = getelementptr %struct.owl_reset_map, ptr %4, i32 %1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %8, i32 noundef %10, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_reset_status(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.owl_reset, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.owl_reset_map, ptr %5, i32 %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.owl_reset, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = call i32 @regmap_read(ptr noundef %8, i32 noundef %9, ptr noundef nonnull %3) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = getelementptr %struct.owl_reset_map, ptr %5, i32 %1, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %3, align 4
  %16 = and i32 %15, %14
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %12, %2
  %20 = phi i32 [ %18, %12 ], [ %10, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  ret i32 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

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
