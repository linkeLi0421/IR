; ModuleID = '/llk/IR/drivers/regulator/bcm590xx-regulator.c_pt.bc'
source_filename = "../drivers/regulator/bcm590xx-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcm590xx_info = type { ptr, ptr, i8, ptr, i8, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.bcm590xx_reg = type { ptr, ptr }
%struct.bcm590xx = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }

@__initcall__kmod_bcm590xx_regulator__247_360_bcm590xx_regulator_driver_init6 = internal global ptr @bcm590xx_regulator_driver_init, section ".initcall6.init", align 4
@bcm590xx_regulator_driver = internal global %struct.platform_driver { ptr @bcm590xx_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bcm590xx_regulator_driver_exit = internal global ptr @bcm590xx_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [59 x i8] c"bcm590xx_regulator.author=Matt Porter <mporter@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [65 x i8] c"bcm590xx_regulator.description=BCM590xx voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [61 x i8] c"bcm590xx_regulator.file=drivers/regulator/bcm590xx-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [34 x i8] c"bcm590xx_regulator.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias252 = internal constant [49 x i8] c"bcm590xx_regulator.alias=platform:bcm590xx-vregs\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"bcm590xx-vregs\00", align 1
@bcm590xx_regs = internal unnamed_addr constant [27 x %struct.bcm590xx_info] [%struct.bcm590xx_info { ptr @.str.3, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.4, ptr null, i8 8, ptr @ldo_c_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.5, ptr null, i8 8, ptr @ldo_c_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.6, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.7, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.8, ptr null, i8 8, ptr @ldo_c_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.9, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.10, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.11, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.12, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.13, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.14, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.15, ptr null, i8 8, ptr @ldo_c_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.16, ptr null, i8 64, ptr null, i8 3, ptr @dcdc_csr_ranges }, %struct.bcm590xx_info { ptr @.str.17, ptr null, i8 64, ptr null, i8 4, ptr @dcdc_iosr1_ranges }, %struct.bcm590xx_info { ptr @.str.18, ptr null, i8 64, ptr null, i8 4, ptr @dcdc_iosr1_ranges }, %struct.bcm590xx_info { ptr @.str.19, ptr null, i8 64, ptr null, i8 4, ptr @dcdc_iosr1_ranges }, %struct.bcm590xx_info { ptr @.str.20, ptr null, i8 64, ptr null, i8 3, ptr @dcdc_sdsr1_ranges }, %struct.bcm590xx_info { ptr @.str.21, ptr null, i8 64, ptr null, i8 4, ptr @dcdc_iosr1_ranges }, %struct.bcm590xx_info { ptr @.str.22, ptr null, i8 64, ptr null, i8 4, ptr @dcdc_iosr1_ranges }, %struct.bcm590xx_info { ptr @.str.23, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.24, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.25, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.26, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.27, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.28, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.29, ptr null, i8 1, ptr @ldo_vbus, i8 0, ptr null }], align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@bcm590xx_ops_ldo = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_iterate, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@bcm590xx_ops_vbus = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@bcm590xx_ops_dcdc = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"rfldo\00", align 1
@ldo_a_table = internal constant [8 x i32] [i32 1200000, i32 1800000, i32 2500000, i32 2700000, i32 2800000, i32 2900000, i32 3000000, i32 3300000], align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"camldo1\00", align 1
@ldo_c_table = internal constant [8 x i32] [i32 3100000, i32 1800000, i32 2500000, i32 2700000, i32 2800000, i32 2900000, i32 3000000, i32 3300000], align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"camldo2\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"simldo1\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"simldo2\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"sdldo\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"sdxldo\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"mmcldo1\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"mmcldo2\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"audldo\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"micldo\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"usbldo\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"vibldo\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"csr\00", align 1
@dcdc_csr_ranges = internal constant [3 x %struct.linear_range] [%struct.linear_range { i32 860000, i32 2, i32 50, i32 10000 }, %struct.linear_range { i32 1360000, i32 51, i32 55, i32 20000 }, %struct.linear_range { i32 900000, i32 56, i32 63, i32 0 }], align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"iosr1\00", align 1
@dcdc_iosr1_ranges = internal constant [4 x %struct.linear_range] [%struct.linear_range { i32 860000, i32 2, i32 51, i32 10000 }, %struct.linear_range { i32 1500000, i32 52, i32 52, i32 0 }, %struct.linear_range { i32 1800000, i32 53, i32 53, i32 0 }, %struct.linear_range { i32 900000, i32 54, i32 63, i32 0 }], align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"iosr2\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"msr\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"sdsr1\00", align 1
@dcdc_sdsr1_ranges = internal constant [3 x %struct.linear_range] [%struct.linear_range { i32 860000, i32 2, i32 50, i32 10000 }, %struct.linear_range { i32 1340000, i32 51, i32 51, i32 0 }, %struct.linear_range { i32 900000, i32 52, i32 63, i32 0 }], align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"sdsr2\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"vsr\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"gpldo1\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"gpldo2\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"gpldo3\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"gpldo4\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"gpldo5\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"gpldo6\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@ldo_vbus = internal constant [1 x i32] [i32 5000000], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_bcm590xx_regulator_driver_exit, ptr @__initcall__kmod_bcm590xx_regulator__247_360_bcm590xx_regulator_driver_init6, ptr @bcm590xx_regulator_driver_exit], section "llvm.metadata"
@switch.table.bcm590xx_probe = private unnamed_addr constant [14 x i32] [i32 126, i32 122, i32 124, i32 138, i32 130, i32 134, i32 142, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm590xx_regulator_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm590xx_regulator_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm590xx_regulator_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm590xx_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm590xx_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 8, i32 noundef 3520) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %132, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.bcm590xx_reg, ptr %8, i32 0, i32 1
  store ptr %7, ptr %11, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %12, align 8
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 6588, i32 noundef 3520) #6
  store ptr %13, ptr %8, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %132, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  %17 = getelementptr inbounds %struct.bcm590xx, ptr %7, i32 0, i32 3
  %18 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 4
  %19 = getelementptr inbounds %struct.bcm590xx, ptr %7, i32 0, i32 4
  br label %20

20:                                               ; preds = %129, %15
  %21 = phi ptr [ %13, %15 ], [ %131, %129 ]
  %22 = phi i32 [ 0, %15 ], [ %127, %129 ]
  %23 = phi ptr [ @bcm590xx_regs, %15 ], [ %130, %129 ]
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr %struct.regulator_desc, ptr %21, i32 %22
  store ptr %24, ptr %25, align 4
  %26 = load ptr, ptr %23, align 4
  %27 = load ptr, ptr %8, align 4
  %28 = getelementptr %struct.regulator_desc, ptr %27, i32 %22, i32 2
  store ptr %26, ptr %28, align 4
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr %struct.regulator_desc, ptr %29, i32 %22, i32 4
  store ptr @.str.1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.bcm590xx_info, ptr %23, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %8, align 4
  %34 = getelementptr %struct.regulator_desc, ptr %33, i32 %22, i32 1
  store ptr %32, ptr %34, align 4
  %35 = load ptr, ptr %8, align 4
  %36 = getelementptr %struct.regulator_desc, ptr %35, i32 %22, i32 6
  store i32 %22, ptr %36, align 4
  %37 = getelementptr inbounds %struct.bcm590xx_info, ptr %23, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %8, align 4
  %40 = getelementptr %struct.regulator_desc, ptr %39, i32 %22, i32 23
  store ptr %38, ptr %40, align 4
  %41 = getelementptr inbounds %struct.bcm590xx_info, ptr %23, i32 0, i32 2
  %42 = load i8, ptr %41, align 4
  %43 = zext i8 %42 to i32
  %44 = load ptr, ptr %8, align 4
  %45 = getelementptr %struct.regulator_desc, ptr %44, i32 %22, i32 8
  store i32 %43, ptr %45, align 4
  %46 = getelementptr inbounds %struct.bcm590xx_info, ptr %23, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %8, align 4
  %49 = getelementptr %struct.regulator_desc, ptr %48, i32 %22, i32 20
  store ptr %47, ptr %49, align 4
  %50 = getelementptr inbounds %struct.bcm590xx_info, ptr %23, i32 0, i32 4
  %51 = load i8, ptr %50, align 4
  %52 = zext i8 %51 to i32
  %53 = load ptr, ptr %8, align 4
  %54 = getelementptr %struct.regulator_desc, ptr %53, i32 %22, i32 22
  store i32 %52, ptr %54, align 4
  %55 = icmp ult i32 %22, 13
  %56 = add nsw i32 %22, -20
  %57 = icmp ult i32 %56, 6
  %58 = or i1 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %20
  %60 = load ptr, ptr %8, align 4
  br label %66

61:                                               ; preds = %20
  %62 = icmp eq i32 %22, 26
  %63 = load ptr, ptr %8, align 4
  br i1 %62, label %64, label %66

64:                                               ; preds = %61
  %65 = getelementptr %struct.regulator_desc, ptr %63, i32 26, i32 10
  store ptr @bcm590xx_ops_vbus, ptr %65, align 4
  br label %88

66:                                               ; preds = %61, %59
  %67 = phi ptr [ %60, %59 ], [ %63, %61 ]
  %68 = phi ptr [ @bcm590xx_ops_ldo, %59 ], [ @bcm590xx_ops_dcdc, %61 ]
  %69 = phi i32 [ 56, %59 ], [ 63, %61 ]
  %70 = getelementptr %struct.regulator_desc, ptr %67, i32 %22, i32 10
  store ptr %68, ptr %70, align 4
  %71 = load ptr, ptr %8, align 4
  %72 = getelementptr %struct.regulator_desc, ptr %71, i32 %22, i32 28
  store i32 %69, ptr %72, align 4
  br i1 %55, label %73, label %75

73:                                               ; preds = %66
  %74 = add nuw nsw i32 %22, 150
  br label %82

75:                                               ; preds = %66
  %76 = icmp ugt i32 %22, 19
  br i1 %76, label %77, label %79

77:                                               ; preds = %75
  %78 = add nuw nsw i32 %22, 26
  br label %82

79:                                               ; preds = %75
  %80 = mul nuw nsw i32 %22, 3
  %81 = add nuw nsw i32 %80, 153
  br label %82

82:                                               ; preds = %79, %77, %73
  %83 = phi i32 [ %74, %73 ], [ %78, %77 ], [ %81, %79 ]
  %84 = load ptr, ptr %8, align 4
  %85 = getelementptr %struct.regulator_desc, ptr %84, i32 %22, i32 27
  store i32 %83, ptr %85, align 4
  %86 = load ptr, ptr %8, align 4
  %87 = getelementptr %struct.regulator_desc, ptr %86, i32 %22, i32 38
  store i8 1, ptr %87, align 4
  br label %88

88:                                               ; preds = %82, %64
  %89 = phi i32 [ %22, %82 ], [ 26, %64 ]
  %90 = phi i32 [ 128, %82 ], [ 4, %64 ]
  %91 = load ptr, ptr %8, align 4
  %92 = getelementptr %struct.regulator_desc, ptr %91, i32 %89, i32 35
  store i32 %90, ptr %92, align 4
  br i1 %55, label %93, label %96

93:                                               ; preds = %88
  %94 = shl nuw nsw i32 %22, 1
  %95 = add nuw nsw i32 %94, 96
  br label %106

96:                                               ; preds = %88
  br i1 %57, label %97, label %100

97:                                               ; preds = %96
  %98 = shl nuw nsw i32 %22, 1
  %99 = add nuw nsw i32 %98, 87
  br label %106

100:                                              ; preds = %96
  %101 = add nsw i32 %22, -13
  %102 = icmp ult i32 %101, 14
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = getelementptr inbounds [14 x i32], ptr @switch.table.bcm590xx_probe, i32 0, i32 %101
  %105 = load i32, ptr %104, align 4
  br label %106

106:                                              ; preds = %103, %100, %97, %93
  %107 = phi i32 [ %95, %93 ], [ %99, %97 ], [ 0, %100 ], [ %105, %103 ]
  %108 = load ptr, ptr %8, align 4
  %109 = getelementptr %struct.regulator_desc, ptr %108, i32 %22, i32 34
  store i32 %107, ptr %109, align 4
  %110 = load ptr, ptr %8, align 4
  %111 = getelementptr %struct.regulator_desc, ptr %110, i32 %22, i32 12
  store i32 0, ptr %111, align 4
  %112 = load ptr, ptr %8, align 4
  %113 = getelementptr %struct.regulator_desc, ptr %112, i32 %22, i32 13
  store ptr null, ptr %113, align 4
  %114 = load ptr, ptr %7, align 4
  store ptr %114, ptr %2, align 4
  store ptr %8, ptr %16, align 4
  %115 = icmp ult i32 %56, 7
  %116 = select i1 %115, ptr %19, ptr %17
  %117 = load ptr, ptr %116, align 4
  store ptr %117, ptr %18, align 4
  %118 = load ptr, ptr %8, align 4
  %119 = getelementptr %struct.regulator_desc, ptr %118, i32 %22
  %120 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef %119, ptr noundef nonnull %2) #6
  %121 = icmp ugt ptr %120, inttoptr (i32 -4096 to ptr)
  br i1 %121, label %122, label %126

122:                                              ; preds = %106
  %123 = load ptr, ptr %7, align 4
  %124 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.2, ptr noundef %124) #7
  %125 = ptrtoint ptr %120 to i32
  br label %132

126:                                              ; preds = %106
  %127 = add nuw nsw i32 %22, 1
  %128 = icmp eq i32 %127, 27
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = getelementptr %struct.bcm590xx_info, ptr %23, i32 1
  %131 = load ptr, ptr %8, align 4
  br label %20

132:                                              ; preds = %126, %122, %10, %1
  %133 = phi i32 [ %125, %122 ], [ -12, %1 ], [ -12, %10 ], [ 0, %126 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %133
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_iterate(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
