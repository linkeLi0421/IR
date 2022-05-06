; ModuleID = '/llk/IR/drivers/phy/samsung/phy-samsung-usb2.c_pt.bc'
source_filename = "../drivers/phy/samsung/phy-samsung-usb2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.samsung_usb2_phy_config = type { ptr, ptr, i32, i8, i8 }
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
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.samsung_usb2_phy_driver = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, %struct.spinlock, [0 x %struct.samsung_usb2_phy_instance] }
%struct.samsung_usb2_phy_instance = type { ptr, ptr, ptr, i32, i32 }
%struct.samsung_usb2_common_phy = type { ptr, ptr, i32, ptr }
%struct.phy = type { %struct.device, i32, ptr, %struct.mutex, i32, i32, %struct.phy_attrs, ptr }
%struct.phy_attrs = type { i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@samsung_usb2_phy_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos3250_usb2_phy_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_usb2_phy_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4x12-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4x12_usb2_phy_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_usb2_phy_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_usb2_phy_config }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description248 = internal constant [50 x i8] c"description=Samsung S5P/Exynos SoC USB PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [43 x i8] c"author=Kamil Debski <k.debski@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias251 = internal constant [32 x i8] c"alias=platform:samsung-usb2-phy\00", section ".modinfo", align 1
@exynos3250_usb2_phy_config = external dso_local constant %struct.samsung_usb2_phy_config, align 4
@exynos4210_usb2_phy_config = external dso_local constant %struct.samsung_usb2_phy_config, align 4
@exynos4x12_usb2_phy_config = external dso_local constant %struct.samsung_usb2_phy_config, align 4
@exynos5250_usb2_phy_config = external dso_local constant %struct.samsung_usb2_phy_config, align 4
@exynos5420_usb2_phy_config = external dso_local constant %struct.samsung_usb2_phy_config, align 4
@samsung_usb2_phy_driver = internal global %struct.platform_driver { ptr @samsung_usb2_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @samsung_usb2_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [17 x i8] c"samsung-usb2-phy\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"This driver is required to be instantiated from device tree\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to map register memory (phy)\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"samsung,pmureg-phandle\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Failed to map PMU registers (via syscon)\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"samsung,sysreg-phandle\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Failed to map system registers (via syscon)\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Failed to get clock of phy controller\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"Failed to get reference clock for the phy controller\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@samsung_usb2_phy_ops = internal constant %struct.phy_ops { ptr null, ptr null, ptr @samsung_usb2_phy_power_on, ptr @samsung_usb2_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__this_module }, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"Failed to create usb2_phy \22%s\22\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Failed to register phy provider\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"drivers/phy/samsung/phy-samsung-usb2.c\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias251, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license250], section "llvm.metadata"

@__mod_of__samsung_usb2_phy_of_match_device_table = dso_local alias [6 x %struct.of_device_id], ptr @samsung_usb2_phy_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @samsung_usb2_phy_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @samsung_usb2_phy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_usb2_phy_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %121

7:                                                ; preds = %1
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %2) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %121, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.samsung_usb2_phy_config, ptr %8, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 20) #5
  %14 = extractvalue { i32, i1 } %13, 1
  %15 = extractvalue { i32, i1 } %13, 0
  %16 = tail call i32 @llvm.uadd.sat.i32(i32 %15, i32 44) #5
  %17 = select i1 %14, i32 -1, i32 %16
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %17, i32 noundef 3520) #5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %121, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %18, ptr %21, align 8
  %22 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %18, i32 0, i32 10
  store i32 0, ptr %22, align 4
  store ptr %8, ptr %18, align 4
  %23 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %18, i32 0, i32 6
  store ptr %2, ptr %23, align 4
  %24 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %25 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %18, i32 0, i32 7
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  %28 = load ptr, ptr %25, align 4
  %29 = ptrtoint ptr %28 to i32
  br label %121

30:                                               ; preds = %20
  %31 = load ptr, ptr %3, align 8
  %32 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %31, ptr noundef nonnull @.str.3) #5
  %33 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %18, i32 0, i32 8
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #6
  %36 = load ptr, ptr %33, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %121

38:                                               ; preds = %30
  %39 = load ptr, ptr %18, align 4
  %40 = getelementptr inbounds %struct.samsung_usb2_phy_config, ptr %39, i32 0, i32 3
  %41 = load i8, ptr %40, align 4, !range !8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %3, align 8
  %45 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %44, ptr noundef nonnull @.str.5) #5
  %46 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %18, i32 0, i32 9
  store ptr %45, ptr %46, align 4
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #6
  %49 = load ptr, ptr %46, align 4
  %50 = ptrtoint ptr %49 to i32
  br label %121

51:                                               ; preds = %43, %38
  %52 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.7) #5
  %53 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %18, i32 0, i32 1
  store ptr %52, ptr %53, align 4
  %54 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #6
  %56 = load ptr, ptr %53, align 4
  %57 = ptrtoint ptr %56 to i32
  br label %121

58:                                               ; preds = %51
  %59 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.9) #5
  %60 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %18, i32 0, i32 2
  store ptr %59, ptr %60, align 4
  %61 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #6
  %63 = load ptr, ptr %60, align 4
  %64 = ptrtoint ptr %63 to i32
  br label %121

65:                                               ; preds = %58
  %66 = tail call i32 @clk_get_rate(ptr noundef %59) #5
  %67 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %18, i32 0, i32 4
  store i32 %66, ptr %67, align 4
  %68 = load ptr, ptr %18, align 4
  %69 = getelementptr inbounds %struct.samsung_usb2_phy_config, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %18, i32 0, i32 5
  %74 = tail call i32 %70(i32 noundef %66, ptr noundef %73) #5
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %121

76:                                               ; preds = %72, %65
  %77 = tail call ptr @devm_regulator_get(ptr noundef %2, ptr noundef nonnull @.str.11) #5
  %78 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %18, i32 0, i32 3
  store ptr %77, ptr %78, align 4
  %79 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = icmp eq ptr %77, inttoptr (i32 -517 to ptr)
  br i1 %81, label %121, label %82

82:                                               ; preds = %80
  store ptr null, ptr %78, align 4
  br label %83

83:                                               ; preds = %82, %76
  %84 = load ptr, ptr %18, align 4
  %85 = getelementptr inbounds %struct.samsung_usb2_phy_config, ptr %84, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %115, label %88

88:                                               ; preds = %101, %83
  %89 = phi ptr [ %111, %101 ], [ %84, %83 ]
  %90 = phi i32 [ %110, %101 ], [ 0, %83 ]
  %91 = load ptr, ptr %89, align 4
  %92 = getelementptr %struct.samsung_usb2_common_phy, ptr %91, i32 %90, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef null, ptr noundef nonnull @samsung_usb2_phy_ops) #5
  %95 = getelementptr %struct.samsung_usb2_phy_driver, ptr %18, i32 0, i32 11, i32 %90, i32 1
  store ptr %94, ptr %95, align 4
  %96 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.12, ptr noundef %93) #6
  %99 = load ptr, ptr %95, align 4
  %100 = ptrtoint ptr %99 to i32
  br label %121

101:                                              ; preds = %88
  %102 = getelementptr %struct.samsung_usb2_phy_driver, ptr %18, i32 0, i32 11, i32 %90
  %103 = load ptr, ptr %18, align 4
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr %struct.samsung_usb2_common_phy, ptr %104, i32 %90
  store ptr %105, ptr %102, align 4
  %106 = getelementptr %struct.samsung_usb2_phy_driver, ptr %18, i32 0, i32 11, i32 %90, i32 2
  store ptr %18, ptr %106, align 4
  %107 = getelementptr inbounds %struct.phy, ptr %94, i32 0, i32 6
  store i32 8, ptr %107, align 4
  %108 = load ptr, ptr %95, align 4
  %109 = getelementptr inbounds %struct.device, ptr %108, i32 0, i32 8
  store ptr %102, ptr %109, align 8
  %110 = add nuw i32 %90, 1
  %111 = load ptr, ptr %18, align 4
  %112 = getelementptr inbounds %struct.samsung_usb2_phy_config, ptr %111, i32 0, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = icmp ult i32 %110, %113
  br i1 %114, label %88, label %115

115:                                              ; preds = %101, %83
  %116 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %2, ptr noundef null, ptr noundef nonnull @__this_module, ptr noundef nonnull @samsung_usb2_phy_xlate) #5
  %117 = icmp ugt ptr %116, inttoptr (i32 -4096 to ptr)
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.13) #6
  %120 = ptrtoint ptr %116 to i32
  br label %121

121:                                              ; preds = %118, %115, %97, %80, %72, %62, %55, %48, %35, %27, %10, %7, %6
  %122 = phi i32 [ %29, %27 ], [ %37, %35 ], [ %50, %48 ], [ %57, %55 ], [ %64, %62 ], [ %120, %118 ], [ -22, %6 ], [ -22, %7 ], [ -12, %10 ], [ %74, %72 ], [ -517, %80 ], [ 0, %115 ], [ %100, %97 ]
  ret i32 %122
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @samsung_usb2_phy_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.samsung_usb2_phy_config, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %14, label %13, !prof !9

13:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 100, i32 noundef 9, ptr noundef null) #5
  br label %17

14:                                               ; preds = %6
  %15 = getelementptr %struct.samsung_usb2_phy_driver, ptr %4, i32 0, i32 11, i32 %8, i32 1
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %13, %2
  %18 = phi ptr [ inttoptr (i32 -19 to ptr), %13 ], [ %16, %14 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_usb2_phy_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @regulator_enable(ptr noundef nonnull %7) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %9, %1
  %13 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @clk_prepare(ptr noundef %14) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %12
  %18 = tail call i32 @clk_enable(ptr noundef %14) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %5, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @clk_prepare(ptr noundef %22) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = tail call i32 @clk_enable(ptr noundef %22) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load ptr, ptr %3, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %57, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %33) #5
  %34 = load ptr, ptr %3, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %3) #5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %37 = load i16, ptr %33, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %32
  %41 = load ptr, ptr %21, align 4
  tail call void @clk_disable(ptr noundef %41) #5
  br label %42

42:                                               ; preds = %40, %25
  %43 = phi ptr [ %41, %40 ], [ %22, %25 ]
  %44 = phi i32 [ %36, %40 ], [ %26, %25 ]
  tail call void @clk_unprepare(ptr noundef %43) #5
  br label %45

45:                                               ; preds = %42, %20
  %46 = phi i32 [ %23, %20 ], [ %44, %42 ]
  %47 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %47) #5
  br label %48

48:                                               ; preds = %45, %17
  %49 = phi ptr [ %47, %45 ], [ %14, %17 ]
  %50 = phi i32 [ %46, %45 ], [ %18, %17 ]
  tail call void @clk_unprepare(ptr noundef %49) #5
  br label %51

51:                                               ; preds = %48, %12
  %52 = phi i32 [ %15, %12 ], [ %50, %48 ]
  %53 = load ptr, ptr %6, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = tail call i32 @regulator_disable(ptr noundef nonnull %53) #5
  br label %57

57:                                               ; preds = %55, %51, %32, %28, %9
  %58 = phi i32 [ 0, %32 ], [ 0, %28 ], [ %10, %9 ], [ %52, %55 ], [ %52, %51 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_usb2_phy_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %11) #5
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %3) #5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %16 = load i16, ptr %11, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %10, %1
  %20 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %5, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %21) #5
  tail call void @clk_unprepare(ptr noundef %21) #5
  %22 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %5, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void @clk_disable(ptr noundef %23) #5
  tail call void @clk_unprepare(ptr noundef %23) #5
  %24 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %5, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = tail call i32 @regulator_disable(ptr noundef nonnull %25) #5
  br label %29

29:                                               ; preds = %27, %19, %10
  %30 = phi i32 [ %15, %10 ], [ %28, %27 ], [ 0, %19 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148883261}
!11 = !{i64 2148879085}
!12 = !{i64 2148879160, i64 2148879187, i64 2148879234, i64 2148879256, i64 2148879284, i64 2148879304}
!13 = !{i64 2148906264}
