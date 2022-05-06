; ModuleID = '/llk/IR/drivers/clk/ti/autoidle.c_pt.bc'
source_filename = "../drivers/clk/ti/autoidle.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.clk_hw_omap_ops = type { ptr, ptr, ptr, ptr }
%struct.clk_ti_autoidle = type { %struct.clk_omap_reg, i8, i8, ptr, %struct.list_head }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [18 x i8] c"ti,autoidle-shift\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ti,invert-autoidle-bit\00", align 1
@autoidle_clks = internal global %struct.list_head { ptr @autoidle_clks, ptr @autoidle_clks }, align 4
@autoidle_spinlock = internal global %struct.spinlock zeroinitializer, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_clk_deny_idle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @__clk_get_hw(ptr noundef nonnull %0) #5
  %5 = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %4) #5
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.clk_hw_omap, ptr %4, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.clk_hw_omap_ops, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @autoidle_spinlock) #5
  %16 = getelementptr inbounds %struct.clk_hw_omap, ptr %4, i32 0, i32 13
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr inbounds %struct.clk_hw_omap_ops, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %4) #5
  br label %24

24:                                               ; preds = %20, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @autoidle_spinlock, i32 noundef %15) #5
  br label %25

25:                                               ; preds = %24, %10, %6, %3, %1
  %26 = phi i32 [ -22, %1 ], [ -22, %3 ], [ 0, %6 ], [ 0, %10 ], [ 0, %24 ]
  ret i32 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @omap2_clk_is_hw_omap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_omap2_clk_deny_idle(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clk_hw_omap_ops, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @autoidle_spinlock) #5
  %11 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.clk_hw_omap_ops, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %0) #5
  br label %19

19:                                               ; preds = %15, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @autoidle_spinlock, i32 noundef %10) #5
  br label %20

20:                                               ; preds = %19, %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_clk_allow_idle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @__clk_get_hw(ptr noundef nonnull %0) #5
  %5 = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %4) #5
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.clk_hw_omap, ptr %4, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.clk_hw_omap_ops, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @autoidle_spinlock) #5
  %16 = getelementptr inbounds %struct.clk_hw_omap, ptr %4, i32 0, i32 13
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -1
  store i32 %18, ptr %16, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr inbounds %struct.clk_hw_omap_ops, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %4) #5
  br label %24

24:                                               ; preds = %20, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @autoidle_spinlock, i32 noundef %15) #5
  br label %25

25:                                               ; preds = %24, %10, %6, %3, %1
  %26 = phi i32 [ -22, %1 ], [ -22, %3 ], [ 0, %6 ], [ 0, %10 ], [ 0, %24 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_omap2_clk_allow_idle(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clk_hw_omap_ops, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @autoidle_spinlock) #5
  %11 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  store i32 %13, ptr %11, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.clk_hw_omap_ops, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %0) #5
  br label %19

19:                                               ; preds = %15, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @autoidle_spinlock, i32 noundef %10) #5
  br label %20

20:                                               ; preds = %19, %5, %1
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @of_ti_clk_autoidle_setup(ptr noundef %0) local_unnamed_addr #3 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 24) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %2, align 4
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.clk_ti_autoidle, ptr %7, i32 0, i32 1
  store i8 %11, ptr %12, align 8
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.clk_ti_autoidle, ptr %7, i32 0, i32 3
  store ptr %13, ptr %14, align 4
  %15 = call i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %7) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  call void @kfree(ptr noundef nonnull %7) #5
  br label %30

18:                                               ; preds = %9
  %19 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef null) #5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.clk_ti_autoidle, ptr %7, i32 0, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = or i8 %23, 1
  store i8 %24, ptr %22, align 1
  br label %25

25:                                               ; preds = %21, %18
  %26 = getelementptr inbounds %struct.clk_ti_autoidle, ptr %7, i32 0, i32 4
  %27 = load ptr, ptr @autoidle_clks, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store ptr %27, ptr %26, align 8
  %29 = getelementptr inbounds %struct.clk_ti_autoidle, ptr %7, i32 0, i32 4, i32 1
  store ptr @autoidle_clks, ptr %29, align 4
  store volatile ptr %26, ptr @autoidle_clks, align 4
  br label %30

30:                                               ; preds = %25, %17, %5, %1
  %31 = phi i32 [ %15, %17 ], [ 0, %25 ], [ 0, %1 ], [ -12, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_get_reg_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_clk_enable_autoidle_all() local_unnamed_addr #0 {
  %1 = tail call i32 @omap2_clk_for_each(ptr noundef nonnull @_omap2_clk_allow_idle) #5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %29

3:                                                ; preds = %0
  %4 = load ptr, ptr @autoidle_clks, align 4
  %5 = icmp eq ptr %4, @autoidle_clks
  br i1 %5, label %29, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %27, %6 ], [ %4, %3 ]
  %8 = getelementptr i8, ptr %7, i32 -16
  %9 = load ptr, ptr @ti_clk_ll_ops, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %8) #5
  %12 = getelementptr i8, ptr %7, i32 -7
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr i8, ptr %7, i32 -8
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 1, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %11, %20
  %22 = or i32 %19, %11
  %23 = select i1 %15, i32 %22, i32 %21
  %24 = load ptr, ptr @ti_clk_ll_ops, align 4
  %25 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void %26(i32 noundef %23, ptr noundef %8) #5
  %27 = load ptr, ptr %7, align 4
  %28 = icmp eq ptr %27, @autoidle_clks
  br i1 %28, label %29, label %6

29:                                               ; preds = %6, %3, %0
  %30 = phi i32 [ %1, %0 ], [ 0, %3 ], [ 0, %6 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_for_each(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_clk_disable_autoidle_all() local_unnamed_addr #0 {
  %1 = tail call i32 @omap2_clk_for_each(ptr noundef nonnull @_omap2_clk_deny_idle) #5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %29

3:                                                ; preds = %0
  %4 = load ptr, ptr @autoidle_clks, align 4
  %5 = icmp eq ptr %4, @autoidle_clks
  br i1 %5, label %29, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %27, %6 ], [ %4, %3 ]
  %8 = getelementptr i8, ptr %7, i32 -16
  %9 = load ptr, ptr @ti_clk_ll_ops, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %8) #5
  %12 = getelementptr i8, ptr %7, i32 -7
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr i8, ptr %7, i32 -8
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 1, %18
  %20 = or i32 %19, %11
  %21 = xor i32 %19, -1
  %22 = and i32 %11, %21
  %23 = select i1 %15, i32 %22, i32 %20
  %24 = load ptr, ptr @ti_clk_ll_ops, align 4
  %25 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void %26(i32 noundef %23, ptr noundef %8) #5
  %27 = load ptr, ptr %7, align 4
  %28 = icmp eq ptr %27, @autoidle_clks
  br i1 %28, label %29, label %6

29:                                               ; preds = %6, %3, %0
  %30 = phi i32 [ %1, %0 ], [ 0, %3 ], [ 0, %6 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
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
!8 = !{!"auto-init"}
