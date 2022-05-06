; ModuleID = '/llk/IR/arch/arm/mach-omap2/prm3xxx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/prm3xxx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pwrdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.prm_ll_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_prcm_irq_setup = type { i16, i16, i16, i8, i8, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.omap_prcm_irq = type { ptr, i32, i8 }
%struct.omap3_vp = type { i32 }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }

@omap3_pwrdm_operations = dso_local local_unnamed_addr global %struct.pwrdm_ops { ptr @omap3_pwrdm_set_next_pwrst, ptr @omap3_pwrdm_read_next_pwrst, ptr @omap3_pwrdm_read_pwrst, ptr @omap3_pwrdm_read_prev_pwrst, ptr @omap2_pwrdm_set_logic_retst, ptr @omap2_pwrdm_set_mem_onst, ptr @omap2_pwrdm_set_mem_retst, ptr @omap3_pwrdm_read_logic_pwrst, ptr @omap3_pwrdm_read_prev_logic_pwrst, ptr @omap3_pwrdm_read_logic_retst, ptr @omap2_pwrdm_read_mem_pwrst, ptr @omap3_pwrdm_read_prev_mem_pwrst, ptr @omap2_pwrdm_read_mem_retst, ptr @omap3_pwrdm_clear_all_prev_pwrst, ptr @omap3_pwrdm_enable_hdwr_sar, ptr @omap3_pwrdm_disable_hdwr_sar, ptr null, ptr @omap2_pwrdm_wait_transition, ptr null, ptr null, ptr null }, align 4
@prm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@prm_features = external dso_local local_unnamed_addr global i16, align 2
@omap3xxx_prm_ll_data = internal global %struct.prm_ll_data { ptr @omap3xxx_prm_read_reset_sources, ptr null, ptr null, ptr @omap3xxx_prm_late_init, ptr @omap2_prm_assert_hardreset, ptr @omap2_prm_deassert_hardreset, ptr @omap2_prm_is_hardreset_asserted, ptr @omap3xxx_prm_dpll3_reset, ptr @omap3xxx_prm_clear_mod_irqs, ptr @omap3_prm_vp_check_txdone, ptr @omap3_prm_vp_clear_txdone }, align 4
@__exitcall_omap3xxx_prm_exit = internal global ptr @omap3xxx_prm_exit, section ".exitcall.exit", align 4
@cm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@.str = private unnamed_addr constant [30 x i8] c"arch/arm/mach-omap2/prm3xxx.c\00", align 1
@omap_features = external dso_local local_unnamed_addr global i32, align 4
@omap3_prcm_irq_setup = internal global %struct.omap_prcm_irq_setup { i16 24, i16 28, i16 0, i8 1, i8 2, ptr @omap3_prcm_irqs, i32 27, ptr @omap3xxx_prm_read_pending_irqs, ptr @omap3xxx_prm_ocp_barrier, ptr @omap3xxx_prm_save_and_clear_irqen, ptr @omap3xxx_prm_restore_irqen, ptr null, ptr null, ptr null, i32 0, i8 0, i8 0 }, align 4
@omap3_prm_dt_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-prm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"\013PRM: no device tree node for interrupt?\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"\014PRM: I/O chain clock line assertion timed out\0A\00", align 1
@omap3_prcm_irqs = internal constant [2 x %struct.omap_prcm_irq] [%struct.omap_prcm_irq { ptr @.str.3, i32 0, i8 0 }, %struct.omap_prcm_irq { ptr @.str.4, i32 9, i8 1 }], align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"wkup\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@omap3_vp = internal unnamed_addr constant [2 x %struct.omap3_vp] [%struct.omap3_vp { i32 32768 }, %struct.omap3_vp { i32 2097152 }], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__exitcall_omap3xxx_prm_exit, ptr @omap3xxx_prm_exit], section "llvm.metadata"
@switch.table.omap3_pwrdm_read_prev_mem_pwrst = private unnamed_addr constant [4 x i32] [i32 48, i32 192, i32 768, i32 3072], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap3_prm_vcvp_read(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %3 = getelementptr i8, ptr %2, i32 2560
  %4 = zext i8 %0 to i32
  %5 = getelementptr i8, ptr %3, i32 %4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3_prm_vcvp_write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %4 = getelementptr i8, ptr %3, i32 2560
  %5 = zext i8 %1 to i32
  %6 = getelementptr i8, ptr %4, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %0) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap3_prm_vcvp_rmw(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %5 = getelementptr i8, ptr %4, i32 2560
  %6 = zext i8 %2 to i32
  %7 = getelementptr i8, ptr %5, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  %9 = xor i32 %0, -1
  %10 = and i32 %8, %9
  %11 = or i32 %10, %1
  %12 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %13 = getelementptr i8, ptr %12, i32 2560
  %14 = getelementptr i8, ptr %13, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #5, !srcloc !9
  ret i32 %11
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap3_prm_reset_modem() local_unnamed_addr #1 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %2 = getelementptr i8, ptr %1, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 3) #5, !srcloc !9
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %4 = getelementptr i8, ptr %3, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #5, !srcloc !9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap3_prm_init_pm(i1 noundef zeroext %0, i1 noundef zeroext %1) local_unnamed_addr #1 section ".init.text" {
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %4 = getelementptr i8, ptr %3, i32 2672
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  %6 = and i32 %5, -25
  %7 = or i32 %6, 8
  %8 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %9 = getelementptr i8, ptr %8, i32 2672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #5, !srcloc !9
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %11 = getelementptr i8, ptr %10, i32 1184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 267) #5, !srcloc !9
  %12 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %13 = getelementptr i8, ptr %12, i32 1188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 11) #5, !srcloc !9
  %14 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %15 = getelementptr i8, ptr %14, i32 1696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1) #5, !srcloc !9
  %16 = select i1 %0, i32 518151, i32 256007
  %17 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %18 = getelementptr i8, ptr %17, i32 2208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #5, !srcloc !9
  %19 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %20 = getelementptr i8, ptr %19, i32 2212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %16) #5, !srcloc !9
  br i1 %1, label %21, label %30

21:                                               ; preds = %2
  %22 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %23 = getelementptr i8, ptr %22, i32 1192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #5, !srcloc !9
  %24 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %25 = getelementptr i8, ptr %24, i32 680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #5, !srcloc !9
  %26 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %27 = getelementptr i8, ptr %26, i32 756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #5, !srcloc !9
  %28 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %29 = getelementptr i8, ptr %28, i32 2216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #5, !srcloc !9
  br label %30

30:                                               ; preds = %21, %2
  %31 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %32 = getelementptr i8, ptr %31, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 -1) #5, !srcloc !9
  %33 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %34 = getelementptr i8, ptr %33, i32 600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 -1) #5, !srcloc !9
  %35 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %36 = getelementptr i8, ptr %35, i32 2136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -1) #5, !srcloc !9
  %37 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %38 = getelementptr i8, ptr %37, i32 2392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 -1) #5, !srcloc !9
  %39 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %40 = getelementptr i8, ptr %39, i32 2904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 -1) #5, !srcloc !9
  %41 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %42 = getelementptr i8, ptr %41, i32 1624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 -1) #5, !srcloc !9
  %43 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %44 = getelementptr i8, ptr %43, i32 3160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 -1) #5, !srcloc !9
  %45 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %46 = getelementptr i8, ptr %45, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 0) #5, !srcloc !9
  tail call void @omap3xxx_prm_iva_idle()
  %47 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %48 = getelementptr i8, ptr %47, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 3) #5, !srcloc !9
  %49 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %50 = getelementptr i8, ptr %49, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3xxx_prm_iva_idle() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %2 = getelementptr i8, ptr %1, i32 -2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 0) #5, !srcloc !9
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %4 = getelementptr i8, ptr %3, i32 -1972
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %0
  %9 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %10 = getelementptr i8, ptr %9, i32 -1968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 7) #5, !srcloc !9
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %12 = getelementptr i8, ptr %11, i32 -2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1) #5, !srcloc !9
  %13 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %14 = getelementptr i8, ptr %13, i32 -1968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #5, !srcloc !9
  %15 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %16 = getelementptr i8, ptr %15, i32 -2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #5, !srcloc !9
  %17 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %18 = getelementptr i8, ptr %17, i32 -1968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 7) #5, !srcloc !9
  br label %19

19:                                               ; preds = %8, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap3xxx_prm_clear_global_cold_reset() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %2 = getelementptr i8, ptr %1, i32 2648
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !8
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %8 = getelementptr i8, ptr %7, i32 2648
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  %10 = or i32 %9, 1
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %12 = getelementptr i8, ptr %11, i32 2648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !9
  br label %13

13:                                               ; preds = %6, %0
  %14 = phi i32 [ 1, %6 ], [ 0, %0 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap3_prm_save_scratchpad_contents(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %3 = getelementptr i8, ptr %2, i32 2672
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !8
  %5 = getelementptr i32, ptr %0, i32 1
  store i32 %4, ptr %0, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %7 = getelementptr i8, ptr %6, i32 2624
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  store i32 %8, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_set_next_pwrst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = zext i8 %1 to i32
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %7 = sext i16 %5 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = getelementptr i8, ptr %8, i32 224
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  %11 = and i32 %10, -4
  %12 = or i32 %11, %3
  %13 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %14 = getelementptr i8, ptr %13, i32 %7
  %15 = getelementptr i8, ptr %14, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_read_next_pwrst(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %5 = sext i16 %3 to i32
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = getelementptr i8, ptr %6, i32 224
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  %9 = and i32 %8, 3
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_read_pwrst(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %5 = sext i16 %3 to i32
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = getelementptr i8, ptr %6, i32 228
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  %9 = and i32 %8, 3
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_read_prev_pwrst(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %5 = sext i16 %3 to i32
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = getelementptr i8, ptr %6, i32 232
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  %9 = and i32 %8, 3
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_set_logic_retst(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_set_mem_onst(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_set_mem_retst(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_read_logic_pwrst(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %5 = sext i16 %3 to i32
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = getelementptr i8, ptr %6, i32 228
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  %9 = lshr i32 %8, 2
  %10 = and i32 %9, 1
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_read_prev_logic_pwrst(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %5 = sext i16 %3 to i32
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = getelementptr i8, ptr %6, i32 232
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  %9 = lshr i32 %8, 2
  %10 = and i32 %9, 1
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_read_logic_retst(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %5 = sext i16 %3 to i32
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = getelementptr i8, ptr %6, i32 224
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  %9 = lshr i32 %8, 2
  %10 = and i32 %9, 1
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_read_mem_pwrst(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_read_prev_mem_pwrst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = icmp ult i8 %1, 4
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 599, i32 noundef 9, ptr noundef null) #5
  br label %9

5:                                                ; preds = %2
  %6 = sext i8 %1 to i32
  %7 = getelementptr inbounds [4 x i32], ptr @switch.table.omap3_pwrdm_read_prev_mem_pwrst, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %5, %4
  %10 = phi i32 [ -17, %4 ], [ %8, %5 ]
  %11 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %12 = load i16, ptr %11, align 4
  %13 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %14 = sext i16 %12 to i32
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = getelementptr i8, ptr %15, i32 232
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  %18 = and i32 %17, %10
  %19 = tail call i32 @llvm.cttz.i32(i32 %10, i1 true) #5, !range !10
  %20 = lshr i32 %18, %19
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_read_mem_retst(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_clear_all_prev_pwrst(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %5 = sext i16 %3 to i32
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = getelementptr i8, ptr %6, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_enable_hdwr_sar(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %5 = sext i16 %3 to i32
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = getelementptr i8, ptr %6, i32 224
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  %9 = or i32 %8, 16
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %11 = getelementptr i8, ptr %10, i32 %5
  %12 = getelementptr i8, ptr %11, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #5, !srcloc !9
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_disable_hdwr_sar(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %5 = sext i16 %3 to i32
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = getelementptr i8, ptr %6, i32 224
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  %9 = and i32 %8, -17
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %11 = getelementptr i8, ptr %10, i32 %5
  %12 = getelementptr i8, ptr %11, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #5, !srcloc !9
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_wait_transition(ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap3xxx_prm_init(ptr nocapture noundef readnone %0) local_unnamed_addr #1 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %3 = getelementptr i8, ptr %2, i32 -2048
  tail call void @omap2_clk_legacy_provider_init(i32 noundef 2, ptr noundef %3) #5
  %4 = load i32, ptr @omap_features, align 4
  %5 = and i32 %4, 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i16, ptr @prm_features, align 2
  %9 = or i16 %8, 1
  store i16 %9, ptr @prm_features, align 2
  br label %10

10:                                               ; preds = %7, %1
  %11 = tail call i32 @prm_register(ptr noundef nonnull @omap3xxx_prm_ll_data) #5
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clk_legacy_provider_init(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prm_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap3xxx_prm_exit() #1 section ".exit.text" {
  %1 = tail call i32 @prm_unregister(ptr noundef nonnull @omap3xxx_prm_ll_data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prm_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3xxx_prm_read_reset_sources() #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %2 = getelementptr i8, ptr %1, i32 1112
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !8
  %4 = and i32 %3, 512
  %5 = and i32 %3, 256
  %6 = lshr i32 %3, 1
  %7 = and i32 %6, 64
  %8 = lshr i32 %3, 1
  %9 = and i32 %8, 32
  %10 = lshr i32 %3, 2
  %11 = and i32 %10, 8
  %12 = lshr i32 %3, 1
  %13 = and i32 %12, 8
  %14 = lshr i32 %3, 1
  %15 = and i32 %14, 4
  %16 = and i32 %3, 3
  %17 = or i32 %15, %16
  %18 = or i32 %13, %17
  %19 = or i32 %11, %18
  %20 = or i32 %9, %19
  %21 = or i32 %7, %20
  %22 = or i32 %5, %21
  %23 = or i32 %4, %22
  %24 = and i32 %3, 1024
  %25 = or i32 %24, %23
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3xxx_prm_late_init() #0 {
  %1 = load i16, ptr @prm_features, align 2
  %2 = and i16 %1, 1
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %29, label %4

4:                                                ; preds = %0
  %5 = load i32, ptr @omap_features, align 4
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, ptr @omap3430_pre_es3_1_reconfigure_io_chain, ptr @omap3_prm_reconfigure_io_chain
  store ptr %8, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap3_prcm_irq_setup, i32 0, i32 11), align 4
  %9 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @omap3_prm_dt_match_table, ptr noundef null) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  br label %29

13:                                               ; preds = %4
  %14 = tail call i32 @of_irq_get(ptr noundef nonnull %9, i32 noundef 0) #5
  %15 = icmp eq i32 %14, -517
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  store i32 %14, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap3_prcm_irq_setup, i32 0, i32 6), align 4
  %17 = load i16, ptr @prm_features, align 2
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %22 = getelementptr i8, ptr %21, i32 1184
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !8
  %24 = or i32 %23, 256
  %25 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %26 = getelementptr i8, ptr %25, i32 1184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #5, !srcloc !9
  br label %27

27:                                               ; preds = %20, %16
  %28 = tail call i32 @omap_prcm_register_chain_handler(ptr noundef nonnull @omap3_prcm_irq_setup) #5
  br label %29

29:                                               ; preds = %27, %13, %11, %0
  %30 = phi i32 [ %28, %27 ], [ -19, %11 ], [ 0, %0 ], [ -517, %13 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_prm_assert_hardreset(i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_prm_deassert_hardreset(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_prm_is_hardreset_asserted(i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap3xxx_prm_dpll3_reset() #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %2 = getelementptr i8, ptr %1, i32 2640
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !8
  %4 = or i32 %3, 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %6 = getelementptr i8, ptr %5, i32 2640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #5, !srcloc !9
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %8 = getelementptr i8, ptr %7, i32 2640
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3xxx_prm_clear_mod_irqs(i16 noundef signext %0, i8 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = icmp eq i8 %1, 3
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %6 = sext i16 %0 to i32
  %7 = getelementptr i8, ptr %5, i32 %6
  %8 = select i1 %4, i32 184, i32 176
  %9 = getelementptr i8, ptr %7, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %12 = getelementptr i8, ptr %11, i32 %6
  %13 = select i1 %4, i32 248, i32 164
  %14 = getelementptr i8, ptr %12, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  %16 = and i32 %10, %2
  %17 = and i32 %16, %15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %69, label %19

19:                                               ; preds = %3
  %20 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %21 = getelementptr i8, ptr %20, i32 %6
  %22 = select i1 %4, i32 24, i32 16
  %23 = getelementptr i8, ptr %21, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !8
  %25 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %26 = getelementptr i8, ptr %25, i32 %6
  %27 = select i1 %4, i32 8, i32 0
  %28 = getelementptr i8, ptr %26, i32 %27
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #5, !srcloc !8
  %30 = icmp eq i16 %0, 3072
  br label %31

31:                                               ; preds = %31, %19
  %32 = phi i32 [ 0, %19 ], [ %60, %31 ]
  %33 = phi i32 [ %17, %19 ], [ %59, %31 ]
  %34 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %35 = getelementptr i8, ptr %34, i32 %6
  %36 = getelementptr i8, ptr %35, i32 %22
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !8
  %38 = or i32 %37, %33
  %39 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %40 = getelementptr i8, ptr %39, i32 %6
  %41 = getelementptr i8, ptr %40, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %38) #5, !srcloc !9
  %42 = or i32 %33, 2
  %43 = select i1 %30, i32 %42, i32 %33
  %44 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %45 = getelementptr i8, ptr %44, i32 %6
  %46 = getelementptr i8, ptr %45, i32 %27
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #5, !srcloc !8
  %48 = or i32 %47, %43
  %49 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %50 = getelementptr i8, ptr %49, i32 %6
  %51 = getelementptr i8, ptr %50, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %48) #5, !srcloc !9
  %52 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %53 = getelementptr i8, ptr %52, i32 %6
  %54 = getelementptr i8, ptr %53, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %33) #5, !srcloc !9
  %55 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %56 = getelementptr i8, ptr %55, i32 %6
  %57 = getelementptr i8, ptr %56, i32 %8
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #5, !srcloc !8
  %59 = and i32 %58, %2
  %60 = add i32 %32, 1
  %61 = icmp eq i32 %59, 0
  br i1 %61, label %62, label %31

62:                                               ; preds = %31
  %63 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %64 = getelementptr i8, ptr %63, i32 %6
  %65 = getelementptr i8, ptr %64, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %24) #5, !srcloc !9
  %66 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %67 = getelementptr i8, ptr %66, i32 %6
  %68 = getelementptr i8, ptr %67, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %29) #5, !srcloc !9
  br label %69

69:                                               ; preds = %62, %3
  %70 = phi i32 [ %60, %62 ], [ 0, %3 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3_prm_vp_check_txdone(i8 noundef zeroext %0) #0 {
  %2 = zext i8 %0 to i32
  %3 = getelementptr [2 x %struct.omap3_vp], ptr @omap3_vp, i32 0, i32 %2
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %5 = getelementptr i8, ptr %4, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  %7 = load i32, ptr %3, align 4
  %8 = and i32 %7, %6
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap3_prm_vp_clear_txdone(i8 noundef zeroext %0) #0 {
  %2 = zext i8 %0 to i32
  %3 = getelementptr [2 x %struct.omap3_vp], ptr @omap3_vp, i32 0, i32 %2
  %4 = load i32, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %6 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap3_prm_reconfigure_io_chain() #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %2 = getelementptr i8, ptr %1, i32 1184
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !8
  %4 = or i32 %3, 65536
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %6 = getelementptr i8, ptr %5, i32 1184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #5, !srcloc !9
  br label %7

7:                                                ; preds = %14, %0
  %8 = phi i32 [ 0, %0 ], [ %16, %14 ]
  %9 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %10 = getelementptr i8, ptr %9, i32 1200
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  %12 = and i32 %11, 65536
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %7
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #5
  %16 = add nuw nsw i32 %8, 1
  %17 = icmp eq i32 %16, 100
  br i1 %17, label %18, label %7

18:                                               ; preds = %14
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %20

20:                                               ; preds = %18, %7
  %21 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %22 = getelementptr i8, ptr %21, i32 1184
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !8
  %24 = and i32 %23, -65537
  %25 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %26 = getelementptr i8, ptr %25, i32 1184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #5, !srcloc !9
  %27 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %28 = getelementptr i8, ptr %27, i32 1200
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #5, !srcloc !8
  %30 = or i32 %29, 65536
  %31 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %32 = getelementptr i8, ptr %31, i32 1200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #5, !srcloc !9
  %33 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %34 = getelementptr i8, ptr %33, i32 1200
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap3430_pre_es3_1_reconfigure_io_chain() #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %2 = getelementptr i8, ptr %1, i32 1184
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !8
  %4 = and i32 %3, -257
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %6 = getelementptr i8, ptr %5, i32 1184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #5, !srcloc !9
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %8 = getelementptr i8, ptr %7, i32 1184
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  %10 = or i32 %9, 256
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %12 = getelementptr i8, ptr %11, i32 1184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !9
  %13 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %14 = getelementptr i8, ptr %13, i32 1184
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_prcm_register_chain_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap3xxx_prm_read_pending_irqs(ptr nocapture noundef writeonly %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %3 = getelementptr i8, ptr %2, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !8
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %6 = getelementptr i8, ptr %5, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  %8 = and i32 %7, %4
  store i32 %8, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap3xxx_prm_ocp_barrier() #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %2 = getelementptr i8, ptr %1, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap3xxx_prm_save_and_clear_irqen(ptr nocapture noundef writeonly %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %3 = getelementptr i8, ptr %2, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !8
  store i32 %4, ptr %0, align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %6 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #5, !srcloc !9
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap3xxx_prm_restore_irqen(ptr nocapture noundef readonly %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %4 = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #5, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 967506}
!9 = !{i64 967088}
!10 = !{i32 0, i32 33}
