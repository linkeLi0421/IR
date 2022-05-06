; ModuleID = '/llk/IR/arch/arm/mach-omap2/cm33xx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/cm33xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clkdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cm_ll_data = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clockdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }

@am33xx_clkdm_operations = dso_local local_unnamed_addr global %struct.clkdm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @am33xx_clkdm_sleep, ptr @am33xx_clkdm_wakeup, ptr @am33xx_clkdm_allow_idle, ptr @am33xx_clkdm_deny_idle, ptr @am33xx_clkdm_clk_enable, ptr @am33xx_clkdm_clk_disable, ptr @am33xx_clkdm_save_context, ptr @am33xx_clkdm_restore_context }, align 4
@am33xx_cm_ll_data = internal constant %struct.cm_ll_data { ptr null, ptr @am33xx_cm_wait_module_ready, ptr @am33xx_cm_wait_module_idle, ptr @am33xx_cm_module_enable, ptr @am33xx_cm_module_disable, ptr @am33xx_cm_xlate_clkctrl }, align 4
@__exitcall_am33xx_cm_exit = internal global ptr @am33xx_cm_exit, section ".exitcall.exit", align 4
@cm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__exitcall_am33xx_cm_exit, ptr @am33xx_cm_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_clkdm_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %3 = load i16, ptr %2, align 2
  %4 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %5 = load i16, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %7 = zext i16 %3 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = zext i16 %5 to i32
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  %12 = and i32 %11, -4
  %13 = or i32 %12, 1
  %14 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %15 = getelementptr i8, ptr %14, i32 %7
  %16 = getelementptr i8, ptr %15, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_clkdm_wakeup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %3 = load i16, ptr %2, align 2
  %4 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %5 = load i16, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %7 = zext i16 %3 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = zext i16 %5 to i32
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  %12 = and i32 %11, -4
  %13 = or i32 %12, 2
  %14 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %15 = getelementptr i8, ptr %14, i32 %7
  %16 = getelementptr i8, ptr %15, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @am33xx_clkdm_allow_idle(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %3 = load i16, ptr %2, align 2
  %4 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %5 = load i16, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %7 = zext i16 %3 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = zext i16 %5 to i32
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  %12 = or i32 %11, 3
  %13 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %14 = getelementptr i8, ptr %13, i32 %7
  %15 = getelementptr i8, ptr %14, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @am33xx_clkdm_deny_idle(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %3 = load i16, ptr %2, align 2
  %4 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %5 = load i16, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %7 = zext i16 %3 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = zext i16 %5 to i32
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  %12 = and i32 %11, -4
  %13 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %14 = getelementptr i8, ptr %13, i32 %7
  %15 = getelementptr i8, ptr %14, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_clkdm_clk_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 3
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %8 = load i16, ptr %7, align 2
  %9 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %10 = load i16, ptr %9, align 4
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %12 = zext i16 %8 to i32
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = zext i16 %10 to i32
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !8
  %17 = and i32 %16, -4
  %18 = or i32 %17, 2
  %19 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %20 = getelementptr i8, ptr %19, i32 %12
  %21 = getelementptr i8, ptr %20, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %18) #4, !srcloc !9
  br label %22

22:                                               ; preds = %6, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_clkdm_clk_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %3 = load i16, ptr %2, align 2
  %4 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %5 = load i16, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %7 = zext i16 %3 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = zext i16 %5 to i32
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  %12 = and i32 %11, 3
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %33, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 3
  %16 = load i8, ptr %15, align 2
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %14
  %20 = load i16, ptr %2, align 2
  %21 = load i16, ptr %4, align 4
  %22 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %23 = zext i16 %20 to i32
  %24 = getelementptr i8, ptr %22, i32 %23
  %25 = zext i16 %21 to i32
  %26 = getelementptr i8, ptr %24, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #4, !srcloc !8
  %28 = and i32 %27, -4
  %29 = or i32 %28, 1
  %30 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %31 = getelementptr i8, ptr %30, i32 %23
  %32 = getelementptr i8, ptr %31, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %29) #4, !srcloc !9
  br label %33

33:                                               ; preds = %19, %14, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_clkdm_save_context(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %3 = load i16, ptr %2, align 2
  %4 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %5 = load i16, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %7 = zext i16 %3 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = zext i16 %5 to i32
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  %12 = and i32 %11, 3
  %13 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 14
  store i32 %12, ptr %13, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_clkdm_restore_context(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 14
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %66 [
    i32 0, label %4
    i32 1, label %19
    i32 2, label %35
    i32 3, label %51
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %6 = load i16, ptr %5, align 2
  %7 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %8 = load i16, ptr %7, align 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %10 = zext i16 %6 to i32
  %11 = getelementptr i8, ptr %9, i32 %10
  %12 = zext i16 %8 to i32
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !8
  %15 = and i32 %14, -4
  %16 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %17 = getelementptr i8, ptr %16, i32 %10
  %18 = getelementptr i8, ptr %17, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #4, !srcloc !9
  br label %66

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %21 = load i16, ptr %20, align 2
  %22 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %23 = load i16, ptr %22, align 4
  %24 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %25 = zext i16 %21 to i32
  %26 = getelementptr i8, ptr %24, i32 %25
  %27 = zext i16 %23 to i32
  %28 = getelementptr i8, ptr %26, i32 %27
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #4, !srcloc !8
  %30 = and i32 %29, -4
  %31 = or i32 %30, 1
  %32 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %33 = getelementptr i8, ptr %32, i32 %25
  %34 = getelementptr i8, ptr %33, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #4, !srcloc !9
  br label %66

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %37 = load i16, ptr %36, align 2
  %38 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %39 = load i16, ptr %38, align 4
  %40 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %41 = zext i16 %37 to i32
  %42 = getelementptr i8, ptr %40, i32 %41
  %43 = zext i16 %39 to i32
  %44 = getelementptr i8, ptr %42, i32 %43
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #4, !srcloc !8
  %46 = and i32 %45, -4
  %47 = or i32 %46, 2
  %48 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %49 = getelementptr i8, ptr %48, i32 %41
  %50 = getelementptr i8, ptr %49, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %47) #4, !srcloc !9
  br label %66

51:                                               ; preds = %1
  %52 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %53 = load i16, ptr %52, align 2
  %54 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %55 = load i16, ptr %54, align 4
  %56 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %57 = zext i16 %53 to i32
  %58 = getelementptr i8, ptr %56, i32 %57
  %59 = zext i16 %55 to i32
  %60 = getelementptr i8, ptr %58, i32 %59
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #4, !srcloc !8
  %62 = or i32 %61, 3
  %63 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %64 = getelementptr i8, ptr %63, i32 %57
  %65 = getelementptr i8, ptr %64, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %62) #4, !srcloc !9
  br label %66

66:                                               ; preds = %51, %35, %19, %4, %1
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @am33xx_cm_init(ptr nocapture noundef readnone %0) local_unnamed_addr #1 section ".init.text" {
  %2 = tail call i32 @cm_register(ptr noundef nonnull @am33xx_cm_ll_data) #4
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cm_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @am33xx_cm_exit() #1 section ".exit.text" {
  %1 = tail call i32 @cm_unregister(ptr noundef nonnull @am33xx_cm_ll_data) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cm_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_cm_wait_module_ready(i8 noundef zeroext %0, i16 noundef signext %1, i16 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = zext i16 %1 to i32
  %6 = zext i16 %2 to i32
  br label %7

7:                                                ; preds = %15, %4
  %8 = phi i32 [ 0, %4 ], [ %17, %15 ]
  %9 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %10 = getelementptr i8, ptr %9, i32 %5
  %11 = getelementptr i8, ptr %10, i32 %6
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !8
  %13 = and i32 %12, 65536
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #4
  %17 = add nuw nsw i32 %8, 1
  %18 = icmp eq i32 %17, 2000
  br i1 %18, label %19, label %7

19:                                               ; preds = %15, %7
  %20 = phi i32 [ 0, %7 ], [ -16, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @am33xx_cm_wait_module_idle(i8 noundef zeroext %0, i16 noundef signext %1, i16 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = zext i16 %1 to i32
  %6 = zext i16 %2 to i32
  br label %7

7:                                                ; preds = %15, %4
  %8 = phi i32 [ 0, %4 ], [ %17, %15 ]
  %9 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %10 = getelementptr i8, ptr %9, i32 %5
  %11 = getelementptr i8, ptr %10, i32 %6
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !8
  %13 = and i32 %12, 196608
  %14 = icmp eq i32 %13, 196608
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #4
  %17 = add nuw nsw i32 %8, 1
  %18 = icmp eq i32 %17, 2000
  br i1 %18, label %19, label %7

19:                                               ; preds = %15, %7
  %20 = phi i32 [ 0, %7 ], [ -16, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @am33xx_cm_module_enable(i8 noundef zeroext %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %6 = zext i16 %2 to i32
  %7 = getelementptr i8, ptr %5, i32 %6
  %8 = zext i16 %3 to i32
  %9 = getelementptr i8, ptr %7, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !8
  %11 = and i32 %10, -4
  %12 = zext i8 %0 to i32
  %13 = or i32 %11, %12
  %14 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %15 = getelementptr i8, ptr %14, i32 %6
  %16 = getelementptr i8, ptr %15, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @am33xx_cm_module_disable(i8 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %5 = zext i16 %1 to i32
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = zext i16 %2 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !8
  %10 = and i32 %9, -4
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %12 = getelementptr i8, ptr %11, i32 %5
  %13 = getelementptr i8, ptr %12, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %10) #4, !srcloc !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @am33xx_cm_xlate_clkctrl(i8 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #3 {
  %4 = load i32, ptr @cm_base, align 4
  %5 = zext i16 %1 to i32
  %6 = zext i16 %2 to i32
  %7 = add nuw nsw i32 %6, %5
  %8 = add i32 %7, %4
  ret i32 %8
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 957217}
!9 = !{i64 956799}
