; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu_mp.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_mp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_mp_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_mp_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_mp_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_mp_mmc_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_mp_mmc_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_mp_mmc_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
%struct.ccu_mp = type { i32, %struct.ccu_div_internal, %struct.ccu_div_internal, %struct.ccu_mux_internal, i32, %struct.ccu_common }
%struct.ccu_div_internal = type { i8, i8, i32, i32, i32, ptr }
%struct.ccu_mux_internal = type { i8, i8, ptr, ptr, i8, ptr, i8 }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }

@ccu_mp_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_mp_enable, ptr @ccu_mp_disable, ptr @ccu_mp_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_mp_recalc_rate, ptr null, ptr @ccu_mp_determine_rate, ptr @ccu_mp_set_parent, ptr @ccu_mp_get_parent, ptr @ccu_mp_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_ccu_mp_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_mp_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_mp_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_mp_ops to i32), ptr @__kstrtab_ccu_mp_ops, ptr @__kstrtabns_ccu_mp_ops }, section "___ksymtab_gpl+ccu_mp_ops", align 4
@ccu_mp_mmc_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_mp_enable, ptr @ccu_mp_disable, ptr @ccu_mp_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_mp_mmc_recalc_rate, ptr null, ptr @ccu_mp_mmc_determine_rate, ptr @ccu_mp_set_parent, ptr @ccu_mp_get_parent, ptr @ccu_mp_mmc_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_ccu_mp_mmc_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_mp_mmc_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_mp_mmc_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_mp_mmc_ops to i32), ptr @__kstrtab_ccu_mp_mmc_ops, ptr @__kstrtabns_ccu_mp_mmc_ops }, section "___ksymtab_gpl+ccu_mp_mmc_ops", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ccu_mp_mmc_ops, ptr @__ksymtab_ccu_mp_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mp_enable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -92
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  %5 = tail call i32 @ccu_gate_helper_enable(ptr noundef %3, i32 noundef %4) #3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ccu_mp_disable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -92
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  tail call void @ccu_gate_helper_disable(ptr noundef %3, i32 noundef %4) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mp_is_enabled(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -92
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  %5 = tail call i32 @ccu_gate_helper_is_enabled(ptr noundef %3, i32 noundef %4) #3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mp_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = getelementptr i8, ptr %0, i32 -48
  %5 = tail call i32 @ccu_mux_helper_apply_prediv(ptr noundef %3, ptr noundef %4, i32 noundef -1, i32 noundef %1) #3
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %0, i32 -16
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %12 = getelementptr i8, ptr %0, i32 -88
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = lshr i32 %11, %14
  %16 = getelementptr i8, ptr %0, i32 -87
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nsw i32 -1, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %15, %20
  %22 = getelementptr i8, ptr %0, i32 -80
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %21, %23
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 1, i32 %24
  %27 = getelementptr i8, ptr %0, i32 -68
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i32
  %30 = lshr i32 %11, %29
  %31 = getelementptr i8, ptr %0, i32 -67
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nsw i32 -1, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %30, %35
  %37 = lshr i32 %5, %36
  %38 = udiv i32 %37, %26
  %39 = getelementptr i8, ptr %0, i32 -8
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %2
  %44 = getelementptr i8, ptr %0, i32 -24
  %45 = load i32, ptr %44, align 4
  %46 = udiv i32 %38, %45
  br label %47

47:                                               ; preds = %43, %2
  %48 = phi i32 [ %46, %43 ], [ %38, %2 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mp_determine_rate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -92
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = getelementptr i8, ptr %0, i32 -48
  %6 = tail call i32 @ccu_mux_helper_determine_rate(ptr noundef %4, ptr noundef %5, ptr noundef %1, ptr noundef nonnull @ccu_mp_round_rate, ptr noundef %3) #3
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mp_set_parent(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = getelementptr i8, ptr %0, i32 -48
  %5 = tail call i32 @ccu_mux_helper_set_parent(ptr noundef %3, ptr noundef %4, i8 noundef zeroext %1) #3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @ccu_mp_get_parent(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -48
  %4 = tail call zeroext i8 @ccu_mux_helper_get_parent(ptr noundef %2, ptr noundef %3) #3
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mp_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = getelementptr i8, ptr %0, i32 -48
  %6 = tail call i32 @ccu_mux_helper_apply_prediv(ptr noundef %4, ptr noundef %5, i32 noundef -1, i32 noundef %2) #3
  %7 = getelementptr i8, ptr %0, i32 -84
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 -87
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 1, %13
  br label %15

15:                                               ; preds = %10, %3
  %16 = phi i32 [ %14, %10 ], [ %8, %3 ]
  %17 = getelementptr i8, ptr %0, i32 -64
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %0, i32 -67
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nsw i32 -1, %23
  %25 = xor i32 %24, -1
  %26 = shl nuw i32 1, %25
  br label %27

27:                                               ; preds = %20, %15
  %28 = phi i32 [ %26, %20 ], [ %18, %15 ]
  %29 = getelementptr i8, ptr %0, i32 -8
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = getelementptr i8, ptr %0, i32 -24
  %35 = load i32, ptr %34, align 4
  %36 = mul i32 %35, %1
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi i32 [ %36, %33 ], [ %1, %27 ]
  %39 = icmp eq i32 %28, 0
  br i1 %39, label %75, label %40

40:                                               ; preds = %37
  %41 = icmp eq i32 %16, 0
  br label %42

42:                                               ; preds = %69, %40
  %43 = phi i32 [ 1, %40 ], [ %73, %69 ]
  %44 = phi i32 [ 0, %40 ], [ %72, %69 ]
  %45 = phi i32 [ 0, %40 ], [ %71, %69 ]
  %46 = phi i32 [ 0, %40 ], [ %70, %69 ]
  br i1 %41, label %69, label %47

47:                                               ; preds = %42
  %48 = udiv i32 %6, %43
  br label %49

49:                                               ; preds = %63, %47
  %50 = phi i32 [ 1, %47 ], [ %67, %63 ]
  %51 = phi i32 [ %44, %47 ], [ %66, %63 ]
  %52 = phi i32 [ %45, %47 ], [ %65, %63 ]
  %53 = phi i32 [ %46, %47 ], [ %64, %63 ]
  %54 = udiv i32 %48, %50
  %55 = icmp ult i32 %38, %54
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = sub i32 %38, %54
  %58 = sub i32 %38, %53
  %59 = icmp ult i32 %57, %58
  %60 = select i1 %59, i32 %54, i32 %53
  %61 = select i1 %59, i32 %50, i32 %52
  %62 = select i1 %59, i32 %43, i32 %51
  br label %63

63:                                               ; preds = %56, %49
  %64 = phi i32 [ %60, %56 ], [ %53, %49 ]
  %65 = phi i32 [ %61, %56 ], [ %52, %49 ]
  %66 = phi i32 [ %62, %56 ], [ %51, %49 ]
  %67 = add i32 %50, 1
  %68 = icmp ugt i32 %67, %16
  br i1 %68, label %69, label %49

69:                                               ; preds = %63, %42
  %70 = phi i32 [ %46, %42 ], [ %64, %63 ]
  %71 = phi i32 [ %45, %42 ], [ %65, %63 ]
  %72 = phi i32 [ %44, %42 ], [ %66, %63 ]
  %73 = shl i32 %43, 1
  %74 = icmp ugt i32 %73, %28
  br i1 %74, label %75, label %42

75:                                               ; preds = %69, %37
  %76 = phi i32 [ 0, %37 ], [ %71, %69 ]
  %77 = phi i32 [ 0, %37 ], [ %72, %69 ]
  %78 = getelementptr i8, ptr %0, i32 -68
  %79 = getelementptr i8, ptr %0, i32 -88
  %80 = getelementptr i8, ptr %0, i32 -4
  %81 = load ptr, ptr %80, align 4
  %82 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %81) #3
  %83 = load ptr, ptr %4, align 4
  %84 = getelementptr i8, ptr %0, i32 -16
  %85 = load i16, ptr %84, align 4
  %86 = zext i16 %85 to i32
  %87 = getelementptr i8, ptr %83, i32 %86
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !10
  %89 = load i8, ptr %79, align 4
  %90 = getelementptr i8, ptr %0, i32 -87
  %91 = load i8, ptr %90, align 1
  %92 = load i8, ptr %78, align 4
  %93 = getelementptr i8, ptr %0, i32 -67
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i32 -80
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %77, 0
  %98 = tail call i32 @llvm.ctlz.i32(i32 %77, i1 false) #3, !range !11
  %99 = sub nsw i32 31, %98
  %100 = select i1 %97, i32 -1, i32 %99
  %101 = zext i8 %89 to i32
  %102 = shl nsw i32 -1, %101
  %103 = zext i8 %91 to i32
  %104 = add nuw nsw i32 %101, %103
  %105 = sub nsw i32 32, %104
  %106 = lshr i32 -1, %105
  %107 = and i32 %106, %102
  %108 = zext i8 %92 to i32
  %109 = shl nsw i32 -1, %108
  %110 = zext i8 %94 to i32
  %111 = add nuw nsw i32 %108, %110
  %112 = sub nsw i32 32, %111
  %113 = lshr i32 -1, %112
  %114 = and i32 %113, %109
  %115 = or i32 %114, %107
  %116 = xor i32 %115, -1
  %117 = and i32 %88, %116
  %118 = sub i32 %76, %96
  %119 = shl i32 %118, %101
  %120 = or i32 %117, %119
  %121 = shl i32 %100, %108
  %122 = or i32 %120, %121
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  %123 = load ptr, ptr %4, align 4
  %124 = load i16, ptr %84, align 4
  %125 = zext i16 %124 to i32
  %126 = getelementptr i8, ptr %123, i32 %125
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %122) #3, !srcloc !13
  %127 = load ptr, ptr %80, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %127, i32 noundef %82) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mp_mmc_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = getelementptr i8, ptr %0, i32 -48
  %5 = tail call i32 @ccu_mux_helper_apply_prediv(ptr noundef %3, ptr noundef %4, i32 noundef -1, i32 noundef %1) #3
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %0, i32 -16
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %12 = getelementptr i8, ptr %0, i32 -88
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = lshr i32 %11, %14
  %16 = getelementptr i8, ptr %0, i32 -87
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nsw i32 -1, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %15, %20
  %22 = getelementptr i8, ptr %0, i32 -80
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %21, %23
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 1, i32 %24
  %27 = getelementptr i8, ptr %0, i32 -68
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i32
  %30 = lshr i32 %11, %29
  %31 = getelementptr i8, ptr %0, i32 -67
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nsw i32 -1, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %30, %35
  %37 = lshr i32 %5, %36
  %38 = udiv i32 %37, %26
  %39 = getelementptr i8, ptr %0, i32 -8
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %2
  %44 = getelementptr i8, ptr %0, i32 -24
  %45 = load i32, ptr %44, align 4
  %46 = udiv i32 %38, %45
  br label %47

47:                                               ; preds = %43, %2
  %48 = phi i32 [ %46, %43 ], [ %38, %2 ]
  %49 = load ptr, ptr %3, align 4
  %50 = load i16, ptr %7, align 4
  %51 = zext i16 %50 to i32
  %52 = getelementptr i8, ptr %49, i32 %51
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !14
  %54 = lshr i32 %53, 30
  %55 = and i32 %54, 1
  %56 = lshr i32 %48, %55
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mp_mmc_determine_rate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !15
  %10 = and i32 %9, 1073741824
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %0, i32 -92
  %14 = getelementptr i8, ptr %0, i32 -48
  %15 = tail call i32 @ccu_mux_helper_determine_rate(ptr noundef %3, ptr noundef %14, ptr noundef %1, ptr noundef nonnull @ccu_mp_round_rate, ptr noundef %13) #3
  br label %34

16:                                               ; preds = %2
  %17 = load i32, ptr %1, align 4
  %18 = shl i32 %17, 1
  store i32 %18, ptr %1, align 4
  %19 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %20, 1
  store i32 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 %23, 1
  store i32 %24, ptr %22, align 4
  %25 = getelementptr i8, ptr %0, i32 -92
  %26 = getelementptr i8, ptr %0, i32 -48
  %27 = tail call i32 @ccu_mux_helper_determine_rate(ptr noundef %3, ptr noundef %26, ptr noundef %1, ptr noundef nonnull @ccu_mp_round_rate, ptr noundef %25) #3
  %28 = load i32, ptr %1, align 4
  %29 = lshr i32 %28, 1
  store i32 %29, ptr %1, align 4
  %30 = load i32, ptr %19, align 4
  %31 = lshr i32 %30, 1
  store i32 %31, ptr %19, align 4
  %32 = load i32, ptr %22, align 4
  %33 = lshr i32 %32, 1
  store i32 %33, ptr %22, align 4
  br label %34

34:                                               ; preds = %16, %12
  %35 = phi i32 [ %15, %12 ], [ %27, %16 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mp_mmc_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !16
  %11 = lshr i32 %10, 30
  %12 = and i32 %11, 1
  %13 = shl i32 %1, %12
  %14 = tail call i32 @ccu_mp_set_rate(ptr noundef %0, i32 noundef %13, i32 noundef %2)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_gate_helper_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_apply_prediv(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_determine_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mp_round_rate(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ccu_mp, ptr %4, i32 0, i32 5, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ccu_mp, ptr %4, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = mul i32 %12, %3
  br label %14

14:                                               ; preds = %10, %5
  %15 = phi i32 [ %13, %10 ], [ %3, %5 ]
  %16 = getelementptr inbounds %struct.ccu_mp, ptr %4, i32 0, i32 1, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ccu_mp, ptr %4, i32 0, i32 1, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw i32 1, %22
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i32 [ %23, %19 ], [ %17, %14 ]
  %26 = getelementptr inbounds %struct.ccu_mp, ptr %4, i32 0, i32 2, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ccu_mp, ptr %4, i32 0, i32 2, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nsw i32 -1, %32
  %34 = xor i32 %33, -1
  %35 = shl nuw i32 1, %34
  br label %36

36:                                               ; preds = %29, %24
  %37 = phi i32 [ %35, %29 ], [ %27, %24 ]
  %38 = getelementptr inbounds %struct.ccu_mp, ptr %4, i32 0, i32 5, i32 6
  %39 = tail call i32 @clk_hw_get_flags(ptr noundef %38) #3
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  %42 = load i32, ptr %2, align 4
  br i1 %41, label %43, label %85

43:                                               ; preds = %36
  %44 = icmp eq i32 %37, 0
  br i1 %44, label %80, label %45

45:                                               ; preds = %43
  %46 = icmp eq i32 %25, 0
  br label %47

47:                                               ; preds = %74, %45
  %48 = phi i32 [ 1, %45 ], [ %78, %74 ]
  %49 = phi i32 [ 0, %45 ], [ %77, %74 ]
  %50 = phi i32 [ 0, %45 ], [ %76, %74 ]
  %51 = phi i32 [ 0, %45 ], [ %75, %74 ]
  br i1 %46, label %74, label %52

52:                                               ; preds = %47
  %53 = udiv i32 %42, %48
  br label %54

54:                                               ; preds = %68, %52
  %55 = phi i32 [ 1, %52 ], [ %72, %68 ]
  %56 = phi i32 [ %49, %52 ], [ %71, %68 ]
  %57 = phi i32 [ %50, %52 ], [ %70, %68 ]
  %58 = phi i32 [ %51, %52 ], [ %69, %68 ]
  %59 = udiv i32 %53, %55
  %60 = icmp ult i32 %15, %59
  br i1 %60, label %68, label %61

61:                                               ; preds = %54
  %62 = sub i32 %15, %59
  %63 = sub i32 %15, %58
  %64 = icmp ult i32 %62, %63
  %65 = select i1 %64, i32 %59, i32 %58
  %66 = select i1 %64, i32 %55, i32 %57
  %67 = select i1 %64, i32 %48, i32 %56
  br label %68

68:                                               ; preds = %61, %54
  %69 = phi i32 [ %65, %61 ], [ %58, %54 ]
  %70 = phi i32 [ %66, %61 ], [ %57, %54 ]
  %71 = phi i32 [ %67, %61 ], [ %56, %54 ]
  %72 = add i32 %55, 1
  %73 = icmp ugt i32 %72, %25
  br i1 %73, label %74, label %54

74:                                               ; preds = %68, %47
  %75 = phi i32 [ %51, %47 ], [ %69, %68 ]
  %76 = phi i32 [ %50, %47 ], [ %70, %68 ]
  %77 = phi i32 [ %49, %47 ], [ %71, %68 ]
  %78 = shl i32 %48, 1
  %79 = icmp ugt i32 %78, %37
  br i1 %79, label %80, label %47

80:                                               ; preds = %74, %43
  %81 = phi i32 [ 0, %43 ], [ %76, %74 ]
  %82 = phi i32 [ 0, %43 ], [ %77, %74 ]
  %83 = udiv i32 %42, %82
  %84 = udiv i32 %83, %81
  br label %120

85:                                               ; preds = %36
  %86 = mul i32 %37, %25
  %87 = udiv i32 -1, %15
  %88 = tail call i32 @llvm.umin.i32(i32 %87, i32 %86) #3
  %89 = icmp eq i32 %37, 0
  br i1 %89, label %120, label %90

90:                                               ; preds = %85
  %91 = icmp eq i32 %25, 0
  br label %92

92:                                               ; preds = %116, %90
  %93 = phi i32 [ 1, %90 ], [ %118, %116 ]
  %94 = phi i32 [ 0, %90 ], [ %117, %116 ]
  br i1 %91, label %116, label %95

95:                                               ; preds = %112, %92
  %96 = phi i32 [ %114, %112 ], [ 1, %92 ]
  %97 = phi i32 [ %113, %112 ], [ %94, %92 ]
  %98 = mul i32 %96, %93
  %99 = icmp ugt i32 %98, %88
  br i1 %99, label %116, label %100

100:                                              ; preds = %95
  %101 = mul i32 %98, %15
  %102 = icmp eq i32 %101, %42
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 %42, ptr %2, align 4
  br label %120

104:                                              ; preds = %100
  %105 = tail call i32 @clk_hw_round_rate(ptr noundef %1, i32 noundef %101) #3
  %106 = udiv i32 %105, %98
  %107 = icmp ule i32 %106, %15
  %108 = icmp ugt i32 %106, %97
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  store i32 %105, ptr %2, align 4
  %111 = icmp eq i32 %106, %15
  br i1 %111, label %120, label %112

112:                                              ; preds = %110, %104
  %113 = phi i32 [ %106, %110 ], [ %97, %104 ]
  %114 = add i32 %96, 1
  %115 = icmp ugt i32 %114, %25
  br i1 %115, label %116, label %95

116:                                              ; preds = %112, %95, %92
  %117 = phi i32 [ %94, %92 ], [ %97, %95 ], [ %113, %112 ]
  %118 = shl i32 %93, 1
  %119 = icmp ugt i32 %118, %37
  br i1 %119, label %120, label %92

120:                                              ; preds = %116, %110, %103, %85, %80
  %121 = phi i32 [ %84, %80 ], [ %15, %103 ], [ 0, %85 ], [ %15, %110 ], [ %117, %116 ]
  %122 = load i32, ptr %6, align 4
  %123 = and i32 %122, 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.ccu_mp, ptr %4, i32 0, i32 4
  %127 = load i32, ptr %126, align 4
  %128 = udiv i32 %121, %127
  br label %129

129:                                              ; preds = %125, %120
  %130 = phi i32 [ %128, %125 ], [ %121, %120 ]
  ret i32 %130
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_set_parent(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ccu_mux_helper_get_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2848806}
!9 = !{i64 2150440026}
!10 = !{i64 2150440939}
!11 = !{i32 0, i32 33}
!12 = !{i64 2150443282}
!13 = !{i64 2848388}
!14 = !{i64 2150444868}
!15 = !{i64 2150445289}
!16 = !{i64 2150445794}
