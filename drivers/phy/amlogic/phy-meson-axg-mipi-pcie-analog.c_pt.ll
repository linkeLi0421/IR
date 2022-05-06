; ModuleID = '/llk/IR/drivers/phy/amlogic/phy-meson-axg-mipi-pcie-analog.c_pt.bc'
source_filename = "../drivers/phy/amlogic/phy-meson-axg-mipi-pcie-analog.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.phy_axg_mipi_pcie_analog_priv = type { ptr, ptr, i8, i8, i8, %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }

@__initcall__kmod_phy_meson_axg_mipi_pcie_analog__268_249_phy_axg_mipi_pcie_analog_driver_init6 = internal global ptr @phy_axg_mipi_pcie_analog_driver_init, section ".initcall6.init", align 4
@phy_axg_mipi_pcie_analog_driver = internal global %struct.platform_driver { ptr @phy_axg_mipi_pcie_analog_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @phy_axg_mipi_pcie_analog_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_phy_axg_mipi_pcie_analog_driver_exit = internal global ptr @phy_axg_mipi_pcie_analog_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author269 = internal constant [72 x i8] c"phy_meson_axg_mipi_pcie_analog.author=Remi Pommarel <repk@triplefau.lt>\00", section ".modinfo", align 1
@__UNIQUE_ID_description270 = internal constant [85 x i8] c"phy_meson_axg_mipi_pcie_analog.description=Amlogic AXG MIPI + PCIE analog PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file271 = internal constant [87 x i8] c"phy_meson_axg_mipi_pcie_analog.file=drivers/phy/amlogic/phy-meson-axg-mipi-pcie-analog\00", section ".modinfo", align 1
@__UNIQUE_ID_license272 = internal constant [46 x i8] c"phy_meson_axg_mipi_pcie_analog.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [25 x i8] c"phy-axg-mipi-pcie-analog\00", align 1
@phy_axg_mipi_pcie_analog_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,axg-mipi-pcie-analog-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get HHI regmap\0A\00", align 1
@phy_axg_mipi_pcie_analog_ops = internal constant %struct.phy_ops { ptr null, ptr null, ptr @phy_axg_mipi_pcie_analog_power_on, ptr @phy_axg_mipi_pcie_analog_power_off, ptr null, ptr null, ptr null, ptr @phy_axg_mipi_pcie_analog_configure, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author269, ptr @__UNIQUE_ID_description270, ptr @__UNIQUE_ID_file271, ptr @__UNIQUE_ID_license272, ptr @__exitcall_phy_axg_mipi_pcie_analog_driver_exit, ptr @__initcall__kmod_phy_meson_axg_mipi_pcie_analog__268_249_phy_axg_mipi_pcie_analog_driver_init6, ptr @phy_axg_mipi_pcie_analog_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @phy_axg_mipi_pcie_analog_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @phy_axg_mipi_pcie_analog_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @phy_axg_mipi_pcie_analog_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @phy_axg_mipi_pcie_analog_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_axg_mipi_pcie_analog_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 112, i32 noundef 3264) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call ptr @of_get_parent(ptr noundef %8) #5
  %10 = tail call ptr @syscon_node_to_regmap(ptr noundef %9) #5
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  %13 = ptrtoint ptr %10 to i32
  br label %29

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.phy_axg_mipi_pcie_analog_priv, ptr %5, i32 0, i32 1
  store ptr %10, ptr %15, align 4
  %16 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef %4, ptr noundef nonnull @phy_axg_mipi_pcie_analog_ops) #5
  store ptr %16, ptr %5, align 4
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = icmp eq ptr %16, inttoptr (i32 -517 to ptr)
  br i1 %19, label %29, label %20

20:                                               ; preds = %18
  %21 = ptrtoint ptr %16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  br label %29

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  store ptr %5, ptr %23, align 8
  %24 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %24, align 8
  %25 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #5
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  %27 = ptrtoint ptr %25 to i32
  %28 = select i1 %26, i32 %27, i32 0
  br label %29

29:                                               ; preds = %22, %20, %18, %12, %1
  %30 = phi i32 [ %13, %12 ], [ %28, %22 ], [ -12, %1 ], [ %21, %20 ], [ -517, %18 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_axg_mipi_pcie_analog_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_axg_mipi_pcie_analog_priv, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 67108864, i32 noundef 67108864, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %7 = load ptr, ptr %4, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 536870912, i32 noundef 536870912, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %9 = getelementptr inbounds %struct.phy_axg_mipi_pcie_analog_priv, ptr %3, i32 0, i32 2
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call fastcc void @phy_dsi_analog_enable(ptr noundef %3)
  br label %13

13:                                               ; preds = %12, %1
  %14 = getelementptr inbounds %struct.phy_axg_mipi_pcie_analog_priv, ptr %3, i32 0, i32 4
  store i8 1, ptr %14, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_axg_mipi_pcie_analog_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_axg_mipi_pcie_analog_priv, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 67108864, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %7 = load ptr, ptr %4, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 536870912, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %9 = getelementptr inbounds %struct.phy_axg_mipi_pcie_analog_priv, ptr %3, i32 0, i32 3
  %10 = load i8, ptr %9, align 1, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %4, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 67043328, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %15 = load ptr, ptr %4, align 4
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %17 = load ptr, ptr %4, align 4
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 0, i32 noundef 67043328, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %19 = load ptr, ptr %4, align 4
  %20 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 4, i32 noundef 6) #5
  %21 = load ptr, ptr %4, align 4
  %22 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 8, i32 noundef 2097152) #5
  store i8 0, ptr %9, align 1
  br label %23

23:                                               ; preds = %12, %1
  %24 = getelementptr inbounds %struct.phy_axg_mipi_pcie_analog_priv, ptr %3, i32 0, i32 4
  store i8 0, ptr %24, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_axg_mipi_pcie_analog_configure(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @phy_mipi_dphy_config_validate(ptr noundef %1) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.phy_axg_mipi_pcie_analog_priv, ptr %4, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(100) %8, ptr noundef align 4 dereferenceable(100) %1, i32 100, i1 false)
  %9 = getelementptr inbounds %struct.phy_axg_mipi_pcie_analog_priv, ptr %4, i32 0, i32 2
  store i8 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.phy_axg_mipi_pcie_analog_priv, ptr %4, i32 0, i32 4
  %11 = load i8, ptr %10, align 2, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.phy_axg_mipi_pcie_analog_priv, ptr %4, i32 0, i32 3
  %15 = load i8, ptr %14, align 1, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.phy_axg_mipi_pcie_analog_priv, ptr %4, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 0, i32 noundef 67043328, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %21 = load ptr, ptr %18, align 4
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %23 = load ptr, ptr %18, align 4
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 0, i32 noundef 67043328, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %25 = load ptr, ptr %18, align 4
  %26 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 4, i32 noundef 6) #5
  %27 = load ptr, ptr %18, align 4
  %28 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 8, i32 noundef 2097152) #5
  store i8 0, ptr %14, align 1
  br label %29

29:                                               ; preds = %17, %13
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #5
  tail call fastcc void @phy_dsi_analog_enable(ptr noundef %4)
  br label %30

30:                                               ; preds = %29, %7, %2
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @phy_dsi_analog_enable(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.phy_axg_mipi_pcie_analog_priv, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 67043328, i32 noundef 28835840, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %7 = load ptr, ptr %2, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 65535, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %9 = load ptr, ptr %2, align 4
  %10 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 4, i32 noundef 30) #5
  %11 = load ptr, ptr %2, align 4
  %12 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 8, i32 noundef 652215385) #5
  %13 = getelementptr inbounds %struct.phy_axg_mipi_pcie_analog_priv, ptr %0, i32 0, i32 5, i32 24
  %14 = load i8, ptr %13, align 4
  switch i8 %14, label %20 [
    i8 4, label %15
    i8 3, label %16
    i8 2, label %18
    i8 1, label %21
  ]

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %1
  %17 = phi i32 [ 61440, %1 ], [ 63488, %15 ]
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi i32 [ 57344, %1 ], [ %17, %16 ]
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %18, %1
  %22 = phi i32 [ 0, %20 ], [ 40960, %1 ], [ %19, %18 ]
  %23 = load ptr, ptr %2, align 4
  %24 = and i32 %22, 63488
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 8, i32 noundef 63488, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %26 = getelementptr inbounds %struct.phy_axg_mipi_pcie_analog_priv, ptr %0, i32 0, i32 3
  store i8 1, ptr %26, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mipi_dphy_config_validate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
!8 = !{i8 0, i8 2}
