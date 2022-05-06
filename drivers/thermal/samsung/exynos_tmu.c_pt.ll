; ModuleID = '/llk/IR/drivers/thermal/samsung/exynos_tmu.c_pt.bc'
source_filename = "../drivers/thermal/samsung/exynos_tmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.exynos_tmu_data = type { i32, ptr, ptr, i32, i32, %struct.work_struct, %struct.mutex, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i8, i8, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_trip = type { ptr, i32, i32, i32 }

@__initcall__kmod_exynos_thermal__249_1190_exynos_tmu_driver_init6 = internal global ptr @exynos_tmu_driver_init, section ".initcall6.init", align 4
@exynos_tmu_driver = internal global %struct.platform_driver { ptr @exynos_tmu_probe, ptr @exynos_tmu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_tmu_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_tmu_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_exynos_tmu_driver_exit = internal global ptr @exynos_tmu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description250 = internal constant [45 x i8] c"exynos_thermal.description=Exynos TMU Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [58 x i8] c"exynos_thermal.author=Donggeun Kim <dg77.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [59 x i8] c"exynos_thermal.file=drivers/thermal/samsung/exynos_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [27 x i8] c"exynos_thermal.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias254 = internal constant [41 x i8] c"exynos_thermal.alias=platform:exynos-tmu\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"exynos-tmu\00", align 1
@exynos_tmu_match = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4412-tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5260-tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-tmu-ext-triminfo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@exynos_tmu_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @exynos_tmu_suspend, ptr @exynos_tmu_resume, ptr @exynos_tmu_suspend, ptr @exynos_tmu_resume, ptr @exynos_tmu_suspend, ptr @exynos_tmu_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@exynos_tmu_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&data->lock\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"vtmu\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to enable vtmu\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Regulator node (vtmu) not found\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"tmu_apbif\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Failed to get clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"tmu_triminfo_apbif\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Failed to get triminfo clock\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"tmu_sclk\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Failed to get sclk\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Failed to enable sclk\0A\00", align 1
@exynos_sensor_ops = internal constant %struct.thermal_zone_of_device_ops { ptr @exynos_get_temp, ptr null, ptr null, ptr @exynos_tmu_set_emulation, ptr null }, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"Failed to register sensor: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Failed to initialize TMU\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Failed to request irq: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"tmuctrl\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"failed to get IRQ\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"failed to get Resource 0\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"Failed to ioremap memory\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Platform not supported\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"failed to get Resource 1\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"Temperature sensor ID: 0x%x\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"Calibration type is %d-point calibration\0A\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"Cannot get trip points from device tree!\0A\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"No CRITICAL trip point defined in device tree!\0A\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"More trip points than supported by this TMU.\0A\00", align 1
@.str.26 = private unnamed_addr constant [54 x i8] c"%d trip points should be configured in polling mode.\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias254, ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_exynos_tmu_driver_exit, ptr @__initcall__kmod_exynos_thermal__249_1190_exynos_tmu_driver_init6, ptr @exynos_tmu_driver_exit], section "llvm.metadata"
@switch.table.exynos4210_tmu_clear_irqs = private unnamed_addr constant [5 x i32] [i32 200, i32 120, i32 120, i32 200, i32 280], align 4
@switch.table.exynos4210_tmu_clear_irqs.27 = private unnamed_addr constant [5 x i32] [i32 196, i32 116, i32 116, i32 200, i32 280], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exynos_tmu_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_tmu_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos_tmu_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_tmu_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_tmu_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.resource, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 136, i32 noundef 3520) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %239, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %7, align 8
  %8 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @exynos_tmu_probe.__key) #8
  %9 = tail call ptr @devm_regulator_get_optional(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  %10 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 18
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = tail call i32 @regulator_enable(ptr noundef %9) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #9
  br label %239

16:                                               ; preds = %6
  %17 = icmp eq ptr %9, inttoptr (i32 -517 to ptr)
  br i1 %17, label %239, label %18

18:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.4) #9
  br label %19

19:                                               ; preds = %18, %12
  %20 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false) #8, !annotation !8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %128, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %128, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @of_alias_get_id(ptr noundef nonnull %24, ptr noundef nonnull @.str.15) #8
  %28 = tail call i32 @llvm.smax.i32(i32 %27, i32 0) #8
  store i32 %28, ptr %20, align 4
  %29 = load ptr, ptr %23, align 8
  %30 = tail call i32 @irq_of_parse_and_map(ptr noundef %29, i32 noundef 0) #8
  %31 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 3
  store i32 %30, ptr %31, align 4
  %32 = icmp slt i32 %30, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16) #9
  br label %128

34:                                               ; preds = %26
  %35 = load ptr, ptr %23, align 8
  %36 = call i32 @of_address_to_resource(ptr noundef %35, i32 noundef 0, ptr noundef nonnull %2) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17) #9
  br label %128

39:                                               ; preds = %34
  %40 = load i32, ptr %2, align 4
  %41 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = sub i32 1, %40
  %44 = add i32 %43, %42
  %45 = call ptr @devm_ioremap(ptr noundef %3, i32 noundef %40, i32 noundef %44) #8
  %46 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 1
  store ptr %45, ptr %46, align 4
  %47 = icmp eq ptr %45, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18) #9
  br label %128

49:                                               ; preds = %39
  %50 = call ptr @of_device_get_match_data(ptr noundef %3) #8
  %51 = ptrtoint ptr %50 to i32
  %52 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 4
  store i32 %51, ptr %52, align 4
  switch i32 %51, label %106 [
    i32 2, label %53
    i32 1, label %64
    i32 3, label %64
    i32 4, label %64
    i32 5, label %64
    i32 6, label %64
    i32 7, label %64
    i32 8, label %79
    i32 9, label %94
  ]

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 22
  store ptr @exynos4210_tmu_set_trip_temp, ptr %54, align 4
  %55 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 23
  store ptr @exynos4210_tmu_set_trip_hyst, ptr %55, align 4
  %56 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 24
  store ptr @exynos4210_tmu_initialize, ptr %56, align 4
  %57 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 25
  store ptr @exynos4210_tmu_control, ptr %57, align 4
  %58 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 26
  store ptr @exynos4210_tmu_read, ptr %58, align 4
  %59 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 28
  store ptr @exynos4210_tmu_clear_irqs, ptr %59, align 4
  %60 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 20
  store i32 4, ptr %60, align 4
  %61 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 16
  store i8 15, ptr %61, align 4
  %62 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 17
  store i8 7, ptr %62, align 1
  %63 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 11
  store i32 55, ptr %63, align 4
  br label %107

64:                                               ; preds = %49, %49, %49, %49, %49, %49
  %65 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 22
  store ptr @exynos4412_tmu_set_trip_temp, ptr %65, align 4
  %66 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 23
  store ptr @exynos4412_tmu_set_trip_hyst, ptr %66, align 4
  %67 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 24
  store ptr @exynos4412_tmu_initialize, ptr %67, align 4
  %68 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 25
  store ptr @exynos4210_tmu_control, ptr %68, align 4
  %69 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 26
  store ptr @exynos4412_tmu_read, ptr %69, align 4
  %70 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 27
  store ptr null, ptr %70, align 4
  %71 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 28
  store ptr @exynos4210_tmu_clear_irqs, ptr %71, align 4
  %72 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 20
  store i32 4, ptr %72, align 4
  %73 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 16
  store i8 8, ptr %73, align 4
  %74 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 17
  store i8 16, ptr %74, align 1
  %75 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 11
  store i32 55, ptr %75, align 4
  %76 = and i32 %51, -2
  %77 = icmp eq i32 %76, 6
  %78 = select i1 %77, i32 0, i32 40
  br label %107

79:                                               ; preds = %49
  %80 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 22
  store ptr @exynos5433_tmu_set_trip_temp, ptr %80, align 4
  %81 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 23
  store ptr @exynos5433_tmu_set_trip_hyst, ptr %81, align 4
  %82 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 24
  store ptr @exynos5433_tmu_initialize, ptr %82, align 4
  %83 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 25
  store ptr @exynos5433_tmu_control, ptr %83, align 4
  %84 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 26
  store ptr @exynos4412_tmu_read, ptr %84, align 4
  %85 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 27
  store ptr null, ptr %85, align 4
  %86 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 28
  store ptr @exynos4210_tmu_clear_irqs, ptr %86, align 4
  %87 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 20
  store i32 8, ptr %87, align 4
  %88 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 16
  store i8 8, ptr %88, align 4
  %89 = load i32, ptr %2, align 4
  %90 = icmp eq i32 %89, 268894208
  %91 = select i1 %90, i8 23, i8 16
  %92 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 17
  store i8 %91, ptr %92, align 1
  %93 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 11
  store i32 75, ptr %93, align 4
  br label %107

94:                                               ; preds = %49
  %95 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 22
  store ptr @exynos7_tmu_set_trip_temp, ptr %95, align 4
  %96 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 23
  store ptr @exynos7_tmu_set_trip_hyst, ptr %96, align 4
  %97 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 24
  store ptr @exynos7_tmu_initialize, ptr %97, align 4
  %98 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 25
  store ptr @exynos7_tmu_control, ptr %98, align 4
  %99 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 26
  store ptr @exynos7_tmu_read, ptr %99, align 4
  %100 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 27
  store ptr null, ptr %100, align 4
  %101 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 28
  store ptr @exynos4210_tmu_clear_irqs, ptr %101, align 4
  %102 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 20
  store i32 8, ptr %102, align 4
  %103 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 16
  store i8 9, ptr %103, align 4
  %104 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 17
  store i8 17, ptr %104, align 1
  %105 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 11
  store i32 75, ptr %105, align 4
  br label %107

106:                                              ; preds = %49
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19) #9
  br label %128

107:                                              ; preds = %94, %79, %64, %53
  %108 = phi i32 [ 15, %94 ], [ 40, %79 ], [ %78, %64 ], [ 40, %53 ]
  %109 = phi i32 [ 100, %94 ], [ 150, %79 ], [ 100, %64 ], [ 100, %53 ]
  %110 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 12
  store i32 %108, ptr %110, align 4
  %111 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 13
  store i32 %109, ptr %111, align 4
  %112 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 10
  store i32 0, ptr %112, align 4
  %113 = icmp eq ptr %50, inttoptr (i32 7 to ptr)
  br i1 %113, label %114, label %130

114:                                              ; preds = %107
  %115 = load ptr, ptr %23, align 8
  %116 = call i32 @of_address_to_resource(ptr noundef %115, i32 noundef 1, ptr noundef nonnull %2) #8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.20) #9
  br label %128

119:                                              ; preds = %114
  %120 = load i32, ptr %2, align 4
  %121 = load i32, ptr %41, align 4
  %122 = sub i32 1, %120
  %123 = add i32 %122, %121
  %124 = call ptr @devm_ioremap(ptr noundef %3, i32 noundef %120, i32 noundef %123) #8
  %125 = getelementptr inbounds %struct.exynos_tmu_data, ptr %20, i32 0, i32 2
  store ptr %124, ptr %125, align 4
  %126 = icmp eq ptr %124, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18) #9
  br label %128

128:                                              ; preds = %127, %118, %106, %48, %38, %33, %22, %19
  %129 = phi i32 [ -19, %19 ], [ -19, %22 ], [ -99, %48 ], [ -12, %127 ], [ -19, %118 ], [ -22, %106 ], [ -19, %38 ], [ -19, %33 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  br label %233

130:                                              ; preds = %119, %107
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  %131 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 5
  store i32 -32, ptr %131, align 4
  %132 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 5, i32 1
  store volatile ptr %132, ptr %132, align 4
  %133 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 5, i32 1, i32 1
  store ptr %132, ptr %133, align 4
  %134 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 5, i32 2
  store ptr @exynos_tmu_work, ptr %134, align 4
  %135 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.5) #8
  %136 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 7
  store ptr %135, ptr %136, align 4
  %137 = icmp ugt ptr %135, inttoptr (i32 -4096 to ptr)
  br i1 %137, label %138, label %141

138:                                              ; preds = %130
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #9
  %139 = load ptr, ptr %136, align 4
  %140 = ptrtoint ptr %139 to i32
  br label %233

141:                                              ; preds = %130
  %142 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.7) #8
  %143 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 8
  store ptr %142, ptr %143, align 4
  %144 = icmp ugt ptr %142, inttoptr (i32 -4096 to ptr)
  br i1 %144, label %145, label %152

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 4
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 7
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #9
  %150 = load ptr, ptr %143, align 4
  %151 = ptrtoint ptr %150 to i32
  br label %233

152:                                              ; preds = %141
  %153 = call i32 @clk_prepare(ptr noundef %142) #8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %152
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #9
  br label %233

156:                                              ; preds = %152, %145
  %157 = load ptr, ptr %136, align 4
  %158 = call i32 @clk_prepare(ptr noundef %157) #8
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %156
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #9
  br label %228

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 4
  %163 = load i32, ptr %162, align 4
  %164 = and i32 %163, -2
  %165 = icmp eq i32 %164, 8
  br i1 %165, label %166, label %182

166:                                              ; preds = %161
  %167 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.9) #8
  %168 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 9
  store ptr %167, ptr %168, align 4
  %169 = icmp ugt ptr %167, inttoptr (i32 -4096 to ptr)
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #9
  %171 = load ptr, ptr %168, align 4
  %172 = ptrtoint ptr %171 to i32
  br label %225

173:                                              ; preds = %166
  %174 = call i32 @clk_prepare(ptr noundef %167) #8
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = call i32 @clk_enable(ptr noundef %167) #8
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %176
  call void @clk_unprepare(ptr noundef %167) #8
  br label %180

180:                                              ; preds = %179, %173
  %181 = phi i32 [ %177, %179 ], [ %174, %173 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11) #9
  br label %225

182:                                              ; preds = %176, %161
  %183 = call ptr @thermal_zone_of_sensor_register(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull @exynos_sensor_ops) #8
  %184 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 19
  store ptr %183, ptr %184, align 4
  %185 = icmp ugt ptr %183, inttoptr (i32 -4096 to ptr)
  br i1 %185, label %186, label %190

186:                                              ; preds = %182
  %187 = icmp eq ptr %183, inttoptr (i32 -517 to ptr)
  br i1 %187, label %221, label %188

188:                                              ; preds = %186
  %189 = ptrtoint ptr %183 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef %189) #9
  br label %221

190:                                              ; preds = %182
  %191 = call fastcc i32 @exynos_tmu_initialize(ptr noundef %0)
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %190
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13) #9
  br label %218

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 3
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %202

200:                                              ; preds = %194
  %201 = load ptr, ptr %3, align 4
  br label %202

202:                                              ; preds = %200, %194
  %203 = phi ptr [ %201, %200 ], [ %198, %194 ]
  %204 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %196, ptr noundef nonnull @exynos_tmu_irq, ptr noundef null, i32 noundef 129, ptr noundef %203, ptr noundef nonnull %4) #8
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %202
  %207 = load i32, ptr %195, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %207) #9
  br label %218

208:                                              ; preds = %202
  %209 = load ptr, ptr %7, align 8
  %210 = getelementptr inbounds %struct.exynos_tmu_data, ptr %209, i32 0, i32 6
  call void @mutex_lock(ptr noundef %210) #8
  %211 = getelementptr inbounds %struct.exynos_tmu_data, ptr %209, i32 0, i32 7
  %212 = load ptr, ptr %211, align 4
  %213 = call i32 @clk_enable(ptr noundef %212) #8
  %214 = getelementptr inbounds %struct.exynos_tmu_data, ptr %209, i32 0, i32 25
  %215 = load ptr, ptr %214, align 4
  call void %215(ptr noundef %0, i1 noundef zeroext true) #8
  %216 = getelementptr inbounds %struct.exynos_tmu_data, ptr %209, i32 0, i32 21
  store i8 1, ptr %216, align 4
  %217 = load ptr, ptr %211, align 4
  call void @clk_disable(ptr noundef %217) #8
  call void @mutex_unlock(ptr noundef %210) #8
  br label %239

218:                                              ; preds = %206, %193
  %219 = phi i32 [ %191, %193 ], [ %204, %206 ]
  %220 = load ptr, ptr %184, align 4
  call void @thermal_zone_of_sensor_unregister(ptr noundef %3, ptr noundef %220) #8
  br label %221

221:                                              ; preds = %218, %188, %186
  %222 = phi i32 [ %189, %188 ], [ -517, %186 ], [ %219, %218 ]
  %223 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 9
  %224 = load ptr, ptr %223, align 4
  call void @clk_disable(ptr noundef %224) #8
  call void @clk_unprepare(ptr noundef %224) #8
  br label %225

225:                                              ; preds = %221, %180, %170
  %226 = phi i32 [ %222, %221 ], [ %172, %170 ], [ %181, %180 ]
  %227 = load ptr, ptr %136, align 4
  call void @clk_unprepare(ptr noundef %227) #8
  br label %228

228:                                              ; preds = %225, %160
  %229 = phi i32 [ %158, %160 ], [ %226, %225 ]
  %230 = load ptr, ptr %143, align 4
  %231 = icmp ugt ptr %230, inttoptr (i32 -4096 to ptr)
  br i1 %231, label %233, label %232

232:                                              ; preds = %228
  call void @clk_unprepare(ptr noundef %230) #8
  br label %233

233:                                              ; preds = %232, %228, %155, %149, %138, %128
  %234 = phi i32 [ %140, %138 ], [ %151, %149 ], [ %229, %228 ], [ %229, %232 ], [ %153, %155 ], [ %129, %128 ]
  %235 = load ptr, ptr %10, align 4
  %236 = icmp ugt ptr %235, inttoptr (i32 -4096 to ptr)
  br i1 %236, label %239, label %237

237:                                              ; preds = %233
  %238 = call i32 @regulator_disable(ptr noundef %235) #8
  br label %239

239:                                              ; preds = %237, %233, %208, %16, %15, %1
  %240 = phi i32 [ 0, %208 ], [ %13, %15 ], [ -12, %1 ], [ -517, %16 ], [ %234, %237 ], [ %234, %233 ]
  ret i32 %240
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_tmu_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @thermal_zone_of_sensor_unregister(ptr noundef %6, ptr noundef %5) #8
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.exynos_tmu_data, ptr %7, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.exynos_tmu_data, ptr %7, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_enable(ptr noundef %10) #8
  %12 = getelementptr inbounds %struct.exynos_tmu_data, ptr %7, i32 0, i32 25
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %0, i1 noundef zeroext false) #8
  %14 = getelementptr inbounds %struct.exynos_tmu_data, ptr %7, i32 0, i32 21
  store i8 0, ptr %14, align 4
  %15 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %15) #8
  tail call void @mutex_unlock(ptr noundef %8) #8
  %16 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #8
  tail call void @clk_unprepare(ptr noundef %17) #8
  %18 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  tail call void @clk_unprepare(ptr noundef %19) #8
  %20 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  tail call void @clk_unprepare(ptr noundef %21) #8
  br label %24

24:                                               ; preds = %23, %1
  %25 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 18
  %26 = load ptr, ptr %25, align 4
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @regulator_disable(ptr noundef %26) #8
  br label %30

30:                                               ; preds = %28, %24
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_tmu_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 76
  %4 = load ptr, ptr %3, align 4
  tail call void @thermal_zone_device_update(ptr noundef %4, i32 noundef 0) #8
  %5 = getelementptr i8, ptr %0, i32 16
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr i8, ptr %0, i32 36
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_enable(ptr noundef %7) #8
  %9 = getelementptr i8, ptr %0, i32 112
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %2) #8
  %11 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @mutex_unlock(ptr noundef %5) #8
  %12 = getelementptr i8, ptr %0, i32 -8
  %13 = load i32, ptr %12, align 4
  tail call void @enable_irq(i32 noundef %13) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @exynos_tmu_initialize(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.exynos_tmu_data, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @of_thermal_get_trip_points(ptr noundef %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.23) #9
  br label %97

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.exynos_tmu_data, ptr %5, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.thermal_zone_device, ptr %7, i32 0, i32 20
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %18, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 %20(ptr noundef %7, ptr noundef nonnull %2) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.24) #9
  br label %97

25:                                               ; preds = %16, %12
  %26 = call i32 @of_thermal_get_ntrips(ptr noundef %7) #8
  %27 = getelementptr inbounds %struct.exynos_tmu_data, ptr %5, i32 0, i32 20
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %26, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.25) #9
  %32 = call i32 @of_thermal_get_ntrips(ptr noundef %7) #8
  %33 = load i32, ptr %27, align 4
  %34 = sub i32 %32, %33
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.26, i32 noundef %34) #9
  br label %35

35:                                               ; preds = %30, %25
  %36 = getelementptr inbounds %struct.exynos_tmu_data, ptr %5, i32 0, i32 6
  call void @mutex_lock(ptr noundef %36) #8
  %37 = getelementptr inbounds %struct.exynos_tmu_data, ptr %5, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 @clk_enable(ptr noundef %38) #8
  %40 = getelementptr inbounds %struct.exynos_tmu_data, ptr %5, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %45, label %43

43:                                               ; preds = %35
  %44 = call i32 @clk_enable(ptr noundef %41) #8
  br label %45

45:                                               ; preds = %43, %35
  %46 = getelementptr inbounds %struct.exynos_tmu_data, ptr %5, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 40
  %49 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %48) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %91, label %51

51:                                               ; preds = %45
  %52 = call i32 @of_thermal_get_ntrips(ptr noundef %7) #8
  %53 = load i32, ptr %27, align 4
  %54 = call i32 @llvm.smin.i32(i32 %52, i32 %53)
  %55 = getelementptr inbounds %struct.exynos_tmu_data, ptr %5, i32 0, i32 24
  %56 = load ptr, ptr %55, align 4
  call void %56(ptr noundef %0) #8
  %57 = icmp sgt i32 %54, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.thermal_zone_device, ptr %7, i32 0, i32 20
  %60 = getelementptr inbounds %struct.exynos_tmu_data, ptr %5, i32 0, i32 22
  %61 = getelementptr inbounds %struct.exynos_tmu_data, ptr %5, i32 0, i32 23
  br label %62

62:                                               ; preds = %79, %58
  %63 = phi i32 [ 0, %58 ], [ %86, %79 ]
  %64 = load ptr, ptr %59, align 4
  %65 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %64, i32 0, i32 6
  %66 = load ptr, ptr %65, align 4
  %67 = call i32 %66(ptr noundef %7, i32 noundef %63, ptr noundef nonnull %2) #8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %62
  %70 = load i32, ptr %2, align 4
  %71 = sdiv i32 %70, 1000
  store i32 %71, ptr %2, align 4
  %72 = load ptr, ptr %60, align 4
  %73 = trunc i32 %71 to i8
  call void %72(ptr noundef %5, i32 noundef %63, i8 noundef zeroext %73) #8
  %74 = load ptr, ptr %59, align 4
  %75 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %74, i32 0, i32 8
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 %76(ptr noundef %7, i32 noundef %63, ptr noundef nonnull %3) #8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %69
  %80 = load i32, ptr %3, align 4
  %81 = sdiv i32 %80, 1000
  store i32 %81, ptr %3, align 4
  %82 = load ptr, ptr %61, align 4
  %83 = load i32, ptr %2, align 4
  %84 = trunc i32 %83 to i8
  %85 = trunc i32 %81 to i8
  call void %82(ptr noundef %5, i32 noundef %63, i8 noundef zeroext %84, i8 noundef zeroext %85) #8
  %86 = add nuw nsw i32 %63, 1
  %87 = icmp eq i32 %86, %54
  br i1 %87, label %88, label %62

88:                                               ; preds = %79, %51
  %89 = getelementptr inbounds %struct.exynos_tmu_data, ptr %5, i32 0, i32 28
  %90 = load ptr, ptr %89, align 4
  call void %90(ptr noundef %5) #8
  br label %91

91:                                               ; preds = %88, %69, %62, %45
  %92 = phi i32 [ -16, %45 ], [ 0, %88 ], [ %77, %69 ], [ %67, %62 ]
  %93 = load ptr, ptr %37, align 4
  call void @clk_disable(ptr noundef %93) #8
  call void @mutex_unlock(ptr noundef %36) #8
  %94 = load ptr, ptr %40, align 4
  %95 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  call void @clk_disable(ptr noundef %94) #8
  br label %97

97:                                               ; preds = %96, %91, %23, %10
  %98 = phi i32 [ -19, %10 ], [ %21, %23 ], [ %92, %91 ], [ %92, %96 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_tmu_irq(i32 noundef %0, ptr noundef %1) #2 {
  tail call void @disable_irq_nosync(i32 noundef %0) #8
  %3 = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr @system_wq, align 4
  %5 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %3) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_of_sensor_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos4210_tmu_set_trip_temp(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) #2 {
  %4 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @of_thermal_get_trip_points(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.thermal_trip, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = sdiv i32 %8, 1000
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %9, 255
  br i1 %14, label %16, label %22

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 14
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = add nsw i32 %15, -25
  %21 = add nsw i32 %20, %19
  br label %34

22:                                               ; preds = %11
  %23 = add nsw i32 %15, -25
  %24 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 15
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 14
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = sub nsw i32 %26, %29
  %31 = mul nsw i32 %30, %23
  %32 = sdiv i32 %31, 60
  %33 = add nsw i32 %32, %29
  br label %34

34:                                               ; preds = %22, %16
  %35 = phi i32 [ %21, %16 ], [ %33, %22 ]
  %36 = trunc i32 %35 to i8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %37 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %39, i8 %36) #8, !srcloc !12
  br label %40

40:                                               ; preds = %34, %3
  %41 = trunc i32 %9 to i8
  %42 = sub i8 %2, %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %43 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 80
  %46 = shl i32 %1, 2
  %47 = getelementptr i8, ptr %45, i32 %46
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %47, i8 %42) #8, !srcloc !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @exynos4210_tmu_set_trip_hyst(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #6 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos4210_tmu_initialize(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %7 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 9
  %10 = select i1 %9, i32 511, i32 255
  %11 = and i32 %10, %6
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 14
  store i16 %12, ptr %13, align 4
  %14 = trunc i32 %6 to i16
  %15 = lshr i16 %14, 8
  %16 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 15
  store i16 %15, ptr %16, align 2
  %17 = icmp eq i16 %12, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 12
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, %11
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 13
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %11, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22, %18, %1
  %27 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 11
  %28 = load i32, ptr %27, align 4
  %29 = trunc i32 %28 to i16
  %30 = and i16 %29, 255
  store i16 %30, ptr %13, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = icmp ult i16 %14, 256
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  %36 = trunc i32 %35 to i16
  %37 = lshr i16 %36, 8
  store i16 %37, ptr %16, align 2
  br label %38

38:                                               ; preds = %33, %31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos4210_tmu_control(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %11 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %15 [
    i32 3, label %13
    i32 1, label %13
  ]

13:                                               ; preds = %2, %2
  %14 = or i32 %10, 6291456
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi i32 [ %14, %13 ], [ %10, %2 ]
  %17 = and i32 %16, -520154881
  %18 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 17
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 %20, 24
  %22 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 16
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = and i32 %25, 7936
  %27 = or i32 %21, %17
  %28 = or i32 %27, %26
  br i1 %1, label %29, label %54

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 20
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %33, %29
  %34 = phi i32 [ %40, %33 ], [ 0, %29 ]
  %35 = phi i32 [ %41, %33 ], [ 0, %29 ]
  %36 = tail call zeroext i1 @of_thermal_is_trip_valid(ptr noundef %6, i32 noundef %35) #8
  %37 = shl i32 %35, 2
  %38 = shl nuw i32 1, %37
  %39 = select i1 %36, i32 %38, i32 0
  %40 = or i32 %39, %34
  %41 = add nuw i32 %35, 1
  %42 = load i32, ptr %30, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %33, label %44

44:                                               ; preds = %33
  %45 = load i32, ptr %11, align 4
  br label %46

46:                                               ; preds = %44, %29
  %47 = phi i32 [ %12, %29 ], [ %45, %44 ]
  %48 = phi i32 [ 0, %29 ], [ %40, %44 ]
  %49 = icmp eq i32 %47, 2
  %50 = shl i32 %48, 16
  %51 = select i1 %49, i32 0, i32 %50
  %52 = or i32 %51, %48
  %53 = or i32 %28, 32769
  br label %57

54:                                               ; preds = %15
  %55 = and i32 %28, -57346
  %56 = or i32 %55, 32768
  br label %57

57:                                               ; preds = %54, %46
  %58 = phi i32 [ %52, %46 ], [ 0, %54 ]
  %59 = phi i32 [ %53, %46 ], [ %56, %54 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %60 = load ptr, ptr %7, align 4
  %61 = getelementptr i8, ptr %60, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %58) #8, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %62 = load ptr, ptr %7, align 4
  %63 = getelementptr i8, ptr %62, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %59) #8, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos4210_tmu_read(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !20
  %6 = zext i8 %5 to i32
  %7 = add i8 %5, 80
  %8 = icmp ult i8 %7, -101
  %9 = select i1 %8, i32 -61, i32 %6
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos4210_tmu_clear_irqs(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -5
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds [5 x i32], ptr @switch.table.exynos4210_tmu_clear_irqs, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds [5 x i32], ptr @switch.table.exynos4210_tmu_clear_irqs.27, i32 0, i32 %4
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i32 [ %8, %6 ], [ 120, %1 ]
  %13 = phi i32 [ %10, %6 ], [ 116, %1 ]
  %14 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %13
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr i8, ptr %18, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #8, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos4412_tmu_set_trip_temp(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) #2 {
  %4 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 80
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %8 = shl i32 %1, 3
  %9 = shl i32 255, %8
  %10 = xor i32 %9, -1
  %11 = and i32 %7, %10
  %12 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i8 %2 to i32
  br i1 %14, label %16, label %22

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 14
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = add nsw i32 %15, -25
  %21 = add nsw i32 %20, %19
  br label %34

22:                                               ; preds = %3
  %23 = add nsw i32 %15, -25
  %24 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 15
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 14
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = sub nsw i32 %26, %29
  %31 = mul nsw i32 %30, %23
  %32 = sdiv i32 %31, 60
  %33 = add nsw i32 %32, %29
  br label %34

34:                                               ; preds = %22, %16
  %35 = phi i32 [ %21, %16 ], [ %33, %22 ]
  %36 = shl i32 %35, %8
  %37 = or i32 %36, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr i8, ptr %38, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #8, !srcloc !18
  %40 = icmp eq i32 %1, 3
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr i8, ptr %42, i32 32
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  %45 = or i32 %44, 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !26
  tail call void @arm_heavy_mb() #8
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr i8, ptr %46, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #8, !srcloc !18
  br label %48

48:                                               ; preds = %41, %34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos4412_tmu_set_trip_hyst(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 84
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  %9 = shl i32 %1, 3
  %10 = shl i32 255, %9
  %11 = xor i32 %10, -1
  %12 = and i32 %8, %11
  %13 = icmp eq i8 %3, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %4
  %15 = sub i8 %2, %3
  %16 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i8 %15 to i32
  br i1 %18, label %20, label %26

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 14
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = add nsw i32 %19, -25
  %25 = add nsw i32 %24, %23
  br label %38

26:                                               ; preds = %14
  %27 = add nsw i32 %19, -25
  %28 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 15
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 14
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = sub nsw i32 %30, %33
  %35 = mul nsw i32 %34, %27
  %36 = sdiv i32 %35, 60
  %37 = add nsw i32 %36, %33
  br label %38

38:                                               ; preds = %26, %20
  %39 = phi i32 [ %25, %20 ], [ %37, %26 ]
  %40 = shl i32 %39, %9
  %41 = or i32 %40, %12
  br label %42

42:                                               ; preds = %38, %4
  %43 = phi i32 [ %41, %38 ], [ %12, %4 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !28
  tail call void @arm_heavy_mb() #8
  %44 = load ptr, ptr %5, align 4
  %45 = getelementptr i8, ptr %44, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #8, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos4412_tmu_initialize(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %23 [
    i32 1, label %6
    i32 3, label %14
    i32 4, label %14
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !29
  %11 = or i32 %10, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #8, !srcloc !18
  br label %14

14:                                               ; preds = %6, %1, %1
  %15 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 20
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !31
  %19 = or i32 %18, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !32
  tail call void @arm_heavy_mb() #8
  %20 = load ptr, ptr %15, align 4
  %21 = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #8, !srcloc !18
  %22 = load i32, ptr %4, align 4
  br label %23

23:                                               ; preds = %14, %1
  %24 = phi i32 [ %5, %1 ], [ %22, %14 ]
  %25 = icmp eq i32 %24, 7
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !33
  br label %34

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !34
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i32 [ %29, %26 ], [ %33, %30 ]
  %36 = load i32, ptr %4, align 4
  %37 = icmp eq i32 %36, 9
  %38 = select i1 %37, i32 511, i32 255
  %39 = and i32 %38, %35
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 14
  store i16 %40, ptr %41, align 4
  %42 = trunc i32 %35 to i16
  %43 = lshr i16 %42, 8
  %44 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 15
  store i16 %43, ptr %44, align 2
  %45 = icmp eq i16 %40, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 12
  %48 = load i32, ptr %47, align 4
  %49 = icmp ugt i32 %48, %39
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 13
  %52 = load i32, ptr %51, align 4
  %53 = icmp ugt i32 %39, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50, %46, %34
  %55 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 11
  %56 = load i32, ptr %55, align 4
  %57 = trunc i32 %56 to i16
  %58 = and i16 %57, 255
  store i16 %58, ptr %41, align 4
  br label %59

59:                                               ; preds = %54, %50
  %60 = icmp ult i16 %42, 256
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 11
  %63 = load i32, ptr %62, align 4
  %64 = trunc i32 %63 to i16
  %65 = lshr i16 %64, 8
  store i16 %65, ptr %44, align 2
  br label %66

66:                                               ; preds = %61, %59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos4412_tmu_read(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !35
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos5433_tmu_set_trip_temp(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) #2 {
  %4 = icmp sgt i32 %1, 3
  %5 = select i1 %4, i32 84, i32 80
  %6 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 %5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !36
  %10 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = zext i8 %2 to i32
  br i1 %12, label %14, label %20

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 14
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = add nsw i32 %13, -25
  %19 = add nsw i32 %18, %17
  br label %32

20:                                               ; preds = %3
  %21 = add nsw i32 %13, -25
  %22 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 15
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 14
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i32
  %28 = sub nsw i32 %24, %27
  %29 = mul nsw i32 %28, %21
  %30 = sdiv i32 %29, 60
  %31 = add nsw i32 %30, %27
  br label %32

32:                                               ; preds = %20, %14
  %33 = phi i32 [ %19, %14 ], [ %31, %20 ]
  %34 = shl i32 %1, 3
  %35 = add i32 %34, -32
  %36 = select i1 %4, i32 %35, i32 %34
  %37 = shl i32 255, %36
  %38 = xor i32 %37, -1
  %39 = and i32 %9, %38
  %40 = shl i32 %33, %36
  %41 = or i32 %40, %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !37
  tail call void @arm_heavy_mb() #8
  %42 = load ptr, ptr %6, align 4
  %43 = getelementptr i8, ptr %42, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #8, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos5433_tmu_set_trip_hyst(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #2 {
  %5 = icmp sgt i32 %1, 3
  %6 = select i1 %5, i32 100, i32 96
  %7 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !38
  %11 = sub i8 %2, %3
  %12 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i8 %11 to i32
  br i1 %14, label %16, label %22

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 14
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = add nsw i32 %15, -25
  %21 = add nsw i32 %20, %19
  br label %34

22:                                               ; preds = %4
  %23 = add nsw i32 %15, -25
  %24 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 15
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 14
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = sub nsw i32 %26, %29
  %31 = mul nsw i32 %30, %23
  %32 = sdiv i32 %31, 60
  %33 = add nsw i32 %32, %29
  br label %34

34:                                               ; preds = %22, %16
  %35 = phi i32 [ %21, %16 ], [ %33, %22 ]
  %36 = shl i32 %1, 3
  %37 = add i32 %36, -32
  %38 = select i1 %5, i32 %37, i32 %36
  %39 = shl i32 255, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %10, %40
  %42 = shl i32 %35, %38
  %43 = or i32 %42, %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !39
  tail call void @arm_heavy_mb() #8
  %44 = load ptr, ptr %7, align 4
  %45 = getelementptr i8, ptr %44, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #8, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos5433_tmu_initialize(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !40
  %7 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 9
  %10 = select i1 %9, i32 511, i32 255
  %11 = and i32 %10, %6
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 14
  store i16 %12, ptr %13, align 4
  %14 = trunc i32 %6 to i16
  %15 = lshr i16 %14, 8
  %16 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 15
  store i16 %15, ptr %16, align 2
  %17 = icmp eq i16 %12, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 12
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, %11
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 13
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %11, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22, %18, %1
  %27 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 11
  %28 = load i32, ptr %27, align 4
  %29 = trunc i32 %28 to i16
  %30 = and i16 %29, 255
  store i16 %30, ptr %13, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = icmp ult i16 %14, 256
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  %36 = trunc i32 %35 to i16
  %37 = lshr i16 %36, 8
  store i16 %37, ptr %16, align 2
  br label %38

38:                                               ; preds = %33, %31
  %39 = lshr i32 %6, 16
  %40 = and i32 %39, 15
  %41 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.21, i32 noundef %40) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %42 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %6) #8, !srcloc !18
  %43 = and i32 %6, 8388608
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 0, i32 3
  %46 = select i1 %44, i32 1, i32 2
  %47 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 10
  store i32 %45, ptr %47, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.22, i32 noundef %46) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos5433_tmu_control(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !42
  %11 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %15 [
    i32 3, label %13
    i32 1, label %13
  ]

13:                                               ; preds = %2, %2
  %14 = or i32 %10, 6291456
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi i32 [ %14, %13 ], [ %10, %2 ]
  %17 = and i32 %16, -520154881
  %18 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 17
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 %20, 24
  %22 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 16
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = and i32 %25, 7936
  %27 = or i32 %21, %17
  %28 = or i32 %27, %26
  br i1 %1, label %29, label %48

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 20
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %33, %29
  %34 = phi i32 [ %39, %33 ], [ 0, %29 ]
  %35 = phi i32 [ %40, %33 ], [ 0, %29 ]
  %36 = tail call zeroext i1 @of_thermal_is_trip_valid(ptr noundef %6, i32 noundef %35) #8
  %37 = shl nuw i32 1, %35
  %38 = select i1 %36, i32 %37, i32 0
  %39 = or i32 %38, %34
  %40 = add nuw i32 %35, 1
  %41 = load i32, ptr %30, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %33, label %43

43:                                               ; preds = %33, %29
  %44 = phi i32 [ 0, %29 ], [ %39, %33 ]
  %45 = shl i32 %44, 16
  %46 = or i32 %45, %44
  %47 = or i32 %28, 32769
  br label %51

48:                                               ; preds = %15
  %49 = and i32 %28, -57346
  %50 = or i32 %49, 32768
  br label %51

51:                                               ; preds = %48, %43
  %52 = phi i32 [ %46, %43 ], [ 0, %48 ]
  %53 = phi i32 [ %47, %43 ], [ %50, %48 ]
  %54 = zext i1 %1 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !43
  tail call void @arm_heavy_mb() #8
  %55 = load ptr, ptr %7, align 4
  %56 = getelementptr i8, ptr %55, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #8, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !44
  tail call void @arm_heavy_mb() #8
  %57 = load ptr, ptr %7, align 4
  %58 = getelementptr i8, ptr %57, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %52) #8, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !45
  tail call void @arm_heavy_mb() #8
  %59 = load ptr, ptr %7, align 4
  %60 = getelementptr i8, ptr %59, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %53) #8, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos7_tmu_set_trip_temp(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) #2 {
  %4 = sub i32 7, %1
  %5 = sdiv i32 %4, 2
  %6 = shl i32 %5, 2
  %7 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 80
  %10 = getelementptr i8, ptr %9, i32 %6
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !46
  %12 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i8 %2 to i32
  br i1 %14, label %16, label %22

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 14
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = add nsw i32 %15, -25
  %21 = add nsw i32 %20, %19
  br label %34

22:                                               ; preds = %3
  %23 = add nsw i32 %15, -25
  %24 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 15
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 14
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = sub nsw i32 %26, %29
  %31 = mul nsw i32 %30, %23
  %32 = sdiv i32 %31, 60
  %33 = add nsw i32 %32, %29
  br label %34

34:                                               ; preds = %22, %16
  %35 = phi i32 [ %21, %16 ], [ %33, %22 ]
  %36 = sub i32 8, %1
  %37 = srem i32 %36, 2
  %38 = shl nsw i32 %37, 4
  %39 = shl i32 511, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %11, %40
  %42 = shl i32 %35, %38
  %43 = or i32 %42, %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  %44 = load ptr, ptr %7, align 4
  %45 = getelementptr i8, ptr %44, i32 80
  %46 = getelementptr i8, ptr %45, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %43) #8, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos7_tmu_set_trip_hyst(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #2 {
  %5 = sub i32 7, %1
  %6 = sdiv i32 %5, 2
  %7 = shl i32 %6, 2
  %8 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 96
  %11 = getelementptr i8, ptr %10, i32 %7
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !48
  %13 = sub i8 %2, %3
  %14 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i8 %13 to i32
  br i1 %16, label %18, label %24

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 14
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = add nsw i32 %17, -25
  %23 = add nsw i32 %22, %21
  br label %36

24:                                               ; preds = %4
  %25 = add nsw i32 %17, -25
  %26 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 15
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 14
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  %32 = sub nsw i32 %28, %31
  %33 = mul nsw i32 %32, %25
  %34 = sdiv i32 %33, 60
  %35 = add nsw i32 %34, %31
  br label %36

36:                                               ; preds = %24, %18
  %37 = phi i32 [ %23, %18 ], [ %35, %24 ]
  %38 = sub i32 8, %1
  %39 = srem i32 %38, 2
  %40 = shl nsw i32 %39, 4
  %41 = shl i32 511, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %12, %42
  %44 = shl i32 %37, %40
  %45 = or i32 %44, %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !49
  tail call void @arm_heavy_mb() #8
  %46 = load ptr, ptr %8, align 4
  %47 = getelementptr i8, ptr %46, i32 96
  %48 = getelementptr i8, ptr %47, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %45) #8, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos7_tmu_initialize(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !50
  %7 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 9
  %10 = select i1 %9, i32 511, i32 255
  %11 = and i32 %10, %6
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 14
  store i16 %12, ptr %13, align 4
  %14 = trunc i32 %6 to i16
  %15 = lshr i16 %14, 8
  %16 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 15
  store i16 %15, ptr %16, align 2
  %17 = icmp eq i16 %12, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 12
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, %11
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 13
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %11, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22, %18, %1
  %27 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 11
  %28 = load i32, ptr %27, align 4
  %29 = trunc i32 %28 to i16
  %30 = and i16 %29, 255
  store i16 %30, ptr %13, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = icmp ult i16 %14, 256
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  %36 = trunc i32 %35 to i16
  %37 = lshr i16 %36, 8
  store i16 %37, ptr %16, align 2
  br label %38

38:                                               ; preds = %33, %31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos7_tmu_control(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !51
  %11 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %15 [
    i32 3, label %13
    i32 1, label %13
  ]

13:                                               ; preds = %2, %2
  %14 = or i32 %10, 6291456
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi i32 [ %14, %13 ], [ %10, %2 ]
  %17 = and i32 %16, -520154881
  %18 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 17
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 %20, 24
  %22 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 16
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = and i32 %25, 7936
  %27 = or i32 %21, %17
  %28 = or i32 %27, %26
  br i1 %1, label %29, label %48

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 20
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %33, %29
  %34 = phi i32 [ %39, %33 ], [ 0, %29 ]
  %35 = phi i32 [ %40, %33 ], [ 0, %29 ]
  %36 = tail call zeroext i1 @of_thermal_is_trip_valid(ptr noundef %6, i32 noundef %35) #8
  %37 = shl nuw i32 1, %35
  %38 = select i1 %36, i32 %37, i32 0
  %39 = or i32 %38, %34
  %40 = add nuw i32 %35, 1
  %41 = load i32, ptr %30, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %33, label %43

43:                                               ; preds = %33, %29
  %44 = phi i32 [ 0, %29 ], [ %39, %33 ]
  %45 = shl i32 %44, 16
  %46 = or i32 %45, %44
  %47 = or i32 %28, 8421377
  br label %51

48:                                               ; preds = %15
  %49 = and i32 %28, -8445954
  %50 = or i32 %49, 32768
  br label %51

51:                                               ; preds = %48, %43
  %52 = phi i32 [ %46, %43 ], [ 0, %48 ]
  %53 = phi i32 [ %47, %43 ], [ %50, %48 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %54 = load ptr, ptr %7, align 4
  %55 = getelementptr i8, ptr %54, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %52) #8, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr i8, ptr %56, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %53) #8, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos7_tmu_read(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #8, !srcloc !54
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !55
  %6 = and i16 %5, 511
  %7 = zext i16 %6 to i32
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_thermal_get_trip_points(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_thermal_is_trip_valid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_get_temp(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 26
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 21
  %10 = load i8, ptr %9, align 4, !range !56
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %13) #8
  %14 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_enable(ptr noundef %15) #8
  %17 = load ptr, ptr %5, align 4
  %18 = tail call i32 %17(ptr noundef nonnull %0) #8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %18, 65535
  %25 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 14
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i32
  %28 = sub nsw i32 %24, %27
  br i1 %23, label %36, label %29

29:                                               ; preds = %20
  %30 = mul nsw i32 %28, 60
  %31 = getelementptr inbounds %struct.exynos_tmu_data, ptr %0, i32 0, i32 15
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = sub nsw i32 %33, %27
  %35 = sdiv i32 %30, %34
  br label %36

36:                                               ; preds = %29, %20
  %37 = phi i32 [ %35, %29 ], [ %28, %20 ]
  %38 = mul i32 %37, 1000
  %39 = add i32 %38, 25000
  store i32 %39, ptr %1, align 4
  br label %40

40:                                               ; preds = %36, %12
  %41 = phi i32 [ 0, %36 ], [ %18, %12 ]
  %42 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %42) #8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %43

43:                                               ; preds = %40, %8, %4, %2
  %44 = phi i32 [ %41, %40 ], [ -22, %4 ], [ -22, %2 ], [ -11, %8 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @exynos_tmu_set_emulation(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_thermal_get_ntrips(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_tmu_suspend(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_enable(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 25
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %2, i1 noundef zeroext false) #8
  %11 = getelementptr inbounds %struct.exynos_tmu_data, ptr %4, i32 0, i32 21
  store i8 0, ptr %11, align 4
  %12 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %12) #8
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_tmu_resume(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = tail call fastcc i32 @exynos_tmu_initialize(ptr noundef %2)
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.exynos_tmu_data, ptr %5, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.exynos_tmu_data, ptr %5, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_enable(ptr noundef %8) #8
  %10 = getelementptr inbounds %struct.exynos_tmu_data, ptr %5, i32 0, i32 25
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %2, i1 noundef zeroext true) #8
  %12 = getelementptr inbounds %struct.exynos_tmu_data, ptr %5, i32 0, i32 21
  store i8 1, ptr %12, align 4
  %13 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %13) #8
  tail call void @mutex_unlock(ptr noundef %6) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = !{i64 1750612}
!10 = !{i64 2153654090}
!11 = !{i64 2153656283}
!12 = !{i64 1750217}
!13 = !{i64 2153656544}
!14 = !{i64 1750832}
!15 = !{i64 2153656946}
!16 = !{i64 2153666485}
!17 = !{i64 2153666693}
!18 = !{i64 1750414}
!19 = !{i64 2153667030}
!20 = !{i64 2153669761}
!21 = !{i64 2153671950}
!22 = !{i64 2153672147}
!23 = !{i64 2153657285}
!24 = !{i64 2153657474}
!25 = !{i64 2153657940}
!26 = !{i64 2153658133}
!27 = !{i64 2153658601}
!28 = !{i64 2153658790}
!29 = !{i64 2153659256}
!30 = !{i64 2153659449}
!31 = !{i64 2153659919}
!32 = !{i64 2153660112}
!33 = !{i64 2153660599}
!34 = !{i64 2153660934}
!35 = !{i64 2153669972}
!36 = !{i64 2153661289}
!37 = !{i64 2153661476}
!38 = !{i64 2153661961}
!39 = !{i64 2153662148}
!40 = !{i64 2153662613}
!41 = !{i64 2153663459}
!42 = !{i64 2153667498}
!43 = !{i64 2153667707}
!44 = !{i64 2153668050}
!45 = !{i64 2153668388}
!46 = !{i64 2153664758}
!47 = !{i64 2153664963}
!48 = !{i64 2153665469}
!49 = !{i64 2153665674}
!50 = !{i64 2153666146}
!51 = !{i64 2153668856}
!52 = !{i64 2153669072}
!53 = !{i64 2153669410}
!54 = !{i64 1749994}
!55 = !{i64 2153670311}
!56 = !{i8 0, i8 2}
