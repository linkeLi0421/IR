; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu_sdm.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_sdm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_sdm_helper_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_sdm_helper_is_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_sdm_helper_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_sdm_helper_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_sdm_helper_enable\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_sdm_helper_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_sdm_helper_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_sdm_helper_disable\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_sdm_helper_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_sdm_helper_has_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_sdm_helper_has_rate\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_sdm_helper_has_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_sdm_helper_read_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_sdm_helper_read_rate\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_sdm_helper_read_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_sdm_helper_get_factors:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_sdm_helper_get_factors\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_sdm_helper_get_factors:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ccu_sdm_internal = type { ptr, i32, i32, i32, i16 }
%struct.ccu_sdm_setting = type { i32, i32, i32, i32 }

@__kstrtab_ccu_sdm_helper_is_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_sdm_helper_is_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_sdm_helper_is_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_sdm_helper_is_enabled to i32), ptr @__kstrtab_ccu_sdm_helper_is_enabled, ptr @__kstrtabns_ccu_sdm_helper_is_enabled }, section "___ksymtab_gpl+ccu_sdm_helper_is_enabled", align 4
@__kstrtab_ccu_sdm_helper_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_sdm_helper_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_sdm_helper_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_sdm_helper_enable to i32), ptr @__kstrtab_ccu_sdm_helper_enable, ptr @__kstrtabns_ccu_sdm_helper_enable }, section "___ksymtab_gpl+ccu_sdm_helper_enable", align 4
@__kstrtab_ccu_sdm_helper_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_sdm_helper_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_sdm_helper_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_sdm_helper_disable to i32), ptr @__kstrtab_ccu_sdm_helper_disable, ptr @__kstrtabns_ccu_sdm_helper_disable }, section "___ksymtab_gpl+ccu_sdm_helper_disable", align 4
@__kstrtab_ccu_sdm_helper_has_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_sdm_helper_has_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_sdm_helper_has_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_sdm_helper_has_rate to i32), ptr @__kstrtab_ccu_sdm_helper_has_rate, ptr @__kstrtabns_ccu_sdm_helper_has_rate }, section "___ksymtab_gpl+ccu_sdm_helper_has_rate", align 4
@__kstrtab_ccu_sdm_helper_read_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_sdm_helper_read_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_sdm_helper_read_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_sdm_helper_read_rate to i32), ptr @__kstrtab_ccu_sdm_helper_read_rate, ptr @__kstrtabns_ccu_sdm_helper_read_rate }, section "___ksymtab_gpl+ccu_sdm_helper_read_rate", align 4
@__kstrtab_ccu_sdm_helper_get_factors = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_sdm_helper_get_factors = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_sdm_helper_get_factors = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_sdm_helper_get_factors to i32), ptr @__kstrtab_ccu_sdm_helper_get_factors, ptr @__kstrtabns_ccu_sdm_helper_get_factors }, section "___ksymtab_gpl+ccu_sdm_helper_get_factors", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_ccu_sdm_helper_disable, ptr @__ksymtab_ccu_sdm_helper_enable, ptr @__ksymtab_ccu_sdm_helper_get_factors, ptr @__ksymtab_ccu_sdm_helper_has_rate, ptr @__ksymtab_ccu_sdm_helper_is_enabled, ptr @__ksymtab_ccu_sdm_helper_read_rate], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ccu_sdm_helper_is_enabled(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ccu_sdm_internal, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %18 = load i32, ptr %8, align 4
  %19 = and i32 %18, %17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %11, %7
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.ccu_sdm_internal, ptr %1, i32 0, i32 4
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = getelementptr i8, ptr %22, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %28 = getelementptr inbounds %struct.ccu_sdm_internal, ptr %1, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, %27
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %21, %11, %2
  %33 = phi i1 [ %31, %21 ], [ false, %2 ], [ false, %11 ]
  ret i1 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ccu_sdm_helper_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 128
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %68, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ccu_sdm_internal, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ccu_sdm_internal, ptr %1, i32 0, i32 4
  br label %14

14:                                               ; preds = %30, %12
  %15 = phi i32 [ %10, %12 ], [ %31, %30 ]
  %16 = phi i32 [ 0, %12 ], [ %32, %30 ]
  %17 = load ptr, ptr %1, align 4
  %18 = getelementptr %struct.ccu_sdm_setting, ptr %17, i32 %16
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %22 = load ptr, ptr %1, align 4
  %23 = getelementptr %struct.ccu_sdm_setting, ptr %22, i32 %16, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %0, align 4
  %26 = load i16, ptr %13, align 4
  %27 = zext i16 %26 to i32
  %28 = getelementptr i8, ptr %25, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %24) #4, !srcloc !12
  %29 = load i32, ptr %9, align 4
  br label %30

30:                                               ; preds = %21, %14
  %31 = phi i32 [ %15, %14 ], [ %29, %21 ]
  %32 = add nuw i32 %16, 1
  %33 = icmp ult i32 %32, %31
  br i1 %33, label %14, label %34

34:                                               ; preds = %30, %8
  %35 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #4
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.ccu_sdm_internal, ptr %1, i32 0, i32 4
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = getelementptr i8, ptr %38, i32 %41
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %44 = getelementptr inbounds %struct.ccu_sdm_internal, ptr %1, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = or i32 %45, %43
  %47 = load ptr, ptr %0, align 4
  %48 = load i16, ptr %39, align 4
  %49 = zext i16 %48 to i32
  %50 = getelementptr i8, ptr %47, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %46) #4, !srcloc !12
  %51 = load ptr, ptr %35, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %51, i32 noundef %37) #4
  %52 = load ptr, ptr %35, align 4
  %53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %52) #4
  %54 = load ptr, ptr %0, align 4
  %55 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 1
  %56 = load i16, ptr %55, align 4
  %57 = zext i16 %56 to i32
  %58 = getelementptr i8, ptr %54, i32 %57
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %60 = getelementptr inbounds %struct.ccu_sdm_internal, ptr %1, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = or i32 %61, %59
  %63 = load ptr, ptr %0, align 4
  %64 = load i16, ptr %55, align 4
  %65 = zext i16 %64 to i32
  %66 = getelementptr i8, ptr %63, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %62) #4, !srcloc !12
  %67 = load ptr, ptr %35, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %67, i32 noundef %53) #4
  br label %68

68:                                               ; preds = %34, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ccu_sdm_helper_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #4
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %17 = getelementptr inbounds %struct.ccu_sdm_internal, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %16, %19
  %21 = load ptr, ptr %0, align 4
  %22 = load i16, ptr %12, align 4
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %21, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %20) #4, !srcloc !12
  %25 = load ptr, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %10) #4
  %26 = load ptr, ptr %8, align 4
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #4
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.ccu_sdm_internal, ptr %1, i32 0, i32 4
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  %32 = getelementptr i8, ptr %28, i32 %31
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %34 = getelementptr inbounds %struct.ccu_sdm_internal, ptr %1, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %33, %36
  %38 = load ptr, ptr %0, align 4
  %39 = load i16, ptr %29, align 4
  %40 = zext i16 %39 to i32
  %41 = getelementptr i8, ptr %38, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %37) #4, !srcloc !12
  %42 = load ptr, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %27) #4
  br label %43

43:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @ccu_sdm_helper_has_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 128
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ccu_sdm_internal, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %1, align 4
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ 0, %12 ], [ %19, %14 ]
  %16 = getelementptr %struct.ccu_sdm_setting, ptr %13, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %2
  %19 = add nuw i32 %15, 1
  %20 = icmp eq i32 %19, %10
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %14

22:                                               ; preds = %14, %8, %3
  %23 = phi i1 [ false, %3 ], [ false, %8 ], [ %18, %14 ]
  ret i1 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ccu_sdm_helper_read_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.ccu_sdm_internal, ptr %1, i32 0, i32 4
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !21
  %16 = getelementptr inbounds %struct.ccu_sdm_internal, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %9
  %20 = load ptr, ptr %1, align 4
  br label %21

21:                                               ; preds = %37, %19
  %22 = phi i32 [ 0, %19 ], [ %38, %37 ]
  %23 = getelementptr %struct.ccu_sdm_setting, ptr %20, i32 %22, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %15
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = getelementptr %struct.ccu_sdm_setting, ptr %20, i32 %22, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %2
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = getelementptr %struct.ccu_sdm_setting, ptr %20, i32 %22, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %3
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr %struct.ccu_sdm_setting, ptr %20, i32 %22
  %36 = load i32, ptr %35, align 4
  br label %40

37:                                               ; preds = %30, %26, %21
  %38 = add nuw i32 %22, 1
  %39 = icmp eq i32 %38, %17
  br i1 %39, label %40, label %21

40:                                               ; preds = %37, %34, %9, %4
  %41 = phi i32 [ %36, %34 ], [ 0, %4 ], [ 0, %9 ], [ 0, %37 ]
  ret i32 %41
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ccu_sdm_helper_get_factors(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #3 {
  %6 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ccu_sdm_internal, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 4
  br label %16

16:                                               ; preds = %27, %14
  %17 = phi i32 [ 0, %14 ], [ %28, %27 ]
  %18 = getelementptr %struct.ccu_sdm_setting, ptr %15, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = getelementptr %struct.ccu_sdm_setting, ptr %15, i32 %17, i32 2
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %3, align 4
  %24 = load ptr, ptr %1, align 4
  %25 = getelementptr %struct.ccu_sdm_setting, ptr %24, i32 %17, i32 3
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %4, align 4
  br label %30

27:                                               ; preds = %16
  %28 = add nuw i32 %17, 1
  %29 = icmp eq i32 %28, %12
  br i1 %29, label %30, label %16

30:                                               ; preds = %27, %21, %10, %5
  %31 = phi i32 [ 0, %21 ], [ -22, %5 ], [ -22, %10 ], [ -22, %27 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2845289}
!9 = !{i64 2150408127}
!10 = !{i64 2150408500}
!11 = !{i64 2150410216}
!12 = !{i64 2844871}
!13 = !{i64 2150411123}
!14 = !{i64 2150411342}
!15 = !{i64 2150412243}
!16 = !{i64 2150412451}
!17 = !{i64 2150414750}
!18 = !{i64 2150414959}
!19 = !{i64 2150415856}
!20 = !{i64 2150416076}
!21 = !{i64 2150420982}
