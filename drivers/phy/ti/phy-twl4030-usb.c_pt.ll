; ModuleID = '/llk/IR/drivers/phy/ti/phy-twl4030-usb.c_pt.bc'
source_filename = "../drivers/phy/ti/phy-twl4030-usb.c"
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
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.twl4030_usb = type { %struct.usb_phy, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, i32, %struct.atomic_t, i8, i8, i8, %struct.delayed_work }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@twl4030_usb_id_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias252 = internal constant [27 x i8] c"alias=platform:twl4030_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [49 x i8] c"author=Texas Instruments, Inc, Nokia Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [43 x i8] c"description=TWL4030 USB transceiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@twl4030_usb_driver = internal global %struct.platform_driver { ptr @twl4030_usb_probe, ptr @twl4030_usb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @twl4030_usb_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl4030_usb_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"twl4030_usb\00", align 1
@twl4030_usb_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @twl4030_usb_suspend, ptr @twl4030_usb_resume, ptr @twl4030_usb_suspend, ptr @twl4030_usb_resume, ptr @twl4030_usb_suspend, ptr @twl4030_usb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl4030_usb_runtime_suspend, ptr @twl4030_usb_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"usb_mode\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"twl4030 initialized without pdata\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"twl4030\00", align 1
@ops = internal constant %struct.phy_ops { ptr @twl4030_phy_init, ptr null, ptr @twl4030_phy_power_on, ptr @twl4030_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__this_module }, align 4
@twl4030_usb_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"&twl->lock\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"ldo init failed\0A\00", align 1
@dev_attr_vbus = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @vbus_show, ptr null }, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"could not create sysfs file\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"musb-hdrc.0\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Initialized TWL4030 USB module\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"usb3v1\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"usb1v5\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"usb1v8\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"USB link status err %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"unsupported T2 transceiver mode %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"drivers/phy/ti/phy-twl4030-usb.c\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"Failed to enable usb3v1\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Failed to enable usb1v8\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"Failed to enable usb1v5\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.23 = private unnamed_addr constant [41 x i8] c"Timeout setting T2 HSUSB PHY DPLL clock\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_license255], section "llvm.metadata"

@__mod_of__twl4030_usb_id_table_device_table = dso_local alias [2 x %struct.of_device_id], ptr @twl4030_usb_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @twl4030_usb_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @twl4030_usb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl4030_usb_probe(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 292, i32 noundef 3520) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %114, label %19

19:                                               ; preds = %1
  %20 = icmp eq ptr %16, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.twl4030_usb, ptr %17, i32 0, i32 6
  %23 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %16, ptr noundef nonnull @.str.1, ptr noundef %22, i32 noundef 1, i32 noundef 0) #8
  br label %30

24:                                               ; preds = %19
  %25 = icmp eq ptr %14, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = load i32, ptr %14, align 4
  %28 = getelementptr inbounds %struct.twl4030_usb, ptr %17, i32 0, i32 6
  store i32 %27, ptr %28, align 4
  br label %30

29:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.2) #9
  br label %114

30:                                               ; preds = %26, %21
  %31 = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 44, i32 noundef 3520) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %114, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.twl4030_usb, ptr %17, i32 0, i32 1
  store ptr %12, ptr %34, align 4
  %35 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %36 = getelementptr inbounds %struct.twl4030_usb, ptr %17, i32 0, i32 7
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.twl4030_usb, ptr %17, i32 0, i32 10
  store i8 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.twl4030_usb, ptr %17, i32 0, i32 8
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.twl4030_usb, ptr %17, i32 0, i32 11
  store i8 0, ptr %39, align 1
  %40 = load ptr, ptr %34, align 4
  store ptr %40, ptr %17, align 4
  %41 = getelementptr inbounds %struct.usb_phy, ptr %17, i32 0, i32 1
  store ptr @.str.3, ptr %41, align 4
  %42 = getelementptr inbounds %struct.usb_phy, ptr %17, i32 0, i32 5
  store ptr %31, ptr %42, align 4
  %43 = getelementptr inbounds %struct.usb_phy, ptr %17, i32 0, i32 3
  store i32 1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.usb_otg, ptr %31, i32 0, i32 2
  store ptr %17, ptr %44, align 4
  %45 = getelementptr inbounds %struct.usb_otg, ptr %31, i32 0, i32 6
  store ptr @twl4030_set_host, ptr %45, align 4
  %46 = getelementptr inbounds %struct.usb_otg, ptr %31, i32 0, i32 7
  store ptr @twl4030_set_peripheral, ptr %46, align 4
  %47 = tail call ptr @devm_phy_create(ptr noundef %40, ptr noundef null, ptr noundef nonnull @ops) #8
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %33
  %50 = ptrtoint ptr %47 to i32
  br label %114

51:                                               ; preds = %33
  %52 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 8
  store ptr %17, ptr %52, align 8
  %53 = load ptr, ptr %34, align 4
  %54 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %53, ptr noundef null, ptr noundef nonnull @__this_module, ptr noundef nonnull @of_phy_simple_xlate) #8
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = ptrtoint ptr %54 to i32
  br label %114

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.twl4030_usb, ptr %17, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %59, ptr noundef nonnull @.str.4, ptr noundef nonnull @twl4030_usb_probe.__key) #8
  %60 = getelementptr inbounds %struct.twl4030_usb, ptr %17, i32 0, i32 13
  store i32 -32, ptr %60, align 4
  %61 = getelementptr inbounds %struct.twl4030_usb, ptr %17, i32 0, i32 13, i32 0, i32 1
  store volatile ptr %61, ptr %61, align 4
  %62 = getelementptr inbounds %struct.twl4030_usb, ptr %17, i32 0, i32 13, i32 0, i32 1, i32 1
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.twl4030_usb, ptr %17, i32 0, i32 13, i32 0, i32 2
  store ptr @twl4030_id_workaround_work, ptr %63, align 4
  %64 = getelementptr inbounds %struct.twl4030_usb, ptr %17, i32 0, i32 13, i32 1
  tail call void @init_timer_key(ptr noundef %64, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #8
  store i8 -64, ptr %11, align 1
  %65 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %11, i8 noundef zeroext 14, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #8
  store i8 12, ptr %10, align 1
  %66 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %10, i8 noundef zeroext 14, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #8
  store i8 20, ptr %9, align 1
  %67 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %9, i8 noundef zeroext 125, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  store i8 0, ptr %8, align 1
  %68 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %8, i8 noundef zeroext 119, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  %69 = load ptr, ptr %34, align 4
  %70 = call ptr @devm_regulator_get(ptr noundef %69, ptr noundef nonnull @.str.10) #8
  %71 = getelementptr inbounds %struct.twl4030_usb, ptr %17, i32 0, i32 4
  store ptr %70, ptr %71, align 4
  %72 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %87, label %73

73:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 0, ptr %7, align 1
  %74 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %7, i8 noundef zeroext 120, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 0, ptr %6, align 1
  %75 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %6, i8 noundef zeroext 113, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  %76 = load ptr, ptr %34, align 4
  %77 = call ptr @devm_regulator_get(ptr noundef %76, ptr noundef nonnull @.str.11) #8
  %78 = getelementptr inbounds %struct.twl4030_usb, ptr %17, i32 0, i32 2
  store ptr %77, ptr %78, align 4
  %79 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1
  %81 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %5, i8 noundef zeroext 114, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1
  %82 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %4, i8 noundef zeroext 116, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %83 = load ptr, ptr %34, align 4
  %84 = call ptr @devm_regulator_get(ptr noundef %83, ptr noundef nonnull @.str.12) #8
  %85 = getelementptr inbounds %struct.twl4030_usb, ptr %17, i32 0, i32 3
  store ptr %84, ptr %85, align 4
  %86 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %87, label %88

87:                                               ; preds = %80, %73, %58
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.5) #9
  br label %114

88:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1
  %89 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %3, i8 noundef zeroext 117, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1
  %90 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %2, i8 noundef zeroext 14, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  %91 = call i32 @usb_add_phy_dev(ptr noundef nonnull %17) #8
  %92 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %17, ptr %92, align 8
  %93 = call i32 @device_create_file(ptr noundef %12, ptr noundef nonnull @dev_attr_vbus) #8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %88
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.6) #9
  br label %96

96:                                               ; preds = %95, %88
  %97 = getelementptr inbounds %struct.usb_phy, ptr %17, i32 0, i32 18
  store i32 0, ptr %97, align 4
  %98 = getelementptr inbounds %struct.usb_phy, ptr %17, i32 0, i32 18, i32 1
  store ptr null, ptr %98, align 4
  call void @__pm_runtime_use_autosuspend(ptr noundef %12, i1 noundef zeroext true) #8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %12, i32 noundef 2000) #8
  call void @pm_runtime_enable(ptr noundef %12) #8
  %99 = call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #8
  %100 = load ptr, ptr %34, align 4
  %101 = load i32, ptr %36, align 4
  %102 = call i32 @devm_request_threaded_irq(ptr noundef %100, i32 noundef %101, ptr noundef null, ptr noundef nonnull @twl4030_usb_irq, i32 noundef 8195, ptr noundef nonnull @.str, ptr noundef nonnull %17) #8
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %96
  %105 = icmp eq ptr %14, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %104
  %107 = call i32 @phy_create_lookup(ptr noundef %47, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106, %104
  %110 = call i64 @ktime_get_mono_fast_ns() #8
  %111 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %110, ptr %111, align 8
  %112 = load ptr, ptr %34, align 4
  %113 = call i32 @__pm_runtime_suspend(ptr noundef %112, i32 noundef 13) #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.9) #9
  br label %114

114:                                              ; preds = %109, %106, %96, %87, %56, %49, %30, %29, %1
  %115 = phi i32 [ %50, %49 ], [ %57, %56 ], [ -19, %87 ], [ 0, %109 ], [ -22, %29 ], [ -12, %1 ], [ -12, %30 ], [ %102, %96 ], [ %107, %106 ]
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl4030_usb_remove(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %6 = load ptr, ptr %5, align 8
  tail call void @usb_remove_phy(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.twl4030_usb, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #8
  %10 = getelementptr inbounds %struct.twl4030_usb, ptr %6, i32 0, i32 13
  %11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %10) #8
  %12 = load ptr, ptr %7, align 4
  tail call void @device_remove_file(ptr noundef %12, ptr noundef nonnull @dev_attr_vbus) #8
  %13 = getelementptr inbounds %struct.twl4030_usb, ptr %6, i32 0, i32 6
  store i32 -1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.twl4030_usb, ptr %6, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -3
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #8, !srcloc !9
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 0, i32 -1, ptr elementtype(i32) %20) #8, !srcloc !10
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  br label %25

25:                                               ; preds = %24, %18, %1
  %26 = load ptr, ptr %7, align 4
  %27 = tail call i64 @ktime_get_mono_fast_ns() #8
  %28 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 11, i32 22
  store volatile i64 %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %29, i1 noundef zeroext false) #8
  %30 = load ptr, ptr %7, align 4
  %31 = tail call i32 @__pm_runtime_idle(ptr noundef %30, i32 noundef 4) #8
  %32 = load ptr, ptr %7, align 4
  tail call void @__pm_runtime_disable(ptr noundef %32, i1 noundef zeroext true) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !12
  %33 = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %4, i8 noundef zeroext -2, i32 noundef 1) #8
  %34 = load i8, ptr %4, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp slt i32 %33, 0
  %37 = select i1 %36, i32 %33, i32 %35
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %44

39:                                               ; preds = %25
  %40 = trunc i32 %37 to i8
  %41 = and i8 %40, -8
  %42 = or i8 %41, 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 %42, ptr %3, align 1
  %43 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %3, i8 noundef zeroext -2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  br label %44

44:                                               ; preds = %39, %25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 32, ptr %2, align 1
  %45 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %2, i8 noundef zeroext -82, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @twl4030_set_host(ptr noundef writeonly %0, ptr noundef %1) #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 3
  store ptr %1, ptr %5, align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 5
  store i32 0, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %4, %2
  %10 = phi i32 [ -19, %2 ], [ 0, %7 ], [ 0, %4 ]
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @twl4030_set_peripheral(ptr noundef writeonly %0, ptr noundef %1) #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 4
  store ptr %1, ptr %5, align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 5
  store i32 0, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %4, %2
  %10 = phi i32 [ -19, %2 ], [ 0, %7 ], [ 0, %4 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @twl4030_id_workaround_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -248
  %3 = tail call i32 @twl4030_usb_irq(i32 noundef 0, ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl4030_usb_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 10
  store i8 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !12
  %7 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %5, i8 noundef zeroext 15, i32 noundef 1) #8
  %8 = load i8, ptr %5, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp slt i32 %7, 0
  %11 = select i1 %10, i32 %7, i32 %9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  br i1 %10, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.17, i32 noundef %11) #9
  br label %54

15:                                               ; preds = %2
  %16 = and i32 %11, 132
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %49, label %18

18:                                               ; preds = %15
  %19 = and i32 %11, 128
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !12
  %22 = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %4, i8 noundef zeroext -1, i32 noundef 1) #8
  %23 = load i8, ptr %4, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp slt i32 %22, 0
  %26 = select i1 %25, i32 %22, i32 %24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  %29 = or i1 %25, %28
  br i1 %29, label %39, label %30

30:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !12
  %31 = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %3, i8 noundef zeroext 10, i32 noundef 1) #8
  %32 = load i8, ptr %3, align 1
  %33 = icmp sgt i32 %31, -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  %34 = and i8 %32, 48
  %35 = icmp ne i8 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = and i32 %11, -129
  br label %40

39:                                               ; preds = %30, %21
  store i8 1, ptr %6, align 4
  br label %40

40:                                               ; preds = %39, %37, %18
  %41 = phi i32 [ %38, %37 ], [ %9, %39 ], [ %9, %18 ]
  %42 = and i32 %41, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = and i32 %41, 128
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 5, i32 4
  %48 = select i1 %46, i32 4, i32 3
  br label %54

49:                                               ; preds = %15
  %50 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 0, i32 4
  br label %54

54:                                               ; preds = %49, %44, %40, %12
  %55 = phi i32 [ 5, %12 ], [ 5, %40 ], [ %47, %44 ], [ 5, %49 ]
  %56 = phi i32 [ 0, %12 ], [ 1, %40 ], [ %48, %44 ], [ %53, %49 ]
  %57 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = call i32 @kobject_uevent(ptr noundef %58, i32 noundef %55) #8
  %60 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 5
  call void @mutex_lock(ptr noundef %60) #8
  %61 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 8
  store i32 %56, ptr %61, align 4
  call void @mutex_unlock(ptr noundef %60) #8
  %62 = and i32 %56, 5
  %63 = icmp eq i32 %62, 1
  %64 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 9
  call void asm sideeffect "dmb ish", "~{memory}"() #8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #8
  br i1 %63, label %65, label %72

65:                                               ; preds = %54
  %66 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 1, i32 1, ptr elementtype(i32) %64) #8, !srcloc !10
  %67 = extractvalue { i32, i32, i32 } %66, 0
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %84, label %69

69:                                               ; preds = %65
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %70 = load ptr, ptr %57, align 4
  %71 = call i32 @__pm_runtime_resume(ptr noundef %70, i32 noundef 4) #8
  br label %82

72:                                               ; preds = %54
  %73 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 0, i32 -1, ptr elementtype(i32) %64) #8, !srcloc !10
  %74 = extractvalue { i32, i32, i32 } %73, 0
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %72
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %77 = load ptr, ptr %57, align 4
  %78 = call i64 @ktime_get_mono_fast_ns() #8
  %79 = getelementptr inbounds %struct.device, ptr %77, i32 0, i32 11, i32 22
  store volatile i64 %78, ptr %79, align 8
  %80 = load ptr, ptr %57, align 4
  %81 = call i32 @__pm_runtime_suspend(ptr noundef %80, i32 noundef 13) #8
  br label %82

82:                                               ; preds = %76, %69
  %83 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 11
  store i8 1, ptr %83, align 1
  br label %84

84:                                               ; preds = %82, %72, %65
  %85 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 11
  %86 = load i8, ptr %85, align 1, !range !13
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = call i32 @musb_mailbox(i32 noundef %56) #8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i8 0, ptr %85, align 1
  br label %92

92:                                               ; preds = %91, %88, %84
  %93 = icmp eq i32 %56, 1
  br i1 %93, label %94, label %109

94:                                               ; preds = %92
  %95 = load ptr, ptr %57, align 4
  %96 = getelementptr inbounds %struct.device, ptr %95, i32 0, i32 11, i32 18
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.device, ptr %95, i32 0, i32 11, i32 15
  %101 = load i16, ptr %100, align 8
  %102 = and i16 %101, 7
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %99, %94
  %105 = getelementptr inbounds %struct.twl4030_usb, ptr %1, i32 0, i32 13
  %106 = call zeroext i1 @cancel_delayed_work(ptr noundef %105) #8
  %107 = load ptr, ptr @system_wq, align 4
  %108 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %107, ptr noundef %105, i32 noundef 100) #8
  br label %109

109:                                              ; preds = %104, %99, %92
  %110 = icmp eq i32 %0, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %109
  %112 = load ptr, ptr %57, align 4
  call void @sysfs_notify(ptr noundef %112, ptr noundef null, ptr noundef nonnull @.str.13) #8
  br label %113

113:                                              ; preds = %111, %109
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_create_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl4030_phy_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.twl4030_usb, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #8
  %7 = getelementptr inbounds %struct.twl4030_usb, ptr %3, i32 0, i32 8
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.twl4030_usb, ptr %3, i32 0, i32 13
  %9 = load ptr, ptr @system_wq, align 4
  %10 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %9, ptr noundef %8, i32 noundef 100) #8
  %11 = load ptr, ptr %4, align 4
  %12 = tail call i64 @ktime_get_mono_fast_ns() #8
  %13 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 11, i32 22
  store volatile i64 %12, ptr %13, align 8
  %14 = load ptr, ptr %4, align 4
  %15 = tail call i32 @__pm_runtime_suspend(ptr noundef %14, i32 noundef 13) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl4030_phy_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.twl4030_usb, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #8
  %7 = getelementptr inbounds %struct.twl4030_usb, ptr %3, i32 0, i32 13
  %8 = load ptr, ptr @system_wq, align 4
  %9 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %8, ptr noundef %7, i32 noundef 100) #8
  %10 = load ptr, ptr %4, align 4
  %11 = tail call i64 @ktime_get_mono_fast_ns() #8
  %12 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 11, i32 22
  store volatile i64 %11, ptr %12, align 8
  %13 = load ptr, ptr %4, align 4
  %14 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @twl4030_phy_power_off(ptr nocapture noundef readonly %0) #6 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vbus_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.twl4030_usb, ptr %5, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.twl4030_usb, ptr %5, i32 0, i32 10
  %8 = load i8, ptr %7, align 4, !range !13
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr @.str.16, ptr @.str.15
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull %10)
  tail call void @mutex_unlock(ptr noundef %6) #8
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_mailbox(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl4030_usb_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.twl4030_usb, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  tail call void @disable_irq(i32 noundef %5) #8
  %6 = getelementptr inbounds %struct.twl4030_usb, ptr %3, i32 0, i32 12
  %7 = load i8, ptr %6, align 2
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.twl4030_usb, ptr %3, i32 0, i32 9
  %12 = load volatile i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = tail call i32 @twl4030_usb_runtime_suspend(ptr noundef %0)
  %16 = load i8, ptr %6, align 2
  %17 = or i8 %16, 2
  store i8 %17, ptr %6, align 2
  br label %18

18:                                               ; preds = %14, %10, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl4030_usb_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.twl4030_usb, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  tail call void @enable_irq(i32 noundef %5) #8
  %6 = getelementptr inbounds %struct.twl4030_usb, ptr %3, i32 0, i32 12
  %7 = load i8, ptr %6, align 2
  %8 = and i8 %7, 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @twl4030_usb_runtime_resume(ptr noundef %0)
  br label %12

12:                                               ; preds = %10, %1
  %13 = tail call i32 @twl4030_usb_irq(i32 noundef 0, ptr noundef %3)
  %14 = load i8, ptr %6, align 2
  %15 = and i8 %14, -2
  store i8 %15, ptr %6, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl4030_usb_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1, !annotation !12
  %5 = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %2, i8 noundef zeroext -3, i32 noundef 1) #8
  %6 = load i8, ptr %2, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp slt i32 %5, 0
  %9 = select i1 %8, i32 %5, i32 %7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  %10 = trunc i32 %9 to i8
  %11 = or i8 %10, 1
  %12 = call fastcc i32 @twl4030_i2c_write_u8_verify(i8 noundef zeroext %11, i8 noundef zeroext -3) #8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15, !prof !14

14:                                               ; preds = %1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 386, i32 noundef 9, ptr noundef null) #8
  br label %15

15:                                               ; preds = %14, %1
  %16 = getelementptr inbounds %struct.twl4030_usb, ptr %4, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @regulator_disable(ptr noundef %17) #8
  %19 = getelementptr inbounds %struct.twl4030_usb, ptr %4, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 @regulator_disable(ptr noundef %20) #8
  %22 = getelementptr inbounds %struct.twl4030_usb, ptr %4, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @regulator_disable(ptr noundef %23) #8
  %25 = getelementptr inbounds %struct.twl4030_usb, ptr %4, i32 0, i32 12
  %26 = load i8, ptr %25, align 2
  %27 = or i8 %26, 1
  store i8 %27, ptr %25, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl4030_usb_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.twl4030_usb, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @regulator_enable(ptr noundef %13) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.twl4030_usb, ptr %11, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.20) #9
  br label %19

19:                                               ; preds = %16, %1
  %20 = getelementptr inbounds %struct.twl4030_usb, ptr %11, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @regulator_enable(ptr noundef %21) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.twl4030_usb, ptr %11, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.21) #9
  br label %27

27:                                               ; preds = %24, %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9)
  store i8 0, ptr %9, align 1
  %28 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %9, i8 noundef zeroext 126, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  %29 = getelementptr inbounds %struct.twl4030_usb, ptr %11, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @regulator_enable(ptr noundef %30) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.twl4030_usb, ptr %11, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.22) #9
  br label %36

36:                                               ; preds = %33, %27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  store i8 0, ptr %8, align 1, !annotation !12
  %37 = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %8, i8 noundef zeroext -3, i32 noundef 1) #8
  %38 = load i8, ptr %8, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp slt i32 %37, 0
  %41 = select i1 %40, i32 %37, i32 %39
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, -2
  %44 = call fastcc i32 @twl4030_i2c_write_u8_verify(i8 noundef zeroext %43, i8 noundef zeroext -3) #8
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47, !prof !14

46:                                               ; preds = %36
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 386, i32 noundef 9, ptr noundef null) #8
  br label %47

47:                                               ; preds = %46, %36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 0, ptr %7, align 1, !annotation !12
  %48 = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %7, i8 noundef zeroext -2, i32 noundef 1) #8
  %49 = load i8, ptr %7, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp slt i32 %48, 0
  %52 = select i1 %51, i32 %48, i32 %50
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  %53 = trunc i32 %52 to i8
  %54 = or i8 %53, 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 %54, ptr %6, align 1
  %55 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %6, i8 noundef zeroext -2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  call fastcc void @twl4030_i2c_access(ptr noundef %11, i32 noundef 1)
  %56 = getelementptr inbounds %struct.twl4030_usb, ptr %11, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  switch i32 %57, label %62 [
    i32 1, label %58
    i32 -1, label %81
  ]

58:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 4, ptr %5, align 1
  %59 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %5, i8 noundef zeroext 9, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 32, ptr %4, align 1
  %60 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %4, i8 noundef zeroext -83, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 27, ptr %3, align 1
  %61 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %3, i8 noundef zeroext 6, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  br label %65

62:                                               ; preds = %47
  %63 = getelementptr inbounds %struct.twl4030_usb, ptr %11, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.18, i32 noundef %57) #9
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i32, ptr %56, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1, !annotation !12
  %69 = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %2, i8 noundef zeroext -2, i32 noundef 1) #8
  %70 = load i8, ptr %2, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp slt i32 %69, 0
  %73 = select i1 %72, i32 %69, i32 %71
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = trunc i32 %73 to i8
  %77 = and i8 %76, -2
  %78 = call fastcc i32 @twl4030_i2c_write_u8_verify(i8 noundef zeroext %77, i8 noundef zeroext -2) #8
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81, !prof !14

80:                                               ; preds = %75
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 372, i32 noundef 9, ptr noundef null) #8
  br label %81

81:                                               ; preds = %80, %75, %68, %65, %47
  call void @msleep(i32 noundef 50) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @twl4030_i2c_write_u8_verify(i8 noundef zeroext %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 -1, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %0, ptr %4, align 1
  %6 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %4, i8 noundef zeroext %1, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %5, i8 noundef zeroext %1, i32 noundef 1) #8
  %10 = icmp sgt i32 %9, -1
  %11 = load i8, ptr %5, align 1
  %12 = icmp eq i8 %11, %0
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %24, label %14

14:                                               ; preds = %8, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %0, ptr %3, align 1
  %15 = call i32 @twl_i2c_write(i8 noundef zeroext 0, ptr noundef nonnull %3, i8 noundef zeroext %1, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %5, i8 noundef zeroext %1, i32 noundef 1) #8
  %19 = icmp sgt i32 %18, -1
  %20 = load i8, ptr %5, align 1
  %21 = icmp eq i8 %20, %0
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %14
  br label %24

24:                                               ; preds = %23, %17, %8
  %25 = phi i32 [ -16, %23 ], [ 0, %8 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @twl4030_i2c_access(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !12
  %6 = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %5, i8 noundef zeroext -2, i32 noundef 1) #8
  %7 = load i8, ptr %5, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp slt i32 %6, 0
  %10 = select i1 %9, i32 %6, i32 %8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %60

12:                                               ; preds = %2
  %13 = icmp eq i32 %1, 0
  %14 = trunc i32 %10 to i8
  br i1 %13, label %55, label %15

15:                                               ; preds = %12
  %16 = or i8 %14, 1
  %17 = call fastcc i32 @twl4030_i2c_write_u8_verify(i8 noundef zeroext %16, i8 noundef zeroext -2)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20, !prof !14

19:                                               ; preds = %15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 357, i32 noundef 9, ptr noundef null) #8
  br label %20

20:                                               ; preds = %19, %15
  %21 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !12
  %22 = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %4, i8 noundef zeroext -1, i32 noundef 1) #8
  %23 = load i8, ptr %4, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp slt i32 %22, 0
  %26 = select i1 %25, i32 %22, i32 %24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %20
  %30 = sub i32 -100, %21
  br label %31

31:                                               ; preds = %35, %29
  %32 = load volatile i32, ptr @jiffies, align 64
  %33 = add i32 %30, %32
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 2147480) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !12
  %37 = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %4, i8 noundef zeroext -1, i32 noundef 1) #8
  %38 = load i8, ptr %4, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp slt i32 %37, 0
  %41 = select i1 %40, i32 %37, i32 %39
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %31, label %44

44:                                               ; preds = %35, %31, %20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !12
  %45 = call i32 @twl_i2c_read(i8 noundef zeroext 0, ptr noundef nonnull %3, i8 noundef zeroext -1, i32 noundef 1) #8
  %46 = load i8, ptr %3, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp slt i32 %45, 0
  %49 = select i1 %48, i32 %45, i32 %47
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.twl4030_usb, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.23) #9
  br label %60

55:                                               ; preds = %12
  %56 = and i8 %14, -2
  %57 = call fastcc i32 @twl4030_i2c_write_u8_verify(i8 noundef zeroext %56, i8 noundef zeroext -2)
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60, !prof !14

59:                                               ; preds = %55
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 372, i32 noundef 9, ptr noundef null) #8
  br label %60

60:                                               ; preds = %59, %55, %52, %44, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2148063552}
!9 = !{i64 562659, i64 2148052630, i64 2148052656, i64 2148052703, i64 2148052725, i64 2148052753, i64 2148052773}
!10 = !{i64 549228, i64 549253, i64 549275, i64 549291, i64 549303, i64 549323, i64 549347, i64 549363, i64 549375}
!11 = !{i64 2148063678}
!12 = !{!"auto-init"}
!13 = !{i8 0, i8 2}
!14 = !{!"branch_weights", i32 1, i32 2000}
