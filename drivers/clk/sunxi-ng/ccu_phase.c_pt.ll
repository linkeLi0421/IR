; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu_phase.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_phase.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_phase_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_phase_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_phase_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@ccu_phase_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ccu_phase_get_phase, ptr @ccu_phase_set_phase, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_ccu_phase_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_phase_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_phase_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_phase_ops to i32), ptr @__kstrtab_ccu_phase_ops, ptr @__kstrtabns_ccu_phase_ops }, section "___ksymtab_gpl+ccu_phase_ops", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_ccu_phase_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_phase_get_phase(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %10 = load i8, ptr %2, align 4
  %11 = zext i8 %10 to i32
  %12 = lshr i32 %9, %11
  %13 = getelementptr i8, ptr %0, i32 -23
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nsw i32 -1, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %12, %17
  %19 = trunc i32 %18 to i8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %1
  %22 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #2
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %22) #2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @clk_hw_get_parent(ptr noundef nonnull %22) #2
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %28) #2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = udiv i32 %31, %25
  %35 = trunc i32 %34 to i16
  %36 = lshr i16 %35, 1
  %37 = add nuw i16 %36, 360
  %38 = udiv i16 %37, %35
  %39 = zext i16 %38 to i32
  %40 = and i32 %18, 255
  %41 = mul nuw nsw i32 %40, %39
  br label %42

42:                                               ; preds = %33, %30, %27, %24, %21, %1
  %43 = phi i32 [ %41, %33 ], [ 180, %1 ], [ -22, %21 ], [ -22, %24 ], [ -22, %27 ], [ -22, %30 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_phase_set_phase(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #2
  %5 = icmp eq ptr %4, null
  br i1 %5, label %61, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %4) #2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %61, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @clk_hw_get_parent(ptr noundef nonnull %4) #2
  %11 = icmp eq ptr %10, null
  br i1 %11, label %61, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %10) #2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %61, label %15

15:                                               ; preds = %12
  %16 = icmp eq i32 %1, 180
  br i1 %16, label %28, label %17

17:                                               ; preds = %15
  %18 = udiv i32 %13, %7
  %19 = trunc i32 %18 to i16
  %20 = lshr i16 %19, 1
  %21 = add nuw i16 %20, 360
  %22 = udiv i16 %21, %19
  %23 = zext i16 %22 to i32
  %24 = lshr i32 %23, 1
  %25 = add i32 %24, %1
  %26 = sdiv i32 %25, %23
  %27 = and i32 %26, 255
  br label %28

28:                                               ; preds = %17, %15
  %29 = phi i32 [ %27, %17 ], [ 0, %15 ]
  %30 = getelementptr i8, ptr %0, i32 -20
  %31 = getelementptr i8, ptr %0, i32 -4
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #2
  %34 = load ptr, ptr %30, align 4
  %35 = getelementptr i8, ptr %0, i32 -16
  %36 = load i16, ptr %35, align 4
  %37 = zext i16 %36 to i32
  %38 = getelementptr i8, ptr %34, i32 %37
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !10
  %40 = load i8, ptr %3, align 4
  %41 = zext i8 %40 to i32
  %42 = shl nsw i32 -1, %41
  %43 = getelementptr i8, ptr %0, i32 -23
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = add nuw nsw i32 %41, %45
  %47 = sub nsw i32 32, %46
  %48 = lshr i32 -1, %47
  %49 = and i32 %48, %42
  %50 = xor i32 %49, -1
  %51 = and i32 %39, %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  %52 = load i8, ptr %3, align 4
  %53 = zext i8 %52 to i32
  %54 = shl i32 %29, %53
  %55 = or i32 %51, %54
  %56 = load ptr, ptr %30, align 4
  %57 = load i16, ptr %35, align 4
  %58 = zext i16 %57 to i32
  %59 = getelementptr i8, ptr %56, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %55) #2, !srcloc !12
  %60 = load ptr, ptr %31, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %60, i32 noundef %33) #2
  br label %61

61:                                               ; preds = %28, %12, %9, %6, %2
  %62 = phi i32 [ 0, %28 ], [ -22, %2 ], [ -22, %6 ], [ -22, %9 ], [ -22, %12 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #1

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
!8 = !{i64 2843732}
!9 = !{i64 2150406964}
!10 = !{i64 2150408680}
!11 = !{i64 2150409900}
!12 = !{i64 2843314}
