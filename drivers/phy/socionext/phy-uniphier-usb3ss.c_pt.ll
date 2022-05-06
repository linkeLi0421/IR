; ModuleID = '/llk/IR/drivers/phy/socionext/phy-uniphier-usb3ss.c_pt.bc'
source_filename = "../drivers/phy/socionext/phy-uniphier-usb3ss.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uniphier_u3ssphy_soc_data = type { i8, i32, [7 x %struct.uniphier_u3ssphy_param] }
%struct.uniphier_u3ssphy_param = type { %struct.anon.71, i8 }
%struct.anon.71 = type { i32, i32, i32 }
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
%struct.uniphier_u3ssphy_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_phy_uniphier_usb3ss__278_349_uniphier_u3ssphy_driver_init6 = internal global ptr @uniphier_u3ssphy_driver_init, section ".initcall6.init", align 4
@uniphier_u3ssphy_driver = internal global %struct.platform_driver { ptr @uniphier_u3ssphy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_u3ssphy_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_uniphier_u3ssphy_driver_exit = internal global ptr @uniphier_u3ssphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author279 = internal constant [77 x i8] c"phy_uniphier_usb3ss.author=Kunihiko Hayashi <hayashi.kunihiko@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description280 = internal constant [75 x i8] c"phy_uniphier_usb3ss.description=UniPhier SS-PHY driver for USB3 controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file281 = internal constant [67 x i8] c"phy_uniphier_usb3ss.file=drivers/phy/socionext/phy-uniphier-usb3ss\00", section ".modinfo", align 1
@__UNIQUE_ID_license282 = internal constant [35 x i8] c"phy_uniphier_usb3ss.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [20 x i8] c"uniphier-usb3-ssphy\00", align 1
@uniphier_u3ssphy_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-usb3-ssphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro5-usb3-ssphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-usb3-ssphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-usb3-ssphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld20_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-usb3-ssphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld20_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-nx1-usb3-ssphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld20_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"drivers/phy/socionext/phy-uniphier-usb3ss.c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"phy-ext\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"gio\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@uniphier_u3ssphy_ops = internal constant %struct.phy_ops { ptr @uniphier_u3ssphy_init, ptr @uniphier_u3ssphy_exit, ptr @uniphier_u3ssphy_power_on, ptr @uniphier_u3ssphy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@uniphier_pro4_data = internal constant %struct.uniphier_u3ssphy_soc_data { i8 1, i32 0, [7 x %struct.uniphier_u3ssphy_param] zeroinitializer }, align 4
@uniphier_pxs2_data = internal constant %struct.uniphier_u3ssphy_soc_data { i8 0, i32 7, [7 x %struct.uniphier_u3ssphy_param] [%struct.uniphier_u3ssphy_param { %struct.anon.71 { i32 7, i32 3, i32 0 }, i8 10 }, %struct.uniphier_u3ssphy_param { %struct.anon.71 { i32 8, i32 3, i32 0 }, i8 3 }, %struct.uniphier_u3ssphy_param { %struct.anon.71 { i32 9, i32 3, i32 0 }, i8 5 }, %struct.uniphier_u3ssphy_param { %struct.anon.71 { i32 11, i32 3, i32 0 }, i8 9 }, %struct.uniphier_u3ssphy_param { %struct.anon.71 { i32 13, i32 6, i32 5 }, i8 2 }, %struct.uniphier_u3ssphy_param { %struct.anon.71 { i32 27, i32 2, i32 0 }, i8 7 }, %struct.uniphier_u3ssphy_param { %struct.anon.71 { i32 28, i32 1, i32 0 }, i8 1 }] }, align 4
@uniphier_ld20_data = internal constant %struct.uniphier_u3ssphy_soc_data { i8 0, i32 3, [7 x %struct.uniphier_u3ssphy_param] [%struct.uniphier_u3ssphy_param { %struct.anon.71 { i32 7, i32 3, i32 0 }, i8 6 }, %struct.uniphier_u3ssphy_param { %struct.anon.71 { i32 13, i32 6, i32 5 }, i8 2 }, %struct.uniphier_u3ssphy_param { %struct.anon.71 { i32 26, i32 7, i32 4 }, i8 5 }, %struct.uniphier_u3ssphy_param zeroinitializer, %struct.uniphier_u3ssphy_param zeroinitializer, %struct.uniphier_u3ssphy_param zeroinitializer, %struct.uniphier_u3ssphy_param zeroinitializer] }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author279, ptr @__UNIQUE_ID_description280, ptr @__UNIQUE_ID_file281, ptr @__UNIQUE_ID_license282, ptr @__exitcall_uniphier_u3ssphy_driver_exit, ptr @__initcall__kmod_phy_uniphier_usb3ss__278_349_uniphier_u3ssphy_driver_init6, ptr @uniphier_u3ssphy_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @uniphier_u3ssphy_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_u3ssphy_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @uniphier_u3ssphy_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_u3ssphy_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_u3ssphy_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %85, label %5

5:                                                ; preds = %1
  store ptr %2, ptr %3, align 4
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #3
  %7 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 10
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.uniphier_u3ssphy_soc_data, ptr %6, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 7
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %9, %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 229, i32 noundef 9, ptr noundef null) #3
  br label %85

14:                                               ; preds = %9
  %15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #3
  %16 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = ptrtoint ptr %15 to i32
  br label %85

20:                                               ; preds = %14
  %21 = load i8, ptr %6, align 4, !range !9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #3
  %25 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 2
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = ptrtoint ptr %24 to i32
  br label %85

29:                                               ; preds = %23
  %30 = tail call ptr @devm_clk_get_optional(ptr noundef %2, ptr noundef nonnull @.str.3) #3
  %31 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 3
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = ptrtoint ptr %30 to i32
  br label %85

35:                                               ; preds = %29
  %36 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %37 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 6
  store ptr %36, ptr %37, align 4
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = ptrtoint ptr %36 to i32
  br label %85

41:                                               ; preds = %20
  %42 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.4) #3
  %43 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 5
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = ptrtoint ptr %42 to i32
  br label %85

47:                                               ; preds = %41
  %48 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %49 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 8
  store ptr %48, ptr %49, align 4
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = ptrtoint ptr %48 to i32
  br label %85

53:                                               ; preds = %47, %35
  %54 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.5) #3
  %55 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 4
  store ptr %54, ptr %55, align 4
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i32
  br label %85

59:                                               ; preds = %53
  %60 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %61 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 7
  store ptr %60, ptr %61, align 4
  %62 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = ptrtoint ptr %60 to i32
  br label %85

65:                                               ; preds = %59
  %66 = tail call ptr @devm_regulator_get_optional(ptr noundef %2, ptr noundef nonnull @.str.6) #3
  %67 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 9
  store ptr %66, ptr %67, align 4
  %68 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = icmp eq ptr %66, inttoptr (i32 -517 to ptr)
  br i1 %70, label %85, label %71

71:                                               ; preds = %69
  store ptr null, ptr %67, align 4
  br label %72

72:                                               ; preds = %71, %65
  %73 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %74 = load ptr, ptr %73, align 8
  %75 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef %74, ptr noundef nonnull @uniphier_u3ssphy_ops) #3
  %76 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = ptrtoint ptr %75 to i32
  br label %85

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.device, ptr %75, i32 0, i32 8
  store ptr %3, ptr %80, align 8
  %81 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #3
  %82 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  %83 = ptrtoint ptr %81 to i32
  %84 = select i1 %82, i32 %83, i32 0
  br label %85

85:                                               ; preds = %79, %77, %69, %63, %57, %51, %45, %39, %33, %27, %18, %13, %1
  %86 = phi i32 [ -22, %13 ], [ %19, %18 ], [ %46, %45 ], [ %52, %51 ], [ %58, %57 ], [ %64, %63 ], [ %78, %77 ], [ %84, %79 ], [ %28, %27 ], [ %34, %33 ], [ %40, %39 ], [ -12, %1 ], [ -517, %69 ]
  ret i32 %86
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
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

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
define internal i32 @uniphier_u3ssphy_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %137

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %134

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_prepare(ptr noundef %13) #3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %131

16:                                               ; preds = %11
  %17 = tail call i32 @clk_enable(ptr noundef %13) #3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %128

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @reset_control_deassert(ptr noundef %21) #3
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %125

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @reset_control_deassert(ptr noundef %26) #3
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %122

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 10
  %31 = load ptr, ptr %30, align 4
  %32 = load i8, ptr %31, align 4, !range !9
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %137

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.uniphier_u3ssphy_soc_data, ptr %31, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %137

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 1
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi ptr [ %31, %38 ], [ %118, %40 ]
  %42 = phi i32 [ 0, %38 ], [ %117, %40 ]
  %43 = getelementptr %struct.uniphier_u3ssphy_soc_data, ptr %41, i32 0, i32 2, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.anon.71, ptr %43, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.anon.71, ptr %43, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = shl i32 %44, 1
  %50 = and i32 %49, 62
  %51 = or i32 %50, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %52 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %51) #3, !srcloc !11
  %53 = load ptr, ptr %39, align 4
  %54 = getelementptr i8, ptr %53, i32 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !13
  %56 = load ptr, ptr %39, align 4
  %57 = getelementptr i8, ptr %56, i32 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !14
  %59 = load ptr, ptr %39, align 4
  %60 = getelementptr i8, ptr %59, i32 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !15
  %62 = load i32, ptr %43, align 4
  %63 = shl nsw i32 -1, %46
  %64 = sub i32 31, %48
  %65 = lshr i32 -1, %64
  %66 = getelementptr %struct.uniphier_u3ssphy_soc_data, ptr %41, i32 0, i32 2, i32 %42, i32 1
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i32
  %69 = load i32, ptr %45, align 4
  %70 = shl i32 %68, %69
  %71 = and i32 %63, 255
  %72 = and i32 %71, %65
  %73 = and i32 %70, %72
  %74 = xor i32 %72, 255
  %75 = and i32 %61, %74
  %76 = or i32 %73, %75
  %77 = shl nuw nsw i32 %76, 6
  %78 = shl i32 %62, 1
  %79 = and i32 %78, 62
  %80 = or i32 %77, %79
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %81 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %80) #3, !srcloc !11
  %82 = load ptr, ptr %39, align 4
  %83 = getelementptr i8, ptr %82, i32 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !13
  %85 = load ptr, ptr %39, align 4
  %86 = getelementptr i8, ptr %85, i32 4
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !14
  %88 = or i32 %80, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %89 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %88) #3, !srcloc !11
  %90 = load ptr, ptr %39, align 4
  %91 = getelementptr i8, ptr %90, i32 4
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !13
  %93 = load ptr, ptr %39, align 4
  %94 = getelementptr i8, ptr %93, i32 4
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %96 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %80) #3, !srcloc !11
  %97 = load ptr, ptr %39, align 4
  %98 = getelementptr i8, ptr %97, i32 4
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !13
  %100 = load ptr, ptr %39, align 4
  %101 = getelementptr i8, ptr %100, i32 4
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !14
  %103 = load i32, ptr %43, align 4
  %104 = shl i32 %103, 1
  %105 = and i32 %104, 62
  %106 = or i32 %105, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %107 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %106) #3, !srcloc !11
  %108 = load ptr, ptr %39, align 4
  %109 = getelementptr i8, ptr %108, i32 4
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !13
  %111 = load ptr, ptr %39, align 4
  %112 = getelementptr i8, ptr %111, i32 4
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !14
  %114 = load ptr, ptr %39, align 4
  %115 = getelementptr i8, ptr %114, i32 4
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !16
  %117 = add nuw nsw i32 %42, 1
  %118 = load ptr, ptr %30, align 4
  %119 = getelementptr inbounds %struct.uniphier_u3ssphy_soc_data, ptr %118, i32 0, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %40, label %137

122:                                              ; preds = %24
  %123 = load ptr, ptr %20, align 4
  %124 = tail call i32 @reset_control_assert(ptr noundef %123) #3
  br label %125

125:                                              ; preds = %122, %19
  %126 = phi i32 [ %22, %19 ], [ %27, %122 ]
  %127 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %127) #3
  br label %128

128:                                              ; preds = %125, %16
  %129 = phi ptr [ %127, %125 ], [ %13, %16 ]
  %130 = phi i32 [ %126, %125 ], [ %17, %16 ]
  tail call void @clk_unprepare(ptr noundef %129) #3
  br label %131

131:                                              ; preds = %128, %11
  %132 = phi i32 [ %14, %11 ], [ %130, %128 ]
  %133 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %133) #3
  br label %134

134:                                              ; preds = %131, %8
  %135 = phi ptr [ %133, %131 ], [ %5, %8 ]
  %136 = phi i32 [ %132, %131 ], [ %9, %8 ]
  tail call void @clk_unprepare(ptr noundef %135) #3
  br label %137

137:                                              ; preds = %134, %40, %34, %29, %1
  %138 = phi i32 [ 0, %29 ], [ %6, %1 ], [ 0, %34 ], [ %136, %134 ], [ 0, %40 ]
  ret i32 %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_u3ssphy_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @reset_control_assert(ptr noundef %5) #3
  %7 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @reset_control_assert(ptr noundef %8) #3
  %10 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #3
  tail call void @clk_unprepare(ptr noundef %11) #3
  %12 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #3
  tail call void @clk_unprepare(ptr noundef %13) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_u3ssphy_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_prepare(ptr noundef %13) #3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %11
  %17 = tail call i32 @clk_enable(ptr noundef %13) #3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @reset_control_deassert(ptr noundef %21) #3
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 9
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @regulator_enable(ptr noundef nonnull %26) #3
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %20, align 4
  %33 = tail call i32 @reset_control_assert(ptr noundef %32) #3
  br label %34

34:                                               ; preds = %31, %19
  %35 = phi i32 [ %22, %19 ], [ %29, %31 ]
  %36 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %36) #3
  br label %37

37:                                               ; preds = %34, %16
  %38 = phi ptr [ %36, %34 ], [ %13, %16 ]
  %39 = phi i32 [ %35, %34 ], [ %17, %16 ]
  tail call void @clk_unprepare(ptr noundef %38) #3
  br label %40

40:                                               ; preds = %37, %11
  %41 = phi i32 [ %14, %11 ], [ %39, %37 ]
  %42 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %42) #3
  br label %43

43:                                               ; preds = %40, %8
  %44 = phi ptr [ %42, %40 ], [ %5, %8 ]
  %45 = phi i32 [ %41, %40 ], [ %9, %8 ]
  tail call void @clk_unprepare(ptr noundef %44) #3
  br label %46

46:                                               ; preds = %43, %28, %24, %1
  %47 = phi i32 [ 0, %28 ], [ 0, %24 ], [ %6, %1 ], [ %45, %43 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_u3ssphy_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #3
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @reset_control_assert(ptr noundef %11) #3
  %13 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #3
  tail call void @clk_unprepare(ptr noundef %14) #3
  %15 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, ptr %3, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #3
  tail call void @clk_unprepare(ptr noundef %16) #3
  ret i32 0
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
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
!10 = !{i64 2153680498}
!11 = !{i64 1757451}
!12 = !{i64 1757869}
!13 = !{i64 2153680963}
!14 = !{i64 2153681298}
!15 = !{i64 2153766086}
!16 = !{i64 2153930458}
