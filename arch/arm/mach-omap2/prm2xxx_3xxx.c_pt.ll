; ModuleID = '/llk/IR/arch/arm/mach-omap2/prm2xxx_3xxx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/prm2xxx_3xxx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.clockdomain = type { ptr, %union.anon.0, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon.0 = type { ptr }
%struct.clkdm_dep = type { ptr, ptr, i16, i16 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [59 x i8] c"\013powerdomain: %s: waited too long to complete transition\0A\00", align 1
@prm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_prm_is_hardreset_asserted(i8 noundef zeroext %0, i8 noundef zeroext %1, i16 noundef signext %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = zext i8 %0 to i32
  %6 = shl nuw i32 1, %5
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %8 = sext i16 %2 to i32
  %9 = getelementptr i8, ptr %7, i32 %8
  %10 = getelementptr i8, ptr %9, i32 80
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  %12 = and i32 %11, %6
  %13 = lshr i32 %12, %5
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_prm_assert_hardreset(i8 noundef zeroext %0, i8 noundef zeroext %1, i16 noundef signext %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = zext i8 %0 to i32
  %6 = shl nuw i32 1, %5
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %8 = sext i16 %2 to i32
  %9 = getelementptr i8, ptr %7, i32 %8
  %10 = getelementptr i8, ptr %9, i32 80
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  %12 = or i32 %11, %6
  %13 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %14 = getelementptr i8, ptr %13, i32 %8
  %15 = getelementptr i8, ptr %14, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_prm_deassert_hardreset(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef signext %3, i16 noundef zeroext %4, i16 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = zext i8 %0 to i32
  %8 = shl nuw i32 1, %7
  %9 = zext i8 %1 to i32
  %10 = shl nuw i32 1, %9
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %12 = sext i16 %3 to i32
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = getelementptr i8, ptr %13, i32 80
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !8
  %16 = and i32 %15, %8
  %17 = lshr i32 %16, %7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %52, label %19

19:                                               ; preds = %6
  %20 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %21 = getelementptr i8, ptr %20, i32 %12
  %22 = getelementptr i8, ptr %21, i32 88
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #4, !srcloc !8
  %24 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %25 = getelementptr i8, ptr %24, i32 %12
  %26 = getelementptr i8, ptr %25, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %10) #4, !srcloc !9
  %27 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %28 = getelementptr i8, ptr %27, i32 %12
  %29 = getelementptr i8, ptr %28, i32 80
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #4, !srcloc !8
  %31 = xor i32 %8, -1
  %32 = and i32 %30, %31
  %33 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %34 = getelementptr i8, ptr %33, i32 %12
  %35 = getelementptr i8, ptr %34, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %32) #4, !srcloc !9
  br label %36

36:                                               ; preds = %45, %19
  %37 = phi i32 [ 0, %19 ], [ %47, %45 ]
  %38 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %39 = getelementptr i8, ptr %38, i32 %12
  %40 = getelementptr i8, ptr %39, i32 88
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #4, !srcloc !8
  %42 = and i32 %41, %10
  %43 = lshr i32 %42, %9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #4
  %47 = add nuw nsw i32 %37, 1
  %48 = icmp eq i32 %47, 10000
  br i1 %48, label %51, label %36

49:                                               ; preds = %36
  %50 = icmp eq i32 %37, 10000
  br i1 %50, label %51, label %52

51:                                               ; preds = %49, %45
  br label %52

52:                                               ; preds = %51, %49, %6
  %53 = phi i32 [ -17, %6 ], [ -16, %51 ], [ 0, %49 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_pwrdm_set_mem_onst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call i32 @omap2_pwrdm_get_mem_bank_onstate_mask(i8 noundef zeroext %1) #4
  %5 = zext i8 %2 to i32
  %6 = tail call i32 @llvm.cttz.i32(i32 %4, i1 false) #4, !range !10
  %7 = shl i32 %5, %6
  %8 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %9 = load i16, ptr %8, align 4
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %11 = sext i16 %9 to i32
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = getelementptr i8, ptr %12, i32 224
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !8
  %15 = xor i32 %4, -1
  %16 = and i32 %14, %15
  %17 = or i32 %16, %7
  %18 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %19 = getelementptr i8, ptr %18, i32 %11
  %20 = getelementptr i8, ptr %19, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %17) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_get_mem_bank_onstate_mask(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_pwrdm_set_mem_retst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call i32 @omap2_pwrdm_get_mem_bank_retst_mask(i8 noundef zeroext %1) #4
  %5 = zext i8 %2 to i32
  %6 = tail call i32 @llvm.cttz.i32(i32 %4, i1 false) #4, !range !10
  %7 = shl i32 %5, %6
  %8 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %9 = load i16, ptr %8, align 4
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %11 = sext i16 %9 to i32
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = getelementptr i8, ptr %12, i32 224
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !8
  %15 = xor i32 %4, -1
  %16 = and i32 %14, %15
  %17 = or i32 %16, %7
  %18 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %19 = getelementptr i8, ptr %18, i32 %11
  %20 = getelementptr i8, ptr %19, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %17) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_get_mem_bank_retst_mask(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_pwrdm_read_mem_pwrst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call i32 @omap2_pwrdm_get_mem_bank_stst_mask(i8 noundef zeroext %1) #4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %7 = sext i16 %5 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = getelementptr i8, ptr %8, i32 228
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !8
  %11 = and i32 %10, %3
  %12 = tail call i32 @llvm.cttz.i32(i32 %3, i1 false) #4, !range !10
  %13 = lshr i32 %11, %12
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_get_mem_bank_stst_mask(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_pwrdm_read_mem_retst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call i32 @omap2_pwrdm_get_mem_bank_retst_mask(i8 noundef zeroext %1) #4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %7 = sext i16 %5 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = getelementptr i8, ptr %8, i32 224
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !8
  %11 = and i32 %10, %3
  %12 = tail call i32 @llvm.cttz.i32(i32 %3, i1 false) #4, !range !10
  %13 = lshr i32 %11, %12
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_pwrdm_set_logic_retst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = zext i8 %1 to i32
  %4 = shl nuw nsw i32 %3, 2
  %5 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %6 = load i16, ptr %5, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %8 = sext i16 %6 to i32
  %9 = getelementptr i8, ptr %7, i32 %8
  %10 = getelementptr i8, ptr %9, i32 224
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  %12 = and i32 %11, -5
  %13 = or i32 %12, %4
  %14 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %15 = getelementptr i8, ptr %14, i32 %8
  %16 = getelementptr i8, ptr %15, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_pwrdm_wait_transition(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %5 = sext i16 %3 to i32
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = getelementptr i8, ptr %6, i32 228
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !8
  %9 = and i32 %8, 1048576
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %14, %1
  %12 = phi i32 [ %15, %14 ], [ 0, %1 ]
  %13 = icmp eq i32 %12, 100000
  br i1 %13, label %25, label %14

14:                                               ; preds = %11
  %15 = add nuw nsw i32 %12, 1
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #4
  %17 = load i16, ptr %2, align 4
  %18 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %19 = sext i16 %17 to i32
  %20 = getelementptr i8, ptr %18, i32 228
  %21 = getelementptr i8, ptr %20, i32 %19
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #4, !srcloc !8
  %23 = and i32 %22, 1048576
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %11

25:                                               ; preds = %11
  %26 = load ptr, ptr %0, align 4
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %26) #5
  br label %28

28:                                               ; preds = %25, %14, %1
  %29 = phi i32 [ -11, %25 ], [ 0, %1 ], [ 0, %14 ]
  ret i32 %29
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_clkdm_add_wkdep(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.clockdomain, ptr %1, i32 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 1, %5
  %7 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.powerdomain, ptr %8, i32 0, i32 2
  %10 = load i16, ptr %9, align 4
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %12 = sext i16 %10 to i32
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = getelementptr i8, ptr %13, i32 200
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !8
  %16 = or i32 %15, %6
  %17 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %18 = getelementptr i8, ptr %17, i32 %12
  %19 = getelementptr i8, ptr %18, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_clkdm_del_wkdep(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.clockdomain, ptr %1, i32 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 1, %5
  %7 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.powerdomain, ptr %8, i32 0, i32 2
  %10 = load i16, ptr %9, align 4
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %12 = sext i16 %10 to i32
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = getelementptr i8, ptr %13, i32 200
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !8
  %16 = xor i32 %6, -1
  %17 = and i32 %15, %16
  %18 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %19 = getelementptr i8, ptr %18, i32 %12
  %20 = getelementptr i8, ptr %19, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %17) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_clkdm_read_wkdep(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.powerdomain, ptr %4, i32 0, i32 2
  %6 = load i16, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clockdomain, ptr %1, i32 0, i32 5
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 1, %9
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %12 = sext i16 %6 to i32
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = getelementptr i8, ptr %13, i32 200
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !8
  %16 = and i32 %15, %10
  %17 = lshr i32 %16, %9
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap2_clkdm_clear_all_wkdeps(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %21, %1
  %6 = phi i32 [ %22, %21 ], [ 0, %1 ]
  %7 = phi ptr [ %23, %21 ], [ %3, %1 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.clkdm_dep, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.clockdomain, ptr %12, i32 0, i32 5
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 1, %17
  %19 = or i32 %18, %6
  %20 = getelementptr inbounds %struct.clkdm_dep, ptr %7, i32 0, i32 2
  store i16 0, ptr %20, align 4
  br label %21

21:                                               ; preds = %14, %10
  %22 = phi i32 [ %19, %14 ], [ %6, %10 ]
  %23 = getelementptr %struct.clkdm_dep, ptr %7, i32 1
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %5

25:                                               ; preds = %21, %5, %1
  %26 = phi i32 [ 0, %1 ], [ %22, %21 ], [ %6, %5 ]
  %27 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.powerdomain, ptr %28, i32 0, i32 2
  %30 = load i16, ptr %29, align 4
  %31 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %32 = sext i16 %30 to i32
  %33 = getelementptr i8, ptr %31, i32 %32
  %34 = getelementptr i8, ptr %33, i32 200
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #4, !srcloc !8
  %36 = xor i32 %26, -1
  %37 = and i32 %35, %36
  %38 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %39 = getelementptr i8, ptr %38, i32 %32
  %40 = getelementptr i8, ptr %39, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %37) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 952235}
!9 = !{i64 951817}
!10 = !{i32 0, i32 33}
