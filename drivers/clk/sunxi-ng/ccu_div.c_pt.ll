; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu_div.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_div.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_div_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_div_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_div_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ccu_div = type { i32, %struct.ccu_div_internal, %struct.ccu_mux_internal, %struct.ccu_common, i32 }
%struct.ccu_div_internal = type { i8, i8, i32, i32, i32, ptr }
%struct.ccu_mux_internal = type { i8, i8, ptr, ptr, i8, ptr, i8 }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }

@ccu_div_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_div_enable, ptr @ccu_div_disable, ptr @ccu_div_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_div_recalc_rate, ptr null, ptr @ccu_div_determine_rate, ptr @ccu_div_set_parent, ptr @ccu_div_get_parent, ptr @ccu_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_ccu_div_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_div_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_div_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_div_ops to i32), ptr @__kstrtab_ccu_div_ops, ptr @__kstrtabns_ccu_div_ops }, section "___ksymtab_gpl+ccu_div_ops", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_ccu_div_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_div_enable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -68
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  %5 = tail call i32 @ccu_gate_helper_enable(ptr noundef %3, i32 noundef %4) #2
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ccu_div_disable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -68
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  tail call void @ccu_gate_helper_disable(ptr noundef %3, i32 noundef %4) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_div_is_enabled(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -68
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  %5 = tail call i32 @ccu_gate_helper_is_enabled(ptr noundef %3, i32 noundef %4) #2
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_div_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %10 = getelementptr i8, ptr %0, i32 -64
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = lshr i32 %9, %12
  %14 = getelementptr i8, ptr %0, i32 -63
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nsw i32 -1, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %13, %18
  %20 = getelementptr i8, ptr %0, i32 -44
  %21 = tail call i32 @ccu_mux_helper_apply_prediv(ptr noundef %3, ptr noundef %20, i32 noundef -1, i32 noundef %1) #2
  %22 = getelementptr i8, ptr %0, i32 -48
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %0, i32 -52
  %25 = load i32, ptr %24, align 4
  %26 = load i8, ptr %14, align 1
  %27 = zext i8 %26 to i32
  %28 = tail call i32 @divider_recalc_rate(ptr noundef %0, i32 noundef %21, i32 noundef %19, ptr noundef %23, i32 noundef %25, i32 noundef %27) #2
  %29 = getelementptr i8, ptr %0, i32 -8
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %2
  %34 = getelementptr i8, ptr %0, i32 12
  %35 = load i32, ptr %34, align 4
  %36 = udiv i32 %28, %35
  br label %37

37:                                               ; preds = %33, %2
  %38 = phi i32 [ %36, %33 ], [ %28, %2 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_div_determine_rate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -68
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = getelementptr i8, ptr %0, i32 -44
  %6 = tail call i32 @ccu_mux_helper_determine_rate(ptr noundef %4, ptr noundef %5, ptr noundef %1, ptr noundef nonnull @ccu_div_round_rate, ptr noundef %3) #2
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_div_set_parent(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = getelementptr i8, ptr %0, i32 -44
  %5 = tail call i32 @ccu_mux_helper_set_parent(ptr noundef %3, ptr noundef %4, i8 noundef zeroext %1) #2
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @ccu_div_get_parent(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -44
  %4 = tail call zeroext i8 @ccu_mux_helper_get_parent(ptr noundef %2, ptr noundef %3) #2
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_div_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = getelementptr i8, ptr %0, i32 -44
  %6 = tail call i32 @ccu_mux_helper_apply_prediv(ptr noundef %4, ptr noundef %5, i32 noundef -1, i32 noundef %2) #2
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, %1
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i32 [ %14, %11 ], [ %1, %3 ]
  %17 = getelementptr i8, ptr %0, i32 -64
  %18 = getelementptr i8, ptr %0, i32 -48
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %0, i32 -63
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr i8, ptr %0, i32 -52
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @divider_get_val(i32 noundef %16, i32 noundef %6, ptr noundef %19, i8 noundef zeroext %21, i32 noundef %23) #2
  %25 = getelementptr i8, ptr %0, i32 -4
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #2
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr i8, ptr %0, i32 -16
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  %32 = getelementptr i8, ptr %28, i32 %31
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !10
  %34 = load i8, ptr %17, align 4
  %35 = zext i8 %34 to i32
  %36 = shl nsw i32 -1, %35
  %37 = load i8, ptr %20, align 1
  %38 = zext i8 %37 to i32
  %39 = add nuw nsw i32 %35, %38
  %40 = sub nsw i32 32, %39
  %41 = lshr i32 -1, %40
  %42 = and i32 %41, %36
  %43 = xor i32 %42, -1
  %44 = and i32 %33, %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  %45 = load i8, ptr %17, align 4
  %46 = zext i8 %45 to i32
  %47 = shl i32 %24, %46
  %48 = or i32 %44, %47
  %49 = load ptr, ptr %4, align 4
  %50 = load i16, ptr %29, align 4
  %51 = zext i16 %50 to i32
  %52 = getelementptr i8, ptr %49, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %48) #2, !srcloc !12
  %53 = load ptr, ptr %25, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %27) #2
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
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_determine_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_div_round_rate(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ccu_div, ptr %4, i32 0, i32 3, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ccu_div, ptr %4, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = mul i32 %12, %3
  br label %14

14:                                               ; preds = %10, %5
  %15 = phi i32 [ %13, %10 ], [ %3, %5 ]
  %16 = getelementptr inbounds %struct.ccu_div, ptr %4, i32 0, i32 3, i32 6
  %17 = getelementptr inbounds %struct.ccu_div, ptr %4, i32 0, i32 1, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ccu_div, ptr %4, i32 0, i32 1, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr inbounds %struct.ccu_div, ptr %4, i32 0, i32 1, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @divider_round_rate_parent(ptr noundef %16, ptr noundef %1, i32 noundef %15, ptr noundef %2, ptr noundef %18, i8 noundef zeroext %20, i32 noundef %22) #2
  %24 = load i32, ptr %6, align 4
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.ccu_div, ptr %4, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = udiv i32 %23, %29
  br label %31

31:                                               ; preds = %27, %14
  %32 = phi i32 [ %30, %27 ], [ %23, %14 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_set_parent(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ccu_mux_helper_get_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!8 = !{i64 2844086}
!9 = !{i64 2150423528}
!10 = !{i64 2150424433}
!11 = !{i64 2150425670}
!12 = !{i64 2843668}
