; ModuleID = '/llk/IR/arch/arm/mach-omap2/prm44xx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/prm44xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pwrdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.omap_prcm_irq_setup = type { i16, i16, i16, i8, i8, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.prm_ll_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.omap_prcm_irq = type { ptr, i32, i8 }
%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.omap4_vp = type { i32, i32 }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.omap_prcm_init_data = type { i32, ptr, i32, i16, i16, i32, ptr, ptr }

@omap4_pwrdm_operations = dso_local local_unnamed_addr global %struct.pwrdm_ops { ptr @omap4_pwrdm_set_next_pwrst, ptr @omap4_pwrdm_read_next_pwrst, ptr @omap4_pwrdm_read_pwrst, ptr @omap4_pwrdm_read_prev_pwrst, ptr @omap4_pwrdm_set_logic_retst, ptr @omap4_pwrdm_set_mem_onst, ptr @omap4_pwrdm_set_mem_retst, ptr @omap4_pwrdm_read_logic_pwrst, ptr @omap4_pwrdm_read_prev_logic_pwrst, ptr @omap4_pwrdm_read_logic_retst, ptr @omap4_pwrdm_read_mem_pwrst, ptr @omap4_pwrdm_read_prev_mem_pwrst, ptr @omap4_pwrdm_read_mem_retst, ptr @omap4_pwrdm_clear_all_prev_pwrst, ptr null, ptr null, ptr @omap4_pwrdm_set_lowpwrstchange, ptr @omap4_pwrdm_wait_transition, ptr @omap4_check_vcvp, ptr @omap4_pwrdm_save_context, ptr @omap4_pwrdm_restore_context }, align 4
@omap44xx_prm_init.nb = internal global %struct.notifier_block zeroinitializer, align 4
@prm_init_data = internal unnamed_addr global ptr null, align 4
@prm_features = external dso_local local_unnamed_addr global i16, align 2
@.str = private unnamed_addr constant [12 x i8] c"ti,am4-prcm\00", align 1
@omap4_prcm_irq_setup = internal global %struct.omap_prcm_irq_setup { i16 16, i16 24, i16 32, i8 2, i8 1, ptr @omap4_prcm_irqs, i32 0, ptr @omap44xx_prm_read_pending_irqs, ptr @omap44xx_prm_ocp_barrier, ptr @omap44xx_prm_save_and_clear_irqen, ptr @omap44xx_prm_restore_irqen, ptr @omap44xx_prm_reconfigure_io_chain, ptr null, ptr null, i32 0, i8 0, i8 0 }, align 4
@omap44xx_prm_ll_data = internal global %struct.prm_ll_data { ptr @omap44xx_prm_read_reset_sources, ptr @omap44xx_prm_was_any_context_lost_old, ptr @omap44xx_prm_clear_context_loss_flags_old, ptr @omap44xx_prm_late_init, ptr @omap4_prminst_assert_hardreset, ptr @omap4_prminst_deassert_hardreset, ptr @omap4_prminst_is_hardreset_asserted, ptr @omap4_prminst_global_warm_sw_reset, ptr null, ptr @omap4_prm_vp_check_txdone, ptr @omap4_prm_vp_clear_txdone }, align 4
@__exitcall_omap44xx_prm_exit = internal global ptr @omap44xx_prm_exit, section ".exitcall.exit", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"\013powerdomain: %s: waited too long to complete transition\0A\00", align 1
@omap4_prcm_irqs = internal constant [1 x %struct.omap_prcm_irq] [%struct.omap_prcm_irq { ptr @.str.2, i32 9, i8 1 }], align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@prm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"\014PRM: I/O chain clock line assertion timed out\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"\014PRM: I/O chain clock line deassertion timed out\0A\00", align 1
@enable_off_mode = external dso_local local_unnamed_addr global i32, align 4
@omap_prm_context.0 = internal unnamed_addr global i32 0, align 4
@omap_prm_context.1 = internal unnamed_addr global i32 0, align 4
@omap4_vp = internal unnamed_addr constant [3 x %struct.omap4_vp] [%struct.omap4_vp { i32 16, i32 2097152 }, %struct.omap4_vp { i32 16, i32 536870912 }, %struct.omap4_vp { i32 20, i32 32 }], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__exitcall_omap44xx_prm_exit, ptr @omap44xx_prm_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap4_prm_vcvp_read(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = tail call i32 @omap4_prmst_get_prm_dev_inst() #6
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = trunc i32 %2 to i16
  %6 = zext i8 %0 to i16
  %7 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext 1, i16 noundef signext %5, i16 noundef zeroext %6) #6
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_prmst_get_prm_dev_inst() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap4_prm_vcvp_write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call i32 @omap4_prmst_get_prm_dev_inst() #6
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = trunc i32 %3 to i16
  %7 = zext i8 %1 to i16
  tail call void @omap4_prminst_write_inst_reg(i32 noundef %0, i8 noundef zeroext 1, i16 noundef signext %6, i16 noundef zeroext %7) #6
  br label %8

8:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_prminst_write_inst_reg(i32 noundef, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap4_prm_vcvp_rmw(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call i32 @omap4_prmst_get_prm_dev_inst() #6
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = trunc i32 %4 to i16
  %8 = zext i8 %2 to i16
  %9 = tail call i32 @omap4_prminst_rmw_inst_reg_bits(i32 noundef %0, i32 noundef %1, i8 noundef zeroext 1, i16 noundef signext %7, i16 noundef zeroext %8) #6
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i32 [ %9, %6 ], [ 0, %3 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_prminst_rmw_inst_reg_bits(i32 noundef, i32 noundef, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_set_next_pwrst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = zext i8 %1 to i32
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 9
  %5 = load i8, ptr %4, align 4
  %6 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %7 = load i16, ptr %6, align 4
  %8 = tail call i32 @omap4_prminst_rmw_inst_reg_bits(i32 noundef 3, i32 noundef %3, i8 noundef zeroext %5, i16 noundef signext %7, i16 noundef zeroext 0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_read_next_pwrst(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 9
  %3 = load i8, ptr %2, align 4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  %6 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %3, i16 noundef signext %5, i16 noundef zeroext 0) #6
  %7 = and i32 %6, 3
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_read_pwrst(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 9
  %3 = load i8, ptr %2, align 4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  %6 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %3, i16 noundef signext %5, i16 noundef zeroext 4) #6
  %7 = and i32 %6, 3
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_read_prev_pwrst(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 9
  %3 = load i8, ptr %2, align 4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  %6 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %3, i16 noundef signext %5, i16 noundef zeroext 4) #6
  %7 = lshr i32 %6, 24
  %8 = and i32 %7, 3
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_set_logic_retst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = zext i8 %1 to i32
  %4 = shl nuw nsw i32 %3, 2
  %5 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 9
  %6 = load i8, ptr %5, align 4
  %7 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %8 = load i16, ptr %7, align 4
  %9 = tail call i32 @omap4_prminst_rmw_inst_reg_bits(i32 noundef 4, i32 noundef %4, i8 noundef zeroext %6, i16 noundef signext %8, i16 noundef zeroext 0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_set_mem_onst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = tail call i32 @omap2_pwrdm_get_mem_bank_onstate_mask(i8 noundef zeroext %1) #6
  %5 = zext i8 %2 to i32
  %6 = tail call i32 @llvm.cttz.i32(i32 %4, i1 false) #6, !range !8
  %7 = shl i32 %5, %6
  %8 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 9
  %9 = load i8, ptr %8, align 4
  %10 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %11 = load i16, ptr %10, align 4
  %12 = tail call i32 @omap4_prminst_rmw_inst_reg_bits(i32 noundef %4, i32 noundef %7, i8 noundef zeroext %9, i16 noundef signext %11, i16 noundef zeroext 0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_set_mem_retst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = tail call i32 @omap2_pwrdm_get_mem_bank_retst_mask(i8 noundef zeroext %1) #6
  %5 = zext i8 %2 to i32
  %6 = tail call i32 @llvm.cttz.i32(i32 %4, i1 false) #6, !range !8
  %7 = shl i32 %5, %6
  %8 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 9
  %9 = load i8, ptr %8, align 4
  %10 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %11 = load i16, ptr %10, align 4
  %12 = tail call i32 @omap4_prminst_rmw_inst_reg_bits(i32 noundef %4, i32 noundef %7, i8 noundef zeroext %9, i16 noundef signext %11, i16 noundef zeroext 0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_read_logic_pwrst(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 9
  %3 = load i8, ptr %2, align 4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  %6 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %3, i16 noundef signext %5, i16 noundef zeroext 4) #6
  %7 = lshr i32 %6, 2
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_read_prev_logic_pwrst(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 9
  %3 = load i8, ptr %2, align 4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  %6 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %3, i16 noundef signext %5, i16 noundef zeroext 4) #6
  %7 = lshr i32 %6, 24
  %8 = and i32 %7, 3
  switch i32 %8, label %9 [
    i32 0, label %16
    i32 1, label %10
  ]

9:                                                ; preds = %1
  br label %16

10:                                               ; preds = %1
  %11 = load i8, ptr %2, align 4
  %12 = load i16, ptr %4, align 4
  %13 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %11, i16 noundef signext %12, i16 noundef zeroext 0) #6
  %14 = lshr i32 %13, 2
  %15 = and i32 %14, 1
  br label %16

16:                                               ; preds = %10, %9, %1
  %17 = phi i32 [ 1, %9 ], [ %15, %10 ], [ %8, %1 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_read_logic_retst(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 9
  %3 = load i8, ptr %2, align 4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  %6 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %3, i16 noundef signext %5, i16 noundef zeroext 0) #6
  %7 = lshr i32 %6, 2
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_read_mem_pwrst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = tail call i32 @omap2_pwrdm_get_mem_bank_stst_mask(i8 noundef zeroext %1) #6
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 9
  %5 = load i8, ptr %4, align 4
  %6 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %7 = load i16, ptr %6, align 4
  %8 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %5, i16 noundef signext %7, i16 noundef zeroext 4) #6
  %9 = and i32 %8, %3
  %10 = tail call i32 @llvm.cttz.i32(i32 %3, i1 false) #6, !range !8
  %11 = lshr i32 %9, %10
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_read_prev_mem_pwrst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 9
  %4 = load i8, ptr %3, align 4
  %5 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %6 = load i16, ptr %5, align 4
  %7 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %4, i16 noundef signext %6, i16 noundef zeroext 4) #6
  %8 = lshr i32 %7, 24
  %9 = and i32 %8, 3
  switch i32 %9, label %10 [
    i32 0, label %19
    i32 1, label %11
  ]

10:                                               ; preds = %2
  br label %19

11:                                               ; preds = %2
  %12 = tail call i32 @omap2_pwrdm_get_mem_bank_retst_mask(i8 noundef zeroext %1) #6
  %13 = load i8, ptr %3, align 4
  %14 = load i16, ptr %5, align 4
  %15 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %13, i16 noundef signext %14, i16 noundef zeroext 0) #6
  %16 = and i32 %15, %12
  %17 = tail call i32 @llvm.cttz.i32(i32 %12, i1 false) #6, !range !8
  %18 = lshr i32 %16, %17
  br label %19

19:                                               ; preds = %11, %10, %2
  %20 = phi i32 [ 1, %10 ], [ %18, %11 ], [ %9, %2 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_read_mem_retst(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = tail call i32 @omap2_pwrdm_get_mem_bank_retst_mask(i8 noundef zeroext %1) #6
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 9
  %5 = load i8, ptr %4, align 4
  %6 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %7 = load i16, ptr %6, align 4
  %8 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %5, i16 noundef signext %7, i16 noundef zeroext 0) #6
  %9 = and i32 %8, %3
  %10 = tail call i32 @llvm.cttz.i32(i32 %3, i1 false) #6, !range !8
  %11 = lshr i32 %9, %10
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_clear_all_prev_pwrst(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 9
  %3 = load i8, ptr %2, align 4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  %6 = tail call i32 @omap4_prminst_rmw_inst_reg_bits(i32 noundef 50331648, i32 noundef 50331648, i8 noundef zeroext %3, i16 noundef signext %5, i16 noundef zeroext 4) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_set_lowpwrstchange(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 9
  %3 = load i8, ptr %2, align 4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  %6 = tail call i32 @omap4_prminst_rmw_inst_reg_bits(i32 noundef 16, i32 noundef 16, i8 noundef zeroext %3, i16 noundef signext %5, i16 noundef zeroext 0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_wait_transition(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 9
  %3 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %4 = load i8, ptr %2, align 4
  %5 = load i16, ptr %3, align 4
  %6 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %4, i16 noundef signext %5, i16 noundef zeroext 4) #6
  %7 = and i32 %6, 1048576
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %12, %1
  %10 = phi i32 [ %13, %12 ], [ 0, %1 ]
  %11 = icmp eq i32 %10, 100000
  br i1 %11, label %20, label %12

12:                                               ; preds = %9
  %13 = add nuw nsw i32 %10, 1
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #6
  %15 = load i8, ptr %2, align 4
  %16 = load i16, ptr %3, align 4
  %17 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %15, i16 noundef signext %16, i16 noundef zeroext 4) #6
  %18 = and i32 %17, 1048576
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %9

20:                                               ; preds = %9
  %21 = load ptr, ptr %0, align 4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %21) #7
  br label %23

23:                                               ; preds = %20, %12, %1
  %24 = phi i32 [ -11, %20 ], [ 0, %1 ], [ 0, %12 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @omap4_check_vcvp() #2 {
  %1 = load i16, ptr @prm_features, align 2
  %2 = lshr i16 %1, 1
  %3 = and i16 %2, 1
  %4 = zext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap4_pwrdm_save_context(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 9
  %3 = load i8, ptr %2, align 4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  %6 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 19
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i16
  %9 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %3, i16 noundef signext %5, i16 noundef zeroext %8) #6
  %10 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 26
  %11 = and i32 %9, -17
  store i32 %11, ptr %10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap4_pwrdm_restore_context(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 9
  %3 = load i8, ptr %2, align 4
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  %6 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 19
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i16
  %9 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %3, i16 noundef signext %5, i16 noundef zeroext %8) #6
  %10 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 26
  %11 = load i32, ptr %10, align 4
  %12 = load i8, ptr %2, align 4
  %13 = load i16, ptr %4, align 4
  %14 = load i8, ptr %6, align 4
  %15 = zext i8 %14 to i16
  tail call void @omap4_prminst_write_inst_reg(i32 noundef %11, i8 noundef zeroext %12, i16 noundef signext %13, i16 noundef zeroext %15) #6
  %16 = load i32, ptr %10, align 4
  %17 = xor i32 %16, %9
  %18 = and i32 %17, 3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %1
  %21 = load i8, ptr %2, align 4
  %22 = load i16, ptr %4, align 4
  %23 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %21, i16 noundef signext %22, i16 noundef zeroext 4) #6
  %24 = and i32 %23, 1048576
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %29, %20
  %27 = phi i32 [ %30, %29 ], [ 0, %20 ]
  %28 = icmp eq i32 %27, 100000
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = add nuw nsw i32 %27, 1
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #6
  %32 = load i8, ptr %2, align 4
  %33 = load i16, ptr %4, align 4
  %34 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %32, i16 noundef signext %33, i16 noundef zeroext 4) #6
  %35 = and i32 %34, 1048576
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %26

37:                                               ; preds = %26
  %38 = load ptr, ptr %0, align 4
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %38) #7
  br label %40

40:                                               ; preds = %37, %29, %20, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap44xx_prm_init(ptr noundef %0) local_unnamed_addr #3 section ".init.text" {
  tail call void @omap_prm_base_init() #6
  store ptr %0, ptr @prm_init_data, align 4
  %2 = getelementptr inbounds %struct.omap_prcm_init_data, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 2
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i16, ptr @prm_features, align 2
  %8 = or i16 %7, 1
  store i16 %8, ptr @prm_features, align 2
  br label %9

9:                                                ; preds = %6, %1
  %10 = and i16 %3, 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i16, ptr @prm_features, align 2
  %14 = or i16 %13, 2
  store i16 %14, ptr @prm_features, align 2
  br label %15

15:                                               ; preds = %12, %9
  %16 = getelementptr inbounds %struct.omap_prcm_init_data, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  tail call void @omap4_prminst_set_prm_dev_inst(i32 noundef %17) #6
  %18 = getelementptr inbounds %struct.omap_prcm_init_data, ptr %0, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @of_device_is_compatible(ptr noundef %19, ptr noundef nonnull @.str) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  store i8 1, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 4), align 1
  store i8 1, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 3), align 2
  store i16 36, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 2), align 4
  store i16 4, ptr @omap4_prcm_irq_setup, align 4
  store i16 8, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 1), align 2
  br label %23

23:                                               ; preds = %22, %15
  %24 = tail call i32 @omap_rev() #6
  %25 = and i32 %24, -16777216
  %26 = icmp eq i32 %25, 1124073472
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  store ptr @cpu_notifier, ptr @omap44xx_prm_init.nb, align 4
  %28 = tail call i32 @cpu_pm_register_notifier(ptr noundef nonnull @omap44xx_prm_init.nb) #6
  br label %29

29:                                               ; preds = %27, %23
  %30 = tail call i32 @prm_register(ptr noundef nonnull @omap44xx_prm_ll_data) #6
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_prm_base_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_prminst_set_prm_dev_inst(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  switch i32 %1, label %34 [
    i32 3, label %4
    i32 5, label %19
  ]

4:                                                ; preds = %3
  %5 = load i32, ptr @enable_off_mode, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %4
  %8 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 1), align 2
  %9 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %10 = zext i16 %8 to i32
  %11 = getelementptr i8, ptr %9, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !9
  store i32 %12, ptr @omap_prm_context.0, align 4
  %13 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 2), align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %15 = getelementptr i8, ptr %14, i32 16384
  %16 = zext i16 %13 to i32
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !9
  store i32 %18, ptr @omap_prm_context.1, align 4
  br label %34

19:                                               ; preds = %3
  %20 = load i32, ptr @enable_off_mode, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr @omap_prm_context.0, align 4
  %24 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 1), align 2
  %25 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %26 = zext i16 %24 to i32
  %27 = getelementptr i8, ptr %25, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %23) #6, !srcloc !10
  %28 = load i32, ptr @omap_prm_context.1, align 4
  %29 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 2), align 4
  %30 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %31 = getelementptr i8, ptr %30, i32 16384
  %32 = zext i16 %29 to i32
  %33 = getelementptr i8, ptr %31, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %28) #6, !srcloc !10
  br label %34

34:                                               ; preds = %22, %19, %7, %4, %3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prm_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap44xx_prm_exit() #3 section ".exit.text" {
  %1 = tail call i32 @prm_unregister(ptr noundef nonnull @omap44xx_prm_ll_data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prm_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_get_mem_bank_onstate_mask(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_get_mem_bank_retst_mask(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_get_mem_bank_stst_mask(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap44xx_prm_read_pending_irqs(ptr nocapture noundef writeonly %0) #0 {
  %2 = load i8, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 3), align 2
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %4, %1
  %5 = phi i32 [ %22, %4 ], [ 0, %1 ]
  %6 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 1), align 2
  %7 = trunc i32 %5 to i16
  %8 = shl i16 %7, 2
  %9 = add i16 %6, %8
  %10 = load i16, ptr @omap4_prcm_irq_setup, align 4
  %11 = add i16 %10, %8
  %12 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %13 = zext i16 %9 to i32
  %14 = getelementptr i8, ptr %12, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !9
  %16 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %17 = zext i16 %11 to i32
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !9
  %20 = and i32 %19, %15
  %21 = getelementptr i32, ptr %0, i32 %5
  store i32 %20, ptr %21, align 4
  %22 = add nuw nsw i32 %5, 1
  %23 = load i8, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 3), align 2
  %24 = zext i8 %23 to i32
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %4, label %26

26:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap44xx_prm_ocp_barrier() #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap44xx_prm_save_and_clear_irqen(ptr nocapture noundef writeonly %0) #0 {
  %2 = load i8, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 3), align 2
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %21, label %4

4:                                                ; preds = %4, %1
  %5 = phi i32 [ %17, %4 ], [ 0, %1 ]
  %6 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 1), align 2
  %7 = trunc i32 %5 to i16
  %8 = shl i16 %7, 2
  %9 = add i16 %6, %8
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %11 = zext i16 %9 to i32
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !9
  %14 = getelementptr i32, ptr %0, i32 %5
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %16 = getelementptr i8, ptr %15, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #6, !srcloc !10
  %17 = add nuw nsw i32 %5, 1
  %18 = load i8, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 3), align 2
  %19 = zext i8 %18 to i32
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %4, label %21

21:                                               ; preds = %4, %1
  %22 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap44xx_prm_restore_irqen(ptr nocapture noundef readonly %0) #0 {
  %2 = load i8, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 3), align 2
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %19, label %4

4:                                                ; preds = %4, %1
  %5 = phi i32 [ %15, %4 ], [ 0, %1 ]
  %6 = getelementptr i32, ptr %0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 1), align 2
  %9 = trunc i32 %5 to i16
  %10 = shl i16 %9, 2
  %11 = add i16 %8, %10
  %12 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %13 = zext i16 %11 to i32
  %14 = getelementptr i8, ptr %12, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %7) #6, !srcloc !10
  %15 = add nuw nsw i32 %5, 1
  %16 = load i8, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 3), align 2
  %17 = zext i8 %16 to i32
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %4, label %19

19:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap44xx_prm_reconfigure_io_chain() #0 {
  %1 = tail call i32 @omap4_prmst_get_prm_dev_inst() #6
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %59, label %3

3:                                                ; preds = %0
  %4 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 2), align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %6 = shl i32 %1, 16
  %7 = ashr exact i32 %6, 16
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = zext i16 %4 to i32
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !9
  %12 = or i32 %11, 256
  %13 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %14 = getelementptr i8, ptr %13, i32 %7
  %15 = getelementptr i8, ptr %14, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #6, !srcloc !10
  br label %16

16:                                               ; preds = %26, %3
  %17 = phi i32 [ 0, %3 ], [ %28, %26 ]
  %18 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 2), align 4
  %19 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %20 = getelementptr i8, ptr %19, i32 %7
  %21 = zext i16 %18 to i32
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !9
  %24 = and i32 %23, 512
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #6
  %28 = add nuw nsw i32 %17, 1
  %29 = icmp eq i32 %28, 100
  br i1 %29, label %30, label %16

30:                                               ; preds = %26
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #7
  br label %32

32:                                               ; preds = %30, %16
  %33 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 2), align 4
  %34 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %35 = getelementptr i8, ptr %34, i32 %7
  %36 = zext i16 %33 to i32
  %37 = getelementptr i8, ptr %35, i32 %36
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !9
  %39 = and i32 %38, -257
  %40 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %41 = getelementptr i8, ptr %40, i32 %7
  %42 = getelementptr i8, ptr %41, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %39) #6, !srcloc !10
  br label %43

43:                                               ; preds = %53, %32
  %44 = phi i32 [ 0, %32 ], [ %55, %53 ]
  %45 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 2), align 4
  %46 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %47 = getelementptr i8, ptr %46, i32 %7
  %48 = zext i16 %45 to i32
  %49 = getelementptr i8, ptr %47, i32 %48
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #6, !srcloc !9
  %51 = and i32 %50, 512
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %43
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #6
  %55 = add nuw nsw i32 %44, 1
  %56 = icmp eq i32 %55, 100
  br i1 %56, label %57, label %43

57:                                               ; preds = %53
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  br label %59

59:                                               ; preds = %57, %43, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap44xx_prm_read_reset_sources() #0 {
  %1 = tail call i32 @omap4_prmst_get_prm_dev_inst() #6
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %14, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %5 = shl i32 %1, 16
  %6 = ashr exact i32 %5, 16
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  %10 = and i32 %9, 1023
  %11 = shl i32 %9, 1
  %12 = and i32 %11, 2048
  %13 = or i32 %12, %10
  br label %14

14:                                               ; preds = %3, %0
  %15 = phi i32 [ 0, %0 ], [ %13, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @omap44xx_prm_was_any_context_lost_old(i8 noundef zeroext %0, i16 noundef signext %1, i16 noundef zeroext %2) #0 {
  %4 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %0, i16 noundef signext %1, i16 noundef zeroext %2) #6
  %5 = icmp ne i32 %4, 0
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap44xx_prm_clear_context_loss_flags_old(i8 noundef zeroext %0, i16 noundef signext %1, i16 noundef zeroext %2) #0 {
  tail call void @omap4_prminst_write_inst_reg(i32 noundef -1, i8 noundef zeroext %0, i16 noundef signext %1, i16 noundef zeroext %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap44xx_prm_late_init() #0 {
  %1 = load i16, ptr @prm_features, align 2
  %2 = and i16 %1, 1
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %28, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @prm_init_data, align 4
  %6 = getelementptr inbounds %struct.omap_prcm_init_data, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @of_irq_get(ptr noundef %7, i32 noundef 0) #6
  %9 = icmp eq i32 %8, -517
  br i1 %9, label %28, label %10

10:                                               ; preds = %4
  store i32 %8, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 6), align 4
  %11 = tail call i32 @omap4_prmst_get_prm_dev_inst() #6
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %26, label %13

13:                                               ; preds = %10
  %14 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 2), align 4
  %15 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %16 = shl i32 %11, 16
  %17 = ashr exact i32 %16, 16
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = zext i16 %14 to i32
  %20 = getelementptr i8, ptr %18, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !9
  %22 = or i32 %21, 65536
  %23 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %24 = getelementptr i8, ptr %23, i32 %17
  %25 = getelementptr i8, ptr %24, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %22) #6, !srcloc !10
  br label %26

26:                                               ; preds = %13, %10
  %27 = tail call i32 @omap_prcm_register_chain_handler(ptr noundef nonnull @omap4_prcm_irq_setup) #6
  br label %28

28:                                               ; preds = %26, %4, %0
  %29 = phi i32 [ %27, %26 ], [ 0, %0 ], [ -517, %4 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_prminst_assert_hardreset(i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_prminst_deassert_hardreset(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_prminst_is_hardreset_asserted(i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_prminst_global_warm_sw_reset() #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_prm_vp_check_txdone(i8 noundef zeroext %0) #0 {
  %2 = zext i8 %0 to i32
  %3 = getelementptr [3 x %struct.omap4_vp], ptr @omap4_vp, i32 0, i32 %2
  %4 = load i32, ptr %3, align 4
  %5 = trunc i32 %4 to i16
  %6 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext 1, i16 noundef signext 0, i16 noundef zeroext %5) #6
  %7 = getelementptr [3 x %struct.omap4_vp], ptr @omap4_vp, i32 0, i32 %2, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %6
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap4_prm_vp_clear_txdone(i8 noundef zeroext %0) #0 {
  %2 = zext i8 %0 to i32
  %3 = getelementptr [3 x %struct.omap4_vp], ptr @omap4_vp, i32 0, i32 %2
  %4 = getelementptr [3 x %struct.omap4_vp], ptr @omap4_vp, i32 0, i32 %2, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = trunc i32 %6 to i16
  tail call void @omap4_prminst_write_inst_reg(i32 noundef %5, i8 noundef zeroext 1, i16 noundef signext 0, i16 noundef zeroext %7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_prcm_register_chain_handler(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i32 0, i32 33}
!9 = !{i64 2470246}
!10 = !{i64 2469828}
