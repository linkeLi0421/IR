; ModuleID = '/llk/IR/drivers/clk/tegra/clk.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_cpu_car_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_clk_periph_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.tegra_clk_duplicate = type { i32, %struct.clk_lookup }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.tegra_clk_init_table = type { i32, i32, i32, i32 }
%struct.tegra_devclk = type { i32, ptr, ptr }
%struct.tegra_clk = type { i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@dummy_car_ops = internal global %struct.tegra_cpu_car_ops zeroinitializer, align 4
@tegra_cpu_car_ops = dso_local local_unnamed_addr global ptr @dummy_car_ops, align 4
@periph_banks = internal unnamed_addr global i32 0, align 4
@periph_regs = internal constant [7 x %struct.tegra_clk_periph_regs] [%struct.tegra_clk_periph_regs { i32 16, i32 800, i32 804, i32 4, i32 768, i32 772 }, %struct.tegra_clk_periph_regs { i32 20, i32 808, i32 812, i32 8, i32 776, i32 780 }, %struct.tegra_clk_periph_regs { i32 24, i32 816, i32 820, i32 12, i32 784, i32 788 }, %struct.tegra_clk_periph_regs { i32 864, i32 1088, i32 1092, i32 856, i32 1072, i32 1076 }, %struct.tegra_clk_periph_regs { i32 868, i32 1096, i32 1100, i32 860, i32 1080, i32 1084 }, %struct.tegra_clk_periph_regs { i32 640, i32 644, i32 648, i32 652, i32 656, i32 660 }, %struct.tegra_clk_periph_regs { i32 664, i32 668, i32 672, i32 676, i32 680, i32 684 }], align 4
@.str = private unnamed_addr constant [24 x i8] c"drivers/clk/tegra/clk.c\00", align 1
@clk_base = internal unnamed_addr global ptr null, align 4
@periph_state_ctx = internal unnamed_addr global ptr null, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@periph_clk_enb_refcnt = dso_local local_unnamed_addr global ptr null, align 4
@clks = internal unnamed_addr global ptr null, align 4
@clk_num = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"\013%s: invalid entry %ld in clks array for id %d\0A\00", align 1
@__func__.tegra_init_from_table = private unnamed_addr constant [22 x i8] c"tegra_init_from_table\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"\013%s: Failed to set parent %s of %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"\013%s: Failed to set rate %lu of %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\013%s: Failed to enable %s\0A\00", align 1
@tegra_car_np = internal unnamed_addr global ptr null, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"\013Tegra clk %d: register failed with %ld\0A\00", align 1
@clk_data = internal global %struct.clk_onecell_data zeroinitializer, align 4
@rst_ctlr = internal global %struct.reset_controller_dev { ptr @rst_ops, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, i32 1, ptr null, i32 0 }, align 4
@num_special_reset = internal unnamed_addr global i32 0, align 4
@special_reset_assert = internal unnamed_addr global ptr null, align 4
@special_reset_deassert = internal unnamed_addr global ptr null, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"tegra-clk-debug\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"tegra_clk_%s\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"\013%s: failed to create device for %pOF\0A\00", align 1
@__func__.tegra_clk_dev_register = private unnamed_addr constant [23 x i8] c"tegra_clk_dev_register\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"failed to find device for %pOF\0A\00", align 1
@__initcall__kmod_clk__167_455_tegra_clocks_apply_init_table3 = internal global ptr @tegra_clocks_apply_init_table, section ".initcall3.init", align 4
@tegra_clk_apply_init_table = dso_local local_unnamed_addr global ptr null, align 4
@rst_ops = internal constant %struct.reset_control_ops { ptr @tegra_clk_rst_reset, ptr @tegra_clk_rst_assert, ptr @tegra_clk_rst_deassert, ptr null }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_clk__167_455_tegra_clocks_apply_init_table3], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_reg_bank(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sdiv i32 %0, 32
  %3 = load i32, ptr @periph_banks, align 4
  %4 = icmp slt i32 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr [7 x %struct.tegra_clk_periph_regs], ptr @periph_regs, i32 0, i32 %2
  br label %8

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 159, i32 noundef 9, ptr noundef null) #9
  br label %8

8:                                                ; preds = %7, %5
  %9 = phi ptr [ %6, %5 ], [ null, %7 ]
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_clk_set_pllp_out_cpu(i1 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @clk_base, align 4
  %3 = getelementptr i8, ptr %2, i32 664
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  %5 = and i32 %4, 2147483647
  %6 = select i1 %0, i32 -2147483648, i32 0
  %7 = or i32 %5, %6
  %8 = load ptr, ptr @clk_base, align 4
  %9 = getelementptr i8, ptr %8, i32 664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_clk_periph_suspend() local_unnamed_addr #0 {
  %1 = load i32, ptr @periph_banks, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %31, label %5

3:                                                ; preds = %5
  %4 = icmp eq i32 %15, 0
  br i1 %4, label %31, label %17

5:                                                ; preds = %5, %0
  %6 = phi i32 [ %14, %5 ], [ 0, %0 ]
  %7 = load ptr, ptr @clk_base, align 4
  %8 = getelementptr [7 x %struct.tegra_clk_periph_regs], ptr @periph_regs, i32 0, i32 %6
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !8
  %12 = load ptr, ptr @periph_state_ctx, align 4
  %13 = getelementptr i32, ptr %12, i32 %6
  store i32 %11, ptr %13, align 4
  %14 = add nuw i32 %6, 1
  %15 = load i32, ptr @periph_banks, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %5, label %3

17:                                               ; preds = %17, %3
  %18 = phi i32 [ %27, %17 ], [ 0, %3 ]
  %19 = phi i32 [ %28, %17 ], [ %14, %3 ]
  %20 = load ptr, ptr @clk_base, align 4
  %21 = getelementptr [7 x %struct.tegra_clk_periph_regs], ptr @periph_regs, i32 0, i32 %18, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %20, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !8
  %25 = load ptr, ptr @periph_state_ctx, align 4
  %26 = getelementptr i32, ptr %25, i32 %19
  store i32 %24, ptr %26, align 4
  %27 = add nuw i32 %18, 1
  %28 = add i32 %19, 1
  %29 = load i32, ptr @periph_banks, align 4
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %17, label %31

31:                                               ; preds = %17, %3, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_clk_periph_resume() local_unnamed_addr #0 {
  %1 = load i32, ptr @periph_banks, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %15, label %3

3:                                                ; preds = %3, %0
  %4 = phi i32 [ %12, %3 ], [ 0, %0 ]
  %5 = load ptr, ptr @periph_state_ctx, align 4
  %6 = getelementptr i32, ptr %5, i32 %4
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr @clk_base, align 4
  %9 = getelementptr [7 x %struct.tegra_clk_periph_regs], ptr @periph_regs, i32 0, i32 %4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %7) #9, !srcloc !9
  %12 = add nuw i32 %4, 1
  %13 = load i32, ptr @periph_banks, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %3, label %15

15:                                               ; preds = %3, %0
  %16 = phi i32 [ 0, %0 ], [ %12, %3 ]
  %17 = load ptr, ptr @clk_base, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 1073740) #9
  %20 = load i32, ptr @periph_banks, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %22, %15
  %23 = phi i32 [ %32, %22 ], [ 0, %15 ]
  %24 = phi i32 [ %33, %22 ], [ %16, %15 ]
  %25 = load ptr, ptr @periph_state_ctx, align 4
  %26 = getelementptr i32, ptr %25, i32 %24
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr @clk_base, align 4
  %29 = getelementptr [7 x %struct.tegra_clk_periph_regs], ptr @periph_regs, i32 0, i32 %23, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i8, ptr %28, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %27) #9, !srcloc !9
  %32 = add nuw i32 %23, 1
  %33 = add i32 %24, 1
  %34 = load i32, ptr @periph_banks, align 4
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %22, label %36

36:                                               ; preds = %22, %15
  %37 = load ptr, ptr @clk_base, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 429496) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 section ".init.text" {
  store ptr %0, ptr @clk_base, align 4
  %4 = icmp ugt i32 %2, 7
  br i1 %4, label %5, label %6, !prof !12

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef null) #9
  br label %31

6:                                                ; preds = %3
  %7 = shl nuw nsw i32 %2, 7
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #10
  store ptr %8, ptr @periph_clk_enb_refcnt, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %6
  store i32 %2, ptr @periph_banks, align 4
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #9
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %13, label %14, !prof !12

13:                                               ; preds = %10
  store ptr null, ptr @clks, align 4
  br label %20

14:                                               ; preds = %10
  %15 = extractvalue { i32, i1 } %11, 0
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #10
  store ptr %16, ptr @clks, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ %19, %18 ], [ %8, %13 ]
  tail call void @kfree(ptr noundef %21) #9
  br label %31

22:                                               ; preds = %14
  store i32 %1, ptr @clk_num, align 4
  %23 = shl nuw nsw i32 %2, 3
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #10
  store ptr %24, ptr @periph_state_ctx, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @clks, align 4
  br label %31

28:                                               ; preds = %22
  %29 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  tail call void @kfree(ptr noundef %29) #9
  %30 = load ptr, ptr @clks, align 4
  tail call void @kfree(ptr noundef %30) #9
  br label %31

31:                                               ; preds = %28, %26, %20, %6, %5
  %32 = phi ptr [ null, %5 ], [ null, %28 ], [ null, %20 ], [ null, %6 ], [ %27, %26 ]
  ret ptr %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @tegra_init_dup_clks(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 section ".init.text" {
  %4 = load i32, ptr %0, align 4
  %5 = icmp slt i32 %4, %2
  br i1 %5, label %6, label %16

6:                                                ; preds = %6, %3
  %7 = phi i32 [ %14, %6 ], [ %4, %3 ]
  %8 = phi ptr [ %13, %6 ], [ %0, %3 ]
  %9 = getelementptr ptr, ptr %1, i32 %7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tegra_clk_duplicate, ptr %8, i32 0, i32 1
  %12 = getelementptr inbounds %struct.tegra_clk_duplicate, ptr %8, i32 0, i32 1, i32 3
  store ptr %10, ptr %12, align 4
  tail call void @clkdev_add(ptr noundef %11) #9
  %13 = getelementptr %struct.tegra_clk_duplicate, ptr %8, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp slt i32 %14, %2
  br i1 %15, label %6, label %16

16:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdev_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_init_from_table(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp ult i32 %4, %2
  br i1 %5, label %6, label %61

6:                                                ; preds = %57, %3
  %7 = phi i32 [ %59, %57 ], [ %4, %3 ]
  %8 = phi ptr [ %58, %57 ], [ %0, %3 ]
  %9 = getelementptr ptr, ptr %1, i32 %7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = ptrtoint ptr %10 to i32
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tegra_init_from_table, i32 noundef %15, i32 noundef %7) #11
  br label %55

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.tegra_clk_init_table, ptr %8, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, %2
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = getelementptr ptr, ptr %1, i32 %19
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @clk_set_parent(ptr noundef nonnull %10, ptr noundef %23) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = tail call ptr @__clk_get_name(ptr noundef %23) #9
  %28 = tail call ptr @__clk_get_name(ptr noundef nonnull %10) #9
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tegra_init_from_table, ptr noundef %27, ptr noundef %28) #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 290, i32 noundef 9, ptr noundef null) #9
  br label %30

30:                                               ; preds = %26, %21, %17
  %31 = getelementptr inbounds %struct.tegra_clk_init_table, ptr %8, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @clk_set_rate(ptr noundef nonnull %10, i32 noundef %32) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %31, align 4
  %39 = tail call ptr @__clk_get_name(ptr noundef nonnull %10) #9
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.tegra_init_from_table, i32 noundef %38, ptr noundef %39) #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 299, i32 noundef 9, ptr noundef null) #9
  br label %41

41:                                               ; preds = %37, %34, %30
  %42 = getelementptr inbounds %struct.tegra_clk_init_table, ptr %8, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %41
  %46 = tail call i32 @clk_prepare(ptr noundef nonnull %10) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = tail call i32 @clk_enable(ptr noundef nonnull %10) #9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  tail call void @clk_unprepare(ptr noundef nonnull %10) #9
  br label %52

52:                                               ; preds = %51, %45
  %53 = tail call ptr @__clk_get_name(ptr noundef nonnull %10) #9
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tegra_init_from_table, ptr noundef %53) #11
  br label %55

55:                                               ; preds = %52, %14
  %56 = phi i32 [ 306, %52 ], [ 279, %14 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %56, i32 noundef 9, ptr noundef null) #9
  br label %57

57:                                               ; preds = %55, %48, %41
  %58 = getelementptr %struct.tegra_clk_init_table, ptr %8, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp ult i32 %59, %2
  br i1 %60, label %6, label %61

61:                                               ; preds = %57, %3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @tegra_add_of_provider(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 section ".init.text" {
  store ptr %0, ptr @tegra_car_np, align 4
  %3 = load i32, ptr @clk_num, align 4
  %4 = icmp sgt i32 %3, 0
  %5 = load ptr, ptr @clks, align 4
  br i1 %4, label %6, label %28

6:                                                ; preds = %24, %2
  %7 = phi ptr [ %20, %24 ], [ %5, %2 ]
  %8 = phi i32 [ %25, %24 ], [ 0, %2 ]
  %9 = getelementptr ptr, ptr %7, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = ptrtoint ptr %10 to i32
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %8, i32 noundef %13) #11
  %15 = load ptr, ptr @clks, align 4
  %16 = getelementptr ptr, ptr %15, i32 %8
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %12, %6
  %19 = phi ptr [ %17, %12 ], [ %10, %6 ]
  %20 = phi ptr [ %15, %12 ], [ %7, %6 ]
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = getelementptr ptr, ptr %20, i32 %8
  store ptr inttoptr (i32 -22 to ptr), ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = add nuw nsw i32 %8, 1
  %26 = load i32, ptr @clk_num, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %6, label %28

28:                                               ; preds = %24, %2
  %29 = phi ptr [ %5, %2 ], [ %20, %24 ]
  %30 = phi i32 [ %3, %2 ], [ %26, %24 ]
  store ptr %29, ptr @clk_data, align 4
  store i32 %30, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %31 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @clk_data) #9
  store ptr %0, ptr getelementptr inbounds (%struct.reset_controller_dev, ptr @rst_ctlr, i32 0, i32 5), align 4
  %32 = load i32, ptr @periph_banks, align 4
  %33 = shl i32 %32, 5
  %34 = load i32, ptr @num_special_reset, align 4
  %35 = add i32 %33, %34
  store i32 %35, ptr getelementptr inbounds (%struct.reset_controller_dev, ptr @rst_ctlr, i32 0, i32 8), align 4
  %36 = tail call i32 @reset_controller_register(ptr noundef nonnull @rst_ctlr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tegra_init_special_resets(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 section ".init.text" {
  store i32 %0, ptr @num_special_reset, align 4
  store ptr %1, ptr @special_reset_assert, align 4
  store ptr %2, ptr @special_reset_deassert, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_register_devclks(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %9, %2
  %5 = load i32, ptr @clk_num, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %43

7:                                                ; preds = %4
  %8 = load ptr, ptr @clks, align 4
  br label %24

9:                                                ; preds = %9, %2
  %10 = phi i32 [ %21, %9 ], [ 0, %2 ]
  %11 = phi ptr [ %22, %9 ], [ %0, %2 ]
  %12 = load ptr, ptr @clks, align 4
  %13 = load i32, ptr %11, align 4
  %14 = getelementptr ptr, ptr %12, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tegra_devclk, ptr %11, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tegra_devclk, ptr %11, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @clk_register_clkdev(ptr noundef %15, ptr noundef %17, ptr noundef %19) #9
  %21 = add nuw nsw i32 %10, 1
  %22 = getelementptr %struct.tegra_devclk, ptr %11, i32 1
  %23 = icmp eq i32 %21, %1
  br i1 %23, label %4, label %9

24:                                               ; preds = %38, %7
  %25 = phi i32 [ %39, %38 ], [ %5, %7 ]
  %26 = phi ptr [ %40, %38 ], [ %8, %7 ]
  %27 = phi i32 [ %41, %38 ], [ 0, %7 ]
  %28 = getelementptr ptr, ptr %26, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  %32 = or i1 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %24
  %34 = tail call ptr @__clk_get_name(ptr noundef nonnull %29) #9
  %35 = tail call i32 @clk_register_clkdev(ptr noundef nonnull %29, ptr noundef %34, ptr noundef nonnull @.str.6) #9
  %36 = load ptr, ptr @clks, align 4
  %37 = load i32, ptr @clk_num, align 4
  br label %38

38:                                               ; preds = %33, %24
  %39 = phi i32 [ %25, %24 ], [ %37, %33 ]
  %40 = phi ptr [ %26, %24 ], [ %36, %33 ]
  %41 = add nuw nsw i32 %27, 1
  %42 = icmp slt i32 %41, %39
  br i1 %42, label %24, label %43

43:                                               ; preds = %38, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @tegra_lookup_dt_id(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 section ".init.text" {
  %3 = getelementptr %struct.tegra_clk, ptr %1, i32 %0, i32 1
  %4 = load i8, ptr %3, align 4, !range !13
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.tegra_clk, ptr %1, i32 %0
  %8 = load ptr, ptr @clks, align 4
  %9 = load i32, ptr %7, align 4
  %10 = getelementptr ptr, ptr %8, i32 %9
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi ptr [ %10, %6 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_dev_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call noalias ptr @kstrdup(ptr noundef %4, i32 noundef 3264) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @strreplace(ptr noundef nonnull %5, i8 noundef zeroext 95, i8 noundef zeroext 45) #9
  %9 = load ptr, ptr @tegra_car_np, align 4
  %10 = tail call ptr @of_get_next_child(ptr noundef %9, ptr noundef null) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %17, %7
  %13 = phi ptr [ %19, %17 ], [ %10, %7 ]
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull %5) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr @tegra_car_np, align 4
  %19 = tail call ptr @of_get_next_child(ptr noundef %18, ptr noundef nonnull %13) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %12

21:                                               ; preds = %17, %12, %7
  %22 = phi ptr [ null, %7 ], [ null, %17 ], [ %13, %12 ]
  tail call void @kfree(ptr noundef nonnull %5) #9
  br label %23

23:                                               ; preds = %21, %1
  %24 = phi ptr [ %22, %21 ], [ null, %1 ]
  %25 = tail call zeroext i1 @of_device_is_available(ptr noundef %24) #9
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = load ptr, ptr %2, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.7, ptr noundef %28) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr @tegra_car_np, align 4
  %33 = tail call ptr @of_find_device_by_node(ptr noundef %32) #9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  %37 = tail call ptr @of_platform_device_create(ptr noundef %24, ptr noundef nonnull %29, ptr noundef %36) #9
  tail call void @put_device(ptr noundef %36) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tegra_clk_dev_register, ptr noundef %24) #11
  br label %45

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  tail call void @pm_runtime_enable(ptr noundef %42) #9
  br label %45

43:                                               ; preds = %31
  %44 = load ptr, ptr @tegra_car_np, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 433, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %44) #9
  br label %45

45:                                               ; preds = %43, %41, %39
  %46 = phi ptr [ %42, %41 ], [ null, %39 ], [ null, %43 ]
  tail call void @kfree(ptr noundef nonnull %29) #9
  br label %47

47:                                               ; preds = %45, %26, %23
  %48 = phi ptr [ %46, %45 ], [ null, %26 ], [ null, %23 ]
  tail call void @of_node_put(ptr noundef %24) #9
  %49 = tail call ptr @clk_register(ptr noundef %48, ptr noundef %0) #9
  ret ptr %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_platform_device_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_clocks_apply_init_table() #2 section ".init.text" {
  %1 = load ptr, ptr @tegra_clk_apply_init_table, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void %1() #9
  br label %4

4:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_clk_rst_reset(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = tail call i32 @tegra_read_chipid() #9
  %4 = load i32, ptr @periph_banks, align 4
  %5 = shl i32 %4, 5
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = and i32 %1, 31
  %9 = shl nuw i32 1, %8
  %10 = load ptr, ptr @clk_base, align 4
  %11 = lshr i32 %1, 5
  %12 = getelementptr [7 x %struct.tegra_clk_periph_regs], ptr @periph_regs, i32 0, i32 %11, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %10, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %9) #9, !srcloc !9
  br label %23

15:                                               ; preds = %2
  %16 = load i32, ptr @num_special_reset, align 4
  %17 = add i32 %16, %5
  %18 = icmp ugt i32 %17, %1
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = load ptr, ptr @special_reset_assert, align 4
  %21 = tail call i32 %20(i32 noundef %1) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %19, %7
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #9
  %25 = load i32, ptr @periph_banks, align 4
  %26 = shl i32 %25, 5
  %27 = icmp ugt i32 %26, %1
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = and i32 %1, 31
  %30 = shl nuw i32 1, %29
  %31 = load ptr, ptr @clk_base, align 4
  %32 = lshr i32 %1, 5
  %33 = getelementptr [7 x %struct.tegra_clk_periph_regs], ptr @periph_regs, i32 0, i32 %32, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %31, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %30) #9, !srcloc !9
  br label %43

36:                                               ; preds = %23
  %37 = load i32, ptr @num_special_reset, align 4
  %38 = add i32 %37, %26
  %39 = icmp ugt i32 %38, %1
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load ptr, ptr @special_reset_deassert, align 4
  %42 = tail call i32 %41(i32 noundef %1) #9
  br label %43

43:                                               ; preds = %40, %36, %28, %19, %15
  %44 = phi i32 [ %21, %19 ], [ 0, %28 ], [ %42, %40 ], [ -22, %36 ], [ -22, %15 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_clk_rst_assert(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = tail call i32 @tegra_read_chipid() #9
  %4 = load i32, ptr @periph_banks, align 4
  %5 = shl i32 %4, 5
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = and i32 %1, 31
  %9 = shl nuw i32 1, %8
  %10 = load ptr, ptr @clk_base, align 4
  %11 = lshr i32 %1, 5
  %12 = getelementptr [7 x %struct.tegra_clk_periph_regs], ptr @periph_regs, i32 0, i32 %11, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %10, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %9) #9, !srcloc !9
  br label %22

15:                                               ; preds = %2
  %16 = load i32, ptr @num_special_reset, align 4
  %17 = add i32 %16, %5
  %18 = icmp ugt i32 %17, %1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load ptr, ptr @special_reset_assert, align 4
  %21 = tail call i32 %20(i32 noundef %1) #9
  br label %22

22:                                               ; preds = %19, %15, %7
  %23 = phi i32 [ 0, %7 ], [ %21, %19 ], [ -22, %15 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_clk_rst_deassert(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @periph_banks, align 4
  %4 = shl i32 %3, 5
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = and i32 %1, 31
  %8 = shl nuw i32 1, %7
  %9 = load ptr, ptr @clk_base, align 4
  %10 = lshr i32 %1, 5
  %11 = getelementptr [7 x %struct.tegra_clk_periph_regs], ptr @periph_regs, i32 0, i32 %10, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %9, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %8) #9, !srcloc !9
  br label %21

14:                                               ; preds = %2
  %15 = load i32, ptr @num_special_reset, align 4
  %16 = add i32 %15, %4
  %17 = icmp ugt i32 %16, %1
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load ptr, ptr @special_reset_deassert, align 4
  %20 = tail call i32 %19(i32 noundef %1) #9
  br label %21

21:                                               ; preds = %18, %14, %6
  %22 = phi i32 [ 0, %6 ], [ %20, %18 ], [ -22, %14 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_read_chipid() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

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
!8 = !{i64 3555742}
!9 = !{i64 3555324}
!10 = !{i64 2151634476}
!11 = !{i64 2151635569}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i8 0, i8 2}
