; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu_nk.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_nk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_nk_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_nk_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_nk_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@ccu_nk_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_nk_enable, ptr @ccu_nk_disable, ptr @ccu_nk_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_nk_recalc_rate, ptr @ccu_nk_round_rate, ptr null, ptr null, ptr null, ptr @ccu_nk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_ccu_nk_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_nk_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_nk_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_nk_ops to i32), ptr @__kstrtab_ccu_nk_ops, ptr @__kstrtabns_ccu_nk_ops }, section "___ksymtab_gpl+ccu_nk_ops", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_ccu_nk_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_nk_enable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -44
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @ccu_gate_helper_enable(ptr noundef %2, i32 noundef %4) #3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ccu_nk_disable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -44
  %4 = load i32, ptr %3, align 4
  tail call void @ccu_gate_helper_disable(ptr noundef %2, i32 noundef %4) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_nk_is_enabled(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -44
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @ccu_gate_helper_is_enabled(ptr noundef %2, i32 noundef %4) #3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_nk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %10 = getelementptr i8, ptr %0, i32 -36
  %11 = getelementptr i8, ptr %0, i32 -35
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = lshr i32 %9, %13
  %15 = getelementptr i8, ptr %0, i32 -34
  %16 = load i8, ptr %15, align 2
  %17 = zext i8 %16 to i32
  %18 = shl nsw i32 -1, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %14, %19
  %21 = load i8, ptr %10, align 4
  %22 = zext i8 %21 to i32
  %23 = add i32 %20, %22
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 1, i32 %23
  %26 = getelementptr i8, ptr %0, i32 -31
  %27 = getelementptr i8, ptr %0, i32 -30
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = lshr i32 %9, %29
  %31 = getelementptr i8, ptr %0, i32 -29
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nsw i32 -1, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %30, %35
  %37 = load i8, ptr %26, align 1
  %38 = zext i8 %37 to i32
  %39 = add i32 %36, %38
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 1, i32 %39
  %42 = mul i32 %25, %1
  %43 = mul i32 %42, %41
  %44 = getelementptr i8, ptr %0, i32 -8
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %2
  %49 = getelementptr i8, ptr %0, i32 -24
  %50 = load i32, ptr %49, align 4
  %51 = udiv i32 %43, %50
  br label %52

52:                                               ; preds = %48, %2
  %53 = phi i32 [ %51, %48 ], [ %43, %2 ]
  ret i32 %53
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @ccu_nk_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -24
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, %1
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %11, %8 ], [ %1, %3 ]
  %14 = getelementptr i8, ptr %0, i32 -33
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, i8 1, i8 %15
  %18 = zext i8 %17 to i32
  %19 = getelementptr i8, ptr %0, i32 -32
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = icmp eq i8 %20, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = getelementptr i8, ptr %0, i32 -34
  %25 = load i8, ptr %24, align 2
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 1, %26
  br label %28

28:                                               ; preds = %23, %12
  %29 = phi i32 [ %27, %23 ], [ %21, %12 ]
  %30 = getelementptr i8, ptr %0, i32 -28
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i8 1, i8 %31
  %34 = zext i8 %33 to i32
  %35 = getelementptr i8, ptr %0, i32 -27
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i8 %36, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = getelementptr i8, ptr %0, i32 -29
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw i32 1, %42
  br label %44

44:                                               ; preds = %39, %28
  %45 = phi i32 [ %43, %39 ], [ %37, %28 ]
  %46 = load i32, ptr %2, align 4
  %47 = icmp ult i32 %45, %34
  br i1 %47, label %83, label %48

48:                                               ; preds = %44
  %49 = icmp ult i32 %29, %18
  br label %50

50:                                               ; preds = %77, %48
  %51 = phi i32 [ %34, %48 ], [ %81, %77 ]
  %52 = phi i32 [ 0, %48 ], [ %80, %77 ]
  %53 = phi i32 [ 0, %48 ], [ %79, %77 ]
  %54 = phi i32 [ 0, %48 ], [ %78, %77 ]
  br i1 %49, label %77, label %55

55:                                               ; preds = %50
  %56 = mul i32 %51, %46
  br label %57

57:                                               ; preds = %71, %55
  %58 = phi i32 [ %18, %55 ], [ %75, %71 ]
  %59 = phi i32 [ %52, %55 ], [ %74, %71 ]
  %60 = phi i32 [ %53, %55 ], [ %73, %71 ]
  %61 = phi i32 [ %54, %55 ], [ %72, %71 ]
  %62 = mul i32 %56, %58
  %63 = icmp ult i32 %13, %62
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = sub i32 %13, %62
  %66 = sub i32 %13, %61
  %67 = icmp ult i32 %65, %66
  %68 = select i1 %67, i32 %62, i32 %61
  %69 = select i1 %67, i32 %51, i32 %60
  %70 = select i1 %67, i32 %58, i32 %59
  br label %71

71:                                               ; preds = %64, %57
  %72 = phi i32 [ %68, %64 ], [ %61, %57 ]
  %73 = phi i32 [ %69, %64 ], [ %60, %57 ]
  %74 = phi i32 [ %70, %64 ], [ %59, %57 ]
  %75 = add i32 %58, 1
  %76 = icmp ugt i32 %75, %29
  br i1 %76, label %77, label %57

77:                                               ; preds = %71, %50
  %78 = phi i32 [ %54, %50 ], [ %72, %71 ]
  %79 = phi i32 [ %53, %50 ], [ %73, %71 ]
  %80 = phi i32 [ %52, %50 ], [ %74, %71 ]
  %81 = add i32 %51, 1
  %82 = icmp ugt i32 %81, %45
  br i1 %82, label %83, label %50

83:                                               ; preds = %77, %44
  %84 = phi i32 [ 0, %44 ], [ %79, %77 ]
  %85 = phi i32 [ 0, %44 ], [ %80, %77 ]
  %86 = mul i32 %84, %46
  %87 = mul i32 %86, %85
  br i1 %7, label %92, label %88

88:                                               ; preds = %83
  %89 = getelementptr i8, ptr %0, i32 -24
  %90 = load i32, ptr %89, align 4
  %91 = udiv i32 %87, %90
  br label %92

92:                                               ; preds = %88, %83
  %93 = phi i32 [ %91, %88 ], [ %87, %83 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_nk_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -24
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, %1
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %11, %8 ], [ %1, %3 ]
  %14 = getelementptr i8, ptr %0, i32 -33
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, i8 1, i8 %15
  %18 = zext i8 %17 to i32
  %19 = getelementptr i8, ptr %0, i32 -32
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = icmp eq i8 %20, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = getelementptr i8, ptr %0, i32 -34
  %25 = load i8, ptr %24, align 2
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 1, %26
  br label %28

28:                                               ; preds = %23, %12
  %29 = phi i32 [ %27, %23 ], [ %21, %12 ]
  %30 = getelementptr i8, ptr %0, i32 -28
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i8 1, i8 %31
  %34 = zext i8 %33 to i32
  %35 = getelementptr i8, ptr %0, i32 -27
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i8 %36, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = getelementptr i8, ptr %0, i32 -29
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw i32 1, %42
  br label %44

44:                                               ; preds = %39, %28
  %45 = phi i32 [ %43, %39 ], [ %37, %28 ]
  %46 = icmp ult i32 %45, %34
  br i1 %46, label %82, label %47

47:                                               ; preds = %44
  %48 = icmp ult i32 %29, %18
  br label %49

49:                                               ; preds = %76, %47
  %50 = phi i32 [ %34, %47 ], [ %80, %76 ]
  %51 = phi i32 [ 0, %47 ], [ %79, %76 ]
  %52 = phi i32 [ 0, %47 ], [ %78, %76 ]
  %53 = phi i32 [ 0, %47 ], [ %77, %76 ]
  br i1 %48, label %76, label %54

54:                                               ; preds = %49
  %55 = mul i32 %50, %2
  br label %56

56:                                               ; preds = %70, %54
  %57 = phi i32 [ %18, %54 ], [ %74, %70 ]
  %58 = phi i32 [ %51, %54 ], [ %73, %70 ]
  %59 = phi i32 [ %52, %54 ], [ %72, %70 ]
  %60 = phi i32 [ %53, %54 ], [ %71, %70 ]
  %61 = mul i32 %55, %57
  %62 = icmp ult i32 %13, %61
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = sub i32 %13, %61
  %65 = sub i32 %13, %60
  %66 = icmp ult i32 %64, %65
  %67 = select i1 %66, i32 %61, i32 %60
  %68 = select i1 %66, i32 %50, i32 %59
  %69 = select i1 %66, i32 %57, i32 %58
  br label %70

70:                                               ; preds = %63, %56
  %71 = phi i32 [ %67, %63 ], [ %60, %56 ]
  %72 = phi i32 [ %68, %63 ], [ %59, %56 ]
  %73 = phi i32 [ %69, %63 ], [ %58, %56 ]
  %74 = add i32 %57, 1
  %75 = icmp ugt i32 %74, %29
  br i1 %75, label %76, label %56

76:                                               ; preds = %70, %49
  %77 = phi i32 [ %53, %49 ], [ %71, %70 ]
  %78 = phi i32 [ %52, %49 ], [ %72, %70 ]
  %79 = phi i32 [ %51, %49 ], [ %73, %70 ]
  %80 = add i32 %50, 1
  %81 = icmp ugt i32 %80, %45
  br i1 %81, label %82, label %49

82:                                               ; preds = %76, %44
  %83 = phi i32 [ 0, %44 ], [ %78, %76 ]
  %84 = phi i32 [ 0, %44 ], [ %79, %76 ]
  %85 = getelementptr i8, ptr %0, i32 -20
  %86 = getelementptr i8, ptr %0, i32 -36
  %87 = getelementptr i8, ptr %0, i32 -31
  %88 = getelementptr i8, ptr %0, i32 -4
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %89) #3
  %91 = load ptr, ptr %85, align 4
  %92 = getelementptr i8, ptr %0, i32 -16
  %93 = load i16, ptr %92, align 4
  %94 = zext i16 %93 to i32
  %95 = getelementptr i8, ptr %91, i32 %94
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !10
  %97 = getelementptr i8, ptr %0, i32 -35
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = shl nsw i32 -1, %99
  %101 = getelementptr i8, ptr %0, i32 -34
  %102 = load i8, ptr %101, align 2
  %103 = zext i8 %102 to i32
  %104 = add nuw nsw i32 %99, %103
  %105 = sub nsw i32 32, %104
  %106 = lshr i32 -1, %105
  %107 = and i32 %106, %100
  %108 = getelementptr i8, ptr %0, i32 -30
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = shl nsw i32 -1, %110
  %112 = getelementptr i8, ptr %0, i32 -29
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = add nuw nsw i32 %110, %114
  %116 = sub nsw i32 32, %115
  %117 = lshr i32 -1, %116
  %118 = and i32 %117, %111
  %119 = or i32 %118, %107
  %120 = xor i32 %119, -1
  %121 = and i32 %96, %120
  %122 = load i8, ptr %87, align 1
  %123 = zext i8 %122 to i32
  %124 = sub i32 %83, %123
  %125 = shl i32 %124, %110
  %126 = load i8, ptr %86, align 4
  %127 = zext i8 %126 to i32
  %128 = sub i32 %84, %127
  %129 = shl i32 %128, %99
  %130 = or i32 %129, %125
  %131 = or i32 %130, %121
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %132 = load ptr, ptr %85, align 4
  %133 = load i16, ptr %92, align 4
  %134 = zext i16 %133 to i32
  %135 = getelementptr i8, ptr %132, i32 %134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %131) #3, !srcloc !12
  %136 = load ptr, ptr %88, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %136, i32 noundef %90) #3
  %137 = getelementptr i8, ptr %0, i32 -40
  %138 = load i32, ptr %137, align 4
  tail call void @ccu_helper_wait_for_lock(ptr noundef %85, i32 noundef %138) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_gate_helper_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_helper_wait_for_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2844240}
!9 = !{i64 2150430348}
!10 = !{i64 2150431417}
!11 = !{i64 2150433545}
!12 = !{i64 2843822}
