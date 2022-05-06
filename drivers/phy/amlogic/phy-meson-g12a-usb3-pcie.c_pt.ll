; ModuleID = '/llk/IR/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c_pt.bc'
source_filename = "../drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.phy_g12a_usb3_pcie_priv = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_meson_g12a_usb3_pcie__288_459_phy_g12a_usb3_pcie_driver_init6 = internal global ptr @phy_g12a_usb3_pcie_driver_init, section ".initcall6.init", align 4
@phy_g12a_usb3_pcie_driver = internal global %struct.platform_driver { ptr @phy_g12a_usb3_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @phy_g12a_usb3_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_phy_g12a_usb3_pcie_driver_exit = internal global ptr @phy_g12a_usb3_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [73 x i8] c"phy_meson_g12a_usb3_pcie.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [79 x i8] c"phy_meson_g12a_usb3_pcie.description=Amlogic G12A USB3 + PCIE Combo PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [75 x i8] c"phy_meson_g12a_usb3_pcie.file=drivers/phy/amlogic/phy-meson-g12a-usb3-pcie\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [40 x i8] c"phy_meson_g12a_usb3_pcie.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [19 x i8] c"phy-g12a-usb3-pcie\00", align 1
@phy_g12a_usb3_pcie_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,g12a-usb3-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@phy_g12a_usb3_pcie_regmap_conf = internal constant %struct.regmap_config { ptr null, i32 8, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 20, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@phy_g12a_usb3_pcie_cr_regmap_conf = internal constant %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, ptr null, ptr null, ptr null, ptr @phy_g12a_usb3_pcie_cr_bus_read, ptr @phy_g12a_usb3_pcie_cr_bus_write, ptr null, i8 0, i32 65535, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ref_clk\00", align 1
@phy_g12a_usb3_pcie_ops = internal constant %struct.phy_ops { ptr @phy_g12a_usb3_pcie_init, ptr @phy_g12a_usb3_pcie_exit, ptr @phy_g12a_usb3_pcie_power_on, ptr @phy_g12a_usb3_pcie_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_g12a_usb3_pcie_reset, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"invalid number of arguments\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"invalid phy mode select argument\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_phy_g12a_usb3_pcie_driver_exit, ptr @__initcall__kmod_phy_meson_g12a_usb3_pcie__288_459_phy_g12a_usb3_pcie_driver_init6, ptr @phy_g12a_usb3_pcie_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @phy_g12a_usb3_pcie_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @phy_g12a_usb3_pcie_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @phy_g12a_usb3_pcie_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @phy_g12a_usb3_pcie_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_g12a_usb3_pcie_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 24, i32 noundef 3520) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %60, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = ptrtoint ptr %8 to i32
  br label %60

12:                                               ; preds = %7
  %13 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %2, ptr noundef null, ptr noundef %8, ptr noundef nonnull @phy_g12a_usb3_pcie_regmap_conf, ptr noundef null, ptr noundef null) #5
  store ptr %13, ptr %5, align 4
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = ptrtoint ptr %13 to i32
  br label %60

17:                                               ; preds = %12
  %18 = tail call ptr @__devm_regmap_init(ptr noundef %2, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull @phy_g12a_usb3_pcie_cr_regmap_conf, ptr noundef null, ptr noundef null) #5
  %19 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %5, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = ptrtoint ptr %18 to i32
  br label %60

23:                                               ; preds = %17
  %24 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  %25 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %5, i32 0, i32 2
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = ptrtoint ptr %24 to i32
  br label %60

29:                                               ; preds = %23
  %30 = tail call i32 @clk_prepare(ptr noundef %24) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %29
  %33 = tail call i32 @clk_enable(ptr noundef %24) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @clk_unprepare(ptr noundef %24) #5
  br label %57

36:                                               ; preds = %32
  %37 = tail call ptr @devm_reset_control_array_get(ptr noundef %2, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %38 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %5, i32 0, i32 3
  store ptr %37, ptr %38, align 4
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = ptrtoint ptr %37 to i32
  br label %60

42:                                               ; preds = %36
  %43 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef %4, ptr noundef nonnull @phy_g12a_usb3_pcie_ops) #5
  %44 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %5, i32 0, i32 4
  store ptr %43, ptr %44, align 4
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = icmp eq ptr %43, inttoptr (i32 -517 to ptr)
  br i1 %47, label %60, label %48

48:                                               ; preds = %46
  %49 = ptrtoint ptr %43 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  br label %60

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 8
  store ptr %5, ptr %51, align 8
  %52 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %52, align 8
  %53 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef nonnull @phy_g12a_usb3_pcie_xlate) #5
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  %55 = ptrtoint ptr %53 to i32
  %56 = select i1 %54, i32 %55, i32 0
  br label %60

57:                                               ; preds = %35, %29
  %58 = phi i32 [ %33, %35 ], [ %30, %29 ]
  %59 = load ptr, ptr %25, align 4
  tail call void @clk_disable(ptr noundef %59) #5
  tail call void @clk_unprepare(ptr noundef %59) #5
  br label %60

60:                                               ; preds = %57, %50, %48, %46, %40, %27, %21, %15, %10, %1
  %61 = phi i32 [ %11, %10 ], [ %16, %15 ], [ %22, %21 ], [ %28, %27 ], [ %58, %57 ], [ %41, %40 ], [ %56, %50 ], [ -12, %1 ], [ %49, %48 ], [ -517, %46 ]
  ret i32 %61
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @phy_g12a_usb3_pcie_xlate(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #6
  br label %17

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %12 [
    i32 4, label %13
    i32 2, label %13
  ]

12:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4) #6
  br label %17

13:                                               ; preds = %9, %9
  %14 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %4, i32 0, i32 5
  store i32 %11, ptr %14, align 4
  %15 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %4, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %13, %12, %8
  %18 = phi ptr [ inttoptr (i32 -22 to ptr), %8 ], [ inttoptr (i32 -22 to ptr), %12 ], [ %16, %13 ]
  ret ptr %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_g12a_usb3_pcie_cr_bus_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = tail call fastcc i32 @phy_g12a_usb3_pcie_cr_bus_addr(ptr noundef %0, i32 noundef %1)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %73

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  %9 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 16, i32 noundef 0) #5
  %10 = load ptr, ptr %0, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 16, i32 noundef 2) #5
  %12 = tail call i64 @ktime_get() #5
  %13 = add i64 %12, 1000000
  %14 = load ptr, ptr %0, align 4
  %15 = call i32 @regmap_read(ptr noundef %14, i32 noundef 20, ptr noundef nonnull %4) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %27, %7
  %18 = load i32, ptr %4, align 4
  %19 = and i32 %18, 65536
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = call i64 @ktime_get() #5
  %23 = icmp sgt i64 %22, %13
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load ptr, ptr %0, align 4
  %26 = call i32 @regmap_read(ptr noundef %25, i32 noundef 20, ptr noundef nonnull %4) #5
  br label %31

27:                                               ; preds = %21
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #5
  %28 = load ptr, ptr %0, align 4
  %29 = call i32 @regmap_read(ptr noundef %28, i32 noundef 20, ptr noundef nonnull %4) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %17, label %31

31:                                               ; preds = %27, %24, %17, %7
  %32 = phi i32 [ %26, %24 ], [ %15, %7 ], [ 0, %17 ], [ %29, %27 ]
  %33 = icmp ne i32 %32, 0
  %34 = load i32, ptr %4, align 4
  %35 = and i32 %34, 65536
  %36 = icmp ne i32 %35, 0
  %37 = select i1 %33, i1 true, i1 %36
  %38 = select i1 %37, i32 0, i32 -110
  %39 = select i1 %33, i32 %32, i32 %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %31
  %42 = and i32 %34, 65535
  store i32 %42, ptr %2, align 4
  %43 = load ptr, ptr %0, align 4
  %44 = call i32 @regmap_write(ptr noundef %43, i32 noundef 16, i32 noundef 0) #5
  %45 = call i64 @ktime_get() #5
  %46 = add i64 %45, 1000000
  %47 = load ptr, ptr %0, align 4
  %48 = call i32 @regmap_read(ptr noundef %47, i32 noundef 20, ptr noundef nonnull %4) #5
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %60, %41
  %51 = load i32, ptr %4, align 4
  %52 = and i32 %51, 65536
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %50
  %55 = call i64 @ktime_get() #5
  %56 = icmp sgt i64 %55, %46
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load ptr, ptr %0, align 4
  %59 = call i32 @regmap_read(ptr noundef %58, i32 noundef 20, ptr noundef nonnull %4) #5
  br label %64

60:                                               ; preds = %54
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #5
  %61 = load ptr, ptr %0, align 4
  %62 = call i32 @regmap_read(ptr noundef %61, i32 noundef 20, ptr noundef nonnull %4) #5
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %50, label %64

64:                                               ; preds = %60, %57, %50, %41
  %65 = phi i32 [ %59, %57 ], [ %48, %41 ], [ 0, %50 ], [ %62, %60 ]
  %66 = icmp ne i32 %65, 0
  %67 = load i32, ptr %4, align 4
  %68 = and i32 %67, 65536
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %66, i1 true, i1 %69
  %71 = select i1 %70, i32 0, i32 -110
  %72 = select i1 %66, i32 %65, i32 %71
  br label %73

73:                                               ; preds = %64, %31, %3
  %74 = phi i32 [ %5, %3 ], [ %39, %31 ], [ %72, %64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_g12a_usb3_pcie_cr_bus_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = tail call fastcc i32 @phy_g12a_usb3_pcie_cr_bus_addr(ptr noundef %0, i32 noundef %1)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %144

7:                                                ; preds = %3
  %8 = shl i32 %2, 2
  %9 = and i32 %8, 262140
  %10 = load ptr, ptr %0, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 16, i32 noundef %9) #5
  %12 = load ptr, ptr %0, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 16, i32 noundef %9) #5
  %14 = load ptr, ptr %0, align 4
  %15 = or i32 %9, 262144
  %16 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 16, i32 noundef %15) #5
  %17 = tail call i64 @ktime_get() #5
  %18 = add i64 %17, 1000000
  %19 = load ptr, ptr %0, align 4
  %20 = call i32 @regmap_read(ptr noundef %19, i32 noundef 20, ptr noundef nonnull %4) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %32, %7
  %23 = load i32, ptr %4, align 4
  %24 = and i32 %23, 65536
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = call i64 @ktime_get() #5
  %28 = icmp sgt i64 %27, %18
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 4
  %31 = call i32 @regmap_read(ptr noundef %30, i32 noundef 20, ptr noundef nonnull %4) #5
  br label %36

32:                                               ; preds = %26
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #5
  %33 = load ptr, ptr %0, align 4
  %34 = call i32 @regmap_read(ptr noundef %33, i32 noundef 20, ptr noundef nonnull %4) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %22, label %36

36:                                               ; preds = %32, %29, %22, %7
  %37 = phi i32 [ %31, %29 ], [ %20, %7 ], [ 0, %22 ], [ %34, %32 ]
  %38 = icmp ne i32 %37, 0
  %39 = load i32, ptr %4, align 4
  %40 = and i32 %39, 65536
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %38, i1 true, i1 %41
  %43 = select i1 %42, i32 0, i32 -110
  %44 = select i1 %38, i32 %37, i32 %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %144

46:                                               ; preds = %36
  %47 = load ptr, ptr %0, align 4
  %48 = call i32 @regmap_write(ptr noundef %47, i32 noundef 16, i32 noundef %9) #5
  %49 = call i64 @ktime_get() #5
  %50 = add i64 %49, 1000000
  %51 = load ptr, ptr %0, align 4
  %52 = call i32 @regmap_read(ptr noundef %51, i32 noundef 20, ptr noundef nonnull %4) #5
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %64, %46
  %55 = load i32, ptr %4, align 4
  %56 = and i32 %55, 65536
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %54
  %59 = call i64 @ktime_get() #5
  %60 = icmp sgt i64 %59, %50
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load ptr, ptr %0, align 4
  %63 = call i32 @regmap_read(ptr noundef %62, i32 noundef 20, ptr noundef nonnull %4) #5
  br label %68

64:                                               ; preds = %58
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #5
  %65 = load ptr, ptr %0, align 4
  %66 = call i32 @regmap_read(ptr noundef %65, i32 noundef 20, ptr noundef nonnull %4) #5
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %54, label %68

68:                                               ; preds = %64, %61, %54, %46
  %69 = phi i32 [ %63, %61 ], [ %52, %46 ], [ 0, %54 ], [ %66, %64 ]
  %70 = icmp ne i32 %69, 0
  %71 = load i32, ptr %4, align 4
  %72 = and i32 %71, 65536
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %70, i1 true, i1 %73
  %75 = select i1 %74, i32 0, i32 -110
  %76 = select i1 %70, i32 %69, i32 %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %144

78:                                               ; preds = %68
  %79 = load ptr, ptr %0, align 4
  %80 = call i32 @regmap_write(ptr noundef %79, i32 noundef 16, i32 noundef %9) #5
  %81 = load ptr, ptr %0, align 4
  %82 = or i32 %9, 1
  %83 = call i32 @regmap_write(ptr noundef %81, i32 noundef 16, i32 noundef %82) #5
  %84 = call i64 @ktime_get() #5
  %85 = add i64 %84, 1000000
  %86 = load ptr, ptr %0, align 4
  %87 = call i32 @regmap_read(ptr noundef %86, i32 noundef 20, ptr noundef nonnull %4) #5
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %99, %78
  %90 = load i32, ptr %4, align 4
  %91 = and i32 %90, 65536
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = call i64 @ktime_get() #5
  %95 = icmp sgt i64 %94, %85
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load ptr, ptr %0, align 4
  %98 = call i32 @regmap_read(ptr noundef %97, i32 noundef 20, ptr noundef nonnull %4) #5
  br label %103

99:                                               ; preds = %93
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #5
  %100 = load ptr, ptr %0, align 4
  %101 = call i32 @regmap_read(ptr noundef %100, i32 noundef 20, ptr noundef nonnull %4) #5
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %89, label %103

103:                                              ; preds = %99, %96, %89, %78
  %104 = phi i32 [ %98, %96 ], [ %87, %78 ], [ 0, %89 ], [ %101, %99 ]
  %105 = icmp ne i32 %104, 0
  %106 = load i32, ptr %4, align 4
  %107 = and i32 %106, 65536
  %108 = icmp ne i32 %107, 0
  %109 = select i1 %105, i1 true, i1 %108
  %110 = select i1 %109, i32 0, i32 -110
  %111 = select i1 %105, i32 %104, i32 %110
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %144

113:                                              ; preds = %103
  %114 = load ptr, ptr %0, align 4
  %115 = call i32 @regmap_write(ptr noundef %114, i32 noundef 16, i32 noundef %9) #5
  %116 = call i64 @ktime_get() #5
  %117 = add i64 %116, 1000000
  %118 = load ptr, ptr %0, align 4
  %119 = call i32 @regmap_read(ptr noundef %118, i32 noundef 20, ptr noundef nonnull %4) #5
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %131, %113
  %122 = load i32, ptr %4, align 4
  %123 = and i32 %122, 65536
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %121
  %126 = call i64 @ktime_get() #5
  %127 = icmp sgt i64 %126, %117
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load ptr, ptr %0, align 4
  %130 = call i32 @regmap_read(ptr noundef %129, i32 noundef 20, ptr noundef nonnull %4) #5
  br label %135

131:                                              ; preds = %125
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #5
  %132 = load ptr, ptr %0, align 4
  %133 = call i32 @regmap_read(ptr noundef %132, i32 noundef 20, ptr noundef nonnull %4) #5
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %121, label %135

135:                                              ; preds = %131, %128, %121, %113
  %136 = phi i32 [ %130, %128 ], [ %119, %113 ], [ 0, %121 ], [ %133, %131 ]
  %137 = icmp ne i32 %136, 0
  %138 = load i32, ptr %4, align 4
  %139 = and i32 %138, 65536
  %140 = icmp eq i32 %139, 0
  %141 = select i1 %137, i1 true, i1 %140
  %142 = select i1 %141, i32 0, i32 -110
  %143 = select i1 %137, i32 %136, i32 %142
  br label %144

144:                                              ; preds = %135, %103, %68, %36, %3
  %145 = phi i32 [ %5, %3 ], [ %44, %36 ], [ %76, %68 ], [ %111, %103 ], [ %143, %135 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @phy_g12a_usb3_pcie_cr_bus_addr(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = shl i32 %1, 2
  %5 = and i32 %4, 262140
  %6 = load ptr, ptr %0, align 4
  %7 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 16, i32 noundef %5) #5
  %8 = load ptr, ptr %0, align 4
  %9 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 16, i32 noundef %5) #5
  %10 = load ptr, ptr %0, align 4
  %11 = or i32 %5, 524288
  %12 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 16, i32 noundef %11) #5
  %13 = tail call i64 @ktime_get() #5
  %14 = add i64 %13, 1000000
  %15 = load ptr, ptr %0, align 4
  %16 = call i32 @regmap_read(ptr noundef %15, i32 noundef 20, ptr noundef nonnull %3) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %28, %2
  %19 = load i32, ptr %3, align 4
  %20 = and i32 %19, 65536
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = call i64 @ktime_get() #5
  %24 = icmp sgt i64 %23, %14
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load ptr, ptr %0, align 4
  %27 = call i32 @regmap_read(ptr noundef %26, i32 noundef 20, ptr noundef nonnull %3) #5
  br label %32

28:                                               ; preds = %22
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #5
  %29 = load ptr, ptr %0, align 4
  %30 = call i32 @regmap_read(ptr noundef %29, i32 noundef 20, ptr noundef nonnull %3) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %18, label %32

32:                                               ; preds = %28, %25, %18, %2
  %33 = phi i32 [ %27, %25 ], [ %16, %2 ], [ 0, %18 ], [ %30, %28 ]
  %34 = icmp ne i32 %33, 0
  %35 = load i32, ptr %3, align 4
  %36 = and i32 %35, 65536
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %34, i1 true, i1 %37
  %39 = select i1 %38, i32 0, i32 -110
  %40 = select i1 %34, i32 %33, i32 %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %32
  %43 = load ptr, ptr %0, align 4
  %44 = call i32 @regmap_write(ptr noundef %43, i32 noundef 16, i32 noundef %5) #5
  %45 = call i64 @ktime_get() #5
  %46 = add i64 %45, 1000000
  %47 = load ptr, ptr %0, align 4
  %48 = call i32 @regmap_read(ptr noundef %47, i32 noundef 20, ptr noundef nonnull %3) #5
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %60, %42
  %51 = load i32, ptr %3, align 4
  %52 = and i32 %51, 65536
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %50
  %55 = call i64 @ktime_get() #5
  %56 = icmp sgt i64 %55, %46
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load ptr, ptr %0, align 4
  %59 = call i32 @regmap_read(ptr noundef %58, i32 noundef 20, ptr noundef nonnull %3) #5
  br label %64

60:                                               ; preds = %54
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #5
  %61 = load ptr, ptr %0, align 4
  %62 = call i32 @regmap_read(ptr noundef %61, i32 noundef 20, ptr noundef nonnull %3) #5
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %50, label %64

64:                                               ; preds = %60, %57, %50, %42
  %65 = phi i32 [ %59, %57 ], [ %48, %42 ], [ 0, %50 ], [ %62, %60 ]
  %66 = icmp ne i32 %65, 0
  %67 = load i32, ptr %3, align 4
  %68 = and i32 %67, 65536
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %66, i1 true, i1 %69
  %71 = select i1 %70, i32 0, i32 -110
  %72 = select i1 %66, i32 %65, i32 %71
  br label %73

73:                                               ; preds = %64, %32
  %74 = phi i32 [ %40, %32 ], [ %72, %64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_g12a_usb3_pcie_init(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %57

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %4, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @reset_control_reset(ptr noundef %10) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %55

13:                                               ; preds = %8
  %14 = load ptr, ptr %4, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 0, i32 noundef 96, i32 noundef 96, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %16 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %4, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 4141, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %13
  %21 = load ptr, ptr %16, align 4
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 4112, i32 noundef 4080, i32 noundef 20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = load ptr, ptr %16, align 4
  %26 = call i32 @regmap_read(ptr noundef %25, i32 noundef 4102, ptr noundef nonnull %2) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  %29 = load i32, ptr %2, align 4
  %30 = and i32 %29, -4033
  %31 = or i32 %30, 2944
  store i32 %31, ptr %2, align 4
  %32 = load ptr, ptr %16, align 4
  %33 = call i32 @regmap_write(ptr noundef %32, i32 noundef 4102, i32 noundef %31) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %28
  %36 = load ptr, ptr %16, align 4
  %37 = call i32 @regmap_read(ptr noundef %36, i32 noundef 4098, ptr noundef nonnull %2) #5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load i32, ptr %2, align 4
  %41 = and i32 %40, -32768
  %42 = or i32 %41, 19327
  store i32 %42, ptr %2, align 4
  %43 = load ptr, ptr %16, align 4
  %44 = call i32 @regmap_write(ptr noundef %43, i32 noundef 4098, i32 noundef %42) #5
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load ptr, ptr %16, align 4
  %48 = call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 48, i32 noundef 240, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load ptr, ptr %4, align 4
  %52 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 8, i32 noundef 1835008, i32 noundef 1048576, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %53 = load ptr, ptr %4, align 4
  %54 = call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 4, i32 noundef 16711680, i32 noundef 8978432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %55

55:                                               ; preds = %50, %46, %39, %35, %28, %24, %20, %13, %8
  %56 = phi i32 [ 0, %50 ], [ %11, %8 ], [ %18, %13 ], [ %22, %20 ], [ %26, %24 ], [ %33, %28 ], [ %37, %35 ], [ %44, %39 ], [ %48, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %57

57:                                               ; preds = %55, %1
  %58 = phi i32 [ %56, %55 ], [ 0, %1 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_g12a_usb3_pcie_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @reset_control_reset(ptr noundef %9) #5
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_g12a_usb3_pcie_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef 31, i32 noundef 28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %10

10:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_g12a_usb3_pcie_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef 31, i32 noundef 29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %10

10:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_g12a_usb3_pcie_reset(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @reset_control_assert(ptr noundef %9) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 107374000) #5
  %14 = load ptr, ptr %8, align 4
  %15 = tail call i32 @reset_control_deassert(ptr noundef %14) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 107374000) #5
  br label %19

19:                                               ; preds = %17, %12, %7, %1
  %20 = phi i32 [ 0, %17 ], [ 0, %1 ], [ %10, %7 ], [ %15, %12 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{!"auto-init"}
