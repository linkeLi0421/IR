; ModuleID = '/llk/IR/drivers/phy/socionext/phy-uniphier-ahci.c_pt.bc'
source_filename = "../drivers/phy/socionext/phy-uniphier-ahci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uniphier_ahciphy_soc_data = type { ptr, ptr, ptr, i8, i8, i8 }
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
%struct.uniphier_ahciphy_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_phy_uniphier_ahci__343_510_uniphier_ahciphy_driver_init6 = internal global ptr @uniphier_ahciphy_driver_init, section ".initcall6.init", align 4
@uniphier_ahciphy_driver = internal global %struct.platform_driver { ptr @uniphier_ahciphy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_ahciphy_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_uniphier_ahciphy_driver_exit = internal global ptr @uniphier_ahciphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author344 = internal constant [75 x i8] c"phy_uniphier_ahci.author=Kunihiko Hayashi <hayashi.kunihiko@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description345 = internal constant [70 x i8] c"phy_uniphier_ahci.description=UniPhier PHY driver for AHCI controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file346 = internal constant [63 x i8] c"phy_uniphier_ahci.file=drivers/phy/socionext/phy-uniphier-ahci\00", section ".modinfo", align 1
@__UNIQUE_ID_license347 = internal constant [33 x i8] c"phy_uniphier_ahci.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [18 x i8] c"uniphier-ahci-phy\00", align 1
@uniphier_ahciphy_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-ahci-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-ahci-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-ahci-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs3_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"drivers/phy/socionext/phy-uniphier-ahci.c\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"gio\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@uniphier_ahciphy_ops = internal constant %struct.phy_ops { ptr @uniphier_ahciphy_init, ptr @uniphier_ahciphy_exit, ptr @uniphier_ahciphy_power_on, ptr @uniphier_ahciphy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"failed to create phy\0A\00", align 1
@uniphier_pro4_data = internal constant %struct.uniphier_ahciphy_soc_data { ptr @uniphier_ahciphy_pro4_init, ptr @uniphier_ahciphy_pro4_power_on, ptr @uniphier_ahciphy_pro4_power_off, i8 1, i8 0, i8 0 }, align 4
@uniphier_pxs2_data = internal constant %struct.uniphier_ahciphy_soc_data { ptr null, ptr @uniphier_ahciphy_pxs2_power_on, ptr @uniphier_ahciphy_pxs2_power_off, i8 0, i8 0, i8 0 }, align 4
@uniphier_pxs3_data = internal constant %struct.uniphier_ahciphy_soc_data { ptr @uniphier_ahciphy_pxs3_init, ptr @uniphier_ahciphy_pxs2_power_on, ptr @uniphier_ahciphy_pxs2_power_off, i8 0, i8 1, i8 1 }, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"Failed to check whether Rx is ready\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Failed to release PM reset\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Failed to release Tx reset\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Failed to release Rx reset\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Failed to check whether PHY PLL is ready\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author344, ptr @__UNIQUE_ID_description345, ptr @__UNIQUE_ID_file346, ptr @__UNIQUE_ID_license347, ptr @__exitcall_uniphier_ahciphy_driver_exit, ptr @__initcall__kmod_phy_uniphier_ahci__343_510_uniphier_ahciphy_driver_init6, ptr @uniphier_ahciphy_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_ahciphy_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @uniphier_ahciphy_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_ahciphy_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 48, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %91, label %5

5:                                                ; preds = %1
  store ptr %2, ptr %3, align 4
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #4
  %7 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 11
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 400, i32 noundef 9, ptr noundef null) #4
  br label %91

10:                                               ; preds = %5
  %11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  %12 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = ptrtoint ptr %11 to i32
  br label %91

16:                                               ; preds = %10
  %17 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #4
  %18 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 3
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = ptrtoint ptr %17 to i32
  br label %91

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.uniphier_ahciphy_soc_data, ptr %6, i32 0, i32 5
  %24 = load i8, ptr %23, align 2, !range !9
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #4
  %28 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 2
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = ptrtoint ptr %27 to i32
  br label %91

32:                                               ; preds = %26, %22
  %33 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %34 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 6
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = ptrtoint ptr %33 to i32
  br label %91

38:                                               ; preds = %32
  %39 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %40 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 5
  store ptr %39, ptr %40, align 4
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = ptrtoint ptr %39 to i32
  br label %91

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.uniphier_ahciphy_soc_data, ptr %6, i32 0, i32 3
  %46 = load i8, ptr %45, align 4, !range !9
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %78, label %48

48:                                               ; preds = %44
  %49 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.4) #4
  %50 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 4
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = ptrtoint ptr %49 to i32
  br label %91

54:                                               ; preds = %48
  %55 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %56 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 7
  store ptr %55, ptr %56, align 4
  %57 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = ptrtoint ptr %55 to i32
  br label %91

60:                                               ; preds = %54
  %61 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %62 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 8
  store ptr %61, ptr %62, align 4
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = ptrtoint ptr %61 to i32
  br label %91

66:                                               ; preds = %60
  %67 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %68 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 9
  store ptr %67, ptr %68, align 4
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = ptrtoint ptr %67 to i32
  br label %91

72:                                               ; preds = %66
  %73 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %74 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 10
  store ptr %73, ptr %74, align 4
  %75 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = ptrtoint ptr %73 to i32
  br label %91

78:                                               ; preds = %72, %44
  %79 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %80 = load ptr, ptr %79, align 8
  %81 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef %80, ptr noundef nonnull @uniphier_ahciphy_ops) #4
  %82 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #5
  %84 = ptrtoint ptr %81 to i32
  br label %91

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.device, ptr %81, i32 0, i32 8
  store ptr %3, ptr %86, align 8
  %87 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #4
  %88 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  %89 = ptrtoint ptr %87 to i32
  %90 = select i1 %88, i32 %89, i32 0
  br label %91

91:                                               ; preds = %85, %83, %76, %70, %64, %58, %52, %42, %36, %30, %20, %14, %9, %1
  %92 = phi i32 [ -22, %9 ], [ %15, %14 ], [ %21, %20 ], [ %31, %30 ], [ %37, %36 ], [ %43, %42 ], [ %53, %52 ], [ %59, %58 ], [ %65, %64 ], [ %71, %70 ], [ %77, %76 ], [ %84, %83 ], [ -12, %1 ], [ %90, %85 ]
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %56

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_prepare(ptr noundef %13) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %11
  %17 = tail call i32 @clk_enable(ptr noundef %13) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @reset_control_deassert(ptr noundef %21) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @reset_control_deassert(ptr noundef %26) #4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 11
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %56, label %34

34:                                               ; preds = %29
  %35 = tail call i32 %32(ptr noundef %3) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %25, align 4
  %39 = tail call i32 @reset_control_assert(ptr noundef %38) #4
  br label %40

40:                                               ; preds = %37, %24
  %41 = phi i32 [ %27, %24 ], [ %35, %37 ]
  %42 = load ptr, ptr %20, align 4
  %43 = tail call i32 @reset_control_assert(ptr noundef %42) #4
  br label %44

44:                                               ; preds = %40, %19
  %45 = phi i32 [ %22, %19 ], [ %41, %40 ]
  %46 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %46) #4
  br label %47

47:                                               ; preds = %44, %16
  %48 = phi ptr [ %46, %44 ], [ %13, %16 ]
  %49 = phi i32 [ %45, %44 ], [ %17, %16 ]
  tail call void @clk_unprepare(ptr noundef %48) #4
  br label %50

50:                                               ; preds = %47, %11
  %51 = phi i32 [ %14, %11 ], [ %49, %47 ]
  %52 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %52) #4
  br label %53

53:                                               ; preds = %50, %8
  %54 = phi ptr [ %52, %50 ], [ %5, %8 ]
  %55 = phi i32 [ %51, %50 ], [ %9, %8 ]
  tail call void @clk_unprepare(ptr noundef %54) #4
  br label %56

56:                                               ; preds = %53, %34, %29, %1
  %57 = phi i32 [ 0, %34 ], [ 0, %29 ], [ %6, %1 ], [ %55, %53 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @reset_control_assert(ptr noundef %5) #4
  %7 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @reset_control_assert(ptr noundef %8) #4
  %10 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #4
  tail call void @clk_unprepare(ptr noundef %11) #4
  %12 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #4
  tail call void @clk_unprepare(ptr noundef %13) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @reset_control_deassert(ptr noundef %13) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.uniphier_ahciphy_soc_data, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = tail call i32 %20(ptr noundef %3) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %12, align 4
  %27 = tail call i32 @reset_control_assert(ptr noundef %26) #4
  br label %28

28:                                               ; preds = %25, %11
  %29 = phi i32 [ %14, %11 ], [ %23, %25 ]
  %30 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %30) #4
  br label %31

31:                                               ; preds = %28, %8
  %32 = phi ptr [ %30, %28 ], [ %5, %8 ]
  %33 = phi i32 [ %29, %28 ], [ %9, %8 ]
  tail call void @clk_unprepare(ptr noundef %32) #4
  br label %34

34:                                               ; preds = %31, %22, %16, %1
  %35 = phi i32 [ 0, %22 ], [ 0, %16 ], [ %6, %1 ], [ %33, %31 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uniphier_ahciphy_soc_data, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 %7(ptr noundef %3) #4
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ %10, %9 ], [ 0, %1 ]
  %13 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @reset_control_assert(ptr noundef %14) #4
  %16 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %3, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #4
  tail call void @clk_unprepare(ptr noundef %17) #4
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_pro4_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %5 = and i32 %4, -512
  %6 = or i32 %5, 105
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #4, !srcloc !13
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %11 = and i32 %10, -2039553
  %12 = or i32 %11, 1050112
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #4, !srcloc !13
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  %18 = and i32 %17, 67076339
  %19 = or i32 %18, -872401664
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #4, !srcloc !13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_pro4_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !18
  %5 = and i32 %4, -513
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #4, !srcloc !13
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  %10 = or i32 %9, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #4, !srcloc !13
  %13 = tail call i64 @ktime_get() #4
  %14 = add i64 %13, 2000000
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 48
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !22
  %18 = and i32 %17, 262144
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %27, %1
  %21 = tail call i64 @ktime_get() #4
  %22 = icmp sgt i64 %21, %14
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr i8, ptr %24, i32 48
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !23
  br label %33

27:                                               ; preds = %20
  tail call void @usleep_range_state(i32 noundef 51, i32 noundef 200, i32 noundef 2) #4
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr i8, ptr %28, i32 48
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !22
  %31 = and i32 %30, 262144
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %20

33:                                               ; preds = %27, %23, %1
  %34 = phi i32 [ %26, %23 ], [ %17, %1 ], [ %30, %27 ]
  %35 = and i32 %34, 262144
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.9) #5
  br label %66

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %0, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @reset_control_deassert(ptr noundef %41) #4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.10) #5
  br label %66

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %0, i32 0, i32 9
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @reset_control_deassert(ptr noundef %48) #4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.11) #5
  br label %62

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %0, i32 0, i32 10
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 @reset_control_deassert(ptr noundef %55) #4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %78, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.12) #5
  %60 = load ptr, ptr %47, align 4
  %61 = tail call i32 @reset_control_assert(ptr noundef %60) #4
  br label %62

62:                                               ; preds = %58, %51
  %63 = phi i32 [ %49, %51 ], [ %56, %58 ]
  %64 = load ptr, ptr %40, align 4
  %65 = tail call i32 @reset_control_assert(ptr noundef %64) #4
  br label %66

66:                                               ; preds = %62, %44, %37
  %67 = phi i32 [ -110, %37 ], [ %42, %44 ], [ %63, %62 ]
  %68 = load ptr, ptr %2, align 4
  %69 = getelementptr i8, ptr %68, i32 8
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !24
  %71 = and i32 %70, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %72 = load ptr, ptr %2, align 4
  %73 = getelementptr i8, ptr %72, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #4, !srcloc !13
  %74 = load ptr, ptr %2, align 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !26
  %76 = or i32 %75, 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %77 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %76) #4, !srcloc !13
  br label %78

78:                                               ; preds = %66, %53
  %79 = phi i32 [ %67, %66 ], [ 0, %53 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_pro4_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @reset_control_assert(ptr noundef %3) #4
  %5 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @reset_control_assert(ptr noundef %6) #4
  %8 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @reset_control_assert(ptr noundef %9) #4
  %11 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  %15 = and i32 %14, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #4, !srcloc !13
  %18 = load ptr, ptr %11, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %20 = or i32 %19, 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %21 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %20) #4, !srcloc !13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_pxs2_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !32
  %5 = or i32 %4, 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #4, !srcloc !13
  %7 = and i32 %5, -1025
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %8 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #4, !srcloc !13
  %9 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.uniphier_ahciphy_soc_data, ptr %10, i32 0, i32 4
  %12 = load i8, ptr %11, align 1, !range !9
  %13 = icmp eq i8 %12, 0
  %14 = tail call i64 @ktime_get() #4
  %15 = add i64 %14, 400000
  %16 = load ptr, ptr %2, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4
  %18 = and i32 %17, 32768
  %19 = icmp eq i32 %18, 0
  br i1 %13, label %34, label %20

20:                                               ; preds = %1
  br i1 %19, label %21, label %56

21:                                               ; preds = %24, %20
  %22 = tail call i64 @ktime_get() #4
  %23 = icmp sgt i64 %22, %15
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  tail call void @usleep_range_state(i32 noundef 51, i32 noundef 200, i32 noundef 2) #4
  %25 = load ptr, ptr %2, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !35
  %27 = and i32 %26, 32768
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %21, label %56

29:                                               ; preds = %21
  %30 = load ptr, ptr %2, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !36
  %32 = and i32 %31, 32768
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %48, label %56

34:                                               ; preds = %1
  br i1 %19, label %56, label %35

35:                                               ; preds = %38, %34
  %36 = tail call i64 @ktime_get() #4
  %37 = icmp sgt i64 %36, %15
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  tail call void @usleep_range_state(i32 noundef 51, i32 noundef 200, i32 noundef 2) #4
  %39 = load ptr, ptr %2, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !37
  %41 = and i32 %40, 32768
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %56, label %35

43:                                               ; preds = %35
  %44 = load ptr, ptr %2, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !38
  %46 = and i32 %45, 32768
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %43, %29
  %49 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.13) #5
  %50 = load ptr, ptr %2, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !32
  %52 = or i32 %51, 1024
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %53 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %52) #4, !srcloc !13
  %54 = and i32 %52, -513
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %55 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %54) #4, !srcloc !13
  br label %56

56:                                               ; preds = %48, %43, %38, %34, %29, %24, %20
  %57 = phi i32 [ -110, %48 ], [ 0, %29 ], [ 0, %43 ], [ 0, %20 ], [ 0, %34 ], [ 0, %38 ], [ 0, %24 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_pxs2_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !32
  %5 = or i32 %4, 1024
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #4, !srcloc !13
  %7 = and i32 %5, -513
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %8 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #4, !srcloc !13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_ahciphy_pxs3_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.uniphier_ahciphy_priv, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !41
  %6 = and i32 %5, -8355712
  %7 = or i32 %6, 7554626
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #4, !srcloc !13
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !43
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !44
  %16 = load ptr, ptr %2, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %18 = load ptr, ptr %2, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %20 = load ptr, ptr %2, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %22 = load ptr, ptr %2, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %24 = load ptr, ptr %2, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %26 = load ptr, ptr %2, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %28 = load ptr, ptr %2, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %30 = load ptr, ptr %2, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %32 = load ptr, ptr %2, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %34 = load ptr, ptr %2, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %36 = load ptr, ptr %2, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %38 = load ptr, ptr %2, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %40 = load ptr, ptr %2, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %42 = load ptr, ptr %2, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %44 = load ptr, ptr %2, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %46 = load ptr, ptr %2, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %48 = load ptr, ptr %2, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %50 = load ptr, ptr %2, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %52 = load ptr, ptr %2, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %54 = load ptr, ptr %2, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %56 = load ptr, ptr %2, align 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %58 = load ptr, ptr %2, align 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %60 = load ptr, ptr %2, align 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %62 = load ptr, ptr %2, align 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  %64 = load ptr, ptr %2, align 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !45
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
!10 = !{i64 2527561}
!11 = !{i64 2153700562}
!12 = !{i64 2153825546}
!13 = !{i64 2527143}
!14 = !{i64 2153826009}
!15 = !{i64 2153911681}
!16 = !{i64 2153912144}
!17 = !{i64 2154123800}
!18 = !{i64 2154124263}
!19 = !{i64 2154124533}
!20 = !{i64 2154124996}
!21 = !{i64 2154125266}
!22 = !{i64 2154126926}
!23 = !{i64 2154127260}
!24 = !{i64 2154129933}
!25 = !{i64 2154130203}
!26 = !{i64 2154130666}
!27 = !{i64 2154130936}
!28 = !{i64 2154131399}
!29 = !{i64 2154131669}
!30 = !{i64 2154132132}
!31 = !{i64 2154132402}
!32 = !{i64 2154132865}
!33 = !{i64 2154133135}
!34 = !{i64 2154133535}
!35 = !{i64 2154135978}
!36 = !{i64 2154136309}
!37 = !{i64 2154137834}
!38 = !{i64 2154138165}
!39 = !{i64 2154133935}
!40 = !{i64 2154134333}
!41 = !{i64 2154139158}
!42 = !{i64 2154265087}
!43 = !{i64 2154265550}
!44 = !{i64 2154391626}
!45 = !{i64 2154517666}
