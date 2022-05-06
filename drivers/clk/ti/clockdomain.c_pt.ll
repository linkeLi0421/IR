; ModuleID = '/llk/IR/drivers/clk/ti/clockdomain.c_pt.bc'
source_filename = "../drivers/clk/ti/clockdomain.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [31 x i8] c"\013%s: %s: %s: no clkdm set ?!\0A\00", align 1
@__func__.omap2_clkops_enable_clkdm = private unnamed_addr constant [26 x i8] c"omap2_clkops_enable_clkdm\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"\013%s: %s: %s: clkfw-based clockdomain control disabled ?!\0A\00", align 1
@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"drivers/clk/ti/clockdomain.c\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"%s: could not enable %s's clockdomain %s: %d\0A\00", align 1
@__func__.omap2_clkops_disable_clkdm = private unnamed_addr constant [27 x i8] c"omap2_clkops_disable_clkdm\00", align 1
@ti_clkdm_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,clockdomain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"\013%s: %s: Failed get %pOF' clock nr %d (%ld)\0A\00", align 1
@__func__.of_ti_clockdomain_setup = private unnamed_addr constant [24 x i8] c"of_ti_clockdomain_setup\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"\014%s: can't setup clkdm for basic clk %s\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_clkops_enable_clkdm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8, !prof !8

5:                                                ; preds = %1
  %6 = tail call ptr @clk_hw_get_name(ptr noundef %0) #4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.omap2_clkops_enable_clkdm, ptr noundef nonnull @__func__.omap2_clkops_enable_clkdm, ptr noundef %6) #5
  br label %29

8:                                                ; preds = %1
  %9 = tail call ptr @ti_clk_get_features() #4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = tail call ptr @clk_hw_get_name(ptr noundef %0) #4
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap2_clkops_enable_clkdm, ptr noundef nonnull @__func__.omap2_clkops_enable_clkdm, ptr noundef %14) #5
  br label %29

16:                                               ; preds = %8
  %17 = load ptr, ptr @ti_clk_ll_ops, align 4
  %18 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %19(ptr noundef %20, ptr noundef %22) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !9

25:                                               ; preds = %16
  %26 = tail call ptr @clk_hw_get_name(ptr noundef %0) #4
  %27 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.omap2_clkops_enable_clkdm, ptr noundef %26, ptr noundef %28, i32 noundef %23) #4
  br label %29

29:                                               ; preds = %25, %16, %13, %5
  %30 = phi i32 [ -22, %5 ], [ 0, %13 ], [ %23, %25 ], [ 0, %16 ]
  ret i32 %30
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_get_features() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap2_clkops_disable_clkdm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8, !prof !8

5:                                                ; preds = %1
  %6 = tail call ptr @clk_hw_get_name(ptr noundef %0) #4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.omap2_clkops_disable_clkdm, ptr noundef nonnull @__func__.omap2_clkops_disable_clkdm, ptr noundef %6) #5
  br label %24

8:                                                ; preds = %1
  %9 = tail call ptr @ti_clk_get_features() #4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = tail call ptr @clk_hw_get_name(ptr noundef %0) #4
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap2_clkops_disable_clkdm, ptr noundef nonnull @__func__.omap2_clkops_disable_clkdm, ptr noundef %14) #5
  br label %24

16:                                               ; preds = %8
  %17 = load ptr, ptr @ti_clk_ll_ops, align 4
  %18 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %17, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %19(ptr noundef %20, ptr noundef %22) #4
  br label %24

24:                                               ; preds = %16, %13, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_init_clk_clkdm(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @__clk_get_name(ptr noundef %7) #4
  %9 = load ptr, ptr @ti_clk_ll_ops, align 4
  %10 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %2, align 4
  %13 = tail call ptr %11(ptr noundef %12) #4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 10
  store ptr %13, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %5, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @ti_dt_clockdomains_setup() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @ti_clkdm_match_table, ptr noundef null) #4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %3, %0
  %4 = phi ptr [ %5, %3 ], [ %1, %0 ]
  tail call fastcc void @of_ti_clockdomain_setup(ptr noundef nonnull %4) #6
  %5 = tail call ptr @of_find_matching_node_and_match(ptr noundef nonnull %4, ptr noundef nonnull @ti_clkdm_match_table, ptr noundef null) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %3

7:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @of_ti_clockdomain_setup(ptr noundef %0) unnamed_addr #3 section ".init.text" {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i32 @of_clk_get_parent_count(ptr noundef %0) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %21, %1
  %6 = phi i32 [ %22, %21 ], [ 0, %1 ]
  %7 = tail call ptr @of_clk_get(ptr noundef %0, i32 noundef %6) #4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = ptrtoint ptr %7 to i32
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.of_ti_clockdomain_setup, ptr noundef nonnull @__func__.of_ti_clockdomain_setup, ptr noundef %0, i32 noundef %6, i32 noundef %10) #5
  br label %21

12:                                               ; preds = %5
  %13 = tail call ptr @__clk_get_hw(ptr noundef %7) #4
  %14 = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %13) #4
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @__clk_get_name(ptr noundef %7) #4
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.of_ti_clockdomain_setup, ptr noundef %16) #5
  tail call void @clk_put(ptr noundef %7) #4
  br label %21

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.clk_hw_omap, ptr %13, i32 0, i32 9
  store ptr %2, ptr %19, align 4
  %20 = tail call i32 @omap2_init_clk_clkdm(ptr noundef %13)
  tail call void @clk_put(ptr noundef %7) #4
  br label %21

21:                                               ; preds = %18, %15, %9
  %22 = add nuw i32 %6, 1
  %23 = icmp eq i32 %22, %3
  br i1 %23, label %24, label %5

24:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @omap2_clk_is_hw_omap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { cold }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
