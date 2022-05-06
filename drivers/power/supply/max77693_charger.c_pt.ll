; ModuleID = '/llk/IR/drivers/power/supply/max77693_charger.c_pt.bc'
source_filename = "../drivers/power/supply/max77693_charger.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_device_id = type { [20 x i8], i32 }
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
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.max77693_charger = type { ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.max77693_dev = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@max77693_charger_id = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max77693-charger\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [45 x i8] c"author=Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [39 x i8] c"description=Maxim 77693 charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@max77693_charger_driver = internal global %struct.platform_driver { ptr @max77693_charger_probe, ptr @max77693_charger_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max77693_charger_id, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [17 x i8] c"max77693-charger\00", align 1
@dev_attr_fast_charge_timer = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420 }, ptr @fast_charge_timer_show, ptr @fast_charge_timer_store }, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"failed: create fast charge timer sysfs entry\0A\00", align 1
@dev_attr_top_off_threshold_current = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420 }, ptr @top_off_threshold_current_show, ptr @top_off_threshold_current_store }, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"failed: create top off current sysfs entry\0A\00", align 1
@dev_attr_top_off_timer = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420 }, ptr @top_off_timer_show, ptr @top_off_timer_store }, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"failed: create top off timer sysfs entry\0A\00", align 1
@max77693_charger_desc = internal constant %struct.power_supply_desc { ptr @.str, i32 1, ptr null, i32 0, ptr @max77693_charger_props, i32 7, ptr @max77693_charger_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"failed: power supply register\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"no charger OF node\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"maxim,constant-microvolt\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"maxim,min-system-microvolt\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"maxim,thermal-regulation-celsius\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"maxim,battery-overcurrent-microamp\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"maxim,charge-input-threshold-microvolt\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Error unlocking registers: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"Wrong value for charging constant voltage\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"Wrong value for minimum system regulation voltage\0A\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"Wrong value for thermal regulation loop temperature\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Wrong value for battery overcurrent\0A\00", align 1
@.str.16 = private unnamed_addr constant [59 x i8] c"Wrong value for charge input voltage regulation threshold\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"fast_charge_timer\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"top_off_threshold_current\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"top_off_timer\00", align 1
@max77693_charger_props = internal global [7 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 73, i32 74], align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"MAX77693\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Maxim Integrated\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"
@switch.table.fast_charge_timer_store = private unnamed_addr constant [17 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7], align 4
@switch.table.max77693_charger_get_property = private unnamed_addr constant [12 x i32] [i32 1, i32 1, i32 1, i32 1, i32 4, i32 1, i32 3, i32 3, i32 2, i32 0, i32 2, i32 2], align 4
@switch.table.max77693_charger_get_property.23 = private unnamed_addr constant [12 x i32] [i32 2, i32 3, i32 3, i32 2, i32 1, i32 3, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1], align 4
@switch.table.max77693_charger_get_property.24 = private unnamed_addr constant [7 x i32] [i32 3, i32 1, i32 8, i32 1, i32 1, i32 4, i32 5], align 4

@__mod_platform__max77693_charger_id_device_table = dso_local alias [2 x %struct.platform_device_id], ptr @max77693_charger_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77693_charger_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77693_charger_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_charger_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.power_supply_config, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 32, i32 noundef 3520) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %132, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %11, align 8
  store ptr %3, ptr %8, align 4
  %12 = getelementptr inbounds %struct.max77693_charger, ptr %8, i32 0, i32 1
  store ptr %7, ptr %12, align 4
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %41, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.max77693_charger, ptr %8, i32 0, i32 3
  %18 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.6, ptr noundef %17, i32 noundef 1, i32 noundef 0) #6
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 4200000, ptr %17, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.max77693_charger, ptr %8, i32 0, i32 4
  %23 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.7, ptr noundef %22, i32 noundef 1, i32 noundef 0) #6
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 3600000, ptr %22, align 4
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.max77693_charger, ptr %8, i32 0, i32 5
  %28 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.8, ptr noundef %27, i32 noundef 1, i32 noundef 0) #6
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 100, ptr %27, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.max77693_charger, ptr %8, i32 0, i32 6
  %33 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.9, ptr noundef %32, i32 noundef 1, i32 noundef 0) #6
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 3500000, ptr %32, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.max77693_charger, ptr %8, i32 0, i32 7
  %38 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.10, ptr noundef %37, i32 noundef 1, i32 noundef 0) #6
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  store i32 4300000, ptr %37, align 4
  br label %42

41:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #7
  br label %132

42:                                               ; preds = %40, %36
  %43 = load ptr, ptr %12, align 4
  %44 = getelementptr inbounds %struct.max77693_dev, ptr %43, i32 0, i32 6
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 189, i32 noundef 12, i32 noundef 12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.11, i32 noundef %46) #7
  br label %132

50:                                               ; preds = %42
  %51 = load ptr, ptr %12, align 4
  %52 = getelementptr inbounds %struct.max77693_dev, ptr %51, i32 0, i32 6
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 184, i32 noundef 7, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %132

56:                                               ; preds = %50
  %57 = load ptr, ptr %12, align 4
  %58 = getelementptr inbounds %struct.max77693_dev, ptr %57, i32 0, i32 6
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 186, i32 noundef 7, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %132

62:                                               ; preds = %56
  %63 = load ptr, ptr %12, align 4
  %64 = getelementptr inbounds %struct.max77693_dev, ptr %63, i32 0, i32 6
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 186, i32 noundef 56, i32 noundef 24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %132

68:                                               ; preds = %62
  %69 = load i32, ptr %17, align 4
  %70 = add i32 %69, -3650000
  %71 = icmp ult i32 %70, 690000
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = udiv i32 %70, 25000
  br label %87

74:                                               ; preds = %68
  %75 = add i32 %69, -4340000
  %76 = icmp ult i32 %75, 10000
  br i1 %76, label %87, label %77

77:                                               ; preds = %74
  %78 = add i32 %69, -4350000
  %79 = icmp ult i32 %78, 50001
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = trunc i32 %78 to i16
  %82 = udiv i16 %81, 25000
  %83 = add nuw nsw i16 %82, 29
  %84 = zext i16 %83 to i32
  br label %87

85:                                               ; preds = %77
  %86 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.12) #7
  br label %132

87:                                               ; preds = %80, %74, %72
  %88 = phi i32 [ %73, %72 ], [ %84, %80 ], [ 28, %74 ]
  %89 = load ptr, ptr %12, align 4
  %90 = getelementptr inbounds %struct.max77693_dev, ptr %89, i32 0, i32 6
  %91 = load ptr, ptr %90, align 4
  %92 = tail call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef 187, i32 noundef 31, i32 noundef %88, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %132

94:                                               ; preds = %87
  %95 = load i32, ptr %22, align 4
  %96 = tail call fastcc i32 @max77693_set_min_system_volt(ptr noundef nonnull %8, i32 noundef %95) #6
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %132

98:                                               ; preds = %94
  %99 = load i32, ptr %27, align 4
  %100 = tail call fastcc i32 @max77693_set_thermal_regulation_temp(ptr noundef nonnull %8, i32 noundef %99) #6
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %132

102:                                              ; preds = %98
  %103 = load i32, ptr %32, align 4
  %104 = tail call fastcc i32 @max77693_set_batttery_overcurrent(ptr noundef nonnull %8, i32 noundef %103) #6
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %132

106:                                              ; preds = %102
  %107 = load i32, ptr %37, align 4
  %108 = tail call fastcc i32 @max77693_set_charge_input_threshold_volt(ptr noundef nonnull %8, i32 noundef %107) #6
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.power_supply_config, ptr %2, i32 0, i32 2
  store ptr %8, ptr %111, align 4
  %112 = tail call i32 @device_create_file(ptr noundef %3, ptr noundef nonnull @dev_attr_fast_charge_timer) #6
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  br label %130

115:                                              ; preds = %110
  %116 = tail call i32 @device_create_file(ptr noundef %3, ptr noundef nonnull @dev_attr_top_off_threshold_current) #6
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  br label %130

119:                                              ; preds = %115
  %120 = tail call i32 @device_create_file(ptr noundef %3, ptr noundef nonnull @dev_attr_top_off_timer) #6
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #7
  br label %130

123:                                              ; preds = %119
  %124 = call ptr @power_supply_register(ptr noundef %3, ptr noundef nonnull @max77693_charger_desc, ptr noundef nonnull %2) #6
  %125 = getelementptr inbounds %struct.max77693_charger, ptr %8, i32 0, i32 2
  store ptr %124, ptr %125, align 4
  %126 = icmp ugt ptr %124, inttoptr (i32 -4096 to ptr)
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #7
  %128 = load ptr, ptr %125, align 4
  %129 = ptrtoint ptr %128 to i32
  br label %130

130:                                              ; preds = %127, %122, %118, %114
  %131 = phi i32 [ %112, %114 ], [ %116, %118 ], [ %120, %122 ], [ %129, %127 ]
  call void @device_remove_file(ptr noundef %3, ptr noundef nonnull @dev_attr_top_off_timer) #6
  call void @device_remove_file(ptr noundef %3, ptr noundef nonnull @dev_attr_top_off_threshold_current) #6
  call void @device_remove_file(ptr noundef %3, ptr noundef nonnull @dev_attr_fast_charge_timer) #6
  br label %132

132:                                              ; preds = %130, %123, %106, %102, %98, %94, %87, %85, %62, %56, %50, %48, %41, %1
  %133 = phi i32 [ %131, %130 ], [ -12, %1 ], [ -22, %41 ], [ %108, %106 ], [ 0, %123 ], [ -22, %85 ], [ %104, %102 ], [ %100, %98 ], [ %96, %94 ], [ %92, %87 ], [ %66, %62 ], [ %60, %56 ], [ %54, %50 ], [ %46, %48 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_charger_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %4, ptr noundef nonnull @dev_attr_top_off_timer) #6
  tail call void @device_remove_file(ptr noundef %4, ptr noundef nonnull @dev_attr_top_off_threshold_current) #6
  tail call void @device_remove_file(ptr noundef %4, ptr noundef nonnull @dev_attr_fast_charge_timer) #6
  %5 = getelementptr inbounds %struct.max77693_charger, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void @power_supply_unregister(ptr noundef %6) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max77693_set_min_system_volt(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = add i32 %1, -3700001
  %4 = icmp ult i32 %3, -700001
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.13) #7
  br label %16

7:                                                ; preds = %2
  %8 = add nsw i32 %1, -3000000
  %9 = udiv i32 %8, 100000
  %10 = shl nuw nsw i32 %9, 5
  %11 = getelementptr inbounds %struct.max77693_charger, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.max77693_dev, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 187, i32 noundef 224, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %16

16:                                               ; preds = %7, %5
  %17 = phi i32 [ -22, %5 ], [ %15, %7 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max77693_set_thermal_regulation_temp(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  switch i32 %1, label %14 [
    i32 70, label %3
    i32 85, label %3
    i32 100, label %3
    i32 115, label %3
  ]

3:                                                ; preds = %2, %2, %2, %2
  %4 = trunc i32 %1 to i8
  %5 = add nsw i8 %4, -70
  %6 = udiv i8 %5, 15
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 5
  %9 = getelementptr inbounds %struct.max77693_charger, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.max77693_dev, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 190, i32 noundef 96, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %16

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.14) #7
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i32 [ -22, %14 ], [ %13, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max77693_set_batttery_overcurrent(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = icmp eq i32 %1, 0
  %4 = add i32 %1, -2000000
  %5 = icmp ult i32 %4, 1500001
  %6 = or i1 %3, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.15) #7
  br label %18

9:                                                ; preds = %2
  %10 = udiv i32 %4, 250000
  %11 = add nuw nsw i32 %10, 1
  %12 = select i1 %3, i32 0, i32 %11
  %13 = getelementptr inbounds %struct.max77693_charger, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.max77693_dev, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 195, i32 noundef 7, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %18

18:                                               ; preds = %9, %7
  %19 = phi i32 [ -22, %7 ], [ %17, %9 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max77693_set_charge_input_threshold_volt(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  switch i32 %1, label %7 [
    i32 4300000, label %9
    i32 4700000, label %3
    i32 4800000, label %3
    i32 4900000, label %3
  ]

3:                                                ; preds = %2, %2, %2
  %4 = add nsw i32 %1, -4700000
  %5 = udiv i32 %4, 100000
  %6 = shl nuw nsw i32 %5, 3
  br label %9

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.16) #7
  br label %16

9:                                                ; preds = %3, %2
  %10 = phi i32 [ %6, %3 ], [ 0, %2 ]
  %11 = getelementptr inbounds %struct.max77693_charger, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.max77693_dev, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 195, i32 noundef 24, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %16

16:                                               ; preds = %9, %7
  %17 = phi i32 [ -22, %7 ], [ %15, %9 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fast_charge_timer_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.max77693_charger, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.max77693_dev, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef 184, ptr noundef nonnull %4) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %3
  %14 = load i32, ptr %4, align 4
  %15 = and i32 %14, 7
  store i32 %15, ptr %4, align 4
  %16 = add nsw i32 %15, -1
  %17 = icmp ult i32 %16, 7
  %18 = shl nuw nsw i32 %15, 1
  %19 = add nuw nsw i32 %18, 2
  %20 = select i1 %17, i32 %19, i32 0
  %21 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.18, i32 noundef %20) #6
  br label %22

22:                                               ; preds = %13, %3
  %23 = phi i32 [ %21, %13 ], [ %11, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fast_charge_timer_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = icmp ult i32 %11, 17
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = lshr i32 131057, %11
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds [17 x i32], ptr @switch.table.fast_charge_timer_store, i32 0, i32 %11
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.max77693_charger, ptr %7, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.max77693_dev, ptr %21, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 184, i32 noundef 7, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 %3, i32 %24
  br label %27

27:                                               ; preds = %17, %13, %10, %4
  %28 = phi i32 [ %8, %4 ], [ -22, %10 ], [ %26, %17 ], [ -22, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @top_off_threshold_current_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.max77693_charger, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.max77693_dev, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef 186, ptr noundef nonnull %4) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %3
  %14 = load i32, ptr %4, align 4
  %15 = and i32 %14, 7
  store i32 %15, ptr %4, align 4
  %16 = icmp ult i32 %15, 5
  %17 = mul nuw nsw i32 %15, 25000
  %18 = add nuw nsw i32 %17, 100000
  %19 = mul nuw nsw i32 %15, 50000
  %20 = select i1 %16, i32 %18, i32 %19
  %21 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.18, i32 noundef %20) #6
  br label %22

22:                                               ; preds = %13, %3
  %23 = phi i32 [ %21, %13 ], [ %11, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @top_off_threshold_current_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = add i32 %11, -350001
  %13 = icmp ult i32 %12, -250001
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = icmp ult i32 %11, 200001
  %16 = add nsw i32 %11, -100000
  %17 = udiv i32 %16, 25000
  %18 = udiv i32 %11, 50000
  %19 = select i1 %15, i32 %17, i32 %18
  %20 = getelementptr inbounds %struct.max77693_charger, ptr %7, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.max77693_dev, ptr %21, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 186, i32 noundef 7, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 %3, i32 %24
  br label %27

27:                                               ; preds = %14, %10, %4
  %28 = phi i32 [ %8, %4 ], [ -22, %10 ], [ %26, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @top_off_timer_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.max77693_charger, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.max77693_dev, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef 186, ptr noundef nonnull %4) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i32, ptr %4, align 4
  %15 = lshr i32 %14, 3
  %16 = and i32 %15, 7
  store i32 %16, ptr %4, align 4
  %17 = mul nuw nsw i32 %16, 10
  %18 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.18, i32 noundef %17) #6
  br label %19

19:                                               ; preds = %13, %3
  %20 = phi i32 [ %18, %13 ], [ %11, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @top_off_timer_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = icmp ugt i32 %11, 70
  br i1 %12, label %25, label %13

13:                                               ; preds = %10
  %14 = trunc i32 %11 to i8
  %15 = udiv i8 %14, 10
  %16 = shl nuw nsw i8 %15, 3
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.max77693_charger, ptr %7, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.max77693_dev, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 186, i32 noundef 56, i32 noundef %17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 %3, i32 %22
  br label %25

25:                                               ; preds = %13, %10, %4
  %26 = phi i32 [ %8, %4 ], [ -22, %10 ], [ %24, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_charger_get_property(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #6
  %10 = getelementptr inbounds %struct.max77693_charger, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.max77693_dev, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  switch i32 %1, label %78 [
    i32 0, label %14
    i32 1, label %28
    i32 2, label %42
    i32 3, label %57
    i32 4, label %67
    i32 73, label %76
    i32 74, label %77
  ]

14:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 0, ptr %8, align 4, !annotation !8
  %15 = call i32 @regmap_read(ptr noundef %13, i32 noundef 180, ptr noundef nonnull %8) #6
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %8, align 4
  %19 = and i32 %18, 15
  %20 = icmp ult i32 %19, 12
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds [12 x i32], ptr @switch.table.max77693_charger_get_property, i32 0, i32 %19
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i32 [ %23, %21 ], [ 0, %17 ]
  store i32 %25, ptr %2, align 4
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi i32 [ %15, %14 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  br label %78

28:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !annotation !8
  %29 = call i32 @regmap_read(ptr noundef %13, i32 noundef 180, ptr noundef nonnull %7) #6
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr %7, align 4
  %33 = and i32 %32, 15
  %34 = icmp ult i32 %33, 12
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds [12 x i32], ptr @switch.table.max77693_charger_get_property.23, i32 0, i32 %33
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi i32 [ %37, %35 ], [ 0, %31 ]
  store i32 %39, ptr %2, align 4
  br label %40

40:                                               ; preds = %38, %28
  %41 = phi i32 [ %29, %28 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  br label %78

42:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !8
  %43 = call i32 @regmap_read(ptr noundef %13, i32 noundef 180, ptr noundef nonnull %6) #6
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %42
  %46 = load i32, ptr %6, align 4
  %47 = lshr i32 %46, 4
  %48 = and i32 %47, 7
  %49 = icmp eq i32 %48, 7
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds [7 x i32], ptr @switch.table.max77693_charger_get_property.24, i32 0, i32 %48
  %52 = load i32, ptr %51, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = phi i32 [ %52, %50 ], [ 0, %45 ]
  store i32 %54, ptr %2, align 4
  br label %55

55:                                               ; preds = %53, %42
  %56 = phi i32 [ %43, %42 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %78

57:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %58 = call i32 @regmap_read(ptr noundef %13, i32 noundef 178, ptr noundef nonnull %5) #6
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr %5, align 4
  %62 = lshr i32 %61, 7
  %63 = and i32 %62, 1
  %64 = xor i32 %63, 1
  store i32 %64, ptr %2, align 4
  br label %65

65:                                               ; preds = %60, %57
  %66 = phi i32 [ 0, %60 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br label %78

67:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %68 = call i32 @regmap_read(ptr noundef %13, i32 noundef 178, ptr noundef nonnull %4) #6
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %4, align 4
  %72 = lshr i32 %71, 6
  %73 = and i32 %72, 1
  store i32 %73, ptr %2, align 4
  br label %74

74:                                               ; preds = %70, %67
  %75 = phi i32 [ 0, %70 ], [ %68, %67 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %78

76:                                               ; preds = %3
  store ptr @.str.21, ptr %2, align 4
  br label %78

77:                                               ; preds = %3
  store ptr @.str.22, ptr %2, align 4
  br label %78

78:                                               ; preds = %77, %76, %74, %65, %55, %40, %26, %3
  %79 = phi i32 [ -22, %3 ], [ 0, %77 ], [ 0, %76 ], [ %75, %74 ], [ %66, %65 ], [ %56, %55 ], [ %41, %40 ], [ %27, %26 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

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
!8 = !{!"auto-init"}
