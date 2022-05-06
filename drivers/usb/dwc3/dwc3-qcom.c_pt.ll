; ModuleID = '/llk/IR/drivers/usb/dwc3/dwc3-qcom.c_pt.bc'
source_filename = "../drivers/usb/dwc3/dwc3-qcom.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.software_node = type { ptr, ptr, ptr }
%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.71 }
%union.anon.71 = type { %union.anon.72 }
%union.anon.72 = type { [1 x i64] }
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
%struct.dwc3_qcom = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, ptr, ptr, %struct.notifier_block, %struct.notifier_block, ptr, i32, i8, i8, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dwc3_acpi_pdata = type { i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.dwc3 = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dwc3_request, %struct.completion, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, [2 x %struct.resource], ptr, [32 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, ptr, i8, ptr, i32, i32, i32, i32, ptr, %struct.notifier_block, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.dwc3_hwparams, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, [6 x i8], i16, i32, i32, i32 }
%struct.dwc3_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, i8, ptr, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.dwc3_hwparams = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_dwc3_qcom__254_981_dwc3_qcom_driver_init6 = internal global ptr @dwc3_qcom_driver_init, section ".initcall6.init", align 4
@dwc3_qcom_driver = internal global %struct.platform_driver { ptr @dwc3_qcom_probe, ptr @dwc3_qcom_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dwc3_qcom_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_qcom_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_dwc3_qcom_driver_exit = internal global ptr @dwc3_qcom_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file255 = internal constant [42 x i8] c"dwc3_qcom.file=drivers/usb/dwc3/dwc3-qcom\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [25 x i8] c"dwc3_qcom.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description257 = internal constant [55 x i8] c"dwc3_qcom.description=DesignWare DWC3 QCOM Glue Driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"dwc3-qcom\00", align 1
@dwc3_qcom_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8996-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8998-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm660-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@dwc3_qcom_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @dwc3_qcom_pm_suspend, ptr @dwc3_qcom_pm_resume, ptr @dwc3_qcom_pm_suspend, ptr @dwc3_qcom_pm_resume, ptr @dwc3_qcom_pm_suspend, ptr @dwc3_qcom_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_qcom_runtime_suspend, ptr @dwc3_qcom_runtime_resume, ptr null }, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to get resets, err=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to assert resets, err=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to deassert resets, err=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"failed to get clocks\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"failed to create URS USB platdev\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"failed to setup IRQs, err=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"qcom,select-utmi-as-pipe-clk\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"failed to register DWC3 Core, err=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"URS%d\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"USB%d\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"hs_phy_irq\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"qcom_dwc3 HS\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"hs_phy_irq failed: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"dp_hs_phy_irq\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"qcom_dwc3 DP_HS\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"dp_hs_phy_irq failed: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"dm_hs_phy_irq\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"qcom_dwc3 DM_HS\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"dm_hs_phy_irq failed: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"ss_phy_irq\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"qcom_dwc3 SS\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"ss_phy_irq failed: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"snps,dwc3\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"failed to find dwc3 core child\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"failed to register dwc3 core - %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"failed to get dwc3 platform device\0A\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"dwc3\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"failed to get memory resource\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"failed to add resources\0A\00", align 1
@dwc3_qcom_swnode = internal constant %struct.software_node { ptr null, ptr null, ptr @dwc3_qcom_acpi_properties }, align 4
@.str.31 = private unnamed_addr constant [26 x i8] c"failed to add properties\0A\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"failed to add device\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.33 = private unnamed_addr constant [8 x i8] c"dr_mode\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@dwc3_qcom_acpi_properties = internal constant <{ { ptr, i32, i8, i32, { { [2 x ptr] } } }, %struct.property_entry }> <{ { ptr, i32, i8, i32, { { [2 x ptr] } } } { ptr @.str.33, i32 4, i8 1, i32 4, { { [2 x ptr] } } { { [2 x ptr] } { [2 x ptr] [ptr @.str.34, ptr null] } } }, %struct.property_entry zeroinitializer }>, align 8
@.str.36 = private unnamed_addr constant [8 x i8] c"usb-ddr\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"failed to get usb-ddr path: %ld\0A\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"apps-usb\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"failed to get apps-usb path: %ld\0A\00", align 1
@.str.40 = private unnamed_addr constant [46 x i8] c"failed to set bandwidth for usb-ddr path: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"failed to set bandwidth for apps-usb path: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"VBUS notifier register failed\0A\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"Host notifier register failed\0A\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"HS-PHY not in L2\0A\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"failed to disable interconnect: %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"failed to enable interconnect: %d\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_dwc3_qcom_driver_exit, ptr @__initcall__kmod_dwc3_qcom__254_981_dwc3_qcom_driver_init6, ptr @dwc3_qcom_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dwc3_qcom_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dwc3_qcom_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dwc3_qcom_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dwc3_qcom_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_qcom_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 96, i32 noundef 3520) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %516, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %8, align 8
  store ptr %2, ptr %5, align 4
  %9 = tail call ptr @devm_reset_control_array_get(ptr noundef %2, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %10 = getelementptr inbounds %struct.dwc3_qcom, ptr %5, i32 0, i32 6
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = ptrtoint ptr %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %13) #9
  br label %516

14:                                               ; preds = %7
  %15 = tail call i32 @reset_control_assert(ptr noundef %9) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %15) #9
  br label %516

18:                                               ; preds = %14
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 1000, i32 noundef 2) #8
  %19 = load ptr, ptr %10, align 4
  %20 = tail call i32 @reset_control_deassert(ptr noundef %19) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %20) #9
  br label %512

23:                                               ; preds = %18
  %24 = tail call i32 @of_clk_get_parent_count(ptr noundef %4) #8
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 25
  %27 = load ptr, ptr %26, align 8
  %28 = icmp ne ptr %27, null
  %29 = icmp ne i32 %24, 0
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %93

31:                                               ; preds = %23
  %32 = icmp slt i32 %24, 0
  br i1 %32, label %91, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.dwc3_qcom, ptr %5, i32 0, i32 5
  store i32 %24, ptr %34, align 4
  %35 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 4) #8
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %37, label %39, !prof !8

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.dwc3_qcom, ptr %5, i32 0, i32 4
  store ptr null, ptr %38, align 4
  br label %91

39:                                               ; preds = %33
  %40 = extractvalue { i32, i1 } %35, 0
  %41 = tail call noalias ptr @devm_kmalloc(ptr noundef %25, i32 noundef %40, i32 noundef 3520) #8
  %42 = getelementptr inbounds %struct.dwc3_qcom, ptr %5, i32 0, i32 4
  store ptr %41, ptr %42, align 4
  %43 = icmp eq ptr %41, null
  br i1 %43, label %91, label %44

44:                                               ; preds = %39
  %45 = load i32, ptr %34, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %93

47:                                               ; preds = %85, %44
  %48 = phi i32 [ %88, %85 ], [ 0, %44 ]
  %49 = tail call ptr @of_clk_get(ptr noundef nonnull %27, i32 noundef %48) #8
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = icmp eq i32 %48, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %53, %51
  %54 = phi i32 [ %55, %53 ], [ %48, %51 ]
  %55 = add nsw i32 %54, -1
  %56 = load ptr, ptr %42, align 4
  %57 = getelementptr ptr, ptr %56, i32 %55
  %58 = load ptr, ptr %57, align 4
  tail call void @clk_put(ptr noundef %58) #8
  %59 = icmp sgt i32 %54, 1
  br i1 %59, label %53, label %60

60:                                               ; preds = %53, %51
  %61 = ptrtoint ptr %49 to i32
  br label %91

62:                                               ; preds = %47
  %63 = tail call i32 @clk_prepare(ptr noundef %49) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = tail call i32 @clk_enable(ptr noundef %49) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %65
  tail call void @clk_unprepare(ptr noundef %49) #8
  br label %69

69:                                               ; preds = %68, %62
  %70 = phi i32 [ %63, %62 ], [ %66, %68 ]
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = icmp eq i32 %48, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %74, %72
  %75 = phi i32 [ %76, %74 ], [ %48, %72 ]
  %76 = add nsw i32 %75, -1
  %77 = load ptr, ptr %42, align 4
  %78 = getelementptr ptr, ptr %77, i32 %76
  %79 = load ptr, ptr %78, align 4
  tail call void @clk_disable(ptr noundef %79) #8
  tail call void @clk_unprepare(ptr noundef %79) #8
  %80 = load ptr, ptr %42, align 4
  %81 = getelementptr ptr, ptr %80, i32 %76
  %82 = load ptr, ptr %81, align 4
  tail call void @clk_put(ptr noundef %82) #8
  %83 = icmp sgt i32 %75, 1
  br i1 %83, label %74, label %84

84:                                               ; preds = %74, %72
  tail call void @clk_put(ptr noundef %49) #8
  br label %91

85:                                               ; preds = %69, %65
  %86 = load ptr, ptr %42, align 4
  %87 = getelementptr ptr, ptr %86, i32 %48
  store ptr %49, ptr %87, align 4
  %88 = add nuw nsw i32 %48, 1
  %89 = load i32, ptr %34, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %47, label %93

91:                                               ; preds = %84, %60, %39, %37, %31
  %92 = phi i32 [ -12, %37 ], [ -12, %39 ], [ %24, %31 ], [ %70, %84 ], [ %61, %60 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #9
  br label %512

93:                                               ; preds = %85, %44, %23
  %94 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %95 = icmp eq ptr %4, null
  br i1 %95, label %96, label %120

96:                                               ; preds = %93
  %97 = tail call ptr @kmemdup(ptr noundef %94, i32 noundef 32, i32 noundef 3264) #8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %516, label %99

99:                                               ; preds = %96
  %100 = load i32, ptr %94, align 4
  %101 = getelementptr inbounds %struct.dwc3_qcom, ptr %5, i32 0, i32 15
  %102 = load ptr, ptr %101, align 4
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, %100
  store i32 %104, ptr %97, align 4
  %105 = load ptr, ptr %101, align 4
  %106 = getelementptr inbounds %struct.dwc3_acpi_pdata, ptr %105, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, %104
  %109 = getelementptr inbounds %struct.resource, ptr %97, i32 0, i32 1
  store i32 %108, ptr %109, align 4
  %110 = load ptr, ptr %101, align 4
  %111 = getelementptr inbounds %struct.dwc3_acpi_pdata, ptr %110, i32 0, i32 7
  %112 = load i8, ptr %111, align 4, !range !9
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %99
  tail call fastcc void @dwc3_qcom_create_urs_usb_platdev(ptr noundef %2)
  %115 = getelementptr inbounds %struct.dwc3_qcom, ptr %5, i32 0, i32 3
  store ptr null, ptr %115, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #9
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  %118 = ptrtoint ptr %116 to i32
  %119 = select i1 %117, i32 -19, i32 %118
  br label %516

120:                                              ; preds = %99, %93
  %121 = phi ptr [ %97, %99 ], [ %94, %93 ]
  %122 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %121) #8
  %123 = getelementptr inbounds %struct.dwc3_qcom, ptr %5, i32 0, i32 1
  store ptr %122, ptr %123, align 4
  %124 = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = ptrtoint ptr %122 to i32
  br label %494

127:                                              ; preds = %120
  %128 = load ptr, ptr %8, align 8
  %129 = getelementptr inbounds %struct.dwc3_qcom, ptr %128, i32 0, i32 15
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.dwc3_acpi_pdata, ptr %130, i32 0, i32 3
  %134 = load i32, ptr %133, align 4
  br label %135

135:                                              ; preds = %132, %127
  %136 = phi i32 [ %134, %132 ], [ -1, %127 ]
  %137 = getelementptr inbounds %struct.dwc3_qcom, ptr %128, i32 0, i32 3
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  %140 = select i1 %139, ptr %0, ptr %138
  %141 = load ptr, ptr %3, align 8
  %142 = icmp eq ptr %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %135
  %144 = tail call i32 @platform_get_irq_byname(ptr noundef %140, ptr noundef nonnull @.str.12) #8
  br label %147

145:                                              ; preds = %135
  %146 = tail call i32 @platform_get_irq(ptr noundef %140, i32 noundef %136) #8
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %147
  tail call void @irq_modify_status(i32 noundef %148, i32 noundef 0, i32 noundef 4096) #8
  %151 = load ptr, ptr %128, align 4
  %152 = tail call i32 @devm_request_threaded_irq(ptr noundef %151, i32 noundef %148, ptr noundef null, ptr noundef nonnull @qcom_dwc3_resume_irq, i32 noundef 8196, ptr noundef nonnull @.str.13, ptr noundef %128) #8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %150
  %155 = load ptr, ptr %128, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.14, i32 noundef %152) #9
  br label %242

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.dwc3_qcom, ptr %128, i32 0, i32 7
  store i32 %148, ptr %157, align 4
  br label %158

158:                                              ; preds = %156, %147
  br i1 %131, label %162, label %159

159:                                              ; preds = %158
  %160 = getelementptr inbounds %struct.dwc3_acpi_pdata, ptr %130, i32 0, i32 4
  %161 = load i32, ptr %160, align 4
  br label %162

162:                                              ; preds = %159, %158
  %163 = phi i32 [ %161, %159 ], [ -1, %158 ]
  %164 = load ptr, ptr %8, align 8
  %165 = getelementptr inbounds %struct.dwc3_qcom, ptr %164, i32 0, i32 3
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  %168 = select i1 %167, ptr %0, ptr %166
  %169 = load ptr, ptr %3, align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %162
  %172 = tail call i32 @platform_get_irq_byname(ptr noundef %168, ptr noundef nonnull @.str.15) #8
  br label %175

173:                                              ; preds = %162
  %174 = tail call i32 @platform_get_irq(ptr noundef %168, i32 noundef %163) #8
  br label %175

175:                                              ; preds = %173, %171
  %176 = phi i32 [ %172, %171 ], [ %174, %173 ]
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %175
  tail call void @irq_modify_status(i32 noundef %176, i32 noundef 0, i32 noundef 4096) #8
  %179 = load ptr, ptr %128, align 4
  %180 = tail call i32 @devm_request_threaded_irq(ptr noundef %179, i32 noundef %176, ptr noundef null, ptr noundef nonnull @qcom_dwc3_resume_irq, i32 noundef 8196, ptr noundef nonnull @.str.16, ptr noundef %128) #8
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %178
  %183 = load ptr, ptr %128, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %183, ptr noundef nonnull @.str.17, i32 noundef %180) #9
  br label %242

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.dwc3_qcom, ptr %128, i32 0, i32 8
  store i32 %176, ptr %185, align 4
  br label %186

186:                                              ; preds = %184, %175
  br i1 %131, label %190, label %187

187:                                              ; preds = %186
  %188 = getelementptr inbounds %struct.dwc3_acpi_pdata, ptr %130, i32 0, i32 5
  %189 = load i32, ptr %188, align 4
  br label %190

190:                                              ; preds = %187, %186
  %191 = phi i32 [ %189, %187 ], [ -1, %186 ]
  %192 = load ptr, ptr %8, align 8
  %193 = getelementptr inbounds %struct.dwc3_qcom, ptr %192, i32 0, i32 3
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, null
  %196 = select i1 %195, ptr %0, ptr %194
  %197 = load ptr, ptr %3, align 8
  %198 = icmp eq ptr %197, null
  br i1 %198, label %201, label %199

199:                                              ; preds = %190
  %200 = tail call i32 @platform_get_irq_byname(ptr noundef %196, ptr noundef nonnull @.str.18) #8
  br label %203

201:                                              ; preds = %190
  %202 = tail call i32 @platform_get_irq(ptr noundef %196, i32 noundef %191) #8
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi i32 [ %200, %199 ], [ %202, %201 ]
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %203
  tail call void @irq_modify_status(i32 noundef %204, i32 noundef 0, i32 noundef 4096) #8
  %207 = load ptr, ptr %128, align 4
  %208 = tail call i32 @devm_request_threaded_irq(ptr noundef %207, i32 noundef %204, ptr noundef null, ptr noundef nonnull @qcom_dwc3_resume_irq, i32 noundef 8196, ptr noundef nonnull @.str.19, ptr noundef %128) #8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %206
  %211 = load ptr, ptr %128, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %211, ptr noundef nonnull @.str.20, i32 noundef %208) #9
  br label %242

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.dwc3_qcom, ptr %128, i32 0, i32 9
  store i32 %204, ptr %213, align 4
  br label %214

214:                                              ; preds = %212, %203
  br i1 %131, label %218, label %215

215:                                              ; preds = %214
  %216 = getelementptr inbounds %struct.dwc3_acpi_pdata, ptr %130, i32 0, i32 6
  %217 = load i32, ptr %216, align 4
  br label %218

218:                                              ; preds = %215, %214
  %219 = phi i32 [ %217, %215 ], [ -1, %214 ]
  %220 = load ptr, ptr %8, align 8
  %221 = getelementptr inbounds %struct.dwc3_qcom, ptr %220, i32 0, i32 3
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  %224 = select i1 %223, ptr %0, ptr %222
  %225 = load ptr, ptr %3, align 8
  %226 = icmp eq ptr %225, null
  br i1 %226, label %229, label %227

227:                                              ; preds = %218
  %228 = tail call i32 @platform_get_irq_byname(ptr noundef %224, ptr noundef nonnull @.str.21) #8
  br label %231

229:                                              ; preds = %218
  %230 = tail call i32 @platform_get_irq(ptr noundef %224, i32 noundef %219) #8
  br label %231

231:                                              ; preds = %229, %227
  %232 = phi i32 [ %228, %227 ], [ %230, %229 ]
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %244

234:                                              ; preds = %231
  tail call void @irq_modify_status(i32 noundef %232, i32 noundef 0, i32 noundef 4096) #8
  %235 = load ptr, ptr %128, align 4
  %236 = tail call i32 @devm_request_threaded_irq(ptr noundef %235, i32 noundef %232, ptr noundef null, ptr noundef nonnull @qcom_dwc3_resume_irq, i32 noundef 8196, ptr noundef nonnull @.str.22, ptr noundef %128) #8
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %234
  %239 = load ptr, ptr %128, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %239, ptr noundef nonnull @.str.23, i32 noundef %236) #9
  br label %242

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.dwc3_qcom, ptr %128, i32 0, i32 10
  store i32 %232, ptr %241, align 4
  br label %244

242:                                              ; preds = %238, %210, %182, %154
  %243 = phi i32 [ %236, %238 ], [ %208, %210 ], [ %180, %182 ], [ %152, %154 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %243) #9
  br label %494

244:                                              ; preds = %240, %231
  %245 = tail call zeroext i1 @device_property_present(ptr noundef %2, ptr noundef nonnull @.str.8) #8
  br i1 %245, label %246, label %262

246:                                              ; preds = %244
  %247 = load ptr, ptr %123, align 4
  %248 = getelementptr i8, ptr %247, i32 8
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %248) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %250 = or i32 %249, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %248, i32 %250) #8, !srcloc !13
  %251 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %248) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #8
  %252 = load ptr, ptr %123, align 4
  %253 = getelementptr i8, ptr %252, i32 8
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %253) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %255 = or i32 %254, 9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %253, i32 %255) #8, !srcloc !13
  %256 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %253) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #8
  %257 = load ptr, ptr %123, align 4
  %258 = getelementptr i8, ptr %257, i32 8
  %259 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %258) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %260 = and i32 %259, -257
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %258, i32 %260) #8, !srcloc !13
  %261 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %258) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %262

262:                                              ; preds = %246, %244
  %263 = load ptr, ptr %8, align 8
  br i1 %95, label %278, label %264

264:                                              ; preds = %262
  %265 = load ptr, ptr %3, align 8
  %266 = tail call ptr @of_get_compatible_child(ptr noundef %265, ptr noundef nonnull @.str.24) #8
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %269

268:                                              ; preds = %264
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.25) #9
  br label %354

269:                                              ; preds = %264
  %270 = tail call i32 @of_platform_populate(ptr noundef %265, ptr noundef null, ptr noundef null, ptr noundef %2) #8
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %269
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.26, i32 noundef %270) #9
  br label %351

273:                                              ; preds = %269
  %274 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %266) #8
  %275 = getelementptr inbounds %struct.dwc3_qcom, ptr %263, i32 0, i32 2
  store ptr %274, ptr %275, align 4
  %276 = icmp eq ptr %274, null
  br i1 %276, label %277, label %353

277:                                              ; preds = %273
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.27) #9
  br label %351

278:                                              ; preds = %262
  %279 = getelementptr inbounds %struct.dwc3_qcom, ptr %263, i32 0, i32 3
  %280 = load ptr, ptr %279, align 4
  %281 = icmp eq ptr %280, null
  %282 = select i1 %281, ptr %0, ptr %280
  %283 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.28, i32 noundef -2) #8
  %284 = getelementptr inbounds %struct.dwc3_qcom, ptr %263, i32 0, i32 2
  store ptr %283, ptr %284, align 4
  %285 = icmp eq ptr %283, null
  br i1 %285, label %354, label %286

286:                                              ; preds = %278
  %287 = getelementptr inbounds %struct.platform_device, ptr %283, i32 0, i32 3, i32 1
  store ptr %2, ptr %287, align 4
  %288 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 4
  %289 = load ptr, ptr %288, align 8
  %290 = load ptr, ptr %284, align 4
  %291 = getelementptr inbounds %struct.platform_device, ptr %290, i32 0, i32 3, i32 4
  store ptr %289, ptr %291, align 8
  %292 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  %293 = load ptr, ptr %292, align 4
  %294 = load ptr, ptr %284, align 4
  %295 = getelementptr inbounds %struct.platform_device, ptr %294, i32 0, i32 3, i32 16
  store ptr %293, ptr %295, align 4
  %296 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 20
  %297 = load ptr, ptr %296, align 4
  %298 = load ptr, ptr %284, align 4
  %299 = getelementptr inbounds %struct.platform_device, ptr %298, i32 0, i32 3, i32 20
  store ptr %297, ptr %299, align 4
  %300 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %301 = load i64, ptr %300, align 8
  %302 = load ptr, ptr %284, align 4
  %303 = getelementptr inbounds %struct.platform_device, ptr %302, i32 0, i32 3, i32 17
  store i64 %301, ptr %303, align 8
  %304 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %305 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %304, i32 noundef 3520, i32 noundef 64) #10
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %309

307:                                              ; preds = %286
  %308 = load ptr, ptr %284, align 4
  tail call void @platform_device_put(ptr noundef %308) #8
  br label %354

309:                                              ; preds = %286
  %310 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %313

312:                                              ; preds = %309
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.29) #9
  br label %348

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.resource, ptr %310, i32 0, i32 3
  %315 = load i32, ptr %314, align 4
  %316 = getelementptr inbounds %struct.resource, ptr %305, i32 0, i32 3
  store i32 %315, ptr %316, align 4
  %317 = load i32, ptr %310, align 4
  store i32 %317, ptr %305, align 8
  %318 = getelementptr inbounds %struct.dwc3_qcom, ptr %263, i32 0, i32 15
  %319 = load ptr, ptr %318, align 4
  %320 = getelementptr inbounds %struct.dwc3_acpi_pdata, ptr %319, i32 0, i32 2
  %321 = load i32, ptr %320, align 4
  %322 = add i32 %321, %317
  %323 = getelementptr inbounds %struct.resource, ptr %305, i32 0, i32 1
  store i32 %322, ptr %323, align 4
  %324 = tail call i32 @platform_get_irq(ptr noundef %282, i32 noundef 0) #8
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %348, label %326

326:                                              ; preds = %313
  %327 = getelementptr %struct.resource, ptr %305, i32 1
  %328 = getelementptr %struct.resource, ptr %305, i32 1, i32 3
  store i32 1024, ptr %328, align 4
  %329 = getelementptr %struct.resource, ptr %305, i32 1, i32 1
  store i32 %324, ptr %329, align 4
  store i32 %324, ptr %327, align 8
  %330 = load ptr, ptr %284, align 4
  %331 = tail call i32 @platform_device_add_resources(ptr noundef %330, ptr noundef nonnull %305, i32 noundef 2) #8
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %334, label %333

333:                                              ; preds = %326
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.30) #9
  br label %348

334:                                              ; preds = %326
  %335 = load ptr, ptr %284, align 4
  %336 = getelementptr inbounds %struct.platform_device, ptr %335, i32 0, i32 3
  %337 = tail call i32 @device_add_software_node(ptr noundef %336, ptr noundef nonnull @dwc3_qcom_swnode) #8
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %334
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.31) #9
  br label %348

340:                                              ; preds = %334
  %341 = load ptr, ptr %284, align 4
  %342 = tail call i32 @platform_device_add(ptr noundef %341) #8
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %347, label %344

344:                                              ; preds = %340
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.32) #9
  %345 = load ptr, ptr %284, align 4
  %346 = getelementptr inbounds %struct.platform_device, ptr %345, i32 0, i32 3
  tail call void @device_remove_software_node(ptr noundef %346) #8
  br label %348

347:                                              ; preds = %340
  tail call void @kfree(ptr noundef nonnull %305) #8
  br label %356

348:                                              ; preds = %344, %339, %333, %313, %312
  %349 = phi i32 [ %331, %333 ], [ %337, %339 ], [ %342, %344 ], [ -19, %312 ], [ %324, %313 ]
  %350 = load ptr, ptr %284, align 4
  tail call void @platform_device_put(ptr noundef %350) #8
  tail call void @kfree(ptr noundef nonnull %305) #8
  br label %354

351:                                              ; preds = %277, %272
  %352 = phi i32 [ -19, %277 ], [ %270, %272 ]
  tail call void @of_node_put(ptr noundef nonnull %266) #8
  br label %354

353:                                              ; preds = %273
  tail call void @of_node_put(ptr noundef nonnull %266) #8
  br label %356

354:                                              ; preds = %351, %348, %307, %278, %268
  %355 = phi i32 [ %352, %351 ], [ -12, %278 ], [ -12, %307 ], [ %349, %348 ], [ -19, %268 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %355) #9
  br label %490

356:                                              ; preds = %353, %347
  %357 = load ptr, ptr %5, align 4
  %358 = tail call ptr @of_icc_get(ptr noundef %357, ptr noundef nonnull @.str.36) #8
  %359 = getelementptr inbounds %struct.dwc3_qcom, ptr %5, i32 0, i32 19
  store ptr %358, ptr %359, align 4
  %360 = icmp ugt ptr %358, inttoptr (i32 -4096 to ptr)
  br i1 %360, label %391, label %361

361:                                              ; preds = %356
  %362 = tail call ptr @of_icc_get(ptr noundef %357, ptr noundef nonnull @.str.38) #8
  %363 = getelementptr inbounds %struct.dwc3_qcom, ptr %5, i32 0, i32 20
  store ptr %362, ptr %363, align 4
  %364 = icmp ugt ptr %362, inttoptr (i32 -4096 to ptr)
  br i1 %364, label %391, label %365

365:                                              ; preds = %361
  %366 = getelementptr inbounds %struct.dwc3_qcom, ptr %5, i32 0, i32 2
  %367 = load ptr, ptr %366, align 4
  %368 = getelementptr inbounds %struct.platform_device, ptr %367, i32 0, i32 3
  %369 = tail call i32 @usb_get_maximum_speed(ptr noundef %368) #8
  %370 = icmp ugt i32 %369, 4
  br i1 %370, label %376, label %371

371:                                              ; preds = %365
  %372 = load ptr, ptr %366, align 4
  %373 = getelementptr inbounds %struct.platform_device, ptr %372, i32 0, i32 3
  %374 = tail call i32 @usb_get_maximum_speed(ptr noundef %373) #8
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %379

376:                                              ; preds = %371, %365
  %377 = load ptr, ptr %359, align 4
  %378 = tail call i32 @icc_set_bw(ptr noundef %377, i32 noundef 1000000, i32 noundef 2500000) #8
  br label %382

379:                                              ; preds = %371
  %380 = load ptr, ptr %359, align 4
  %381 = tail call i32 @icc_set_bw(ptr noundef %380, i32 noundef 240000, i32 noundef 700000) #8
  br label %382

382:                                              ; preds = %379, %376
  %383 = phi i32 [ %378, %376 ], [ %381, %379 ]
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %386, label %385

385:                                              ; preds = %382
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %357, ptr noundef nonnull @.str.40, i32 noundef %383) #9
  br label %490

386:                                              ; preds = %382
  %387 = load ptr, ptr %363, align 4
  %388 = tail call i32 @icc_set_bw(ptr noundef %387, i32 noundef 0, i32 noundef 40000) #8
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %399, label %390

390:                                              ; preds = %386
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %357, ptr noundef nonnull @.str.41, i32 noundef %388) #9
  br label %490

391:                                              ; preds = %361, %356
  %392 = phi ptr [ %358, %356 ], [ %362, %361 ]
  %393 = phi ptr [ @.str.37, %356 ], [ @.str.39, %361 ]
  %394 = phi ptr [ %359, %356 ], [ %363, %361 ]
  %395 = ptrtoint ptr %392 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %357, ptr noundef nonnull %393, i32 noundef %395) #9
  %396 = load ptr, ptr %394, align 4
  %397 = ptrtoint ptr %396 to i32
  %398 = icmp eq ptr %396, null
  br i1 %398, label %399, label %490

399:                                              ; preds = %391, %386
  %400 = getelementptr inbounds %struct.dwc3_qcom, ptr %5, i32 0, i32 2
  %401 = load ptr, ptr %400, align 4
  %402 = getelementptr inbounds %struct.platform_device, ptr %401, i32 0, i32 3
  %403 = tail call i32 @usb_get_dr_mode(ptr noundef %402) #8
  %404 = getelementptr inbounds %struct.dwc3_qcom, ptr %5, i32 0, i32 16
  store i32 %403, ptr %404, align 4
  %405 = icmp eq i32 %403, 2
  br i1 %405, label %406, label %417

406:                                              ; preds = %399
  %407 = load ptr, ptr %123, align 4
  %408 = getelementptr i8, ptr %407, i32 48
  %409 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %408) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8
  %410 = or i32 %409, 16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %408, i32 %410) #8, !srcloc !13
  %411 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %408) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %412 = load ptr, ptr %123, align 4
  %413 = getelementptr i8, ptr %412, i32 16
  %414 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %413) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %415 = or i32 %414, 269484032
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %413, i32 %415) #8, !srcloc !13
  %416 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %413) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  br label %417

417:                                              ; preds = %406, %399
  %418 = load ptr, ptr %5, align 4
  %419 = getelementptr inbounds %struct.device, ptr %418, i32 0, i32 25
  %420 = load ptr, ptr %419, align 8
  %421 = tail call ptr @of_find_property(ptr noundef %420, ptr noundef nonnull @.str.42, ptr noundef null) #8
  %422 = icmp eq ptr %421, null
  br i1 %422, label %481, label %423

423:                                              ; preds = %417
  %424 = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %418, i32 noundef 0) #8
  %425 = getelementptr inbounds %struct.dwc3_qcom, ptr %5, i32 0, i32 11
  store ptr %424, ptr %425, align 4
  %426 = icmp ugt ptr %424, inttoptr (i32 -4096 to ptr)
  br i1 %426, label %477, label %427

427:                                              ; preds = %423
  %428 = getelementptr inbounds %struct.dwc3_qcom, ptr %5, i32 0, i32 13
  store ptr @dwc3_qcom_vbus_notifier, ptr %428, align 4
  %429 = tail call ptr @extcon_get_edev_by_phandle(ptr noundef %418, i32 noundef 1) #8
  %430 = getelementptr inbounds %struct.dwc3_qcom, ptr %5, i32 0, i32 12
  %431 = icmp ugt ptr %429, inttoptr (i32 -4096 to ptr)
  %432 = select i1 %431, ptr null, ptr %429
  store ptr %432, ptr %430, align 4
  %433 = load ptr, ptr %425, align 4
  %434 = tail call i32 @devm_extcon_register_notifier(ptr noundef %418, ptr noundef %433, i32 noundef 1, ptr noundef %428) #8
  %435 = icmp slt i32 %434, 0
  br i1 %435, label %436, label %437

436:                                              ; preds = %427
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %418, ptr noundef nonnull @.str.43) #9
  br label %485

437:                                              ; preds = %427
  %438 = load ptr, ptr %430, align 4
  %439 = icmp eq ptr %438, null
  br i1 %439, label %440, label %442

440:                                              ; preds = %437
  %441 = load ptr, ptr %425, align 4
  br label %442

442:                                              ; preds = %440, %437
  %443 = phi ptr [ %441, %440 ], [ %438, %437 ]
  %444 = getelementptr inbounds %struct.dwc3_qcom, ptr %5, i32 0, i32 14
  store ptr @dwc3_qcom_host_notifier, ptr %444, align 4
  %445 = tail call i32 @devm_extcon_register_notifier(ptr noundef %418, ptr noundef %443, i32 noundef 2, ptr noundef %444) #8
  %446 = icmp slt i32 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %442
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %418, ptr noundef nonnull @.str.44) #9
  br label %485

448:                                              ; preds = %442
  %449 = load ptr, ptr %425, align 4
  %450 = tail call i32 @extcon_get_state(ptr noundef %449, i32 noundef 1) #8
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %455

452:                                              ; preds = %448
  %453 = tail call i32 @extcon_get_state(ptr noundef %443, i32 noundef 2) #8
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %466

455:                                              ; preds = %452, %448
  %456 = load ptr, ptr %123, align 4
  %457 = getelementptr i8, ptr %456, i32 48
  %458 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %457) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8
  %459 = or i32 %458, 16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %457, i32 %459) #8, !srcloc !13
  %460 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %457) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %461 = load ptr, ptr %123, align 4
  %462 = getelementptr i8, ptr %461, i32 16
  %463 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %462) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %464 = or i32 %463, 269484032
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %462, i32 %464) #8, !srcloc !13
  %465 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %462) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  br label %479

466:                                              ; preds = %452
  %467 = load ptr, ptr %123, align 4
  %468 = getelementptr i8, ptr %467, i32 48
  %469 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %468) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8
  %470 = and i32 %469, -16777217
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %468, i32 %470) #8, !srcloc !13
  %471 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %468) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  %472 = load ptr, ptr %123, align 4
  %473 = getelementptr i8, ptr %472, i32 16
  %474 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %473) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %475 = and i32 %474, -269484033
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %473, i32 %475) #8, !srcloc !13
  %476 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %473) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %479

477:                                              ; preds = %423
  %478 = ptrtoint ptr %424 to i32
  br label %485

479:                                              ; preds = %466, %455
  %480 = phi i32 [ 2, %455 ], [ 1, %466 ]
  store i32 %480, ptr %404, align 4
  br label %481

481:                                              ; preds = %479, %417
  %482 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext true) #8
  %483 = getelementptr inbounds %struct.dwc3_qcom, ptr %5, i32 0, i32 17
  store i8 0, ptr %483, align 4
  %484 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #8
  tail call void @pm_runtime_enable(ptr noundef %2) #8
  tail call void @pm_runtime_forbid(ptr noundef %2) #8
  br label %516

485:                                              ; preds = %477, %447, %436
  %486 = phi i32 [ %478, %477 ], [ %445, %447 ], [ %434, %436 ]
  %487 = load ptr, ptr %359, align 4
  tail call void @icc_put(ptr noundef %487) #8
  %488 = getelementptr inbounds %struct.dwc3_qcom, ptr %5, i32 0, i32 20
  %489 = load ptr, ptr %488, align 4
  tail call void @icc_put(ptr noundef %489) #8
  br label %490

490:                                              ; preds = %485, %391, %390, %385, %354
  %491 = phi i32 [ %355, %354 ], [ %397, %391 ], [ %486, %485 ], [ %388, %390 ], [ %383, %385 ]
  br i1 %95, label %493, label %492

492:                                              ; preds = %490
  tail call void @of_platform_depopulate(ptr noundef %2) #8
  br label %494

493:                                              ; preds = %490
  tail call void @platform_device_put(ptr noundef %0) #8
  br label %494

494:                                              ; preds = %493, %492, %242, %125
  %495 = phi i32 [ %126, %125 ], [ %243, %242 ], [ %491, %492 ], [ %491, %493 ]
  %496 = getelementptr inbounds %struct.dwc3_qcom, ptr %5, i32 0, i32 5
  %497 = load i32, ptr %496, align 4
  %498 = add i32 %497, -1
  %499 = icmp sgt i32 %498, -1
  br i1 %499, label %500, label %512

500:                                              ; preds = %494
  %501 = getelementptr inbounds %struct.dwc3_qcom, ptr %5, i32 0, i32 4
  br label %502

502:                                              ; preds = %502, %500
  %503 = phi i32 [ %498, %500 ], [ %510, %502 ]
  %504 = load ptr, ptr %501, align 4
  %505 = getelementptr ptr, ptr %504, i32 %503
  %506 = load ptr, ptr %505, align 4
  tail call void @clk_disable(ptr noundef %506) #8
  tail call void @clk_unprepare(ptr noundef %506) #8
  %507 = load ptr, ptr %501, align 4
  %508 = getelementptr ptr, ptr %507, i32 %503
  %509 = load ptr, ptr %508, align 4
  tail call void @clk_put(ptr noundef %509) #8
  %510 = add nsw i32 %503, -1
  %511 = icmp sgt i32 %503, 0
  br i1 %511, label %502, label %512

512:                                              ; preds = %502, %494, %91, %22
  %513 = phi i32 [ %20, %22 ], [ %92, %91 ], [ %495, %494 ], [ %495, %502 ]
  %514 = load ptr, ptr %10, align 4
  %515 = tail call i32 @reset_control_assert(ptr noundef %514) #8
  br label %516

516:                                              ; preds = %512, %481, %114, %96, %17, %12, %1
  %517 = phi i32 [ %13, %12 ], [ %15, %17 ], [ %513, %512 ], [ 0, %481 ], [ -12, %1 ], [ -12, %96 ], [ %119, %114 ]
  ret i32 %517
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_qcom_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.dwc3_qcom, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void @device_remove_software_node(ptr noundef %7) #8
  tail call void @of_platform_depopulate(ptr noundef %4) #8
  %8 = getelementptr inbounds %struct.dwc3_qcom, ptr %3, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.dwc3_qcom, ptr %3, i32 0, i32 4
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ %10, %12 ], [ %22, %14 ]
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr ptr, ptr %16, i32 %15
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #8
  tail call void @clk_unprepare(ptr noundef %18) #8
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr ptr, ptr %19, i32 %15
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_put(ptr noundef %21) #8
  %22 = add nsw i32 %15, -1
  %23 = icmp sgt i32 %15, 0
  br i1 %23, label %14, label %24

24:                                               ; preds = %14, %1
  store i32 0, ptr %8, align 4
  %25 = getelementptr inbounds %struct.dwc3_qcom, ptr %3, i32 0, i32 19
  %26 = load ptr, ptr %25, align 4
  tail call void @icc_put(ptr noundef %26) #8
  %27 = getelementptr inbounds %struct.dwc3_qcom, ptr %3, i32 0, i32 20
  %28 = load ptr, ptr %27, align 4
  tail call void @icc_put(ptr noundef %28) #8
  %29 = getelementptr inbounds %struct.dwc3_qcom, ptr %3, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @reset_control_assert(ptr noundef %30) #8
  tail call void @pm_runtime_allow(ptr noundef %4) #8
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_qcom_create_urs_usb_platdev(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca [8 x i8], align 8
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !18
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @fwnode_get_name(ptr noundef %5) #8
  %7 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %6, ptr noundef nonnull @.str.10, ptr noundef nonnull %3)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr %3, align 4
  %11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 8, ptr noundef nonnull @.str.11, i32 noundef %10)
  %12 = load ptr, ptr %4, align 4
  %13 = call ptr @fwnode_get_named_child_node(ptr noundef %12, ptr noundef nonnull %2) #8
  br label %14

14:                                               ; preds = %9, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_qcom_vbus_override_enable(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8
  br i1 %1, label %7, label %15

7:                                                ; preds = %2
  %8 = or i32 %6, 16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %8) #8, !srcloc !13
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %13 = or i32 %12, 269484032
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %13) #8, !srcloc !13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  br label %23

15:                                               ; preds = %2
  %16 = and i32 %6, -16777217
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %16) #8, !srcloc !13
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr i8, ptr %18, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %21 = and i32 %20, -269484033
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %21) #8, !srcloc !13
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %23

23:                                               ; preds = %15, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qcom_dwc3_resume_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.dwc3_qcom, ptr %1, i32 0, i32 18
  %4 = load i8, ptr %3, align 1, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dwc3_qcom, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.dwc3, ptr %10, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 0) #8
  br label %17

17:                                               ; preds = %14, %6, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_software_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_software_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_icc_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_maximum_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_set_bw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_edev_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_qcom_vbus_notifier(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -52
  %5 = icmp ne i32 %1, 0
  tail call fastcc void @dwc3_qcom_vbus_override_enable(ptr noundef %4, i1 noundef zeroext %5)
  %6 = select i1 %5, i32 2, i32 1
  %7 = getelementptr i8, ptr %0, i32 28
  store i32 %6, ptr %7, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_register_notifier(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_qcom_host_notifier(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -64
  %5 = icmp eq i32 %1, 0
  tail call fastcc void @dwc3_qcom_vbus_override_enable(ptr noundef %4, i1 noundef zeroext %5)
  %6 = select i1 %5, i32 2, i32 1
  %7 = getelementptr i8, ptr %0, i32 16
  store i32 %6, ptr %7, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_qcom_pm_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @dwc3_qcom_suspend(ptr noundef %3)
  %4 = getelementptr inbounds %struct.dwc3_qcom, ptr %3, i32 0, i32 18
  store i8 1, ptr %4, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_qcom_pm_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @dwc3_qcom_resume(ptr noundef %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dwc3_qcom, ptr %3, i32 0, i32 18
  store i8 0, ptr %7, align 1
  br label %8

8:                                                ; preds = %6, %1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_qcom_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @dwc3_qcom_suspend(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_qcom_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @dwc3_qcom_resume(ptr noundef %3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_qcom_suspend(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 17
  %3 = load i8, ptr %2, align 4, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %83

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 88
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.45) #9
  br label %14

14:                                               ; preds = %12, %5
  %15 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 4
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i32 [ %17, %19 ], [ %26, %21 ]
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr ptr, ptr %23, i32 %22
  %25 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %25) #8
  tail call void @clk_unprepare(ptr noundef %25) #8
  %26 = add nsw i32 %22, -1
  %27 = icmp sgt i32 %22, 0
  br i1 %27, label %21, label %28

28:                                               ; preds = %21, %14
  %29 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 19
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @icc_disable(ptr noundef %30) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 20
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @icc_disable(ptr noundef %35) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %29, align 4
  %40 = tail call i32 @icc_enable(ptr noundef %39) #8
  br label %41

41:                                               ; preds = %38, %28
  %42 = phi i32 [ %36, %38 ], [ %31, %28 ]
  %43 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.46, i32 noundef %42) #9
  br label %44

44:                                               ; preds = %41, %33
  %45 = load ptr, ptr %0, align 4
  %46 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 11, i32 1
  %47 = load i16, ptr %46, align 4
  %48 = and i16 %47, 1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %82, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 11, i32 6
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %82, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  tail call void @enable_irq(i32 noundef %56) #8
  %59 = load i32, ptr %55, align 4
  %60 = tail call i32 @irq_set_irq_wake(i32 noundef %59, i32 noundef 1) #8
  br label %61

61:                                               ; preds = %58, %54
  %62 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 8
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  tail call void @enable_irq(i32 noundef %63) #8
  %66 = load i32, ptr %62, align 4
  %67 = tail call i32 @irq_set_irq_wake(i32 noundef %66, i32 noundef 1) #8
  br label %68

68:                                               ; preds = %65, %61
  %69 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 9
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  tail call void @enable_irq(i32 noundef %70) #8
  %73 = load i32, ptr %69, align 4
  %74 = tail call i32 @irq_set_irq_wake(i32 noundef %73, i32 noundef 1) #8
  br label %75

75:                                               ; preds = %72, %68
  %76 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 10
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  tail call void @enable_irq(i32 noundef %77) #8
  %80 = load i32, ptr %76, align 4
  %81 = tail call i32 @irq_set_irq_wake(i32 noundef %80, i32 noundef 1) #8
  br label %82

82:                                               ; preds = %79, %75, %50, %44
  store i8 1, ptr %2, align 4
  br label %83

83:                                               ; preds = %82, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_qcom_resume(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 17
  %3 = load i8, ptr %2, align 4, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %99, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %43, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @irq_set_irq_wake(i32 noundef %17, i32 noundef 0) #8
  %21 = load i32, ptr %16, align 4
  tail call void @disable_irq_nosync(i32 noundef %21) #8
  br label %22

22:                                               ; preds = %19, %15
  %23 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @irq_set_irq_wake(i32 noundef %24, i32 noundef 0) #8
  %28 = load i32, ptr %23, align 4
  tail call void @disable_irq_nosync(i32 noundef %28) #8
  br label %29

29:                                               ; preds = %26, %22
  %30 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @irq_set_irq_wake(i32 noundef %31, i32 noundef 0) #8
  %35 = load i32, ptr %30, align 4
  tail call void @disable_irq_nosync(i32 noundef %35) #8
  br label %36

36:                                               ; preds = %33, %29
  %37 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 10
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @irq_set_irq_wake(i32 noundef %38, i32 noundef 0) #8
  %42 = load i32, ptr %37, align 4
  tail call void @disable_irq_nosync(i32 noundef %42) #8
  br label %43

43:                                               ; preds = %40, %36, %11, %5
  %44 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %76

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 4
  br label %49

49:                                               ; preds = %72, %47
  %50 = phi i32 [ 0, %47 ], [ %73, %72 ]
  %51 = load ptr, ptr %48, align 4
  %52 = getelementptr ptr, ptr %51, i32 %50
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @clk_prepare(ptr noundef %53) #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = tail call i32 @clk_enable(ptr noundef %53) #8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %56
  tail call void @clk_unprepare(ptr noundef %53) #8
  br label %60

60:                                               ; preds = %59, %49
  %61 = phi i32 [ %54, %49 ], [ %57, %59 ]
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = icmp eq i32 %50, 0
  br i1 %64, label %99, label %65

65:                                               ; preds = %65, %63
  %66 = phi i32 [ %67, %65 ], [ %50, %63 ]
  %67 = add nsw i32 %66, -1
  %68 = load ptr, ptr %48, align 4
  %69 = getelementptr ptr, ptr %68, i32 %67
  %70 = load ptr, ptr %69, align 4
  tail call void @clk_disable(ptr noundef %70) #8
  tail call void @clk_unprepare(ptr noundef %70) #8
  %71 = icmp sgt i32 %66, 1
  br i1 %71, label %65, label %99

72:                                               ; preds = %60, %56
  %73 = add nuw nsw i32 %50, 1
  %74 = load i32, ptr %44, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %49, label %76

76:                                               ; preds = %72, %43
  %77 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 19
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i32 @icc_enable(ptr noundef %78) #8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 20
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 @icc_enable(ptr noundef %83) #8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr %77, align 4
  %88 = tail call i32 @icc_disable(ptr noundef %87) #8
  br label %89

89:                                               ; preds = %86, %76
  %90 = phi i32 [ %84, %86 ], [ %79, %76 ]
  %91 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %91, ptr noundef nonnull @.str.47, i32 noundef %90) #9
  br label %92

92:                                               ; preds = %89, %81
  %93 = getelementptr inbounds %struct.dwc3_qcom, ptr %0, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr i8, ptr %94, i32 88
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %97 = or i32 %96, 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %97) #8, !srcloc !13
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  store i8 0, ptr %2, align 4
  br label %99

99:                                               ; preds = %92, %65, %63, %1
  %100 = phi i32 [ 0, %92 ], [ 0, %1 ], [ %61, %63 ], [ %61, %65 ]
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!10 = !{i64 4359877}
!11 = !{i64 2154592142}
!12 = !{i64 2154592323}
!13 = !{i64 4359459}
!14 = !{i64 2154592770}
!15 = !{i64 2154593261}
!16 = !{i64 2154593442}
!17 = !{i64 2154593889}
!18 = !{!"auto-init"}
!19 = !{i64 2154601089}
