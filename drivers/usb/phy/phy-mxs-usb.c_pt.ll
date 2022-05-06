; ModuleID = '/llk/IR/drivers/usb/phy/phy-mxs-usb.c_pt.bc'
source_filename = "../drivers/usb/phy/phy-mxs-usb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mxs_phy_data = type { i32 }
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
%struct.mxs_phy = type { %struct.usb_phy, ptr, ptr, ptr, i32, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }

@__initcall__kmod_phy_mxs_usb__252_868_mxs_phy_module_init2 = internal global ptr @mxs_phy_module_init, section ".initcall2.init", align 4
@mxs_phy_driver = internal global %struct.platform_driver { ptr @mxs_phy_probe, ptr @mxs_phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxs_phy_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxs_phy_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_mxs_phy_module_exit = internal global ptr @mxs_phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias253 = internal constant [39 x i8] c"phy_mxs_usb.alias=platform:mxs-usb-phy\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [47 x i8] c"phy_mxs_usb.author=Marek Vasut <marex@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [61 x i8] c"phy_mxs_usb.author=Richard Zhao <richard.zhao@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description256 = internal constant [53 x i8] c"phy_mxs_usb.description=Freescale MXS USB PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file257 = internal constant [45 x i8] c"phy_mxs_usb.file=drivers/usb/phy/phy-mxs-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [24 x i8] c"phy_mxs_usb.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"mxs_phy\00", align 1
@mxs_phy_dt_ids = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-usbphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sx_phy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sl-usbphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sl_phy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-usbphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6q_phy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx23-usbphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx23_phy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-usbphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vf610_phy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-usbphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6ul_phy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-usbphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_phy_data }, %struct.of_device_id zeroinitializer], align 4
@mxs_phy_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @mxs_phy_system_suspend, ptr @mxs_phy_system_resume, ptr @mxs_phy_system_suspend, ptr @mxs_phy_system_resume, ptr @mxs_phy_system_suspend, ptr @mxs_phy_system_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"can't get the clock, err=%ld\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"fsl,anatop\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"fsl,tx-cal-45-dn-ohms\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"fsl,tx-cal-45-dp-ohms\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"fsl,tx-d-cal\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"usbphy\00", align 1
@imx7ulp_phy_data = internal constant %struct.mxs_phy_data zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"vbus is not valid\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Data pin can't make good contact.\0A\00", align 1
@imx6sx_phy_data = internal constant %struct.mxs_phy_data { i32 1 }, align 4
@imx6sl_phy_data = internal constant %struct.mxs_phy_data { i32 9 }, align 4
@imx6q_phy_data = internal constant %struct.mxs_phy_data { i32 13 }, align 4
@imx23_phy_data = internal constant %struct.mxs_phy_data { i32 6 }, align 4
@vf610_phy_data = internal constant %struct.mxs_phy_data { i32 9 }, align 4
@imx6ul_phy_data = internal constant %struct.mxs_phy_data { i32 1 }, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias253, ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description256, ptr @__UNIQUE_ID_file257, ptr @__UNIQUE_ID_license258, ptr @__exitcall_mxs_phy_module_exit, ptr @__initcall__kmod_phy_mxs_usb__252_868_mxs_phy_module_init2, ptr @mxs_phy_module_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mxs_phy_module_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxs_phy_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mxs_phy_module_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxs_phy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxs_phy_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %6 to i32
  br label %110

10:                                               ; preds = %1
  %11 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #5
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = ptrtoint ptr %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %14) #6
  br label %110

15:                                               ; preds = %10
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 216, i32 noundef 3520) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %110, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @of_get_property(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef null) #5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.2) #5
  %23 = getelementptr inbounds %struct.mxs_phy, ptr %16, i32 0, i32 3
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = ptrtoint ptr %22 to i32
  br label %110

27:                                               ; preds = %21, %18
  %28 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %29 = icmp sgt i32 %28, -1
  %30 = load i32, ptr %2, align 4
  %31 = icmp ugt i32 %30, 29
  %32 = select i1 %29, i1 %31, i1 false
  %33 = icmp ult i32 %30, 56
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %49

35:                                               ; preds = %27
  %36 = trunc i32 %30 to i16
  %37 = sub nuw nsw i16 55, %36
  %38 = mul nuw nsw i16 %37, 15
  %39 = udiv i16 %38, 25
  %40 = zext i16 %39 to i32
  store i32 %40, ptr %2, align 4
  %41 = getelementptr inbounds %struct.mxs_phy, ptr %16, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, 3840
  store i32 %43, ptr %41, align 4
  %44 = shl nuw nsw i32 %40, 8
  %45 = and i32 %44, 3840
  %46 = getelementptr inbounds %struct.mxs_phy, ptr %16, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %35, %27
  %50 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %51 = icmp sgt i32 %50, -1
  %52 = load i32, ptr %2, align 4
  %53 = icmp ugt i32 %52, 29
  %54 = select i1 %51, i1 %53, i1 false
  %55 = icmp ult i32 %52, 56
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %71

57:                                               ; preds = %49
  %58 = trunc i32 %52 to i16
  %59 = sub nuw nsw i16 55, %58
  %60 = mul nuw nsw i16 %59, 15
  %61 = udiv i16 %60, 25
  %62 = zext i16 %61 to i32
  store i32 %62, ptr %2, align 4
  %63 = getelementptr inbounds %struct.mxs_phy, ptr %16, i32 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = or i32 %64, 983040
  store i32 %65, ptr %63, align 4
  %66 = shl nuw nsw i32 %62, 16
  %67 = and i32 %66, 983040
  %68 = getelementptr inbounds %struct.mxs_phy, ptr %16, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, ptr %68, align 4
  br label %71

71:                                               ; preds = %57, %49
  %72 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %73 = icmp sgt i32 %72, -1
  %74 = load i32, ptr %2, align 4
  %75 = icmp ugt i32 %74, 78
  %76 = select i1 %73, i1 %75, i1 false
  %77 = icmp ult i32 %74, 120
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %79, label %92

79:                                               ; preds = %71
  %80 = trunc i32 %74 to i16
  %81 = sub nuw nsw i16 119, %80
  %82 = mul nuw nsw i16 %81, 15
  %83 = add nuw nsw i16 %82, 26
  %84 = udiv i16 %83, 40
  %85 = zext i16 %84 to i32
  store i32 %85, ptr %2, align 4
  %86 = getelementptr inbounds %struct.mxs_phy, ptr %16, i32 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = or i32 %87, 15
  store i32 %88, ptr %86, align 4
  %89 = getelementptr inbounds %struct.mxs_phy, ptr %16, i32 0, i32 5
  %90 = load i32, ptr %89, align 4
  %91 = or i32 %90, %85
  store i32 %91, ptr %89, align 4
  br label %92

92:                                               ; preds = %79, %71
  %93 = call i32 @of_alias_get_id(ptr noundef %5, ptr noundef nonnull @.str.6) #5
  %94 = getelementptr inbounds %struct.mxs_phy, ptr %16, i32 0, i32 4
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.usb_phy, ptr %16, i32 0, i32 8
  store ptr %6, ptr %95, align 4
  store ptr %3, ptr %16, align 4
  %96 = getelementptr inbounds %struct.usb_phy, ptr %16, i32 0, i32 1
  store ptr @.str, ptr %96, align 4
  %97 = getelementptr inbounds %struct.usb_phy, ptr %16, i32 0, i32 22
  store ptr @mxs_phy_init, ptr %97, align 4
  %98 = getelementptr inbounds %struct.usb_phy, ptr %16, i32 0, i32 23
  store ptr @mxs_phy_shutdown, ptr %98, align 4
  %99 = getelementptr inbounds %struct.usb_phy, ptr %16, i32 0, i32 26
  store ptr @mxs_phy_suspend, ptr %99, align 4
  %100 = getelementptr inbounds %struct.usb_phy, ptr %16, i32 0, i32 28
  store ptr @mxs_phy_on_connect, ptr %100, align 4
  %101 = getelementptr inbounds %struct.usb_phy, ptr %16, i32 0, i32 29
  store ptr @mxs_phy_on_disconnect, ptr %101, align 4
  %102 = getelementptr inbounds %struct.usb_phy, ptr %16, i32 0, i32 3
  store i32 1, ptr %102, align 4
  %103 = getelementptr inbounds %struct.usb_phy, ptr %16, i32 0, i32 27
  store ptr @mxs_phy_set_wakeup, ptr %103, align 4
  %104 = getelementptr inbounds %struct.usb_phy, ptr %16, i32 0, i32 30
  store ptr @mxs_phy_charger_detect, ptr %104, align 4
  %105 = getelementptr inbounds %struct.mxs_phy, ptr %16, i32 0, i32 1
  store ptr %11, ptr %105, align 4
  %106 = call ptr @of_device_get_match_data(ptr noundef %3) #5
  %107 = getelementptr inbounds %struct.mxs_phy, ptr %16, i32 0, i32 2
  store ptr %106, ptr %107, align 4
  %108 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %16, ptr %108, align 8
  call void @device_set_wakeup_capable(ptr noundef %3, i1 noundef zeroext true) #5
  %109 = call i32 @usb_add_phy_dev(ptr noundef nonnull %16) #5
  br label %110

110:                                              ; preds = %92, %25, %15, %13, %8
  %111 = phi i32 [ %9, %8 ], [ %14, %13 ], [ %26, %25 ], [ %109, %92 ], [ -12, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxs_phy_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @usb_remove_phy(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxs_phy_init(ptr nocapture noundef readonly %0) #2 {
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 400, i32 noundef 2) #5
  %2 = getelementptr inbounds %struct.mxs_phy, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %76

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %76

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mxs_phy, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @imx7ulp_phy_data
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %17 = getelementptr i8, ptr %12, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 2097152) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %18 = getelementptr i8, ptr %12, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 65536) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 4096) #5, !srcloc !9
  %19 = tail call i64 @ktime_get() #5
  %20 = add i64 %19, 10000000
  %21 = getelementptr i8, ptr %12, i32 160
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %33

24:                                               ; preds = %27, %16
  %25 = tail call i64 @ktime_get() #5
  %26 = icmp sgt i64 %25, %20
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #5
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %24, label %33

30:                                               ; preds = %24
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %76

33:                                               ; preds = %30, %27, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 64) #5, !srcloc !9
  br label %34

34:                                               ; preds = %33, %10
  %35 = getelementptr i8, ptr %12, i32 48
  %36 = tail call i32 @stmp_reset_block(ptr noundef %35) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %39 = getelementptr i8, ptr %12, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 102547456) #5, !srcloc !9
  %40 = load ptr, ptr %13, align 4
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %45 = getelementptr i8, ptr %12, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 393216) #5, !srcloc !9
  br label %46

46:                                               ; preds = %44, %38
  %47 = getelementptr inbounds %struct.mxs_phy, ptr %0, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.mxs_phy, ptr %0, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 532, i32 436
  %55 = tail call i32 @regmap_write(ptr noundef nonnull %48, i32 noundef %54, i32 noundef 1572864) #5
  br label %56

56:                                               ; preds = %50, %46
  %57 = getelementptr inbounds %struct.mxs_phy, ptr %0, i32 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %11, align 4
  %62 = getelementptr i8, ptr %61, i32 16
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %64 = load i32, ptr %57, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = getelementptr inbounds %struct.mxs_phy, ptr %0, i32 0, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = or i32 %66, %68
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %69) #5, !srcloc !9
  br label %76

70:                                               ; preds = %34
  %71 = load ptr, ptr %13, align 4
  %72 = icmp eq ptr %71, @imx7ulp_phy_data
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %74 = getelementptr i8, ptr %12, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 64) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 4096) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %75 = getelementptr i8, ptr %12, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 65536) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 2097152) #5, !srcloc !9
  br label %76

76:                                               ; preds = %73, %70, %60, %56, %30, %9, %1
  %77 = phi i32 [ %36, %73 ], [ %36, %70 ], [ 0, %56 ], [ 0, %60 ], [ -110, %30 ], [ %7, %9 ], [ %4, %1 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mxs_phy_shutdown(ptr nocapture noundef readonly %0) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %2 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 117178368) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %5 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 -1) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1073741824) #5, !srcloc !9
  %8 = getelementptr inbounds %struct.mxs_phy, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @imx7ulp_phy_data
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %13 = getelementptr i8, ptr %12, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 64) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 4096) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %14 = getelementptr i8, ptr %12, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 65536) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 2097152) #5, !srcloc !9
  br label %15

15:                                               ; preds = %11, %1
  %16 = getelementptr inbounds %struct.mxs_phy, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #5
  tail call void @clk_unprepare(ptr noundef %17) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxs_phy_suspend(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.mxs_phy, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  br label %29

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mxs_phy, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  %13 = select i1 %12, i32 592, i32 496
  %14 = call i32 @regmap_read(ptr noundef nonnull %6, i32 noundef %13, ptr noundef nonnull %4) #5
  %15 = load i32, ptr %4, align 4
  %16 = and i32 %15, 805306368
  %17 = icmp eq i32 %16, 268435456
  %18 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %9
  %21 = load i32, ptr %10, align 4
  switch i32 %21, label %29 [
    i32 0, label %23
    i32 1, label %22
  ]

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ 544, %22 ], [ 448, %20 ]
  %25 = call i32 @regmap_read(ptr noundef nonnull %18, i32 noundef %24, ptr noundef nonnull %3) #5
  %26 = load i32, ptr %3, align 4
  %27 = and i32 %26, 8
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %23, %20, %9, %8
  %30 = phi i1 [ %17, %9 ], [ false, %8 ], [ %17, %23 ], [ %17, %20 ]
  %31 = phi i1 [ false, %9 ], [ false, %8 ], [ %28, %23 ], [ false, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %32 = icmp eq i32 %1, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %29
  %34 = and i1 %30, %31
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  call void @usleep_range_state(i32 noundef 300, i32 noundef 400, i32 noundef 2) #5
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !27
  call void @arm_heavy_mb() #5
  %36 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 -4194305) #5, !srcloc !9
  br label %41

38:                                               ; preds = %33
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !28
  call void @arm_heavy_mb() #5
  %39 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 8
  %40 = load ptr, ptr %39, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 -1) #5, !srcloc !9
  br label %41

41:                                               ; preds = %38, %35
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !29
  call void @arm_heavy_mb() #5
  %42 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 1073741824) #5, !srcloc !9
  %45 = getelementptr inbounds %struct.mxs_phy, ptr %0, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  call void @clk_disable(ptr noundef %46) #5
  call void @clk_unprepare(ptr noundef %46) #5
  br label %61

47:                                               ; preds = %29
  call void @usleep_range_state(i32 noundef 300, i32 noundef 400, i32 noundef 2) #5
  %48 = getelementptr inbounds %struct.mxs_phy, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = call i32 @clk_prepare(ptr noundef %49) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = call i32 @clk_enable(ptr noundef %49) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  call void @clk_unprepare(ptr noundef %49) #5
  br label %61

56:                                               ; preds = %52
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !30
  call void @arm_heavy_mb() #5
  %57 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 8
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 1073741824) #5, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !31
  call void @arm_heavy_mb() #5
  %60 = load ptr, ptr %57, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 0) #5, !srcloc !9
  br label %61

61:                                               ; preds = %56, %55, %47, %41
  %62 = phi i32 [ 0, %56 ], [ 0, %41 ], [ %53, %55 ], [ %50, %47 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxs_phy_on_connect(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %5 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 2) #5, !srcloc !9
  br label %8

8:                                                ; preds = %4, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxs_phy_on_disconnect(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !33
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 2) #5, !srcloc !9
  br label %12

12:                                               ; preds = %9, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxs_phy_set_wakeup(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = alloca i32, align 4
  br i1 %1, label %4, label %8

4:                                                ; preds = %2
  tail call fastcc void @mxs_phy_disconnect_line(ptr noundef %0, i1 noundef zeroext true)
  %5 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 14680064) #5, !srcloc !9
  br label %39

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 14680064) #5, !srcloc !9
  %12 = getelementptr inbounds %struct.mxs_phy, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.mxs_phy, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4
  %22 = getelementptr inbounds %struct.mxs_phy, ptr %0, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %29 [
    i32 0, label %25
    i32 1, label %24
  ]

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ 544, %24 ], [ 448, %21 ]
  %27 = call i32 @regmap_read(ptr noundef nonnull %19, i32 noundef %26, ptr noundef nonnull %3) #5
  %28 = load i32, ptr %22, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i32 [ %28, %25 ], [ %23, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %31 = load ptr, ptr %9, align 4
  switch i32 %30, label %37 [
    i32 0, label %33
    i32 1, label %32
  ]

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32 [ 584, %32 ], [ 488, %29 ]
  %35 = load ptr, ptr %18, align 4
  %36 = call i32 @regmap_write(ptr noundef %35, i32 noundef %34, i32 noundef 36) #5
  br label %37

37:                                               ; preds = %33, %29
  %38 = getelementptr i8, ptr %31, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 1073741824) #5, !srcloc !9
  br label %39

39:                                               ; preds = %37, %17, %8, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxs_phy_charger_detect(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.mxs_phy, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %6, null
  br i1 %9, label %58, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %11 = call i32 @regmap_read(ptr noundef nonnull %6, i32 noundef 448, ptr noundef nonnull %4) #5
  %12 = load i32, ptr %4, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.7) #6
  br label %38

17:                                               ; preds = %10
  %18 = call i32 @regmap_write(ptr noundef nonnull %6, i32 noundef 440, i32 noundef 1048576) #5
  %19 = call i32 @regmap_write(ptr noundef nonnull %6, i32 noundef 436, i32 noundef 786432) #5
  br label %20

20:                                               ; preds = %30, %17
  %21 = phi i32 [ 0, %17 ], [ %32, %30 ]
  %22 = phi i32 [ 0, %17 ], [ %33, %30 ]
  %23 = call i32 @regmap_read(ptr noundef nonnull %6, i32 noundef 464, ptr noundef nonnull %4) #5
  %24 = load i32, ptr %4, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = add i32 %21, 1
  %29 = icmp sgt i32 %28, 5
  br i1 %29, label %39, label %30

30:                                               ; preds = %27, %20
  %31 = phi i32 [ 10000, %27 ], [ 6000, %20 ]
  %32 = phi i32 [ %28, %27 ], [ 0, %20 ]
  call void @usleep_range_state(i32 noundef 5000, i32 noundef %31, i32 noundef 2) #5
  %33 = add nuw nsw i32 %22, 1
  %34 = icmp eq i32 %33, 100
  br i1 %34, label %35, label %20

35:                                               ; preds = %30
  %36 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.8) #6
  %37 = call i32 @regmap_write(ptr noundef nonnull %6, i32 noundef 436, i32 noundef 1572864) #5
  br label %38

38:                                               ; preds = %35, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  br label %58

39:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  %40 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %41 = call i32 @regmap_write(ptr noundef %40, i32 noundef 440, i32 noundef 786432) #5
  call void @msleep(i32 noundef 100) #5
  %42 = call i32 @regmap_read(ptr noundef %40, i32 noundef 464, ptr noundef nonnull %3) #5
  %43 = load i32, ptr %3, align 4
  %44 = call i32 @regmap_write(ptr noundef %40, i32 noundef 436, i32 noundef 1572864) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %45 = and i32 %43, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %39
  %48 = getelementptr i8, ptr %8, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 1073741824) #5, !srcloc !9
  %49 = call i32 @regmap_write(ptr noundef nonnull %6, i32 noundef 484, i32 noundef 1) #5
  %50 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  call void @msleep(i32 noundef 80) #5
  %51 = call i32 @regmap_read(ptr noundef %50, i32 noundef 464, ptr noundef nonnull %2) #5
  %52 = load i32, ptr %2, align 4
  %53 = and i32 %52, 4
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 3, i32 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %56 = call i32 @regmap_write(ptr noundef nonnull %6, i32 noundef 488, i32 noundef 1) #5
  %57 = getelementptr i8, ptr %8, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 1073741824) #5, !srcloc !9
  br label %58

58:                                               ; preds = %47, %39, %38, %1
  %59 = phi i32 [ 0, %1 ], [ %55, %47 ], [ 1, %39 ], [ 0, %38 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmp_reset_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mxs_phy_disconnect_line(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.mxs_phy, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %55, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mxs_phy, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %55, label %13

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4
  %14 = getelementptr inbounds %struct.mxs_phy, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %23 [
    i32 0, label %17
    i32 1, label %16
  ]

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ 544, %16 ], [ 448, %13 ]
  %19 = call i32 @regmap_read(ptr noundef nonnull %11, i32 noundef %18, ptr noundef nonnull %3) #5
  %20 = load i32, ptr %3, align 4
  %21 = and i32 %20, 8
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %17, %13
  %24 = phi i1 [ false, %13 ], [ %22, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %25 = xor i1 %1, true
  %26 = select i1 %25, i1 true, i1 %24
  br i1 %26, label %44, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 48
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #5, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !35
  %32 = and i32 %31, 134217728
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %27
  %35 = load ptr, ptr %28, align 4
  %36 = getelementptr i8, ptr %35, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 1073741824) #5, !srcloc !9
  %37 = load i32, ptr %14, align 4
  switch i32 %37, label %43 [
    i32 0, label %39
    i32 1, label %38
  ]

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i32 [ 580, %38 ], [ 484, %34 ]
  %41 = load ptr, ptr %10, align 4
  %42 = call i32 @regmap_write(ptr noundef %41, i32 noundef %40, i32 noundef 36) #5
  br label %43

43:                                               ; preds = %39, %34
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #5
  br label %55

44:                                               ; preds = %27, %23
  %45 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 8
  %46 = load ptr, ptr %45, align 4
  %47 = load i32, ptr %14, align 4
  switch i32 %47, label %53 [
    i32 0, label %49
    i32 1, label %48
  ]

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i32 [ 584, %48 ], [ 488, %44 ]
  %51 = load ptr, ptr %10, align 4
  %52 = call i32 @regmap_write(ptr noundef %51, i32 noundef %50, i32 noundef 36) #5
  br label %53

53:                                               ; preds = %49, %44
  %54 = getelementptr i8, ptr %46, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 1073741824) #5, !srcloc !9
  br label %55

55:                                               ; preds = %53, %43, %9, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxs_phy_system_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mxs_phy, ptr %3, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mxs_phy, ptr %3, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @imx6q_phy_data
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = icmp eq ptr %18, @imx6sl_phy_data
  br i1 %21, label %22, label %25

22:                                               ; preds = %20, %16
  %23 = phi i32 [ 4096, %16 ], [ 2048, %20 ]
  %24 = tail call i32 @regmap_write(ptr noundef nonnull %14, i32 noundef 340, i32 noundef %23) #5
  br label %25

25:                                               ; preds = %22, %20, %12, %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxs_phy_system_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mxs_phy, ptr %3, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mxs_phy, ptr %3, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @imx6q_phy_data
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = icmp eq ptr %18, @imx6sl_phy_data
  br i1 %21, label %22, label %25

22:                                               ; preds = %20, %16
  %23 = phi i32 [ 4096, %16 ], [ 2048, %20 ]
  %24 = tail call i32 @regmap_write(ptr noundef nonnull %14, i32 noundef 344, i32 noundef %23) #5
  br label %25

25:                                               ; preds = %22, %20, %12, %8, %1
  ret i32 0
}

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
!9 = !{i64 4805468}
!10 = !{i64 2153885753}
!11 = !{i64 2153886219}
!12 = !{i64 4805886}
!13 = !{i64 2153887917}
!14 = !{i64 2153888233}
!15 = !{i64 2153888527}
!16 = !{i64 2153890744}
!17 = !{i64 2153891846}
!18 = !{i64 2153892889}
!19 = !{i64 2153884681}
!20 = !{i64 2153884867}
!21 = !{i64 2153889452}
!22 = !{i64 2153889918}
!23 = !{i64 2153890384}
!24 = !{i64 2153898559}
!25 = !{i64 2153898893}
!26 = !{i64 2153899339}
!27 = !{i64 2153901073}
!28 = !{i64 2153901413}
!29 = !{i64 2153901855}
!30 = !{i64 2153902333}
!31 = !{i64 2153902700}
!32 = !{i64 2153909547}
!33 = !{i64 2153910758}
!34 = !{i64 2153911138}
!35 = !{i64 2153894599}
