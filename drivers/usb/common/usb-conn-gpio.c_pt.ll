; ModuleID = '/llk/IR/drivers/usb/common/usb-conn-gpio.c_pt.bc'
source_filename = "../drivers/usb/common/usb-conn-gpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.usb_conn_info = type { ptr, ptr, i32, ptr, %struct.delayed_work, i32, ptr, ptr, i32, i32, %struct.power_supply_desc, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }

@__initcall__kmod_usb_conn_gpio__247_348_usb_conn_driver_init6 = internal global ptr @usb_conn_driver_init, section ".initcall6.init", align 4
@usb_conn_driver = internal global %struct.platform_driver { ptr @usb_conn_probe, ptr @usb_conn_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usb_conn_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_conn_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_usb_conn_driver_exit = internal global ptr @usb_conn_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [62 x i8] c"usb_conn_gpio.author=Chunfeng Yun <chunfeng.yun@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [69 x i8] c"usb_conn_gpio.description=USB GPIO based connection detection driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [52 x i8] c"usb_conn_gpio.file=drivers/usb/common/usb-conn-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [29 x i8] c"usb_conn_gpio.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"usb-conn-gpio\00", align 1
@usb_conn_dt_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-usb-b-connector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@usb_conn_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @usb_conn_suspend, ptr @usb_conn_resume, ptr @usb_conn_suspend, ptr @usb_conn_resume, ptr @usb_conn_suspend, ptr @usb_conn_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to get gpios\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"vbus-supply\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to get vbus :%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"failed to get role switch\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"failed to get ID IRQ\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"failed to request ID IRQ\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"failed to get VBUS IRQ\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"failed to request VBUS IRQ\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"repeated role: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"failed to set role: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"enable vbus regulator failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"usb-charger\00", align 1
@usb_charger_properties = internal global [1 x i32] [i32 4], align 4
@.str.15 = private unnamed_addr constant [28 x i8] c"Unable to register charger\0A\00", align 1
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_usb_conn_driver_exit, ptr @__initcall__kmod_usb_conn_gpio__247_348_usb_conn_driver_init6, ptr @usb_conn_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @usb_conn_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @usb_conn_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @usb_conn_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @usb_conn_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_conn_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.power_supply_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 136, i32 noundef 3520) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %130, label %6

6:                                                ; preds = %1
  store ptr %3, ptr %4, align 4
  %7 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 1) #6
  %8 = getelementptr inbounds %struct.usb_conn_info, ptr %4, i32 0, i32 6
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = ptrtoint ptr %7 to i32
  br label %130

12:                                               ; preds = %6
  %13 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef 1) #6
  %14 = getelementptr inbounds %struct.usb_conn_info, ptr %4, i32 0, i32 7
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = ptrtoint ptr %13 to i32
  br label %130

18:                                               ; preds = %12
  %19 = load ptr, ptr %8, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = icmp eq ptr %13, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #7
  br label %130

24:                                               ; preds = %18
  %25 = tail call i32 @gpiod_set_debounce(ptr noundef nonnull %19, i32 noundef 20000) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load ptr, ptr %14, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %27, %21
  %31 = phi ptr [ %28, %27 ], [ %13, %21 ]
  %32 = tail call i32 @gpiod_set_debounce(ptr noundef nonnull %31, i32 noundef 20000) #6
  br label %33

33:                                               ; preds = %30, %24
  %34 = phi i32 [ %25, %24 ], [ %32, %30 ]
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.usb_conn_info, ptr %4, i32 0, i32 5
  store i32 2, ptr %37, align 4
  br label %38

38:                                               ; preds = %36, %33, %27
  %39 = getelementptr inbounds %struct.usb_conn_info, ptr %4, i32 0, i32 4
  store i32 -32, ptr %39, align 4
  %40 = getelementptr inbounds %struct.usb_conn_info, ptr %4, i32 0, i32 4, i32 0, i32 1
  store volatile ptr %40, ptr %40, align 4
  %41 = getelementptr inbounds %struct.usb_conn_info, ptr %4, i32 0, i32 4, i32 0, i32 1, i32 1
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.usb_conn_info, ptr %4, i32 0, i32 4, i32 0, i32 2
  store ptr @usb_conn_detect_cable, ptr %42, align 4
  %43 = getelementptr inbounds %struct.usb_conn_info, ptr %4, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %43, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #6
  %44 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %59, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 25
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = tail call ptr @of_find_property(ptr noundef nonnull %49, ptr noundef nonnull @.str.4, ptr noundef null) #6
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = tail call ptr @devm_regulator_get_optional(ptr noundef %3, ptr noundef nonnull @.str.2) #6
  %56 = getelementptr inbounds %struct.usb_conn_info, ptr %4, i32 0, i32 3
  %57 = icmp eq ptr %55, inttoptr (i32 -19 to ptr)
  %58 = select i1 %57, ptr null, ptr %55
  store ptr %58, ptr %56, align 4
  br label %62

59:                                               ; preds = %51, %47, %38
  %60 = tail call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.2) #6
  %61 = getelementptr inbounds %struct.usb_conn_info, ptr %4, i32 0, i32 3
  store ptr %60, ptr %61, align 4
  br label %62

62:                                               ; preds = %59, %54
  %63 = phi ptr [ %58, %54 ], [ %60, %59 ]
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = ptrtoint ptr %63 to i32
  %67 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %66, ptr noundef nonnull @.str.5, i32 noundef %66) #6
  br label %130

68:                                               ; preds = %62
  %69 = tail call ptr @usb_role_switch_get(ptr noundef %3) #6
  %70 = getelementptr inbounds %struct.usb_conn_info, ptr %4, i32 0, i32 1
  store ptr %69, ptr %70, align 4
  %71 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = ptrtoint ptr %69 to i32
  %74 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %73, ptr noundef nonnull @.str.6) #6
  br label %130

75:                                               ; preds = %68
  %76 = load ptr, ptr %4, align 4
  %77 = getelementptr inbounds %struct.usb_conn_info, ptr %4, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  %78 = getelementptr inbounds %struct.device, ptr %76, i32 0, i32 25
  %79 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %79, i8 0, i64 20, i1 false) #6
  %80 = load ptr, ptr %78, align 8
  store ptr %80, ptr %2, align 4
  store ptr @.str.14, ptr %77, align 4
  %81 = getelementptr inbounds %struct.usb_conn_info, ptr %4, i32 0, i32 10, i32 4
  store ptr @usb_charger_properties, ptr %81, align 4
  %82 = getelementptr inbounds %struct.usb_conn_info, ptr %4, i32 0, i32 10, i32 5
  store i32 1, ptr %82, align 4
  %83 = getelementptr inbounds %struct.usb_conn_info, ptr %4, i32 0, i32 10, i32 6
  store ptr @usb_charger_get_property, ptr %83, align 4
  %84 = getelementptr inbounds %struct.usb_conn_info, ptr %4, i32 0, i32 10, i32 1
  store i32 4, ptr %84, align 4
  %85 = getelementptr inbounds %struct.power_supply_config, ptr %2, i32 0, i32 2
  store ptr %4, ptr %85, align 4
  %86 = call ptr @devm_power_supply_register(ptr noundef %76, ptr noundef %77, ptr noundef nonnull %2) #6
  %87 = getelementptr inbounds %struct.usb_conn_info, ptr %4, i32 0, i32 11
  store ptr %86, ptr %87, align 4
  %88 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %88, label %89, label %91

89:                                               ; preds = %75
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.15) #7
  %90 = load ptr, ptr %87, align 4
  br label %91

91:                                               ; preds = %89, %75
  %92 = phi ptr [ %90, %89 ], [ %86, %75 ]
  %93 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  %94 = ptrtoint ptr %92 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  br i1 %93, label %127, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr %8, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %109, label %98

98:                                               ; preds = %95
  %99 = call i32 @gpiod_to_irq(ptr noundef nonnull %96) #6
  %100 = getelementptr inbounds %struct.usb_conn_info, ptr %4, i32 0, i32 8
  store i32 %99, ptr %100, align 4
  %101 = icmp slt i32 %99, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #7
  %103 = load i32, ptr %100, align 4
  br label %127

104:                                              ; preds = %98
  %105 = load ptr, ptr %0, align 8
  %106 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %99, ptr noundef null, ptr noundef nonnull @usb_conn_isr, i32 noundef 8195, ptr noundef %105, ptr noundef nonnull %4) #6
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #7
  br label %127

109:                                              ; preds = %104, %95
  %110 = load ptr, ptr %14, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %123, label %112

112:                                              ; preds = %109
  %113 = call i32 @gpiod_to_irq(ptr noundef nonnull %110) #6
  %114 = getelementptr inbounds %struct.usb_conn_info, ptr %4, i32 0, i32 9
  store i32 %113, ptr %114, align 4
  %115 = icmp slt i32 %113, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #7
  %117 = load i32, ptr %114, align 4
  br label %127

118:                                              ; preds = %112
  %119 = load ptr, ptr %0, align 8
  %120 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %113, ptr noundef null, ptr noundef nonnull @usb_conn_isr, i32 noundef 8195, ptr noundef %119, ptr noundef nonnull %4) #6
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #7
  br label %127

123:                                              ; preds = %118, %109
  %124 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %124, align 8
  %125 = load ptr, ptr @system_power_efficient_wq, align 4
  %126 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %125, ptr noundef %39, i32 noundef 0) #6
  br label %130

127:                                              ; preds = %122, %116, %108, %102, %91
  %128 = phi i32 [ %94, %91 ], [ %103, %102 ], [ %106, %108 ], [ %117, %116 ], [ %120, %122 ]
  %129 = load ptr, ptr %70, align 4
  call void @usb_role_switch_put(ptr noundef %129) #6
  br label %130

130:                                              ; preds = %127, %123, %72, %65, %23, %16, %10, %1
  %131 = phi i32 [ %11, %10 ], [ %17, %16 ], [ %67, %65 ], [ %74, %72 ], [ %128, %127 ], [ 0, %123 ], [ -19, %23 ], [ -12, %1 ]
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_conn_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_conn_info, ptr %3, i32 0, i32 4
  %5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %4) #6
  %6 = getelementptr inbounds %struct.usb_conn_info, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.usb_conn_info, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @regulator_disable(ptr noundef nonnull %11) #6
  br label %15

15:                                               ; preds = %13, %9, %1
  %16 = getelementptr inbounds %struct.usb_conn_info, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void @usb_role_switch_put(ptr noundef %17) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_debounce(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_conn_detect_cable(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = getelementptr i8, ptr %0, i32 48
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %4) #6
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ 1, %1 ]
  %10 = getelementptr i8, ptr %0, i32 52
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %11) #6
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ %9, %8 ]
  %17 = icmp eq i32 %9, 0
  %18 = icmp eq i32 %16, 0
  %19 = select i1 %18, i32 0, i32 2
  %20 = select i1 %17, i32 1, i32 %19
  %21 = getelementptr i8, ptr %0, i32 -8
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %20
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load ptr, ptr %2, align 4
  %26 = tail call ptr @usb_role_string(i32 noundef %20) #6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.11, ptr noundef %26) #7
  br label %55

27:                                               ; preds = %15
  %28 = icmp eq i32 %22, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = getelementptr i8, ptr %0, i32 -4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @regulator_disable(ptr noundef nonnull %31) #6
  br label %35

35:                                               ; preds = %33, %29, %27
  %36 = getelementptr i8, ptr %0, i32 -12
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @usb_role_switch_set_role(ptr noundef %37, i32 noundef %20) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.12, i32 noundef %38) #7
  br label %42

42:                                               ; preds = %40, %35
  br i1 %17, label %43, label %52

43:                                               ; preds = %42
  %44 = getelementptr i8, ptr %0, i32 -4
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = tail call i32 @regulator_enable(ptr noundef nonnull %45) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.13) #7
  br label %52

52:                                               ; preds = %50, %47, %43, %42
  store i32 %20, ptr %21, align 4
  %53 = getelementptr i8, ptr %0, i32 116
  %54 = load ptr, ptr %53, align 4
  tail call void @power_supply_changed(ptr noundef %54) #6
  br label %55

55:                                               ; preds = %52, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_conn_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_conn_info, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = load ptr, ptr @system_power_efficient_wq, align 4
  %6 = getelementptr inbounds %struct.usb_conn_info, ptr %1, i32 0, i32 4
  %7 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %6, i32 noundef %4) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_role_switch_set_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_charger_get_property(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #6
  %5 = icmp eq i32 %1, 4
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.usb_conn_info, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  %10 = zext i1 %9 to i32
  store i32 %10, ptr %2, align 4
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i32 [ 0, %6 ], [ -22, %3 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_conn_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_conn_info, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usb_conn_info, ptr %3, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  tail call void @disable_irq(i32 noundef %9) #6
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.usb_conn_info, ptr %3, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.usb_conn_info, ptr %3, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  tail call void @disable_irq(i32 noundef %16) #6
  br label %17

17:                                               ; preds = %14, %10
  %18 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_conn_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.usb_conn_info, ptr %3, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usb_conn_info, ptr %3, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  tail call void @enable_irq(i32 noundef %10) #6
  br label %11

11:                                               ; preds = %8, %1
  %12 = getelementptr inbounds %struct.usb_conn_info, ptr %3, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.usb_conn_info, ptr %3, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  tail call void @enable_irq(i32 noundef %17) #6
  br label %18

18:                                               ; preds = %15, %11
  %19 = load ptr, ptr @system_power_efficient_wq, align 4
  %20 = getelementptr inbounds %struct.usb_conn_info, ptr %3, i32 0, i32 4
  %21 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %19, ptr noundef %20, i32 noundef 0) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
