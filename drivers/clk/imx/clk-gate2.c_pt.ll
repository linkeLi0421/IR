; ModuleID = '/llk/IR/drivers/clk/imx/clk-gate2.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-gate2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_register_gate2:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_register_gate2\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_register_gate2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_gate2 = type { %struct.clk_hw, ptr, i8, i8, i8, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_gate2_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_gate2_enable, ptr @clk_gate2_disable, ptr @clk_gate2_is_enabled, ptr @clk_gate2_disable_unused, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_hw_register_gate2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_register_gate2 = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_register_gate2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_register_gate2 to i32), ptr @__kstrtab_clk_hw_register_gate2, ptr @__kstrtabns_clk_hw_register_gate2 }, section "___ksymtab_gpl+clk_hw_register_gate2", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [28 x i8] c"drivers/clk/imx/clk-gate2.c\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_clk_hw_register_gate2], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_hw_register_gate2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, ptr noundef %9, ptr noundef %10) #0 {
  %12 = alloca ptr, align 4
  %13 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %13) #5
  %14 = getelementptr inbounds i8, ptr %13, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %14, i8 0, i32 12, i1 false), !annotation !8
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 28) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.clk_gate2, ptr %16, i32 0, i32 1
  store ptr %4, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_gate2, ptr %16, i32 0, i32 2
  store i8 %5, ptr %20, align 8
  %21 = getelementptr inbounds %struct.clk_gate2, ptr %16, i32 0, i32 3
  store i8 %6, ptr %21, align 1
  %22 = getelementptr inbounds %struct.clk_gate2, ptr %16, i32 0, i32 4
  store i8 %7, ptr %22, align 2
  %23 = getelementptr inbounds %struct.clk_gate2, ptr %16, i32 0, i32 5
  store i8 %8, ptr %23, align 1
  %24 = getelementptr inbounds %struct.clk_gate2, ptr %16, i32 0, i32 6
  store ptr %9, ptr %24, align 4
  %25 = getelementptr inbounds %struct.clk_gate2, ptr %16, i32 0, i32 7
  store ptr %10, ptr %25, align 8
  store ptr %1, ptr %13, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 1
  store ptr @clk_gate2_ops, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 6
  store i32 %3, ptr %27, align 4
  %28 = icmp eq ptr %2, null
  %29 = select i1 %28, ptr null, ptr %12
  %30 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 2
  store ptr %29, ptr %30, align 4
  %31 = icmp ne ptr %2, null
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 5
  store i8 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.clk_hw, ptr %16, i32 0, i32 2
  store ptr %13, ptr %34, align 8
  %35 = call i32 @clk_hw_register(ptr noundef %0, ptr noundef nonnull %16) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %18
  call void @kfree(ptr noundef nonnull %16) #5
  %38 = inttoptr i32 %35 to ptr
  br label %39

39:                                               ; preds = %37, %18, %11
  %40 = phi ptr [ %38, %37 ], [ %16, %18 ], [ inttoptr (i32 -12 to ptr), %11 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %13) #5
  ret ptr %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_gate2_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %6, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %6, align 4
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %16 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 4
  %17 = load i8, ptr %16, align 2
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 2
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = shl i32 %18, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %15, %23
  %25 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 3
  %26 = load i8, ptr %25, align 1
  %27 = and i8 %26, %17
  %28 = zext i8 %27 to i32
  %29 = shl i32 %28, %21
  %30 = or i32 %29, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %31 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #5, !srcloc !12
  br label %32

32:                                               ; preds = %12, %8
  %33 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %4) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_gate2_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !13

11:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef null) #5
  br label %29

12:                                               ; preds = %8
  %13 = add i32 %9, -1
  store i32 %13, ptr %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %12, %1
  %16 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %19 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 4
  %20 = load i8, ptr %19, align 2
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 2
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = shl i32 %21, %24
  %26 = xor i32 %25, -1
  %27 = and i32 %18, %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %28 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %27) #5, !srcloc !12
  br label %29

29:                                               ; preds = %15, %12, %11
  %30 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_gate2_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 2
  %8 = load i8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 4
  %12 = load i8, ptr %11, align 2
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %14 = zext i8 %8 to i32
  %15 = lshr i32 %13, %14
  %16 = zext i8 %12 to i32
  %17 = and i32 %15, %16
  %18 = zext i8 %10 to i32
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %4) #5
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_gate2_disable_unused(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %8, %1
  %12 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %15 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 4
  %16 = load i8, ptr %15, align 2
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.clk_gate2, ptr %0, i32 0, i32 2
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = shl i32 %17, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %14, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %24 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #5, !srcloc !12
  br label %25

25:                                               ; preds = %11, %8
  %26 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

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
!8 = !{!"auto-init"}
!9 = !{i64 3178379}
!10 = !{i64 2150746733}
!11 = !{i64 2150746910}
!12 = !{i64 3177961}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2150750846}
