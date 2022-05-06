; ModuleID = '/llk/IR/drivers/clk/tegra/clk-pll-out.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-pll-out.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_clk_pll_out = type { %struct.clk_hw, ptr, i8, i8, ptr, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@tegra_clk_pll_out_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_out_enable, ptr @clk_pll_out_disable, ptr @clk_pll_out_is_enabled, ptr null, ptr null, ptr @tegra_clk_pll_out_restore_context, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_out_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #5
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  %12 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %0, i32 0, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 1, %14
  %16 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %0, i32 0, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 1, %18
  %20 = or i32 %15, %11
  %21 = or i32 %20, %19
  %22 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #5, !srcloc !9
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 429496) #5
  %24 = load ptr, ptr %2, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %24, i32 noundef %8) #5
  br label %27

27:                                               ; preds = %26, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_pll_out_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #5
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  %12 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %0, i32 0, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 1, %14
  %16 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %0, i32 0, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 1, %18
  %20 = or i32 %19, %15
  %21 = xor i32 %20, -1
  %22 = and i32 %11, %21
  %23 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #5, !srcloc !9
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 429496) #5
  %25 = load ptr, ptr %2, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %25, i32 noundef %8) #5
  br label %28

28:                                               ; preds = %27, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_out_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !8
  %5 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = lshr i32 %4, %7
  %9 = and i32 %8, 1
  %10 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %0, i32 0, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 0, i32 %9
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_clk_pll_out_restore_context(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @__clk_get_enable_count(ptr noundef %3) #5
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %5, label %9, label %33

9:                                                ; preds = %1
  br i1 %8, label %12, label %10

10:                                               ; preds = %9
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %7) #5
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi i32 [ %11, %10 ], [ 0, %9 ]
  %14 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !8
  %17 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %0, i32 0, i32 2
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 1, %19
  %21 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %0, i32 0, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw i32 1, %23
  %25 = or i32 %24, %20
  %26 = xor i32 %25, -1
  %27 = and i32 %16, %26
  %28 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %27) #5, !srcloc !9
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 429496) #5
  %30 = load ptr, ptr %6, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %56, label %32

32:                                               ; preds = %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %30, i32 noundef %13) #5
  br label %56

33:                                               ; preds = %1
  br i1 %8, label %36, label %34

34:                                               ; preds = %33
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %7) #5
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i32 [ %35, %34 ], [ 0, %33 ]
  %38 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #5, !srcloc !8
  %41 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %0, i32 0, i32 2
  %42 = load i8, ptr %41, align 4
  %43 = zext i8 %42 to i32
  %44 = shl nuw i32 1, %43
  %45 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %0, i32 0, i32 3
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw i32 1, %47
  %49 = or i32 %44, %40
  %50 = or i32 %49, %48
  %51 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %50) #5, !srcloc !9
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 429496) #5
  %53 = load ptr, ptr %6, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %36
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %53, i32 noundef %37) #5
  br label %56

56:                                               ; preds = %55, %36, %32, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_pll_out(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, i8 noundef zeroext %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 4
  %10 = alloca %struct.clk_init_data, align 4
  store ptr %1, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #5
  %11 = getelementptr inbounds i8, ptr %10, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %11, i8 0, i32 12, i1 false), !annotation !10
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 28) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %8
  store ptr %0, ptr %10, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 1
  store ptr @tegra_clk_pll_out_ops, ptr %16, align 4
  %17 = icmp eq ptr %1, null
  %18 = select i1 %17, ptr null, ptr %9
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 2
  store ptr %18, ptr %19, align 4
  %20 = icmp ne ptr %1, null
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 5
  store i8 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 6
  store i32 %5, ptr %23, align 4
  %24 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %13, i32 0, i32 1
  store ptr %2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %13, i32 0, i32 2
  store i8 %3, ptr %25, align 8
  %26 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %13, i32 0, i32 3
  store i8 %4, ptr %26, align 1
  %27 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %13, i32 0, i32 5
  store i8 %6, ptr %27, align 8
  %28 = getelementptr inbounds %struct.tegra_clk_pll_out, ptr %13, i32 0, i32 4
  store ptr %7, ptr %28, align 4
  %29 = getelementptr inbounds %struct.clk_hw, ptr %13, i32 0, i32 2
  store ptr %10, ptr %29, align 8
  %30 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %13) #5
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %33

32:                                               ; preds = %15
  call void @kfree(ptr noundef nonnull %13) #5
  br label %33

33:                                               ; preds = %32, %15, %8
  %34 = phi ptr [ %30, %32 ], [ %30, %15 ], [ inttoptr (i32 -12 to ptr), %8 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #5
  ret ptr %34
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_get_enable_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 946561}
!9 = !{i64 946143}
!10 = !{!"auto-init"}
