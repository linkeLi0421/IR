; ModuleID = '/llk/IR/drivers/phy/socionext/phy-uniphier-usb3hs.c_pt.bc'
source_filename = "../drivers/phy/socionext/phy-uniphier-usb3hs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uniphier_u3hsphy_soc_data = type { i8, i32, [4 x %struct.uniphier_u3hsphy_param], i32, i32, ptr }
%struct.uniphier_u3hsphy_param = type { %struct.anon.71, i8 }
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
%struct.uniphier_u3hsphy_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uniphier_u3hsphy_trim_param = type { i32, i32, i32 }

@__initcall__kmod_phy_uniphier_usb3hs__283_466_uniphier_u3hsphy_driver_init6 = internal global ptr @uniphier_u3hsphy_driver_init, section ".initcall6.init", align 4
@uniphier_u3hsphy_driver = internal global %struct.platform_driver { ptr @uniphier_u3hsphy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_u3hsphy_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_uniphier_u3hsphy_driver_exit = internal global ptr @uniphier_u3hsphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author284 = internal constant [77 x i8] c"phy_uniphier_usb3hs.author=Kunihiko Hayashi <hayashi.kunihiko@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description285 = internal constant [75 x i8] c"phy_uniphier_usb3hs.description=UniPhier HS-PHY driver for USB3 controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file286 = internal constant [67 x i8] c"phy_uniphier_usb3hs.file=drivers/phy/socionext/phy-uniphier-usb3hs\00", section ".modinfo", align 1
@__UNIQUE_ID_license287 = internal constant [35 x i8] c"phy_uniphier_usb3hs.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [20 x i8] c"uniphier-usb3-hsphy\00", align 1
@uniphier_u3hsphy_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro5-usb3-hsphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro5_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-usb3-hsphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-usb3-hsphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld20_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-usb3-hsphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-nx1-usb3-hsphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs3_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"drivers/phy/socionext/phy-uniphier-usb3hs.c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"phy-ext\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"gio\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@uniphier_u3hsphy_ops = internal constant %struct.phy_ops { ptr @uniphier_u3hsphy_init, ptr @uniphier_u3hsphy_exit, ptr @uniphier_u3hsphy_power_on, ptr @uniphier_u3hsphy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"rterm\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"sel_t\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"hs_i\00", align 1
@uniphier_pro5_data = internal constant %struct.uniphier_u3hsphy_soc_data { i8 1, i32 0, [4 x %struct.uniphier_u3hsphy_param] zeroinitializer, i32 0, i32 0, ptr null }, align 4
@uniphier_pxs2_data = internal constant %struct.uniphier_u3hsphy_soc_data { i8 0, i32 2, [4 x %struct.uniphier_u3hsphy_param] [%struct.uniphier_u3hsphy_param { %struct.anon.71 { i32 0, i32 5, i32 5 }, i8 1 }, %struct.uniphier_u3hsphy_param { %struct.anon.71 { i32 1, i32 1, i32 0 }, i8 1 }, %struct.uniphier_u3hsphy_param zeroinitializer, %struct.uniphier_u3hsphy_param zeroinitializer], i32 0, i32 0, ptr null }, align 4
@uniphier_ld20_data = internal constant %struct.uniphier_u3hsphy_soc_data { i8 0, i32 4, [4 x %struct.uniphier_u3hsphy_param] [%struct.uniphier_u3hsphy_param { %struct.anon.71 { i32 0, i32 5, i32 5 }, i8 1 }, %struct.uniphier_u3hsphy_param { %struct.anon.71 { i32 1, i32 1, i32 0 }, i8 1 }, %struct.uniphier_u3hsphy_param { %struct.anon.71 { i32 10, i32 6, i32 6 }, i8 1 }, %struct.uniphier_u3hsphy_param { %struct.anon.71 { i32 10, i32 5, i32 5 }, i8 1 }], i32 -1842256256, i32 262, ptr @uniphier_u3hsphy_trim_ld20 }, align 4
@uniphier_pxs3_data = internal constant %struct.uniphier_u3hsphy_soc_data { i8 0, i32 2, [4 x %struct.uniphier_u3hsphy_param] [%struct.uniphier_u3hsphy_param { %struct.anon.71 { i32 0, i32 5, i32 5 }, i8 1 }, %struct.uniphier_u3hsphy_param { %struct.anon.71 { i32 1, i32 1, i32 0 }, i8 1 }, %struct.uniphier_u3hsphy_param zeroinitializer, %struct.uniphier_u3hsphy_param zeroinitializer], i32 -1842256256, i32 262, ptr @uniphier_u3hsphy_trim_ld20 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author284, ptr @__UNIQUE_ID_description285, ptr @__UNIQUE_ID_file286, ptr @__UNIQUE_ID_license287, ptr @__exitcall_uniphier_u3hsphy_driver_exit, ptr @__initcall__kmod_phy_uniphier_usb3hs__283_466_uniphier_u3hsphy_driver_init6, ptr @uniphier_u3hsphy_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @uniphier_u3hsphy_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_u3hsphy_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @uniphier_u3hsphy_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_u3hsphy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_u3hsphy_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %85, label %5

5:                                                ; preds = %1
  store ptr %2, ptr %3, align 4
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #5
  %7 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 10
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.uniphier_u3hsphy_soc_data, ptr %6, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 4
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %9, %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 337, i32 noundef 9, ptr noundef null) #5
  br label %85

14:                                               ; preds = %9
  %15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %16 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 1
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
  %24 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  %25 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 2
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = ptrtoint ptr %24 to i32
  br label %85

29:                                               ; preds = %23
  %30 = tail call ptr @devm_clk_get_optional(ptr noundef %2, ptr noundef nonnull @.str.3) #5
  %31 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 4
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = ptrtoint ptr %30 to i32
  br label %85

35:                                               ; preds = %29
  %36 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %37 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 6
  store ptr %36, ptr %37, align 4
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = ptrtoint ptr %36 to i32
  br label %85

41:                                               ; preds = %20
  %42 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.4) #5
  %43 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 5
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = ptrtoint ptr %42 to i32
  br label %85

47:                                               ; preds = %41
  %48 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %49 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 8
  store ptr %48, ptr %49, align 4
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = ptrtoint ptr %48 to i32
  br label %85

53:                                               ; preds = %47, %35
  %54 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.5) #5
  %55 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 3
  store ptr %54, ptr %55, align 4
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i32
  br label %85

59:                                               ; preds = %53
  %60 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %61 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 7
  store ptr %60, ptr %61, align 4
  %62 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = ptrtoint ptr %60 to i32
  br label %85

65:                                               ; preds = %59
  %66 = tail call ptr @devm_regulator_get_optional(ptr noundef %2, ptr noundef nonnull @.str.6) #5
  %67 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 9
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
  %75 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef %74, ptr noundef nonnull @uniphier_u3hsphy_ops) #5
  %76 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = ptrtoint ptr %75 to i32
  br label %85

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.device, ptr %75, i32 0, i32 8
  store ptr %3, ptr %80, align 8
  %81 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #5
  %82 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  %83 = ptrtoint ptr %81 to i32
  %84 = select i1 %82, i32 %83, i32 0
  br label %85

85:                                               ; preds = %79, %77, %69, %63, %57, %51, %45, %39, %33, %27, %18, %13, %1
  %86 = phi i32 [ -22, %13 ], [ %19, %18 ], [ %46, %45 ], [ %52, %51 ], [ %58, %57 ], [ %64, %63 ], [ %78, %77 ], [ %84, %79 ], [ %28, %27 ], [ %34, %33 ], [ %40, %39 ], [ -12, %1 ], [ -517, %69 ]
  ret i32 %86
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
define internal i32 @uniphier_u3hsphy_init(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !10
  %5 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %127

9:                                                ; preds = %1
  %10 = tail call i32 @clk_enable(ptr noundef %6) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #5
  br label %127

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %4, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_prepare(ptr noundef %15) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %124

18:                                               ; preds = %13
  %19 = tail call i32 @clk_enable(ptr noundef %15) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @clk_unprepare(ptr noundef %15) #5
  br label %124

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %4, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @reset_control_deassert(ptr noundef %24) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %121

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %4, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @reset_control_deassert(ptr noundef %29) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %117

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %4, i32 0, i32 10
  %34 = load ptr, ptr %33, align 4
  %35 = load i8, ptr %34, align 4, !range !9
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %127

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.uniphier_u3hsphy_soc_data, ptr %34, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  %41 = getelementptr inbounds %struct.uniphier_u3hsphy_soc_data, ptr %34, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %40, i1 %43, i1 false
  br i1 %44, label %127, label %45

45:                                               ; preds = %37
  store i32 %39, ptr %2, align 4
  %46 = call fastcc i32 @uniphier_u3hsphy_update_config(ptr noundef %4, ptr noundef nonnull %2)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %117

48:                                               ; preds = %45
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  call void @arm_heavy_mb() #5
  %49 = load i32, ptr %2, align 4
  %50 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %4, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #5, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  call void @arm_heavy_mb() #5
  %52 = load ptr, ptr %50, align 4
  %53 = getelementptr i8, ptr %52, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %42) #5, !srcloc !12
  %54 = load ptr, ptr %33, align 4
  %55 = getelementptr inbounds %struct.uniphier_u3hsphy_soc_data, ptr %54, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %127

58:                                               ; preds = %58, %48
  %59 = phi ptr [ %113, %58 ], [ %54, %48 ]
  %60 = phi i32 [ %112, %58 ], [ 0, %48 ]
  %61 = getelementptr %struct.uniphier_u3hsphy_soc_data, ptr %59, i32 0, i32 2, i32 %60
  %62 = getelementptr inbounds %struct.anon.71, ptr %61, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = shl nsw i32 -1, %63
  %65 = getelementptr inbounds %struct.anon.71, ptr %61, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = sub i32 31, %66
  %68 = lshr i32 -1, %67
  %69 = and i32 %68, %64
  %70 = load ptr, ptr %50, align 4
  %71 = getelementptr i8, ptr %70, i32 4
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #5, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %73 = load i32, ptr %61, align 4
  %74 = and i32 %72, -536805377
  %75 = shl i32 %73, 16
  %76 = and i32 %75, 268369920
  %77 = or i32 %74, %76
  %78 = or i32 %77, 268435456
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  call void @arm_heavy_mb() #5
  %79 = load ptr, ptr %50, align 4
  %80 = getelementptr i8, ptr %79, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #5, !srcloc !12
  %81 = load ptr, ptr %50, align 4
  %82 = getelementptr i8, ptr %81, i32 4
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #5, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %84 = and i32 %83, -268435457
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  call void @arm_heavy_mb() #5
  %85 = load ptr, ptr %50, align 4
  %86 = getelementptr i8, ptr %85, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #5, !srcloc !12
  %87 = load ptr, ptr %50, align 4
  %88 = getelementptr i8, ptr %87, i32 4
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #5, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %90 = getelementptr %struct.uniphier_u3hsphy_soc_data, ptr %59, i32 0, i32 2, i32 %60, i32 1
  %91 = load i8, ptr %90, align 4
  %92 = zext i8 %91 to i32
  %93 = load i32, ptr %62, align 4
  %94 = shl i32 %92, %93
  %95 = and i32 %94, %69
  %96 = shl i32 %69, 16
  %97 = and i32 %96, 16711680
  %98 = xor i32 %97, -1
  %99 = and i32 %89, %98
  %100 = shl i32 %95, 16
  %101 = and i32 %100, 16711680
  %102 = or i32 %99, %101
  %103 = or i32 %102, 536870912
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  call void @arm_heavy_mb() #5
  %104 = load ptr, ptr %50, align 4
  %105 = getelementptr i8, ptr %104, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #5, !srcloc !12
  %106 = load ptr, ptr %50, align 4
  %107 = getelementptr i8, ptr %106, i32 4
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #5, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %109 = and i32 %108, -536870913
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  call void @arm_heavy_mb() #5
  %110 = load ptr, ptr %50, align 4
  %111 = getelementptr i8, ptr %110, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #5, !srcloc !12
  %112 = add nuw nsw i32 %60, 1
  %113 = load ptr, ptr %33, align 4
  %114 = getelementptr inbounds %struct.uniphier_u3hsphy_soc_data, ptr %113, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %58, label %127

117:                                              ; preds = %45, %27
  %118 = phi i32 [ %30, %27 ], [ %46, %45 ]
  %119 = load ptr, ptr %23, align 4
  %120 = call i32 @reset_control_assert(ptr noundef %119) #5
  br label %121

121:                                              ; preds = %117, %22
  %122 = phi i32 [ %25, %22 ], [ %118, %117 ]
  %123 = load ptr, ptr %14, align 4
  call void @clk_disable(ptr noundef %123) #5
  call void @clk_unprepare(ptr noundef %123) #5
  br label %124

124:                                              ; preds = %121, %21, %13
  %125 = phi i32 [ %122, %121 ], [ %19, %21 ], [ %16, %13 ]
  %126 = load ptr, ptr %5, align 4
  call void @clk_disable(ptr noundef %126) #5
  call void @clk_unprepare(ptr noundef %126) #5
  br label %127

127:                                              ; preds = %124, %58, %48, %37, %32, %12, %1
  %128 = phi i32 [ %125, %124 ], [ 0, %32 ], [ %10, %12 ], [ %7, %1 ], [ 0, %48 ], [ 0, %37 ], [ 0, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_u3hsphy_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @reset_control_assert(ptr noundef %5) #5
  %7 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @reset_control_assert(ptr noundef %8) #5
  %10 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #5
  tail call void @clk_unprepare(ptr noundef %11) #5
  %12 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #5
  tail call void @clk_unprepare(ptr noundef %13) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_u3hsphy_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_prepare(ptr noundef %13) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %11
  %17 = tail call i32 @clk_enable(ptr noundef %13) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @reset_control_deassert(ptr noundef %21) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 9
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @regulator_enable(ptr noundef nonnull %26) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %20, align 4
  %33 = tail call i32 @reset_control_assert(ptr noundef %32) #5
  br label %34

34:                                               ; preds = %31, %19
  %35 = phi i32 [ %22, %19 ], [ %29, %31 ]
  %36 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %36) #5
  br label %37

37:                                               ; preds = %34, %16
  %38 = phi ptr [ %36, %34 ], [ %13, %16 ]
  %39 = phi i32 [ %35, %34 ], [ %17, %16 ]
  tail call void @clk_unprepare(ptr noundef %38) #5
  br label %40

40:                                               ; preds = %37, %11
  %41 = phi i32 [ %14, %11 ], [ %39, %37 ]
  %42 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %42) #5
  br label %43

43:                                               ; preds = %40, %8
  %44 = phi ptr [ %42, %40 ], [ %5, %8 ]
  %45 = phi i32 [ %41, %40 ], [ %9, %8 ]
  tail call void @clk_unprepare(ptr noundef %44) #5
  br label %46

46:                                               ; preds = %43, %28, %24, %1
  %47 = phi i32 [ 0, %28 ], [ 0, %24 ], [ %6, %1 ], [ %45, %43 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_u3hsphy_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #5
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @reset_control_assert(ptr noundef %11) #5
  %13 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #5
  tail call void @clk_unprepare(ptr noundef %14) #5
  %15 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %3, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #5
  tail call void @clk_unprepare(ptr noundef %16) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uniphier_u3hsphy_update_config(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.uniphier_u3hsphy_trim_param, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !10
  %4 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uniphier_u3hsphy_soc_data, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %57, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 4
  %11 = tail call ptr @devm_nvmem_cell_get(ptr noundef %10, ptr noundef nonnull @.str.7) #5
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %40, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @nvmem_cell_read(ptr noundef %11, ptr noundef null) #5
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %40, label %16

16:                                               ; preds = %13
  %17 = load i8, ptr %14, align 1
  %18 = zext i8 %17 to i32
  store i32 %18, ptr %3, align 4
  tail call void @kfree(ptr noundef %14) #5
  %19 = getelementptr inbounds %struct.uniphier_u3hsphy_trim_param, ptr %3, i32 0, i32 1
  %20 = load ptr, ptr %0, align 4
  %21 = tail call ptr @devm_nvmem_cell_get(ptr noundef %20, ptr noundef nonnull @.str.8) #5
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %40, label %23

23:                                               ; preds = %16
  %24 = tail call ptr @nvmem_cell_read(ptr noundef %21, ptr noundef null) #5
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %40, label %26

26:                                               ; preds = %23
  %27 = load i8, ptr %24, align 1
  %28 = zext i8 %27 to i32
  store i32 %28, ptr %19, align 4
  tail call void @kfree(ptr noundef %24) #5
  %29 = getelementptr inbounds %struct.uniphier_u3hsphy_trim_param, ptr %3, i32 0, i32 2
  %30 = load ptr, ptr %0, align 4
  %31 = tail call ptr @devm_nvmem_cell_get(ptr noundef %30, ptr noundef nonnull @.str.9) #5
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = tail call ptr @nvmem_cell_read(ptr noundef %31, ptr noundef null) #5
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i8, ptr %34, align 1
  %38 = zext i8 %37 to i32
  store i32 %38, ptr %29, align 4
  tail call void @kfree(ptr noundef %34) #5
  %39 = icmp ne i8 %37, 0
  br label %45

40:                                               ; preds = %33, %26, %23, %16, %13, %9
  %41 = phi i32 [ 0, %9 ], [ 0, %13 ], [ 0, %16 ], [ 0, %23 ], [ %28, %26 ], [ %28, %33 ]
  %42 = phi i32 [ 0, %9 ], [ 0, %13 ], [ %18, %16 ], [ %18, %23 ], [ %18, %26 ], [ %18, %33 ]
  %43 = phi ptr [ %11, %9 ], [ %14, %13 ], [ %21, %16 ], [ %24, %23 ], [ %31, %26 ], [ %34, %33 ]
  %44 = ptrtoint ptr %43 to i32
  switch i32 %44, label %57 [
    i32 -517, label %60
    i32 0, label %45
  ]

45:                                               ; preds = %40, %36
  %46 = phi i1 [ %39, %36 ], [ false, %40 ]
  %47 = phi i32 [ %28, %36 ], [ %41, %40 ]
  %48 = phi i32 [ %18, %36 ], [ %42, %40 ]
  %49 = icmp ne i32 %48, 0
  %50 = icmp ne i32 %47, 0
  %51 = select i1 %49, i1 true, i1 %50
  %52 = select i1 %51, i1 true, i1 %46
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load ptr, ptr %4, align 4
  %55 = getelementptr inbounds %struct.uniphier_u3hsphy_soc_data, ptr %54, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  call void %56(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #5
  br label %60

57:                                               ; preds = %45, %40, %2
  %58 = load i32, ptr %1, align 4
  %59 = or i32 %58, 201326592
  store i32 %59, ptr %1, align 4
  br label %60

60:                                               ; preds = %57, %53, %40
  %61 = phi i32 [ %44, %40 ], [ 0, %53 ], [ 0, %57 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #5
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uniphier_u3hsphy_trim_ld20(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, -193
  store i32 %5, ptr %1, align 4
  %6 = load i32, ptr %2, align 4
  %7 = shl i32 %6, 6
  %8 = and i32 %7, 192
  %9 = and i32 %4, -61633
  %10 = or i32 %8, %9
  store i32 %10, ptr %1, align 4
  %11 = getelementptr inbounds %struct.uniphier_u3hsphy_trim_param, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 12
  %14 = and i32 %13, 61440
  %15 = and i32 %10, 268374015
  %16 = or i32 %14, %15
  store i32 %16, ptr %1, align 4
  %17 = getelementptr inbounds %struct.uniphier_u3hsphy_trim_param, ptr %2, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 28
  %20 = or i32 %19, %16
  store i32 %20, ptr %1, align 4
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

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
!10 = !{!"auto-init"}
!11 = !{i64 2153992768}
!12 = !{i64 1760108}
!13 = !{i64 2153993096}
!14 = !{i64 1760526}
!15 = !{i64 2153864501}
!16 = !{i64 2153905768}
!17 = !{i64 2153906231}
!18 = !{i64 2153906503}
!19 = !{i64 2153906966}
!20 = !{i64 2153991713}
!21 = !{i64 2153992176}
!22 = !{i64 2153992448}
