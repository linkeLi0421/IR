; ModuleID = '/llk/IR/drivers/power/supply/cpcap-charger.c_pt.bc'
source_filename = "../drivers/power/supply/cpcap-charger.c"
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
%struct.cpcap_charger_ddata = type { ptr, ptr, %struct.list_head, %struct.delayed_work, %struct.delayed_work, [2 x ptr], [5 x ptr], ptr, %struct.phy_companion, i8, %struct.atomic_t, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.phy_companion = type { ptr, ptr }
%struct.cpcap_interrupt_desc = type { i32, %struct.list_head, ptr }
%union.power_supply_propval = type { i32 }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@cpcap_charger_id_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,mapphone-cpcap-charger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author252 = internal constant [40 x i8] c"author=Tony Lindgren <tony@atomide.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [51 x i8] c"description=CPCAP Battery Charger Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias255 = internal constant [29 x i8] c"alias=platform:cpcap-charger\00", section ".modinfo", align 1
@cpcap_charger_driver = internal global %struct.platform_driver { ptr @cpcap_charger_probe, ptr @cpcap_charger_remove, ptr @cpcap_charger_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpcap_charger_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [14 x i8] c"cpcap-charger\00", align 1
@cpcap_charger_supplied_to = internal global [1 x ptr] [ptr @.str.3], align 4
@cpcap_charger_usb_desc = internal constant %struct.power_supply_desc { ptr @.str.23, i32 4, ptr null, i32 0, ptr @cpcap_charger_props, i32 6, ptr @cpcap_charger_get_property, ptr @cpcap_charger_set_property, ptr @cpcap_charger_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to register USB charger: %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"charger needs phy, deferring probe\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"battery power_supply not available %li\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"battery not inserted, charging disabled\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"%s failed with %i\0A\00", align 1
@__func__.cpcap_usb_detect = private unnamed_addr constant [17 x i8] c"cpcap_usb_detect\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"%s failed: %i\0A\00", align 1
@__func__.cpcap_charger_get_charge_voltage = private unnamed_addr constant [33 x i8] c"cpcap_charger_get_charge_voltage\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"error reading VBUS: %i\0A\00", align 1
@__func__.cpcap_charger_enable = private unnamed_addr constant [21 x i8] c"cpcap_charger_enable\00", align 1
@__func__.cpcap_charger_disable = private unnamed_addr constant [22 x i8] c"cpcap_charger_disable\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"%s could not %s vbus: %i\0A\00", align 1
@__func__.cpcap_charger_vbus_work = private unnamed_addr constant [24 x i8] c"cpcap_charger_vbus_work\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"battdetb\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"battp\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"chg_isense\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"batti\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"could not initialize VBUS or ID IIO: %i\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@cpcap_charger_props = internal global [6 x i32] [i32 0, i32 4, i32 31, i32 38, i32 12, i32 17], align 4
@__func__.cpcap_charger_get_charge_current = private unnamed_addr constant [33 x i8] c"cpcap_charger_get_charge_current\00", align 1
@cpcap_charger_irqs = internal unnamed_addr constant [9 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.17], align 4
@.str.24 = private unnamed_addr constant [26 x i8] c"could not get irq %s: %i\0A\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"chrg_det\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"rvrs_chrg\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"chrg_se1b\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"se0conn\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"rvrs_mode\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"chrgcurr2\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"chrgcurr1\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"vbusvld\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"no mode change GPIO%i: %li\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.35 = private unnamed_addr constant [36 x i8] c"could not clear USB comparator: %i\0A\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"could not clear charger: %i\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias255, ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license254], section "llvm.metadata"

@__mod_of__cpcap_charger_id_table_device_table = dso_local alias [2 x %struct.of_device_id], ptr @cpcap_charger_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpcap_charger_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpcap_charger_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_charger_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.power_supply_config, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @of_match_device(ptr noundef nonnull @cpcap_charger_id_table, ptr noundef %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %140, label %6

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 164, i32 noundef 3520) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %140, label %9

9:                                                ; preds = %6
  store ptr %3, ptr %7, align 4
  %10 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 12
  store i32 4200000, ptr %10, align 4
  %11 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 13
  store i32 532000, ptr %11, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @dev_get_regmap(ptr noundef %13, ptr noundef null) #8
  %15 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %140, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 2
  store volatile ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 2, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 3
  store i32 -32, ptr %20, align 4
  %21 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 3, i32 0, i32 1
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 3, i32 0, i32 1, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 3, i32 0, i32 2
  store ptr @cpcap_usb_detect, ptr %23, align 4
  %24 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %24, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #8
  %25 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 4
  store i32 -32, ptr %25, align 4
  %26 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 4, i32 0, i32 1
  store volatile ptr %26, ptr %26, align 4
  %27 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 4, i32 0, i32 1, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 4, i32 0, i32 2
  store ptr @cpcap_charger_vbus_work, ptr %28, align 4
  %29 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %29, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #8
  %30 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %30, align 8
  %31 = load ptr, ptr %7, align 4
  %32 = tail call ptr @devm_iio_channel_get(ptr noundef %31, ptr noundef nonnull @.str.17) #8
  %33 = getelementptr %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 6, i32 0
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %70, label %67

35:                                               ; preds = %67
  %36 = load ptr, ptr %7, align 4
  %37 = tail call ptr @devm_iio_channel_get(ptr noundef %36, ptr noundef nonnull @.str.18) #8
  %38 = getelementptr %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 6, i32 1
  store ptr %37, ptr %38, align 4
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %70, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %37, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %73, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %7, align 4
  %45 = tail call ptr @devm_iio_channel_get(ptr noundef %44, ptr noundef nonnull @.str.19) #8
  %46 = getelementptr %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 6, i32 2
  store ptr %45, ptr %46, align 4
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %70, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %45, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %73, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %7, align 4
  %53 = tail call ptr @devm_iio_channel_get(ptr noundef %52, ptr noundef nonnull @.str.20) #8
  %54 = getelementptr %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 6, i32 3
  store ptr %53, ptr %54, align 4
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %70, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %53, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %7, align 4
  %61 = tail call ptr @devm_iio_channel_get(ptr noundef %60, ptr noundef nonnull @.str.21) #8
  %62 = getelementptr %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 6, i32 4
  store ptr %61, ptr %62, align 4
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %61, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %79

67:                                               ; preds = %17
  %68 = load ptr, ptr %32, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %35

70:                                               ; preds = %59, %51, %43, %35, %17
  %71 = phi ptr [ %32, %17 ], [ %37, %35 ], [ %45, %43 ], [ %53, %51 ], [ %61, %59 ]
  %72 = icmp eq ptr %71, inttoptr (i32 -517 to ptr)
  br i1 %72, label %140, label %75

73:                                               ; preds = %67, %64, %56, %48, %40
  %74 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.22, i32 noundef -6) #9
  br label %140

75:                                               ; preds = %70
  %76 = ptrtoint ptr %71 to i32
  %77 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.22, i32 noundef %76) #9
  %78 = icmp eq ptr %71, null
  br i1 %78, label %79, label %140

79:                                               ; preds = %75, %64
  %80 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 10
  store volatile i32 1, ptr %80, align 4
  %81 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %82 = load ptr, ptr %81, align 8
  store ptr %82, ptr %2, align 4
  %83 = getelementptr inbounds %struct.power_supply_config, ptr %2, i32 0, i32 2
  store ptr %7, ptr %83, align 4
  %84 = getelementptr inbounds %struct.power_supply_config, ptr %2, i32 0, i32 4
  store ptr @cpcap_charger_supplied_to, ptr %84, align 4
  %85 = getelementptr inbounds %struct.power_supply_config, ptr %2, i32 0, i32 5
  store i32 1, ptr %85, align 4
  %86 = load ptr, ptr %7, align 4
  %87 = call ptr @devm_power_supply_register(ptr noundef %86, ptr noundef nonnull @cpcap_charger_usb_desc, ptr noundef nonnull %2) #8
  %88 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 7
  store ptr %87, ptr %88, align 4
  %89 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = ptrtoint ptr %87 to i32
  %92 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.1, i32 noundef %91) #9
  br label %140

93:                                               ; preds = %108, %79
  %94 = phi i32 [ %114, %108 ], [ 0, %79 ]
  %95 = getelementptr [9 x ptr], ptr @cpcap_charger_irqs, i32 0, i32 %94
  %96 = load ptr, ptr %95, align 4
  %97 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef %96) #8
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %140, label %99

99:                                               ; preds = %93
  %100 = load ptr, ptr %7, align 4
  %101 = call i32 @devm_request_threaded_irq(ptr noundef %100, i32 noundef %97, ptr noundef null, ptr noundef nonnull @cpcap_charger_irq_thread, i32 noundef 8320, ptr noundef %96, ptr noundef %7) #8
  %102 = icmp eq i32 %101, 0
  %103 = load ptr, ptr %7, align 4
  br i1 %102, label %105, label %104

104:                                              ; preds = %99
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.24, ptr noundef %96, i32 noundef %101) #9
  br label %140

105:                                              ; preds = %99
  %106 = call noalias ptr @devm_kmalloc(ptr noundef %103, i32 noundef 16, i32 noundef 3520) #8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %140, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.cpcap_interrupt_desc, ptr %106, i32 0, i32 2
  store ptr %96, ptr %109, align 4
  store i32 %97, ptr %106, align 4
  %110 = getelementptr inbounds %struct.cpcap_interrupt_desc, ptr %106, i32 0, i32 1
  %111 = load ptr, ptr %18, align 4
  %112 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  store ptr %110, ptr %112, align 4
  store ptr %111, ptr %110, align 4
  %113 = getelementptr inbounds %struct.cpcap_interrupt_desc, ptr %106, i32 0, i32 1, i32 1
  store ptr %18, ptr %113, align 4
  store volatile ptr %110, ptr %18, align 4
  %114 = add nuw nsw i32 %94, 1
  %115 = icmp eq i32 %114, 9
  br i1 %115, label %116, label %93

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 8
  store ptr @cpcap_charger_set_vbus, ptr %117, align 4
  %118 = call i32 @omap_usb2_set_comparator(ptr noundef %117) #8
  %119 = icmp eq i32 %118, -19
  %120 = load ptr, ptr %7, align 4
  br i1 %119, label %121, label %122

121:                                              ; preds = %116
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %120, ptr noundef nonnull @.str.2) #9
  br label %140

122:                                              ; preds = %116
  %123 = call ptr @devm_gpiod_get_index(ptr noundef %120, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef 7) #8
  %124 = getelementptr %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 5, i32 0
  store ptr %123, ptr %124, align 4
  %125 = icmp ugt ptr %123, inttoptr (i32 -4096 to ptr)
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load ptr, ptr %7, align 4
  %128 = ptrtoint ptr %123 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %127, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef %128) #9
  store ptr null, ptr %124, align 4
  br label %129

129:                                              ; preds = %126, %122
  %130 = load ptr, ptr %7, align 4
  %131 = call ptr @devm_gpiod_get_index(ptr noundef %130, ptr noundef nonnull @.str.33, i32 noundef 1, i32 noundef 7) #8
  %132 = getelementptr %struct.cpcap_charger_ddata, ptr %7, i32 0, i32 5, i32 1
  store ptr %131, ptr %132, align 4
  %133 = icmp ugt ptr %131, inttoptr (i32 -4096 to ptr)
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load ptr, ptr %7, align 4
  %136 = ptrtoint ptr %131 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %135, ptr noundef nonnull @.str.34, i32 noundef 1, i32 noundef %136) #9
  store ptr null, ptr %132, align 4
  br label %137

137:                                              ; preds = %134, %129
  %138 = load ptr, ptr @system_wq, align 4
  %139 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %138, ptr noundef %20, i32 noundef 0) #8
  br label %140

140:                                              ; preds = %137, %121, %105, %104, %93, %90, %75, %73, %70, %9, %6, %1
  %141 = phi i32 [ %91, %90 ], [ -517, %121 ], [ 0, %137 ], [ -22, %1 ], [ -12, %6 ], [ -19, %9 ], [ %76, %75 ], [ -6, %73 ], [ -517, %70 ], [ %101, %104 ], [ -19, %93 ], [ -12, %105 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_charger_remove(ptr nocapture noundef readonly %0) #2 {
  tail call void @cpcap_charger_shutdown(ptr noundef %0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpcap_charger_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %3, i32 0, i32 10
  store volatile i32 0, ptr %4, align 4
  %5 = tail call i32 @omap_usb2_set_comparator(ptr noundef null) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.35, i32 noundef %5) #9
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 2564, i32 noundef 16383, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cpcap_charger_disable, i32 noundef %12) #9
  %16 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %3, i32 0, i32 11
  store i32 0, ptr %16, align 4
  %17 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.36, i32 noundef %12) #9
  br label %18

18:                                               ; preds = %14, %9
  %19 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %3, i32 0, i32 11
  store i32 2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %3, i32 0, i32 4
  %21 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %20) #8
  %22 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %3, i32 0, i32 3
  %23 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %22) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpcap_usb_detect(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.power_supply_propval, align 4
  %6 = getelementptr i8, ptr %0, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr i8, ptr %0, i32 -12
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 32, ptr noundef nonnull %4) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load i32, ptr %4, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = call i32 @regmap_read(ptr noundef %13, i32 noundef 36, ptr noundef nonnull %4) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load i32, ptr %4, align 4
  %18 = trunc i32 %17 to i8
  %19 = lshr i8 %18, 5
  %20 = and i8 %19, 1
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @regmap_read(ptr noundef %21, i32 noundef 44, ptr noundef nonnull %4) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16, %11, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %163

25:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %26 = and i32 %12, 8192
  %27 = icmp ne i32 %26, 0
  %28 = and i8 %18, 16
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %27, i1 true, i1 %29
  %31 = and i8 %18, 8
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %25
  %35 = getelementptr i8, ptr %0, i32 136
  store i32 3, ptr %35, align 4
  br label %163

36:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  %37 = getelementptr i8, ptr %0, i32 100
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 @iio_read_channel_processed(ptr noundef %38, ptr noundef nonnull %3) #8
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.cpcap_charger_get_charge_voltage, i32 noundef %39) #9
  br label %45

43:                                               ; preds = %36
  %44 = load i32, ptr %3, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ 0, %41 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %47 = getelementptr i8, ptr %0, i32 140
  %48 = load i32, ptr %47, align 4
  %49 = icmp sgt i32 %46, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load ptr, ptr %7, align 4
  %52 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 2564, i32 noundef 16383, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cpcap_charger_disable, i32 noundef %52) #9
  %56 = getelementptr i8, ptr %0, i32 136
  store i32 0, ptr %56, align 4
  br label %163

57:                                               ; preds = %50
  %58 = getelementptr i8, ptr %0, i32 136
  store i32 3, ptr %58, align 4
  %59 = getelementptr i8, ptr %0, i32 116
  %60 = load ptr, ptr %59, align 4
  call void @power_supply_changed(ptr noundef %60) #8
  %61 = load ptr, ptr @system_wq, align 4
  %62 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %61, ptr noundef %0, i32 noundef 60000) #8
  br label %163

63:                                               ; preds = %45
  call void @usleep_range_state(i32 noundef 80000, i32 noundef 120000, i32 noundef 2) #8
  %64 = getelementptr i8, ptr %0, i32 136
  %65 = load i32, ptr %64, align 4
  switch i32 %65, label %75 [
    i32 1, label %66
    i32 4, label %71
  ]

66:                                               ; preds = %63
  %67 = icmp ne i8 %20, 0
  %68 = select i1 %67, i1 true, i1 %29
  %69 = select i1 %68, i1 true, i1 %32
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  call fastcc void @cpcap_charger_disconnect(ptr noundef %6, i32 noundef 4, i32 noundef 500)
  br label %163

71:                                               ; preds = %63
  %72 = icmp eq i8 %20, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %71
  %74 = select i1 %32, i32 2, i32 3
  call fastcc void @cpcap_charger_disconnect(ptr noundef %6, i32 noundef %74, i32 noundef 500)
  br label %163

75:                                               ; preds = %71, %66, %63
  %76 = getelementptr i8, ptr %0, i32 128
  %77 = load i8, ptr %76, align 4
  %78 = and i8 %77, 2
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %150

80:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4
  %81 = getelementptr i8, ptr %0, i32 104
  %82 = load ptr, ptr %81, align 4
  %83 = call i32 @iio_read_channel_processed(ptr noundef %82, ptr noundef nonnull %2) #8
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.13, i32 noundef %83) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %150

87:                                               ; preds = %80
  %88 = load i32, ptr %2, align 4
  %89 = icmp slt i32 %88, 3901
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %90 = select i1 %89, i1 true, i1 %29
  br i1 %90, label %150, label %91

91:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %92 = call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.3) #8
  %93 = icmp eq ptr %92, null
  %94 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  %95 = or i1 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load ptr, ptr %6, align 4
  %98 = ptrtoint ptr %92 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.4, i32 noundef %98) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %163

99:                                               ; preds = %91
  %100 = call i32 @power_supply_get_property(ptr noundef nonnull %92, i32 noundef 3, ptr noundef nonnull %5) #8
  call void @power_supply_put(ptr noundef nonnull %92) #8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %147

102:                                              ; preds = %99
  %103 = load i32, ptr %5, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %106, ptr noundef nonnull @.str.5) #9
  br label %107

107:                                              ; preds = %105, %102
  %108 = phi i32 [ 0, %105 ], [ 1596000, %102 ]
  %109 = getelementptr i8, ptr %0, i32 144
  %110 = load i32, ptr %109, align 4
  %111 = call i32 @llvm.smin.i32(i32 %108, i32 %110)
  %112 = icmp slt i32 %111, -999
  br i1 %112, label %122, label %113

113:                                              ; preds = %107
  %114 = icmp slt i32 %111, 70000
  br i1 %114, label %122, label %115

115:                                              ; preds = %113
  %116 = icmp ult i32 %111, 177000
  br i1 %116, label %122, label %117

117:                                              ; preds = %115
  %118 = icmp ugt i32 %111, 1595999
  br i1 %118, label %122, label %119

119:                                              ; preds = %117
  %120 = udiv i32 %111, 88666
  %121 = call i32 @llvm.smin.i32(i32 %120, i32 13) #8
  br label %122

122:                                              ; preds = %119, %117, %115, %113, %107
  %123 = phi i32 [ %121, %119 ], [ -22, %107 ], [ 0, %113 ], [ 1, %115 ], [ 14, %117 ]
  %124 = load i32, ptr %47, align 4
  %125 = add i32 %124, -4380000
  %126 = icmp ult i32 %125, 60001
  br i1 %126, label %136, label %133

127:                                              ; preds = %130
  %128 = add i32 %124, -4100000
  %129 = icmp ult i32 %128, 100000
  br i1 %129, label %136, label %143

130:                                              ; preds = %133
  %131 = add i32 %124, -4200000
  %132 = icmp ult i32 %131, 100000
  br i1 %132, label %136, label %127

133:                                              ; preds = %122
  %134 = add i32 %124, -4300000
  %135 = icmp ult i32 %134, 80000
  br i1 %135, label %136, label %130

136:                                              ; preds = %133, %130, %127, %122
  %137 = phi i32 [ 1, %127 ], [ 0, %130 ], [ -1, %133 ], [ -2, %122 ]
  %138 = add nsw i32 %124, -4100000
  %139 = udiv i32 %138, 20000
  %140 = add nsw i32 %137, %139
  %141 = shl nsw i32 %140, 4
  %142 = and i32 %141, 240
  br label %143

143:                                              ; preds = %136, %127
  %144 = phi i32 [ %142, %136 ], [ 0, %127 ]
  %145 = call fastcc i32 @cpcap_charger_enable(ptr noundef %6, i32 noundef %144, i32 noundef %123)
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %143, %99
  %148 = phi i32 [ %145, %143 ], [ %100, %99 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %160

149:                                              ; preds = %143
  store i32 1, ptr %64, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %157

150:                                              ; preds = %87, %85, %75
  %151 = load ptr, ptr %7, align 4
  %152 = call i32 @regmap_update_bits_base(ptr noundef %151, i32 noundef 2564, i32 noundef 16383, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %150
  %155 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cpcap_charger_disable, i32 noundef %152) #9
  br label %160

156:                                              ; preds = %150
  store i32 2, ptr %64, align 4
  br label %157

157:                                              ; preds = %156, %149
  %158 = getelementptr i8, ptr %0, i32 116
  %159 = load ptr, ptr %158, align 4
  call void @power_supply_changed(ptr noundef %159) #8
  br label %163

160:                                              ; preds = %154, %147
  %161 = phi i32 [ %152, %154 ], [ %148, %147 ]
  store i32 0, ptr %64, align 4
  %162 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %162, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cpcap_usb_detect, i32 noundef %161) #9
  br label %163

163:                                              ; preds = %160, %157, %96, %73, %70, %57, %54, %34, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpcap_charger_vbus_work(ptr nocapture noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -60
  %4 = getelementptr i8, ptr %0, i32 84
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4
  %9 = getelementptr i8, ptr %0, i32 60
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @iio_read_channel_processed(ptr noundef %10, ptr noundef nonnull %2) #8
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.13, i32 noundef %11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %18

15:                                               ; preds = %8
  %16 = load i32, ptr %2, align 4
  %17 = icmp sgt i32 %16, 3900
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br i1 %17, label %76, label %18

18:                                               ; preds = %15, %13
  %19 = load i8, ptr %4, align 4
  %20 = or i8 %19, 2
  store i8 %20, ptr %4, align 4
  %21 = getelementptr i8, ptr %0, i32 44
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  call void @gpiod_set_value(ptr noundef nonnull %22, i32 noundef 0) #8
  br label %25

25:                                               ; preds = %24, %18
  %26 = getelementptr i8, ptr %0, i32 48
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  call void @gpiod_set_value(ptr noundef nonnull %27, i32 noundef 0) #8
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr i8, ptr %0, i32 -56
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 2564, i32 noundef 16383, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cpcap_charger_disable, i32 noundef %33) #9
  br label %68

37:                                               ; preds = %30
  %38 = getelementptr i8, ptr %0, i32 92
  store i32 2, ptr %38, align 4
  %39 = load ptr, ptr %31, align 4
  %40 = call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 1644, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %37
  %43 = load ptr, ptr %31, align 4
  %44 = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 2564, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %76, label %68

46:                                               ; preds = %1
  %47 = getelementptr i8, ptr %0, i32 -56
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 1644, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = load ptr, ptr %47, align 4
  %53 = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 2564, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = getelementptr i8, ptr %0, i32 44
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @gpiod_set_value(ptr noundef nonnull %57, i32 noundef 1) #8
  br label %60

60:                                               ; preds = %59, %55
  %61 = getelementptr i8, ptr %0, i32 48
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void @gpiod_set_value(ptr noundef nonnull %62, i32 noundef 1) #8
  br label %65

65:                                               ; preds = %64, %60
  %66 = load i8, ptr %4, align 4
  %67 = and i8 %66, -3
  store i8 %67, ptr %4, align 4
  br label %76

68:                                               ; preds = %51, %46, %42, %37, %35
  %69 = phi i32 [ %33, %35 ], [ %40, %37 ], [ %44, %42 ], [ %49, %46 ], [ %53, %51 ]
  %70 = getelementptr i8, ptr %0, i32 92
  store i32 0, ptr %70, align 4
  %71 = load ptr, ptr %3, align 4
  %72 = load i8, ptr %4, align 4
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %74, ptr @.str.16, ptr @.str.15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.cpcap_charger_vbus_work, ptr noundef nonnull %75, i32 noundef %69) #9
  br label %76

76:                                               ; preds = %68, %65, %42, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_charger_set_vbus(ptr noundef %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 8
  %4 = zext i1 %1 to i8
  %5 = load i8, ptr %3, align 4
  %6 = and i8 %5, -2
  %7 = or i8 %6, %4
  store i8 %7, ptr %3, align 4
  %8 = getelementptr i8, ptr %0, i32 -76
  %9 = load ptr, ptr @system_wq, align 4
  %10 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %9, ptr noundef %8, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_usb2_set_comparator(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpcap_charger_disconnect(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  switch i32 %1, label %7 [
    i32 2, label %4
    i32 4, label %4
  ]

4:                                                ; preds = %3, %3
  %5 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  tail call void @power_supply_changed(ptr noundef %6) #8
  br label %7

7:                                                ; preds = %4, %3
  %8 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 2564, i32 noundef 16383, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cpcap_charger_disable, i32 noundef %10) #9
  %14 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %0, i32 0, i32 11
  store i32 0, ptr %14, align 4
  br label %22

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %0, i32 0, i32 11
  store i32 %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  tail call void @power_supply_changed(ptr noundef %18) #8
  %19 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr @system_wq, align 4
  %21 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %20, ptr noundef %19, i32 noundef %2) #8
  br label %22

22:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_by_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_charger_enable(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = icmp ne i32 %1, 0
  %5 = icmp ne i32 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = or i32 %1, %2
  %11 = or i32 %10, 8960
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 2564, i32 noundef 16383, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cpcap_charger_enable, i32 noundef %12) #9
  br label %16

16:                                               ; preds = %14, %7, %3
  %17 = phi i32 [ -22, %3 ], [ %12, %14 ], [ 0, %7 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_charger_get_property(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 7, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  switch i32 %1, label %58 [
    i32 0, label %10
    i32 38, label %13
    i32 31, label %16
    i32 12, label %19
    i32 17, label %35
    i32 4, label %51
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %9, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  br label %56

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %9, i32 0, i32 13
  %15 = load i32, ptr %14, align 4
  br label %56

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %9, i32 0, i32 12
  %18 = load i32, ptr %17, align 4
  br label %56

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %9, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4
  %24 = getelementptr %struct.cpcap_charger_ddata, ptr %9, i32 0, i32 6, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @iio_read_channel_processed(ptr noundef %25, ptr noundef nonnull %5) #8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.cpcap_charger_get_charge_voltage, i32 noundef %26) #9
  br label %33

30:                                               ; preds = %23
  %31 = load i32, ptr %5, align 4
  %32 = mul i32 %31, 1000
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi i32 [ 0, %28 ], [ %32, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %56

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %9, i32 0, i32 11
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4
  %40 = getelementptr %struct.cpcap_charger_ddata, ptr %9, i32 0, i32 6, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 @iio_read_channel_processed(ptr noundef %41, ptr noundef nonnull %4) #8
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.cpcap_charger_get_charge_current, i32 noundef %42) #9
  br label %49

46:                                               ; preds = %39
  %47 = load i32, ptr %4, align 4
  %48 = mul i32 %47, 1000
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi i32 [ 0, %44 ], [ %48, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %56

51:                                               ; preds = %3
  %52 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %9, i32 0, i32 11
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 1
  %55 = zext i1 %54 to i32
  br label %56

56:                                               ; preds = %51, %49, %35, %33, %19, %16, %13, %10
  %57 = phi i32 [ %12, %10 ], [ %15, %13 ], [ %18, %16 ], [ %55, %51 ], [ %34, %33 ], [ %50, %49 ], [ 0, %19 ], [ 0, %35 ]
  store i32 %57, ptr %2, align 4
  br label %58

58:                                               ; preds = %56, %3
  %59 = phi i32 [ -22, %3 ], [ 0, %56 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_charger_set_property(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca %union.power_supply_propval, align 4
  %5 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 7, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  switch i32 %1, label %82 [
    i32 38, label %9
    i32 31, label %17
  ]

9:                                                ; preds = %3
  %10 = load i32, ptr %2, align 4
  %11 = icmp slt i32 %10, -999
  br i1 %11, label %82, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %8, i32 0, i32 13
  store i32 %10, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %8, i32 0, i32 3
  %15 = load ptr, ptr @system_wq, align 4
  %16 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %15, ptr noundef %14, i32 noundef 0) #8
  br label %82

17:                                               ; preds = %3
  %18 = load i32, ptr %2, align 4
  %19 = icmp eq i32 %18, 4440000
  br i1 %19, label %65, label %62

20:                                               ; preds = %23
  %21 = icmp ult i32 %18, 4100000
  %22 = select i1 %21, i32 3800000, i32 0
  br label %65

23:                                               ; preds = %26
  %24 = add i32 %18, -4100000
  %25 = icmp ult i32 %24, 20000
  br i1 %25, label %65, label %20

26:                                               ; preds = %29
  %27 = add i32 %18, -4120000
  %28 = icmp ult i32 %27, 30000
  br i1 %28, label %65, label %23

29:                                               ; preds = %32
  %30 = add i32 %18, -4150000
  %31 = icmp ult i32 %30, 20000
  br i1 %31, label %65, label %26

32:                                               ; preds = %35
  %33 = add i32 %18, -4170000
  %34 = icmp ult i32 %33, 30000
  br i1 %34, label %65, label %29

35:                                               ; preds = %38
  %36 = add i32 %18, -4200000
  %37 = icmp ult i32 %36, 30000
  br i1 %37, label %65, label %32

38:                                               ; preds = %41
  %39 = add i32 %18, -4230000
  %40 = icmp ult i32 %39, 20000
  br i1 %40, label %65, label %35

41:                                               ; preds = %44
  %42 = add i32 %18, -4250000
  %43 = icmp ult i32 %42, 20000
  br i1 %43, label %65, label %38

44:                                               ; preds = %47
  %45 = add i32 %18, -4270000
  %46 = icmp ult i32 %45, 30000
  br i1 %46, label %65, label %41

47:                                               ; preds = %50
  %48 = add i32 %18, -4300000
  %49 = icmp ult i32 %48, 30000
  br i1 %49, label %65, label %44

50:                                               ; preds = %53
  %51 = add i32 %18, -4330000
  %52 = icmp ult i32 %51, 20000
  br i1 %52, label %65, label %47

53:                                               ; preds = %56
  %54 = add i32 %18, -4350000
  %55 = icmp ult i32 %54, 30000
  br i1 %55, label %65, label %50

56:                                               ; preds = %59
  %57 = add i32 %18, -4380000
  %58 = icmp ult i32 %57, 20000
  br i1 %58, label %65, label %53

59:                                               ; preds = %62
  %60 = add i32 %18, -4400000
  %61 = icmp ult i32 %60, 20000
  br i1 %61, label %65, label %56

62:                                               ; preds = %17
  %63 = add i32 %18, -4420000
  %64 = icmp ult i32 %63, 20000
  br i1 %64, label %65, label %59

65:                                               ; preds = %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17
  %66 = phi i32 [ 4100000, %23 ], [ 4120000, %26 ], [ 4150000, %29 ], [ 4170000, %32 ], [ 4200000, %35 ], [ 4230000, %38 ], [ 4250000, %41 ], [ 4270000, %44 ], [ 4300000, %47 ], [ 4330000, %50 ], [ 4350000, %53 ], [ 4380000, %56 ], [ 4400000, %59 ], [ 4420000, %62 ], [ 4440000, %17 ], [ %22, %20 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %67 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %8, i32 0, i32 12
  %68 = load i32, ptr %67, align 4
  %69 = tail call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.3) #8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %65
  %72 = call i32 @power_supply_get_property(ptr noundef nonnull %69, i32 noundef 31, ptr noundef nonnull %4) #8
  %73 = icmp eq i32 %72, 0
  %74 = load i32, ptr %4, align 4
  %75 = select i1 %73, i32 %74, i32 %68
  call void @power_supply_put(ptr noundef nonnull %69) #8
  br label %76

76:                                               ; preds = %71, %65
  %77 = phi i32 [ %75, %71 ], [ %68, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %78 = call i32 @llvm.smin.i32(i32 %66, i32 %77)
  store i32 %78, ptr %67, align 4
  %79 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %8, i32 0, i32 3
  %80 = load ptr, ptr @system_wq, align 4
  %81 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %80, ptr noundef %79, i32 noundef 0) #8
  br label %82

82:                                               ; preds = %76, %12, %9, %3
  %83 = phi i32 [ -22, %3 ], [ 0, %76 ], [ 0, %12 ], [ -22, %9 ]
  ret i32 %83
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cpcap_charger_property_is_writeable(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = icmp eq i32 %1, 38
  %4 = icmp eq i32 %1, 31
  %5 = or i1 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_charger_irq_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %1, i32 0, i32 10
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr @system_wq, align 4
  %9 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %8, ptr noundef %7, i32 noundef 0) #8
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 1, %6 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
