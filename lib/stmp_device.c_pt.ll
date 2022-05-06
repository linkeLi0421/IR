; ModuleID = '/llk/IR/lib/stmp_device.c_pt.bc'
source_filename = "../lib/stmp_device.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmp_reset_block:\09\09\09\09\09"
module asm "\09.asciz \09\22stmp_reset_block\22\09\09\09\09\09"
module asm "__kstrtabns_stmp_reset_block:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [32 x i8] c"\013%s(%p): module reset timeout\0A\00", align 1
@__func__.stmp_reset_block = private unnamed_addr constant [17 x i8] c"stmp_reset_block\00", align 1
@__kstrtab_stmp_reset_block = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmp_reset_block = external dso_local constant [0 x i8], align 1
@__ksymtab_stmp_reset_block = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmp_reset_block to i32), ptr @__kstrtab_stmp_reset_block, ptr @__kstrtabns_stmp_reset_block }, section "___ksymtab+stmp_reset_block", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_stmp_reset_block], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmp_reset_block(ptr noundef %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %2 = getelementptr i8, ptr %0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 -2147483648) #3, !srcloc !9
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #3
  br label %4

4:                                                ; preds = %8, %1
  %5 = phi i32 [ 1024, %1 ], [ %9, %8 ]
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = add nsw i32 %5, -1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %47, label %4

11:                                               ; preds = %4
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %47, label %13, !prof !12

13:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 1073741824) #3, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %14 = getelementptr i8, ptr %0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -2147483648) #3, !srcloc !9
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #3
  br label %16

16:                                               ; preds = %21, %13
  %17 = phi i32 [ 1024, %13 ], [ %22, %21 ]
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !15
  %19 = and i32 %18, 1073741824
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = add nsw i32 %17, -1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %47, label %16

24:                                               ; preds = %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 -2147483648) #3, !srcloc !9
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #3
  br label %26

26:                                               ; preds = %30, %24
  %27 = phi i32 [ 1024, %24 ], [ %31, %30 ]
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = add nsw i32 %27, -1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %47, label %26

33:                                               ; preds = %26
  %34 = icmp eq i32 %27, 0
  br i1 %34, label %47, label %35, !prof !12

35:                                               ; preds = %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 1073741824) #3, !srcloc !9
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #3
  br label %37

37:                                               ; preds = %42, %35
  %38 = phi i32 [ 1024, %35 ], [ %43, %42 ]
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %40 = and i32 %39, 1073741824
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = add nsw i32 %38, -1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %37

45:                                               ; preds = %37
  %46 = icmp eq i32 %38, 0
  br i1 %46, label %47, label %49, !prof !12

47:                                               ; preds = %45, %42, %33, %30, %21, %11, %8
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stmp_reset_block, ptr noundef %0) #4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ -110, %47 ], [ 0, %45 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i64 2149949563}
!9 = !{i64 360969}
!10 = !{i64 361387}
!11 = !{i64 2149950518}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2149950763}
!14 = !{i64 2149951107}
!15 = !{i64 2149952096}
