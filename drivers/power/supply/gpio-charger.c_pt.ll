; ModuleID = '/llk/IR/drivers/power/supply/gpio-charger.c_pt.bc'
source_filename = "../drivers/power/supply/gpio-charger.c"
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
%struct.gpio_charger = type { ptr, i32, i32, i8, ptr, %struct.power_supply_desc, ptr, ptr, ptr, ptr, i32, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.gpio_mapping = type { i32, i32 }
%struct.gpio_descs = type { ptr, i32, [0 x ptr] }
%struct.gpio_charger_platform_data = type { ptr, i32, ptr, i32 }

@gpio_charger_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-charger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author170 = internal constant [44 x i8] c"author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [63 x i8] c"description=Driver for chargers only communicating via GPIO(s)\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias173 = internal constant [28 x i8] c"alias=platform:gpio-charger\00", section ".modinfo", align 1
@gpio_charger_driver = internal global %struct.platform_driver { ptr @gpio_charger_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpio_charger_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpio_charger_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"gpio-charger\00", align 1
@gpio_charger_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @gpio_charger_suspend, ptr @gpio_charger_resume, ptr @gpio_charger_suspend, ptr @gpio_charger_resume, ptr @gpio_charger_suspend, ptr @gpio_charger_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"No platform data\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"error getting GPIO descriptor\0A\00", align 1
@gpio_charger_properties = internal global [3 x i32] [i32 4, i32 0, i32 30], align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"charge-status\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to register power supply: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"charge-current-limit\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"error getting current-limit GPIOs\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"charge-current-limit-mapping\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"invalid charge-current-limit-mapping length\0A\00", align 1
@.str.9 = private unnamed_addr constant [72 x i8] c"charge-current-limit-mapping not sorted by current in descending order\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"charger-type\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"ups\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"mains\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"usb-sdp\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"usb-dcp\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"usb-cdp\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"usb-aca\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"unknown charger type %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Failed to request irq: %d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias173, ptr @__UNIQUE_ID_author170, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_license172], section "llvm.metadata"

@__mod_of__gpio_charger_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @gpio_charger_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_charger_driver, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_charger_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_charger_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.power_supply_config, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #10
  br label %238

13:                                               ; preds = %8, %1
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 96, i32 noundef 3520) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %238, label %16

16:                                               ; preds = %13
  store ptr %4, ptr %14, align 4
  %17 = tail call ptr @devm_gpiod_get_optional(ptr noundef %4, ptr noundef null, i32 noundef 1) #9
  %18 = getelementptr inbounds %struct.gpio_charger, ptr %14, i32 0, i32 6
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = ptrtoint ptr %17 to i32
  %22 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %21, ptr noundef nonnull @.str.2) #9
  br label %238

23:                                               ; preds = %16
  %24 = icmp eq ptr %17, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  store i32 4, ptr @gpio_charger_properties, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ 1, %25 ], [ 0, %23 ]
  %28 = tail call ptr @devm_gpiod_get_optional(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef 1) #9
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = ptrtoint ptr %28 to i32
  br label %238

32:                                               ; preds = %26
  %33 = icmp eq ptr %28, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.gpio_charger, ptr %14, i32 0, i32 7
  store ptr %28, ptr %35, align 4
  %36 = getelementptr [3 x i32], ptr @gpio_charger_properties, i32 0, i32 %27
  store i32 0, ptr %36, align 4
  %37 = add nuw nsw i32 %27, 1
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi i32 [ %37, %34 ], [ %27, %32 ]
  %40 = tail call ptr @devm_gpiod_get_array_optional(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef 3) #9
  %41 = getelementptr inbounds %struct.gpio_charger, ptr %14, i32 0, i32 8
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %121, label %43

43:                                               ; preds = %38
  %44 = icmp eq ptr %40, null
  br i1 %44, label %125, label %45

45:                                               ; preds = %43
  %46 = tail call i32 @device_property_read_u32_array(ptr noundef %4, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0) #9
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %238, label %48

48:                                               ; preds = %45
  %49 = icmp ne i32 %46, 0
  %50 = and i32 %46, 1
  %51 = icmp eq i32 %50, 0
  %52 = and i1 %49, %51
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8) #10
  br label %238

54:                                               ; preds = %48
  %55 = lshr i32 %46, 1
  %56 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %55, i32 8) #9
  %57 = extractvalue { i32, i1 } %56, 1
  br i1 %57, label %58, label %60, !prof !8

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.gpio_charger, ptr %14, i32 0, i32 9
  store ptr null, ptr %59, align 4
  br label %238

60:                                               ; preds = %54
  %61 = extractvalue { i32, i1 } %56, 0
  %62 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %61, i32 noundef 3264) #9
  %63 = getelementptr inbounds %struct.gpio_charger, ptr %14, i32 0, i32 9
  store ptr %62, ptr %63, align 4
  %64 = icmp eq ptr %62, null
  br i1 %64, label %238, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.gpio_charger, ptr %14, i32 0, i32 10
  store i32 %55, ptr %66, align 4
  %67 = tail call i32 @device_property_read_u32_array(ptr noundef %4, ptr noundef nonnull @.str.7, ptr noundef nonnull %62, i32 noundef %46) #9
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %238, label %69

69:                                               ; preds = %65
  %70 = load i32, ptr %66, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %125, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %63, align 4
  br label %77

74:                                               ; preds = %77
  %75 = add nuw i32 %79, 1
  %76 = icmp eq i32 %75, %70
  br i1 %76, label %84, label %77

77:                                               ; preds = %74, %72
  %78 = phi i32 [ -1, %72 ], [ %81, %74 ]
  %79 = phi i32 [ 0, %72 ], [ %75, %74 ]
  %80 = getelementptr %struct.gpio_mapping, ptr %73, i32 %79
  %81 = load i32, ptr %80, align 1
  %82 = icmp ugt i32 %81, %78
  br i1 %82, label %83, label %74

83:                                               ; preds = %77
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #10
  br label %238

84:                                               ; preds = %74
  %85 = add i32 %70, -1
  %86 = getelementptr %struct.gpio_mapping, ptr %73, i32 %85
  %87 = load i32, ptr %86, align 1
  %88 = load ptr, ptr %41, align 4
  %89 = getelementptr inbounds %struct.gpio_descs, ptr %88, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.gpio_descs, ptr %88, i32 0, i32 2
  br label %92

92:                                               ; preds = %97, %84
  %93 = phi i32 [ %98, %97 ], [ 0, %84 ]
  %94 = getelementptr %struct.gpio_mapping, ptr %73, i32 %93
  %95 = load i32, ptr %94, align 1
  %96 = icmp ugt i32 %95, %87
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = add nuw i32 %93, 1
  %99 = icmp eq i32 %98, %70
  br i1 %99, label %100, label %92

100:                                              ; preds = %97
  %101 = getelementptr %struct.gpio_mapping, ptr %73, i32 %70
  %102 = load i32, ptr %101, align 1
  br label %103

103:                                              ; preds = %100, %92
  %104 = phi i32 [ %102, %100 ], [ %95, %92 ]
  %105 = phi i32 [ %70, %100 ], [ %93, %92 ]
  %106 = getelementptr %struct.gpio_mapping, ptr %73, i32 %105, i32 1
  %107 = load i32, ptr %106, align 1
  %108 = icmp sgt i32 %90, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %109, %103
  %110 = phi i32 [ %117, %109 ], [ 0, %103 ]
  %111 = xor i32 %110, -1
  %112 = add i32 %90, %111
  %113 = getelementptr ptr, ptr %91, i32 %112
  %114 = load ptr, ptr %113, align 4
  %115 = lshr i32 %107, %110
  %116 = and i32 %115, 1
  tail call void @gpiod_set_value_cansleep(ptr noundef %114, i32 noundef %116) #9
  %117 = add nuw nsw i32 %110, 1
  %118 = icmp eq i32 %117, %90
  br i1 %118, label %119, label %109

119:                                              ; preds = %109, %103
  %120 = getelementptr inbounds %struct.gpio_charger, ptr %14, i32 0, i32 11
  store i32 %104, ptr %120, align 4
  br label %125

121:                                              ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #10
  %122 = load ptr, ptr %41, align 4
  %123 = ptrtoint ptr %122 to i32
  %124 = icmp slt ptr %122, null
  br i1 %124, label %238, label %125

125:                                              ; preds = %121, %119, %69, %43
  %126 = getelementptr inbounds %struct.gpio_charger, ptr %14, i32 0, i32 9
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = getelementptr [3 x i32], ptr @gpio_charger_properties, i32 0, i32 %39
  store i32 30, ptr %130, align 4
  %131 = add nsw i32 %39, 1
  br label %132

132:                                              ; preds = %129, %125
  %133 = phi i32 [ %131, %129 ], [ %39, %125 ]
  %134 = getelementptr inbounds %struct.gpio_charger, ptr %14, i32 0, i32 5
  %135 = getelementptr inbounds %struct.gpio_charger, ptr %14, i32 0, i32 5, i32 4
  store ptr @gpio_charger_properties, ptr %135, align 4
  %136 = getelementptr inbounds %struct.gpio_charger, ptr %14, i32 0, i32 5, i32 5
  store i32 %133, ptr %136, align 4
  %137 = getelementptr inbounds %struct.gpio_charger, ptr %14, i32 0, i32 5, i32 6
  store ptr @gpio_charger_get_property, ptr %137, align 4
  %138 = getelementptr inbounds %struct.gpio_charger, ptr %14, i32 0, i32 5, i32 7
  store ptr @gpio_charger_set_property, ptr %138, align 4
  %139 = getelementptr inbounds %struct.gpio_charger, ptr %14, i32 0, i32 5, i32 8
  store ptr @gpio_charger_property_is_writeable, ptr %139, align 4
  %140 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %141 = load ptr, ptr %140, align 8
  store ptr %141, ptr %3, align 4
  %142 = getelementptr inbounds %struct.power_supply_config, ptr %3, i32 0, i32 2
  store ptr %14, ptr %142, align 4
  br i1 %7, label %154, label %143

143:                                              ; preds = %132
  %144 = load ptr, ptr %6, align 4
  store ptr %144, ptr %134, align 4
  %145 = getelementptr inbounds %struct.gpio_charger_platform_data, ptr %6, i32 0, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr inbounds %struct.gpio_charger, ptr %14, i32 0, i32 5, i32 1
  store i32 %146, ptr %147, align 4
  %148 = getelementptr inbounds %struct.gpio_charger_platform_data, ptr %6, i32 0, i32 2
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.power_supply_config, ptr %3, i32 0, i32 4
  store ptr %149, ptr %150, align 4
  %151 = getelementptr inbounds %struct.gpio_charger_platform_data, ptr %6, i32 0, i32 3
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr inbounds %struct.power_supply_config, ptr %3, i32 0, i32 5
  store i32 %152, ptr %153, align 4
  br label %188

154:                                              ; preds = %132
  %155 = load ptr, ptr %141, align 4
  store ptr %155, ptr %134, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4, !annotation !9
  %156 = call i32 @device_property_read_string(ptr noundef %4, ptr noundef nonnull @.str.10, ptr noundef nonnull %2) #9
  %157 = icmp eq i32 %156, 0
  %158 = load ptr, ptr %2, align 4
  br i1 %157, label %159, label %183

159:                                              ; preds = %154
  %160 = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.11, ptr noundef %158) #9
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %184, label %162

162:                                              ; preds = %159
  %163 = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.12, ptr noundef %158) #9
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %184, label %165

165:                                              ; preds = %162
  %166 = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.13, ptr noundef %158) #9
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %184, label %168

168:                                              ; preds = %165
  %169 = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.14, ptr noundef %158) #9
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %184, label %171

171:                                              ; preds = %168
  %172 = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.15, ptr noundef %158) #9
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %184, label %174

174:                                              ; preds = %171
  %175 = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.16, ptr noundef %158) #9
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %174
  %178 = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.17, ptr noundef %158) #9
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %177
  %181 = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.18, ptr noundef %158) #9
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %180, %154
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.19, ptr noundef %158) #10
  br label %184

184:                                              ; preds = %183, %180, %177, %174, %171, %168, %165, %162, %159
  %185 = phi i32 [ 0, %183 ], [ 0, %159 ], [ 1, %162 ], [ 2, %165 ], [ 3, %168 ], [ 4, %171 ], [ 4, %174 ], [ 4, %177 ], [ 4, %180 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %186 = getelementptr inbounds %struct.gpio_charger, ptr %14, i32 0, i32 5, i32 1
  store i32 %185, ptr %186, align 4
  %187 = load ptr, ptr %134, align 4
  br label %188

188:                                              ; preds = %184, %143
  %189 = phi ptr [ %187, %184 ], [ %144, %143 ]
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = load ptr, ptr %0, align 8
  store ptr %192, ptr %134, align 4
  br label %193

193:                                              ; preds = %191, %188
  %194 = call ptr @devm_power_supply_register(ptr noundef %4, ptr noundef %134, ptr noundef nonnull %3) #9
  %195 = getelementptr inbounds %struct.gpio_charger, ptr %14, i32 0, i32 4
  store ptr %194, ptr %195, align 4
  %196 = icmp ugt ptr %194, inttoptr (i32 -4096 to ptr)
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = ptrtoint ptr %194 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %198) #10
  br label %238

199:                                              ; preds = %193
  %200 = load ptr, ptr %18, align 4
  %201 = call i32 @gpiod_to_irq(ptr noundef %200) #9
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = load ptr, ptr %4, align 4
  br label %209

209:                                              ; preds = %207, %203
  %210 = phi ptr [ %208, %207 ], [ %205, %203 ]
  %211 = call i32 @devm_request_any_context_irq(ptr noundef %4, i32 noundef %201, ptr noundef nonnull @gpio_charger_irq, i32 noundef 3, ptr noundef %210, ptr noundef %194) #9
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.20, i32 noundef %211) #10
  br label %214

214:                                              ; preds = %213, %209, %199
  %215 = phi i32 [ 0, %213 ], [ %201, %209 ], [ %201, %199 ]
  %216 = getelementptr inbounds %struct.gpio_charger, ptr %14, i32 0, i32 1
  store i32 %215, ptr %216, align 4
  %217 = load ptr, ptr %195, align 4
  %218 = getelementptr inbounds %struct.gpio_charger, ptr %14, i32 0, i32 7
  %219 = load ptr, ptr %218, align 4
  %220 = call i32 @gpiod_to_irq(ptr noundef %219) #9
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %214
  %223 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %228

226:                                              ; preds = %222
  %227 = load ptr, ptr %4, align 4
  br label %228

228:                                              ; preds = %226, %222
  %229 = phi ptr [ %227, %226 ], [ %224, %222 ]
  %230 = call i32 @devm_request_any_context_irq(ptr noundef %4, i32 noundef %220, ptr noundef nonnull @gpio_charger_irq, i32 noundef 3, ptr noundef %229, ptr noundef %217) #9
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.20, i32 noundef %230) #10
  br label %233

233:                                              ; preds = %232, %228, %214
  %234 = phi i32 [ 0, %232 ], [ %220, %228 ], [ %220, %214 ]
  %235 = getelementptr inbounds %struct.gpio_charger, ptr %14, i32 0, i32 2
  store i32 %234, ptr %235, align 4
  %236 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %14, ptr %236, align 8
  %237 = call i32 @device_init_wakeup(ptr noundef %4, i1 noundef zeroext true) #9
  br label %238

238:                                              ; preds = %233, %197, %121, %83, %65, %60, %58, %53, %45, %30, %20, %13, %12
  %239 = phi i32 [ %22, %20 ], [ %31, %30 ], [ %198, %197 ], [ 0, %233 ], [ -2, %12 ], [ -12, %13 ], [ %123, %121 ], [ -12, %58 ], [ %67, %65 ], [ -12, %60 ], [ %46, %45 ], [ -22, %83 ], [ -22, %53 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 %239
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_charger_get_property(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #9
  switch i32 %1, label %20 [
    i32 4, label %5
    i32 0, label %9
    i32 30, label %15
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gpio_charger, ptr %4, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %7) #9
  br label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gpio_charger, ptr %4, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %11) #9
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 3, i32 1
  br label %18

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.gpio_charger, ptr %4, i32 0, i32 11
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %9, %5
  %19 = phi i32 [ %8, %5 ], [ %17, %15 ], [ %14, %9 ]
  store i32 %19, ptr %2, align 4
  br label %20

20:                                               ; preds = %18, %3
  %21 = phi i32 [ -22, %3 ], [ 0, %18 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_charger_set_property(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #9
  %5 = icmp eq i32 %1, 30
  br i1 %5, label %6, label %48

6:                                                ; preds = %3
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr inbounds %struct.gpio_charger, ptr %4, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.gpio_descs, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.gpio_descs, ptr %9, i32 0, i32 2
  %13 = getelementptr inbounds %struct.gpio_charger, ptr %4, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %48, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.gpio_charger, ptr %4, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %24, %16
  %20 = phi i32 [ 0, %16 ], [ %25, %24 ]
  %21 = getelementptr %struct.gpio_mapping, ptr %18, i32 %20
  %22 = load i32, ptr %21, align 1
  %23 = icmp ugt i32 %22, %7
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = add nuw i32 %20, 1
  %26 = icmp eq i32 %25, %14
  br i1 %26, label %27, label %19

27:                                               ; preds = %24
  %28 = getelementptr %struct.gpio_mapping, ptr %18, i32 %14
  %29 = load i32, ptr %28, align 1
  br label %30

30:                                               ; preds = %27, %19
  %31 = phi i32 [ %29, %27 ], [ %22, %19 ]
  %32 = phi i32 [ %14, %27 ], [ %20, %19 ]
  %33 = getelementptr %struct.gpio_mapping, ptr %18, i32 %32, i32 1
  %34 = load i32, ptr %33, align 1
  %35 = icmp sgt i32 %11, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %36, %30
  %37 = phi i32 [ %44, %36 ], [ 0, %30 ]
  %38 = xor i32 %37, -1
  %39 = add i32 %11, %38
  %40 = getelementptr ptr, ptr %12, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = lshr i32 %34, %37
  %43 = and i32 %42, 1
  tail call void @gpiod_set_value_cansleep(ptr noundef %41, i32 noundef %43) #9
  %44 = add nuw nsw i32 %37, 1
  %45 = icmp eq i32 %44, %11
  br i1 %45, label %46, label %36

46:                                               ; preds = %36, %30
  %47 = getelementptr inbounds %struct.gpio_charger, ptr %4, i32 0, i32 11
  store i32 %31, ptr %47, align 4
  br label %48

48:                                               ; preds = %46, %6, %3
  %49 = phi i32 [ -22, %3 ], [ 0, %46 ], [ -22, %6 ]
  ret i32 %49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @gpio_charger_property_is_writeable(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = icmp eq i32 %1, 30
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_array_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_any_context_irq(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_charger_irq(i32 noundef %0, ptr noundef %1) #2 {
  tail call void @power_supply_changed(ptr noundef %1) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_charger_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gpio_charger, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #9
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.gpio_charger, ptr %3, i32 0, i32 3
  %18 = zext i1 %16 to i8
  store i8 %18, ptr %17, align 4
  br label %19

19:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_charger_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gpio_charger, ptr %3, i32 0, i32 3
  %14 = load i8, ptr %13, align 4, !range !10
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.gpio_charger, ptr %3, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @irq_set_irq_wake(i32 noundef %18, i32 noundef 0) #9
  br label %20

20:                                               ; preds = %16, %12, %8, %1
  %21 = getelementptr inbounds %struct.gpio_charger, ptr %3, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  tail call void @power_supply_changed(ptr noundef %22) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
