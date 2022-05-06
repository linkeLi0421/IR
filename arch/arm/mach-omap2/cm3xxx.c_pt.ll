; ModuleID = '/llk/IR/arch/arm/mach-omap2/cm3xxx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/cm3xxx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clkdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap3_cm_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.cm_ll_data = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clockdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.powerdomain = type { ptr, %union.anon.0, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32 }
%union.anon.0 = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.clkdm_dep = type { ptr, ptr, i16, i16 }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }

@omap3_clkdm_operations = dso_local local_unnamed_addr global %struct.clkdm_ops { ptr @omap2_clkdm_add_wkdep, ptr @omap2_clkdm_del_wkdep, ptr @omap2_clkdm_read_wkdep, ptr @omap2_clkdm_clear_all_wkdeps, ptr @omap3xxx_clkdm_add_sleepdep, ptr @omap3xxx_clkdm_del_sleepdep, ptr @omap3xxx_clkdm_read_sleepdep, ptr @omap3xxx_clkdm_clear_all_sleepdeps, ptr @omap3xxx_clkdm_sleep, ptr @omap3xxx_clkdm_wakeup, ptr @omap3xxx_clkdm_allow_idle, ptr @omap3xxx_clkdm_deny_idle, ptr @omap3xxx_clkdm_clk_enable, ptr @omap3xxx_clkdm_clk_disable, ptr null, ptr null }, align 4
@cm_context = internal unnamed_addr global %struct.omap3_cm_regs zeroinitializer, align 4
@cm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@omap3xxx_cm_ll_data = internal constant %struct.cm_ll_data { ptr @omap3xxx_cm_split_idlest_reg, ptr @omap3xxx_cm_wait_module_ready, ptr null, ptr null, ptr null, ptr null }, align 4
@__exitcall_omap3xxx_cm_exit = internal global ptr @omap3xxx_cm_exit, section ".exitcall.exit", align 4
@omap3xxx_cm_idlest_offs = internal unnamed_addr constant [3 x i8] c" $(", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__exitcall_omap3xxx_cm_exit, ptr @omap3xxx_cm_exit], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clkdm_add_wkdep(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clkdm_del_wkdep(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clkdm_read_wkdep(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clkdm_clear_all_wkdeps(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3xxx_clkdm_add_sleepdep(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.clockdomain, ptr %1, i32 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 1, %5
  %7 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.powerdomain, ptr %8, i32 0, i32 2
  %10 = load i16, ptr %9, align 4
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %12 = sext i16 %10 to i32
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = getelementptr i8, ptr %13, i32 68
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  %16 = or i32 %15, %6
  %17 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %18 = getelementptr i8, ptr %17, i32 %12
  %19 = getelementptr i8, ptr %18, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3xxx_clkdm_del_sleepdep(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.clockdomain, ptr %1, i32 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 1, %5
  %7 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.powerdomain, ptr %8, i32 0, i32 2
  %10 = load i16, ptr %9, align 4
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %12 = sext i16 %10 to i32
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = getelementptr i8, ptr %13, i32 68
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  %16 = xor i32 %6, -1
  %17 = and i32 %15, %16
  %18 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %19 = getelementptr i8, ptr %18, i32 %12
  %20 = getelementptr i8, ptr %19, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %17) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3xxx_clkdm_read_sleepdep(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.powerdomain, ptr %4, i32 0, i32 2
  %6 = load i16, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clockdomain, ptr %1, i32 0, i32 5
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 1, %9
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %12 = sext i16 %6 to i32
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = getelementptr i8, ptr %13, i32 68
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  %16 = and i32 %15, %10
  %17 = lshr i32 %16, %9
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3xxx_clkdm_clear_all_sleepdeps(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 10
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
  %20 = getelementptr inbounds %struct.clkdm_dep, ptr %7, i32 0, i32 3
  store i16 0, ptr %20, align 2
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
  %31 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %32 = sext i16 %30 to i32
  %33 = getelementptr i8, ptr %31, i32 %32
  %34 = getelementptr i8, ptr %33, i32 68
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !8
  %36 = xor i32 %26, -1
  %37 = and i32 %35, %36
  %38 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %39 = getelementptr i8, ptr %38, i32 %32
  %40 = getelementptr i8, ptr %39, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %37) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3xxx_clkdm_sleep(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %3, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 2
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %10 = sext i16 %5 to i32
  %11 = getelementptr i8, ptr %9, i32 %10
  %12 = getelementptr i8, ptr %11, i32 72
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  %14 = xor i32 %8, -1
  %15 = and i32 %13, %14
  %16 = tail call i32 @llvm.cttz.i32(i32 %8, i1 false) #5, !range !10
  %17 = shl nuw i32 1, %16
  %18 = or i32 %15, %17
  %19 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %20 = getelementptr i8, ptr %19, i32 %10
  %21 = getelementptr i8, ptr %20, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %18) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3xxx_clkdm_wakeup(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %3, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 2
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %10 = sext i16 %5 to i32
  %11 = getelementptr i8, ptr %9, i32 %10
  %12 = getelementptr i8, ptr %11, i32 72
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  %14 = xor i32 %8, -1
  %15 = and i32 %13, %14
  %16 = tail call i32 @llvm.cttz.i32(i32 %8, i1 false) #5, !range !10
  %17 = shl i32 2, %16
  %18 = or i32 %15, %17
  %19 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %20 = getelementptr i8, ptr %19, i32 %10
  %21 = getelementptr i8, ptr %20, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %18) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap3xxx_clkdm_allow_idle(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @clkdm_add_autodeps(ptr noundef %0) #5
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.powerdomain, ptr %8, i32 0, i32 2
  %10 = load i16, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 2
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %15 = sext i16 %10 to i32
  %16 = getelementptr i8, ptr %14, i32 %15
  %17 = getelementptr i8, ptr %16, i32 72
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !8
  %19 = xor i32 %13, -1
  %20 = and i32 %18, %19
  %21 = tail call i32 @llvm.cttz.i32(i32 %13, i1 false) #5, !range !10
  %22 = shl i32 3, %21
  %23 = or i32 %20, %22
  %24 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %25 = getelementptr i8, ptr %24, i32 %15
  %26 = getelementptr i8, ptr %25, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %23) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap3xxx_clkdm_deny_idle(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %3, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 2
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %10 = sext i16 %5 to i32
  %11 = getelementptr i8, ptr %9, i32 %10
  %12 = getelementptr i8, ptr %11, i32 72
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  %14 = xor i32 %8, -1
  %15 = and i32 %13, %14
  %16 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %17 = getelementptr i8, ptr %16, i32 %10
  %18 = getelementptr i8, ptr %17, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #5, !srcloc !9
  %19 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  tail call void @clkdm_del_autodeps(ptr noundef %0) #5
  br label %23

23:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3xxx_clkdm_clk_enable(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %91, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 2
  %8 = and i8 %7, 66
  %9 = icmp eq i8 %8, 66
  %10 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.powerdomain, ptr %11, i32 0, i32 2
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %3 to i32
  %15 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %16 = sext i16 %13 to i32
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = getelementptr i8, ptr %17, i32 72
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5
  br i1 %9, label %20, label %29

20:                                               ; preds = %5
  %21 = xor i32 %14, -1
  %22 = and i32 %19, %21
  %23 = tail call i32 @llvm.cttz.i32(i32 %14, i1 true) #5, !range !10
  %24 = shl i32 2, %23
  %25 = or i32 %22, %24
  %26 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %27 = getelementptr i8, ptr %26, i32 %16
  %28 = getelementptr i8, ptr %27, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %25) #5, !srcloc !9
  br label %91

29:                                               ; preds = %5
  %30 = and i32 %19, %14
  %31 = tail call i32 @llvm.cttz.i32(i32 %14, i1 true) #5, !range !10
  %32 = lshr i32 %30, %31
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %68

34:                                               ; preds = %29
  %35 = load ptr, ptr %10, align 4
  %36 = getelementptr inbounds %struct.powerdomain, ptr %35, i32 0, i32 2
  %37 = load i16, ptr %36, align 4
  %38 = load i16, ptr %2, align 4
  %39 = zext i16 %38 to i32
  %40 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %41 = sext i16 %37 to i32
  %42 = getelementptr i8, ptr %40, i32 %41
  %43 = getelementptr i8, ptr %42, i32 72
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #5, !srcloc !8
  %45 = xor i32 %39, -1
  %46 = and i32 %44, %45
  %47 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %48 = getelementptr i8, ptr %47, i32 %41
  %49 = getelementptr i8, ptr %48, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %46) #5, !srcloc !9
  tail call void @clkdm_add_autodeps(ptr noundef %0) #5
  %50 = load ptr, ptr %10, align 4
  %51 = getelementptr inbounds %struct.powerdomain, ptr %50, i32 0, i32 2
  %52 = load i16, ptr %51, align 4
  %53 = load i16, ptr %2, align 4
  %54 = zext i16 %53 to i32
  %55 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %56 = sext i16 %52 to i32
  %57 = getelementptr i8, ptr %55, i32 %56
  %58 = getelementptr i8, ptr %57, i32 72
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #5, !srcloc !8
  %60 = xor i32 %54, -1
  %61 = and i32 %59, %60
  %62 = tail call i32 @llvm.cttz.i32(i32 %54, i1 false) #5, !range !10
  %63 = shl i32 3, %62
  %64 = or i32 %61, %63
  %65 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %66 = getelementptr i8, ptr %65, i32 %56
  %67 = getelementptr i8, ptr %66, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %64) #5, !srcloc !9
  br label %91

68:                                               ; preds = %29
  %69 = load i8, ptr %6, align 2
  %70 = and i8 %69, 2
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %91, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %10, align 4
  %74 = getelementptr inbounds %struct.powerdomain, ptr %73, i32 0, i32 2
  %75 = load i16, ptr %74, align 4
  %76 = load i16, ptr %2, align 4
  %77 = zext i16 %76 to i32
  %78 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %79 = sext i16 %75 to i32
  %80 = getelementptr i8, ptr %78, i32 %79
  %81 = getelementptr i8, ptr %80, i32 72
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #5, !srcloc !8
  %83 = xor i32 %77, -1
  %84 = and i32 %82, %83
  %85 = tail call i32 @llvm.cttz.i32(i32 %77, i1 false) #5, !range !10
  %86 = shl i32 2, %85
  %87 = or i32 %84, %86
  %88 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %89 = getelementptr i8, ptr %88, i32 %79
  %90 = getelementptr i8, ptr %89, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %87) #5, !srcloc !9
  br label %91

91:                                               ; preds = %72, %68, %34, %20, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3xxx_clkdm_clk_disable(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %91, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 2
  %8 = and i8 %7, 65
  %9 = icmp eq i8 %8, 64
  %10 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.powerdomain, ptr %11, i32 0, i32 2
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %3 to i32
  %15 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %16 = sext i16 %13 to i32
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = getelementptr i8, ptr %17, i32 72
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5
  br i1 %9, label %20, label %29

20:                                               ; preds = %5
  %21 = xor i32 %14, -1
  %22 = and i32 %19, %21
  %23 = tail call i32 @llvm.cttz.i32(i32 %14, i1 true) #5, !range !10
  %24 = shl i32 3, %23
  %25 = or i32 %22, %24
  %26 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %27 = getelementptr i8, ptr %26, i32 %16
  %28 = getelementptr i8, ptr %27, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %25) #5, !srcloc !9
  br label %91

29:                                               ; preds = %5
  %30 = and i32 %19, %14
  %31 = tail call i32 @llvm.cttz.i32(i32 %14, i1 true) #5, !range !10
  %32 = lshr i32 %30, %31
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %68

34:                                               ; preds = %29
  %35 = load ptr, ptr %10, align 4
  %36 = getelementptr inbounds %struct.powerdomain, ptr %35, i32 0, i32 2
  %37 = load i16, ptr %36, align 4
  %38 = load i16, ptr %2, align 4
  %39 = zext i16 %38 to i32
  %40 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %41 = sext i16 %37 to i32
  %42 = getelementptr i8, ptr %40, i32 %41
  %43 = getelementptr i8, ptr %42, i32 72
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #5, !srcloc !8
  %45 = xor i32 %39, -1
  %46 = and i32 %44, %45
  %47 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %48 = getelementptr i8, ptr %47, i32 %41
  %49 = getelementptr i8, ptr %48, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %46) #5, !srcloc !9
  tail call void @clkdm_del_autodeps(ptr noundef %0) #5
  %50 = load ptr, ptr %10, align 4
  %51 = getelementptr inbounds %struct.powerdomain, ptr %50, i32 0, i32 2
  %52 = load i16, ptr %51, align 4
  %53 = load i16, ptr %2, align 4
  %54 = zext i16 %53 to i32
  %55 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %56 = sext i16 %52 to i32
  %57 = getelementptr i8, ptr %55, i32 %56
  %58 = getelementptr i8, ptr %57, i32 72
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #5, !srcloc !8
  %60 = xor i32 %54, -1
  %61 = and i32 %59, %60
  %62 = tail call i32 @llvm.cttz.i32(i32 %54, i1 false) #5, !range !10
  %63 = shl i32 3, %62
  %64 = or i32 %61, %63
  %65 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %66 = getelementptr i8, ptr %65, i32 %56
  %67 = getelementptr i8, ptr %66, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %64) #5, !srcloc !9
  br label %91

68:                                               ; preds = %29
  %69 = load i8, ptr %6, align 2
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %91, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %10, align 4
  %74 = getelementptr inbounds %struct.powerdomain, ptr %73, i32 0, i32 2
  %75 = load i16, ptr %74, align 4
  %76 = load i16, ptr %2, align 4
  %77 = zext i16 %76 to i32
  %78 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %79 = sext i16 %75 to i32
  %80 = getelementptr i8, ptr %78, i32 %79
  %81 = getelementptr i8, ptr %80, i32 72
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #5, !srcloc !8
  %83 = xor i32 %77, -1
  %84 = and i32 %82, %83
  %85 = tail call i32 @llvm.cttz.i32(i32 %77, i1 false) #5, !range !10
  %86 = shl nuw i32 1, %85
  %87 = or i32 %84, %86
  %88 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %89 = getelementptr i8, ptr %88, i32 %79
  %90 = getelementptr i8, ptr %89, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %87) #5, !srcloc !9
  br label %91

91:                                               ; preds = %72, %68, %34, %20, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3_cm_save_context() local_unnamed_addr #1 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %2 = getelementptr i8, ptr %1, i32 -1984
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !8
  store i32 %3, ptr @cm_context, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %5 = getelementptr i8, ptr %4, i32 -1980
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  store i32 %6, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 1), align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  store i32 %9, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 2), align 4
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %11 = getelementptr i8, ptr %10, i32 832
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  store i32 %12, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 3), align 4
  %13 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %14 = getelementptr i8, ptr %13, i32 1600
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  store i32 %15, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 4), align 4
  %16 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %17 = getelementptr i8, ptr %16, i32 1856
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !8
  store i32 %18, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 5), align 4
  %19 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %20 = getelementptr i8, ptr %19, i32 2112
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !8
  store i32 %21, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 6), align 4
  %22 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %23 = getelementptr i8, ptr %22, i32 2368
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !8
  store i32 %24, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 7), align 4
  %25 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %26 = getelementptr i8, ptr %25, i32 2376
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !8
  store i32 %27, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 8), align 4
  %28 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %29 = getelementptr i8, ptr %28, i32 1328
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !8
  store i32 %30, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 9), align 4
  %31 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %32 = getelementptr i8, ptr %31, i32 1332
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !8
  store i32 %33, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 10), align 4
  %34 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %35 = getelementptr i8, ptr %34, i32 1356
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #5, !srcloc !8
  store i32 %36, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 11), align 4
  %37 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %38 = getelementptr i8, ptr %37, i32 1360
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !8
  store i32 %39, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 12), align 4
  %40 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %41 = getelementptr i8, ptr %40, i32 1284
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #5, !srcloc !8
  store i32 %42, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 13), align 4
  %43 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %44 = getelementptr i8, ptr %43, i32 156
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #5, !srcloc !8
  store i32 %45, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 14), align 4
  %46 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %47 = getelementptr i8, ptr %46, i32 -2048
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #5, !srcloc !8
  store i32 %48, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 15), align 4
  %49 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %50 = getelementptr i8, ptr %49, i32 -2044
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #5, !srcloc !8
  store i32 %51, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 16), align 4
  %52 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %53 = getelementptr i8, ptr %52, i32 512
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #5, !srcloc !8
  store i32 %54, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 17), align 4
  %55 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %56 = getelementptr i8, ptr %55, i32 520
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #5, !srcloc !8
  store i32 %57, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 18), align 4
  %58 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %59 = getelementptr i8, ptr %58, i32 768
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #5, !srcloc !8
  store i32 %60, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 19), align 4
  %61 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %62 = getelementptr i8, ptr %61, i32 1024
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #5, !srcloc !8
  store i32 %63, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 20), align 4
  %64 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %65 = getelementptr i8, ptr %64, i32 1536
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #5, !srcloc !8
  store i32 %66, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 21), align 4
  %67 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %68 = getelementptr i8, ptr %67, i32 1792
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #5, !srcloc !8
  store i32 %69, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 22), align 4
  %70 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %71 = getelementptr i8, ptr %70, i32 2048
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #5, !srcloc !8
  store i32 %72, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 23), align 4
  %73 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %74 = getelementptr i8, ptr %73, i32 3072
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #5, !srcloc !8
  store i32 %75, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 24), align 4
  %76 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %77 = getelementptr i8, ptr %76, i32 528
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #5, !srcloc !8
  store i32 %78, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 25), align 4
  %79 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %80 = getelementptr i8, ptr %79, i32 532
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #5, !srcloc !8
  store i32 %81, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 26), align 4
  %82 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %83 = getelementptr i8, ptr %82, i32 536
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #5, !srcloc !8
  store i32 %84, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 27), align 4
  %85 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %86 = getelementptr i8, ptr %85, i32 784
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #5, !srcloc !8
  store i32 %87, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 28), align 4
  %88 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %89 = getelementptr i8, ptr %88, i32 1040
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #5, !srcloc !8
  store i32 %90, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 29), align 4
  %91 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %92 = getelementptr i8, ptr %91, i32 1552
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #5, !srcloc !8
  store i32 %93, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 30), align 4
  %94 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %95 = getelementptr i8, ptr %94, i32 1808
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #5, !srcloc !8
  store i32 %96, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 31), align 4
  %97 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %98 = getelementptr i8, ptr %97, i32 2064
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #5, !srcloc !8
  store i32 %99, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 32), align 4
  %100 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %101 = getelementptr i8, ptr %100, i32 3088
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #5, !srcloc !8
  store i32 %102, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 33), align 4
  %103 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %104 = getelementptr i8, ptr %103, i32 -1996
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #5, !srcloc !8
  store i32 %105, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 34), align 4
  %106 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %107 = getelementptr i8, ptr %106, i32 308
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #5, !srcloc !8
  store i32 %108, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 35), align 4
  %109 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %110 = getelementptr i8, ptr %109, i32 -1976
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #5, !srcloc !8
  store i32 %111, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 36), align 4
  %112 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %113 = getelementptr i8, ptr %112, i32 328
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #5, !srcloc !8
  store i32 %114, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 37), align 4
  %115 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %116 = getelementptr i8, ptr %115, i32 584
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #5, !srcloc !8
  store i32 %117, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 38), align 4
  %118 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %119 = getelementptr i8, ptr %118, i32 840
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #5, !srcloc !8
  store i32 %120, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 39), align 4
  %121 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %122 = getelementptr i8, ptr %121, i32 1608
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #5, !srcloc !8
  store i32 %123, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 40), align 4
  %124 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %125 = getelementptr i8, ptr %124, i32 1864
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #5, !srcloc !8
  store i32 %126, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 41), align 4
  %127 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %128 = getelementptr i8, ptr %127, i32 2120
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #5, !srcloc !8
  store i32 %129, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 42), align 4
  %130 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %131 = getelementptr i8, ptr %130, i32 2888
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #5, !srcloc !8
  store i32 %132, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 43), align 4
  %133 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %134 = getelementptr i8, ptr %133, i32 3144
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #5, !srcloc !8
  store i32 %135, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 44), align 4
  %136 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %137 = getelementptr i8, ptr %136, i32 560
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #5, !srcloc !8
  store i32 %138, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 45), align 4
  %139 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %140 = getelementptr i8, ptr %139, i32 564
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #5, !srcloc !8
  store i32 %141, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 46), align 4
  %142 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %143 = getelementptr i8, ptr %142, i32 568
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #5, !srcloc !8
  store i32 %144, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 47), align 4
  %145 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %146 = getelementptr i8, ptr %145, i32 1072
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #5, !srcloc !8
  store i32 %147, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 48), align 4
  %148 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %149 = getelementptr i8, ptr %148, i32 1584
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #5, !srcloc !8
  store i32 %150, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 49), align 4
  %151 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %152 = getelementptr i8, ptr %151, i32 1840
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #5, !srcloc !8
  store i32 %153, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 50), align 4
  %154 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %155 = getelementptr i8, ptr %154, i32 2096
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #5, !srcloc !8
  store i32 %156, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 51), align 4
  %157 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %158 = getelementptr i8, ptr %157, i32 3120
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #5, !srcloc !8
  store i32 %159, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 52), align 4
  %160 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %161 = getelementptr i8, ptr %160, i32 836
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #5, !srcloc !8
  store i32 %162, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 53), align 4
  %163 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %164 = getelementptr i8, ptr %163, i32 1604
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #5, !srcloc !8
  store i32 %165, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 54), align 4
  %166 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %167 = getelementptr i8, ptr %166, i32 1860
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #5, !srcloc !8
  store i32 %168, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 55), align 4
  %169 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %170 = getelementptr i8, ptr %169, i32 2116
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #5, !srcloc !8
  store i32 %171, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 56), align 4
  %172 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %173 = getelementptr i8, ptr %172, i32 3140
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #5, !srcloc !8
  store i32 %174, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 57), align 4
  %175 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %176 = getelementptr i8, ptr %175, i32 1392
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %176) #5, !srcloc !8
  store i32 %177, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 58), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3_cm_restore_context() local_unnamed_addr #1 {
  %1 = load i32, ptr @cm_context, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %3 = getelementptr i8, ptr %2, i32 -1984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %1) #5, !srcloc !9
  %4 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 1), align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %6 = getelementptr i8, ptr %5, i32 -1980
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #5, !srcloc !9
  %7 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 2), align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %9 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #5, !srcloc !9
  %10 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 3), align 4
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %12 = getelementptr i8, ptr %11, i32 832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !9
  %13 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 4), align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %15 = getelementptr i8, ptr %14, i32 1600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #5, !srcloc !9
  %16 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 5), align 4
  %17 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %18 = getelementptr i8, ptr %17, i32 1856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #5, !srcloc !9
  %19 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 6), align 4
  %20 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %21 = getelementptr i8, ptr %20, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #5, !srcloc !9
  %22 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 7), align 4
  %23 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %24 = getelementptr i8, ptr %23, i32 2368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #5, !srcloc !9
  %25 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 8), align 4
  %26 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %27 = getelementptr i8, ptr %26, i32 2376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #5, !srcloc !9
  %28 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 9), align 4
  %29 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %30 = getelementptr i8, ptr %29, i32 1328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #5, !srcloc !9
  %31 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 10), align 4
  %32 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %33 = getelementptr i8, ptr %32, i32 1332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #5, !srcloc !9
  %34 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 11), align 4
  %35 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %36 = getelementptr i8, ptr %35, i32 1356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #5, !srcloc !9
  %37 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 12), align 4
  %38 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %39 = getelementptr i8, ptr %38, i32 1360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #5, !srcloc !9
  %40 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 13), align 4
  %41 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %42 = getelementptr i8, ptr %41, i32 1284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #5, !srcloc !9
  %43 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 14), align 4
  %44 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %45 = getelementptr i8, ptr %44, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #5, !srcloc !9
  %46 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 15), align 4
  %47 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %48 = getelementptr i8, ptr %47, i32 -2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #5, !srcloc !9
  %49 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 16), align 4
  %50 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %51 = getelementptr i8, ptr %50, i32 -2044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #5, !srcloc !9
  %52 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 17), align 4
  %53 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %54 = getelementptr i8, ptr %53, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #5, !srcloc !9
  %55 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 18), align 4
  %56 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %57 = getelementptr i8, ptr %56, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #5, !srcloc !9
  %58 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 19), align 4
  %59 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %60 = getelementptr i8, ptr %59, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #5, !srcloc !9
  %61 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 20), align 4
  %62 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %63 = getelementptr i8, ptr %62, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #5, !srcloc !9
  %64 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 21), align 4
  %65 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %66 = getelementptr i8, ptr %65, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #5, !srcloc !9
  %67 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 22), align 4
  %68 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %69 = getelementptr i8, ptr %68, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #5, !srcloc !9
  %70 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 23), align 4
  %71 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %72 = getelementptr i8, ptr %71, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #5, !srcloc !9
  %73 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 24), align 4
  %74 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %75 = getelementptr i8, ptr %74, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #5, !srcloc !9
  %76 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 25), align 4
  %77 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %78 = getelementptr i8, ptr %77, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #5, !srcloc !9
  %79 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 26), align 4
  %80 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %81 = getelementptr i8, ptr %80, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #5, !srcloc !9
  %82 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 27), align 4
  %83 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %84 = getelementptr i8, ptr %83, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #5, !srcloc !9
  %85 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 28), align 4
  %86 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %87 = getelementptr i8, ptr %86, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #5, !srcloc !9
  %88 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 29), align 4
  %89 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %90 = getelementptr i8, ptr %89, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #5, !srcloc !9
  %91 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 30), align 4
  %92 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %93 = getelementptr i8, ptr %92, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %91) #5, !srcloc !9
  %94 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 31), align 4
  %95 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %96 = getelementptr i8, ptr %95, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #5, !srcloc !9
  %97 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 32), align 4
  %98 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %99 = getelementptr i8, ptr %98, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %97) #5, !srcloc !9
  %100 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 33), align 4
  %101 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %102 = getelementptr i8, ptr %101, i32 3088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #5, !srcloc !9
  %103 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 34), align 4
  %104 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %105 = getelementptr i8, ptr %104, i32 -1996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #5, !srcloc !9
  %106 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 35), align 4
  %107 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %108 = getelementptr i8, ptr %107, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #5, !srcloc !9
  %109 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 36), align 4
  %110 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %111 = getelementptr i8, ptr %110, i32 -1976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #5, !srcloc !9
  %112 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 37), align 4
  %113 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %114 = getelementptr i8, ptr %113, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #5, !srcloc !9
  %115 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 38), align 4
  %116 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %117 = getelementptr i8, ptr %116, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #5, !srcloc !9
  %118 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 39), align 4
  %119 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %120 = getelementptr i8, ptr %119, i32 840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #5, !srcloc !9
  %121 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 40), align 4
  %122 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %123 = getelementptr i8, ptr %122, i32 1608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %121) #5, !srcloc !9
  %124 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 41), align 4
  %125 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %126 = getelementptr i8, ptr %125, i32 1864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %124) #5, !srcloc !9
  %127 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 42), align 4
  %128 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %129 = getelementptr i8, ptr %128, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %127) #5, !srcloc !9
  %130 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 43), align 4
  %131 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %132 = getelementptr i8, ptr %131, i32 2888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #5, !srcloc !9
  %133 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 44), align 4
  %134 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %135 = getelementptr i8, ptr %134, i32 3144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %133) #5, !srcloc !9
  %136 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 45), align 4
  %137 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %138 = getelementptr i8, ptr %137, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #5, !srcloc !9
  %139 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 46), align 4
  %140 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %141 = getelementptr i8, ptr %140, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %139) #5, !srcloc !9
  %142 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 47), align 4
  %143 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %144 = getelementptr i8, ptr %143, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %142) #5, !srcloc !9
  %145 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 48), align 4
  %146 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %147 = getelementptr i8, ptr %146, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %145) #5, !srcloc !9
  %148 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 49), align 4
  %149 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %150 = getelementptr i8, ptr %149, i32 1584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %148) #5, !srcloc !9
  %151 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 50), align 4
  %152 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %153 = getelementptr i8, ptr %152, i32 1840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %151) #5, !srcloc !9
  %154 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 51), align 4
  %155 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %156 = getelementptr i8, ptr %155, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %154) #5, !srcloc !9
  %157 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 52), align 4
  %158 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %159 = getelementptr i8, ptr %158, i32 3120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 %157) #5, !srcloc !9
  %160 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 53), align 4
  %161 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %162 = getelementptr i8, ptr %161, i32 836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %160) #5, !srcloc !9
  %163 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 54), align 4
  %164 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %165 = getelementptr i8, ptr %164, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %163) #5, !srcloc !9
  %166 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 55), align 4
  %167 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %168 = getelementptr i8, ptr %167, i32 1860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 %166) #5, !srcloc !9
  %169 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 56), align 4
  %170 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %171 = getelementptr i8, ptr %170, i32 2116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %169) #5, !srcloc !9
  %172 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 57), align 4
  %173 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %174 = getelementptr i8, ptr %173, i32 3140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %172) #5, !srcloc !9
  %175 = load i32, ptr getelementptr inbounds (%struct.omap3_cm_regs, ptr @cm_context, i32 0, i32 58), align 4
  %176 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %177 = getelementptr i8, ptr %176, i32 1392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %175) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3_cm_save_scratchpad_contents(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %3 = getelementptr i8, ptr %2, i32 576
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !8
  %5 = getelementptr i32, ptr %0, i32 1
  store i32 %4, ptr %0, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %7 = getelementptr i8, ptr %6, i32 1088
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  %9 = getelementptr i32, ptr %0, i32 2
  store i32 %8, ptr %5, align 4
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %11 = getelementptr i8, ptr %10, i32 1280
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  %13 = getelementptr i32, ptr %0, i32 3
  store i32 %12, ptr %9, align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %15 = getelementptr i8, ptr %14, i32 1328
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !8
  %17 = and i32 %16, -57
  %18 = getelementptr i32, ptr %0, i32 4
  store i32 %17, ptr %13, align 4
  %19 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %20 = getelementptr i8, ptr %19, i32 1344
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !8
  %22 = getelementptr i32, ptr %0, i32 5
  store i32 %21, ptr %18, align 4
  %23 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %24 = getelementptr i8, ptr %23, i32 1348
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !8
  %26 = getelementptr i32, ptr %0, i32 6
  store i32 %25, ptr %22, align 4
  %27 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %28 = getelementptr i8, ptr %27, i32 1352
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #5, !srcloc !8
  %30 = getelementptr i32, ptr %0, i32 7
  store i32 %29, ptr %26, align 4
  %31 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %32 = getelementptr i8, ptr %31, i32 260
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !8
  %34 = getelementptr i32, ptr %0, i32 8
  store i32 %33, ptr %30, align 4
  %35 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %36 = getelementptr i8, ptr %35, i32 308
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !8
  %38 = getelementptr i32, ptr %0, i32 9
  store i32 %37, ptr %34, align 4
  %39 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %40 = getelementptr i8, ptr %39, i32 320
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #5, !srcloc !8
  %42 = getelementptr i32, ptr %0, i32 10
  store i32 %41, ptr %38, align 4
  %43 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %44 = getelementptr i8, ptr %43, i32 324
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #5, !srcloc !8
  store i32 %45, ptr %42, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap3xxx_cm_init(ptr nocapture noundef readnone %0) local_unnamed_addr #2 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %3 = getelementptr i8, ptr %2, i32 -2048
  tail call void @omap2_clk_legacy_provider_init(i32 noundef 0, ptr noundef %3) #5
  %4 = tail call i32 @cm_register(ptr noundef nonnull @omap3xxx_cm_ll_data) #5
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clk_legacy_provider_init(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cm_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap3xxx_cm_exit() #2 section ".exit.text" {
  %1 = tail call i32 @cm_unregister(ptr noundef nonnull @omap3xxx_cm_ll_data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cm_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_add_autodeps(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_del_autodeps(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3xxx_cm_split_idlest_reg(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.clk_omap_reg, ptr %0, i32 0, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = trunc i16 %5 to i8
  switch i8 %6, label %13 [
    i8 32, label %9
    i8 36, label %7
    i8 40, label %8
  ]

7:                                                ; preds = %3
  br label %9

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8, %7, %3
  %10 = phi i8 [ 1, %3 ], [ 2, %7 ], [ 3, %8 ]
  store i8 %10, ptr %2, align 1
  %11 = load i16, ptr %4, align 4
  %12 = and i16 %11, -256
  store i16 %12, ptr %1, align 2
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i32 [ 0, %9 ], [ -22, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3xxx_cm_wait_module_ready(i8 noundef zeroext %0, i16 noundef signext %1, i16 noundef zeroext %2, i8 noundef zeroext %3) #1 {
  %5 = add i16 %2, -4
  %6 = icmp ult i16 %5, -3
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = zext i16 %2 to i32
  %9 = add nsw i32 %8, -1
  %10 = getelementptr [3 x i8], ptr @omap3xxx_cm_idlest_offs, i32 0, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %3 to i32
  %13 = shl nuw i32 1, %12
  %14 = sext i16 %1 to i32
  %15 = zext i8 %11 to i32
  br label %16

16:                                               ; preds = %24, %7
  %17 = phi i32 [ 0, %7 ], [ %26, %24 ]
  %18 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %19 = getelementptr i8, ptr %18, i32 %14
  %20 = getelementptr i8, ptr %19, i32 %15
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !8
  %22 = and i32 %21, %13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #5
  %26 = add nuw nsw i32 %17, 1
  %27 = icmp eq i32 %26, 2000
  br i1 %27, label %28, label %16

28:                                               ; preds = %24, %16, %4
  %29 = phi i32 [ -22, %4 ], [ -16, %24 ], [ 0, %16 ]
  ret i32 %29
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }

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
!8 = !{i64 2404168}
!9 = !{i64 2403750}
!10 = !{i32 0, i32 33}
