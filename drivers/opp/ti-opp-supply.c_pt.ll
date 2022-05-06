; ModuleID = '/llk/IR/drivers/opp/ti-opp-supply.c_pt.bc'
source_filename = "../drivers/opp/ti-opp-supply.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ti_opp_supply_data = type { ptr, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.ti_opp_supply_of_data = type { i8, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.ti_opp_supply_optimum_voltage_table = type { i32, i32 }
%struct.dev_pm_opp_info = type { i32, ptr }
%struct.dev_pm_opp_supply = type { i32, i32, i32, i32 }
%struct.dev_pm_set_opp_data = type { %struct.dev_pm_opp_info, %struct.dev_pm_opp_info, ptr, i32, ptr, ptr }

@__initcall__kmod_ti_opp_supply__259_423_ti_opp_supply_driver_init6 = internal global ptr @ti_opp_supply_driver_init, section ".initcall6.init", align 4
@ti_opp_supply_driver = internal global %struct.platform_driver { ptr @ti_opp_supply_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_opp_supply_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ti_opp_supply_driver_exit = internal global ptr @ti_opp_supply_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description260 = internal constant [67 x i8] c"ti_opp_supply.description=Texas Instruments OMAP OPP Supply driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author261 = internal constant [44 x i8] c"ti_opp_supply.author=Texas Instruments Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file262 = internal constant [45 x i8] c"ti_opp_supply.file=drivers/opp/ti-opp-supply\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [29 x i8] c"ti_opp_supply.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"ti_opp_supply\00", align 1
@ti_opp_supply_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap-opp-supply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap_generic_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-opp-supply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap_omap5_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-core-opp-supply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap_omap5core_of_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: Unable to match device\0A\00", align 1
@__func__.ti_opp_supply_probe = private unnamed_addr constant [20 x i8] c"ti_opp_supply_probe\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: Bad data in match\0A\00", align 1
@opp_data = internal global %struct.ti_opp_supply_data zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Unable to get IO resource\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Unable to map Efuse registers\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"ti,efuse-settings\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"No 'ti,efuse-settings' property found\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Invalid 'ti,efuse-settings'\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"ti,absolute-max-voltage-uv\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"ti,absolute-max-voltage-uv is missing\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"vbb\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"%s: failed to set clock rate: %d\0A\00", align 1
@__func__.ti_opp_supply_set_opp = private unnamed_addr constant [22 x i8] c"ti_opp_supply_set_opp\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"%s: failed to restore old-freq (%lu Hz)\0A\00", align 1
@_get_optimal_vdd_voltage._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__._get_optimal_vdd_voltage = private unnamed_addr constant [25 x i8] c"_get_optimal_vdd_voltage\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"%s: Failed optimized voltage match for %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"Invalid range voltages [Min:%lu target:%lu Max:%lu]\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"%s failed for %luuV[min %luuV max %luuV]\0A\00", align 1
@omap_generic_of_data = internal constant %struct.ti_opp_supply_of_data zeroinitializer, align 4
@omap_omap5_of_data = internal constant %struct.ti_opp_supply_of_data { i8 2, i32 4095, i8 0 }, align 4
@omap_omap5core_of_data = internal constant %struct.ti_opp_supply_of_data { i8 6, i32 4095, i8 0 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author261, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_file262, ptr @__UNIQUE_ID_license263, ptr @__exitcall_ti_opp_supply_driver_exit, ptr @__initcall__kmod_ti_opp_supply__259_423_ti_opp_supply_driver_init6, ptr @ti_opp_supply_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ti_opp_supply_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_opp_supply_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ti_opp_supply_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_opp_supply_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_opp_supply_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @get_cpu_device(i32 noundef 0) #6
  %4 = tail call ptr @of_match_device(ptr noundef nonnull @ti_opp_supply_of_match, ptr noundef %2) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ti_opp_supply_probe) #7
  br label %102

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.of_device_id, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ti_opp_supply_probe) #7
  br label %102

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %13, align 8
  %14 = load i8, ptr %9, align 4
  %15 = and i8 %14, 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %96, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #7
  br label %102

21:                                               ; preds = %17
  %22 = load i32, ptr %18, align 4
  %23 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 1, %22
  %26 = add i32 %25, %24
  %27 = tail call ptr @ioremap(i32 noundef %22, i32 noundef %26) #6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #7
  br label %102

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %32 = load ptr, ptr %31, align 8
  %33 = tail call ptr @of_find_property(ptr noundef %32, ptr noundef nonnull @.str.5, ptr noundef null) #6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %91, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.property, ptr %33, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 3
  store i32 %38, ptr getelementptr inbounds (%struct.ti_opp_supply_data, ptr @opp_data, i32 0, i32 1), align 4
  %39 = and i32 %37, -8
  %40 = load i32, ptr %36, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %91

42:                                               ; preds = %35
  %43 = load ptr, ptr %31, align 8
  %44 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %43, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds (%struct.ti_opp_supply_data, ptr @opp_data, i32 0, i32 2), i32 noundef 1, i32 noundef 0) #6
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %91

46:                                               ; preds = %42
  %47 = load i32, ptr getelementptr inbounds (%struct.ti_opp_supply_data, ptr @opp_data, i32 0, i32 1), align 4
  %48 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %47, i32 8) #6
  %49 = extractvalue { i32, i1 } %48, 1
  br i1 %49, label %93, label %50, !prof !8

50:                                               ; preds = %46
  %51 = extractvalue { i32, i1 } %48, 0
  %52 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %51, i32 noundef 3520) #8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %93, label %54

54:                                               ; preds = %50
  %55 = load i32, ptr getelementptr inbounds (%struct.ti_opp_supply_data, ptr @opp_data, i32 0, i32 1), align 4
  store ptr %52, ptr @opp_data, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %95, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.property, ptr %33, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.ti_opp_supply_of_data, ptr %9, i32 0, i32 1
  %61 = getelementptr inbounds %struct.ti_opp_supply_of_data, ptr %9, i32 0, i32 2
  br label %62

62:                                               ; preds = %86, %57
  %63 = phi ptr [ %59, %57 ], [ %69, %86 ]
  %64 = phi i32 [ 0, %57 ], [ %87, %86 ]
  %65 = phi ptr [ %52, %57 ], [ %88, %86 ]
  %66 = getelementptr i32, ptr %63, i32 1
  %67 = load i32, ptr %63, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #6
  store i32 %68, ptr %65, align 4
  %69 = getelementptr i32, ptr %63, i32 2
  %70 = load i32, ptr %66, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #6
  %72 = getelementptr i8, ptr %27, i32 %71
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %74 = load i32, ptr %60, align 4
  %75 = and i32 %74, %73
  %76 = tail call i32 @llvm.cttz.i32(i32 %74, i1 false) #6, !range !11
  %77 = lshr i32 %75, %76
  %78 = load i8, ptr %61, align 4, !range !12
  %79 = icmp eq i8 %78, 0
  %80 = mul i32 %77, 1000
  %81 = select i1 %79, i32 %80, i32 %77
  %82 = getelementptr inbounds %struct.ti_opp_supply_optimum_voltage_table, ptr %65, i32 0, i32 1
  store i32 %81, ptr %82, align 4
  %83 = icmp eq i32 %81, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %62
  %85 = load i32, ptr %65, align 4
  store i32 %85, ptr %82, align 4
  br label %86

86:                                               ; preds = %84, %62
  %87 = add nuw i32 %64, 1
  %88 = getelementptr %struct.ti_opp_supply_optimum_voltage_table, ptr %65, i32 1
  %89 = load i32, ptr getelementptr inbounds (%struct.ti_opp_supply_data, ptr @opp_data, i32 0, i32 1), align 4
  %90 = icmp ult i32 %87, %89
  br i1 %90, label %62, label %95

91:                                               ; preds = %42, %35, %30
  %92 = phi ptr [ @.str.6, %30 ], [ @.str.7, %35 ], [ @.str.9, %42 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull %92) #7
  br label %93

93:                                               ; preds = %91, %50, %46
  %94 = phi i32 [ -22, %91 ], [ -12, %46 ], [ -12, %50 ]
  tail call void @iounmap(ptr noundef nonnull %27) #6
  br label %102

95:                                               ; preds = %86, %54
  tail call void @iounmap(ptr noundef nonnull %27) #6
  br label %96

96:                                               ; preds = %95, %12
  %97 = tail call ptr @dev_pm_opp_register_set_opp_helper(ptr noundef %3, ptr noundef nonnull @ti_opp_supply_set_opp) #6
  %98 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = ptrtoint ptr %97 to i32
  %101 = load ptr, ptr @opp_data, align 4
  tail call void @kfree(ptr noundef %101) #6
  store ptr null, ptr @opp_data, align 4
  store i32 0, ptr getelementptr inbounds (%struct.ti_opp_supply_data, ptr @opp_data, i32 0, i32 1), align 4
  br label %102

102:                                              ; preds = %99, %96, %93, %29, %20, %11, %6
  %103 = phi i32 [ -22, %11 ], [ -19, %6 ], [ %100, %99 ], [ 0, %96 ], [ %94, %93 ], [ -19, %20 ], [ -12, %29 ]
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_register_set_opp_helper(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_opp_supply_set_opp(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dev_pm_opp_info, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.dev_pm_opp_supply, ptr %3, i32 1
  %5 = getelementptr inbounds %struct.dev_pm_set_opp_data, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.dev_pm_set_opp_data, ptr %0, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.dev_pm_opp_supply, ptr %7, i32 1
  %9 = getelementptr inbounds %struct.dev_pm_set_opp_data, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %0, align 4
  %12 = load i32, ptr %5, align 4
  %13 = getelementptr inbounds %struct.dev_pm_set_opp_data, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dev_pm_set_opp_data, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr ptr, ptr %16, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %7, align 4
  %21 = load i32, ptr getelementptr inbounds (%struct.ti_opp_supply_data, ptr @opp_data, i32 0, i32 1), align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %1
  %24 = load ptr, ptr @opp_data, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %34, %23
  %27 = phi ptr [ %36, %34 ], [ %24, %23 ]
  %28 = phi i32 [ %35, %34 ], [ 0, %23 ]
  %29 = load i32, ptr %27, align 4
  %30 = icmp eq i32 %29, %20
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ti_opp_supply_optimum_voltage_table, ptr %27, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  br label %42

34:                                               ; preds = %26
  %35 = add nuw i32 %28, 1
  %36 = getelementptr %struct.ti_opp_supply_optimum_voltage_table, ptr %27, i32 1
  %37 = icmp eq i32 %35, %21
  br i1 %37, label %38, label %26

38:                                               ; preds = %34
  %39 = tail call i32 @___ratelimit(ptr noundef nonnull @_get_optimal_vdd_voltage._rs, ptr noundef nonnull @__func__._get_optimal_vdd_voltage) #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__._get_optimal_vdd_voltage, i32 noundef %20) #7
  br label %42

42:                                               ; preds = %41, %38, %31, %23, %1
  %43 = phi i32 [ %33, %31 ], [ %20, %1 ], [ -22, %23 ], [ %20, %41 ], [ %20, %38 ]
  %44 = getelementptr inbounds %struct.dev_pm_opp_supply, ptr %7, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp ult i32 %45, %43
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 %43, ptr %44, align 4
  br label %48

48:                                               ; preds = %47, %42
  %49 = icmp ugt i32 %12, %11
  br i1 %49, label %50, label %56

50:                                               ; preds = %48
  %51 = tail call fastcc i32 @_opp_set_voltage(ptr noundef %10, ptr noundef %7, i32 noundef %43, ptr noundef %17, ptr noundef nonnull @.str.10)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = tail call fastcc i32 @_opp_set_voltage(ptr noundef %10, ptr noundef %8, i32 noundef 0, ptr noundef %19, ptr noundef nonnull @.str.11)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %53, %48
  %57 = tail call i32 @clk_set_rate(ptr noundef %14, i32 noundef %12) #6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ti_opp_supply_set_opp, i32 noundef %57) #7
  br label %72

60:                                               ; preds = %56
  %61 = icmp ult i32 %12, %11
  br i1 %61, label %62, label %84

62:                                               ; preds = %60
  %63 = tail call fastcc i32 @_opp_set_voltage(ptr noundef %10, ptr noundef %8, i32 noundef 0, ptr noundef %19, ptr noundef nonnull @.str.11)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = tail call fastcc i32 @_opp_set_voltage(ptr noundef %10, ptr noundef %7, i32 noundef %43, ptr noundef %17, ptr noundef nonnull @.str.10)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %84, label %68

68:                                               ; preds = %65, %62
  %69 = tail call i32 @clk_set_rate(ptr noundef %14, i32 noundef %11) #6
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.ti_opp_supply_set_opp, i32 noundef %11) #7
  br label %72

72:                                               ; preds = %71, %68, %59, %53, %50
  %73 = phi i32 [ %51, %50 ], [ %54, %53 ], [ %57, %59 ], [ %69, %71 ], [ 0, %68 ]
  %74 = load i32, ptr %3, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = tail call fastcc i32 @_opp_set_voltage(ptr noundef %10, ptr noundef %4, i32 noundef 0, ptr noundef %19, ptr noundef nonnull @.str.11)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = tail call fastcc i32 @_opp_set_voltage(ptr noundef %10, ptr noundef %3, i32 noundef 0, ptr noundef %17, ptr noundef nonnull @.str.10)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79, %72
  %83 = phi i32 [ 0, %79 ], [ %73, %72 ]
  br label %84

84:                                               ; preds = %82, %79, %76, %65, %60
  %85 = phi i32 [ %83, %82 ], [ 0, %65 ], [ 0, %60 ], [ %77, %76 ], [ %80, %79 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_opp_set_voltage(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = load i32, ptr %1, align 4
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %8, %7 ], [ %2, %5 ]
  %11 = load i32, ptr getelementptr inbounds (%struct.ti_opp_supply_data, ptr @opp_data, i32 0, i32 2), align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dev_pm_opp_supply, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i32 [ %15, %13 ], [ %11, %9 ]
  %18 = icmp ugt i32 %10, %17
  %19 = getelementptr inbounds %struct.dev_pm_opp_supply, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  br i1 %18, label %25, label %21

21:                                               ; preds = %16
  %22 = icmp ult i32 %10, %20
  %23 = icmp ugt i32 %20, %17
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %20, i32 noundef %10, i32 noundef %17) #7
  br label %34

26:                                               ; preds = %21
  %27 = tail call i32 @regulator_set_voltage(ptr noundef %3, i32 noundef %10, i32 noundef %17) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @regulator_set_voltage(ptr noundef %3, i32 noundef %20, i32 noundef %17) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %4, i32 noundef %10, i32 noundef %33, i32 noundef %17) #7
  br label %34

34:                                               ; preds = %32, %29, %26, %25
  %35 = phi i32 [ -22, %25 ], [ %30, %32 ], [ 0, %29 ], [ 0, %26 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!9 = !{i64 3950700}
!10 = !{i64 2153697002}
!11 = !{i32 0, i32 33}
!12 = !{i8 0, i8 2}
