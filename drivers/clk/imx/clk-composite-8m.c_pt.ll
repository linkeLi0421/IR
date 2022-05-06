; ModuleID = '/llk/IR/drivers/clk/imx/clk-composite-8m.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-composite-8m.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___imx8m_clk_hw_composite:\09\09\09\09\09"
module asm "\09.asciz \09\22__imx8m_clk_hw_composite\22\09\09\09\09\09"
module asm "__kstrtabns___imx8m_clk_hw_composite:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }

@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@imx8m_clk_composite_mux_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx8m_clk_composite_mux_determine_rate, ptr @imx8m_clk_composite_mux_set_parent, ptr @imx8m_clk_composite_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@imx8m_clk_composite_divider_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx8m_clk_composite_divider_recalc_rate, ptr @imx8m_clk_composite_divider_round_rate, ptr null, ptr null, ptr null, ptr @imx8m_clk_composite_divider_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@__kstrtab___imx8m_clk_hw_composite = external dso_local constant [0 x i8], align 1
@__kstrtabns___imx8m_clk_hw_composite = external dso_local constant [0 x i8], align 1
@__ksymtab___imx8m_clk_hw_composite = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__imx8m_clk_hw_composite to i32), ptr @__kstrtab___imx8m_clk_hw_composite, ptr @__kstrtabns___imx8m_clk_hw_composite }, section "___ksymtab_gpl+__imx8m_clk_hw_composite", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab___imx8m_clk_hw_composite], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__imx8m_clk_hw_composite(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 32) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %50, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.clk_mux, ptr %8, i32 0, i32 1
  store ptr %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.clk_mux, ptr %8, i32 0, i32 4
  store i8 24, ptr %12, align 8
  %13 = getelementptr inbounds %struct.clk_mux, ptr %8, i32 0, i32 3
  store i32 7, ptr %13, align 4
  %14 = getelementptr inbounds %struct.clk_mux, ptr %8, i32 0, i32 6
  store ptr @imx_ccm_lock, ptr %14, align 4
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 28) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %50, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.clk_divider, ptr %16, i32 0, i32 1
  store ptr %3, ptr %19, align 4
  %20 = and i32 %4, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.clk_divider, ptr %16, i32 0, i32 2
  store i8 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.clk_divider, ptr %16, i32 0, i32 3
  store i8 3, ptr %24, align 1
  br label %35

25:                                               ; preds = %18
  %26 = and i32 %4, 2
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.clk_divider, ptr %16, i32 0, i32 2
  store i8 16, ptr %28, align 8
  %29 = getelementptr inbounds %struct.clk_divider, ptr %16, i32 0, i32 3
  store i8 3, ptr %29, align 1
  br i1 %27, label %30, label %35

30:                                               ; preds = %25
  %31 = lshr i32 %4, 1
  %32 = and i32 %31, 2
  %33 = xor i32 %32, 2
  %34 = or i32 %33, %5
  br label %35

35:                                               ; preds = %30, %25, %22
  %36 = phi i32 [ %5, %22 ], [ %34, %30 ], [ %5, %25 ]
  %37 = phi ptr [ @clk_divider_ops, %22 ], [ @imx8m_clk_composite_divider_ops, %30 ], [ @imx8m_clk_composite_divider_ops, %25 ]
  %38 = phi ptr [ @imx8m_clk_composite_mux_ops, %22 ], [ @clk_mux_ops, %30 ], [ @imx8m_clk_composite_mux_ops, %25 ]
  %39 = getelementptr inbounds %struct.clk_divider, ptr %16, i32 0, i32 6
  store ptr @imx_ccm_lock, ptr %39, align 8
  %40 = getelementptr inbounds %struct.clk_divider, ptr %16, i32 0, i32 4
  store i8 16, ptr %40, align 2
  %41 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %42 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 24) #5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.clk_gate, ptr %42, i32 0, i32 1
  store ptr %3, ptr %45, align 4
  %46 = getelementptr inbounds %struct.clk_gate, ptr %42, i32 0, i32 2
  store i8 28, ptr %46, align 8
  %47 = getelementptr inbounds %struct.clk_gate, ptr %42, i32 0, i32 4
  store ptr @imx_ccm_lock, ptr %47, align 4
  %48 = tail call ptr @clk_hw_register_composite(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %38, ptr noundef nonnull %16, ptr noundef nonnull %37, ptr noundef nonnull %42, ptr noundef nonnull @clk_gate_ops, i32 noundef %36) #6
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %54

50:                                               ; preds = %44, %35, %10, %6
  %51 = phi ptr [ %48, %44 ], [ inttoptr (i32 -12 to ptr), %35 ], [ inttoptr (i32 -12 to ptr), %10 ], [ inttoptr (i32 -12 to ptr), %6 ]
  %52 = phi ptr [ %16, %44 ], [ %16, %35 ], [ null, %10 ], [ null, %6 ]
  %53 = phi ptr [ %42, %44 ], [ null, %35 ], [ null, %10 ], [ null, %6 ]
  tail call void @kfree(ptr noundef %53) #6
  tail call void @kfree(ptr noundef %52) #6
  tail call void @kfree(ptr noundef %8) #6
  br label %54

54:                                               ; preds = %50, %44
  %55 = phi ptr [ %51, %50 ], [ %48, %44 ]
  ret ptr %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx8m_clk_composite_mux_determine_rate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 12), align 4
  %4 = tail call i32 %3(ptr noundef %0, ptr noundef %1) #6
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx8m_clk_composite_mux_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 5
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = tail call i32 @clk_mux_index_to_val(ptr noundef %4, i32 noundef %7, i8 noundef zeroext %1) #6
  %9 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %10) #6
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i32 [ %13, %12 ], [ 0, %2 ]
  %16 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %19 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 4
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  %24 = shl i32 %20, %23
  %25 = xor i32 %24, -1
  %26 = and i32 %18, %25
  %27 = shl i32 %8, %23
  %28 = or i32 %26, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %29 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %28) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %30 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #6, !srcloc !11
  %31 = load ptr, ptr %9, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %31, i32 noundef %15) #6
  br label %34

34:                                               ; preds = %33, %14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @imx8m_clk_composite_mux_get_parent(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 14), align 4
  %3 = tail call zeroext i8 %2(ptr noundef %0) #6
  ret i8 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_index_to_val(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx8m_clk_composite_divider_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
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
  %16 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 4
  %17 = load i8, ptr %16, align 2
  %18 = zext i8 %17 to i32
  %19 = tail call i32 @divider_recalc_rate(ptr noundef %0, i32 noundef %1, i32 noundef %15, ptr noundef null, i32 noundef %18, i32 noundef %12) #6
  %20 = load ptr, ptr %3, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  %22 = and i32 %21, 63
  %23 = load i8, ptr %16, align 2
  %24 = zext i8 %23 to i32
  %25 = tail call i32 @divider_recalc_rate(ptr noundef %0, i32 noundef %19, i32 noundef %22, ptr noundef null, i32 noundef %24, i32 noundef 6) #6
  ret i32 %25
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @imx8m_clk_composite_divider_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = load i32, ptr %2, align 4
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi i32 [ 1, %3 ], [ %14, %5 ]
  %7 = phi i32 [ 1, %3 ], [ %16, %5 ]
  %8 = phi i32 [ 2147483647, %3 ], [ %15, %5 ]
  %9 = udiv i32 %4, %7
  %10 = sub i32 %9, %1
  %11 = tail call i32 @llvm.abs.i32(i32 %10, i1 false) #6
  %12 = tail call i32 @llvm.abs.i32(i32 %8, i1 false) #6
  %13 = icmp slt i32 %11, %12
  %14 = select i1 %13, i32 %7, i32 %6
  %15 = select i1 %13, i32 %10, i32 %8
  %16 = add nuw nsw i32 %7, 1
  %17 = icmp eq i32 %16, 65
  br i1 %17, label %18, label %5

18:                                               ; preds = %5
  %19 = lshr i32 %4, 1
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i32 [ 1, %18 ], [ %30, %20 ]
  %22 = phi i32 [ %14, %18 ], [ %31, %20 ]
  %23 = phi i32 [ 1, %18 ], [ %33, %20 ]
  %24 = phi i32 [ %15, %18 ], [ %32, %20 ]
  %25 = udiv i32 %19, %23
  %26 = sub i32 %25, %1
  %27 = tail call i32 @llvm.abs.i32(i32 %26, i1 false) #6
  %28 = tail call i32 @llvm.abs.i32(i32 %24, i1 false) #6
  %29 = icmp slt i32 %27, %28
  %30 = select i1 %29, i32 2, i32 %21
  %31 = select i1 %29, i32 %23, i32 %22
  %32 = select i1 %29, i32 %26, i32 %24
  %33 = add nuw nsw i32 %23, 1
  %34 = icmp eq i32 %33, 65
  br i1 %34, label %35, label %20

35:                                               ; preds = %20
  %36 = udiv i32 %4, 3
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi i32 [ %30, %35 ], [ %47, %37 ]
  %39 = phi i32 [ %31, %35 ], [ %48, %37 ]
  %40 = phi i32 [ 1, %35 ], [ %50, %37 ]
  %41 = phi i32 [ %32, %35 ], [ %49, %37 ]
  %42 = udiv i32 %36, %40
  %43 = sub i32 %42, %1
  %44 = tail call i32 @llvm.abs.i32(i32 %43, i1 false) #6
  %45 = tail call i32 @llvm.abs.i32(i32 %41, i1 false) #6
  %46 = icmp slt i32 %44, %45
  %47 = select i1 %46, i32 3, i32 %38
  %48 = select i1 %46, i32 %40, i32 %39
  %49 = select i1 %46, i32 %43, i32 %41
  %50 = add nuw nsw i32 %40, 1
  %51 = icmp eq i32 %50, 65
  br i1 %51, label %52, label %37

52:                                               ; preds = %37
  %53 = lshr i32 %4, 2
  br label %54

54:                                               ; preds = %54, %52
  %55 = phi i32 [ %47, %52 ], [ %64, %54 ]
  %56 = phi i32 [ %48, %52 ], [ %65, %54 ]
  %57 = phi i32 [ 1, %52 ], [ %67, %54 ]
  %58 = phi i32 [ %49, %52 ], [ %66, %54 ]
  %59 = udiv i32 %53, %57
  %60 = sub i32 %59, %1
  %61 = tail call i32 @llvm.abs.i32(i32 %60, i1 false) #6
  %62 = tail call i32 @llvm.abs.i32(i32 %58, i1 false) #6
  %63 = icmp slt i32 %61, %62
  %64 = select i1 %63, i32 4, i32 %55
  %65 = select i1 %63, i32 %57, i32 %56
  %66 = select i1 %63, i32 %60, i32 %58
  %67 = add nuw nsw i32 %57, 1
  %68 = icmp eq i32 %67, 65
  br i1 %68, label %69, label %54

69:                                               ; preds = %54
  %70 = udiv i32 %4, 5
  br label %71

71:                                               ; preds = %71, %69
  %72 = phi i32 [ %64, %69 ], [ %81, %71 ]
  %73 = phi i32 [ %65, %69 ], [ %82, %71 ]
  %74 = phi i32 [ 1, %69 ], [ %84, %71 ]
  %75 = phi i32 [ %66, %69 ], [ %83, %71 ]
  %76 = udiv i32 %70, %74
  %77 = sub i32 %76, %1
  %78 = tail call i32 @llvm.abs.i32(i32 %77, i1 false) #6
  %79 = tail call i32 @llvm.abs.i32(i32 %75, i1 false) #6
  %80 = icmp slt i32 %78, %79
  %81 = select i1 %80, i32 5, i32 %72
  %82 = select i1 %80, i32 %74, i32 %73
  %83 = select i1 %80, i32 %77, i32 %75
  %84 = add nuw nsw i32 %74, 1
  %85 = icmp eq i32 %84, 65
  br i1 %85, label %86, label %71

86:                                               ; preds = %71
  %87 = udiv i32 %4, 6
  br label %88

88:                                               ; preds = %88, %86
  %89 = phi i32 [ %81, %86 ], [ %98, %88 ]
  %90 = phi i32 [ %82, %86 ], [ %99, %88 ]
  %91 = phi i32 [ 1, %86 ], [ %101, %88 ]
  %92 = phi i32 [ %83, %86 ], [ %100, %88 ]
  %93 = udiv i32 %87, %91
  %94 = sub i32 %93, %1
  %95 = tail call i32 @llvm.abs.i32(i32 %94, i1 false) #6
  %96 = tail call i32 @llvm.abs.i32(i32 %92, i1 false) #6
  %97 = icmp slt i32 %95, %96
  %98 = select i1 %97, i32 6, i32 %89
  %99 = select i1 %97, i32 %91, i32 %90
  %100 = select i1 %97, i32 %94, i32 %92
  %101 = add nuw nsw i32 %91, 1
  %102 = icmp eq i32 %101, 65
  br i1 %102, label %103, label %88

103:                                              ; preds = %88
  %104 = udiv i32 %4, 7
  br label %105

105:                                              ; preds = %105, %103
  %106 = phi i32 [ %98, %103 ], [ %115, %105 ]
  %107 = phi i32 [ %99, %103 ], [ %116, %105 ]
  %108 = phi i32 [ 1, %103 ], [ %118, %105 ]
  %109 = phi i32 [ %100, %103 ], [ %117, %105 ]
  %110 = udiv i32 %104, %108
  %111 = sub i32 %110, %1
  %112 = tail call i32 @llvm.abs.i32(i32 %111, i1 false) #6
  %113 = tail call i32 @llvm.abs.i32(i32 %109, i1 false) #6
  %114 = icmp slt i32 %112, %113
  %115 = select i1 %114, i32 7, i32 %106
  %116 = select i1 %114, i32 %108, i32 %107
  %117 = select i1 %114, i32 %111, i32 %109
  %118 = add nuw nsw i32 %108, 1
  %119 = icmp eq i32 %118, 65
  br i1 %119, label %120, label %105

120:                                              ; preds = %105
  %121 = lshr i32 %4, 3
  br label %122

122:                                              ; preds = %122, %120
  %123 = phi i32 [ %115, %120 ], [ %132, %122 ]
  %124 = phi i32 [ %116, %120 ], [ %133, %122 ]
  %125 = phi i32 [ 1, %120 ], [ %135, %122 ]
  %126 = phi i32 [ %117, %120 ], [ %134, %122 ]
  %127 = udiv i32 %121, %125
  %128 = sub i32 %127, %1
  %129 = tail call i32 @llvm.abs.i32(i32 %128, i1 false) #6
  %130 = tail call i32 @llvm.abs.i32(i32 %126, i1 false) #6
  %131 = icmp slt i32 %129, %130
  %132 = select i1 %131, i32 8, i32 %123
  %133 = select i1 %131, i32 %125, i32 %124
  %134 = select i1 %131, i32 %128, i32 %126
  %135 = add nuw nsw i32 %125, 1
  %136 = icmp eq i32 %135, 65
  br i1 %136, label %137, label %122

137:                                              ; preds = %122
  %138 = add i32 %4, -1
  %139 = add i32 %138, %132
  %140 = udiv i32 %139, %132
  %141 = add i32 %133, -1
  %142 = add i32 %141, %140
  %143 = udiv i32 %142, %133
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx8m_clk_composite_divider_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi i32 [ 1, %3 ], [ %14, %4 ]
  %6 = phi i32 [ 1, %3 ], [ %17, %4 ]
  %7 = phi i32 [ 2147483647, %3 ], [ %16, %4 ]
  %8 = phi i32 [ -22, %3 ], [ %15, %4 ]
  %9 = udiv i32 %2, %6
  %10 = sub i32 %9, %1
  %11 = tail call i32 @llvm.abs.i32(i32 %10, i1 false) #6
  %12 = tail call i32 @llvm.abs.i32(i32 %7, i1 false) #6
  %13 = icmp slt i32 %11, %12
  %14 = select i1 %13, i32 %6, i32 %5
  %15 = select i1 %13, i32 0, i32 %8
  %16 = select i1 %13, i32 %10, i32 %7
  %17 = add nuw nsw i32 %6, 1
  %18 = icmp eq i32 %17, 65
  br i1 %18, label %19, label %4

19:                                               ; preds = %4
  %20 = lshr i32 %2, 1
  br label %21

21:                                               ; preds = %33, %19
  %22 = phi i32 [ 1, %19 ], [ %34, %33 ]
  %23 = phi i32 [ %14, %19 ], [ %35, %33 ]
  %24 = phi i32 [ 1, %19 ], [ %38, %33 ]
  %25 = phi i32 [ %16, %19 ], [ %37, %33 ]
  %26 = phi i32 [ %15, %19 ], [ %36, %33 ]
  %27 = udiv i32 %20, %24
  %28 = sub i32 %27, %1
  %29 = tail call i32 @llvm.abs.i32(i32 %28, i1 false) #6
  %30 = tail call i32 @llvm.abs.i32(i32 %25, i1 false) #6
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %21
  %34 = phi i32 [ 2, %32 ], [ %22, %21 ]
  %35 = phi i32 [ %24, %32 ], [ %23, %21 ]
  %36 = phi i32 [ 0, %32 ], [ %26, %21 ]
  %37 = phi i32 [ %28, %32 ], [ %25, %21 ]
  %38 = add nuw nsw i32 %24, 1
  %39 = icmp eq i32 %38, 65
  br i1 %39, label %40, label %21

40:                                               ; preds = %33
  %41 = udiv i32 %2, 3
  br label %42

42:                                               ; preds = %54, %40
  %43 = phi i32 [ %34, %40 ], [ %55, %54 ]
  %44 = phi i32 [ %35, %40 ], [ %56, %54 ]
  %45 = phi i32 [ 1, %40 ], [ %59, %54 ]
  %46 = phi i32 [ %37, %40 ], [ %58, %54 ]
  %47 = phi i32 [ %36, %40 ], [ %57, %54 ]
  %48 = udiv i32 %41, %45
  %49 = sub i32 %48, %1
  %50 = tail call i32 @llvm.abs.i32(i32 %49, i1 false) #6
  %51 = tail call i32 @llvm.abs.i32(i32 %46, i1 false) #6
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %42
  %55 = phi i32 [ 3, %53 ], [ %43, %42 ]
  %56 = phi i32 [ %45, %53 ], [ %44, %42 ]
  %57 = phi i32 [ 0, %53 ], [ %47, %42 ]
  %58 = phi i32 [ %49, %53 ], [ %46, %42 ]
  %59 = add nuw nsw i32 %45, 1
  %60 = icmp eq i32 %59, 65
  br i1 %60, label %61, label %42

61:                                               ; preds = %54
  %62 = lshr i32 %2, 2
  br label %63

63:                                               ; preds = %75, %61
  %64 = phi i32 [ %55, %61 ], [ %76, %75 ]
  %65 = phi i32 [ %56, %61 ], [ %77, %75 ]
  %66 = phi i32 [ 1, %61 ], [ %80, %75 ]
  %67 = phi i32 [ %58, %61 ], [ %79, %75 ]
  %68 = phi i32 [ %57, %61 ], [ %78, %75 ]
  %69 = udiv i32 %62, %66
  %70 = sub i32 %69, %1
  %71 = tail call i32 @llvm.abs.i32(i32 %70, i1 false) #6
  %72 = tail call i32 @llvm.abs.i32(i32 %67, i1 false) #6
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %63
  %76 = phi i32 [ 4, %74 ], [ %64, %63 ]
  %77 = phi i32 [ %66, %74 ], [ %65, %63 ]
  %78 = phi i32 [ 0, %74 ], [ %68, %63 ]
  %79 = phi i32 [ %70, %74 ], [ %67, %63 ]
  %80 = add nuw nsw i32 %66, 1
  %81 = icmp eq i32 %80, 65
  br i1 %81, label %82, label %63

82:                                               ; preds = %75
  %83 = udiv i32 %2, 5
  br label %84

84:                                               ; preds = %96, %82
  %85 = phi i32 [ %76, %82 ], [ %97, %96 ]
  %86 = phi i32 [ %77, %82 ], [ %98, %96 ]
  %87 = phi i32 [ 1, %82 ], [ %101, %96 ]
  %88 = phi i32 [ %79, %82 ], [ %100, %96 ]
  %89 = phi i32 [ %78, %82 ], [ %99, %96 ]
  %90 = udiv i32 %83, %87
  %91 = sub i32 %90, %1
  %92 = tail call i32 @llvm.abs.i32(i32 %91, i1 false) #6
  %93 = tail call i32 @llvm.abs.i32(i32 %88, i1 false) #6
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %84
  %97 = phi i32 [ 5, %95 ], [ %85, %84 ]
  %98 = phi i32 [ %87, %95 ], [ %86, %84 ]
  %99 = phi i32 [ 0, %95 ], [ %89, %84 ]
  %100 = phi i32 [ %91, %95 ], [ %88, %84 ]
  %101 = add nuw nsw i32 %87, 1
  %102 = icmp eq i32 %101, 65
  br i1 %102, label %103, label %84

103:                                              ; preds = %96
  %104 = udiv i32 %2, 6
  br label %105

105:                                              ; preds = %117, %103
  %106 = phi i32 [ %97, %103 ], [ %118, %117 ]
  %107 = phi i32 [ %98, %103 ], [ %119, %117 ]
  %108 = phi i32 [ 1, %103 ], [ %122, %117 ]
  %109 = phi i32 [ %100, %103 ], [ %121, %117 ]
  %110 = phi i32 [ %99, %103 ], [ %120, %117 ]
  %111 = udiv i32 %104, %108
  %112 = sub i32 %111, %1
  %113 = tail call i32 @llvm.abs.i32(i32 %112, i1 false) #6
  %114 = tail call i32 @llvm.abs.i32(i32 %109, i1 false) #6
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116, %105
  %118 = phi i32 [ 6, %116 ], [ %106, %105 ]
  %119 = phi i32 [ %108, %116 ], [ %107, %105 ]
  %120 = phi i32 [ 0, %116 ], [ %110, %105 ]
  %121 = phi i32 [ %112, %116 ], [ %109, %105 ]
  %122 = add nuw nsw i32 %108, 1
  %123 = icmp eq i32 %122, 65
  br i1 %123, label %124, label %105

124:                                              ; preds = %117
  %125 = udiv i32 %2, 7
  br label %126

126:                                              ; preds = %138, %124
  %127 = phi i32 [ %118, %124 ], [ %139, %138 ]
  %128 = phi i32 [ %119, %124 ], [ %140, %138 ]
  %129 = phi i32 [ 1, %124 ], [ %143, %138 ]
  %130 = phi i32 [ %121, %124 ], [ %142, %138 ]
  %131 = phi i32 [ %120, %124 ], [ %141, %138 ]
  %132 = udiv i32 %125, %129
  %133 = sub i32 %132, %1
  %134 = tail call i32 @llvm.abs.i32(i32 %133, i1 false) #6
  %135 = tail call i32 @llvm.abs.i32(i32 %130, i1 false) #6
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %126
  br label %138

138:                                              ; preds = %137, %126
  %139 = phi i32 [ 7, %137 ], [ %127, %126 ]
  %140 = phi i32 [ %129, %137 ], [ %128, %126 ]
  %141 = phi i32 [ 0, %137 ], [ %131, %126 ]
  %142 = phi i32 [ %133, %137 ], [ %130, %126 ]
  %143 = add nuw nsw i32 %129, 1
  %144 = icmp eq i32 %143, 65
  br i1 %144, label %145, label %126

145:                                              ; preds = %138
  %146 = lshr i32 %2, 3
  br label %147

147:                                              ; preds = %163, %145
  %148 = phi i32 [ 8, %163 ], [ %139, %145 ]
  %149 = phi i32 [ %155, %163 ], [ %140, %145 ]
  %150 = phi i32 [ %160, %163 ], [ 1, %145 ]
  %151 = phi i32 [ %157, %163 ], [ %142, %145 ]
  %152 = phi i32 [ 0, %163 ], [ %141, %145 ]
  %153 = tail call i32 @llvm.abs.i32(i32 %151, i1 false) #6
  br label %154

154:                                              ; preds = %162, %147
  %155 = phi i32 [ %160, %162 ], [ %150, %147 ]
  %156 = udiv i32 %146, %155
  %157 = sub i32 %156, %1
  %158 = tail call i32 @llvm.abs.i32(i32 %157, i1 false) #6
  %159 = icmp slt i32 %158, %153
  %160 = add nuw nsw i32 %155, 1
  %161 = icmp eq i32 %160, 65
  br i1 %159, label %163, label %162

162:                                              ; preds = %154
  br i1 %161, label %164, label %154

163:                                              ; preds = %154
  br i1 %161, label %166, label %147

164:                                              ; preds = %162
  %165 = icmp eq i32 %152, 0
  br i1 %165, label %166, label %194

166:                                              ; preds = %164, %163
  %167 = phi i32 [ %148, %164 ], [ 8, %163 ]
  %168 = phi i32 [ %149, %164 ], [ 64, %163 ]
  %169 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 6
  %170 = load ptr, ptr %169, align 4
  %171 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %170) #6
  %172 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 1
  %173 = load ptr, ptr %172, align 4
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  %175 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 3
  %176 = load i8, ptr %175, align 1
  %177 = zext i8 %176 to i32
  %178 = shl nsw i32 -1, %177
  %179 = xor i32 %178, -1
  %180 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 2
  %181 = load i8, ptr %180, align 4
  %182 = zext i8 %181 to i32
  %183 = shl i32 %179, %182
  %184 = and i32 %183, -64
  %185 = xor i32 %184, -64
  %186 = and i32 %185, %174
  %187 = add i32 %167, -1
  %188 = shl i32 %187, %182
  %189 = add i32 %168, -1
  %190 = or i32 %188, %189
  %191 = or i32 %190, %186
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %192 = load ptr, ptr %172, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 %191) #6, !srcloc !11
  %193 = load ptr, ptr %169, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %193, i32 noundef %171) #6
  br label %194

194:                                              ; preds = %166, %164
  %195 = phi i32 [ 0, %166 ], [ -22, %164 ]
  ret i32 %195
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }

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
!8 = !{i64 2846576}
!9 = !{i64 2150578937}
!10 = !{i64 2150579113}
!11 = !{i64 2846158}
!12 = !{i64 2150579409}
!13 = !{i64 2150560798}
!14 = !{i64 2150561165}
!15 = !{i64 2150572717}
!16 = !{i64 2150572962}
