; ModuleID = '/llk/IR/drivers/clk/tegra/clk-periph-gate.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-periph-gate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_clk_periph_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.tegra_clk_periph_gate = type { i32, %struct.clk_hw, ptr, i8, i32, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@tegra_clk_periph_gate_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_periph_enable, ptr @clk_periph_disable, ptr @clk_periph_is_enabled, ptr @clk_periph_disable_unused, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [42 x i8] c"\013%s: could not allocate periph gate clk\0A\00", align 1
@__func__.tegra_clk_register_periph_gate = private unnamed_addr constant [31 x i8] c"tegra_clk_register_periph_gate\00", align 1
@periph_ref_lock = internal global %struct.spinlock zeroinitializer, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"drivers/clk/tegra/clk-periph-gate.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_periph_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @periph_ref_lock) #6
  %3 = getelementptr i8, ptr %0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 20
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i32, ptr %4, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = load i32, ptr %5, align 4
  %13 = and i32 %12, 31
  %14 = shl nuw i32 1, %13
  %15 = getelementptr i8, ptr %0, i32 12
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %0, i32 28
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.tegra_clk_periph_regs, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %16, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %14) #6, !srcloc !8
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 429496) #6
  %23 = getelementptr i8, ptr %0, i32 16
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, 8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %15, align 4
  %29 = getelementptr i8, ptr %28, i32 1364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #6, !srcloc !8
  %30 = load ptr, ptr %15, align 4
  %31 = getelementptr i8, ptr %30, i32 1364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 4194304) #6, !srcloc !8
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #6
  %33 = load ptr, ptr %15, align 4
  %34 = getelementptr i8, ptr %33, i32 1364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #6, !srcloc !8
  br label %35

35:                                               ; preds = %27, %11, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @periph_ref_lock, i32 noundef %2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_periph_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @periph_ref_lock) #6
  %3 = getelementptr i8, ptr %0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 20
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i32, ptr %4, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15, !prof !9

10:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 103, i32 noundef 9, ptr noundef null) #6
  %11 = load ptr, ptr %3, align 4
  %12 = load i32, ptr %5, align 4
  %13 = getelementptr i32, ptr %11, i32 %12
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i32 [ %14, %10 ], [ %8, %1 ]
  %17 = phi i32 [ %12, %10 ], [ %6, %1 ]
  %18 = phi ptr [ %11, %10 ], [ %4, %1 ]
  %19 = getelementptr i32, ptr %18, i32 %17
  %20 = add i32 %16, -1
  store i32 %20, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %15
  %23 = getelementptr i8, ptr %0, i32 16
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = tail call i32 @tegra_read_chipid() #6
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, ptr %5, align 4
  %31 = and i32 %30, 31
  %32 = shl nuw i32 1, %31
  %33 = getelementptr i8, ptr %0, i32 12
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %0, i32 28
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.tegra_clk_periph_regs, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr i8, ptr %34, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %32) #6, !srcloc !8
  br label %40

40:                                               ; preds = %29, %15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @periph_ref_lock, i32 noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_periph_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 28
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !10
  %9 = getelementptr i8, ptr %0, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 31
  %12 = lshr i32 %8, %11
  %13 = and i32 %12, 1
  %14 = getelementptr i8, ptr %0, i32 16
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  %19 = load ptr, ptr %2, align 4
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr inbounds %struct.tegra_clk_periph_regs, ptr %20, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %19, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !10
  %25 = load i32, ptr %9, align 4
  %26 = and i32 %25, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %24
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 %13, i32 0
  br label %31

31:                                               ; preds = %18, %1
  %32 = phi i32 [ %13, %1 ], [ %30, %18 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_periph_disable_unused(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @periph_ref_lock) #6
  %3 = getelementptr i8, ptr %0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 20
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i32, ptr %4, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 16
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = tail call i32 @tegra_read_chipid() #6
  %17 = load i32, ptr %5, align 4
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi i32 [ %6, %10 ], [ %17, %15 ]
  %20 = and i32 %19, 31
  %21 = shl nuw i32 1, %20
  %22 = getelementptr i8, ptr %0, i32 12
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %0, i32 28
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tegra_clk_periph_regs, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %23, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %21) #6, !srcloc !8
  br label %29

29:                                               ; preds = %18, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @periph_ref_lock, i32 noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_register_periph_gate(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca ptr, align 4
  %9 = alloca %struct.clk_init_data, align 4
  store ptr %1, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #6
  %10 = getelementptr inbounds i8, ptr %9, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %10, i8 0, i32 12, i1 false), !annotation !11
  %11 = tail call ptr @get_reg_bank(i32 noundef %5) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 36) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tegra_clk_register_periph_gate) #8
  br label %38

19:                                               ; preds = %13
  store ptr %0, ptr %9, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 6
  store i32 %4, ptr %20, align 4
  %21 = icmp eq ptr %1, null
  %22 = select i1 %21, ptr null, ptr %8
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 2
  store ptr %22, ptr %23, align 4
  %24 = icmp ne ptr %1, null
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 5
  store i8 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 1
  store ptr @tegra_clk_periph_gate_ops, ptr %27, align 4
  store i32 393609993, ptr %15, align 8
  %28 = getelementptr inbounds %struct.tegra_clk_periph_gate, ptr %15, i32 0, i32 2
  store ptr %3, ptr %28, align 8
  %29 = getelementptr inbounds %struct.tegra_clk_periph_gate, ptr %15, i32 0, i32 4
  store i32 %5, ptr %29, align 8
  %30 = getelementptr inbounds %struct.tegra_clk_periph_gate, ptr %15, i32 0, i32 3
  store i8 %2, ptr %30, align 4
  %31 = getelementptr inbounds %struct.tegra_clk_periph_gate, ptr %15, i32 0, i32 5
  store ptr %6, ptr %31, align 4
  %32 = getelementptr inbounds %struct.tegra_clk_periph_gate, ptr %15, i32 0, i32 6
  store ptr %11, ptr %32, align 8
  %33 = getelementptr inbounds %struct.tegra_clk_periph_gate, ptr %15, i32 0, i32 1
  %34 = getelementptr inbounds %struct.tegra_clk_periph_gate, ptr %15, i32 0, i32 1, i32 2
  store ptr %9, ptr %34, align 4
  %35 = call ptr @clk_register(ptr noundef null, ptr noundef %33) #6
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %38

37:                                               ; preds = %19
  call void @kfree(ptr noundef nonnull %15) #6
  br label %38

38:                                               ; preds = %37, %19, %17, %7
  %39 = phi ptr [ inttoptr (i32 -12 to ptr), %17 ], [ %35, %37 ], [ %35, %19 ], [ inttoptr (i32 -22 to ptr), %7 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #6
  ret ptr %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_reg_bank(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_read_chipid() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

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
!8 = !{i64 2990675}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2991093}
!11 = !{!"auto-init"}
