; ModuleID = '/llk/IR/drivers/net/phy/swphy.c_pt.bc'
source_filename = "../drivers/net/phy/swphy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_swphy_validate_state:\09\09\09\09\09"
module asm "\09.asciz \09\22swphy_validate_state\22\09\09\09\09\09"
module asm "__kstrtabns_swphy_validate_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_swphy_read_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22swphy_read_reg\22\09\09\09\09\09"
module asm "__kstrtabns_swphy_read_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.swmii_regs = type { i16, i16, i16, i16 }
%struct.fixed_phy_status = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"\014swphy: unknown speed\0A\00", align 1
@__kstrtab_swphy_validate_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_swphy_validate_state = external dso_local constant [0 x i8], align 1
@__ksymtab_swphy_validate_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @swphy_validate_state to i32), ptr @__kstrtab_swphy_validate_state, ptr @__kstrtabns_swphy_validate_state }, section "___ksymtab_gpl+swphy_validate_state", align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"drivers/net/phy/swphy.c\00", align 1
@speed = internal unnamed_addr constant [3 x %struct.swmii_regs] [%struct.swmii_regs { i16 0, i16 96, i16 0, i16 0 }, %struct.swmii_regs { i16 24576, i16 384, i16 0, i16 0 }, %struct.swmii_regs { i16 256, i16 0, i16 3072, i16 12288 }], align 2
@duplex = internal unnamed_addr constant [2 x %struct.swmii_regs] [%struct.swmii_regs { i16 8448, i16 160, i16 1024, i16 4096 }, %struct.swmii_regs { i16 16640, i16 320, i16 2048, i16 8192 }], align 2
@__kstrtab_swphy_read_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_swphy_read_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_swphy_read_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @swphy_read_reg to i32), ptr @__kstrtab_swphy_read_reg, ptr @__kstrtabns_swphy_read_reg }, section "___ksymtab_gpl+swphy_read_reg", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_swphy_read_reg, ptr @__ksymtab_swphy_validate_state], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @swphy_validate_state(ptr nocapture noundef readonly %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.fixed_phy_status, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %7 [
    i32 1000, label %9
    i32 100, label %9
    i32 10, label %9
  ]

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #3
  br label %9

9:                                                ; preds = %7, %4, %4, %4, %1
  %10 = phi i32 [ -22, %7 ], [ 0, %1 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ]
  ret i32 %10
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @swphy_read_reg(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp sgt i32 %0, 29
  br i1 %3, label %66, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.fixed_phy_status, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %9 [
    i32 1000, label %10
    i32 100, label %7
    i32 10, label %8
  ]

7:                                                ; preds = %4
  br label %10

8:                                                ; preds = %4
  br label %10

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 127, i32 noundef 9, ptr noundef null) #4
  br label %66

10:                                               ; preds = %8, %7, %4
  %11 = phi i32 [ 2, %4 ], [ 1, %7 ], [ 0, %8 ]
  %12 = getelementptr inbounds %struct.fixed_phy_status, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = getelementptr [3 x %struct.swmii_regs], ptr @speed, i32 0, i32 %11
  %17 = load i16, ptr %16, align 2
  %18 = getelementptr [2 x %struct.swmii_regs], ptr @duplex, i32 0, i32 %15
  %19 = load i16, ptr %18, align 2
  %20 = and i16 %19, %17
  %21 = or i16 %20, 8
  %22 = getelementptr [3 x %struct.swmii_regs], ptr @speed, i32 0, i32 %11, i32 3
  %23 = load i16, ptr %22, align 2
  %24 = getelementptr [2 x %struct.swmii_regs], ptr @duplex, i32 0, i32 %15, i32 3
  %25 = load i16, ptr %24, align 2
  %26 = and i16 %25, %23
  %27 = load i32, ptr %1, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %10
  %30 = or i16 %20, 44
  %31 = getelementptr [3 x %struct.swmii_regs], ptr @speed, i32 0, i32 %11, i32 1
  %32 = load i16, ptr %31, align 2
  %33 = getelementptr [2 x %struct.swmii_regs], ptr @duplex, i32 0, i32 %15, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = and i16 %34, %32
  %36 = getelementptr [3 x %struct.swmii_regs], ptr @speed, i32 0, i32 %11, i32 2
  %37 = load i16, ptr %36, align 2
  %38 = getelementptr [2 x %struct.swmii_regs], ptr @duplex, i32 0, i32 %15, i32 2
  %39 = load i16, ptr %38, align 2
  %40 = and i16 %39, %37
  %41 = getelementptr inbounds %struct.fixed_phy_status, ptr %1, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  %44 = or i16 %35, 1024
  %45 = select i1 %43, i16 %35, i16 %44
  %46 = getelementptr inbounds %struct.fixed_phy_status, ptr %1, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = or i16 %45, 2048
  %50 = select i1 %48, i16 %45, i16 %49
  %51 = zext i16 %40 to i32
  %52 = zext i16 %50 to i32
  br label %53

53:                                               ; preds = %29, %10
  %54 = phi i16 [ %21, %10 ], [ %30, %29 ]
  %55 = phi i32 [ 0, %10 ], [ %51, %29 ]
  %56 = phi i32 [ 0, %10 ], [ %52, %29 ]
  switch i32 %0, label %65 [
    i32 0, label %66
    i32 1, label %57
    i32 2, label %59
    i32 3, label %59
    i32 5, label %60
    i32 10, label %61
    i32 15, label %62
    i32 13, label %64
    i32 14, label %64
  ]

57:                                               ; preds = %53
  %58 = zext i16 %54 to i32
  br label %66

59:                                               ; preds = %53, %53
  br label %66

60:                                               ; preds = %53
  br label %66

61:                                               ; preds = %53
  br label %66

62:                                               ; preds = %53
  %63 = zext i16 %26 to i32
  br label %66

64:                                               ; preds = %53, %53
  br label %66

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %64, %62, %61, %60, %59, %57, %53, %9, %2
  %67 = phi i32 [ 0, %9 ], [ 65535, %65 ], [ -1, %64 ], [ %63, %62 ], [ %55, %61 ], [ %56, %60 ], [ 0, %59 ], [ %58, %57 ], [ -1, %2 ], [ 4096, %53 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind }
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
