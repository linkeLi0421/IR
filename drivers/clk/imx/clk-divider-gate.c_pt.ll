; ModuleID = '/llk/IR/drivers/clk/imx/clk-divider-gate.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-divider-gate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_divider_gate = type { %struct.clk_divider, i32 }

@clk_divider_gate_ro_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_divider_gate_recalc_rate_ro, ptr null, ptr @clk_divider_determine_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_divider_gate_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_divider_enable, ptr @clk_divider_disable, ptr @clk_divider_is_enabled, ptr null, ptr null, ptr null, ptr @clk_divider_gate_recalc_rate, ptr null, ptr @clk_divider_determine_rate, ptr null, ptr null, ptr @clk_divider_gate_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@clk_divider_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@.str = private unnamed_addr constant [28 x i8] c"\013%s: no valid preset rate\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_divider_gate(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca ptr, align 4
  %11 = alloca %struct.clk_init_data, align 4
  store ptr %1, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #6
  %12 = getelementptr inbounds i8, ptr %11, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %12, i8 0, i32 12, i1 false), !annotation !8
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 32) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %48, label %16

16:                                               ; preds = %9
  store ptr %0, ptr %11, align 4
  %17 = and i8 %6, 32
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, ptr @clk_divider_gate_ops, ptr @clk_divider_gate_ro_ops
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 6
  store i32 %2, ptr %21, align 4
  %22 = icmp eq ptr %1, null
  %23 = select i1 %22, ptr null, ptr %10
  %24 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 2
  store ptr %23, ptr %24, align 4
  %25 = icmp ne ptr %1, null
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 5
  store i8 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.clk_divider, ptr %14, i32 0, i32 1
  store ptr %3, ptr %28, align 4
  %29 = getelementptr inbounds %struct.clk_divider, ptr %14, i32 0, i32 2
  store i8 %4, ptr %29, align 8
  %30 = getelementptr inbounds %struct.clk_divider, ptr %14, i32 0, i32 3
  store i8 %5, ptr %30, align 1
  %31 = getelementptr inbounds %struct.clk_divider, ptr %14, i32 0, i32 6
  store ptr %8, ptr %31, align 8
  %32 = getelementptr inbounds %struct.clk_divider, ptr %14, i32 0, i32 5
  store ptr %7, ptr %32, align 4
  %33 = getelementptr inbounds %struct.clk_hw, ptr %14, i32 0, i32 2
  store ptr %11, ptr %33, align 8
  %34 = or i8 %6, 1
  %35 = getelementptr inbounds %struct.clk_divider, ptr %14, i32 0, i32 4
  store i8 %34, ptr %35, align 2
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %37 = zext i8 %4 to i32
  %38 = lshr i32 %36, %37
  %39 = zext i8 %5 to i32
  %40 = shl nsw i32 -1, %39
  %41 = xor i32 %40, -1
  %42 = and i32 %38, %41
  %43 = getelementptr inbounds %struct.clk_divider_gate, ptr %14, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %14) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %16
  call void @kfree(ptr noundef nonnull %14) #6
  %47 = inttoptr i32 %44 to ptr
  br label %48

48:                                               ; preds = %46, %16, %9
  %49 = phi ptr [ %47, %46 ], [ %14, %16 ], [ inttoptr (i32 -12 to ptr), %9 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %11) #6
  ret ptr %49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_divider_gate_recalc_rate_ro(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %6 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = lshr i32 %5, %8
  %10 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nsw i32 -1, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %9, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 4
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = tail call i32 @divider_recalc_rate(ptr noundef %0, i32 noundef %1, i32 noundef %15, ptr noundef %19, i32 noundef %22, i32 noundef %12) #6
  br label %24

24:                                               ; preds = %17, %2
  %25 = phi i32 [ %23, %17 ], [ 0, %2 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_divider_determine_rate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 12), align 4
  %4 = tail call i32 %3(ptr noundef %0, ptr noundef %1) #6
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_divider_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.clk_divider_gate, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call ptr @clk_hw_get_name(ptr noundef %0) #6
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %6) #8
  br label %23

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #6
  %12 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %15 = load i32, ptr %2, align 4
  %16 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 2
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = shl i32 %15, %18
  %20 = or i32 %19, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %21 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %20) #6, !srcloc !14
  %22 = load ptr, ptr %9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %11) #6
  br label %23

23:                                               ; preds = %8, %5
  %24 = phi i32 [ 0, %8 ], [ -22, %5 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_divider_disable(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  %8 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = lshr i32 %7, %10
  %12 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nsw i32 -1, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %11, %16
  %18 = getelementptr inbounds %struct.clk_divider_gate, ptr %0, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %19 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #6, !srcloc !14
  %20 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_divider_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %5 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = lshr i32 %4, %7
  %9 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nsw i32 -1, %11
  %13 = xor i32 %12, -1
  %14 = and i32 %8, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_divider_gate_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #6
  %6 = tail call zeroext i1 @clk_hw_is_enabled(ptr noundef %0) #6
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.clk_divider_gate, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  br label %24

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %14 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 2
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = lshr i32 %13, %16
  %18 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nsw i32 -1, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %17, %22
  br label %24

24:                                               ; preds = %10, %7
  %25 = phi i32 [ %23, %10 ], [ %9, %7 ]
  %26 = load ptr, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %5) #6
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 4
  %32 = load i8, ptr %31, align 2
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 3
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = tail call i32 @divider_recalc_rate(ptr noundef %0, i32 noundef %1, i32 noundef %25, ptr noundef %30, i32 noundef %33, i32 noundef %36) #6
  br label %38

38:                                               ; preds = %28, %24
  %39 = phi i32 [ %37, %28 ], [ 0, %24 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_divider_gate_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 4
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = tail call i32 @divider_get_val(i32 noundef %1, i32 noundef %2, ptr noundef %5, i8 noundef zeroext %7, i32 noundef %10) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #6
  %17 = tail call zeroext i1 @clk_hw_is_enabled(ptr noundef %0) #6
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %22 = load i8, ptr %6, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nsw i32 -1, %23
  %25 = xor i32 %24, -1
  %26 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 2
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = shl i32 %25, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %21, %30
  %32 = shl i32 %11, %28
  %33 = or i32 %31, %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %34 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %33) #6, !srcloc !14
  br label %37

35:                                               ; preds = %13
  %36 = getelementptr inbounds %struct.clk_divider_gate, ptr %0, i32 0, i32 1
  store i32 %11, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %18
  %38 = load ptr, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %16) #6
  br label %39

39:                                               ; preds = %37, %3
  %40 = phi i32 [ 0, %37 ], [ %11, %3 ]
  ret i32 %40
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_hw_is_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
!9 = !{i64 2846088}
!10 = !{i64 2150577897}
!11 = !{i64 2150566925}
!12 = !{i64 2150573285}
!13 = !{i64 2150573461}
!14 = !{i64 2845670}
!15 = !{i64 2150575411}
!16 = !{i64 2150575617}
!17 = !{i64 2150577213}
!18 = !{i64 2150568787}
!19 = !{i64 2150570649}
!20 = !{i64 2150570857}
