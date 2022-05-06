; ModuleID = '/llk/IR/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c_pt.bc'
source_filename = "../drivers/phy/allwinner/phy-sun6i-mipi-dphy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sun6i_dphy = type { ptr, ptr, ptr, ptr, ptr, %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }

@sun6i_dphy_of_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-mipi-dphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author248 = internal constant [45 x i8] c"author=Maxime Ripard <maxime.ripard@bootlin>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [44 x i8] c"description=Allwinner A31 MIPI D-PHY Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@sun6i_dphy_platform_driver = internal global %struct.platform_driver { ptr @sun6i_dphy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun6i_dphy_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [16 x i8] c"sun6i-mipi-dphy\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Couldn't map the DPHY encoder registers\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@sun6i_dphy_regmap_config = internal constant %struct.regmap_config { ptr @.str.8, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 244, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Couldn't create the DPHY encoder regmap\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Couldn't get our reset line\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Couldn't get the DPHY mod clock\0A\00", align 1
@sun6i_dphy_ops = internal constant %struct.phy_ops { ptr @sun6i_dphy_init, ptr @sun6i_dphy_exit, ptr @sun6i_dphy_power_on, ptr @sun6i_dphy_power_off, ptr null, ptr null, ptr null, ptr @sun6i_dphy_configure, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"mipi-dphy\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license250], section "llvm.metadata"

@__mod_of__sun6i_dphy_of_table_device_table = dso_local alias [2 x %struct.of_device_id], ptr @sun6i_dphy_of_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun6i_dphy_platform_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun6i_dphy_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_dphy_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 120, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  %9 = ptrtoint ptr %6 to i32
  br label %40

10:                                               ; preds = %5
  %11 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef %6, ptr noundef nonnull @sun6i_dphy_regmap_config, ptr noundef null, ptr noundef null) #5
  %12 = getelementptr inbounds %struct.sun6i_dphy, ptr %3, i32 0, i32 2
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #6
  %15 = ptrtoint ptr %11 to i32
  br label %40

16:                                               ; preds = %10
  %17 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %18 = getelementptr inbounds %struct.sun6i_dphy, ptr %3, i32 0, i32 3
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #6
  %21 = ptrtoint ptr %17 to i32
  br label %40

22:                                               ; preds = %16
  %23 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.5) #5
  %24 = getelementptr inbounds %struct.sun6i_dphy, ptr %3, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #6
  %27 = ptrtoint ptr %23 to i32
  br label %40

28:                                               ; preds = %22
  %29 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef null, ptr noundef nonnull @sun6i_dphy_ops) #5
  %30 = getelementptr inbounds %struct.sun6i_dphy, ptr %3, i32 0, i32 4
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #6
  %33 = ptrtoint ptr %29 to i32
  br label %40

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 8
  store ptr %3, ptr %35, align 8
  %36 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %2, ptr noundef null, ptr noundef nonnull @__this_module, ptr noundef nonnull @of_phy_simple_xlate) #5
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  %38 = ptrtoint ptr %36 to i32
  %39 = select i1 %37, i32 %38, i32 0
  br label %40

40:                                               ; preds = %34, %32, %26, %20, %14, %8, %1
  %41 = phi i32 [ %9, %8 ], [ %15, %14 ], [ %21, %20 ], [ %27, %26 ], [ %33, %32 ], [ %39, %34 ], [ -12, %1 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_dphy_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sun6i_dphy, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @reset_control_deassert(ptr noundef %5) #5
  %7 = getelementptr inbounds %struct.sun6i_dphy, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_prepare(ptr noundef %8) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = tail call i32 @clk_enable(ptr noundef %8) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %8) #5
  br label %15

15:                                               ; preds = %14, %11, %1
  %16 = load ptr, ptr %7, align 4
  %17 = tail call i32 @clk_set_rate_exclusive(ptr noundef %16, i32 noundef 150000000) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_dphy_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sun6i_dphy, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_rate_exclusive_put(ptr noundef %5) #5
  %6 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %6) #5
  tail call void @clk_unprepare(ptr noundef %6) #5
  %7 = getelementptr inbounds %struct.sun6i_dphy, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @reset_control_assert(ptr noundef %8) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_dphy_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sun6i_dphy, ptr %3, i32 0, i32 5, i32 24
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = sub nsw i32 32, %6
  %8 = lshr i32 -1, %7
  %9 = getelementptr inbounds %struct.sun6i_dphy, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 4, i32 noundef 268435456) #5
  %12 = load ptr, ptr %9, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 16, i32 noundef 168165390) #5
  %14 = load ptr, ptr %9, align 4
  %15 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 20, i32 noundef 167981575) #5
  %16 = load ptr, ptr %9, align 4
  %17 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 24, i32 noundef 30) #5
  %18 = load ptr, ptr %9, align 4
  %19 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 28, i32 noundef 0) #5
  %20 = load ptr, ptr %9, align 4
  %21 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 32, i32 noundef 771) #5
  %22 = load ptr, ptr %9, align 4
  %23 = load i8, ptr %4, align 4
  %24 = shl i8 %23, 4
  %25 = add i8 %24, 48
  %26 = and i8 %25, 48
  %27 = or i8 %26, 1
  %28 = zext i8 %27 to i32
  %29 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 0, i32 noundef %28) #5
  %30 = load ptr, ptr %9, align 4
  %31 = and i32 %8, 15
  %32 = shl nuw nsw i32 %31, 24
  %33 = mul nuw nsw i32 %31, 16777472
  %34 = add nuw nsw i32 %33, -1879019520
  %35 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 76, i32 noundef %34) #5
  %36 = load ptr, ptr %9, align 4
  %37 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 80, i32 noundef 385875968) #5
  %38 = load ptr, ptr %9, align 4
  %39 = shl nuw nsw i32 %31, 20
  %40 = or i32 %39, 16782677
  %41 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 92, i32 noundef %40) #5
  %42 = load ptr, ptr %9, align 4
  %43 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 84, i32 noundef 2) #5
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 1073740) #5
  %45 = load ptr, ptr %9, align 4
  %46 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 88, i32 noundef 50593792) #5
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #5
  %48 = load ptr, ptr %9, align 4
  %49 = shl i32 %8, 28
  %50 = or i32 %49, 134217728
  %51 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 88, i32 noundef -134217728, i32 noundef %50, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748) #5
  %53 = load ptr, ptr %9, align 4
  %54 = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 88, i32 noundef 67108864, i32 noundef 67108864, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748) #5
  %56 = load ptr, ptr %9, align 4
  %57 = tail call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 84, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748) #5
  %59 = load ptr, ptr %9, align 4
  %60 = tail call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 80, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %61 = load ptr, ptr %9, align 4
  %62 = tail call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 84, i32 noundef 251658240, i32 noundef %32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_dphy_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sun6i_dphy, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 80, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_dphy_configure(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @phy_mipi_dphy_config_validate(ptr noundef %1) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sun6i_dphy, ptr %4, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(100) %8, ptr noundef align 4 dereferenceable(100) %1, i32 100, i1 false)
  br label %9

9:                                                ; preds = %7, %2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate_exclusive(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_rate_exclusive_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mipi_dphy_config_validate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
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
