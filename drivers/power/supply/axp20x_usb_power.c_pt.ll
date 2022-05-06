; ModuleID = '/llk/IR/drivers/power/supply/axp20x_usb_power.c_pt.bc'
source_filename = "../drivers/power/supply/axp20x_usb_power.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.axp_data = type { ptr, ptr, i32, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.axp20x_usb_power = type { ptr, ptr, i32, ptr, ptr, %struct.delayed_work, i32, i32, i32, [0 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.axp20x_dev = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@axp20x_usb_power_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,axp202-usb-power-supply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axp202_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,axp221-usb-power-supply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axp221_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,axp223-usb-power-supply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axp223_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,axp813-usb-power-supply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axp813_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author170 = internal constant [43 x i8] c"author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [55 x i8] c"description=AXP20x PMIC USB power supply status driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@axp202_data = internal constant %struct.axp_data { ptr @axp20x_usb_power_desc, ptr @axp20x_irq_names, i32 4, i32 1 }, align 4
@axp221_data = internal constant %struct.axp_data { ptr @axp22x_usb_power_desc, ptr @axp22x_irq_names, i32 2, i32 3 }, align 4
@axp223_data = internal constant %struct.axp_data { ptr @axp22x_usb_power_desc, ptr @axp22x_irq_names, i32 2, i32 4 }, align 4
@axp813_data = internal constant %struct.axp_data { ptr @axp22x_usb_power_desc, ptr @axp22x_irq_names, i32 2, i32 9 }, align 4
@axp20x_usb_power_desc = internal constant %struct.power_supply_desc { ptr @.str, i32 4, ptr null, i32 0, ptr @axp20x_usb_power_properties, i32 7, ptr @axp20x_usb_power_get_property, ptr @axp20x_usb_power_set_property, ptr @axp20x_usb_power_prop_writeable, ptr null, ptr null, i8 0, i32 0 }, align 4
@axp20x_irq_names = internal constant [4 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], align 4
@.str = private unnamed_addr constant [11 x i8] c"axp20x-usb\00", align 1
@axp20x_usb_power_properties = internal global [7 x i32] [i32 2, i32 3, i32 4, i32 9, i32 12, i32 16, i32 17], align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"VBUS_PLUGIN\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"VBUS_REMOVAL\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"VBUS_VALID\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"VBUS_NOT_VALID\00", align 1
@axp22x_usb_power_desc = internal constant %struct.power_supply_desc { ptr @.str, i32 4, ptr null, i32 0, ptr @axp22x_usb_power_properties, i32 5, ptr @axp20x_usb_power_get_property, ptr @axp20x_usb_power_set_property, ptr @axp20x_usb_power_prop_writeable, ptr null, ptr null, i8 0, i32 0 }, align 4
@axp22x_irq_names = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.2], align 4
@axp22x_usb_power_properties = internal global [5 x i32] [i32 2, i32 3, i32 4, i32 9, i32 16], align 4
@axp20x_usb_power_driver = internal global %struct.platform_driver { ptr @axp20x_usb_power_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @axp20x_usb_power_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @axp20x_usb_power_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.5 = private unnamed_addr constant [24 x i8] c"axp20x-usb-power-supply\00", align 1
@axp20x_usb_power_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @axp20x_usb_power_suspend, ptr @axp20x_usb_power_resume, ptr @axp20x_usb_power_suspend, ptr @axp20x_usb_power_resume, ptr @axp20x_usb_power_suspend, ptr @axp20x_usb_power_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Parent drvdata not set\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"No IRQ for %s: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Error requesting %s IRQ: %d\0A\00", align 1
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author170, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_license172], section "llvm.metadata"
@switch.table.axp20x_usb_power_get_property = private unnamed_addr constant [4 x i32] [i32 900000, i32 1500000, i32 2000000, i32 2500000], align 4

@__mod_of__axp20x_usb_power_match_device_table = dso_local alias [5 x %struct.of_device_id], ptr @axp20x_usb_power_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @axp20x_usb_power_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @axp20x_usb_power_driver) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axp20x_usb_power_get_property(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store i32 0, ptr %9, align 4, !annotation !8
  switch i32 %1, label %86 [
    i32 9, label %11
    i32 12, label %21
    i32 16, label %38
    i32 17, label %69
  ]

11:                                               ; preds = %3
  %12 = load ptr, ptr %10, align 4
  %13 = call i32 @regmap_read(ptr noundef %12, i32 noundef 48, ptr noundef nonnull %9) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %117

15:                                               ; preds = %11
  %16 = load i32, ptr %9, align 4
  %17 = lshr i32 %16, 3
  %18 = and i32 %17, 7
  %19 = mul nuw nsw i32 %18, 100000
  %20 = add nuw nsw i32 %19, 4000000
  store i32 %20, ptr %2, align 4
  br label %117

21:                                               ; preds = %3
  %22 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !8
  %23 = call i32 @regmap_read(ptr noundef %22, i32 noundef 90, ptr noundef nonnull %7) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i32, ptr %7, align 4
  %27 = call i32 @regmap_read(ptr noundef %22, i32 noundef 91, ptr noundef nonnull %7) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = shl i32 %26, 4
  %31 = load i32, ptr %7, align 4
  %32 = or i32 %31, %30
  br label %33

33:                                               ; preds = %29, %25, %21
  %34 = phi i32 [ %32, %29 ], [ %23, %21 ], [ %27, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %117, label %36

36:                                               ; preds = %33
  %37 = mul i32 %34, 1700
  store i32 %37, ptr %2, align 4
  br label %117

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.axp20x_usb_power, ptr %10, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 9
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  %43 = load ptr, ptr %10, align 4
  %44 = call i32 @regmap_read(ptr noundef %43, i32 noundef 48, ptr noundef nonnull %6) #8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, ptr %6, align 4
  %48 = and i32 %47, 3
  %49 = getelementptr inbounds [4 x i32], ptr @switch.table.axp20x_usb_power_get_property, i32 0, i32 %48
  %50 = load i32, ptr %49, align 4
  store i32 %50, ptr %2, align 4
  br label %51

51:                                               ; preds = %46, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %117

52:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %53 = load ptr, ptr %10, align 4
  %54 = call i32 @regmap_read(ptr noundef %53, i32 noundef 48, ptr noundef nonnull %5) #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32, ptr %5, align 4
  %58 = and i32 %57, 3
  switch i32 %58, label %65 [
    i32 2, label %59
    i32 1, label %66
    i32 0, label %63
    i32 3, label %64
  ]

59:                                               ; preds = %56
  %60 = load i32, ptr %39, align 4
  %61 = icmp eq i32 %60, 3
  %62 = select i1 %61, i32 -1, i32 100000
  br label %66

63:                                               ; preds = %56
  br label %66

64:                                               ; preds = %56
  br label %66

65:                                               ; preds = %56
  unreachable

66:                                               ; preds = %64, %63, %59, %56
  %67 = phi i32 [ 900000, %63 ], [ -1, %64 ], [ %62, %59 ], [ 500000, %56 ]
  store i32 %67, ptr %2, align 4
  br label %68

68:                                               ; preds = %66, %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %117

69:                                               ; preds = %3
  %70 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %71 = call i32 @regmap_read(ptr noundef %70, i32 noundef 92, ptr noundef nonnull %4) #8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i32, ptr %4, align 4
  %75 = call i32 @regmap_read(ptr noundef %70, i32 noundef 93, ptr noundef nonnull %4) #8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = shl i32 %74, 4
  %79 = load i32, ptr %4, align 4
  %80 = or i32 %79, %78
  br label %81

81:                                               ; preds = %77, %73, %69
  %82 = phi i32 [ %80, %77 ], [ %71, %69 ], [ %75, %73 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %117, label %84

84:                                               ; preds = %81
  %85 = mul i32 %82, 375
  store i32 %85, ptr %2, align 4
  br label %117

86:                                               ; preds = %3
  %87 = load ptr, ptr %10, align 4
  %88 = call i32 @regmap_read(ptr noundef %87, i32 noundef 0, ptr noundef nonnull %8) #8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %86
  switch i32 %1, label %117 [
    i32 2, label %91
    i32 3, label %109
    i32 4, label %113
  ]

91:                                               ; preds = %90
  %92 = load i32, ptr %8, align 4
  %93 = and i32 %92, 32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 0, ptr %2, align 4
  br label %117

96:                                               ; preds = %91
  store i32 1, ptr %2, align 4
  %97 = getelementptr inbounds %struct.axp20x_usb_power, ptr %10, i32 0, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %117

100:                                              ; preds = %96
  %101 = load ptr, ptr %10, align 4
  %102 = call i32 @regmap_read(ptr noundef %101, i32 noundef 2, ptr noundef nonnull %9) #8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %100
  %105 = load i32, ptr %9, align 4
  %106 = and i32 %105, 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  store i32 5, ptr %2, align 4
  br label %117

109:                                              ; preds = %90
  %110 = load i32, ptr %8, align 4
  %111 = lshr i32 %110, 5
  %112 = and i32 %111, 1
  store i32 %112, ptr %2, align 4
  br label %117

113:                                              ; preds = %90
  %114 = load i32, ptr %8, align 4
  %115 = lshr i32 %114, 4
  %116 = and i32 %115, 1
  store i32 %116, ptr %2, align 4
  br label %117

117:                                              ; preds = %113, %109, %108, %104, %100, %96, %95, %90, %86, %84, %81, %68, %51, %36, %33, %15, %11
  %118 = phi i32 [ 0, %84 ], [ %44, %51 ], [ %54, %68 ], [ 0, %36 ], [ 0, %15 ], [ %13, %11 ], [ %34, %33 ], [ %82, %81 ], [ %88, %86 ], [ %102, %100 ], [ -22, %90 ], [ 0, %96 ], [ 0, %108 ], [ 0, %104 ], [ 0, %113 ], [ 0, %109 ], [ 0, %95 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axp20x_usb_power_set_property(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #8
  switch i32 %1, label %44 [
    i32 4, label %5
    i32 9, label %15
    i32 16, label %23
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.axp20x_usb_power, ptr %4, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %9, label %44

9:                                                ; preds = %5
  %10 = load i32, ptr %2, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 128, i32 0
  %13 = load ptr, ptr %4, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 48, i32 noundef 128, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %44

15:                                               ; preds = %3
  %16 = load i32, ptr %2, align 4
  switch i32 %16, label %44 [
    i32 4000000, label %17
    i32 4100000, label %17
    i32 4200000, label %17
    i32 4300000, label %17
    i32 4400000, label %17
    i32 4500000, label %17
    i32 4600000, label %17
    i32 4700000, label %17
  ]

17:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15
  %18 = add nsw i32 %16, -4000000
  %19 = udiv i32 %18, 100000
  %20 = load ptr, ptr %4, align 4
  %21 = shl nuw nsw i32 %19, 3
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 48, i32 noundef 56, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %44

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.axp20x_usb_power, ptr %4, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 9
  %27 = load i32, ptr %2, align 4
  br i1 %26, label %28, label %36

28:                                               ; preds = %23
  switch i32 %27, label %44 [
    i32 900000, label %32
    i32 1500000, label %29
    i32 2000000, label %29
    i32 2500000, label %29
  ]

29:                                               ; preds = %28, %28, %28
  %30 = add nsw i32 %27, -1000000
  %31 = udiv i32 %30, 500000
  br label %32

32:                                               ; preds = %29, %28
  %33 = phi i32 [ %31, %29 ], [ 0, %28 ]
  %34 = load ptr, ptr %4, align 4
  %35 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 48, i32 noundef 3, i32 noundef %33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %44

36:                                               ; preds = %23
  switch i32 %27, label %44 [
    i32 100000, label %37
    i32 500000, label %39
    i32 900000, label %39
  ]

37:                                               ; preds = %36
  %38 = icmp eq i32 %25, 3
  br i1 %38, label %44, label %39

39:                                               ; preds = %37, %36, %36
  %40 = sub nuw nsw i32 900000, %27
  %41 = udiv i32 %40, 400000
  %42 = load ptr, ptr %4, align 4
  %43 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 48, i32 noundef 3, i32 noundef %41, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %44

44:                                               ; preds = %39, %37, %36, %32, %28, %17, %15, %9, %5, %3
  %45 = phi i32 [ %14, %9 ], [ -22, %5 ], [ -22, %3 ], [ %22, %17 ], [ -22, %15 ], [ -22, %28 ], [ %35, %32 ], [ %43, %39 ], [ -22, %37 ], [ -22, %36 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axp20x_usb_power_prop_writeable(ptr noundef %0, i32 noundef %1) #1 {
  %3 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #8
  %4 = icmp eq i32 %1, 4
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.axp20x_usb_power, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 9
  br label %13

9:                                                ; preds = %2
  %10 = icmp eq i32 %1, 9
  %11 = icmp eq i32 %1, 16
  %12 = or i1 %10, %11
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i1 [ %8, %5 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axp20x_usb_power_probe(ptr noundef %0) #1 {
  %2 = alloca %struct.power_supply_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  %8 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 20, i1 false)
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = tail call zeroext i1 @of_device_is_available(ptr noundef %10) #8
  br i1 %11, label %12, label %112

12:                                               ; preds = %1
  %13 = icmp eq ptr %7, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #9
  br label %112

15:                                               ; preds = %12
  %16 = tail call ptr @of_device_get_match_data(ptr noundef %3) #8
  %17 = getelementptr inbounds %struct.axp_data, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 4) #8
  %20 = extractvalue { i32, i1 } %19, 1
  %21 = extractvalue { i32, i1 } %19, 0
  %22 = tail call i32 @llvm.uadd.sat.i32(i32 %21, i32 76) #8
  %23 = select i1 %20, i32 -1, i32 %22
  %24 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %23, i32 noundef 3520) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %112, label %26

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %24, ptr %27, align 8
  %28 = getelementptr inbounds %struct.axp_data, ptr %16, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.axp20x_usb_power, ptr %24, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.axp20x_dev, ptr %7, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  store ptr %32, ptr %24, align 4
  %33 = load i32, ptr %17, align 4
  %34 = getelementptr inbounds %struct.axp20x_usb_power, ptr %24, i32 0, i32 8
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.axp20x_usb_power, ptr %24, i32 0, i32 5
  store i32 -32, ptr %35, align 4
  %36 = getelementptr inbounds %struct.axp20x_usb_power, ptr %24, i32 0, i32 5, i32 0, i32 1
  store volatile ptr %36, ptr %36, align 4
  %37 = getelementptr inbounds %struct.axp20x_usb_power, ptr %24, i32 0, i32 5, i32 0, i32 1, i32 1
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.axp20x_usb_power, ptr %24, i32 0, i32 5, i32 0, i32 2
  store ptr @axp20x_usb_power_poll_vbus, ptr %38, align 4
  %39 = getelementptr inbounds %struct.axp20x_usb_power, ptr %24, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %39, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #8
  %40 = tail call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @devm_delayed_work_drop, ptr noundef %35) #8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %112

42:                                               ; preds = %26
  %43 = load i32, ptr %30, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load ptr, ptr %24, align 4
  %47 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 139, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %112

49:                                               ; preds = %45
  %50 = load ptr, ptr %24, align 4
  %51 = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 130, i32 noundef 12, i32 noundef 12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %112

53:                                               ; preds = %49
  %54 = load i32, ptr %30, align 4
  br label %55

55:                                               ; preds = %53, %42
  %56 = phi i32 [ %54, %53 ], [ %43, %42 ]
  %57 = icmp eq i32 %56, 9
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load ptr, ptr %31, align 4
  %60 = tail call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 44, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %112

62:                                               ; preds = %58, %55
  %63 = load ptr, ptr %9, align 8
  store ptr %63, ptr %2, align 4
  %64 = getelementptr inbounds %struct.power_supply_config, ptr %2, i32 0, i32 2
  store ptr %24, ptr %64, align 4
  %65 = load ptr, ptr %16, align 4
  %66 = call ptr @devm_power_supply_register(ptr noundef %3, ptr noundef %65, ptr noundef nonnull %2) #8
  %67 = getelementptr inbounds %struct.axp20x_usb_power, ptr %24, i32 0, i32 1
  store ptr %66, ptr %67, align 4
  %68 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %75, label %69

69:                                               ; preds = %62
  %70 = load i32, ptr %17, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %102, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.axp_data, ptr %16, i32 0, i32 1
  %74 = getelementptr inbounds %struct.axp20x_dev, ptr %7, i32 0, i32 4
  br label %77

75:                                               ; preds = %62
  %76 = ptrtoint ptr %66 to i32
  br label %112

77:                                               ; preds = %98, %72
  %78 = phi i32 [ 0, %72 ], [ %99, %98 ]
  %79 = load ptr, ptr %73, align 4
  %80 = getelementptr ptr, ptr %79, i32 %78
  %81 = load ptr, ptr %80, align 4
  %82 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef %81) #8
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load ptr, ptr %73, align 4
  %86 = getelementptr ptr, ptr %85, i32 %78
  %87 = load ptr, ptr %86, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef %87, i32 noundef %82) #9
  br label %112

88:                                               ; preds = %77
  %89 = load ptr, ptr %74, align 4
  %90 = call i32 @regmap_irq_get_virq(ptr noundef %89, i32 noundef %82) #8
  %91 = getelementptr %struct.axp20x_usb_power, ptr %24, i32 0, i32 9, i32 %78
  store i32 %90, ptr %91, align 4
  %92 = call i32 @devm_request_any_context_irq(ptr noundef %3, i32 noundef %90, ptr noundef nonnull @axp20x_usb_power_irq, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull %24) #8
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load ptr, ptr %73, align 4
  %96 = getelementptr ptr, ptr %95, i32 %78
  %97 = load ptr, ptr %96, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef %97, i32 noundef %92) #9
  br label %112

98:                                               ; preds = %88
  %99 = add nuw i32 %78, 1
  %100 = load i32, ptr %17, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %77, label %102

102:                                              ; preds = %98, %69
  %103 = load i32, ptr %30, align 4
  %104 = icmp ugt i32 %103, 2
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.axp20x_usb_power, ptr %24, i32 0, i32 7
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load ptr, ptr @system_power_efficient_wq, align 4
  %111 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %110, ptr noundef %35, i32 noundef 0) #8
  br label %112

112:                                              ; preds = %109, %105, %102, %94, %84, %75, %58, %49, %45, %26, %15, %14, %1
  %113 = phi i32 [ %76, %75 ], [ %82, %84 ], [ %92, %94 ], [ -22, %14 ], [ -19, %1 ], [ -12, %15 ], [ %40, %26 ], [ %47, %45 ], [ %51, %49 ], [ %60, %58 ], [ 0, %109 ], [ 0, %102 ], [ 0, %105 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  ret i32 %113
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @axp20x_usb_power_poll_vbus(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %2) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 4
  %9 = and i32 %8, 48
  store i32 %9, ptr %2, align 4
  %10 = getelementptr i8, ptr %0, i32 44
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %0, i32 -16
  %15 = load ptr, ptr %14, align 4
  call void @power_supply_changed(ptr noundef %15) #8
  %16 = load i32, ptr %2, align 4
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %16, %13 ], [ %9, %7 ]
  store i32 %18, ptr %10, align 4
  %19 = and i32 %18, 16
  %20 = getelementptr i8, ptr %0, i32 48
  store i32 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = getelementptr i8, ptr %0, i32 -12
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, 2
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %0, i32 48
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load ptr, ptr @system_power_efficient_wq, align 4
  %31 = call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %30, ptr noundef %0, i32 noundef 5) #8
  br label %32

32:                                               ; preds = %29, %25, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_any_context_irq(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axp20x_usb_power_irq(i32 noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.axp20x_usb_power, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @power_supply_changed(ptr noundef %4) #8
  %5 = load ptr, ptr @system_power_efficient_wq, align 4
  %6 = getelementptr inbounds %struct.axp20x_usb_power, ptr %1, i32 0, i32 5
  %7 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %6, i32 noundef 5) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_delayed_work_drop(ptr noundef %0) #7 {
  %2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axp20x_usb_power_suspend(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.axp20x_usb_power, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.power_supply, ptr %5, i32 0, i32 7, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.power_supply, ptr %5, i32 0, i32 7, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.axp20x_usb_power, ptr %3, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @irq_set_irq_wake(i32 noundef %16, i32 noundef 1) #8
  br label %18

18:                                               ; preds = %14, %10, %1
  %19 = phi i32 [ 1, %14 ], [ 0, %10 ], [ 0, %1 ]
  %20 = getelementptr inbounds %struct.axp20x_usb_power, ptr %3, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %23, %18
  %24 = phi i32 [ %25, %23 ], [ %19, %18 ]
  %25 = add nuw i32 %24, 1
  %26 = getelementptr %struct.axp20x_usb_power, ptr %3, i32 0, i32 9, i32 %24
  %27 = load i32, ptr %26, align 4
  tail call void @disable_irq(i32 noundef %27) #8
  %28 = load i32, ptr %20, align 4
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %23, label %30

30:                                               ; preds = %23, %18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axp20x_usb_power_resume(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.axp20x_usb_power, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.power_supply, ptr %5, i32 0, i32 7, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.power_supply, ptr %5, i32 0, i32 7, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.axp20x_usb_power, ptr %3, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @irq_set_irq_wake(i32 noundef %16, i32 noundef 0) #8
  br label %18

18:                                               ; preds = %14, %10, %1
  %19 = phi i32 [ 1, %14 ], [ 0, %10 ], [ 0, %1 ]
  %20 = getelementptr inbounds %struct.axp20x_usb_power, ptr %3, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %23, %18
  %24 = phi i32 [ %25, %23 ], [ %19, %18 ]
  %25 = add nuw i32 %24, 1
  %26 = getelementptr %struct.axp20x_usb_power, ptr %3, i32 0, i32 9, i32 %24
  %27 = load i32, ptr %26, align 4
  tail call void @enable_irq(i32 noundef %27) #8
  %28 = load i32, ptr %20, align 4
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %23, label %30

30:                                               ; preds = %23, %18
  %31 = load ptr, ptr @system_power_efficient_wq, align 4
  %32 = getelementptr inbounds %struct.axp20x_usb_power, ptr %3, i32 0, i32 5
  %33 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %31, ptr noundef %32, i32 noundef 5) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
