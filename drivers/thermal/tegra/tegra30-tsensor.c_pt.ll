; ModuleID = '/llk/IR/drivers/thermal/tegra/tegra30-tsensor.c_pt.bc'
source_filename = "../drivers/thermal/tegra/tegra30-tsensor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
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
%struct.tegra_tsensor = type { ptr, i8, ptr, ptr, ptr, [2 x %struct.tegra_tsensor_channel], %struct.tegra_tsensor_calibration_data }
%struct.tegra_tsensor_channel = type { ptr, i32, ptr, ptr }
%struct.tegra_tsensor_calibration_data = type { i32, i32, i32, i32, i32, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@tegra_tsensor_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-tsensor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description263 = internal constant [49 x i8] c"description=NVIDIA Tegra30 Thermal Sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author264 = internal constant [42 x i8] c"author=Dmitry Osipenko <digetx@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license265 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@tegra_tsensor_driver = internal global %struct.platform_driver { ptr @tegra_tsensor_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_tsensor_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_tsensor_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [16 x i8] c"tegra30-tsensor\00", align 1
@tegra_tsensor_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_tsensor_suspend, ptr @tegra_tsensor_resume, ptr @tegra_tsensor_suspend, ptr @tegra_tsensor_resume, ptr @tegra_tsensor_suspend, ptr @tegra_tsensor_resume, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to get reset control\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"tegra_tsensor\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to request interrupt\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to get ATE version\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"unsupported ATE version: %u\0A\00", align 1
@tegra_tsensor_nvmem_setup.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"older ATE version detected, channels remapped\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"failed to get calibration data: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"invalid calibration data: %d %d %u %u\0A\00", align 1
@tegra_sku_info = external dso_local local_unnamed_addr global %struct.tegra_sku_info, align 4
@tegra_tsensor_nvmem_setup.__print_once.10 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"calibration: %d %d %u %u ATE ver: %u SoC rev: %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"failed to assert hardware reset: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"failed to deassert hardware reset: %d\0A\00", align 1
@ops = internal constant %struct.thermal_zone_of_device_ops { ptr @tegra_tsensor_get_temp, ptr null, ptr @tegra_tsensor_set_trips, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [33 x i8] c"failed to register thermal zone\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"failed to add hwmon sysfs attributes\0A\00", align 1
@tegra_tsensor_get_temp.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"ch%u: counter invalid\0A\00", align 1
@tegra_tsensor_get_temp.__print_once.18 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"ch%u: counter overflow\0A\00", align 1
@tegra_tsensor_handle_channel_interrupt._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.tegra_tsensor_handle_channel_interrupt = private unnamed_addr constant [39 x i8] c"tegra_tsensor_handle_channel_interrupt\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"ch%u: counter overflowed\0A\00", align 1
@tegra_tsensor_enable_hw_channel.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"ch%u: PMC emergency shutdown trip set to %dC\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"ch%u: failed to enable zone: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"ch%u: failed to disable zone: %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_description263, ptr @__UNIQUE_ID_license265], section "llvm.metadata"

@__mod_of__tegra_tsensor_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @tegra_tsensor_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_tsensor_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_tsensor_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_tsensor_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 76, i32 noundef 3520) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %205, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %205, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.tegra_tsensor, ptr %9, i32 0, i32 3
  store ptr %8, ptr %15, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %16, align 8
  %17 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  store ptr %17, ptr %9, align 4
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = ptrtoint ptr %17 to i32
  br label %205

21:                                               ; preds = %14
  %22 = tail call ptr @devm_clk_get(ptr noundef %8, ptr noundef null) #7
  %23 = getelementptr inbounds %struct.tegra_tsensor, ptr %9, i32 0, i32 2
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = ptrtoint ptr %22 to i32
  %27 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %8, i32 noundef %26, ptr noundef nonnull @.str.1) #7
  br label %205

28:                                               ; preds = %21
  %29 = tail call ptr @__devm_reset_control_get(ptr noundef %8, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %30 = getelementptr inbounds %struct.tegra_tsensor, ptr %9, i32 0, i32 4
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = ptrtoint ptr %29 to i32
  %34 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %8, i32 noundef %33, ptr noundef nonnull @.str.2) #7
  br label %205

35:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4
  %36 = call i32 @tegra_fuse_readl(i32 noundef 40, ptr noundef nonnull %6) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %15, align 4
  %40 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %39, i32 noundef %36, ptr noundef nonnull @.str.5) #7
  br label %131

41:                                               ; preds = %35
  %42 = load i32, ptr %6, align 4
  %43 = icmp ult i32 %42, 8
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.6, i32 noundef %42) #8
  br label %131

46:                                               ; preds = %41
  %47 = icmp ult i32 %42, 22
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  %49 = load i1, ptr @tegra_tsensor_nvmem_setup.__print_once, align 1
  br i1 %49, label %52, label %50

50:                                               ; preds = %48
  store i1 true, ptr @tegra_tsensor_nvmem_setup.__print_once, align 1
  %51 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.7) #8
  br label %52

52:                                               ; preds = %50, %48
  %53 = getelementptr inbounds %struct.tegra_tsensor, ptr %9, i32 0, i32 1
  store i8 1, ptr %53, align 4
  br label %54

54:                                               ; preds = %52, %46
  %55 = call i32 @tegra_fuse_readl(i32 noundef 152, ptr noundef nonnull %7) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.8, i32 noundef %55) #8
  br label %131

59:                                               ; preds = %54
  %60 = load i32, ptr %7, align 4
  br label %61

61:                                               ; preds = %61, %59
  %62 = phi i32 [ 0, %59 ], [ %94, %61 ]
  %63 = phi i32 [ 0, %59 ], [ %79, %61 ]
  %64 = phi i32 [ 0, %59 ], [ %93, %61 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4
  %65 = shl i32 %62, 2
  %66 = add nuw nsw i32 %65, 380
  %67 = call i32 @tegra_fuse_readl(i32 noundef %66, ptr noundef nonnull %5) #7
  %68 = load i32, ptr %5, align 4
  %69 = icmp ne i32 %68, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %70 = zext i1 %69 to i32
  %71 = shl nuw nsw i32 %70, %62
  %72 = or i32 %71, %63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4
  %73 = add nuw nsw i32 %65, 408
  %74 = call i32 @tegra_fuse_readl(i32 noundef %73, ptr noundef nonnull %4) #7
  %75 = load i32, ptr %4, align 4
  %76 = icmp ne i32 %75, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %77 = zext i1 %76 to i32
  %78 = shl nuw nsw i32 %77, %62
  %79 = or i32 %72, %78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4
  %80 = add nuw nsw i32 %65, 324
  %81 = call i32 @tegra_fuse_readl(i32 noundef %80, ptr noundef nonnull %3) #7
  %82 = load i32, ptr %3, align 4
  %83 = icmp ne i32 %82, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %84 = zext i1 %83 to i32
  %85 = shl nuw nsw i32 %84, %62
  %86 = or i32 %85, %64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4
  %87 = add nuw nsw i32 %65, 352
  %88 = call i32 @tegra_fuse_readl(i32 noundef %87, ptr noundef nonnull %2) #7
  %89 = load i32, ptr %2, align 4
  %90 = icmp ne i32 %89, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %91 = zext i1 %90 to i32
  %92 = shl nuw nsw i32 %91, %62
  %93 = or i32 %86, %92
  %94 = add nuw nsw i32 %62, 1
  %95 = icmp eq i32 %94, 7
  br i1 %95, label %96, label %61

96:                                               ; preds = %61
  %97 = and i32 %60, 65535
  %98 = lshr i32 %60, 16
  %99 = sub nsw i32 %98, %97
  %100 = sub i32 %93, %79
  %101 = icmp ugt i32 %99, %100
  br i1 %101, label %104, label %102

102:                                              ; preds = %96
  %103 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.9, i32 noundef %98, i32 noundef %97, i32 noundef %93, i32 noundef %79) #8
  br label %131

104:                                              ; preds = %96
  %105 = mul i32 %100, 1000000
  %106 = sdiv i32 %99, 2
  %107 = add i32 %105, %106
  %108 = udiv i32 %107, %99
  %109 = getelementptr inbounds %struct.tegra_tsensor, ptr %9, i32 0, i32 6
  store i32 %108, ptr %109, align 4
  %110 = mul i32 %79, 1000000
  %111 = mul i32 %108, %97
  %112 = sub i32 %110, %111
  %113 = getelementptr inbounds %struct.tegra_tsensor, ptr %9, i32 0, i32 6, i32 1
  store i32 %112, ptr %113, align 4
  %114 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 11), align 4
  %115 = icmp eq i32 %114, 1
  %116 = select i1 %115, i32 5550, i32 7024
  %117 = select i1 %115, i32 -2775, i32 -3512
  %118 = select i1 %115, i32 1338811, i32 1528943
  %119 = select i1 %115, i32 -7300000, i32 -11100000
  %120 = getelementptr inbounds %struct.tegra_tsensor, ptr %9, i32 0, i32 6, i32 2
  store i32 %117, ptr %120, align 4
  %121 = getelementptr inbounds %struct.tegra_tsensor, ptr %9, i32 0, i32 6, i32 3
  store i32 %118, ptr %121, align 4
  %122 = getelementptr inbounds %struct.tegra_tsensor, ptr %9, i32 0, i32 6, i32 4
  store i32 %119, ptr %122, align 4
  %123 = select i1 %115, i32 1341586, i32 1532455
  %124 = udiv i32 %123, %116
  %125 = sub nsw i32 0, %124
  %126 = getelementptr inbounds %struct.tegra_tsensor, ptr %9, i32 0, i32 6, i32 5
  store i32 %125, ptr %126, align 4
  %127 = load i1, ptr @tegra_tsensor_nvmem_setup.__print_once.10, align 1
  br i1 %127, label %133, label %128

128:                                              ; preds = %104
  store i1 true, ptr @tegra_tsensor_nvmem_setup.__print_once.10, align 1
  %129 = load ptr, ptr %15, align 4
  %130 = load i32, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %129, ptr noundef nonnull @.str.11, i32 noundef %98, i32 noundef %97, i32 noundef %93, i32 noundef %79, i32 noundef %130, i32 noundef %114) #8
  br label %133

131:                                              ; preds = %102, %57, %44, %38
  %132 = phi i32 [ -22, %102 ], [ %55, %57 ], [ -19, %44 ], [ %36, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %205

133:                                              ; preds = %128, %104
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  %134 = call fastcc i32 @tegra_tsensor_hw_enable(ptr noundef nonnull %9)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %205

136:                                              ; preds = %133
  %137 = call fastcc i32 @devm_add_action_or_reset(ptr noundef %8, ptr noundef nonnull %9)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %205

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.tegra_tsensor, ptr %9, i32 0, i32 1
  %141 = getelementptr %struct.tegra_tsensor, ptr %9, i32 0, i32 5, i32 0
  %142 = load i8, ptr %140, align 4, !range !8
  %143 = getelementptr %struct.tegra_tsensor, ptr %9, i32 0, i32 5, i32 0, i32 2
  store ptr %9, ptr %143, align 4
  %144 = getelementptr %struct.tegra_tsensor, ptr %9, i32 0, i32 5, i32 0, i32 1
  store i32 0, ptr %144, align 4
  %145 = load ptr, ptr %9, align 4
  %146 = shl nuw nsw i8 %142, 6
  %147 = add nuw i8 %146, 64
  %148 = zext i8 %147 to i32
  %149 = getelementptr i8, ptr %145, i32 %148
  store ptr %149, ptr %141, align 4
  %150 = load ptr, ptr %15, align 4
  %151 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %150, i32 noundef 0, ptr noundef %141, ptr noundef nonnull @ops) #7
  %152 = getelementptr %struct.tegra_tsensor, ptr %9, i32 0, i32 5, i32 0, i32 3
  store ptr %151, ptr %152, align 4
  %153 = icmp ugt ptr %151, inttoptr (i32 -4096 to ptr)
  br i1 %153, label %154, label %157

154:                                              ; preds = %139
  %155 = icmp eq ptr %151, inttoptr (i32 -19 to ptr)
  br i1 %155, label %156, label %162

156:                                              ; preds = %154
  store ptr null, ptr %152, align 4
  br label %167

157:                                              ; preds = %139
  %158 = call i32 @devm_thermal_add_hwmon_sysfs(ptr noundef %151) #7
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %167, label %160

160:                                              ; preds = %157
  %161 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %161, ptr noundef nonnull @.str.16) #8
  br label %167

162:                                              ; preds = %154
  %163 = ptrtoint ptr %151 to i32
  %164 = load ptr, ptr %15, align 4
  %165 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %164, i32 noundef %163, ptr noundef nonnull @.str.15) #7
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %205

167:                                              ; preds = %162, %160, %157, %156
  %168 = getelementptr %struct.tegra_tsensor, ptr %9, i32 0, i32 5, i32 1
  %169 = load i8, ptr %140, align 4, !range !8
  %170 = getelementptr %struct.tegra_tsensor, ptr %9, i32 0, i32 5, i32 1, i32 2
  store ptr %9, ptr %170, align 4
  %171 = getelementptr %struct.tegra_tsensor, ptr %9, i32 0, i32 5, i32 1, i32 1
  store i32 1, ptr %171, align 4
  %172 = load ptr, ptr %9, align 4
  %173 = shl nuw nsw i8 %169, 6
  %174 = xor i8 %173, 64
  %175 = add nuw i8 %174, 64
  %176 = zext i8 %175 to i32
  %177 = getelementptr i8, ptr %172, i32 %176
  store ptr %177, ptr %168, align 4
  %178 = load ptr, ptr %15, align 4
  %179 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %178, i32 noundef 1, ptr noundef %168, ptr noundef nonnull @ops) #7
  %180 = getelementptr %struct.tegra_tsensor, ptr %9, i32 0, i32 5, i32 1, i32 3
  store ptr %179, ptr %180, align 4
  %181 = icmp ugt ptr %179, inttoptr (i32 -4096 to ptr)
  br i1 %181, label %187, label %182

182:                                              ; preds = %167
  %183 = call i32 @devm_thermal_add_hwmon_sysfs(ptr noundef %179) #7
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %195, label %185

185:                                              ; preds = %182
  %186 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %186, ptr noundef nonnull @.str.16) #8
  br label %195

187:                                              ; preds = %167
  %188 = icmp eq ptr %179, inttoptr (i32 -19 to ptr)
  br i1 %188, label %194, label %189

189:                                              ; preds = %187
  %190 = ptrtoint ptr %179 to i32
  %191 = load ptr, ptr %15, align 4
  %192 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %191, i32 noundef %190, ptr noundef nonnull @.str.15) #7
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %195, label %205

194:                                              ; preds = %187
  store ptr null, ptr %180, align 4
  br label %195

195:                                              ; preds = %194, %189, %185, %182
  %196 = call i32 @devm_request_threaded_irq(ptr noundef %8, i32 noundef %12, ptr noundef null, ptr noundef nonnull @tegra_tsensor_isr, i32 noundef 8192, ptr noundef nonnull @.str.3, ptr noundef nonnull %9) #7
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = call fastcc i32 @tegra_tsensor_enable_hw_channel(ptr noundef nonnull %9, i32 noundef 0)
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %203, label %205

201:                                              ; preds = %195
  %202 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %8, i32 noundef %196, ptr noundef nonnull @.str.4) #7
  br label %205

203:                                              ; preds = %198
  %204 = call fastcc i32 @tegra_tsensor_enable_hw_channel(ptr noundef nonnull %9, i32 noundef 1)
  br label %205

205:                                              ; preds = %203, %201, %198, %189, %162, %136, %133, %131, %32, %25, %19, %11, %1
  %206 = phi i32 [ %20, %19 ], [ %27, %25 ], [ %34, %32 ], [ %202, %201 ], [ -12, %1 ], [ %12, %11 ], [ %134, %133 ], [ %137, %136 ], [ %132, %131 ], [ %199, %198 ], [ %165, %162 ], [ %192, %189 ], [ %204, %203 ]
  ret i32 %206
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_tsensor_hw_enable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tegra_tsensor, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @reset_control_assert(ptr noundef %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tegra_tsensor, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.12, i32 noundef %4) #8
  br label %35

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tegra_tsensor, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_prepare(ptr noundef %11) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = tail call i32 @clk_enable(ptr noundef %11) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  tail call void @clk_unprepare(ptr noundef %11) #7
  br label %18

18:                                               ; preds = %17, %9
  %19 = phi i32 [ %15, %17 ], [ %12, %9 ]
  %20 = getelementptr inbounds %struct.tegra_tsensor, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.13, i32 noundef %19) #8
  br label %35

22:                                               ; preds = %14
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %23 = load ptr, ptr %2, align 4
  %24 = tail call i32 @reset_control_deassert(ptr noundef %23) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tegra_tsensor, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.14, i32 noundef %24) #8
  %29 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %29) #7
  tail call void @clk_unprepare(ptr noundef %29) #7
  br label %35

30:                                               ; preds = %22
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr i8, ptr %31, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 -13577216) #7, !srcloc !9
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr i8, ptr %33, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 -13577216) #7, !srcloc !9
  br label %35

35:                                               ; preds = %30, %26, %18, %6
  %36 = phi i32 [ %4, %6 ], [ %19, %18 ], [ %24, %26 ], [ 0, %30 ]
  ret i32 %36
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @devm_add_action_or_reset(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_tegra_tsensor_hw_disable, ptr noundef %1) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @reset_control_assert(ptr noundef %7) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.12, i32 noundef %8) #8
  br label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  tail call void @clk_unprepare(ptr noundef %15) #7
  br label %16

16:                                               ; preds = %13, %10, %2
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_tegra_tsensor_hw_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.tegra_tsensor, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @reset_control_assert(ptr noundef %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tegra_tsensor, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.12, i32 noundef %4) #8
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tegra_tsensor, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  br label %12

12:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_tsensor_isr(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.tegra_tsensor, ptr %1, i32 0, i32 3
  %4 = getelementptr %struct.tegra_tsensor, ptr %1, i32 0, i32 5, i32 0
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !10
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !9
  %10 = and i32 %7, 7
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = tail call i32 @___ratelimit(ptr noundef nonnull @tegra_tsensor_handle_channel_interrupt._rs, ptr noundef nonnull @__func__.tegra_tsensor_handle_channel_interrupt) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.20, i32 noundef 0) #8
  br label %17

17:                                               ; preds = %15, %12, %2
  %18 = and i32 %7, 256
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr %struct.tegra_tsensor, ptr %1, i32 0, i32 5, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  tail call void @thermal_zone_device_update(ptr noundef %22, i32 noundef 0) #7
  br label %23

23:                                               ; preds = %20, %17
  %24 = getelementptr %struct.tegra_tsensor, ptr %1, i32 0, i32 5, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !10
  %28 = load ptr, ptr %24, align 4
  %29 = getelementptr i8, ptr %28, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #7, !srcloc !9
  %30 = and i32 %27, 7
  %31 = icmp eq i32 %30, 5
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = tail call i32 @___ratelimit(ptr noundef nonnull @tegra_tsensor_handle_channel_interrupt._rs, ptr noundef nonnull @__func__.tegra_tsensor_handle_channel_interrupt) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.20, i32 noundef 1) #8
  br label %37

37:                                               ; preds = %35, %32, %23
  %38 = and i32 %27, 256
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = getelementptr %struct.tegra_tsensor, ptr %1, i32 0, i32 5, i32 1, i32 3
  %42 = load ptr, ptr %41, align 4
  tail call void @thermal_zone_device_update(ptr noundef %42, i32 noundef 0) #7
  br label %43

43:                                               ; preds = %40, %37
  %44 = or i32 %7, %27
  %45 = lshr i32 %44, 8
  %46 = and i32 %45, 1
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_tsensor_enable_hw_channel(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr %struct.tegra_tsensor, ptr %0, i32 0, i32 5, i32 %1
  %6 = getelementptr %struct.tegra_tsensor, ptr %0, i32 0, i32 5, i32 %1, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !10
  %12 = and i32 %11, -2
  %13 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #7, !srcloc !9
  br label %144

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.thermal_zone_device, ptr %7, i32 0, i32 9
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.thermal_zone_device, ptr %7, i32 0, i32 20
  br label %20

20:                                               ; preds = %37, %18
  %21 = phi i32 [ 85000, %18 ], [ %38, %37 ]
  %22 = phi i32 [ 90000, %18 ], [ %39, %37 ]
  %23 = phi i32 [ 0, %18 ], [ %40, %37 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !11
  %24 = load ptr, ptr %19, align 4
  %25 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %24, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 %26(ptr noundef nonnull %7, i32 noundef %23, ptr noundef nonnull %4) #7
  %28 = load ptr, ptr %19, align 4
  %29 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 %30(ptr noundef nonnull %7, i32 noundef %23, ptr noundef nonnull %3) #7
  %32 = load i32, ptr %3, align 4
  switch i32 %32, label %37 [
    i32 2, label %33
    i32 3, label %35
  ]

33:                                               ; preds = %20
  %34 = load i32, ptr %4, align 4
  br label %37

35:                                               ; preds = %20
  %36 = load i32, ptr %4, align 4
  br label %37

37:                                               ; preds = %35, %33, %20
  %38 = phi i32 [ %21, %20 ], [ %21, %35 ], [ %34, %33 ]
  %39 = phi i32 [ %22, %20 ], [ %36, %35 ], [ %22, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %40 = add nuw i32 %23, 1
  %41 = load i32, ptr %15, align 8
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %20, label %43

43:                                               ; preds = %37, %14
  %44 = phi i32 [ 85000, %14 ], [ %38, %37 ]
  %45 = phi i32 [ 90000, %14 ], [ %39, %37 ]
  %46 = call i32 @llvm.smax.i32(i32 %44, i32 25000) #7
  %47 = call i32 @llvm.umin.i32(i32 %46, i32 90000) #7
  %48 = add i32 %45, 5000
  %49 = call i32 @llvm.smax.i32(i32 %48, i32 25000) #7
  %50 = call i32 @llvm.umin.i32(i32 %49, i32 90000) #7
  %51 = getelementptr inbounds %struct.thermal_zone_device, ptr %7, i32 0, i32 26
  call void @mutex_lock(ptr noundef %51) #7
  %52 = load i1, ptr @tegra_tsensor_enable_hw_channel.__print_once, align 1
  br i1 %52, label %58, label %53

53:                                               ; preds = %43
  store i1 true, ptr @tegra_tsensor_enable_hw_channel.__print_once, align 1
  %54 = getelementptr inbounds %struct.tegra_tsensor, ptr %0, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = add nuw nsw i32 %50, 500
  %57 = udiv i32 %56, 1000
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.21, i32 noundef %1, i32 noundef %57) #8
  br label %58

58:                                               ; preds = %53, %43
  %59 = getelementptr inbounds %struct.tegra_tsensor, ptr %0, i32 0, i32 6
  %60 = getelementptr inbounds %struct.tegra_tsensor, ptr %0, i32 0, i32 6, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = mul nsw i32 %47, -1000
  %63 = add i32 %61, %62
  %64 = getelementptr inbounds %struct.tegra_tsensor, ptr %0, i32 0, i32 6, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = icmp slt i32 %63, 1
  %67 = icmp sgt i32 %65, 0
  %68 = xor i1 %66, %67
  %69 = select i1 %68, i32 2, i32 -2
  %70 = sdiv i32 %65, %69
  %71 = add i32 %70, %63
  %72 = sdiv i32 %71, %65
  %73 = getelementptr inbounds %struct.tegra_tsensor, ptr %0, i32 0, i32 6, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = mul i32 %74, %74
  %76 = sub i32 %75, %72
  %77 = call i32 @int_sqrt(i32 noundef %76) #7
  %78 = getelementptr inbounds %struct.tegra_tsensor, ptr %0, i32 0, i32 6, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = load i32, ptr %59, align 4
  %81 = load i32, ptr %60, align 4
  %82 = mul nsw i32 %50, -1000
  %83 = add i32 %81, %82
  %84 = load i32, ptr %64, align 4
  %85 = icmp slt i32 %83, 1
  %86 = icmp sgt i32 %84, 0
  %87 = xor i1 %85, %86
  %88 = select i1 %87, i32 2, i32 -2
  %89 = sdiv i32 %84, %88
  %90 = add i32 %89, %83
  %91 = sdiv i32 %90, %84
  %92 = load i32, ptr %73, align 4
  %93 = mul i32 %92, %92
  %94 = sub i32 %93, %91
  %95 = call i32 @int_sqrt(i32 noundef %94) #7
  %96 = add i32 %95, %92
  %97 = mul i32 %96, -1000000
  %98 = load i32, ptr %78, align 4
  %99 = sub i32 %97, %98
  %100 = load i32, ptr %59, align 4
  %101 = icmp slt i32 %99, 1
  %102 = icmp sgt i32 %100, 0
  %103 = xor i1 %102, %101
  %104 = select i1 %103, i32 2, i32 -2
  %105 = sdiv i32 %100, %104
  %106 = add i32 %99, %105
  %107 = sdiv i32 %106, %100
  %108 = load ptr, ptr %5, align 4
  %109 = getelementptr i8, ptr %108, i32 8
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #7, !srcloc !10
  %111 = add i32 %77, %74
  %112 = mul i32 %111, -1000000
  %113 = sub i32 %112, %79
  %114 = icmp sgt i32 %80, 0
  %115 = icmp slt i32 %113, 1
  %116 = xor i1 %114, %115
  %117 = select i1 %116, i32 2, i32 -2
  %118 = sdiv i32 %80, %117
  %119 = add i32 %113, %118
  %120 = sdiv i32 %119, %80
  %121 = and i32 %110, 65535
  %122 = shl i32 %120, 16
  %123 = or i32 %121, %122
  %124 = load ptr, ptr %5, align 4
  %125 = getelementptr i8, ptr %124, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %123) #7, !srcloc !9
  %126 = load ptr, ptr %5, align 4
  %127 = getelementptr i8, ptr %126, i32 12
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #7, !srcloc !10
  %129 = and i32 %128, -65536
  %130 = and i32 %107, 65535
  %131 = or i32 %129, %130
  %132 = load ptr, ptr %5, align 4
  %133 = getelementptr i8, ptr %132, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %131) #7, !srcloc !9
  %134 = load ptr, ptr %5, align 4
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #7, !srcloc !10
  %136 = and i32 %135, -126
  %137 = or i32 %136, 124
  %138 = load ptr, ptr %5, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %137) #7, !srcloc !9
  call void @mutex_unlock(ptr noundef %51) #7
  %139 = call i32 @thermal_zone_device_enable(ptr noundef nonnull %7) #7
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %58
  %142 = getelementptr inbounds %struct.tegra_tsensor, ptr %0, i32 0, i32 3
  %143 = load ptr, ptr %142, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.22, i32 noundef %1, i32 noundef %139) #8
  br label %144

144:                                              ; preds = %141, %58, %9
  %145 = phi i32 [ %139, %141 ], [ 0, %9 ], [ 0, %58 ]
  ret i32 %145
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_fuse_readl(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_thermal_add_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_tsensor_get_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.tegra_tsensor_channel, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i64 @ktime_get() #7
  %6 = add i64 %5, 1050000000
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr i8, ptr %7, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !10
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %19, %2
  %13 = tail call i64 @ktime_get() #7
  %14 = icmp sgt i64 %13, %6
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr i8, ptr %16, i32 24
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !10
  br label %25

19:                                               ; preds = %12
  tail call void @usleep_range_state(i32 noundef 5251, i32 noundef 21000, i32 noundef 2) #7
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr i8, ptr %20, i32 24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !10
  %23 = and i32 %22, 512
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %12, label %25

25:                                               ; preds = %19, %15, %2
  %26 = phi i32 [ %18, %15 ], [ %9, %2 ], [ %22, %19 ]
  %27 = and i32 %26, 512
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i1, ptr @tegra_tsensor_get_temp.__print_once, align 1
  br i1 %30, label %86, label %31

31:                                               ; preds = %29
  store i1 true, ptr @tegra_tsensor_get_temp.__print_once, align 1
  %32 = getelementptr inbounds %struct.tegra_tsensor, ptr %4, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.tegra_tsensor_channel, ptr %0, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.17, i32 noundef %35) #8
  br label %86

36:                                               ; preds = %25
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr i8, ptr %37, i32 28
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #7, !srcloc !10
  %40 = lshr i32 %39, 16
  %41 = icmp eq i32 %40, 65535
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i1, ptr @tegra_tsensor_get_temp.__print_once.18, align 1
  br i1 %43, label %86, label %44

44:                                               ; preds = %42
  store i1 true, ptr @tegra_tsensor_get_temp.__print_once.18, align 1
  %45 = getelementptr inbounds %struct.tegra_tsensor, ptr %4, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.tegra_tsensor_channel, ptr %0, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.19, i32 noundef %48) #8
  br label %86

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.tegra_tsensor, ptr %4, i32 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = mul i32 %51, %40
  %53 = getelementptr inbounds %struct.tegra_tsensor, ptr %4, i32 0, i32 6, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %52, %54
  %56 = icmp sgt i32 %55, 0
  %57 = select i1 %56, i32 500000, i32 -500000
  %58 = add i32 %57, %55
  %59 = sdiv i32 %58, 1000000
  %60 = add i32 %58, 999999
  %61 = icmp ult i32 %60, 1999999
  %62 = select i1 %61, i32 1, i32 %59
  %63 = getelementptr inbounds %struct.tegra_tsensor, ptr %4, i32 0, i32 6, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = icmp slt i32 %64, 1
  %66 = icmp sgt i32 %62, 0
  %67 = xor i1 %65, %66
  %68 = trunc i32 %62 to i16
  %69 = select i1 %67, i16 2, i16 -2
  %70 = sdiv i16 %68, %69
  %71 = sext i16 %70 to i32
  %72 = add i32 %64, %71
  %73 = sdiv i32 %72, %62
  %74 = getelementptr inbounds %struct.tegra_tsensor, ptr %4, i32 0, i32 6, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = mul i32 %62, %75
  %77 = getelementptr inbounds %struct.tegra_tsensor, ptr %4, i32 0, i32 6, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, %73
  %80 = add i32 %79, %76
  %81 = mul i32 %80, %62
  %82 = icmp sgt i32 %81, 0
  %83 = select i1 %82, i32 500, i32 -500
  %84 = add i32 %83, %81
  %85 = sdiv i32 %84, 1000
  store i32 %85, ptr %1, align 4
  br label %86

86:                                               ; preds = %49, %44, %42, %31, %29
  %87 = phi i32 [ 0, %49 ], [ -110, %31 ], [ -110, %29 ], [ -22, %44 ], [ -22, %42 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_tsensor_set_trips(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 2147483647
  br i1 %4, label %48, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.tegra_tsensor_channel, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !10
  %11 = getelementptr inbounds %struct.tegra_tsensor, ptr %7, i32 0, i32 6, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = mul i32 %2, -1000
  %14 = add i32 %12, %13
  %15 = getelementptr inbounds %struct.tegra_tsensor, ptr %7, i32 0, i32 6, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp slt i32 %14, 1
  %18 = icmp sgt i32 %16, 0
  %19 = xor i1 %17, %18
  %20 = select i1 %19, i32 2, i32 -2
  %21 = sdiv i32 %16, %20
  %22 = add i32 %21, %14
  %23 = sdiv i32 %22, %16
  %24 = getelementptr inbounds %struct.tegra_tsensor, ptr %7, i32 0, i32 6, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = mul i32 %25, %25
  %27 = sub i32 %26, %23
  %28 = tail call i32 @int_sqrt(i32 noundef %27) #7
  %29 = add i32 %28, %25
  %30 = mul i32 %29, -1000000
  %31 = getelementptr inbounds %struct.tegra_tsensor, ptr %7, i32 0, i32 6, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = sub i32 %30, %32
  %34 = getelementptr inbounds %struct.tegra_tsensor, ptr %7, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = icmp sgt i32 %35, 0
  %37 = icmp slt i32 %33, 1
  %38 = xor i1 %36, %37
  %39 = select i1 %38, i32 2, i32 -2
  %40 = sdiv i32 %35, %39
  %41 = add i32 %33, %40
  %42 = sdiv i32 %41, %35
  %43 = and i32 %10, -65536
  %44 = and i32 %42, 65535
  %45 = or i32 %44, %43
  %46 = load ptr, ptr %0, align 4
  %47 = getelementptr i8, ptr %46, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #7, !srcloc !9
  br label %48

48:                                               ; preds = %5, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_tsensor_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr %struct.tegra_tsensor, ptr %3, i32 0, i32 5, i32 0
  %5 = getelementptr %struct.tegra_tsensor, ptr %3, i32 0, i32 5, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @thermal_zone_device_disable(ptr noundef nonnull %6) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.tegra_tsensor, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef %9) #8
  br label %52

14:                                               ; preds = %8, %1
  %15 = load ptr, ptr %4, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !10
  %17 = or i32 %16, 1
  %18 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #7, !srcloc !9
  %19 = getelementptr %struct.tegra_tsensor, ptr %3, i32 0, i32 5, i32 1
  %20 = getelementptr %struct.tegra_tsensor, ptr %3, i32 0, i32 5, i32 1, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = tail call i32 @thermal_zone_device_disable(ptr noundef nonnull %21) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %23, %14
  %27 = load ptr, ptr %19, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !10
  %29 = or i32 %28, 1
  %30 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #7, !srcloc !9
  %31 = getelementptr inbounds %struct.tegra_tsensor, ptr %3, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @reset_control_assert(ptr noundef %32) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.tegra_tsensor, ptr %3, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  tail call void @clk_disable(ptr noundef %37) #7
  tail call void @clk_unprepare(ptr noundef %37) #7
  br label %52

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.tegra_tsensor, ptr %3, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.12, i32 noundef %33) #8
  br label %44

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.tegra_tsensor, ptr %3, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.23, i32 noundef 1, i32 noundef %24) #8
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i32 [ %33, %38 ], [ %24, %41 ]
  %46 = phi i1 [ false, %38 ], [ true, %41 ]
  %47 = phi i32 [ 1, %38 ], [ 0, %41 ]
  %48 = tail call fastcc i32 @tegra_tsensor_enable_hw_channel(ptr noundef %3, i32 noundef %47)
  br i1 %46, label %52, label %49

49:                                               ; preds = %44
  %50 = add nsw i32 %47, -1
  %51 = tail call fastcc i32 @tegra_tsensor_enable_hw_channel(ptr noundef %3, i32 noundef %50)
  br label %52

52:                                               ; preds = %49, %44, %35, %11
  %53 = phi i32 [ 0, %35 ], [ %9, %11 ], [ %45, %49 ], [ %45, %44 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_tsensor_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @tegra_tsensor_hw_enable(ptr noundef %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @tegra_tsensor_enable_hw_channel(ptr noundef %3, i32 noundef 0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @tegra_tsensor_enable_hw_channel(ptr noundef %3, i32 noundef 1)
  br label %11

11:                                               ; preds = %9, %6, %1
  %12 = phi i32 [ %4, %1 ], [ %7, %6 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i64 3132282}
!10 = !{i64 3132700}
!11 = !{!"auto-init"}
