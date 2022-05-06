; ModuleID = '/llk/IR/arch/arm/mach-omap2/prm_common.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/prm_common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.prm_ll_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.omap_prcm_init_data = type { i32, ptr, i32, i16, i16, i32, ptr, ptr }
%struct.omap_prcm_irq_setup = type { i16, i16, i16, i8, i8, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.omap_prcm_irq = type { ptr, i32, i8 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@prcm_irq_setup = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [53 x i8] c"\013PRCM: IRQ handler not initialized; cannot cleanup\0A\00", align 1
@prcm_irq_chips = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"\013PRCM: already initialized; won't reinitialize\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\013PRCM: nr_regs too large\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"\013PRCM: failed to allocate irq descs: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"PRCM\00", align 1
@prm_base = dso_local local_unnamed_addr global %struct.omap_domain_base zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"\013PRCM: failed to allocate generic chip\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@prm_ll_data = internal unnamed_addr global ptr @null_prm_ll_data, align 4
@prm_read_reset_sources.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"arch/arm/mach-omap2/prm_common.c\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"prm: %s: no mapping function defined for reset sources\0A\00", align 1
@__func__.prm_read_reset_sources = private unnamed_addr constant [23 x i8] c"prm_read_reset_sources\00", align 1
@prm_was_any_context_lost_old.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"prm: %s: no mapping function defined\0A\00", align 1
@__func__.prm_was_any_context_lost_old = private unnamed_addr constant [29 x i8] c"prm_was_any_context_lost_old\00", align 1
@prm_clear_context_loss_flags_old.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.prm_clear_context_loss_flags_old = private unnamed_addr constant [33 x i8] c"prm_clear_context_loss_flags_old\00", align 1
@omap_prm_assert_hardreset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_prm_assert_hardreset = private unnamed_addr constant [26 x i8] c"omap_prm_assert_hardreset\00", align 1
@omap_prm_deassert_hardreset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_prm_deassert_hardreset = private unnamed_addr constant [28 x i8] c"omap_prm_deassert_hardreset\00", align 1
@omap_prm_is_hardreset_asserted.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_prm_is_hardreset_asserted = private unnamed_addr constant [31 x i8] c"omap_prm_is_hardreset_asserted\00", align 1
@omap_prm_reset_system.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_prm_reset_system = private unnamed_addr constant [22 x i8] c"omap_prm_reset_system\00", align 1
@omap_prm_clear_mod_irqs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_prm_clear_mod_irqs = private unnamed_addr constant [24 x i8] c"omap_prm_clear_mod_irqs\00", align 1
@omap_prm_vp_check_txdone.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_prm_vp_check_txdone = private unnamed_addr constant [25 x i8] c"omap_prm_vp_check_txdone\00", align 1
@omap_prm_vp_clear_txdone.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.omap_prm_vp_clear_txdone = private unnamed_addr constant [25 x i8] c"omap_prm_vp_clear_txdone\00", align 1
@null_prm_ll_data = internal global %struct.prm_ll_data zeroinitializer, align 4
@omap_prcm_dt_match_table = internal constant [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3-prcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4-prcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am4_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm814-prcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm814-pllss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dm814_pllss_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm816-prcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-prm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-prm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-scrm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scrm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-prm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap5_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-scrm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scrm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-prm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7_prm_data }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@__initcall__kmod_prm_common__247_817_prm_late_init4 = internal global ptr @prm_late_init, section ".initcall4.init", align 4
@prm_features = dso_local local_unnamed_addr global i16 0, align 2
@am3_prm_data = internal global %struct.omap_prcm_init_data { i32 2, ptr null, i32 0, i16 0, i16 0, i32 0, ptr @am33xx_prm_init, ptr null }, section ".init.data", align 4
@am4_prm_data = internal global %struct.omap_prcm_init_data { i32 2, ptr null, i32 0, i16 0, i16 1, i32 16384, ptr @omap44xx_prm_init, ptr null }, section ".init.data", align 4
@dm814_pllss_data = internal global %struct.omap_prcm_init_data { i32 6, ptr null, i32 0, i16 0, i16 0, i32 0, ptr @am33xx_prm_init, ptr null }, section ".init.data", align 4
@omap3_prm_data = internal global %struct.omap_prcm_init_data { i32 2, ptr null, i32 0, i16 2048, i16 0, i32 0, ptr @omap3xxx_prm_init, ptr null }, section ".init.data", align 4
@omap4_prm_data = internal global %struct.omap_prcm_init_data { i32 2, ptr null, i32 0, i16 0, i16 3, i32 6912, ptr @omap44xx_prm_init, ptr null }, section ".init.data", align 4
@scrm_data = internal global %struct.omap_prcm_init_data { i32 3, ptr null, i32 0, i16 0, i16 0, i32 0, ptr null, ptr null }, section ".init.data", align 4
@omap5_prm_data = internal global %struct.omap_prcm_init_data { i32 2, ptr null, i32 0, i16 0, i16 3, i32 7168, ptr @omap44xx_prm_init, ptr null }, section ".init.data", align 4
@dra7_prm_data = internal global %struct.omap_prcm_init_data { i32 2, ptr null, i32 0, i16 0, i16 1, i32 7424, ptr @omap44xx_prm_init, ptr null }, section ".init.data", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_prm_common__247_817_prm_late_init4], section "llvm.metadata"

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @omap_prcm_event_to_irq(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @prcm_irq_setup, align 4
  %3 = icmp ne ptr %2, null
  %4 = icmp ne ptr %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %2, i32 0, i32 4
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i8 %8, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %2, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %26, %11
  %15 = phi i32 [ 0, %11 ], [ %27, %26 ]
  %16 = getelementptr %struct.omap_prcm_irq, ptr %13, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull %0)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %2, i32 0, i32 14
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.omap_prcm_irq, ptr %13, i32 %15, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %22
  br label %29

26:                                               ; preds = %14
  %27 = add nuw nsw i32 %15, 1
  %28 = icmp eq i32 %27, %9
  br i1 %28, label %29, label %14

29:                                               ; preds = %26, %20, %6, %1
  %30 = phi i32 [ %25, %20 ], [ -2, %1 ], [ -2, %6 ], [ -2, %26 ]
  ret i32 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_prcm_irq_cleanup() local_unnamed_addr #3 {
  %1 = load ptr, ptr @prcm_irq_setup, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %59

5:                                                ; preds = %0
  %6 = load ptr, ptr @prcm_irq_chips, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %1, i32 0, i32 3
  %10 = load i8, ptr %9, align 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %22, %8
  %13 = phi ptr [ %23, %22 ], [ %1, %8 ]
  %14 = phi ptr [ %24, %22 ], [ %6, %8 ]
  %15 = phi i32 [ %26, %22 ], [ 0, %8 ]
  %16 = getelementptr ptr, ptr %14, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  tail call void @irq_remove_generic_chip(ptr noundef nonnull %17, i32 noundef -1, i32 noundef 0, i32 noundef 0) #12
  %20 = load ptr, ptr @prcm_irq_chips, align 4
  %21 = load ptr, ptr @prcm_irq_setup, align 4
  br label %22

22:                                               ; preds = %19, %12
  %23 = phi ptr [ %21, %19 ], [ %13, %12 ]
  %24 = phi ptr [ %20, %19 ], [ %14, %12 ]
  %25 = getelementptr ptr, ptr %24, i32 %15
  store ptr null, ptr %25, align 4
  %26 = add nuw nsw i32 %15, 1
  %27 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %23, i32 0, i32 3
  %28 = load i8, ptr %27, align 2
  %29 = zext i8 %28 to i32
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %12, label %31

31:                                               ; preds = %22, %8
  %32 = phi ptr [ %6, %8 ], [ %24, %22 ]
  tail call void @kfree(ptr noundef %32) #12
  store ptr null, ptr @prcm_irq_chips, align 4
  %33 = load ptr, ptr @prcm_irq_setup, align 4
  br label %34

34:                                               ; preds = %31, %5
  %35 = phi ptr [ %33, %31 ], [ %1, %5 ]
  %36 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %35, i32 0, i32 12
  %37 = load ptr, ptr %36, align 4
  tail call void @kfree(ptr noundef %37) #12
  %38 = load ptr, ptr @prcm_irq_setup, align 4
  %39 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %38, i32 0, i32 12
  store ptr null, ptr %39, align 4
  %40 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %38, i32 0, i32 13
  %41 = load ptr, ptr %40, align 4
  tail call void @kfree(ptr noundef %41) #12
  %42 = load ptr, ptr @prcm_irq_setup, align 4
  %43 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %42, i32 0, i32 13
  store ptr null, ptr %43, align 4
  %44 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %42, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  tail call void @__irq_set_handler(i32 noundef %45, ptr noundef null, i32 noundef 1, ptr noundef null) #12
  %46 = load ptr, ptr @prcm_irq_setup, align 4
  %47 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %46, i32 0, i32 14
  %48 = load i32, ptr %47, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %46, i32 0, i32 3
  %52 = load i8, ptr %51, align 2
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 5
  tail call void @irq_free_descs(i32 noundef %48, i32 noundef %54) #12
  %55 = load ptr, ptr @prcm_irq_setup, align 4
  br label %56

56:                                               ; preds = %50, %34
  %57 = phi ptr [ %55, %50 ], [ %46, %34 ]
  %58 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %57, i32 0, i32 14
  store i32 0, ptr %58, align 4
  br label %59

59:                                               ; preds = %56, %3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_remove_generic_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_free_descs(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @omap_prcm_irq_prepare() local_unnamed_addr #6 {
  %1 = load ptr, ptr @prcm_irq_setup, align 4
  %2 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %1, i32 0, i32 15
  store i8 1, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_prcm_irq_complete() local_unnamed_addr #3 {
  %1 = load ptr, ptr @prcm_irq_setup, align 4
  %2 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %1, i32 0, i32 15
  store i8 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %1, i32 0, i32 16
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %0
  store i8 0, ptr %3, align 1
  %7 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %1, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %1, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10) #12
  br label %11

11:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_prcm_register_chain_handler(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %3 = icmp eq ptr %0, null
  br i1 %3, label %148, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 2
  %7 = zext i8 %6 to i32
  %8 = load ptr, ptr @prcm_irq_setup, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %148

12:                                               ; preds = %4
  %13 = icmp ugt i8 %6, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #11
  br label %148

16:                                               ; preds = %12
  store ptr %0, ptr @prcm_irq_setup, align 4
  %17 = shl nuw nsw i32 %7, 2
  %18 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #13
  store ptr %18, ptr @prcm_irq_chips, align 4
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #13
  %20 = load ptr, ptr @prcm_irq_setup, align 4
  %21 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %20, i32 0, i32 12
  store ptr %19, ptr %21, align 4
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #13
  %23 = load ptr, ptr @prcm_irq_chips, align 4
  %24 = load ptr, ptr @prcm_irq_setup, align 4
  %25 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %24, i32 0, i32 13
  store ptr %22, ptr %25, align 4
  %26 = icmp eq ptr %23, null
  br i1 %26, label %147, label %27

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %24, i32 0, i32 12
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  %31 = icmp eq ptr %22, null
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %147, label %33

33:                                               ; preds = %27
  store i64 0, ptr %2, align 8
  %34 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %0, i32 0, i32 4
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %66, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %0, i32 0, i32 5
  %39 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %0, i32 0, i32 13
  br label %40

40:                                               ; preds = %61, %37
  %41 = phi i8 [ %35, %37 ], [ %62, %61 ]
  %42 = phi i32 [ 0, %37 ], [ %63, %61 ]
  %43 = load ptr, ptr %38, align 4
  %44 = getelementptr %struct.omap_prcm_irq, ptr %43, i32 %42, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 31
  %47 = shl nuw i32 1, %46
  %48 = ashr i32 %45, 5
  %49 = getelementptr [2 x i32], ptr %2, i32 0, i32 %48
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %47, %50
  store i32 %51, ptr %49, align 4
  %52 = getelementptr %struct.omap_prcm_irq, ptr %43, i32 %42, i32 2
  %53 = load i8, ptr %52, align 4, !range !8
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %40
  %56 = load ptr, ptr %39, align 4
  %57 = getelementptr i32, ptr %56, i32 %48
  %58 = load i32, ptr %57, align 4
  %59 = or i32 %58, %47
  store i32 %59, ptr %57, align 4
  %60 = load i8, ptr %34, align 1
  br label %61

61:                                               ; preds = %55, %40
  %62 = phi i8 [ %41, %40 ], [ %60, %55 ]
  %63 = add nuw nsw i32 %42, 1
  %64 = zext i8 %62 to i32
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %40, label %66

66:                                               ; preds = %61, %33
  %67 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %0, i32 0, i32 6
  %68 = load i32, ptr %67, align 4
  tail call void @__irq_set_handler(i32 noundef %68, ptr noundef nonnull @omap_prcm_irq_handler, i32 noundef 1, ptr noundef null) #12
  %69 = load i8, ptr %5, align 2
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 5
  %72 = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef 0, i32 noundef %71, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  %73 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %0, i32 0, i32 14
  store i32 %72, ptr %73, align 4
  %74 = icmp slt i32 %72, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %66
  %76 = load i8, ptr %5, align 2
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %117, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %0, i32 0, i32 1
  %80 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %81 = tail call ptr @irq_alloc_generic_chip(ptr noundef nonnull @.str.4, i32 noundef 1, i32 noundef %72, ptr noundef %80, ptr noundef nonnull @handle_level_irq) #12
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %87

83:                                               ; preds = %66
  %84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %72) #11
  br label %147

85:                                               ; preds = %110, %78
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %147

87:                                               ; preds = %110, %78
  %88 = phi ptr [ %115, %110 ], [ %81, %78 ]
  %89 = phi i32 [ %106, %110 ], [ 0, %78 ]
  %90 = getelementptr inbounds %struct.irq_chip_generic, ptr %88, i32 1, i32 6
  store ptr @irq_gc_ack_set_bit, ptr %90, align 4
  %91 = getelementptr inbounds %struct.irq_chip_generic, ptr %88, i32 1, i32 7
  store ptr @irq_gc_mask_clr_bit, ptr %91, align 4
  %92 = getelementptr inbounds %struct.irq_chip_generic, ptr %88, i32 1, i32 9
  store ptr @irq_gc_mask_set_bit, ptr %92, align 4
  %93 = load i16, ptr %0, align 4
  %94 = zext i16 %93 to i32
  %95 = shl i32 %89, 2
  %96 = add i32 %95, %94
  %97 = getelementptr inbounds %struct.irq_chip_generic, ptr %88, i32 2, i32 17
  store i32 %96, ptr %97, align 4
  %98 = load i16, ptr %79, align 2
  %99 = zext i16 %98 to i32
  %100 = add i32 %95, %99
  %101 = getelementptr inbounds %struct.irq_chip_generic, ptr %88, i32 2, i32 16
  store i32 %100, ptr %101, align 4
  %102 = getelementptr [2 x i32], ptr %2, i32 0, i32 %89
  %103 = load i32, ptr %102, align 4
  tail call void @irq_setup_generic_chip(ptr noundef nonnull %88, i32 noundef %103, i32 noundef 0, i32 noundef 2048, i32 noundef 0) #12
  %104 = load ptr, ptr @prcm_irq_chips, align 4
  %105 = getelementptr ptr, ptr %104, i32 %89
  store ptr %88, ptr %105, align 4
  %106 = add nuw nsw i32 %89, 1
  %107 = load i8, ptr %5, align 2
  %108 = zext i8 %107 to i32
  %109 = icmp ult i32 %106, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %87
  %111 = load i32, ptr %73, align 4
  %112 = shl i32 %106, 5
  %113 = add i32 %111, %112
  %114 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %115 = tail call ptr @irq_alloc_generic_chip(ptr noundef nonnull @.str.4, i32 noundef 1, i32 noundef %113, ptr noundef %114, ptr noundef nonnull @handle_level_irq) #12
  %116 = icmp eq ptr %115, null
  br i1 %116, label %85, label %87

117:                                              ; preds = %87, %75
  %118 = load ptr, ptr @prcm_irq_setup, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %143, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %118, i32 0, i32 4
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i8 %122, 0
  br i1 %124, label %143, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %118, i32 0, i32 5
  %127 = load ptr, ptr %126, align 4
  br label %128

128:                                              ; preds = %140, %125
  %129 = phi i32 [ 0, %125 ], [ %141, %140 ]
  %130 = getelementptr %struct.omap_prcm_irq, ptr %127, i32 %129
  %131 = load ptr, ptr %130, align 4
  %132 = tail call i32 @strcmp(ptr noundef %131, ptr noundef nonnull dereferenceable(3) @.str.6) #12
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %118, i32 0, i32 14
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr %struct.omap_prcm_irq, ptr %127, i32 %129, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = add i32 %138, %136
  br label %143

140:                                              ; preds = %128
  %141 = add nuw nsw i32 %129, 1
  %142 = icmp eq i32 %141, %123
  br i1 %142, label %143, label %128

143:                                              ; preds = %140, %134, %120, %117
  %144 = phi i32 [ %139, %134 ], [ -2, %117 ], [ -2, %120 ], [ -2, %140 ]
  %145 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %0, i32 0, i32 11
  %146 = load ptr, ptr %145, align 4
  tail call void @omap_pcs_legacy_init(i32 noundef %144, ptr noundef %146) #12
  br label %148

147:                                              ; preds = %85, %83, %27, %16
  tail call void @omap_prcm_irq_cleanup()
  br label %148

148:                                              ; preds = %147, %143, %14, %10, %1
  %149 = phi i32 [ -22, %10 ], [ -22, %14 ], [ -12, %147 ], [ 0, %143 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i32 %149
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_prcm_irq_handler(ptr noundef %0) #3 {
  %2 = alloca [2 x i32], align 8
  %3 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 0, ptr %2, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8, !annotation !9
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr @prcm_irq_setup, align 4
  %7 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %6, i32 0, i32 3
  %8 = load i8, ptr %7, align 2
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 5
  %11 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %6, i32 0, i32 15
  %12 = load i8, ptr %11, align 4, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %6, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %6, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  tail call void %16(ptr noundef %18) #12
  %19 = load ptr, ptr @prcm_irq_setup, align 4
  %20 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %19, i32 0, i32 16
  store i8 1, ptr %20, align 1
  %21 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %19, i32 0, i32 15
  %22 = load i8, ptr %21, align 4, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %84

24:                                               ; preds = %14, %1
  %25 = phi ptr [ %6, %1 ], [ %19, %14 ]
  br label %31

26:                                               ; preds = %74, %71
  %27 = load ptr, ptr @prcm_irq_setup, align 4
  %28 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %27, i32 0, i32 15
  %29 = load i8, ptr %28, align 4, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %84

31:                                               ; preds = %26, %24
  %32 = phi ptr [ %27, %26 ], [ %25, %24 ]
  %33 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %32, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  call void %34(ptr noundef nonnull %2) #12
  %35 = call i32 @_find_first_bit_le(ptr noundef nonnull %2, i32 noundef %10) #12
  %36 = icmp slt i32 %35, %10
  br i1 %36, label %37, label %84

37:                                               ; preds = %31
  %38 = load ptr, ptr @prcm_irq_setup, align 4
  %39 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %38, i32 0, i32 3
  %40 = load i8, ptr %39, align 2
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %38, i32 0, i32 13
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi i32 [ 0, %42 ], [ %54, %44 ]
  %46 = getelementptr i32, ptr %2, i32 %45
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %43, align 4
  %49 = getelementptr i32, ptr %48, i32 %45
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, %47
  %52 = getelementptr i32, ptr %3, i32 %45
  store i32 %51, ptr %52, align 4
  %53 = xor i32 %51, %47
  store i32 %53, ptr %46, align 4
  %54 = add nuw nsw i32 %45, 1
  %55 = load i8, ptr %39, align 2
  %56 = zext i8 %55 to i32
  %57 = icmp ult i32 %54, %56
  br i1 %57, label %44, label %58

58:                                               ; preds = %44, %37
  %59 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %10, i32 noundef 0) #12
  %60 = icmp ult i32 %59, %10
  br i1 %60, label %61, label %71

61:                                               ; preds = %61, %58
  %62 = phi i32 [ %69, %61 ], [ %59, %58 ]
  %63 = load ptr, ptr @prcm_irq_setup, align 4
  %64 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %63, i32 0, i32 14
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, %62
  %67 = call i32 @generic_handle_irq(i32 noundef %66) #12
  %68 = add nuw i32 %62, 1
  %69 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %10, i32 noundef %68) #12
  %70 = icmp ult i32 %69, %10
  br i1 %70, label %61, label %71

71:                                               ; preds = %61, %58
  %72 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef %10, i32 noundef 0) #12
  %73 = icmp ult i32 %72, %10
  br i1 %73, label %74, label %26

74:                                               ; preds = %74, %71
  %75 = phi i32 [ %82, %74 ], [ %72, %71 ]
  %76 = load ptr, ptr @prcm_irq_setup, align 4
  %77 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %76, i32 0, i32 14
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, %75
  %80 = call i32 @generic_handle_irq(i32 noundef %79) #12
  %81 = add nuw i32 %75, 1
  %82 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef %10, i32 noundef %81) #12
  %83 = icmp ult i32 %82, %10
  br i1 %83, label %74, label %26

84:                                               ; preds = %31, %26, %14
  %85 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %86(ptr noundef %89) #12
  br label %90

90:                                               ; preds = %88, %84
  %91 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 10
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %92(ptr noundef %95) #12
  br label %96

96:                                               ; preds = %94, %90
  %97 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %98(ptr noundef %99) #12
  %100 = load ptr, ptr @prcm_irq_setup, align 4
  %101 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %100, i32 0, i32 8
  %102 = load ptr, ptr %101, align 4
  call void %102() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_alloc_generic_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_ack_set_bit(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_setup_generic_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_pcs_legacy_init(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @omap2_set_globals_prm(ptr noundef %0) local_unnamed_addr #8 section ".init.text" {
  store ptr %0, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prm_read_reset_sources() local_unnamed_addr #3 {
  %1 = load ptr, ptr @prm_ll_data, align 4
  %2 = load ptr, ptr %1, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i32 %2() #12
  br label %9

6:                                                ; preds = %0
  %7 = load i1, ptr @prm_read_reset_sources.__already_done, align 1
  br i1 %7, label %9, label %8, !prof !10

8:                                                ; preds = %6
  store i1 true, ptr @prm_read_reset_sources.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 377, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.prm_read_reset_sources) #12
  br label %9

9:                                                ; preds = %8, %6, %4
  %10 = phi i32 [ %5, %4 ], [ 4096, %8 ], [ 4096, %6 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @prm_was_any_context_lost_old(i8 noundef zeroext %0, i16 noundef signext %1, i16 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr @prm_ll_data, align 4
  %5 = getelementptr inbounds %struct.prm_ll_data, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call zeroext i1 %6(i8 noundef zeroext %0, i16 noundef signext %1, i16 noundef zeroext %2) #12
  br label %13

10:                                               ; preds = %3
  %11 = load i1, ptr @prm_was_any_context_lost_old.__already_done, align 1
  br i1 %11, label %13, label %12, !prof !10

12:                                               ; preds = %10
  store i1 true, ptr @prm_was_any_context_lost_old.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 402, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.prm_was_any_context_lost_old) #12
  br label %13

13:                                               ; preds = %12, %10, %8
  %14 = phi i1 [ %9, %8 ], [ true, %12 ], [ true, %10 ]
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @prm_clear_context_loss_flags_old(i8 noundef zeroext %0, i16 noundef signext %1, i16 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr @prm_ll_data, align 4
  %5 = getelementptr inbounds %struct.prm_ll_data, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void %6(i8 noundef zeroext %0, i16 noundef signext %1, i16 noundef zeroext %2) #12
  br label %12

9:                                                ; preds = %3
  %10 = load i1, ptr @prm_clear_context_loss_flags_old.__already_done, align 1
  br i1 %10, label %12, label %11, !prof !10

11:                                               ; preds = %9
  store i1 true, ptr @prm_clear_context_loss_flags_old.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 424, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.prm_clear_context_loss_flags_old) #12
  br label %12

12:                                               ; preds = %11, %9, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_prm_assert_hardreset(i8 noundef zeroext %0, i8 noundef zeroext %1, i16 noundef signext %2, i16 noundef zeroext %3) local_unnamed_addr #3 {
  %5 = load ptr, ptr @prm_ll_data, align 4
  %6 = getelementptr inbounds %struct.prm_ll_data, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i1, ptr @omap_prm_assert_hardreset.__already_done, align 1
  br i1 %10, label %14, label %11, !prof !10

11:                                               ; preds = %9
  store i1 true, ptr @omap_prm_assert_hardreset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 440, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.omap_prm_assert_hardreset) #12
  br label %14

12:                                               ; preds = %4
  %13 = tail call i32 %7(i8 noundef zeroext %0, i8 noundef zeroext %1, i16 noundef signext %2, i16 noundef zeroext %3) #12
  br label %14

14:                                               ; preds = %12, %11, %9
  %15 = phi i32 [ %13, %12 ], [ -22, %11 ], [ -22, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_prm_deassert_hardreset(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef signext %3, i16 noundef zeroext %4, i16 noundef zeroext %5) local_unnamed_addr #3 {
  %7 = load ptr, ptr @prm_ll_data, align 4
  %8 = getelementptr inbounds %struct.prm_ll_data, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load i1, ptr @omap_prm_deassert_hardreset.__already_done, align 1
  br i1 %12, label %16, label %13, !prof !10

13:                                               ; preds = %11
  store i1 true, ptr @omap_prm_deassert_hardreset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 463, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.omap_prm_deassert_hardreset) #12
  br label %16

14:                                               ; preds = %6
  %15 = tail call i32 %9(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef signext %3, i16 noundef zeroext %4, i16 noundef zeroext %5) #12
  br label %16

16:                                               ; preds = %14, %13, %11
  %17 = phi i32 [ %15, %14 ], [ -22, %13 ], [ -22, %11 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_prm_is_hardreset_asserted(i8 noundef zeroext %0, i8 noundef zeroext %1, i16 noundef signext %2, i16 noundef zeroext %3) local_unnamed_addr #3 {
  %5 = load ptr, ptr @prm_ll_data, align 4
  %6 = getelementptr inbounds %struct.prm_ll_data, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i1, ptr @omap_prm_is_hardreset_asserted.__already_done, align 1
  br i1 %10, label %14, label %11, !prof !10

11:                                               ; preds = %9
  store i1 true, ptr @omap_prm_is_hardreset_asserted.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 484, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.omap_prm_is_hardreset_asserted) #12
  br label %14

12:                                               ; preds = %4
  %13 = tail call i32 %7(i8 noundef zeroext %0, i8 noundef zeroext %1, i16 noundef signext %2, i16 noundef zeroext %3) #12
  br label %14

14:                                               ; preds = %12, %11, %9
  %15 = phi i32 [ %13, %12 ], [ -22, %11 ], [ -22, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_prm_reconfigure_io_chain() local_unnamed_addr #3 {
  %1 = load ptr, ptr @prcm_irq_setup, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.omap_prcm_irq_setup, ptr %1, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void %5() #12
  br label %8

8:                                                ; preds = %7, %3, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_prm_reset_system() local_unnamed_addr #3 {
  %1 = load ptr, ptr @prm_ll_data, align 4
  %2 = getelementptr inbounds %struct.prm_ll_data, ptr %1, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i1, ptr @omap_prm_reset_system.__already_done, align 1
  br i1 %6, label %8, label %7, !prof !10

7:                                                ; preds = %5
  store i1 true, ptr @omap_prm_reset_system.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 516, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.omap_prm_reset_system) #12
  br label %8

8:                                                ; preds = %7, %5
  ret void

9:                                                ; preds = %0
  tail call void %3() #12
  br label %10

10:                                               ; preds = %10, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !12
  tail call void asm sideeffect "wfe", "~{memory}"() #12, !srcloc !13
  br label %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_prm_clear_mod_irqs(i16 noundef signext %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr @prm_ll_data, align 4
  %5 = getelementptr inbounds %struct.prm_ll_data, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load i1, ptr @omap_prm_clear_mod_irqs.__already_done, align 1
  br i1 %9, label %13, label %10, !prof !10

10:                                               ; preds = %8
  store i1 true, ptr @omap_prm_clear_mod_irqs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 542, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.omap_prm_clear_mod_irqs) #12
  br label %13

11:                                               ; preds = %3
  %12 = tail call i32 %6(i16 noundef signext %0, i8 noundef zeroext %1, i32 noundef %2) #12
  br label %13

13:                                               ; preds = %11, %10, %8
  %14 = phi i32 [ %12, %11 ], [ -22, %10 ], [ -22, %8 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_prm_vp_check_txdone(i8 noundef zeroext %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @prm_ll_data, align 4
  %3 = getelementptr inbounds %struct.prm_ll_data, ptr %2, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i1, ptr @omap_prm_vp_check_txdone.__already_done, align 1
  br i1 %7, label %11, label %8, !prof !10

8:                                                ; preds = %6
  store i1 true, ptr @omap_prm_vp_check_txdone.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 559, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.omap_prm_vp_check_txdone) #12
  br label %11

9:                                                ; preds = %1
  %10 = tail call i32 %4(i8 noundef zeroext %0) #12
  br label %11

11:                                               ; preds = %9, %8, %6
  %12 = phi i32 [ %10, %9 ], [ 0, %8 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_prm_vp_clear_txdone(i8 noundef zeroext %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @prm_ll_data, align 4
  %3 = getelementptr inbounds %struct.prm_ll_data, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i1, ptr @omap_prm_vp_clear_txdone.__already_done, align 1
  br i1 %7, label %10, label %8, !prof !10

8:                                                ; preds = %6
  store i1 true, ptr @omap_prm_vp_clear_txdone.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 576, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.omap_prm_vp_clear_txdone) #12
  br label %10

9:                                                ; preds = %1
  tail call void %4(i8 noundef zeroext %0) #12
  br label %10

10:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @prm_register(ptr noundef %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @prm_ll_data, align 4
  %5 = icmp eq ptr %4, @null_prm_ll_data
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store ptr %0, ptr @prm_ll_data, align 4
  br label %7

7:                                                ; preds = %6, %3, %1
  %8 = phi i32 [ 0, %6 ], [ -22, %1 ], [ -17, %3 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @prm_unregister(ptr noundef readnone %0) local_unnamed_addr #6 {
  %2 = icmp ne ptr %0, null
  %3 = load ptr, ptr @prm_ll_data, align 4
  %4 = icmp eq ptr %3, %0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store ptr @null_prm_ll_data, ptr @prm_ll_data, align 4
  br label %7

7:                                                ; preds = %6, %1
  %8 = phi i32 [ 0, %6 ], [ -22, %1 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap2_prm_base_init() local_unnamed_addr #9 section ".init.text" {
  %1 = alloca ptr, align 4
  %2 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #12
  store ptr null, ptr %1, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !9
  %3 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @omap_prcm_dt_match_table, ptr noundef nonnull %1) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  br label %7

7:                                                ; preds = %37, %5
  %8 = phi ptr [ %3, %5 ], [ %38, %37 ]
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.of_device_id, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @of_address_to_resource(ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %2) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %7
  %15 = load i32, ptr %2, align 4
  %16 = load i32, ptr %6, align 4
  %17 = sub i32 1, %15
  %18 = add i32 %17, %16
  %19 = call ptr @ioremap(i32 noundef %15, i32 noundef %18) #12
  %20 = getelementptr inbounds %struct.omap_prcm_init_data, ptr %11, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = load i32, ptr %11, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.omap_prcm_init_data, ptr %11, i32 0, i32 3
  %25 = load i16, ptr %24, align 4
  %26 = sext i16 %25 to i32
  %27 = getelementptr i8, ptr %19, i32 %26
  store ptr %27, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %28 = load i32, ptr %2, align 4
  %29 = add i32 %28, %26
  store i32 %29, ptr @prm_base, align 4
  br label %30

30:                                               ; preds = %23, %14
  %31 = getelementptr inbounds %struct.omap_prcm_init_data, ptr %11, i32 0, i32 7
  store ptr %8, ptr %31, align 4
  %32 = getelementptr inbounds %struct.omap_prcm_init_data, ptr %11, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = call i32 %33(ptr noundef %11) #12
  br label %37

37:                                               ; preds = %35, %30
  %38 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %8, ptr noundef nonnull @omap_prcm_dt_match_table, ptr noundef nonnull %1) #12
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %7

40:                                               ; preds = %37, %7, %0
  %41 = phi i32 [ 0, %0 ], [ 0, %37 ], [ %12, %7 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #12
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap2_prcm_base_init() local_unnamed_addr #9 section ".init.text" {
  %1 = tail call i32 @omap2_prm_base_init() #14
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 @omap2_cm_base_init() #12
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ %1, %0 ]
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_cm_base_init() local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap_prcm_init() local_unnamed_addr #9 section ".init.text" {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #12
  store ptr null, ptr %1, align 4, !annotation !9
  %2 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @omap_prcm_dt_match_table, ptr noundef nonnull %1) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %14, %0
  %5 = phi ptr [ %15, %14 ], [ %2, %0 ]
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.of_device_id, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.omap_prcm_init_data, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @omap2_clk_provider_init(ptr noundef nonnull %5, i32 noundef %9, ptr noundef null, ptr noundef %11) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %5, ptr noundef nonnull @omap_prcm_dt_match_table, ptr noundef nonnull %1) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %4

17:                                               ; preds = %14, %0
  %18 = call i32 @omap_cm_init() #12
  br label %19

19:                                               ; preds = %17, %4
  %20 = phi i32 [ 0, %17 ], [ %12, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #12
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_provider_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_cm_init() local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @prm_late_init() #9 section ".init.text" {
  %1 = load ptr, ptr @prm_ll_data, align 4
  %2 = getelementptr inbounds %struct.prm_ll_data, ptr %1, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = tail call i32 %3() #12
  br label %7

7:                                                ; preds = %5, %0
  %8 = phi i32 [ %6, %5 ], [ 0, %0 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @am33xx_prm_init(ptr noundef) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @omap44xx_prm_init(ptr noundef) #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @omap3xxx_prm_init(ptr noundef) #4 section ".init.text"

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2154448105}
!12 = !{i64 2154447947}
!13 = !{i64 2154448164}
