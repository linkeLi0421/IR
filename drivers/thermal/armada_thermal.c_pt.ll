; ModuleID = '/llk/IR/drivers/thermal/armada_thermal.c_pt.bc'
source_filename = "../drivers/thermal/armada_thermal.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type {}
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.armada_thermal_data = type { ptr, i64, i64, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.armada_thermal_priv = type { ptr, ptr, [20 x i8], %struct.mutex, ptr, ptr, i32, i32, i32, i32 }
%struct.armada_drvdata = type { i32, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.armada_thermal_sensor = type { ptr, i32 }
%struct.thermal_trip = type { ptr, i32, i32, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_armada_thermal__170_976_armada_thermal_driver_init6 = internal global ptr @armada_thermal_driver_init, section ".initcall6.init", align 4
@armada_thermal_driver = internal global %struct.platform_driver { ptr @armada_thermal_probe, ptr @armada_thermal_exit, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @armada_thermal_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_armada_thermal_driver_exit = internal global ptr @armada_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [75 x i8] c"armada_thermal.author=Ezequiel Garcia <ezequiel.garcia@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [66 x i8] c"armada_thermal.description=Marvell EBU Armada SoCs thermal driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [51 x i8] c"armada_thermal.file=drivers/thermal/armada_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [30 x i8] c"armada_thermal.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"armada_thermal\00", align 1
@armada_thermal_id_table = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armadaxp-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armadaxp_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada370-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada370_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada375-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada375_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada380-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada380_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-ap806-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_ap806_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-cp110-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_cp110_data }, %struct.of_device_id zeroinitializer], align 4
@armada_thermal_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"&priv->update_lock\00", align 1
@legacy_ops = internal global %struct.thermal_zone_device_ops { ptr null, ptr null, ptr @armada_get_temp_legacy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to register thermal zone device\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Cannot request threaded IRQ %d\0A\00", align 1
@of_ops = internal constant %struct.thermal_zone_of_device_ops { ptr @armada_get_temp, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Thermal sensor %d unavailable\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Overheat interrupt not available\0A\00", align 1
@armada_thermal_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Temperature sensor reading not valid\0A\00", align 1
@armadaxp_data = internal constant %struct.armada_thermal_data { ptr @armadaxp_init, i64 3153000000, i64 10000000, i32 13825, i8 0, i8 0, i32 10, i32 511, i32 0, i32 0, i32 0, i32 0, i32 0, i32 720, i32 176, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 8
@armada370_data = internal constant %struct.armada_thermal_data { ptr @armada370_init, i64 3153000000, i64 10000000, i32 13825, i8 0, i8 0, i32 10, i32 511, i32 0, i32 0, i32 0, i32 512, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 8
@armada375_data = internal constant %struct.armada_thermal_data { ptr @armada375_init, i64 3171900000, i64 10000000, i32 13616, i8 0, i8 0, i32 0, i32 511, i32 0, i32 0, i32 0, i32 1024, i32 124, i32 128, i32 120, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 8
@armada380_data = internal constant %struct.armada_thermal_data { ptr @armada380_init, i64 1172499100, i64 2000096, i32 4201, i8 1, i8 0, i32 0, i32 1023, i32 0, i32 0, i32 0, i32 1024, i32 112, i32 116, i32 120, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 8
@armada_ap806_data = internal constant %struct.armada_thermal_data { ptr @armada_ap806_init, i64 -150000, i64 423, i32 1, i8 1, i8 1, i32 0, i32 1023, i32 3, i32 19, i32 3, i32 65536, i32 132, i32 136, i32 140, i32 264, i32 268, i32 4194304, i32 260, i32 2, i32 4 }, align 8
@armada_cp110_data = internal constant %struct.armada_thermal_data { ptr @armada_cp110_init, i64 1172499100, i64 2000096, i32 4201, i8 1, i8 0, i32 0, i32 1023, i32 16, i32 26, i32 3, i32 1024, i32 112, i32 116, i32 120, i32 264, i32 268, i32 1048576, i32 260, i32 2, i32 0 }, align 8
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_armada_thermal_driver_exit, ptr @__initcall__kmod_armada_thermal__170_976_armada_thermal_driver_init6, ptr @armada_thermal_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @armada_thermal_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @armada_thermal_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @armada_thermal_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @armada_thermal_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_thermal_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call ptr @of_match_device(ptr noundef nonnull @armada_thermal_id_table, ptr noundef %6) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %275, label %9

9:                                                ; preds = %1
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 72, i32 noundef 3520) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %275, label %12

12:                                               ; preds = %9
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 8, i32 noundef 3520) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %275, label %15

15:                                               ; preds = %12
  store ptr %6, ptr %10, align 4
  %16 = getelementptr inbounds %struct.of_device_id, ptr %7, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.armada_thermal_priv, ptr %10, i32 0, i32 4
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.armada_thermal_priv, ptr %10, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %19, ptr noundef nonnull @.str.1, ptr noundef nonnull @armada_thermal_probe.__key) #9
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 25
  %23 = load ptr, ptr %22, align 8
  %24 = tail call ptr @syscon_node_to_regmap(ptr noundef %23) #9
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %88

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load ptr, ptr %6, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi ptr [ %31, %30 ], [ %28, %26 ]
  %34 = tail call i32 @strlen(ptr noundef %33) #9
  %35 = icmp ugt i32 %34, 20
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = tail call ptr @strrchr(ptr noundef %33, i32 noundef 58) #9
  %38 = icmp eq ptr %37, null
  %39 = getelementptr i8, ptr %37, i32 1
  %40 = select i1 %38, ptr @.str, ptr %39
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi ptr [ %33, %32 ], [ %40, %36 ]
  %43 = getelementptr inbounds %struct.armada_thermal_priv, ptr %10, i32 0, i32 2
  %44 = tail call ptr @strncpy(ptr noundef %43, ptr noundef %42, i32 noundef 19) #9
  %45 = getelementptr %struct.armada_thermal_priv, ptr %10, i32 0, i32 2, i32 19
  store i8 0, ptr %45, align 1
  %46 = tail call ptr @strchr(ptr noundef %43, i32 45) #9
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %48, %41
  %49 = phi ptr [ %50, %48 ], [ %46, %41 ]
  store i8 95, ptr %49, align 1
  %50 = tail call ptr @strchr(ptr noundef %43, i32 45) #9
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %48

52:                                               ; preds = %48, %41
  %53 = load ptr, ptr %18, align 4
  %54 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %55 = tail call ptr @devm_ioremap_resource(ptr noundef %6, ptr noundef %54) #9
  %56 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  %57 = ptrtoint ptr %55 to i32
  br i1 %56, label %70, label %58

58:                                               ; preds = %52
  %59 = and i32 %57, 4095
  %60 = getelementptr inbounds %struct.armada_thermal_data, ptr %53, i32 0, i32 14
  %61 = load i32, ptr %60, align 8
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %275, label %63

63:                                               ; preds = %58
  %64 = sub i32 0, %61
  %65 = getelementptr i8, ptr %55, i32 %64
  %66 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %6, ptr noundef null, ptr noundef %65, ptr noundef nonnull @armada_thermal_regmap_config, ptr noundef null, ptr noundef null) #9
  %67 = getelementptr inbounds %struct.armada_thermal_priv, ptr %10, i32 0, i32 1
  store ptr %66, ptr %67, align 4
  %68 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  %69 = ptrtoint ptr %66 to i32
  br i1 %68, label %70, label %73

70:                                               ; preds = %63, %52
  %71 = phi i32 [ %57, %52 ], [ %69, %63 ]
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %275

73:                                               ; preds = %70, %63
  %74 = load ptr, ptr %18, align 4
  %75 = load ptr, ptr %74, align 8
  tail call void %75(ptr noundef %0, ptr noundef nonnull %10) #9
  %76 = tail call fastcc i32 @armada_wait_sensor_validity(ptr noundef nonnull %10)
  %77 = tail call ptr @thermal_zone_device_register(ptr noundef %43, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull @legacy_ops, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  %78 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2) #10
  %80 = ptrtoint ptr %77 to i32
  br label %275

81:                                               ; preds = %73
  %82 = tail call i32 @thermal_zone_device_enable(ptr noundef %77) #9
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  tail call void @thermal_zone_device_unregister(ptr noundef %77) #9
  br label %275

85:                                               ; preds = %81
  store i32 0, ptr %13, align 4
  %86 = getelementptr inbounds %struct.armada_drvdata, ptr %13, i32 0, i32 1
  store ptr %77, ptr %86, align 4
  %87 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %13, ptr %87, align 8
  br label %275

88:                                               ; preds = %15
  %89 = load ptr, ptr %20, align 4
  %90 = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 25
  %91 = load ptr, ptr %90, align 8
  %92 = tail call ptr @syscon_node_to_regmap(ptr noundef %91) #9
  %93 = getelementptr inbounds %struct.armada_thermal_priv, ptr %10, i32 0, i32 1
  store ptr %92, ptr %93, align 4
  %94 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  %95 = ptrtoint ptr %92 to i32
  br i1 %94, label %275, label %96

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.armada_thermal_priv, ptr %10, i32 0, i32 7
  store i32 -1, ptr %97, align 4
  %98 = load ptr, ptr %18, align 4
  %99 = load ptr, ptr %98, align 8
  tail call void %99(ptr noundef %0, ptr noundef nonnull %10) #9
  store i32 1, ptr %13, align 4
  %100 = getelementptr inbounds %struct.armada_drvdata, ptr %13, i32 0, i32 1
  store ptr %10, ptr %100, align 4
  %101 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %13, ptr %101, align 8
  %102 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %103 = icmp eq i32 %102, -517
  br i1 %103, label %275, label %104

104:                                              ; preds = %96
  %105 = icmp sgt i32 %102, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %104
  %107 = tail call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %102, ptr noundef nonnull @armada_overheat_isr, ptr noundef nonnull @armada_overheat_isr_thread, i32 noundef 0, ptr noundef null, ptr noundef nonnull %10) #9
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef %102) #10
  br label %275

110:                                              ; preds = %106, %104
  %111 = getelementptr inbounds %struct.armada_thermal_priv, ptr %10, i32 0, i32 5
  %112 = getelementptr inbounds %struct.armada_thermal_priv, ptr %10, i32 0, i32 8
  %113 = getelementptr inbounds %struct.armada_thermal_priv, ptr %10, i32 0, i32 9
  %114 = getelementptr inbounds %struct.armada_thermal_priv, ptr %10, i32 0, i32 6
  br label %115

115:                                              ; preds = %265, %110
  %116 = phi i32 [ 0, %110 ], [ %266, %265 ]
  %117 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 8, i32 noundef 3520) #9
  %118 = icmp eq ptr %117, null
  br i1 %118, label %275, label %119

119:                                              ; preds = %115
  store ptr %10, ptr %117, align 4
  %120 = getelementptr inbounds %struct.armada_thermal_sensor, ptr %117, i32 0, i32 1
  store i32 %116, ptr %120, align 4
  %121 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %6, i32 noundef %116, ptr noundef nonnull %117, ptr noundef nonnull @of_ops) #9
  %122 = icmp ugt ptr %121, inttoptr (i32 -4096 to ptr)
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef %116) #10
  call void @devm_kfree(ptr noundef %6, ptr noundef nonnull %117) #9
  br label %265

124:                                              ; preds = %119
  br i1 %105, label %125, label %265

125:                                              ; preds = %124
  %126 = load ptr, ptr %111, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %265

128:                                              ; preds = %125
  %129 = load i32, ptr %120, align 4
  %130 = call ptr @of_thermal_get_trip_points(ptr noundef %121) #9
  %131 = icmp eq ptr %130, null
  br i1 %131, label %265, label %132

132:                                              ; preds = %128
  %133 = call i32 @of_thermal_get_ntrips(ptr noundef %121) #9
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %140, %132
  %136 = phi i32 [ %141, %140 ], [ 0, %132 ]
  %137 = getelementptr %struct.thermal_trip, ptr %130, i32 %136, i32 3
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 3
  br i1 %139, label %144, label %140

140:                                              ; preds = %135
  %141 = add nuw nsw i32 %136, 1
  %142 = call i32 @of_thermal_get_ntrips(ptr noundef %121) #9
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %135, label %144

144:                                              ; preds = %140, %135, %132
  %145 = phi i32 [ 0, %132 ], [ %141, %140 ], [ %136, %135 ]
  %146 = call i32 @of_thermal_get_ntrips(ptr noundef %121) #9
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %265, label %148

148:                                              ; preds = %144
  %149 = call fastcc i32 @armada_select_channel(ptr noundef %10, i32 noundef %129) #9
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %265

151:                                              ; preds = %148
  %152 = getelementptr %struct.thermal_trip, ptr %130, i32 %145, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr %struct.thermal_trip, ptr %130, i32 %145, i32 2
  %155 = load i32, ptr %154, align 4
  %156 = load ptr, ptr %18, align 4
  %157 = getelementptr inbounds %struct.armada_thermal_data, ptr %156, i32 0, i32 1
  %158 = load i64, ptr %157, align 8
  %159 = getelementptr inbounds %struct.armada_thermal_data, ptr %156, i32 0, i32 2
  %160 = load i64, ptr %159, align 8
  %161 = getelementptr inbounds %struct.armada_thermal_data, ptr %156, i32 0, i32 3
  %162 = load i32, ptr %161, align 8
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.armada_thermal_data, ptr %156, i32 0, i32 4
  %165 = load i8, ptr %164, align 4, !range !8
  %166 = icmp eq i8 %165, 0
  %167 = zext i32 %153 to i64
  %168 = mul nuw i64 %163, %167
  br i1 %166, label %174, label %169

169:                                              ; preds = %151
  %170 = add i64 %168, %158
  %171 = trunc i64 %160 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %172 = call i64 @div_s64_rem(i64 noundef %170, i32 noundef %171, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %173 = trunc i64 %172 to i32
  br label %179

174:                                              ; preds = %151
  %175 = sub i64 %158, %168
  %176 = trunc i64 %160 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %177 = call i64 @div_s64_rem(i64 noundef %175, i32 noundef %176, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %178 = trunc i64 %177 to i32
  br label %179

179:                                              ; preds = %174, %169
  %180 = phi i32 [ %178, %174 ], [ %173, %169 ]
  %181 = getelementptr inbounds %struct.armada_thermal_data, ptr %156, i32 0, i32 7
  %182 = load i32, ptr %181, align 4
  %183 = and i32 %182, %180
  %184 = icmp ult i32 %155, 15200
  br i1 %184, label %185, label %190

185:                                              ; preds = %179
  %186 = icmp ult i32 %155, 7600
  br i1 %186, label %187, label %190

187:                                              ; preds = %185
  %188 = icmp ugt i32 %155, 3799
  %189 = zext i1 %188 to i32
  br label %190

190:                                              ; preds = %187, %185, %179
  %191 = phi i32 [ 3, %179 ], [ 2, %185 ], [ %189, %187 ]
  %192 = getelementptr inbounds %struct.armada_thermal_data, ptr %156, i32 0, i32 10
  %193 = load i32, ptr %192, align 8
  %194 = and i32 %193, %191
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %195 = load ptr, ptr %93, align 4
  %196 = getelementptr inbounds %struct.armada_thermal_data, ptr %156, i32 0, i32 13
  %197 = load i32, ptr %196, align 4
  %198 = call i32 @regmap_read(ptr noundef %195, i32 noundef %197, ptr noundef nonnull %5) #9
  %199 = icmp sgt i32 %153, -1
  br i1 %199, label %200, label %210

200:                                              ; preds = %190
  %201 = load i32, ptr %181, align 4
  %202 = getelementptr inbounds %struct.armada_thermal_data, ptr %156, i32 0, i32 8
  %203 = load i32, ptr %202, align 8
  %204 = shl i32 %201, %203
  %205 = xor i32 %204, -1
  %206 = load i32, ptr %5, align 4
  %207 = and i32 %206, %205
  %208 = shl i32 %183, %203
  %209 = or i32 %207, %208
  store i32 %209, ptr %5, align 4
  store i32 %153, ptr %112, align 4
  br label %210

210:                                              ; preds = %200, %190
  %211 = icmp sgt i32 %155, -1
  br i1 %211, label %214, label %212

212:                                              ; preds = %210
  %213 = load i32, ptr %5, align 4
  br label %224

214:                                              ; preds = %210
  %215 = load i32, ptr %192, align 8
  %216 = getelementptr inbounds %struct.armada_thermal_data, ptr %156, i32 0, i32 9
  %217 = load i32, ptr %216, align 4
  %218 = shl i32 %215, %217
  %219 = xor i32 %218, -1
  %220 = load i32, ptr %5, align 4
  %221 = and i32 %220, %219
  %222 = shl i32 %194, %217
  %223 = or i32 %221, %222
  store i32 %223, ptr %5, align 4
  store i32 %155, ptr %113, align 4
  br label %224

224:                                              ; preds = %214, %212
  %225 = phi i32 [ %213, %212 ], [ %223, %214 ]
  %226 = load ptr, ptr %93, align 4
  %227 = load i32, ptr %196, align 4
  %228 = call i32 @regmap_write(ptr noundef %226, i32 noundef %227, i32 noundef %225) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  store ptr %121, ptr %111, align 4
  store i32 %129, ptr %114, align 4
  %229 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !9
  %230 = load ptr, ptr %93, align 4
  %231 = getelementptr inbounds %struct.armada_thermal_data, ptr %229, i32 0, i32 15
  %232 = load i32, ptr %231, align 4
  %233 = call i32 @regmap_read(ptr noundef %230, i32 noundef %232, ptr noundef nonnull %2) #9
  %234 = load ptr, ptr %93, align 4
  %235 = getelementptr inbounds %struct.armada_thermal_data, ptr %229, i32 0, i32 16
  %236 = load i32, ptr %235, align 8
  %237 = call i32 @regmap_read(ptr noundef %234, i32 noundef %236, ptr noundef nonnull %2) #9
  %238 = getelementptr inbounds %struct.armada_thermal_data, ptr %229, i32 0, i32 17
  %239 = load i32, ptr %238, align 4
  %240 = load i32, ptr %2, align 4
  %241 = or i32 %240, %239
  store i32 %241, ptr %2, align 4
  %242 = load ptr, ptr %93, align 4
  %243 = load i32, ptr %235, align 8
  %244 = call i32 @regmap_write(ptr noundef %242, i32 noundef %243, i32 noundef %241) #9
  %245 = load ptr, ptr %93, align 4
  %246 = getelementptr inbounds %struct.armada_thermal_data, ptr %229, i32 0, i32 18
  %247 = load i32, ptr %246, align 8
  %248 = call i32 @regmap_read(ptr noundef %245, i32 noundef %247, ptr noundef nonnull %2) #9
  %249 = getelementptr inbounds %struct.armada_thermal_data, ptr %229, i32 0, i32 19
  %250 = load i32, ptr %249, align 4
  %251 = load i32, ptr %2, align 4
  %252 = or i32 %251, %250
  store i32 %252, ptr %2, align 4
  %253 = load ptr, ptr %93, align 4
  %254 = load i32, ptr %246, align 8
  %255 = call i32 @regmap_write(ptr noundef %253, i32 noundef %254, i32 noundef %252) #9
  %256 = load ptr, ptr %93, align 4
  %257 = getelementptr inbounds %struct.armada_thermal_data, ptr %229, i32 0, i32 13
  %258 = load i32, ptr %257, align 4
  %259 = call i32 @regmap_read(ptr noundef %256, i32 noundef %258, ptr noundef nonnull %2) #9
  %260 = load i32, ptr %2, align 4
  %261 = or i32 %260, 33554432
  store i32 %261, ptr %2, align 4
  %262 = load ptr, ptr %93, align 4
  %263 = load i32, ptr %257, align 4
  %264 = call i32 @regmap_write(ptr noundef %262, i32 noundef %263, i32 noundef %261) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %265

265:                                              ; preds = %224, %148, %144, %128, %125, %124, %123
  %266 = add i32 %116, 1
  %267 = load ptr, ptr %18, align 4
  %268 = getelementptr inbounds %struct.armada_thermal_data, ptr %267, i32 0, i32 20
  %269 = load i32, ptr %268, align 8
  %270 = icmp ugt i32 %266, %269
  br i1 %270, label %271, label %115

271:                                              ; preds = %265
  %272 = load ptr, ptr %111, align 4
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %275

274:                                              ; preds = %271
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.5) #10
  br label %275

275:                                              ; preds = %274, %271, %115, %109, %96, %88, %85, %84, %79, %70, %58, %12, %9, %1
  %276 = phi i32 [ %80, %79 ], [ %82, %84 ], [ 0, %85 ], [ %107, %109 ], [ -19, %1 ], [ -12, %9 ], [ -12, %12 ], [ %71, %70 ], [ %95, %88 ], [ -517, %96 ], [ 0, %274 ], [ 0, %271 ], [ -22, %58 ], [ -12, %115 ]
  ret i32 %276
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_thermal_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.armada_drvdata, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @thermal_zone_device_unregister(ptr noundef %8) #9
  br label %9

9:                                                ; preds = %6, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @armada_wait_sensor_validity(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = tail call i64 @ktime_get() #9
  %4 = add i64 %3, 100000000
  %5 = getelementptr inbounds %struct.armada_thermal_priv, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.armada_thermal_priv, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %5, align 4
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.armada_thermal_data, ptr %8, i32 0, i32 14
  %10 = load i32, ptr %9, align 8
  %11 = call i32 @regmap_read(ptr noundef %7, i32 noundef %10, ptr noundef nonnull %2) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %23, %1
  %14 = load i32, ptr %2, align 4
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.armada_thermal_data, ptr %15, i32 0, i32 11
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, %14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %13
  %21 = call i64 @ktime_get() #9
  %22 = icmp sgt i64 %21, %4
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #9
  %24 = load ptr, ptr %5, align 4
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr inbounds %struct.armada_thermal_data, ptr %25, i32 0, i32 14
  %27 = load i32, ptr %26, align 8
  %28 = call i32 @regmap_read(ptr noundef %24, i32 noundef %27, ptr noundef nonnull %2) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %13, label %45

30:                                               ; preds = %20
  %31 = load ptr, ptr %5, align 4
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.armada_thermal_data, ptr %32, i32 0, i32 14
  %34 = load i32, ptr %33, align 8
  %35 = call i32 @regmap_read(ptr noundef %31, i32 noundef %34, ptr noundef nonnull %2) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load i32, ptr %2, align 4
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr inbounds %struct.armada_thermal_data, ptr %39, i32 0, i32 11
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, %38
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 -110, i32 0
  br label %45

45:                                               ; preds = %37, %30, %23, %13, %1
  %46 = phi i32 [ %35, %30 ], [ %11, %1 ], [ %44, %37 ], [ %28, %23 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_device_register(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_overheat_isr(i32 noundef %0, ptr nocapture noundef readnone %1) #2 {
  tail call void @disable_irq_nosync(i32 noundef %0) #9
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_overheat_isr_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %6, %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %10 = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void @thermal_zone_device_update(ptr noundef %11, i32 noundef 0) #9
  %12 = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 3
  br label %13

13:                                               ; preds = %13, %2
  tail call void @msleep(i32 noundef 1000) #9
  tail call void @mutex_lock(ptr noundef %12) #9
  call fastcc void @armada_read_sensor(ptr noundef %1, ptr noundef nonnull %3)
  tail call void @mutex_unlock(ptr noundef %12) #9
  %14 = load i32, ptr %3, align 4
  %15 = icmp slt i32 %14, %9
  br i1 %15, label %16, label %13

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.armada_thermal_data, ptr %20, i32 0, i32 15
  %22 = load i32, ptr %21, align 4
  %23 = call i32 @regmap_read(ptr noundef %18, i32 noundef %22, ptr noundef nonnull %4) #9
  %24 = load ptr, ptr %10, align 4
  call void @thermal_zone_device_update(ptr noundef %24, i32 noundef 0) #9
  call void @enable_irq(i32 noundef %0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_get_temp_legacy(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.armada_thermal_priv, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.armada_thermal_data, ptr %7, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %26

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.armada_thermal_priv, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.armada_thermal_data, ptr %7, i32 0, i32 14
  %16 = load i32, ptr %15, align 8
  %17 = call i32 @regmap_read(ptr noundef %14, i32 noundef %16, ptr noundef nonnull %3) #9
  %18 = load i32, ptr %3, align 4
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr inbounds %struct.armada_thermal_data, ptr %19, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, %18
  %23 = icmp eq i32 %22, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  %25 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.7) #10
  br label %27

26:                                               ; preds = %12, %11
  call fastcc void @armada_read_sensor(ptr noundef %5, ptr noundef %1)
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ 0, %26 ], [ -5, %24 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @armada_read_sensor(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.armada_thermal_priv, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.armada_thermal_priv, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.armada_thermal_data, ptr %9, i32 0, i32 14
  %11 = load i32, ptr %10, align 8
  %12 = call i32 @regmap_read(ptr noundef %7, i32 noundef %11, ptr noundef nonnull %5) #9
  %13 = load i32, ptr %5, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr inbounds %struct.armada_thermal_data, ptr %14, i32 0, i32 6
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %13, %16
  %18 = getelementptr inbounds %struct.armada_thermal_data, ptr %14, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %17, %19
  store i32 %20, ptr %5, align 4
  %21 = getelementptr inbounds %struct.armada_thermal_data, ptr %14, i32 0, i32 5
  %22 = load i8, ptr %21, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = call i32 @llvm.ctlz.i32(i32 %19, i1 false) #9, !range !10
  %26 = shl i32 %20, %25
  %27 = ashr i32 %26, %25
  %28 = sext i32 %27 to i64
  br label %31

29:                                               ; preds = %2
  %30 = zext i32 %20 to i64
  br label %31

31:                                               ; preds = %29, %24
  %32 = phi i64 [ %28, %24 ], [ %30, %29 ]
  %33 = getelementptr inbounds %struct.armada_thermal_data, ptr %14, i32 0, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds %struct.armada_thermal_data, ptr %14, i32 0, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds %struct.armada_thermal_data, ptr %14, i32 0, i32 3
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.armada_thermal_data, ptr %14, i32 0, i32 4
  %40 = load i8, ptr %39, align 4, !range !8
  %41 = icmp eq i8 %40, 0
  %42 = mul i64 %36, %32
  br i1 %41, label %47, label %43

43:                                               ; preds = %31
  %44 = sub i64 %42, %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %45 = call i64 @div_s64_rem(i64 noundef %44, i32 noundef %38, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %46 = trunc i64 %45 to i32
  br label %51

47:                                               ; preds = %31
  %48 = sub i64 %34, %42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %49 = call i64 @div_s64_rem(i64 noundef %48, i32 noundef %38, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %50 = trunc i64 %49 to i32
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i32 [ %50, %47 ], [ %46, %43 ]
  store i32 %52, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_get_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.armada_thermal_priv, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.armada_thermal_sensor, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call fastcc i32 @armada_select_channel(ptr noundef %3, i32 noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  tail call fastcc void @armada_read_sensor(ptr noundef %3, ptr noundef %1)
  %10 = getelementptr inbounds %struct.armada_thermal_priv, ptr %3, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = tail call fastcc i32 @armada_select_channel(ptr noundef %3, i32 noundef %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i32 [ %7, %2 ], [ %12, %9 ]
  tail call void @mutex_unlock(ptr noundef %4) #9
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @armada_select_channel(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.armada_thermal_priv, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = icmp slt i32 %1, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.armada_thermal_data, ptr %5, i32 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = icmp ult i32 %9, %1
  br i1 %10, label %47, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.armada_thermal_priv, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %47, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.armada_thermal_priv, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.armada_thermal_data, ptr %5, i32 0, i32 12
  %19 = load i32, ptr %18, align 8
  %20 = call i32 @regmap_read(ptr noundef %17, i32 noundef %19, ptr noundef nonnull %3) #9
  %21 = load i32, ptr %3, align 4
  %22 = and i32 %21, -2
  store i32 %22, ptr %3, align 4
  %23 = load ptr, ptr %16, align 4
  %24 = load i32, ptr %18, align 8
  %25 = call i32 @regmap_write(ptr noundef %23, i32 noundef %24, i32 noundef %22) #9
  %26 = load i32, ptr %3, align 4
  %27 = and i32 %26, 1073741823
  %28 = icmp eq i32 %1, 0
  %29 = and i32 %26, 1073618943
  %30 = shl i32 %1, 13
  %31 = add i32 %30, 2147475456
  %32 = or i32 %31, %29
  %33 = or i32 %32, -2147483648
  %34 = select i1 %28, i32 %27, i32 %33
  store i32 %34, ptr %3, align 4
  %35 = load ptr, ptr %16, align 4
  %36 = load i32, ptr %18, align 8
  %37 = call i32 @regmap_write(ptr noundef %35, i32 noundef %36, i32 noundef %34) #9
  store i32 %1, ptr %12, align 4
  %38 = load i32, ptr %3, align 4
  %39 = or i32 %38, 1
  store i32 %39, ptr %3, align 4
  %40 = load ptr, ptr %16, align 4
  %41 = load i32, ptr %18, align 8
  %42 = call i32 @regmap_write(ptr noundef %40, i32 noundef %41, i32 noundef %39) #9
  %43 = call fastcc i32 @armada_wait_sensor_validity(ptr noundef %0)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %15
  %46 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.7) #10
  br label %47

47:                                               ; preds = %45, %15, %11, %7, %2
  %48 = phi i32 [ -5, %45 ], [ -22, %7 ], [ -22, %2 ], [ 0, %11 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_thermal_get_trip_points(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_thermal_get_ntrips(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armadaxp_init(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.armada_thermal_data, ptr %5, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = call i32 @regmap_read(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %3) #9
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, -1074788355
  %13 = or i32 %12, 1074235394
  store i32 %13, ptr %3, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = load i32, ptr %8, align 4
  %16 = call i32 @regmap_write(ptr noundef %14, i32 noundef %15, i32 noundef %13) #9
  %17 = load i32, ptr %3, align 4
  %18 = and i32 %17, -3
  store i32 %18, ptr %3, align 4
  %19 = load ptr, ptr %6, align 4
  %20 = load i32, ptr %8, align 4
  %21 = call i32 @regmap_write(ptr noundef %19, i32 noundef %20, i32 noundef %18) #9
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr inbounds %struct.armada_thermal_data, ptr %5, i32 0, i32 14
  %24 = load i32, ptr %23, align 8
  %25 = call i32 @regmap_read(ptr noundef %22, i32 noundef %24, ptr noundef nonnull %3) #9
  %26 = load i32, ptr %3, align 4
  %27 = and i32 %26, -2
  store i32 %27, ptr %3, align 4
  %28 = load ptr, ptr %6, align 4
  %29 = load i32, ptr %23, align 8
  %30 = call i32 @regmap_write(ptr noundef %28, i32 noundef %29, i32 noundef %27) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armada370_init(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.armada_thermal_data, ptr %5, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = call i32 @regmap_read(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %3) #9
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, -1108342785
  %13 = or i32 %12, 1074235392
  store i32 %13, ptr %3, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = load i32, ptr %8, align 4
  %16 = call i32 @regmap_write(ptr noundef %14, i32 noundef %15, i32 noundef %13) #9
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armada375_init(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.armada_thermal_data, ptr %5, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = call i32 @regmap_read(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %3) #9
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, -939557121
  store i32 %12, ptr %3, align 4
  %13 = load ptr, ptr %6, align 4
  %14 = load i32, ptr %8, align 4
  %15 = call i32 @regmap_write(ptr noundef %13, i32 noundef %14, i32 noundef %12) #9
  call void @msleep(i32 noundef 20) #9
  %16 = load i32, ptr %3, align 4
  %17 = or i32 %16, 256
  store i32 %17, ptr %3, align 4
  %18 = load ptr, ptr %6, align 4
  %19 = load i32, ptr %8, align 4
  %20 = call i32 @regmap_write(ptr noundef %18, i32 noundef %19, i32 noundef %17) #9
  call void @msleep(i32 noundef 50) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armada380_init(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.armada_thermal_data, ptr %5, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = call i32 @regmap_read(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %3) #9
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, -385
  %13 = or i32 %12, 256
  store i32 %13, ptr %3, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = load i32, ptr %8, align 4
  %16 = call i32 @regmap_write(ptr noundef %14, i32 noundef %15, i32 noundef %13) #9
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.armada_thermal_data, ptr %5, i32 0, i32 12
  %19 = load i32, ptr %18, align 8
  %20 = call i32 @regmap_read(ptr noundef %17, i32 noundef %19, ptr noundef nonnull %3) #9
  %21 = load i32, ptr %3, align 4
  %22 = and i32 %21, -8
  %23 = or i32 %22, 3
  store i32 %23, ptr %3, align 4
  %24 = load ptr, ptr %6, align 4
  %25 = load i32, ptr %18, align 8
  %26 = call i32 @regmap_write(ptr noundef %24, i32 noundef %25, i32 noundef %23) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armada_ap806_init(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.armada_thermal_data, ptr %5, i32 0, i32 12
  %9 = load i32, ptr %8, align 8
  %10 = call i32 @regmap_read(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %3) #9
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, -50331720
  %13 = or i32 %12, 50331653
  store i32 %13, ptr %3, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = load i32, ptr %8, align 8
  %16 = call i32 @regmap_write(ptr noundef %14, i32 noundef %15, i32 noundef %13) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armada_cp110_init(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.armada_thermal_data, ptr %6, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %3) #9
  %12 = load i32, ptr %3, align 4
  %13 = and i32 %12, -385
  %14 = or i32 %13, 256
  store i32 %14, ptr %3, align 4
  %15 = load ptr, ptr %7, align 4
  %16 = load i32, ptr %9, align 4
  %17 = call i32 @regmap_write(ptr noundef %15, i32 noundef %16, i32 noundef %14) #9
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr inbounds %struct.armada_thermal_data, ptr %6, i32 0, i32 12
  %20 = load i32, ptr %19, align 8
  %21 = call i32 @regmap_read(ptr noundef %18, i32 noundef %20, ptr noundef nonnull %3) #9
  %22 = load i32, ptr %3, align 4
  %23 = and i32 %22, -8
  %24 = or i32 %23, 3
  store i32 %24, ptr %3, align 4
  %25 = load ptr, ptr %7, align 4
  %26 = load i32, ptr %19, align 8
  %27 = call i32 @regmap_write(ptr noundef %25, i32 noundef %26, i32 noundef %24) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %28 = load ptr, ptr %7, align 4
  %29 = load i32, ptr %19, align 8
  %30 = call i32 @regmap_read(ptr noundef %28, i32 noundef %29, ptr noundef nonnull %4) #9
  %31 = load i32, ptr %4, align 4
  %32 = or i32 %31, 50331648
  store i32 %32, ptr %4, align 4
  %33 = load ptr, ptr %7, align 4
  %34 = load i32, ptr %19, align 8
  %35 = call i32 @regmap_write(ptr noundef %33, i32 noundef %34, i32 noundef %32) #9
  %36 = load ptr, ptr %7, align 4
  %37 = load i32, ptr %9, align 4
  %38 = call i32 @regmap_read(ptr noundef %36, i32 noundef %37, ptr noundef nonnull %4) #9
  %39 = load i32, ptr %4, align 4
  %40 = and i32 %39, -8
  %41 = or i32 %40, 1
  store i32 %41, ptr %4, align 4
  %42 = load ptr, ptr %7, align 4
  %43 = load i32, ptr %9, align 4
  %44 = call i32 @regmap_write(ptr noundef %42, i32 noundef %43, i32 noundef %41) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @strchr(ptr, i32) local_unnamed_addr #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{i32 0, i32 33}
