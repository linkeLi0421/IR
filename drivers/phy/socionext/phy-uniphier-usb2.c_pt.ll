; ModuleID = '/llk/IR/drivers/phy/socionext/phy-uniphier-usb2.c_pt.bc'
source_filename = "../drivers/phy/socionext/phy-uniphier-usb2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uniphier_u2phy_soc_data = type { %struct.uniphier_u2phy_param, %struct.uniphier_u2phy_param }
%struct.uniphier_u2phy_param = type { i32, i32 }
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
%struct.uniphier_u2phy_priv = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_phy_uniphier_usb2__248_240_uniphier_u2phy_driver_init6 = internal global ptr @uniphier_u2phy_driver_init, section ".initcall6.init", align 4
@uniphier_u2phy_driver = internal global %struct.platform_driver { ptr @uniphier_u2phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_u2phy_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_uniphier_u2phy_driver_exit = internal global ptr @uniphier_u2phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author249 = internal constant [75 x i8] c"phy_uniphier_usb2.author=Kunihiko Hayashi <hayashi.kunihiko@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [70 x i8] c"phy_uniphier_usb2.description=UniPhier PHY driver for USB2 controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [63 x i8] c"phy_uniphier_usb2.file=drivers/phy/socionext/phy-uniphier-usb2\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [33 x i8] c"phy_uniphier_usb2.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [18 x i8] c"uniphier-usb2-phy\00", align 1
@uniphier_u2phy_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld11-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld11_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"drivers/phy/socionext/phy-uniphier-usb2.c\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to get regmap\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@uniphier_u2phy_ops = internal constant %struct.phy_ops { ptr @uniphier_u2phy_init, ptr null, ptr @uniphier_u2phy_power_on, ptr @uniphier_u2phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Failed to create phy\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to get reg property\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"No phy configuration: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Failed to find appropriate phy\0A\00", align 1
@uniphier_pro4_data = internal constant [5 x %struct.uniphier_u2phy_soc_data] [%struct.uniphier_u2phy_soc_data { %struct.uniphier_u2phy_param { i32 1280, i32 85206016 }, %struct.uniphier_u2phy_param { i32 1292, i32 65552 } }, %struct.uniphier_u2phy_soc_data { %struct.uniphier_u2phy_param { i32 1288, i32 85206016 }, %struct.uniphier_u2phy_param { i32 1292, i32 65552 } }, %struct.uniphier_u2phy_soc_data { %struct.uniphier_u2phy_param { i32 1296, i32 85206016 }, %struct.uniphier_u2phy_param { i32 1308, i32 65552 } }, %struct.uniphier_u2phy_soc_data { %struct.uniphier_u2phy_param { i32 1304, i32 85206016 }, %struct.uniphier_u2phy_param { i32 1308, i32 65552 } }, %struct.uniphier_u2phy_soc_data zeroinitializer], align 4
@uniphier_ld11_data = internal constant [4 x %struct.uniphier_u2phy_soc_data] [%struct.uniphier_u2phy_soc_data { %struct.uniphier_u2phy_param { i32 1280, i32 -2111307776 }, %struct.uniphier_u2phy_param { i32 1284, i32 262 } }, %struct.uniphier_u2phy_soc_data { %struct.uniphier_u2phy_param { i32 1288, i32 -2111307776 }, %struct.uniphier_u2phy_param { i32 1292, i32 262 } }, %struct.uniphier_u2phy_soc_data { %struct.uniphier_u2phy_param { i32 1296, i32 -2111307776 }, %struct.uniphier_u2phy_param { i32 1300, i32 262 } }, %struct.uniphier_u2phy_soc_data zeroinitializer], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_uniphier_u2phy_driver_exit, ptr @__initcall__kmod_phy_uniphier_usb2__248_240_uniphier_u2phy_driver_init6, ptr @uniphier_u2phy_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @uniphier_u2phy_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_u2phy_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @uniphier_u2phy_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_u2phy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_u2phy_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = tail call ptr @of_device_get_match_data(ptr noundef %3) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 117, i32 noundef 9, ptr noundef null) #5
  br label %73

7:                                                ; preds = %7, %1
  %8 = phi i32 [ %12, %7 ], [ 0, %1 ]
  %9 = getelementptr %struct.uniphier_u2phy_soc_data, ptr %4, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = add i32 %8, 1
  br i1 %11, label %13, label %7

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = tail call ptr @of_get_parent(ptr noundef %15) #5
  %17 = tail call ptr @syscon_node_to_regmap(ptr noundef %16) #5
  tail call void @of_node_put(ptr noundef %16) #5
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #6
  %20 = ptrtoint ptr %17 to i32
  br label %73

21:                                               ; preds = %13
  %22 = load ptr, ptr %14, align 8
  %23 = tail call ptr @of_get_next_child(ptr noundef %22, ptr noundef null) #5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %64, label %25

25:                                               ; preds = %57, %21
  %26 = phi ptr [ %28, %57 ], [ null, %21 ]
  %27 = phi ptr [ %62, %57 ], [ %23, %21 ]
  %28 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 20, i32 noundef 3520) #5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %71, label %30

30:                                               ; preds = %25
  store ptr %17, ptr %28, align 4
  %31 = call ptr @devm_regulator_get_optional(ptr noundef %3, ptr noundef nonnull @.str.3) #5
  %32 = getelementptr inbounds %struct.uniphier_u2phy_priv, ptr %28, i32 0, i32 2
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = icmp eq ptr %31, inttoptr (i32 -517 to ptr)
  br i1 %35, label %71, label %36

36:                                               ; preds = %34
  store ptr null, ptr %32, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = call ptr @devm_phy_create(ptr noundef %3, ptr noundef nonnull %27, ptr noundef nonnull @uniphier_u2phy_ops) #5
  %39 = getelementptr inbounds %struct.uniphier_u2phy_priv, ptr %28, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #6
  %42 = load ptr, ptr %39, align 4
  %43 = ptrtoint ptr %42 to i32
  br label %71

44:                                               ; preds = %37
  %45 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %27, ptr noundef nonnull @.str.5, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #6
  br label %71

48:                                               ; preds = %44
  %49 = load i32, ptr %2, align 4
  %50 = icmp slt i32 %49, %8
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = getelementptr %struct.uniphier_u2phy_soc_data, ptr %4, i32 %49
  %53 = getelementptr inbounds %struct.uniphier_u2phy_priv, ptr %28, i32 0, i32 3
  store ptr %52, ptr %53, align 4
  br label %57

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.device_node, ptr %27, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef %56) #6
  br label %57

57:                                               ; preds = %54, %51
  %58 = load ptr, ptr %39, align 4
  %59 = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 8
  store ptr %28, ptr %59, align 8
  %60 = getelementptr inbounds %struct.uniphier_u2phy_priv, ptr %28, i32 0, i32 4
  store ptr %26, ptr %60, align 4
  %61 = load ptr, ptr %14, align 8
  %62 = call ptr @of_get_next_child(ptr noundef %61, ptr noundef nonnull %27) #5
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %25

64:                                               ; preds = %57, %21
  %65 = phi ptr [ null, %21 ], [ %28, %57 ]
  %66 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %65, ptr %66, align 8
  %67 = call ptr @__devm_of_phy_provider_register(ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef nonnull @uniphier_u2phy_xlate) #5
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  %69 = ptrtoint ptr %67 to i32
  %70 = select i1 %68, i32 %69, i32 0
  br label %73

71:                                               ; preds = %47, %41, %34, %25
  %72 = phi i32 [ %43, %41 ], [ %45, %47 ], [ -12, %25 ], [ -517, %34 ]
  call void @of_node_put(ptr noundef nonnull %27) #5
  br label %73

73:                                               ; preds = %71, %64, %19, %6
  %74 = phi i32 [ -22, %6 ], [ %20, %19 ], [ %72, %71 ], [ %70, %64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %74
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @uniphier_u2phy_xlate(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 4
  br label %12

8:                                                ; preds = %12
  %9 = getelementptr inbounds %struct.uniphier_u2phy_priv, ptr %13, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8, %6
  %13 = phi ptr [ %4, %6 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.uniphier_u2phy_priv, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 25
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %7, %17
  br i1 %18, label %20, label %8

19:                                               ; preds = %8, %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8) #6
  br label %20

20:                                               ; preds = %19, %12
  %21 = phi ptr [ inttoptr (i32 -22 to ptr), %19 ], [ %15, %12 ]
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_u2phy_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_u2phy_priv, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  %9 = load i32, ptr %5, align 4
  %10 = getelementptr inbounds %struct.uniphier_u2phy_param, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %9, i32 noundef %11) #5
  %13 = load ptr, ptr %3, align 4
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.uniphier_u2phy_soc_data, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.uniphier_u2phy_soc_data, ptr %14, i32 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %16, i32 noundef %18) #5
  br label %20

20:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_u2phy_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_u2phy_priv, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @regulator_enable(ptr noundef nonnull %5) #5
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_u2phy_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_u2phy_priv, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #5
  br label %9

9:                                                ; preds = %7, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
!9 = !{!"branch_weights", i32 1, i32 2000}
