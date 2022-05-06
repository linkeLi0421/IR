; ModuleID = '/llk/IR/drivers/clk/clk-multiplier.c_pt.bc'
source_filename = "../drivers/clk/clk-multiplier.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_multiplier_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_multiplier_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_multiplier_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_multiplier = type { %struct.clk_hw, ptr, i8, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_multiplier_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_multiplier_recalc_rate, ptr @clk_multiplier_round_rate, ptr null, ptr null, ptr null, ptr @clk_multiplier_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_multiplier_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_multiplier_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_multiplier_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_multiplier_ops to i32), ptr @__kstrtab_clk_multiplier_ops, ptr @__kstrtabns_clk_multiplier_ops }, section "___ksymtab_gpl+clk_multiplier_ops", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_clk_multiplier_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_multiplier_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_multiplier, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, 4
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.clk_multiplier, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3
  br i1 %6, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @llvm.bswap.i32(i32 %9) #3
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !8
  br label %13

12:                                               ; preds = %2
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ %9, %12 ]
  %15 = getelementptr inbounds %struct.clk_multiplier, ptr %0, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = lshr i32 %14, %17
  %19 = getelementptr inbounds %struct.clk_multiplier, ptr %0, i32 0, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = sub nsw i32 32, %21
  %23 = lshr i32 -1, %22
  %24 = and i32 %23, %18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %13
  %27 = load i8, ptr %3, align 2
  %28 = and i8 %27, 1
  %29 = zext i8 %28 to i32
  br label %30

30:                                               ; preds = %26, %13
  %31 = phi i32 [ %24, %13 ], [ %29, %26 ]
  %32 = mul i32 %31, %1
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_multiplier_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.clk_multiplier, ptr %0, i32 0, i32 3
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.clk_multiplier, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 2
  %8 = load i32, ptr %2, align 4
  %9 = zext i8 %5 to i32
  %10 = shl nsw i32 -1, %9
  %11 = xor i32 %10, -1
  %12 = tail call i32 @clk_hw_get_flags(ptr noundef %0) #3
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = icmp ult i32 %10, -2
  br i1 %16, label %17, label %59

17:                                               ; preds = %15
  %18 = and i8 %7, 2
  %19 = icmp eq i8 %18, 0
  br label %31

20:                                               ; preds = %3
  %21 = udiv i32 %1, %8
  %22 = icmp ugt i32 %8, %1
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i8, ptr %6, align 2
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = zext i8 %26 to i32
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i32 [ %21, %20 ], [ %27, %23 ]
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %11) #3
  br label %59

31:                                               ; preds = %54, %17
  %32 = phi i32 [ 0, %17 ], [ %56, %54 ]
  %33 = phi i32 [ 1, %17 ], [ %57, %54 ]
  %34 = phi i32 [ -1, %17 ], [ %55, %54 ]
  %35 = mul i32 %33, %8
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 %8, ptr %2, align 4
  br label %59

38:                                               ; preds = %31
  %39 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #3
  %40 = udiv i32 %1, %33
  %41 = tail call i32 @clk_hw_round_rate(ptr noundef %39, i32 noundef %40) #3
  %42 = mul i32 %41, %33
  br i1 %19, label %49, label %43

43:                                               ; preds = %38
  %44 = sub i32 %1, %42
  %45 = tail call i32 @llvm.abs.i32(i32 %44, i1 false) #3
  %46 = sub i32 %1, %34
  %47 = tail call i32 @llvm.abs.i32(i32 %46, i1 false) #3
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %53, label %54

49:                                               ; preds = %38
  %50 = icmp uge i32 %42, %1
  %51 = icmp ult i32 %42, %34
  %52 = and i1 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %43
  store i32 %41, ptr %2, align 4
  br label %54

54:                                               ; preds = %53, %49, %43
  %55 = phi i32 [ %42, %53 ], [ %34, %49 ], [ %34, %43 ]
  %56 = phi i32 [ %33, %53 ], [ %32, %49 ], [ %32, %43 ]
  %57 = add nuw i32 %33, 1
  %58 = icmp eq i32 %57, %11
  br i1 %58, label %59, label %31

59:                                               ; preds = %54, %37, %28, %15
  %60 = phi i32 [ %33, %37 ], [ %30, %28 ], [ 0, %15 ], [ %56, %54 ]
  %61 = load i32, ptr %2, align 4
  %62 = mul i32 %61, %60
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_multiplier_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.clk_multiplier, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  %8 = lshr i32 %2, 1
  %9 = select i1 %7, i32 0, i32 %8
  %10 = add i32 %9, %1
  %11 = udiv i32 %10, %2
  %12 = getelementptr inbounds %struct.clk_multiplier, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %13) #3
  %17 = load i8, ptr %4, align 2
  br label %18

18:                                               ; preds = %15, %3
  %19 = phi i8 [ %17, %15 ], [ %5, %3 ]
  %20 = phi i32 [ %16, %15 ], [ 0, %3 ]
  %21 = and i8 %19, 4
  %22 = icmp eq i8 %21, 0
  %23 = getelementptr inbounds %struct.clk_multiplier, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #3
  br i1 %22, label %28, label %26

26:                                               ; preds = %18
  %27 = tail call i32 @llvm.bswap.i32(i32 %25) #3
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !8
  br label %29

28:                                               ; preds = %18
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ %25, %28 ]
  %31 = getelementptr inbounds %struct.clk_multiplier, ptr %0, i32 0, i32 2
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i32
  %34 = shl nsw i32 -1, %33
  %35 = getelementptr inbounds %struct.clk_multiplier, ptr %0, i32 0, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = add nuw nsw i32 %33, %37
  %39 = sub nsw i32 32, %38
  %40 = lshr i32 -1, %39
  %41 = and i32 %40, %34
  %42 = xor i32 %41, -1
  %43 = and i32 %30, %42
  %44 = shl i32 %11, %33
  %45 = or i32 %43, %44
  %46 = load i8, ptr %4, align 2
  %47 = and i8 %46, 4
  %48 = icmp eq i8 %47, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #3
  tail call void @arm_heavy_mb() #3
  br i1 %48, label %52, label %49

49:                                               ; preds = %29
  %50 = tail call i32 @llvm.bswap.i32(i32 %45) #3
  %51 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %50) #3, !srcloc !10
  br label %54

52:                                               ; preds = %29
  %53 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %45) #3, !srcloc !10
  br label %54

54:                                               ; preds = %52, %49
  %55 = load ptr, ptr %12, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %55, i32 noundef %20) #3
  br label %58

58:                                               ; preds = %57, %54
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2150539976}
!9 = !{i64 2150540286}
!10 = !{i64 2844107}
