; ModuleID = '/llk/IR/drivers/power/supply/cpcap-battery.c_pt.bc'
source_filename = "../drivers/power/supply/cpcap-battery.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpcap_battery_config = type { i32, %struct.power_supply_info, %struct.power_supply_battery_info }
%struct.power_supply_info = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x ptr], [20 x i32], ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.cpcap_battery_ddata = type { ptr, ptr, %struct.list_head, [4 x ptr], ptr, %struct.cpcap_battery_config, [4 x %struct.cpcap_battery_state_data], i32, %struct.atomic_t, i32, i32, i16, i8 }
%struct.cpcap_battery_state_data = type { i32, i32, i32, i32, i64, %struct.cpcap_coulomb_counter_data }
%struct.cpcap_coulomb_counter_data = type { i32, i32, i16, i16 }
%struct.cpcap_interrupt_desc = type { ptr, %struct.list_head, i32, i32 }
%union.power_supply_propval = type { i32 }

@__param_str_ignore_temperature_probe = internal constant [25 x i8] c"ignore_temperature_probe\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ignore_temperature_probe = internal global i8 0, align 1
@__param_ignore_temperature_probe = internal constant %struct.kernel_param { ptr @__param_str_ignore_temperature_probe, ptr @__this_module, ptr @param_ops_bool, i16 432, i8 -1, i8 0, %union.anon.4 { ptr @ignore_temperature_probe } }, section "__param", align 4
@__UNIQUE_ID_ignore_temperature_probetype170 = internal constant [39 x i8] c"parmtype=ignore_temperature_probe:bool\00", section ".modinfo", align 1
@cpcap_battery_id_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,cpcap-battery\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cpcap_battery_default_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license175 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author176 = internal constant [40 x i8] c"author=Tony Lindgren <tony@atomide.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description177 = internal constant [38 x i8] c"description=CPCAP PMIC Battery Driver\00", section ".modinfo", align 1
@cpcap_battery_default_data = internal constant %struct.cpcap_battery_config { i32 972, %struct.power_supply_info { ptr null, i32 2, i32 4351000, i32 3100000, i32 1740000, i32 0, i32 0, i32 0, i32 0 }, %struct.power_supply_battery_info { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4200000, i32 0, [20 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [20 x ptr] zeroinitializer, [20 x i32] zeroinitializer, ptr null, i32 0 } }, align 4
@cpcap_battery_driver = internal global %struct.platform_driver { ptr @cpcap_battery_probe, ptr @cpcap_battery_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpcap_battery_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [14 x i8] c"cpcap_battery\00", align 1
@cpcap_charger_battery_desc = internal constant %struct.power_supply_desc { ptr @.str.17, i32 1, ptr null, i32 0, ptr @cpcap_battery_props, i32 19, ptr @cpcap_battery_get_property, ptr @cpcap_battery_set_property, ptr @cpcap_battery_property_is_writeable, ptr @cpcap_battery_external_power_changed, ptr null, i8 0, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register power supply\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Could not read vendor\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"eol\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"lowbph\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"lowbpl\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"chrgcurr1\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"battdetb\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"cccal\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"could not get irq %s: %i\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Coulomb counter calibration done\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Battery low at %imV!\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Battery empty at %imV, powering off\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"battp\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"chg_isense\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"batti\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"could not initialize VBUS or ID IIO\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@cpcap_battery_props = internal global [19 x i32] [i32 0, i32 3, i32 6, i32 12, i32 10, i32 11, i32 31, i32 18, i32 17, i32 24, i32 26, i32 22, i32 28, i32 20, i32 21, i32 47, i32 51, i32 66, i32 52], align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"%s failed: %i\0A\00", align 1
@__func__.cpcap_battery_get_current = private unnamed_addr constant [26 x i8] c"cpcap_battery_get_current\00", align 1
@__func__.cpcap_charger_battery_temperature = private unnamed_addr constant [34 x i8] c"cpcap_charger_battery_temperature\00", align 1
@cpcap_battery_low.is_low = internal unnamed_addr global i1 false, align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@__func__.cpcap_battery_get_voltage = private unnamed_addr constant [26 x i8] c"cpcap_battery_get_voltage\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.20 = private unnamed_addr constant [26 x i8] c"calibration done: 0x%04x\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"%s: error %i\0A\00", align 1
@__func__.cpcap_battery_calibrate = private unnamed_addr constant [24 x i8] c"cpcap_battery_calibrate\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"%s: restore error %i\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"could not disable: %i\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_description177, ptr @__UNIQUE_ID_ignore_temperature_probetype170, ptr @__UNIQUE_ID_license175, ptr @__param_ignore_temperature_probe], section "llvm.metadata"

@__mod_of__cpcap_battery_id_table_device_table = dso_local alias [2 x %struct.of_device_id], ptr @cpcap_battery_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpcap_battery_driver, ptr noundef nonnull @__this_module) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpcap_battery_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_battery_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.power_supply_config, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false)
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call ptr @device_get_match_data(ptr noundef %4) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %113, label %7

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 592, i32 noundef 3520) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %113, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %8, i32 0, i32 2
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %8, i32 0, i32 2, i32 1
  store ptr %11, ptr %12, align 4
  store ptr %4, ptr %8, align 8
  %13 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %8, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(368) %13, ptr noundef nonnull align 4 dereferenceable(368) %5, i32 368, i1 false)
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr @dev_get_regmap(ptr noundef %15, ptr noundef null) #10
  %17 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %8, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %113, label %19

19:                                               ; preds = %10
  %20 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %21 = call i32 @regmap_read(ptr noundef nonnull %16, i32 noundef 72, ptr noundef nonnull %2) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %113

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %8, i32 0, i32 11
  %26 = load i32, ptr %2, align 4
  %27 = trunc i32 %26 to i16
  %28 = lshr i16 %27, 6
  %29 = and i16 %28, 7
  store i16 %29, ptr %25, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %30 = trunc i16 %28 to i3
  switch i3 %30, label %113 [
    i3 0, label %32
    i3 1, label %31
  ]

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %24
  %33 = phi i32 [ 91501, %31 ], [ 95374, %24 ]
  %34 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %8, i32 0, i32 7
  store i32 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %8, i32 0, i32 7
  %36 = load i32, ptr %13, align 4
  %37 = mul i32 %36, %33
  %38 = udiv i32 %37, 1000
  store i32 %38, ptr %35, align 8
  %39 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %39, align 8
  %40 = call fastcc i32 @cpcap_battery_init_irq(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull @.str.3) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %113

42:                                               ; preds = %32
  %43 = call fastcc i32 @cpcap_battery_init_irq(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull @.str.4) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %113

45:                                               ; preds = %42
  %46 = call fastcc i32 @cpcap_battery_init_irq(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull @.str.5) #10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %113

48:                                               ; preds = %45
  %49 = call fastcc i32 @cpcap_battery_init_irq(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull @.str.6) #10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %113

51:                                               ; preds = %48
  %52 = call fastcc i32 @cpcap_battery_init_irq(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull @.str.7) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %113

54:                                               ; preds = %51
  %55 = call fastcc i32 @cpcap_battery_init_irq(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull @.str.8) #10
  %56 = load ptr, ptr %17, align 4
  %57 = call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 548, i32 noundef 65535, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %113

59:                                               ; preds = %54
  %60 = load ptr, ptr %8, align 8
  %61 = call ptr @devm_iio_channel_get(ptr noundef %60, ptr noundef nonnull @.str.7) #10
  %62 = getelementptr %struct.cpcap_battery_ddata, ptr %8, i32 0, i32 3, i32 0
  store ptr %61, ptr %62, align 4
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %88, label %91

64:                                               ; preds = %91
  %65 = load ptr, ptr %8, align 8
  %66 = call ptr @devm_iio_channel_get(ptr noundef %65, ptr noundef nonnull @.str.13) #10
  %67 = getelementptr %struct.cpcap_battery_ddata, ptr %8, i32 0, i32 3, i32 1
  store ptr %66, ptr %67, align 4
  %68 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %88, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %66, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %94, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %8, align 8
  %74 = call ptr @devm_iio_channel_get(ptr noundef %73, ptr noundef nonnull @.str.14) #10
  %75 = getelementptr %struct.cpcap_battery_ddata, ptr %8, i32 0, i32 3, i32 2
  store ptr %74, ptr %75, align 4
  %76 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %88, label %77

77:                                               ; preds = %72
  %78 = load ptr, ptr %74, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %94, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %8, align 8
  %82 = call ptr @devm_iio_channel_get(ptr noundef %81, ptr noundef nonnull @.str.15) #10
  %83 = getelementptr %struct.cpcap_battery_ddata, ptr %8, i32 0, i32 3, i32 3
  store ptr %82, ptr %83, align 4
  %84 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr %82, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %94, label %99

88:                                               ; preds = %80, %72, %64, %59
  %89 = phi ptr [ %61, %59 ], [ %66, %64 ], [ %74, %72 ], [ %82, %80 ]
  %90 = ptrtoint ptr %89 to i32
  br label %94

91:                                               ; preds = %59
  %92 = load ptr, ptr %61, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %64

94:                                               ; preds = %91, %88, %85, %77, %69
  %95 = phi i32 [ %90, %88 ], [ -6, %85 ], [ -6, %77 ], [ -6, %69 ], [ -6, %91 ]
  %96 = load ptr, ptr %8, align 8
  %97 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %96, i32 noundef %95, ptr noundef nonnull @.str.16) #10
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %94, %85
  %100 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %101 = load ptr, ptr %100, align 8
  store ptr %101, ptr %3, align 4
  %102 = getelementptr inbounds %struct.power_supply_config, ptr %3, i32 0, i32 2
  store ptr %8, ptr %102, align 4
  %103 = load ptr, ptr %8, align 8
  %104 = call ptr @devm_power_supply_register(ptr noundef %103, ptr noundef nonnull @cpcap_charger_battery_desc, ptr noundef nonnull %3) #10
  %105 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %8, i32 0, i32 4
  store ptr %104, ptr %105, align 8
  %106 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = ptrtoint ptr %104 to i32
  %109 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.1) #11
  br label %113

110:                                              ; preds = %99
  %111 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %8, i32 0, i32 8
  store volatile i32 1, ptr %111, align 4
  %112 = call fastcc i32 @cpcap_battery_calibrate(ptr noundef nonnull %8)
  br label %113

113:                                              ; preds = %110, %107, %94, %54, %51, %48, %45, %42, %32, %24, %23, %10, %7, %1
  %114 = phi i32 [ %108, %107 ], [ -19, %1 ], [ -12, %7 ], [ -19, %10 ], [ %21, %23 ], [ -22, %24 ], [ %57, %54 ], [ %97, %94 ], [ %112, %110 ], [ %52, %51 ], [ %49, %48 ], [ %46, %45 ], [ %43, %42 ], [ %40, %32 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_battery_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %3, i32 0, i32 8
  store volatile i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 548, i32 noundef 65535, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.23, i32 noundef %7) #11
  br label %11

11:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_battery_calibrate(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 2560, ptr noundef nonnull %2) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %51

8:                                                ; preds = %1
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = load ptr, ptr %4, align 4
  %11 = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 2560, i32 noundef 65535, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %8
  %14 = sub i32 -600, %9
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = add i32 %14, %15
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %30, %13
  %19 = load ptr, ptr %4, align 4
  %20 = call i32 @regmap_read(ptr noundef %19, i32 noundef 2560, ptr noundef nonnull %3) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load i32, ptr %3, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %4, align 4
  %28 = call i32 @regmap_read(ptr noundef %27, i32 noundef 2588, ptr noundef nonnull %3) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  call void @msleep(i32 noundef 300) #10
  %31 = load volatile i32, ptr @jiffies, align 64
  %32 = add i32 %14, %31
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %18, label %34

34:                                               ; preds = %30, %22, %13
  %35 = load ptr, ptr %4, align 4
  %36 = call i32 @regmap_read(ptr noundef %35, i32 noundef 2588, ptr noundef nonnull %3) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load ptr, ptr %0, align 8
  %40 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.20, i32 noundef %40) #11
  br label %44

41:                                               ; preds = %34, %26, %18, %8
  %42 = phi i32 [ %36, %34 ], [ %11, %8 ], [ %20, %18 ], [ %28, %26 ]
  %43 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.cpcap_battery_calibrate, i32 noundef %42) #11
  br label %44

44:                                               ; preds = %41, %38
  %45 = load ptr, ptr %4, align 4
  %46 = load i32, ptr %2, align 4
  %47 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 2560, i32 noundef 65535, i32 noundef %46, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.cpcap_battery_calibrate, i32 noundef %47) #11
  br label %51

51:                                               ; preds = %49, %44, %1
  %52 = phi i32 [ %6, %1 ], [ %47, %49 ], [ 0, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %52
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_battery_init_irq(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef %2) #10
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %34, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 8
  %8 = tail call i32 @devm_request_threaded_irq(ptr noundef %7, i32 noundef %4, ptr noundef null, ptr noundef nonnull @cpcap_battery_irq_thread, i32 noundef 8320, ptr noundef %2, ptr noundef %1) #10
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %1, align 8
  br i1 %9, label %12, label %11

11:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.9, ptr noundef %2, i32 noundef %8) #11
  br label %34

12:                                               ; preds = %6
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 20, i32 noundef 3520) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %12
  store ptr %2, ptr %13, align 4
  %16 = getelementptr inbounds %struct.cpcap_interrupt_desc, ptr %13, i32 0, i32 2
  store i32 %4, ptr %16, align 4
  %17 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(6) @.str.8, i32 noundef 5)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(7) @.str.4, i32 noundef 6)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(7) @.str.5, i32 noundef 6)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %19, %15
  %26 = phi i32 [ 1, %15 ], [ 2, %19 ], [ 3, %22 ]
  %27 = getelementptr inbounds %struct.cpcap_interrupt_desc, ptr %13, i32 0, i32 3
  store i32 %26, ptr %27, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = getelementptr inbounds %struct.cpcap_interrupt_desc, ptr %13, i32 0, i32 1
  %30 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %1, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %29, ptr %32, align 4
  store ptr %31, ptr %29, align 4
  %33 = getelementptr inbounds %struct.cpcap_interrupt_desc, ptr %13, i32 0, i32 1, i32 1
  store ptr %30, ptr %33, align 4
  store volatile ptr %29, ptr %30, align 4
  br label %34

34:                                               ; preds = %28, %12, %11, %3
  %35 = phi i32 [ %8, %11 ], [ 0, %28 ], [ %4, %3 ], [ -12, %12 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_battery_irq_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %1, i32 0, i32 8
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %1, i32 0, i32 2
  br label %8

8:                                                ; preds = %12, %6
  %9 = phi ptr [ %7, %6 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %43, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %0
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  %17 = getelementptr %struct.cpcap_battery_ddata, ptr %1, i32 0, i32 6, i32 1
  %18 = getelementptr i8, ptr %10, i32 12
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %40 [
    i32 1, label %20
    i32 2, label %22
    i32 3, label %30
  ]

20:                                               ; preds = %16
  %21 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.10) #11
  br label %40

22:                                               ; preds = %16
  %23 = getelementptr %struct.cpcap_battery_ddata, ptr %1, i32 0, i32 6, i32 1, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load ptr, ptr %1, align 8
  %28 = load i32, ptr %17, align 8
  %29 = sdiv i32 %28, 1000
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.11, i32 noundef %29) #11
  br label %40

30:                                               ; preds = %16
  %31 = getelementptr %struct.cpcap_battery_ddata, ptr %1, i32 0, i32 6, i32 1, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, ptr %17, align 8
  %36 = icmp slt i32 %35, 3200001
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load ptr, ptr %1, align 8
  %39 = sdiv i32 %35, 1000
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %38, ptr noundef nonnull @.str.12, i32 noundef %39) #11
  tail call void @orderly_poweroff(i1 noundef zeroext true) #10
  br label %40

40:                                               ; preds = %37, %34, %30, %26, %22, %20, %16
  %41 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %1, i32 0, i32 4
  %42 = load ptr, ptr %41, align 8
  tail call void @power_supply_changed(ptr noundef %42) #10
  br label %43

43:                                               ; preds = %40, %8, %2
  %44 = phi i32 [ 1, %40 ], [ 0, %2 ], [ 0, %8 ]
  ret i32 %44
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_emerg(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @orderly_poweroff(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_battery_get_property(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [7 x i16], align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpcap_battery_state_data, align 8
  %10 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, i8 0, i64 40, i1 false) #10
  %11 = tail call i64 @ktime_get() #10
  %12 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 1
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %3
  %15 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 1, i32 4
  %16 = load i64, ptr %15, align 8
  %17 = sub i64 %11, %16
  %18 = tail call i64 @llvm.abs.i64(i64 %17, i1 false) #10
  %19 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %18) #12, !srcloc !9
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %18, i64 %19, i32 0) #12, !srcloc !10
  %21 = extractvalue { i64, i32 } %20, 0
  %22 = icmp slt i64 %17, 0
  %23 = lshr i64 %21, 18
  %24 = sub nsw i64 0, %23
  %25 = select i1 %22, i64 %24, i64 %23
  %26 = icmp slt i64 %25, 250
  br i1 %26, label %173, label %27

27:                                               ; preds = %14, %3
  %28 = getelementptr inbounds %struct.cpcap_battery_state_data, ptr %9, i32 0, i32 4
  store i64 %11, ptr %28, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 0, ptr %8, align 4
  %29 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 3, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @iio_read_channel_processed(ptr noundef %30, ptr noundef nonnull %8) #10
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load ptr, ptr %10, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.cpcap_battery_get_voltage, i32 noundef %31) #11
  br label %38

35:                                               ; preds = %27
  %36 = load i32, ptr %8, align 4
  %37 = mul i32 %36, 1000
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i32 [ 0, %33 ], [ %37, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  store i32 %39, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4
  %40 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 3, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 @iio_read_channel_processed(ptr noundef %41, ptr noundef nonnull %7) #10
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load ptr, ptr %10, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.cpcap_battery_get_current, i32 noundef %42) #11
  br label %49

46:                                               ; preds = %38
  %47 = load i32, ptr %7, align 4
  %48 = mul i32 %47, 1000
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi i32 [ 0, %44 ], [ %48, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  %51 = getelementptr inbounds %struct.cpcap_battery_state_data, ptr %9, i32 0, i32 1
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.cpcap_battery_state_data, ptr %9, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(14) %6, i8 0, i32 14, i1 false) #10, !annotation !8
  %53 = getelementptr inbounds %struct.cpcap_battery_state_data, ptr %9, i32 0, i32 5, i32 1
  %54 = getelementptr inbounds %struct.cpcap_battery_state_data, ptr %9, i32 0, i32 5, i32 2
  %55 = getelementptr inbounds %struct.cpcap_battery_state_data, ptr %9, i32 0, i32 5, i32 3
  %56 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(12) %52, i8 0, i64 12, i1 false) #10
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 @regmap_bulk_read(ptr noundef %57, i32 noundef 2572, ptr noundef nonnull %6, i32 noundef 7) #10
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %111

60:                                               ; preds = %49
  %61 = getelementptr inbounds [7 x i16], ptr %6, i32 0, i32 1
  %62 = load i16, ptr %61, align 2
  %63 = and i16 %62, 4095
  %64 = zext i16 %63 to i32
  %65 = shl nuw nsw i32 %64, 16
  %66 = load i16, ptr %6, align 2
  %67 = zext i16 %66 to i32
  %68 = or i32 %65, %67
  store i32 %68, ptr %52, align 8
  %69 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 11
  %70 = load i16, ptr %69, align 8
  %71 = icmp eq i16 %70, 1
  br i1 %71, label %72, label %77

72:                                               ; preds = %60
  %73 = sub nsw i32 31, %67
  %74 = and i32 %73, 255
  %75 = shl i32 24, %74
  %76 = ashr i32 %75, %74
  store i32 %76, ptr %52, align 8
  br label %77

77:                                               ; preds = %72, %60
  %78 = phi i32 [ %76, %72 ], [ %68, %60 ]
  %79 = getelementptr inbounds [7 x i16], ptr %6, i32 0, i32 3
  %80 = load i16, ptr %79, align 2
  %81 = zext i16 %80 to i32
  %82 = shl nuw i32 %81, 16
  %83 = getelementptr inbounds [7 x i16], ptr %6, i32 0, i32 2
  %84 = load i16, ptr %83, align 2
  %85 = zext i16 %84 to i32
  %86 = or i32 %82, %85
  store i32 %86, ptr %53, align 4
  %87 = getelementptr inbounds [7 x i16], ptr %6, i32 0, i32 4
  %88 = load i16, ptr %87, align 2
  %89 = zext i16 %88 to i32
  %90 = shl i32 %89, 22
  %91 = ashr exact i32 %90, 22
  %92 = trunc i32 %91 to i16
  store i16 %92, ptr %54, align 8
  %93 = getelementptr inbounds [7 x i16], ptr %6, i32 0, i32 6
  %94 = load i16, ptr %93, align 2
  %95 = zext i16 %94 to i32
  %96 = shl i32 %95, 18
  %97 = ashr exact i32 %96, 18
  %98 = trunc i32 %97 to i16
  %99 = select i1 %71, i16 %98, i16 %94
  store i16 %99, ptr %55, align 2
  %100 = sext i32 %86 to i64
  %101 = sext i32 %78 to i64
  %102 = sext i32 %91 to i64
  %103 = mul nsw i64 %102, %101
  %104 = sub nsw i64 %103, %100
  %105 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 7
  %106 = load i32, ptr %105, align 8
  %107 = zext i32 %106 to i64
  %108 = mul i64 %104, %107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %109 = call i64 @div_s64_rem(i64 noundef %108, i32 noundef 3600000, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %110 = trunc i64 %109 to i32
  br label %111

111:                                              ; preds = %77, %49
  %112 = phi i32 [ %110, %77 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %6) #10
  %113 = getelementptr inbounds %struct.cpcap_battery_state_data, ptr %9, i32 0, i32 2
  store i32 %112, ptr %113, align 8
  %114 = getelementptr inbounds %struct.cpcap_battery_state_data, ptr %9, i32 0, i32 3
  %115 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 3
  %116 = load ptr, ptr %115, align 8
  %117 = call i32 @iio_read_channel_processed(ptr noundef %116, ptr noundef %114) #10
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %111
  %120 = load i8, ptr @ignore_temperature_probe, align 1, !range !11
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %172

122:                                              ; preds = %119
  %123 = load ptr, ptr %10, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %123, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.cpcap_charger_battery_temperature, i32 noundef %117) #11
  br label %172

124:                                              ; preds = %111
  %125 = load i32, ptr %114, align 4
  %126 = sdiv i32 %125, 100
  store i32 %126, ptr %114, align 4
  %127 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %127, ptr noundef align 8 dereferenceable(40) %12, i32 40, i1 false) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 40, i1 false) #10
  %128 = call fastcc zeroext i1 @cpcap_battery_full(ptr noundef %10) #10
  br i1 %128, label %129, label %149

129:                                              ; preds = %124
  %130 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %130, ptr noundef align 8 dereferenceable(40) %12, i32 40, i1 false) #10
  %131 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 2
  %132 = load i32, ptr %131, align 8
  switch i32 %132, label %133 [
    i32 0, label %140
    i32 -1, label %140
  ]

133:                                              ; preds = %129
  store i32 -1, ptr %131, align 8
  %134 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 2, i32 2
  %135 = load i32, ptr %134, align 8
  %136 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 3, i32 2
  %137 = load i32, ptr %136, align 8
  %138 = sub i32 %135, %137
  %139 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 9
  store i32 %138, ptr %139, align 8
  br label %171

140:                                              ; preds = %129, %129
  %141 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 9
  %142 = load i32, ptr %141, align 8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %171, label %144

144:                                              ; preds = %140
  store i32 -1, ptr %131, align 8
  %145 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 3, i32 2
  %146 = load i32, ptr %145, align 8
  %147 = add i32 %146, %142
  %148 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 2, i32 2
  store i32 %147, ptr %148, align 8
  br label %171

149:                                              ; preds = %124
  %150 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 1, i32 1
  %151 = load i32, ptr %150, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load i32, ptr %12, align 8
  %155 = icmp slt i32 %154, 3350001
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = load i1, ptr @cpcap_battery_low.is_low, align 1
  br i1 %157, label %159, label %158

158:                                              ; preds = %156, %149
  store i1 false, ptr @cpcap_battery_low.is_low, align 1
  br label %171

159:                                              ; preds = %156, %153
  store i1 true, ptr @cpcap_battery_low.is_low, align 1
  %160 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %160, ptr noundef align 8 dereferenceable(40) %12, i32 40, i1 false) #10
  %161 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 3
  %162 = load i32, ptr %161, align 8
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %159
  store i32 0, ptr %161, align 8
  %165 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 2, i32 2
  %166 = load i32, ptr %165, align 8
  %167 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 3, i32 2
  %168 = load i32, ptr %167, align 8
  %169 = sub i32 %166, %168
  %170 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 9
  store i32 %169, ptr %170, align 8
  br label %171

171:                                              ; preds = %164, %159, %158, %144, %140, %133
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #10
  br label %176

172:                                              ; preds = %122, %119
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #10
  br label %368

173:                                              ; preds = %14
  %174 = trunc i64 %25 to i32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #10
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %368, label %176

176:                                              ; preds = %173, %171
  %177 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 0
  switch i32 %1, label %368 [
    i32 3, label %178
    i32 0, label %187
    i32 6, label %195
    i32 12, label %198
    i32 10, label %210
    i32 11, label %213
    i32 31, label %216
    i32 18, label %219
    i32 17, label %237
    i32 28, label %240
    i32 20, label %243
    i32 21, label %252
    i32 47, label %286
    i32 51, label %308
    i32 26, label %322
    i32 24, label %353
    i32 22, label %358
    i32 66, label %361
    i32 52, label %362
  ]

178:                                              ; preds = %176
  %179 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 1, i32 3
  %180 = load i32, ptr %179, align 4
  %181 = icmp slt i32 %180, -399
  %182 = load i8, ptr @ignore_temperature_probe, align 1
  %183 = icmp eq i8 %182, 0
  %184 = select i1 %181, i1 %183, i1 false
  br i1 %184, label %186, label %185

185:                                              ; preds = %178
  store i32 1, ptr %2, align 4
  br label %368

186:                                              ; preds = %178
  store i32 0, ptr %2, align 4
  br label %368

187:                                              ; preds = %176
  %188 = call fastcc zeroext i1 @cpcap_battery_full(ptr noundef %10)
  br i1 %188, label %189, label %190

189:                                              ; preds = %187
  store i32 4, ptr %2, align 4
  br label %368

190:                                              ; preds = %187
  %191 = call fastcc i32 @cpcap_battery_cc_get_avg_current(ptr noundef %10)
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  store i32 1, ptr %2, align 4
  br label %368

194:                                              ; preds = %190
  store i32 2, ptr %2, align 4
  br label %368

195:                                              ; preds = %176
  %196 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 5, i32 1, i32 1
  %197 = load i32, ptr %196, align 4
  store i32 %197, ptr %2, align 4
  br label %368

198:                                              ; preds = %176
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4
  %199 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 3, i32 1
  %200 = load ptr, ptr %199, align 4
  %201 = call i32 @iio_read_channel_processed(ptr noundef %200, ptr noundef nonnull %4) #10
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load ptr, ptr %10, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %204, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.cpcap_battery_get_voltage, i32 noundef %201) #11
  br label %208

205:                                              ; preds = %198
  %206 = load i32, ptr %4, align 4
  %207 = mul i32 %206, 1000
  br label %208

208:                                              ; preds = %205, %203
  %209 = phi i32 [ 0, %203 ], [ %207, %205 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  store i32 %209, ptr %2, align 4
  br label %368

210:                                              ; preds = %176
  %211 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 5, i32 1, i32 2
  %212 = load i32, ptr %211, align 4
  store i32 %212, ptr %2, align 4
  br label %368

213:                                              ; preds = %176
  %214 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 5, i32 1, i32 3
  %215 = load i32, ptr %214, align 4
  store i32 %215, ptr %2, align 4
  br label %368

216:                                              ; preds = %176
  %217 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 5, i32 2, i32 12
  %218 = load i32, ptr %217, align 4
  store i32 %218, ptr %2, align 4
  br label %368

219:                                              ; preds = %176
  %220 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 1, i32 5
  %221 = load i32, ptr %220, align 8
  %222 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 0, i32 5
  %223 = load i32, ptr %222, align 8
  %224 = icmp eq i32 %221, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %219
  %226 = call fastcc i32 @cpcap_battery_cc_get_avg_current(ptr noundef %10)
  store i32 %226, ptr %2, align 4
  br label %368

227:                                              ; preds = %219
  %228 = sub i32 %221, %223
  %229 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 1, i32 5, i32 1
  %230 = load i32, ptr %229, align 4
  %231 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 0, i32 5, i32 1
  %232 = load i32, ptr %231, align 4
  %233 = sub i32 %230, %232
  %234 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 1, i32 5, i32 2
  %235 = load i16, ptr %234, align 8
  %236 = call fastcc i32 @cpcap_battery_cc_to_ua(ptr noundef %10, i32 noundef %228, i32 noundef %233, i16 noundef signext %235)
  store i32 %236, ptr %2, align 4
  br label %368

237:                                              ; preds = %176
  %238 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 1, i32 1
  %239 = load i32, ptr %238, align 4
  store i32 %239, ptr %2, align 4
  br label %368

240:                                              ; preds = %176
  %241 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 1, i32 2
  %242 = load i32, ptr %241, align 8
  store i32 %242, ptr %2, align 4
  br label %368

243:                                              ; preds = %176
  %244 = load i32, ptr %12, align 8
  %245 = sdiv i32 %244, 10000
  %246 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 1, i32 1
  %247 = load i32, ptr %246, align 4
  %248 = mul i32 %245, %247
  %249 = sext i32 %248 to i64
  %250 = call i64 @div64_s64(i64 noundef %249, i64 noundef 100) #10
  %251 = trunc i64 %250 to i32
  store i32 %251, ptr %2, align 4
  br label %368

252:                                              ; preds = %176
  %253 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 1, i32 5
  %254 = load i32, ptr %253, align 8
  %255 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 0, i32 5
  %256 = load i32, ptr %255, align 8
  %257 = icmp eq i32 %254, %256
  br i1 %257, label %258, label %267

258:                                              ; preds = %252
  %259 = call fastcc i32 @cpcap_battery_cc_get_avg_current(ptr noundef %10)
  %260 = sext i32 %259 to i64
  %261 = load i32, ptr %12, align 8
  %262 = sdiv i32 %261, 10000
  %263 = sext i32 %262 to i64
  %264 = mul nsw i64 %263, %260
  %265 = call i64 @div64_s64(i64 noundef %264, i64 noundef 100) #10
  %266 = trunc i64 %265 to i32
  store i32 %266, ptr %2, align 4
  br label %368

267:                                              ; preds = %252
  %268 = sub i32 %254, %256
  %269 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 1, i32 5, i32 1
  %270 = load i32, ptr %269, align 4
  %271 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 0, i32 5, i32 1
  %272 = load i32, ptr %271, align 4
  %273 = sub i32 %270, %272
  %274 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 1, i32 5, i32 2
  %275 = load i16, ptr %274, align 8
  %276 = call fastcc i32 @cpcap_battery_cc_to_ua(ptr noundef %10, i32 noundef %268, i32 noundef %273, i16 noundef signext %275)
  %277 = sext i32 %276 to i64
  %278 = load i32, ptr %12, align 8
  %279 = load i32, ptr %177, align 8
  %280 = add i32 %279, %278
  %281 = sdiv i32 %280, 20000
  %282 = sext i32 %281 to i64
  %283 = mul nsw i64 %282, %277
  %284 = call i64 @div64_s64(i64 noundef %283, i64 noundef 100) #10
  %285 = trunc i64 %284 to i32
  store i32 %285, ptr %2, align 4
  br label %368

286:                                              ; preds = %176
  %287 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 2
  %288 = load i32, ptr %287, align 8
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %368, label %290

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 9
  %292 = load i32, ptr %291, align 8
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %368, label %294

294:                                              ; preds = %290
  %295 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 2, i32 2
  %296 = load i32, ptr %295, align 8
  %297 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 1, i32 2
  %298 = load i32, ptr %297, align 8
  %299 = sub i32 %296, %298
  %300 = sdiv i32 %292, 200
  %301 = add i32 %299, %300
  store i32 %301, ptr %2, align 4
  %302 = call i32 @llvm.smax.i32(i32 %301, i32 0)
  %303 = load i32, ptr %291, align 8
  %304 = call i32 @llvm.smin.i32(i32 %302, i32 %303)
  store i32 %304, ptr %2, align 4
  %305 = mul i32 %304, 100
  %306 = load i32, ptr %291, align 8
  %307 = sdiv i32 %305, %306
  store i32 %307, ptr %2, align 4
  br label %368

308:                                              ; preds = %176
  %309 = call fastcc zeroext i1 @cpcap_battery_full(ptr noundef %10)
  br i1 %309, label %310, label %311

310:                                              ; preds = %308
  store i32 5, ptr %2, align 4
  br label %368

311:                                              ; preds = %308
  %312 = load i32, ptr %12, align 8
  %313 = icmp sgt i32 %312, 3749999
  br i1 %313, label %314, label %315

314:                                              ; preds = %311
  store i32 4, ptr %2, align 4
  br label %368

315:                                              ; preds = %311
  %316 = icmp sgt i32 %312, 3299999
  br i1 %316, label %317, label %318

317:                                              ; preds = %315
  store i32 3, ptr %2, align 4
  br label %368

318:                                              ; preds = %315
  %319 = icmp sgt i32 %312, 3100000
  br i1 %319, label %320, label %321

320:                                              ; preds = %318
  store i32 2, ptr %2, align 4
  br label %368

321:                                              ; preds = %318
  store i32 1, ptr %2, align 4
  br label %368

322:                                              ; preds = %176
  %323 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 2
  %324 = load i32, ptr %323, align 8
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %368, label %326

326:                                              ; preds = %322
  %327 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 2, i32 2
  %328 = load i32, ptr %327, align 8
  %329 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 1, i32 2
  %330 = load i32, ptr %329, align 8
  %331 = sub i32 %328, %330
  store i32 %331, ptr %2, align 4
  %332 = icmp slt i32 %331, 0
  %333 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 9
  %334 = load i32, ptr %333, align 8
  br i1 %332, label %335, label %343

335:                                              ; preds = %326
  %336 = icmp eq i32 %334, 0
  br i1 %336, label %342, label %337

337:                                              ; preds = %335
  %338 = sub i32 0, %331
  %339 = sdiv i32 %334, 5
  %340 = icmp slt i32 %339, %338
  br i1 %340, label %341, label %342

341:                                              ; preds = %337
  store i32 0, ptr %323, align 8
  store i32 0, ptr %333, align 8
  br label %368

342:                                              ; preds = %337, %335
  store i32 0, ptr %2, align 4
  br label %368

343:                                              ; preds = %326
  %344 = icmp ne i32 %334, 0
  %345 = icmp slt i32 %334, %331
  %346 = select i1 %344, i1 %345, i1 false
  br i1 %346, label %347, label %368

347:                                              ; preds = %343
  %348 = mul i32 %334, 6
  %349 = sdiv i32 %348, 5
  %350 = icmp sgt i32 %331, %349
  br i1 %350, label %351, label %352

351:                                              ; preds = %347
  store i32 0, ptr %323, align 8
  store i32 0, ptr %333, align 8
  br label %368

352:                                              ; preds = %347
  store i32 %334, ptr %2, align 4
  br label %368

353:                                              ; preds = %176
  %354 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 9
  %355 = load i32, ptr %354, align 8
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %368, label %357

357:                                              ; preds = %353
  store i32 %355, ptr %2, align 4
  br label %368

358:                                              ; preds = %176
  %359 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 5, i32 1, i32 4
  %360 = load i32, ptr %359, align 4
  store i32 %360, ptr %2, align 4
  br label %368

361:                                              ; preds = %176
  store i32 1, ptr %2, align 4
  br label %368

362:                                              ; preds = %176
  %363 = load i8, ptr @ignore_temperature_probe, align 1, !range !11
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %362
  %366 = getelementptr %struct.cpcap_battery_ddata, ptr %10, i32 0, i32 6, i32 1, i32 3
  %367 = load i32, ptr %366, align 4
  store i32 %367, ptr %2, align 4
  br label %368

368:                                              ; preds = %365, %362, %361, %358, %357, %353, %352, %351, %343, %342, %341, %322, %321, %320, %317, %314, %310, %294, %290, %286, %267, %258, %243, %240, %237, %227, %225, %216, %213, %210, %208, %195, %194, %193, %189, %186, %185, %176, %173, %172
  %369 = phi i32 [ -61, %341 ], [ -61, %351 ], [ %174, %173 ], [ -61, %290 ], [ -61, %286 ], [ -61, %322 ], [ -61, %353 ], [ -61, %362 ], [ -22, %176 ], [ 0, %342 ], [ 0, %352 ], [ 0, %343 ], [ 0, %310 ], [ 0, %317 ], [ 0, %321 ], [ 0, %320 ], [ 0, %314 ], [ 0, %193 ], [ 0, %194 ], [ 0, %185 ], [ 0, %186 ], [ 0, %365 ], [ 0, %361 ], [ 0, %358 ], [ 0, %357 ], [ 0, %294 ], [ 0, %267 ], [ 0, %258 ], [ 0, %243 ], [ 0, %240 ], [ 0, %237 ], [ 0, %227 ], [ 0, %225 ], [ 0, %216 ], [ 0, %213 ], [ 0, %210 ], [ 0, %208 ], [ 0, %195 ], [ 0, %189 ], [ %117, %172 ]
  ret i32 %369
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_battery_set_property(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca %union.power_supply_propval, align 4
  %5 = alloca %union.power_supply_propval, align 4
  %6 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #10
  switch i32 %1, label %44 [
    i32 31, label %7
    i32 24, label %33
  ]

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %6, i32 0, i32 5, i32 1, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %44, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %6, i32 0, i32 5, i32 1, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %8, %14
  br i1 %15, label %44, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %6, i32 0, i32 5, i32 2, i32 12
  store i32 %8, ptr %17, align 4
  %18 = load i32, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %19 = tail call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.19) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = call i32 @power_supply_get_property(ptr noundef nonnull %19, i32 noundef 31, ptr noundef nonnull %4) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, ptr %4, align 4
  %26 = icmp slt i32 %25, %18
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  store i32 %18, ptr %5, align 4
  %28 = call i32 @power_supply_set_property(ptr noundef nonnull %19, i32 noundef 31, ptr noundef nonnull %5) #10
  br label %29

29:                                               ; preds = %27, %24, %21
  %30 = phi i32 [ %22, %21 ], [ 0, %24 ], [ %28, %27 ]
  call void @power_supply_put(ptr noundef nonnull %19) #10
  br label %31

31:                                               ; preds = %29, %16
  %32 = phi i32 [ %30, %29 ], [ -19, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %44

33:                                               ; preds = %3
  %34 = load i32, ptr %2, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %6, i32 0, i32 5, i32 1, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = mul i32 %38, 6
  %40 = sdiv i32 %39, 5
  %41 = icmp sgt i32 %34, %40
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %6, i32 0, i32 9
  store i32 %34, ptr %43, align 8
  br label %44

44:                                               ; preds = %42, %36, %33, %31, %12, %7, %3
  %45 = phi i32 [ 0, %42 ], [ %32, %31 ], [ -22, %7 ], [ -22, %12 ], [ -22, %33 ], [ -22, %36 ], [ -22, %3 ]
  ret i32 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cpcap_battery_property_is_writeable(ptr nocapture noundef readnone %0, i32 noundef %1) #8 {
  %3 = icmp eq i32 %1, 31
  %4 = icmp eq i32 %1, 24
  %5 = or i1 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpcap_battery_external_power_changed(ptr noundef %0) #2 {
  %2 = alloca %union.power_supply_propval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = call i32 @power_supply_get_property(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cpcap_battery_full(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca %union.power_supply_propval, align 4
  %3 = getelementptr %struct.cpcap_battery_ddata, ptr %0, i32 0, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = tail call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.19) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %20

7:                                                ; preds = %1
  %8 = call i32 @power_supply_get_property(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %2) #10
  %9 = load i32, ptr %2, align 4
  call void @power_supply_put(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  switch i32 %9, label %20 [
    i32 2, label %12
    i32 4, label %16
  ]

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %0, i32 0, i32 12
  %14 = load i8, ptr %13, align 2
  %15 = and i8 %14, -2
  store i8 %15, ptr %13, align 2
  br label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %0, i32 0, i32 12
  %18 = load i8, ptr %17, align 2
  %19 = or i8 %18, 1
  store i8 %19, ptr %17, align 2
  br label %20

20:                                               ; preds = %16, %12, %11, %7, %6
  %21 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %0, i32 0, i32 12
  %22 = load i8, ptr %21, align 2
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %0, i32 0, i32 5, i32 2, i32 12
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, -120000
  %29 = load i32, ptr %3, align 8
  %30 = icmp ult i32 %29, %28
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = and i8 %22, -2
  store i8 %32, ptr %21, align 2
  br label %33

33:                                               ; preds = %31, %25, %20
  %34 = phi i1 [ false, %31 ], [ true, %25 ], [ false, %20 ]
  ret i1 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_battery_cc_get_avg_current(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 2596, ptr noundef nonnull %3) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %0, i32 0, i32 11
  %10 = load i16, ptr %9, align 8
  %11 = load i32, ptr %3, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = call i32 @regmap_read(ptr noundef %12, i32 noundef 2588, ptr noundef nonnull %3) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %8
  %16 = icmp eq i16 %10, 1
  %17 = select i1 %16, i32 18, i32 16
  %18 = shl i32 %11, %17
  %19 = ashr exact i32 %18, %17
  %20 = select i1 %16, i32 1, i32 4
  %21 = load i32, ptr %3, align 4
  %22 = shl i32 %21, 22
  %23 = ashr exact i32 %22, 22
  %24 = mul nuw nsw i32 %20, 250
  %25 = sext i32 %19 to i64
  %26 = zext i32 %20 to i64
  %27 = sext i32 %23 to i64
  %28 = mul nsw i64 %27, %26
  %29 = sub nsw i64 %28, %25
  %30 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %0, i32 0, i32 7
  %31 = load i32, ptr %30, align 8
  %32 = zext i32 %31 to i64
  %33 = mul nsw i64 %29, %32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %34 = call i64 @div_s64_rem(i64 noundef %33, i32 noundef %24, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %35 = trunc i64 %34 to i32
  br label %36

36:                                               ; preds = %15, %8, %1
  %37 = phi i32 [ %6, %1 ], [ %13, %8 ], [ %35, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_battery_cc_to_ua(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef signext %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = mul i32 %1, 250
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %4
  %9 = sext i32 %2 to i64
  %10 = sext i32 %1 to i64
  %11 = sext i16 %3 to i64
  %12 = mul nsw i64 %11, %10
  %13 = sub nsw i64 %12, %9
  %14 = getelementptr inbounds %struct.cpcap_battery_ddata, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 8
  %16 = zext i32 %15 to i64
  %17 = mul i64 %13, %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %18 = call i64 @div_s64_rem(i64 noundef %17, i32 noundef %6, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %8, %4
  %21 = phi i32 [ %19, %8 ], [ 0, %4 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_by_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_set_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

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
!9 = !{i64 205082, i64 205109}
!10 = !{i64 205777, i64 205804, i64 205837, i64 205858, i64 205885, i64 205911}
!11 = !{i8 0, i8 2}
