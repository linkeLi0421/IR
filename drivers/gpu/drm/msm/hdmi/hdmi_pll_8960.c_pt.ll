; ModuleID = '/llk/IR/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.anon.75 = type { i32, i32 }
%struct.pll_rate = type { i32, i32, [32 x %struct.anon.75] }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.hdmi_pll_8960 = type { ptr, %struct.clk_hw, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.hdmi_phy = type { ptr, ptr, ptr, ptr, ptr, ptr }

@.str.1 = private unnamed_addr constant [9 x i8] c"hdmi_pll\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"HDMI_PLL\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"*ERROR* failed to map pll base\0A\00", align 1
@pll_init = internal global %struct.clk_init_data { ptr @.str.1, ptr @hdmi_pll_ops, ptr @hdmi_pll_parents, ptr null, ptr null, i8 1, i32 8 }, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"*ERROR* failed to register pll clock\0A\00", align 1
@freqtbl = internal unnamed_addr constant <{ { i32, i32, <{ [14 x %struct.anon.75], [18 x %struct.anon.75] }> }, %struct.pll_rate, { i32, i32, <{ [13 x %struct.anon.75], [19 x %struct.anon.75] }> }, { i32, i32, <{ [8 x %struct.anon.75], [24 x %struct.anon.75] }> }, { i32, i32, <{ [14 x %struct.anon.75], [18 x %struct.anon.75] }> }, { i32, i32, <{ [14 x %struct.anon.75], [18 x %struct.anon.75] }> }, { i32, i32, <{ [18 x %struct.anon.75], [14 x %struct.anon.75] }> }, %struct.pll_rate, %struct.pll_rate }> <{ { i32, i32, <{ [14 x %struct.anon.75], [18 x %struct.anon.75] }> } { i32 154000000, i32 14, <{ [14 x %struct.anon.75], [18 x %struct.anon.75] }> <{ [14 x %struct.anon.75] [%struct.anon.75 { i32 8, i32 0 }, %struct.anon.75 { i32 32, i32 8 }, %struct.anon.75 { i32 249, i32 12 }, %struct.anon.75 { i32 2, i32 76 }, %struct.anon.75 { i32 3, i32 80 }, %struct.anon.75 { i32 59, i32 84 }, %struct.anon.75 { i32 0, i32 88 }, %struct.anon.75 { i32 134, i32 92 }, %struct.anon.75 { i32 0, i32 96 }, %struct.anon.75 { i32 13, i32 28 }, %struct.anon.75 { i32 77, i32 32 }, %struct.anon.75 { i32 94, i32 36 }, %struct.anon.75 { i32 66, i32 40 }, %struct.anon.75 { i32 0, i32 44 }], [18 x %struct.anon.75] zeroinitializer }> }, %struct.pll_rate { i32 148500000, i32 27, [32 x %struct.anon.75] [%struct.anon.75 { i32 2, i32 0 }, %struct.anon.75 { i32 2, i32 4 }, %struct.anon.75 { i32 1, i32 8 }, %struct.anon.75 { i32 51, i32 12 }, %struct.anon.75 { i32 44, i32 16 }, %struct.anon.75 { i32 6, i32 20 }, %struct.anon.75 { i32 10, i32 24 }, %struct.anon.75 { i32 118, i32 28 }, %struct.anon.75 { i32 1, i32 32 }, %struct.anon.75 { i32 76, i32 36 }, %struct.anon.75 { i32 192, i32 40 }, %struct.anon.75 { i32 0, i32 44 }, %struct.anon.75 { i32 154, i32 48 }, %struct.anon.75 { i32 0, i32 52 }, %struct.anon.75 { i32 0, i32 56 }, %struct.anon.75 { i32 0, i32 60 }, %struct.anon.75 { i32 16, i32 64 }, %struct.anon.75 { i32 26, i32 68 }, %struct.anon.75 { i32 13, i32 72 }, %struct.anon.75 { i32 230, i32 76 }, %struct.anon.75 { i32 2, i32 80 }, %struct.anon.75 { i32 59, i32 84 }, %struct.anon.75 { i32 0, i32 88 }, %struct.anon.75 { i32 134, i32 92 }, %struct.anon.75 { i32 0, i32 96 }, %struct.anon.75 { i32 51, i32 100 }, %struct.anon.75 { i32 0, i32 104 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer] }, { i32, i32, <{ [13 x %struct.anon.75], [19 x %struct.anon.75] }> } { i32 108000000, i32 13, <{ [13 x %struct.anon.75], [19 x %struct.anon.75] }> <{ [13 x %struct.anon.75] [%struct.anon.75 { i32 8, i32 0 }, %struct.anon.75 { i32 33, i32 8 }, %struct.anon.75 { i32 249, i32 12 }, %struct.anon.75 { i32 28, i32 76 }, %struct.anon.75 { i32 2, i32 80 }, %struct.anon.75 { i32 59, i32 84 }, %struct.anon.75 { i32 134, i32 92 }, %struct.anon.75 { i32 0, i32 96 }, %struct.anon.75 { i32 73, i32 28 }, %struct.anon.75 { i32 73, i32 32 }, %struct.anon.75 { i32 0, i32 36 }, %struct.anon.75 { i32 0, i32 40 }, %struct.anon.75 { i32 0, i32 44 }], [19 x %struct.anon.75] zeroinitializer }> }, { i32, i32, <{ [8 x %struct.anon.75], [24 x %struct.anon.75] }> } { i32 74250000, i32 8, <{ [8 x %struct.anon.75], [24 x %struct.anon.75] }> <{ [8 x %struct.anon.75] [%struct.anon.75 { i32 10, i32 24 }, %struct.anon.75 { i32 18, i32 0 }, %struct.anon.75 { i32 1, i32 8 }, %struct.anon.75 { i32 51, i32 12 }, %struct.anon.75 { i32 118, i32 28 }, %struct.anon.75 { i32 230, i32 76 }, %struct.anon.75 { i32 2, i32 80 }, %struct.anon.75 { i32 59, i32 84 }], [24 x %struct.anon.75] zeroinitializer }> }, { i32, i32, <{ [14 x %struct.anon.75], [18 x %struct.anon.75] }> } { i32 74176000, i32 14, <{ [14 x %struct.anon.75], [18 x %struct.anon.75] }> <{ [14 x %struct.anon.75] [%struct.anon.75 { i32 24, i32 0 }, %struct.anon.75 { i32 32, i32 8 }, %struct.anon.75 { i32 249, i32 12 }, %struct.anon.75 { i32 229, i32 76 }, %struct.anon.75 { i32 2, i32 80 }, %struct.anon.75 { i32 59, i32 84 }, %struct.anon.75 { i32 0, i32 88 }, %struct.anon.75 { i32 134, i32 92 }, %struct.anon.75 { i32 0, i32 96 }, %struct.anon.75 { i32 12, i32 28 }, %struct.anon.75 { i32 76, i32 32 }, %struct.anon.75 { i32 125, i32 36 }, %struct.anon.75 { i32 188, i32 40 }, %struct.anon.75 { i32 0, i32 44 }], [18 x %struct.anon.75] zeroinitializer }> }, { i32, i32, <{ [14 x %struct.anon.75], [18 x %struct.anon.75] }> } { i32 65000000, i32 14, <{ [14 x %struct.anon.75], [18 x %struct.anon.75] }> <{ [14 x %struct.anon.75] [%struct.anon.75 { i32 24, i32 0 }, %struct.anon.75 { i32 32, i32 8 }, %struct.anon.75 { i32 249, i32 12 }, %struct.anon.75 { i32 138, i32 76 }, %struct.anon.75 { i32 2, i32 80 }, %struct.anon.75 { i32 59, i32 84 }, %struct.anon.75 { i32 0, i32 88 }, %struct.anon.75 { i32 134, i32 92 }, %struct.anon.75 { i32 0, i32 96 }, %struct.anon.75 { i32 11, i32 28 }, %struct.anon.75 { i32 75, i32 32 }, %struct.anon.75 { i32 123, i32 36 }, %struct.anon.75 { i32 9, i32 40 }, %struct.anon.75 { i32 0, i32 44 }], [18 x %struct.anon.75] zeroinitializer }> }, { i32, i32, <{ [18 x %struct.anon.75], [14 x %struct.anon.75] }> } { i32 27030000, i32 18, <{ [18 x %struct.anon.75], [14 x %struct.anon.75] }> <{ [18 x %struct.anon.75] [%struct.anon.75 { i32 10, i32 24 }, %struct.anon.75 { i32 56, i32 0 }, %struct.anon.75 { i32 2, i32 4 }, %struct.anon.75 { i32 32, i32 8 }, %struct.anon.75 { i32 255, i32 12 }, %struct.anon.75 { i32 0, i32 28 }, %struct.anon.75 { i32 78, i32 32 }, %struct.anon.75 { i32 215, i32 36 }, %struct.anon.75 { i32 3, i32 40 }, %struct.anon.75 { i32 0, i32 44 }, %struct.anon.75 { i32 42, i32 76 }, %struct.anon.75 { i32 3, i32 80 }, %struct.anon.75 { i32 59, i32 84 }, %struct.anon.75 { i32 0, i32 88 }, %struct.anon.75 { i32 134, i32 92 }, %struct.anon.75 { i32 0, i32 96 }, %struct.anon.75 { i32 51, i32 100 }, %struct.anon.75 { i32 0, i32 104 }], [14 x %struct.anon.75] zeroinitializer }> }, %struct.pll_rate { i32 27000000, i32 27, [32 x %struct.anon.75] [%struct.anon.75 { i32 50, i32 0 }, %struct.anon.75 { i32 2, i32 4 }, %struct.anon.75 { i32 1, i32 8 }, %struct.anon.75 { i32 51, i32 12 }, %struct.anon.75 { i32 44, i32 16 }, %struct.anon.75 { i32 6, i32 20 }, %struct.anon.75 { i32 10, i32 24 }, %struct.anon.75 { i32 123, i32 28 }, %struct.anon.75 { i32 1, i32 32 }, %struct.anon.75 { i32 76, i32 36 }, %struct.anon.75 { i32 192, i32 40 }, %struct.anon.75 { i32 0, i32 44 }, %struct.anon.75 { i32 154, i32 48 }, %struct.anon.75 { i32 0, i32 52 }, %struct.anon.75 { i32 0, i32 56 }, %struct.anon.75 { i32 0, i32 60 }, %struct.anon.75 { i32 16, i32 64 }, %struct.anon.75 { i32 26, i32 68 }, %struct.anon.75 { i32 13, i32 72 }, %struct.anon.75 { i32 42, i32 76 }, %struct.anon.75 { i32 3, i32 80 }, %struct.anon.75 { i32 59, i32 84 }, %struct.anon.75 { i32 0, i32 88 }, %struct.anon.75 { i32 134, i32 92 }, %struct.anon.75 { i32 0, i32 96 }, %struct.anon.75 { i32 51, i32 100 }, %struct.anon.75 { i32 0, i32 104 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer] }, %struct.pll_rate { i32 25200000, i32 27, [32 x %struct.anon.75] [%struct.anon.75 { i32 50, i32 0 }, %struct.anon.75 { i32 2, i32 4 }, %struct.anon.75 { i32 1, i32 8 }, %struct.anon.75 { i32 51, i32 12 }, %struct.anon.75 { i32 44, i32 16 }, %struct.anon.75 { i32 6, i32 20 }, %struct.anon.75 { i32 10, i32 24 }, %struct.anon.75 { i32 119, i32 28 }, %struct.anon.75 { i32 76, i32 32 }, %struct.anon.75 { i32 0, i32 36 }, %struct.anon.75 { i32 192, i32 40 }, %struct.anon.75 { i32 0, i32 44 }, %struct.anon.75 { i32 154, i32 48 }, %struct.anon.75 { i32 0, i32 52 }, %struct.anon.75 { i32 0, i32 56 }, %struct.anon.75 { i32 32, i32 60 }, %struct.anon.75 { i32 16, i32 64 }, %struct.anon.75 { i32 26, i32 68 }, %struct.anon.75 { i32 13, i32 72 }, %struct.anon.75 { i32 244, i32 76 }, %struct.anon.75 { i32 2, i32 80 }, %struct.anon.75 { i32 59, i32 84 }, %struct.anon.75 { i32 0, i32 88 }, %struct.anon.75 { i32 134, i32 92 }, %struct.anon.75 { i32 0, i32 96 }, %struct.anon.75 { i32 51, i32 100 }, %struct.anon.75 { i32 0, i32 104 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer] } }>, align 4
@hdmi_pll_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @hdmi_pll_enable, ptr @hdmi_pll_disable, ptr null, ptr null, ptr null, ptr null, ptr @hdmi_pll_recalc_rate, ptr @hdmi_pll_round_rate, ptr null, ptr null, ptr null, ptr @hdmi_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@hdmi_pll_parents = internal constant [1 x ptr] [ptr @.str.9], align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"rate=%lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"pxo\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_hdmi_pll_8960_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 24, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @msm_ioremap(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  %7 = getelementptr inbounds %struct.hdmi_pll_8960, ptr %3, i32 0, i32 2
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  store ptr %0, ptr %3, align 4
  %10 = getelementptr inbounds %struct.hdmi_pll_8960, ptr %3, i32 0, i32 1
  %11 = getelementptr inbounds %struct.hdmi_pll_8960, ptr %3, i32 0, i32 1, i32 2
  store ptr @pll_init, ptr %11, align 4
  %12 = tail call ptr @devm_clk_register(ptr noundef %2, ptr noundef %10) #4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %9, %5
  %15 = phi ptr [ @.str.4, %5 ], [ @.str.5, %9 ]
  %16 = phi i32 [ -12, %5 ], [ -22, %9 ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef nonnull %15) #4
  br label %17

17:                                               ; preds = %14, %9, %1
  %18 = phi i32 [ -12, %1 ], [ 0, %9 ], [ %16, %14 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_pll_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #4
  %6 = getelementptr i8, ptr %0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 72
  tail call void @msm_writel(i32 noundef 141, ptr noundef %8) #4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 64
  tail call void @msm_writel(i32 noundef 16, ptr noundef %10) #4
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 68
  tail call void @msm_writel(i32 noundef 26, ptr noundef %12) #4
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #4
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr i8, ptr %14, i32 72
  tail call void @msm_writel(i32 noundef 13, ptr noundef %15) #4
  %16 = getelementptr inbounds %struct.hdmi_phy, ptr %5, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 48
  %19 = tail call i32 @msm_readl(ptr noundef %18) #4
  %20 = or i32 %19, 32
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr i8, ptr %21, i32 48
  tail call void @msm_writel(i32 noundef %20, ptr noundef %22) #4
  %23 = and i32 %19, -33
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #4
  %25 = load ptr, ptr %16, align 4
  %26 = getelementptr i8, ptr %25, i32 48
  tail call void @msm_writel(i32 noundef %23, ptr noundef %26) #4
  %27 = load ptr, ptr %16, align 4
  %28 = getelementptr i8, ptr %27, i32 8
  tail call void @msm_writel(i32 noundef 63, ptr noundef %28) #4
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr i8, ptr %29, i32 48
  %31 = tail call i32 @msm_readl(ptr noundef %30) #4
  %32 = or i32 %31, 128
  %33 = load ptr, ptr %16, align 4
  %34 = getelementptr i8, ptr %33, i32 48
  tail call void @msm_writel(i32 noundef %32, ptr noundef %34) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #4
  %36 = load ptr, ptr %6, align 4
  %37 = getelementptr i8, ptr %36, i32 24
  %38 = tail call i32 @msm_readl(ptr noundef %37) #4
  %39 = and i32 %38, -11
  %40 = or i32 %39, 8
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr i8, ptr %41, i32 24
  tail call void @msm_writel(i32 noundef %40, ptr noundef %42) #4
  %43 = load ptr, ptr %16, align 4
  %44 = getelementptr i8, ptr %43, i32 8
  tail call void @msm_writel(i32 noundef 128, ptr noundef %44) #4
  br label %45

45:                                               ; preds = %64, %1
  %46 = phi i32 [ 9, %1 ], [ %66, %64 ]
  %47 = phi i32 [ 1000, %1 ], [ %65, %64 ]
  %48 = load ptr, ptr %6, align 4
  %49 = getelementptr i8, ptr %48, i32 152
  %50 = tail call i32 @msm_readl(ptr noundef %49) #4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %45
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #4
  %55 = add i32 %47, -1
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %6, align 4
  %59 = getelementptr i8, ptr %58, i32 72
  tail call void @msm_writel(i32 noundef 141, ptr noundef %59) #4
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 2147480) #4
  %61 = load ptr, ptr %6, align 4
  %62 = getelementptr i8, ptr %61, i32 72
  tail call void @msm_writel(i32 noundef 13, ptr noundef %62) #4
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 75161800) #4
  br label %64

64:                                               ; preds = %57, %53
  %65 = phi i32 [ %55, %53 ], [ 1000, %57 ]
  %66 = add nsw i32 %46, -1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %45

68:                                               ; preds = %64, %45
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdmi_pll_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #4
  %6 = getelementptr inbounds %struct.hdmi_phy, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 48
  %9 = tail call i32 @msm_readl(ptr noundef %8) #4
  %10 = and i32 %9, -129
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 48
  tail call void @msm_writel(i32 noundef %10, ptr noundef %12) #4
  %13 = getelementptr i8, ptr %0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 24
  %16 = tail call i32 @msm_readl(ptr noundef %15) #4
  %17 = and i32 %16, -161
  %18 = or i32 %17, 32
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr i8, ptr %19, i32 24
  tail call void @msm_writel(i32 noundef %18, ptr noundef %20) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @hdmi_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 16
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @hdmi_pll_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #3 {
  %4 = icmp ugt i32 %1, 148500000
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = icmp ugt i32 %1, 108000000
  br i1 %6, label %20, label %7

7:                                                ; preds = %5
  %8 = icmp ugt i32 %1, 74250000
  br i1 %8, label %20, label %9

9:                                                ; preds = %7
  %10 = icmp ugt i32 %1, 74176000
  br i1 %10, label %20, label %11

11:                                               ; preds = %9
  %12 = icmp ugt i32 %1, 65000000
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = icmp ugt i32 %1, 27030000
  br i1 %14, label %20, label %15

15:                                               ; preds = %13
  %16 = icmp ugt i32 %1, 27000000
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = icmp ugt i32 %1, 25200000
  %19 = select i1 %18, i32 7, i32 8
  br label %20

20:                                               ; preds = %17, %15, %13, %11, %9, %7, %5, %3
  %21 = phi i32 [ 0, %3 ], [ 1, %5 ], [ 2, %7 ], [ 3, %9 ], [ 4, %11 ], [ 5, %13 ], [ 6, %15 ], [ %19, %17 ]
  %22 = getelementptr [9 x %struct.pll_rate], ptr @freqtbl, i32 0, i32 %21
  %23 = load i32, ptr %22, align 4
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_pll_set_rate(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp ugt i32 %1, 148500000
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = icmp ugt i32 %1, 108000000
  br i1 %6, label %20, label %7

7:                                                ; preds = %5
  %8 = icmp ugt i32 %1, 74250000
  br i1 %8, label %20, label %9

9:                                                ; preds = %7
  %10 = icmp ugt i32 %1, 74176000
  br i1 %10, label %20, label %11

11:                                               ; preds = %9
  %12 = icmp ugt i32 %1, 65000000
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = icmp ugt i32 %1, 27030000
  br i1 %14, label %20, label %15

15:                                               ; preds = %13
  %16 = icmp ugt i32 %1, 27000000
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = icmp ugt i32 %1, 25200000
  %19 = select i1 %18, i32 7, i32 8
  br label %20

20:                                               ; preds = %17, %15, %13, %11, %9, %7, %5, %3
  %21 = phi i32 [ 0, %3 ], [ 1, %5 ], [ 2, %7 ], [ 3, %9 ], [ 4, %11 ], [ 5, %13 ], [ 6, %15 ], [ %19, %17 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %1) #4
  %22 = getelementptr [9 x %struct.pll_rate], ptr @freqtbl, i32 0, i32 %21, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %0, i32 12
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i32 [ 0, %25 ], [ %35, %27 ]
  %29 = getelementptr [9 x %struct.pll_rate], ptr @freqtbl, i32 0, i32 %21, i32 2, i32 %28
  %30 = getelementptr [9 x %struct.pll_rate], ptr @freqtbl, i32 0, i32 %21, i32 2, i32 %28, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %29, align 4
  %33 = load ptr, ptr %26, align 4
  %34 = getelementptr i8, ptr %33, i32 %31
  tail call void @msm_writel(i32 noundef %32, ptr noundef %34) #4
  %35 = add nuw nsw i32 %28, 1
  %36 = icmp eq i32 %35, %23
  br i1 %36, label %37, label %27

37:                                               ; preds = %27, %20
  %38 = getelementptr i8, ptr %0, i32 16
  store i32 %1, ptr %38, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2155723212}
!9 = !{i64 2155726994}
