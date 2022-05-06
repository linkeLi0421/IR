; ModuleID = '/llk/IR/drivers/clk/imx/clk-composite-7ulp.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-composite-7ulp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx8ulp_clk_hw_composite:\09\09\09\09\09"
module asm "\09.asciz \09\22imx8ulp_clk_hw_composite\22\09\09\09\09\09"
module asm "__kstrtabns_imx8ulp_clk_hw_composite:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_fractional_divider = type { %struct.clk_hw, ptr, i8, i8, i32, i8, i8, i32, i8, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }

@__kstrtab_imx8ulp_clk_hw_composite = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx8ulp_clk_hw_composite = external dso_local constant [0 x i8], align 1
@__ksymtab_imx8ulp_clk_hw_composite = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx8ulp_clk_hw_composite to i32), ptr @__kstrtab_imx8ulp_clk_hw_composite, ptr @__kstrtabns_imx8ulp_clk_hw_composite }, section "___ksymtab_gpl+imx8ulp_clk_hw_composite", align 4
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@clk_fractional_divider_ops = external dso_local constant %struct.clk_ops, align 4
@pcc_gate_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @pcc_gate_enable, ptr @pcc_gate_disable, ptr @pcc_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_imx8ulp_clk_hw_composite], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @imx7ulp_clk_hw_composite(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = tail call fastcc ptr @imx_ulp_clk_hw_composite(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6, i1 noundef zeroext false)
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @imx_ulp_clk_hw_composite(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6, i1 noundef zeroext %7) unnamed_addr #0 {
  br i1 %3, label %9, label %19

9:                                                ; preds = %8
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 32) #3
  %12 = icmp eq ptr %11, null
  br i1 %12, label %63, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.clk_mux, ptr %11, i32 0, i32 1
  store ptr %6, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_mux, ptr %11, i32 0, i32 4
  store i8 24, ptr %15, align 8
  %16 = getelementptr inbounds %struct.clk_mux, ptr %11, i32 0, i32 3
  store i32 7, ptr %16, align 4
  br i1 %7, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.clk_mux, ptr %11, i32 0, i32 6
  store ptr @imx_ccm_lock, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %13, %8
  %20 = phi ptr [ %11, %17 ], [ %11, %13 ], [ null, %8 ]
  br i1 %4, label %21, label %36

21:                                               ; preds = %19
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 44) #3
  %24 = icmp eq ptr %23, null
  br i1 %24, label %60, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.clk_fractional_divider, ptr %23, i32 0, i32 1
  store ptr %6, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_fractional_divider, ptr %23, i32 0, i32 2
  store i8 3, ptr %27, align 8
  %28 = getelementptr inbounds %struct.clk_fractional_divider, ptr %23, i32 0, i32 3
  store i8 1, ptr %28, align 1
  %29 = getelementptr inbounds %struct.clk_fractional_divider, ptr %23, i32 0, i32 4
  store i32 8, ptr %29, align 4
  %30 = getelementptr inbounds %struct.clk_fractional_divider, ptr %23, i32 0, i32 5
  store i8 0, ptr %30, align 8
  %31 = getelementptr inbounds %struct.clk_fractional_divider, ptr %23, i32 0, i32 6
  store i8 3, ptr %31, align 1
  %32 = getelementptr inbounds %struct.clk_fractional_divider, ptr %23, i32 0, i32 7
  store i32 7, ptr %32, align 4
  %33 = getelementptr inbounds %struct.clk_fractional_divider, ptr %23, i32 0, i32 8
  store i8 1, ptr %33, align 8
  br i1 %7, label %34, label %36

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.clk_fractional_divider, ptr %23, i32 0, i32 10
  store ptr @imx_ccm_lock, ptr %35, align 8
  br label %36

36:                                               ; preds = %34, %25, %19
  %37 = phi ptr [ %23, %34 ], [ %23, %25 ], [ null, %19 ]
  br i1 %5, label %38, label %50

38:                                               ; preds = %36
  %39 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %40 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 24) #3
  %41 = icmp eq ptr %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.clk_gate, ptr %40, i32 0, i32 1
  store ptr %6, ptr %43, align 4
  %44 = getelementptr inbounds %struct.clk_gate, ptr %40, i32 0, i32 2
  store i8 30, ptr %44, align 8
  br i1 %7, label %45, label %47

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.clk_gate, ptr %40, i32 0, i32 4
  store ptr @imx_ccm_lock, ptr %46, align 4
  br label %47

47:                                               ; preds = %45, %42
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  %49 = and i32 %48, -1073741825
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %49) #4, !srcloc !9
  br label %50

50:                                               ; preds = %47, %36
  %51 = phi ptr [ %40, %47 ], [ null, %36 ]
  %52 = select i1 %7, ptr @pcc_gate_ops, ptr @clk_gate_ops
  %53 = tail call ptr @clk_hw_register_composite(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %20, ptr noundef nonnull @clk_mux_ops, ptr noundef %37, ptr noundef nonnull @clk_fractional_divider_ops, ptr noundef %51, ptr noundef nonnull %52, i32 noundef 131) #4
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  tail call void @kfree(ptr noundef %20) #4
  br label %56

56:                                               ; preds = %55, %38
  %57 = phi ptr [ %37, %55 ], [ %20, %38 ]
  %58 = phi ptr [ %51, %55 ], [ %37, %38 ]
  %59 = phi ptr [ %53, %55 ], [ inttoptr (i32 -12 to ptr), %38 ]
  tail call void @kfree(ptr noundef %57) #4
  br label %60

60:                                               ; preds = %56, %21
  %61 = phi ptr [ %20, %21 ], [ %58, %56 ]
  %62 = phi ptr [ inttoptr (i32 -12 to ptr), %21 ], [ %59, %56 ]
  tail call void @kfree(ptr noundef %61) #4
  br label %63

63:                                               ; preds = %60, %50, %9
  %64 = phi ptr [ %53, %50 ], [ inttoptr (i32 -12 to ptr), %9 ], [ %62, %60 ]
  ret ptr %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @imx8ulp_clk_hw_composite(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6, i1 noundef zeroext %7) #0 {
  %9 = tail call fastcc ptr @imx_ulp_clk_hw_composite(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6, i1 noundef zeroext %7)
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcc_gate_enable(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4), align 4
  %3 = tail call i32 %2(ptr noundef %0) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #4
  %9 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %12 = or i32 %11, 268435456
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %13 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #4, !srcloc !9
  %14 = load ptr, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %8) #4
  br label %15

15:                                               ; preds = %5, %1
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcc_gate_disable(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 5), align 4
  tail call void %2(ptr noundef %0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcc_gate_is_enabled(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6), align 4
  %3 = tail call i32 %2(ptr noundef %0) #4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind allocsize(2) }
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
!8 = !{i64 2844933}
!9 = !{i64 2844515}
!10 = !{i64 2150559836}
!11 = !{i64 2150560097}
