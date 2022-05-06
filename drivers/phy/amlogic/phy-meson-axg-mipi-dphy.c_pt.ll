; ModuleID = '/llk/IR/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c_pt.bc'
source_filename = "../drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.phy_meson_axg_mipi_dphy_priv = type { ptr, ptr, ptr, ptr, ptr, %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }

@__initcall__kmod_phy_meson_axg_mipi_dphy__248_410_phy_meson_axg_mipi_dphy_driver_init6 = internal global ptr @phy_meson_axg_mipi_dphy_driver_init, section ".initcall6.init", align 4
@phy_meson_axg_mipi_dphy_driver = internal global %struct.platform_driver { ptr @phy_meson_axg_mipi_dphy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @phy_meson_axg_mipi_dphy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_phy_meson_axg_mipi_dphy_driver_exit = internal global ptr @phy_meson_axg_mipi_dphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author249 = internal constant [72 x i8] c"phy_meson_axg_mipi_dphy.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [63 x i8] c"phy_meson_axg_mipi_dphy.description=Meson AXG MIPI DPHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [73 x i8] c"phy_meson_axg_mipi_dphy.file=drivers/phy/amlogic/phy-meson-axg-mipi-dphy\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [39 x i8] c"phy_meson_axg_mipi_dphy.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [24 x i8] c"phy-meson-axg-mipi-dphy\00", align 1
@phy_meson_axg_mipi_dphy_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,axg-mipi-dphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@phy_meson_axg_mipi_dphy_regmap_conf = internal constant %struct.regmap_config { ptr null, i32 8, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"analog\00", align 1
@phy_meson_axg_mipi_dphy_ops = internal constant %struct.phy_ops { ptr @phy_meson_axg_mipi_dphy_init, ptr @phy_meson_axg_mipi_dphy_exit, ptr @phy_meson_axg_mipi_dphy_power_on, ptr @phy_meson_axg_mipi_dphy_power_off, ptr null, ptr null, ptr null, ptr @phy_meson_axg_mipi_dphy_configure, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_phy_meson_axg_mipi_dphy_driver_exit, ptr @__initcall__kmod_phy_meson_axg_mipi_dphy__248_410_phy_meson_axg_mipi_dphy_driver_init6, ptr @phy_meson_axg_mipi_dphy_driver_exit], section "llvm.metadata"
@switch.table.phy_meson_axg_mipi_dphy_power_on = private unnamed_addr constant [3 x i32] [i32 14, i32 12, i32 8], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @phy_meson_axg_mipi_dphy_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @phy_meson_axg_mipi_dphy_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @phy_meson_axg_mipi_dphy_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @phy_meson_axg_mipi_dphy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_meson_axg_mipi_dphy_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 120, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %57, label %5

5:                                                ; preds = %1
  store ptr %2, ptr %3, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %6, align 8
  %7 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %8 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %7) #6
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = ptrtoint ptr %8 to i32
  br label %57

12:                                               ; preds = %5
  %13 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %2, ptr noundef null, ptr noundef %8, ptr noundef nonnull @phy_meson_axg_mipi_dphy_regmap_conf, ptr noundef null, ptr noundef null) #6
  %14 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = ptrtoint ptr %13 to i32
  br label %57

18:                                               ; preds = %12
  %19 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  %20 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 2
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = ptrtoint ptr %19 to i32
  br label %57

24:                                               ; preds = %18
  %25 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %26 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 3
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = ptrtoint ptr %25 to i32
  br label %57

30:                                               ; preds = %24
  %31 = tail call ptr @devm_phy_get(ptr noundef %2, ptr noundef nonnull @.str.3) #6
  %32 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 4
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = ptrtoint ptr %31 to i32
  br label %57

36:                                               ; preds = %30
  %37 = load ptr, ptr %20, align 4
  %38 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load ptr, ptr %26, align 4
  %42 = tail call i32 @reset_control_deassert(ptr noundef %41) #6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef null, ptr noundef nonnull @phy_meson_axg_mipi_dphy_ops) #6
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = icmp eq ptr %45, inttoptr (i32 -517 to ptr)
  br i1 %48, label %57, label %49

49:                                               ; preds = %47
  %50 = ptrtoint ptr %45 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #7
  br label %57

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 8
  store ptr %3, ptr %52, align 8
  %53 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #6
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  %55 = ptrtoint ptr %53 to i32
  %56 = select i1 %54, i32 %55, i32 0
  br label %57

57:                                               ; preds = %51, %49, %47, %40, %36, %34, %28, %22, %16, %10, %1
  %58 = phi i32 [ %11, %10 ], [ %17, %16 ], [ %23, %22 ], [ %29, %28 ], [ %35, %34 ], [ %56, %51 ], [ -12, %1 ], [ %38, %36 ], [ %42, %40 ], [ %50, %49 ], [ -517, %47 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #3 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #6
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_meson_axg_mipi_dphy_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @phy_init(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @reset_control_reset(ptr noundef %10) #6
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i32 [ %6, %1 ], [ %11, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_meson_axg_mipi_dphy_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @phy_exit(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @reset_control_reset(ptr noundef %10) #6
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i32 [ %11, %8 ], [ %6, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_meson_axg_mipi_dphy_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @phy_power_on(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %146

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 0, i32 noundef 1) #6
  %12 = load ptr, ptr %9, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 0, i32 noundef 385) #6
  %14 = load ptr, ptr %9, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 0, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %16 = load ptr, ptr %9, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 0, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %18 = load ptr, ptr %9, align 4
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %20 = load ptr, ptr %9, align 4
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %22 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 5, i32 22
  %23 = load i32, ptr %22, align 4
  %24 = udiv i32 %23, 1000
  %25 = udiv i32 100000000, %24
  %26 = mul i32 %25, 80
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 5, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %26, -1
  %31 = add i32 %30, %29
  %32 = udiv i32 %31, %26
  %33 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 5, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 5, i32 14
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %30, %34
  %38 = add i32 %37, %36
  %39 = udiv i32 %38, %26
  %40 = shl i32 %39, 8
  %41 = or i32 %40, %32
  %42 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 5, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %30, %43
  %45 = udiv i32 %44, %26
  %46 = shl i32 %45, 16
  %47 = or i32 %41, %46
  %48 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 5, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %30, %49
  %51 = udiv i32 %50, %26
  %52 = shl i32 %51, 24
  %53 = or i32 %47, %52
  %54 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 12, i32 noundef %53) #6
  %55 = load ptr, ptr %9, align 4
  %56 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 5, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, 7
  %59 = lshr i32 %58, 3
  %60 = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 48, i32 noundef %59) #6
  %61 = load ptr, ptr %9, align 4
  %62 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 5, i32 10
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %30, %63
  %65 = udiv i32 %64, %26
  %66 = load i32, ptr %35, align 4
  %67 = add i32 %30, %66
  %68 = udiv i32 %67, %26
  %69 = shl i32 %68, 8
  %70 = or i32 %69, %65
  %71 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 5, i32 15
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %30, %72
  %74 = udiv i32 %73, %26
  %75 = shl i32 %74, 16
  %76 = or i32 %70, %75
  %77 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 5, i32 11
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %30, %78
  %80 = udiv i32 %79, %26
  %81 = shl i32 %80, 24
  %82 = or i32 %76, %81
  %83 = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 16, i32 noundef %82) #6
  %84 = load ptr, ptr %9, align 4
  %85 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 5, i32 17
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %30, %86
  %88 = udiv i32 %87, %26
  %89 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 5, i32 20
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %30, %90
  %92 = udiv i32 %91, %26
  %93 = shl i32 %92, 8
  %94 = or i32 %93, %88
  %95 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 5, i32 19
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %30, %96
  %98 = udiv i32 %97, %26
  %99 = shl i32 %98, 16
  %100 = or i32 %94, %99
  %101 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 5, i32 18
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %30, %102
  %104 = udiv i32 %103, %26
  %105 = shl i32 %104, 24
  %106 = or i32 %100, %105
  %107 = tail call i32 @regmap_write(ptr noundef %84, i32 noundef 20, i32 noundef %106) #6
  %108 = load ptr, ptr %9, align 4
  %109 = tail call i32 @regmap_write(ptr noundef %108, i32 noundef 24, i32 noundef 256) #6
  %110 = load ptr, ptr %9, align 4
  %111 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 5, i32 16
  %112 = load i32, ptr %111, align 4
  %113 = mul i32 %112, 1000000
  %114 = add i32 %30, %113
  %115 = udiv i32 %114, %26
  %116 = tail call i32 @regmap_write(ptr noundef %110, i32 noundef 28, i32 noundef %115) #6
  %117 = load ptr, ptr %9, align 4
  %118 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 5, i32 21
  %119 = load i32, ptr %118, align 4
  %120 = mul i32 %119, 1000000
  %121 = add i32 %30, %120
  %122 = udiv i32 %121, %26
  %123 = tail call i32 @regmap_write(ptr noundef %117, i32 noundef 32, i32 noundef %122) #6
  %124 = load ptr, ptr %9, align 4
  %125 = tail call i32 @regmap_write(ptr noundef %124, i32 noundef 36, i32 noundef 124) #6
  %126 = load ptr, ptr %9, align 4
  %127 = tail call i32 @regmap_write(ptr noundef %126, i32 noundef 56, i32 noundef 37500) #6
  %128 = load ptr, ptr %9, align 4
  %129 = tail call i32 @regmap_write(ptr noundef %128, i32 noundef 40, i32 noundef 4096) #6
  %130 = load ptr, ptr %9, align 4
  %131 = tail call i32 @regmap_write(ptr noundef %130, i32 noundef 52, i32 noundef 4096) #6
  %132 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 5, i32 24
  %133 = load i8, ptr %132, align 4
  %134 = add i8 %133, -1
  %135 = icmp ult i8 %134, 3
  br i1 %135, label %136, label %140

136:                                              ; preds = %8
  %137 = sext i8 %134 to i32
  %138 = getelementptr inbounds [3 x i32], ptr @switch.table.phy_meson_axg_mipi_dphy_power_on, i32 0, i32 %137
  %139 = load i32, ptr %138, align 4
  br label %140

140:                                              ; preds = %136, %8
  %141 = phi i32 [ %139, %136 ], [ 0, %8 ]
  %142 = load ptr, ptr %9, align 4
  %143 = tail call i32 @regmap_write(ptr noundef %142, i32 noundef 4, i32 noundef %141) #6
  %144 = load ptr, ptr %9, align 4
  %145 = tail call i32 @regmap_update_bits_base(ptr noundef %144, i32 noundef 0, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %146

146:                                              ; preds = %140, %1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_meson_axg_mipi_dphy_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 4, i32 noundef 15) #6
  %7 = load ptr, ptr %4, align 4
  %8 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 0, i32 noundef -2147483648) #6
  %9 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %3, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @phy_power_off(ptr noundef %10) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_meson_axg_mipi_dphy_configure(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @phy_mipi_dphy_config_validate(ptr noundef %1) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %4, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @phy_configure(ptr noundef %9, ptr noundef %1) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.phy_meson_axg_mipi_dphy_priv, ptr %4, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(100) %13, ptr noundef align 4 dereferenceable(100) %1, i32 100, i1 false)
  br label %14

14:                                               ; preds = %12, %7, %2
  %15 = phi i32 [ 0, %12 ], [ %5, %2 ], [ %10, %7 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mipi_dphy_config_validate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_configure(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
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
