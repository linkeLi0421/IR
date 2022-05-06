; ModuleID = '/llk/IR/arch/arm/mach-omap2/prm33xx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/prm33xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pwrdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.prm_ll_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }

@am33xx_pwrdm_operations = dso_local local_unnamed_addr global %struct.pwrdm_ops { ptr @am33xx_pwrdm_set_next_pwrst, ptr @am33xx_pwrdm_read_next_pwrst, ptr @am33xx_pwrdm_read_pwrst, ptr null, ptr @am33xx_pwrdm_set_logic_retst, ptr @am33xx_pwrdm_set_mem_onst, ptr @am33xx_pwrdm_set_mem_retst, ptr @am33xx_pwrdm_read_logic_pwrst, ptr null, ptr @am33xx_pwrdm_read_logic_retst, ptr @am33xx_pwrdm_read_mem_pwrst, ptr null, ptr @am33xx_pwrdm_read_mem_retst, ptr @am33xx_pwrdm_clear_all_prev_pwrst, ptr null, ptr null, ptr @am33xx_pwrdm_set_lowpwrstchange, ptr @am33xx_pwrdm_wait_transition, ptr @am33xx_check_vcvp, ptr @am33xx_pwrdm_save_context, ptr @am33xx_pwrdm_restore_context }, align 4
@am33xx_prm_ll_data = internal global %struct.prm_ll_data { ptr null, ptr null, ptr null, ptr null, ptr @am33xx_prm_assert_hardreset, ptr @am33xx_prm_deassert_hardreset, ptr @am33xx_prm_is_hardreset_asserted, ptr @am33xx_prm_global_warm_sw_reset, ptr null, ptr null, ptr null }, align 4
@__exitcall_am33xx_prm_exit = internal global ptr @am33xx_prm_exit, section ".exitcall.exit", align 4
@prm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [59 x i8] c"\013powerdomain: %s: waited too long to complete transition\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__exitcall_am33xx_prm_exit, ptr @am33xx_prm_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_set_next_pwrst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = zext i8 %1 to i32
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  %6 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 19
  %7 = load i8, ptr %6, align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %9 = sext i16 %5 to i32
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = zext i8 %7 to i32
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !8
  %14 = and i32 %13, -4
  %15 = or i32 %14, %3
  %16 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %17 = getelementptr i8, ptr %16, i32 %9
  %18 = getelementptr i8, ptr %17, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #6, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_read_next_pwrst(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 19
  %5 = load i8, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %7 = sext i16 %3 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = zext i8 %5 to i32
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !8
  %12 = and i32 %11, 3
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_read_pwrst(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 20
  %5 = load i8, ptr %4, align 1
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %7 = sext i16 %3 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = zext i8 %5 to i32
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !8
  %12 = and i32 %11, 3
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_set_logic_retst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 21
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = zext i8 %1 to i32
  %8 = tail call i32 @llvm.cttz.i32(i32 %4, i1 true) #6, !range !10
  %9 = shl i32 %7, %8
  %10 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %11 = load i16, ptr %10, align 4
  %12 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 19
  %13 = load i8, ptr %12, align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %15 = sext i16 %11 to i32
  %16 = getelementptr i8, ptr %14, i32 %15
  %17 = zext i8 %13 to i32
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !8
  %20 = xor i32 %4, -1
  %21 = and i32 %19, %20
  %22 = or i32 %21, %9
  %23 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %24 = getelementptr i8, ptr %23, i32 %15
  %25 = getelementptr i8, ptr %24, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %22) #6, !srcloc !9
  br label %26

26:                                               ; preds = %6, %2
  %27 = phi i32 [ 0, %6 ], [ -22, %2 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_set_mem_onst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = zext i8 %1 to i32
  %5 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 22, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  %9 = zext i8 %2 to i32
  %10 = tail call i32 @llvm.cttz.i32(i32 %6, i1 true) #6, !range !10
  %11 = shl i32 %9, %10
  %12 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %13 = load i16, ptr %12, align 4
  %14 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 19
  %15 = load i8, ptr %14, align 4
  %16 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %17 = sext i16 %13 to i32
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = zext i8 %15 to i32
  %20 = getelementptr i8, ptr %18, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !8
  %22 = xor i32 %6, -1
  %23 = and i32 %21, %22
  %24 = or i32 %23, %11
  %25 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %26 = getelementptr i8, ptr %25, i32 %17
  %27 = getelementptr i8, ptr %26, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %24) #6, !srcloc !9
  br label %28

28:                                               ; preds = %8, %3
  %29 = phi i32 [ 0, %8 ], [ -22, %3 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_set_mem_retst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = zext i8 %1 to i32
  %5 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 23, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  %9 = zext i8 %2 to i32
  %10 = tail call i32 @llvm.cttz.i32(i32 %6, i1 true) #6, !range !10
  %11 = shl i32 %9, %10
  %12 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %13 = load i16, ptr %12, align 4
  %14 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 19
  %15 = load i8, ptr %14, align 4
  %16 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %17 = sext i16 %13 to i32
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = zext i8 %15 to i32
  %20 = getelementptr i8, ptr %18, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !8
  %22 = xor i32 %6, -1
  %23 = and i32 %21, %22
  %24 = or i32 %23, %11
  %25 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %26 = getelementptr i8, ptr %25, i32 %17
  %27 = getelementptr i8, ptr %26, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %24) #6, !srcloc !9
  br label %28

28:                                               ; preds = %8, %3
  %29 = phi i32 [ 0, %8 ], [ -22, %3 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_read_logic_pwrst(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 20
  %5 = load i8, ptr %4, align 1
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %7 = sext i16 %3 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = zext i8 %5 to i32
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !8
  %12 = lshr i32 %11, 2
  %13 = and i32 %12, 1
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_read_logic_retst(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 21
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %7 = load i16, ptr %6, align 4
  %8 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 19
  %9 = load i8, ptr %8, align 4
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %11 = sext i16 %7 to i32
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = zext i8 %9 to i32
  %14 = getelementptr i8, ptr %12, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !8
  %16 = and i32 %15, %3
  %17 = tail call i32 @llvm.cttz.i32(i32 %3, i1 true) #6, !range !10
  %18 = lshr i32 %16, %17
  br label %19

19:                                               ; preds = %5, %1
  %20 = phi i32 [ %18, %5 ], [ -22, %1 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_read_mem_pwrst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = zext i8 %1 to i32
  %4 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 24, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %9 = load i16, ptr %8, align 4
  %10 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 20
  %11 = load i8, ptr %10, align 1
  %12 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %13 = sext i16 %9 to i32
  %14 = getelementptr i8, ptr %12, i32 %13
  %15 = zext i8 %11 to i32
  %16 = getelementptr i8, ptr %14, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !8
  %18 = and i32 %17, %5
  %19 = tail call i32 @llvm.cttz.i32(i32 %5, i1 true) #6, !range !10
  %20 = lshr i32 %18, %19
  br label %21

21:                                               ; preds = %7, %2
  %22 = phi i32 [ %20, %7 ], [ -22, %2 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_read_mem_retst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = zext i8 %1 to i32
  %4 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 25, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %9 = load i16, ptr %8, align 4
  %10 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 19
  %11 = load i8, ptr %10, align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %13 = sext i16 %9 to i32
  %14 = getelementptr i8, ptr %12, i32 %13
  %15 = zext i8 %11 to i32
  %16 = getelementptr i8, ptr %14, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !8
  %18 = and i32 %17, %5
  %19 = tail call i32 @llvm.cttz.i32(i32 %5, i1 true) #6, !range !10
  %20 = lshr i32 %18, %19
  br label %21

21:                                               ; preds = %7, %2
  %22 = phi i32 [ %20, %7 ], [ -22, %2 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_clear_all_prev_pwrst(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 20
  %5 = load i8, ptr %4, align 1
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %7 = sext i16 %3 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = zext i8 %5 to i32
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !8
  %12 = or i32 %11, 50331648
  %13 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %14 = getelementptr i8, ptr %13, i32 %7
  %15 = getelementptr i8, ptr %14, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #6, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_set_lowpwrstchange(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 19
  %5 = load i8, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %7 = sext i16 %3 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = zext i8 %5 to i32
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !8
  %12 = or i32 %11, 16
  %13 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %14 = getelementptr i8, ptr %13, i32 %7
  %15 = getelementptr i8, ptr %14, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #6, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_wait_transition(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 20
  %4 = load i16, ptr %2, align 4
  %5 = load i8, ptr %3, align 1
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %7 = sext i16 %4 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = zext i8 %5 to i32
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !8
  %12 = and i32 %11, 1048576
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %17, %1
  %15 = phi i32 [ %18, %17 ], [ 0, %1 ]
  %16 = icmp eq i32 %15, 100000
  br i1 %16, label %30, label %17

17:                                               ; preds = %14
  %18 = add nuw nsw i32 %15, 1
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #6
  %20 = load i16, ptr %2, align 4
  %21 = load i8, ptr %3, align 1
  %22 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %23 = sext i16 %20 to i32
  %24 = getelementptr i8, ptr %22, i32 %23
  %25 = zext i8 %21 to i32
  %26 = getelementptr i8, ptr %24, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !8
  %28 = and i32 %27, 1048576
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %14

30:                                               ; preds = %14
  %31 = load ptr, ptr %0, align 4
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %31) #7
  br label %33

33:                                               ; preds = %30, %17, %1
  %34 = phi i32 [ -11, %30 ], [ 0, %1 ], [ 0, %17 ]
  ret i32 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @am33xx_check_vcvp() #1 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @am33xx_pwrdm_save_context(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 19
  %5 = load i8, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %7 = sext i16 %3 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = zext i8 %5 to i32
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !8
  %12 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 26
  %13 = and i32 %11, -17
  store i32 %13, ptr %12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @am33xx_pwrdm_restore_context(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 20
  %5 = load i8, ptr %4, align 1
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %7 = sext i16 %3 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = zext i8 %5 to i32
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !8
  %12 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 26
  %13 = load i32, ptr %12, align 4
  %14 = load i16, ptr %2, align 4
  %15 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 19
  %16 = load i8, ptr %15, align 4
  %17 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %18 = sext i16 %14 to i32
  %19 = getelementptr i8, ptr %17, i32 %18
  %20 = zext i8 %16 to i32
  %21 = getelementptr i8, ptr %19, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %13) #6, !srcloc !9
  %22 = load i32, ptr %12, align 4
  %23 = xor i32 %22, %11
  %24 = and i32 %23, 3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %1
  %27 = load i16, ptr %2, align 4
  %28 = load i8, ptr %4, align 1
  %29 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %30 = sext i16 %27 to i32
  %31 = getelementptr i8, ptr %29, i32 %30
  %32 = zext i8 %28 to i32
  %33 = getelementptr i8, ptr %31, i32 %32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #6, !srcloc !8
  %35 = and i32 %34, 1048576
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %40, %26
  %38 = phi i32 [ %41, %40 ], [ 0, %26 ]
  %39 = icmp eq i32 %38, 100000
  br i1 %39, label %53, label %40

40:                                               ; preds = %37
  %41 = add nuw nsw i32 %38, 1
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #6
  %43 = load i16, ptr %2, align 4
  %44 = load i8, ptr %4, align 1
  %45 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %46 = sext i16 %43 to i32
  %47 = getelementptr i8, ptr %45, i32 %46
  %48 = zext i8 %44 to i32
  %49 = getelementptr i8, ptr %47, i32 %48
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #6, !srcloc !8
  %51 = and i32 %50, 1048576
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %37

53:                                               ; preds = %37
  %54 = load ptr, ptr %0, align 4
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %54) #7
  br label %56

56:                                               ; preds = %53, %40, %26, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @am33xx_prm_init(ptr nocapture noundef readnone %0) local_unnamed_addr #2 section ".init.text" {
  %2 = tail call i32 @prm_register(ptr noundef nonnull @am33xx_prm_ll_data) #6
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prm_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @am33xx_prm_exit() #2 section ".exit.text" {
  %1 = tail call i32 @prm_unregister(ptr noundef nonnull @am33xx_prm_ll_data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prm_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_prm_assert_hardreset(i8 noundef zeroext %0, i8 noundef zeroext %1, i16 noundef signext %2, i16 noundef zeroext %3) #0 {
  %5 = zext i8 %0 to i32
  %6 = shl nuw i32 1, %5
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %8 = sext i16 %2 to i32
  %9 = getelementptr i8, ptr %7, i32 %8
  %10 = zext i16 %3 to i32
  %11 = getelementptr i8, ptr %9, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !8
  %13 = or i32 %12, %6
  %14 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %15 = getelementptr i8, ptr %14, i32 %8
  %16 = getelementptr i8, ptr %15, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #6, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_prm_deassert_hardreset(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef signext %3, i16 noundef zeroext %4, i16 noundef zeroext %5) #0 {
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %8 = sext i16 %3 to i32
  %9 = getelementptr i8, ptr %7, i32 %8
  %10 = zext i16 %4 to i32
  %11 = getelementptr i8, ptr %9, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !8
  %13 = zext i8 %0 to i32
  %14 = shl nuw i32 1, %13
  %15 = and i32 %12, %14
  %16 = lshr i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %54, label %18

18:                                               ; preds = %6
  %19 = zext i8 %1 to i32
  %20 = shl nuw i32 1, %19
  %21 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %22 = getelementptr i8, ptr %21, i32 %8
  %23 = zext i16 %5 to i32
  %24 = getelementptr i8, ptr %22, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6, !srcloc !8
  %26 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %27 = getelementptr i8, ptr %26, i32 %8
  %28 = getelementptr i8, ptr %27, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %20) #6, !srcloc !9
  %29 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %30 = getelementptr i8, ptr %29, i32 %8
  %31 = getelementptr i8, ptr %30, i32 %10
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !8
  %33 = xor i32 %14, -1
  %34 = and i32 %32, %33
  %35 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %36 = getelementptr i8, ptr %35, i32 %8
  %37 = getelementptr i8, ptr %36, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %34) #6, !srcloc !9
  br label %38

38:                                               ; preds = %47, %18
  %39 = phi i32 [ 0, %18 ], [ %49, %47 ]
  %40 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %41 = getelementptr i8, ptr %40, i32 %8
  %42 = getelementptr i8, ptr %41, i32 %23
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #6, !srcloc !8
  %44 = and i32 %43, %20
  %45 = lshr i32 %44, %19
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #6
  %49 = add nuw nsw i32 %39, 1
  %50 = icmp eq i32 %49, 10000
  br i1 %50, label %53, label %38

51:                                               ; preds = %38
  %52 = icmp eq i32 %39, 10000
  br i1 %52, label %53, label %54

53:                                               ; preds = %51, %47
  br label %54

54:                                               ; preds = %53, %51, %6
  %55 = phi i32 [ -17, %6 ], [ -16, %53 ], [ 0, %51 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_prm_is_hardreset_asserted(i8 noundef zeroext %0, i8 noundef zeroext %1, i16 noundef signext %2, i16 noundef zeroext %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %6 = sext i16 %2 to i32
  %7 = getelementptr i8, ptr %5, i32 %6
  %8 = zext i16 %3 to i32
  %9 = getelementptr i8, ptr %7, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !8
  %11 = zext i8 %0 to i32
  %12 = shl nuw i32 1, %11
  %13 = and i32 %10, %12
  %14 = lshr i32 %13, %11
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @am33xx_prm_global_warm_sw_reset() #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %2 = getelementptr i8, ptr %1, i32 3840
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !8
  %4 = or i32 %3, 1
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %6 = getelementptr i8, ptr %5, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #6, !srcloc !9
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %8 = getelementptr i8, ptr %7, i32 3840
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !8
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i64 956510}
!9 = !{i64 956092}
!10 = !{i32 0, i32 33}
