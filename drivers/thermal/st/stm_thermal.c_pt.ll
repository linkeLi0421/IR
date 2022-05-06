; ModuleID = '/llk/IR/drivers/thermal/st/stm_thermal.c_pt.bc'
source_filename = "../drivers/thermal/st/stm_thermal.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.stm_thermal_sensor = type { ptr, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_stm_thermal__170_599_stm_thermal_driver_init6 = internal global ptr @stm_thermal_driver_init, section ".initcall6.init", align 4
@stm_thermal_driver = internal global %struct.platform_driver { ptr @stm_thermal_probe, ptr @stm_thermal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm_thermal_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm_thermal_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_stm_thermal_driver_exit = internal global ptr @stm_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [71 x i8] c"stm_thermal.description=STMicroelectronics STM32 Thermal Sensor Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [75 x i8] c"stm_thermal.author=David Hernandez Sanchez <david.hernandezsanchez@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [48 x i8] c"stm_thermal.file=drivers/thermal/st/stm_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [27 x i8] c"stm_thermal.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias175 = internal constant [39 x i8] c"stm_thermal.alias=platform:stm_thermal\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"stm_thermal\00", align 1
@stm_thermal_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@stm_thermal_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm_thermal_suspend, ptr @stm_thermal_resume, ptr @stm_thermal_suspend, ptr @stm_thermal_resume, ptr @stm_thermal_suspend, ptr @stm_thermal_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: device tree node not found\0A\00", align 1
@__func__.stm_thermal_probe = private unnamed_addr constant [18 x i8] c"stm_thermal_probe\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%s: failed to fetch PCLK clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Error prepare sensor: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Error power on sensor: %d\0A\00", align 1
@stm_tz_ops = internal constant %struct.thermal_zone_of_device_ops { ptr @stm_thermal_get_temp, ptr null, ptr @stm_thermal_set_trips, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"%s: thermal zone sensor registering KO\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"%s: Driver initialized successfully\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"%s: wrong setting\0A\00", align 1
@__func__.stm_thermal_read_factory_settings = private unnamed_addr constant [34 x i8] c"stm_thermal_read_factory_settings\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"%s: Failed to register IRQ %d\0A\00", align 1
@__func__.stm_register_irq = private unnamed_addr constant [17 x i8] c"stm_register_irq\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_stm_thermal_driver_exit, ptr @__initcall__kmod_stm_thermal__170_599_stm_thermal_driver_init6, ptr @stm_thermal_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stm_thermal_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm_thermal_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @stm_thermal_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm_thermal_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm_thermal_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stm_thermal_probe) #5
  br label %90

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %90, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %11, align 8
  store ptr %2, ptr %8, align 4
  %12 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %13 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %12) #4
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = ptrtoint ptr %13 to i32
  br label %90

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %8, i32 0, i32 7
  store ptr %13, ptr %18, align 4
  %19 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #4
  %20 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %8, i32 0, i32 3
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.stm_thermal_probe) #5
  %23 = load ptr, ptr %20, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %90

25:                                               ; preds = %17
  %26 = load ptr, ptr %18, align 4
  %27 = getelementptr i8, ptr %26, i32 36
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #4, !srcloc !8
  %29 = and i32 %28, -120
  %30 = load ptr, ptr %18, align 4
  %31 = getelementptr i8, ptr %30, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #4, !srcloc !9
  %32 = load ptr, ptr %18, align 4
  %33 = getelementptr i8, ptr %32, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 119) #4, !srcloc !9
  %34 = tail call fastcc i32 @stm_thermal_prepare(ptr noundef nonnull %8)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %34) #5
  br label %90

37:                                               ; preds = %25
  %38 = tail call fastcc i32 @stm_sensor_power_on(ptr noundef nonnull %8)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %38) #5
  br label %90

41:                                               ; preds = %37
  %42 = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %8, ptr noundef nonnull @stm_tz_ops) #4
  %43 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %8, i32 0, i32 1
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.stm_thermal_probe) #5
  %46 = load ptr, ptr %43, align 4
  %47 = ptrtoint ptr %46 to i32
  br label %90

48:                                               ; preds = %41
  %49 = load ptr, ptr %8, align 4
  %50 = getelementptr i8, ptr %49, i32 -16
  %51 = tail call i32 @platform_get_irq(ptr noundef %50, i32 noundef 0) #4
  %52 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %8, i32 0, i32 6
  store i32 %51, ptr %52, align 4
  %53 = icmp slt i32 %51, 0
  br i1 %53, label %87, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 6
  %56 = load ptr, ptr %55, align 8
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @devm_request_threaded_irq(ptr noundef %49, i32 noundef %51, ptr noundef null, ptr noundef nonnull @stm_thermal_irq_handler, i32 noundef 8192, ptr noundef %57, ptr noundef nonnull %8) #4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = load i32, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.stm_register_irq, i32 noundef %61) #5
  br label %87

62:                                               ; preds = %54
  %63 = load ptr, ptr %18, align 4
  %64 = getelementptr i8, ptr %63, i32 36
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #4, !srcloc !8
  %66 = and i32 %65, -7
  %67 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %8, i32 0, i32 4
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  %70 = or i32 %66, 4
  %71 = select i1 %69, i32 %66, i32 %70
  %72 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %8, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  %75 = or i32 %71, 2
  %76 = select i1 %74, i32 %71, i32 %75
  %77 = load ptr, ptr %18, align 4
  %78 = getelementptr i8, ptr %77, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #4, !srcloc !9
  %79 = load ptr, ptr %43, align 4
  %80 = getelementptr inbounds %struct.thermal_zone_device, ptr %79, i32 0, i32 21
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.thermal_zone_params, ptr %81, i32 0, i32 1
  store i8 0, ptr %82, align 4
  %83 = load ptr, ptr %43, align 4
  %84 = tail call i32 @thermal_add_hwmon_sysfs(ptr noundef %83) #4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %62
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.stm_thermal_probe) #5
  br label %90

87:                                               ; preds = %62, %60, %48
  %88 = phi i32 [ %84, %62 ], [ %51, %48 ], [ %58, %60 ]
  %89 = load ptr, ptr %43, align 4
  tail call void @thermal_zone_of_sensor_unregister(ptr noundef %2, ptr noundef %89) #4
  br label %90

90:                                               ; preds = %87, %86, %45, %40, %36, %22, %15, %7, %6
  %91 = phi i32 [ %16, %15 ], [ %24, %22 ], [ %34, %36 ], [ %38, %40 ], [ %47, %45 ], [ %88, %87 ], [ 0, %86 ], [ -22, %6 ], [ -12, %7 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm_thermal_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @stm_thermal_sensor_off(ptr noundef %3)
  %5 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @thermal_remove_hwmon_sysfs(ptr noundef %6) #4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %5, align 4
  tail call void @thermal_zone_of_sensor_unregister(ptr noundef %7, ptr noundef %8) #4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm_thermal_prepare(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %54

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @clk_unprepare(ptr noundef %3) #4
  br label %54

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !8
  %15 = and i32 %14, 196608
  %16 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 8
  %17 = icmp eq i32 %15, 0
  %18 = select i1 %17, i32 30000, i32 130000
  store i32 %18, ptr %16, align 4
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr i8, ptr %19, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !8
  %22 = and i32 %21, 65535
  %23 = mul nuw nsw i32 %22, 100
  %24 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 9
  store i32 %23, ptr %24, align 4
  %25 = load ptr, ptr %11, align 4
  %26 = getelementptr i8, ptr %25, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #4, !srcloc !8
  %28 = and i32 %27, 65535
  %29 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 10
  store i32 %28, ptr %29, align 4
  %30 = load i32, ptr %24, align 4
  %31 = icmp eq i32 %30, 0
  %32 = icmp eq i32 %28, 0
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %10
  %35 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.stm_thermal_read_factory_settings) #5
  br label %52

36:                                               ; preds = %10
  %37 = load ptr, ptr %2, align 4
  %38 = tail call i32 @clk_get_rate(ptr noundef %37) #4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = icmp ult i32 %38, 1000000
  %42 = udiv i32 %38, 1000000
  %43 = shl i32 %42, 24
  %44 = add i32 %43, 16777216
  %45 = load ptr, ptr %11, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #4, !srcloc !8
  %47 = and i32 %46, -2134839041
  %48 = or i32 %44, 983040
  %49 = select i1 %41, i32 983040, i32 %48
  %50 = or i32 %49, %47
  %51 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %50) #4, !srcloc !9
  br label %54

52:                                               ; preds = %36, %34
  %53 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %53) #4
  tail call void @clk_unprepare(ptr noundef %53) #4
  br label %54

54:                                               ; preds = %52, %40, %9, %1
  %55 = phi i32 [ -22, %52 ], [ 0, %40 ], [ %7, %9 ], [ %4, %1 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm_sensor_power_on(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !8
  %5 = or i32 %4, 1
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #4, !srcloc !9
  %7 = tail call i64 @ktime_get() #4
  %8 = add i64 %7, 5000000
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 32
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %12 = and i32 %11, 32768
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %17, %1
  %15 = tail call i64 @ktime_get() #4
  %16 = icmp sgt i64 %15, %8
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  tail call void @usleep_range_state(i32 noundef 11, i32 noundef 40, i32 noundef 2) #4
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr i8, ptr %18, i32 32
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %21 = and i32 %20, 32768
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %14, label %29

23:                                               ; preds = %14
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr i8, ptr %24, i32 32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %27 = and i32 %26, 32768
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23, %17, %1
  %30 = load ptr, ptr %2, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #4, !srcloc !8
  %32 = or i32 %31, 16
  %33 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %32) #4, !srcloc !9
  %34 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 2
  store i32 1, ptr %34, align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = phi i32 [ 0, %29 ], [ -110, %23 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_add_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_of_sensor_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm_thermal_get_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %49

6:                                                ; preds = %2
  %7 = tail call i64 @ktime_get() #4
  %8 = add i64 %7, 5000000
  %9 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 28
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %18, %6
  %16 = tail call i64 @ktime_get() #4
  %17 = icmp sgt i64 %16, %8
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  tail call void @usleep_range_state(i32 noundef 11, i32 noundef 40, i32 noundef 2) #4
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr i8, ptr %19, i32 28
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %15, label %30

24:                                               ; preds = %15
  %25 = load ptr, ptr %9, align 4
  %26 = getelementptr i8, ptr %25, i32 28
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #4, !srcloc !8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %24, %18, %6
  %31 = phi i32 [ %27, %24 ], [ %12, %6 ], [ %21, %18 ]
  %32 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @clk_get_rate(ptr noundef %33) #4
  %35 = mul i32 %34, 15
  %36 = icmp ugt i32 %31, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %30
  %38 = udiv i32 %35, %31
  %39 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = sub i32 %38, %40
  %42 = mul i32 %41, 1000
  %43 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = sdiv i32 %42, %44
  %46 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 8
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, %45
  store i32 %48, ptr %1, align 4
  br label %49

49:                                               ; preds = %37, %30, %24, %2
  %50 = phi i32 [ 0, %37 ], [ -11, %2 ], [ -110, %24 ], [ -22, %30 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm_thermal_set_trips(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  %8 = icmp sgt i32 %1, -2147483647
  %9 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 4
  br i1 %8, label %10, label %30

10:                                               ; preds = %3
  store i32 1, ptr %9, align 4
  %11 = add i32 %1, -500
  %12 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %11, %13
  %15 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %14, %16
  %18 = sdiv i32 %17, 1000
  %19 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %18, %20
  %22 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @clk_get_rate(ptr noundef %23) #4
  %25 = mul i32 %24, 15
  %26 = icmp ugt i32 %21, %25
  br i1 %26, label %60, label %27

27:                                               ; preds = %10
  %28 = udiv i32 %25, %21
  %29 = shl i32 %28, 16
  br label %31

30:                                               ; preds = %3
  store i32 0, ptr %9, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ %29, %27 ], [ 0, %30 ]
  %33 = icmp eq i32 %2, 2147483647
  %34 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 5
  br i1 %33, label %55, label %35

35:                                               ; preds = %31
  store i32 1, ptr %34, align 4
  %36 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 8
  %37 = load i32, ptr %36, align 4
  %38 = sub i32 %2, %37
  %39 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 10
  %40 = load i32, ptr %39, align 4
  %41 = mul i32 %38, %40
  %42 = sdiv i32 %41, 1000
  %43 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 9
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %42, %44
  %46 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @clk_get_rate(ptr noundef %47) #4
  %49 = mul i32 %48, 15
  %50 = icmp ugt i32 %45, %49
  br i1 %50, label %60, label %51

51:                                               ; preds = %35
  %52 = udiv i32 %49, %45
  %53 = and i32 %52, 65535
  %54 = or i32 %53, %32
  br label %56

55:                                               ; preds = %31
  store i32 0, ptr %34, align 4
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i32 [ %54, %51 ], [ %32, %55 ]
  %58 = load ptr, ptr %4, align 4
  %59 = getelementptr i8, ptr %58, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #4, !srcloc !9
  br label %60

60:                                               ; preds = %56, %35, %10
  %61 = phi i32 [ 0, %56 ], [ -22, %10 ], [ -22, %35 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm_thermal_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @thermal_zone_device_update(ptr noundef %4, i32 noundef 0) #4
  %5 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %1, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !8
  %9 = and i32 %8, -7
  %10 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %1, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = or i32 %9, 4
  %14 = select i1 %12, i32 %9, i32 %13
  %15 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %1, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = or i32 %14, 2
  %19 = select i1 %17, i32 %14, i32 %18
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr i8, ptr %20, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #4, !srcloc !9
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %22, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 119) #4, !srcloc !9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm_thermal_sensor_off(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 36
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !8
  %6 = and i32 %5, -120
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #4, !srcloc !9
  %9 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 2
  store i32 0, ptr %9, align 4
  %10 = load ptr, ptr %2, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  %12 = and i32 %11, -17
  %13 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #4, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 5000, i32 noundef 2) #4
  %14 = load ptr, ptr %2, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !8
  %16 = and i32 %15, -2
  %17 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #4, !srcloc !9
  %18 = tail call i64 @ktime_get() #4
  %19 = add i64 %18, 5000000
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr i8, ptr %20, i32 32
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %23 = and i32 %22, 32768
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %28, %1
  %26 = tail call i64 @ktime_get() #4
  %27 = icmp sgt i64 %26, %19
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  tail call void @usleep_range_state(i32 noundef 11, i32 noundef 40, i32 noundef 2) #4
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr i8, ptr %29, i32 32
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %32 = and i32 %31, 32768
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %25

34:                                               ; preds = %25
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr i8, ptr %35, i32 32
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !13
  %38 = and i32 %37, 32768
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %28, %1
  %41 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  tail call void @clk_disable(ptr noundef %42) #4
  tail call void @clk_unprepare(ptr noundef %42) #4
  br label %43

43:                                               ; preds = %40, %34
  %44 = phi i32 [ 0, %40 ], [ -110, %34 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_remove_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm_thermal_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @stm_thermal_sensor_off(ptr noundef %3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm_thermal_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @stm_thermal_prepare(ptr noundef %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @stm_sensor_power_on(ptr noundef %3)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void @thermal_zone_device_update(ptr noundef %11, i32 noundef 0) #4
  %12 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %3, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 36
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !8
  %16 = and i32 %15, -7
  %17 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %3, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = or i32 %16, 4
  %21 = select i1 %19, i32 %16, i32 %20
  %22 = getelementptr inbounds %struct.stm_thermal_sensor, ptr %3, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = or i32 %21, 2
  %26 = select i1 %24, i32 %21, i32 %25
  %27 = load ptr, ptr %12, align 4
  %28 = getelementptr i8, ptr %27, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #4, !srcloc !9
  br label %29

29:                                               ; preds = %9, %6, %1
  %30 = phi i32 [ 0, %9 ], [ %4, %1 ], [ %7, %6 ]
  ret i32 %30
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 3520592}
!9 = !{i64 3520174}
!10 = !{i64 2151824560}
!11 = !{i64 2151824900}
!12 = !{i64 2151827745}
!13 = !{i64 2151828085}
