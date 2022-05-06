; ModuleID = '/llk/IR/drivers/clk/mediatek/reset.c_pt.bc'
source_filename = "../drivers/clk/mediatek/reset.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.mtk_reset = type { ptr, i32, %struct.reset_controller_dev }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }

@mtk_reset_ops = internal constant %struct.reset_control_ops { ptr @mtk_reset, ptr @mtk_reset_assert, ptr @mtk_reset_deassert, ptr null }, align 4
@mtk_reset_ops_set_clr = internal constant %struct.reset_control_ops { ptr @mtk_reset_set_clr, ptr @mtk_reset_assert_set_clr, ptr @mtk_reset_deassert_set_clr, ptr null }, align 4
@__UNIQUE_ID_file166 = internal constant [38 x i8] c"reset.file=drivers/clk/mediatek/reset\00", section ".modinfo", align 1
@__UNIQUE_ID_license167 = internal constant [18 x i8] c"reset.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [36 x i8] c"\013Cannot find regmap for %pOF: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"\013could not register reset controller: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_file166, ptr @__UNIQUE_ID_license167], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mtk_register_reset_controller(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @mtk_register_reset_controller_common(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @mtk_reset_ops)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mtk_register_reset_controller_common(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @device_node_to_regmap(ptr noundef %0) #4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = ptrtoint ptr %5 to i32
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0, i32 noundef %8) #5
  br label %25

10:                                               ; preds = %4
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 52) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  store ptr %5, ptr %12, align 8
  %15 = getelementptr inbounds %struct.mtk_reset, ptr %12, i32 0, i32 1
  store i32 %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.mtk_reset, ptr %12, i32 0, i32 2
  %17 = getelementptr inbounds %struct.mtk_reset, ptr %12, i32 0, i32 2, i32 1
  store ptr null, ptr %17, align 4
  %18 = shl i32 %1, 5
  %19 = getelementptr inbounds %struct.mtk_reset, ptr %12, i32 0, i32 2, i32 8
  store i32 %18, ptr %19, align 8
  store ptr %3, ptr %16, align 8
  %20 = getelementptr inbounds %struct.mtk_reset, ptr %12, i32 0, i32 2, i32 5
  store ptr %0, ptr %20, align 4
  %21 = tail call i32 @reset_controller_register(ptr noundef %16) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %21) #5
  tail call void @kfree(ptr noundef nonnull %12) #4
  br label %25

25:                                               ; preds = %23, %14, %10, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mtk_register_reset_controller_set_clr(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @mtk_register_reset_controller_common(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @mtk_reset_ops_set_clr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_reset(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %1, 3
  %8 = and i32 %7, 536870908
  %9 = add i32 %6, %8
  %10 = and i32 %1, 31
  %11 = shl nuw i32 1, %10
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %9, i32 noundef %11, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 4
  %16 = load i32, ptr %5, align 4
  %17 = add i32 %16, %8
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %17, i32 noundef %11, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %19

19:                                               ; preds = %14, %2
  %20 = phi i32 [ %18, %14 ], [ %12, %2 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_reset_assert(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %1, 3
  %8 = and i32 %7, 536870908
  %9 = add i32 %6, %8
  %10 = and i32 %1, 31
  %11 = shl nuw i32 1, %10
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %9, i32 noundef %11, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_reset_deassert(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %1, 3
  %8 = and i32 %7, 536870908
  %9 = add i32 %6, %8
  %10 = and i32 %1, 31
  %11 = shl nuw i32 1, %10
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %9, i32 noundef %11, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_reset_set_clr(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %1, 1
  %7 = and i32 %6, 2147483632
  %8 = add i32 %5, %7
  %9 = load ptr, ptr %3, align 4
  %10 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %8, i32 noundef 1) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, ptr %4, align 4
  %14 = or i32 %7, 4
  %15 = add i32 %14, %13
  %16 = load ptr, ptr %3, align 4
  %17 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef %15, i32 noundef 1) #4
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i32 [ %17, %12 ], [ %10, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_reset_assert_set_clr(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %1, 1
  %7 = and i32 %6, 2147483632
  %8 = add i32 %5, %7
  %9 = load ptr, ptr %3, align 4
  %10 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %8, i32 noundef 1) #4
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_reset_deassert_set_clr(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %1, 1
  %7 = and i32 %6, 2147483632
  %8 = or i32 %7, 4
  %9 = add i32 %8, %5
  %10 = load ptr, ptr %3, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %9, i32 noundef 1) #4
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind allocsize(2) }

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
