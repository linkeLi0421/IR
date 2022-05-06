; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu_mult.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_mult.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_mult_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_mult_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_mult_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ccu_mult = type { i32, i32, %struct.ccu_frac_internal, %struct.ccu_mult_internal, %struct.ccu_mux_internal, %struct.ccu_common }
%struct.ccu_frac_internal = type { i32, i32, [2 x i32] }
%struct.ccu_mult_internal = type { i8, i8, i8, i8, i8 }
%struct.ccu_mux_internal = type { i8, i8, ptr, ptr, i8, ptr, i8 }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }

@ccu_mult_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_mult_enable, ptr @ccu_mult_disable, ptr @ccu_mult_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_mult_recalc_rate, ptr null, ptr @ccu_mult_determine_rate, ptr @ccu_mult_set_parent, ptr @ccu_mult_get_parent, ptr @ccu_mult_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_ccu_mult_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_mult_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_mult_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_mult_ops to i32), ptr @__kstrtab_ccu_mult_ops, ptr @__kstrtabns_ccu_mult_ops }, section "___ksymtab_gpl+ccu_mult_ops", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_ccu_mult_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mult_enable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -76
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  %5 = tail call i32 @ccu_gate_helper_enable(ptr noundef %3, i32 noundef %4) #4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ccu_mult_disable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -76
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  tail call void @ccu_gate_helper_disable(ptr noundef %3, i32 noundef %4) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mult_is_enabled(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -76
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  %5 = tail call i32 @ccu_gate_helper_is_enabled(ptr noundef %3, i32 noundef %4) #4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mult_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = getelementptr i8, ptr %0, i32 -68
  %5 = tail call zeroext i1 @ccu_frac_helper_is_enabled(ptr noundef %3, ptr noundef %4) #4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @ccu_frac_helper_read_rate(ptr noundef %3, ptr noundef %4) #4
  br label %32

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %0, i32 -16
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %9, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %15 = getelementptr i8, ptr %0, i32 -52
  %16 = getelementptr i8, ptr %0, i32 -51
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = lshr i32 %14, %18
  %20 = getelementptr i8, ptr %0, i32 -50
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = shl nsw i32 -1, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %19, %24
  %26 = getelementptr i8, ptr %0, i32 -44
  %27 = tail call i32 @ccu_mux_helper_apply_prediv(ptr noundef %3, ptr noundef %26, i32 noundef -1, i32 noundef %1) #4
  %28 = load i8, ptr %15, align 4
  %29 = zext i8 %28 to i32
  %30 = add i32 %25, %29
  %31 = mul i32 %30, %27
  br label %32

32:                                               ; preds = %8, %6
  %33 = phi i32 [ %7, %6 ], [ %31, %8 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mult_determine_rate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -76
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = getelementptr i8, ptr %0, i32 -44
  %6 = tail call i32 @ccu_mux_helper_determine_rate(ptr noundef %4, ptr noundef %5, ptr noundef %1, ptr noundef nonnull @ccu_mult_round_rate, ptr noundef %3) #4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mult_set_parent(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = getelementptr i8, ptr %0, i32 -44
  %5 = tail call i32 @ccu_mux_helper_set_parent(ptr noundef %3, ptr noundef %4, i8 noundef zeroext %1) #4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @ccu_mult_get_parent(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -44
  %4 = tail call zeroext i8 @ccu_mux_helper_get_parent(ptr noundef %2, ptr noundef %3) #4
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mult_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = getelementptr i8, ptr %0, i32 -68
  %6 = tail call zeroext i1 @ccu_frac_helper_has_rate(ptr noundef %4, ptr noundef %5, i32 noundef %1) #4
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  tail call void @ccu_frac_helper_enable(ptr noundef %4, ptr noundef %5) #4
  %8 = getelementptr i8, ptr %0, i32 -72
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @ccu_frac_helper_set_rate(ptr noundef %4, ptr noundef %5, i32 noundef %1, i32 noundef %9) #4
  br label %71

11:                                               ; preds = %3
  tail call void @ccu_frac_helper_disable(ptr noundef %4, ptr noundef %5) #4
  %12 = getelementptr i8, ptr %0, i32 -44
  %13 = tail call i32 @ccu_mux_helper_apply_prediv(ptr noundef %4, ptr noundef %12, i32 noundef -1, i32 noundef %2) #4
  %14 = getelementptr i8, ptr %0, i32 -52
  %15 = getelementptr i8, ptr %0, i32 -49
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr i8, ptr %0, i32 -48
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %11
  %22 = zext i8 %19 to i32
  br label %32

23:                                               ; preds = %11
  %24 = getelementptr i8, ptr %0, i32 -50
  %25 = load i8, ptr %24, align 2
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 1, %26
  %28 = load i8, ptr %14, align 4
  %29 = zext i8 %28 to i32
  %30 = add nsw i32 %29, -1
  %31 = add i32 %30, %27
  br label %32

32:                                               ; preds = %23, %21
  %33 = phi i32 [ %31, %23 ], [ %22, %21 ]
  %34 = udiv i32 %1, %13
  %35 = tail call i32 @llvm.umax.i32(i32 %34, i32 %17) #4
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 %33) #4
  %37 = getelementptr i8, ptr %0, i32 -4
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #4
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr i8, ptr %0, i32 -16
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  %44 = getelementptr i8, ptr %40, i32 %43
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %46 = getelementptr i8, ptr %0, i32 -51
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nsw i32 -1, %48
  %50 = getelementptr i8, ptr %0, i32 -50
  %51 = load i8, ptr %50, align 2
  %52 = zext i8 %51 to i32
  %53 = add nuw nsw i32 %48, %52
  %54 = sub nsw i32 32, %53
  %55 = lshr i32 -1, %54
  %56 = and i32 %55, %49
  %57 = xor i32 %56, -1
  %58 = and i32 %45, %57
  %59 = load i8, ptr %14, align 4
  %60 = zext i8 %59 to i32
  %61 = sub i32 %36, %60
  %62 = shl i32 %61, %48
  %63 = or i32 %58, %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %64 = load ptr, ptr %4, align 4
  %65 = load i16, ptr %41, align 4
  %66 = zext i16 %65 to i32
  %67 = getelementptr i8, ptr %64, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %63) #4, !srcloc !12
  %68 = load ptr, ptr %37, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %68, i32 noundef %39) #4
  %69 = getelementptr i8, ptr %0, i32 -72
  %70 = load i32, ptr %69, align 4
  tail call void @ccu_helper_wait_for_lock(ptr noundef %4, i32 noundef %70) #4
  br label %71

71:                                               ; preds = %32, %7
  %72 = phi i32 [ %10, %7 ], [ 0, %32 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_gate_helper_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ccu_frac_helper_is_enabled(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_frac_helper_read_rate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_apply_prediv(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_determine_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ccu_mult_round_rate(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4) #2 {
  %6 = getelementptr inbounds %struct.ccu_mult, ptr %4, i32 0, i32 3, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.ccu_mult, ptr %4, i32 0, i32 3, i32 4
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = zext i8 %9 to i32
  br label %23

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.ccu_mult, ptr %4, i32 0, i32 3
  %15 = getelementptr inbounds %struct.ccu_mult, ptr %4, i32 0, i32 3, i32 2
  %16 = load i8, ptr %15, align 2
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 1, %17
  %19 = load i8, ptr %14, align 4
  %20 = zext i8 %19 to i32
  %21 = add nsw i32 %20, -1
  %22 = add i32 %21, %18
  br label %23

23:                                               ; preds = %13, %11
  %24 = phi i32 [ %22, %13 ], [ %12, %11 ]
  %25 = zext i8 %7 to i32
  %26 = load i32, ptr %2, align 4
  %27 = udiv i32 %3, %26
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 %25) #4
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 %24) #4
  %30 = mul i32 %29, %26
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_set_parent(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ccu_mux_helper_get_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ccu_frac_helper_has_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_frac_helper_enable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_frac_helper_set_rate(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_frac_helper_disable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_helper_wait_for_lock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2844667}
!9 = !{i64 2150419592}
!10 = !{i64 2150420333}
!11 = !{i64 2150421569}
!12 = !{i64 2844249}
