; ModuleID = '/llk/IR/drivers/thermal/rcar_thermal.c_pt.bc'
source_filename = "../drivers/thermal/rcar_thermal.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rcar_thermal_chip = type { i8, i32, i32 }
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
%struct.rcar_thermal_common = type { ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rcar_thermal_priv = type { ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, %struct.list_head, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rcar_thermal__171_633_rcar_thermal_driver_init6 = internal global ptr @rcar_thermal_driver_init, section ".initcall6.init", align 4
@rcar_thermal_driver = internal global %struct.platform_driver { ptr @rcar_thermal_probe, ptr @rcar_thermal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_thermal_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_thermal_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_rcar_thermal_driver_exit = internal global ptr @rcar_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file172 = internal constant [47 x i8] c"rcar_thermal.file=drivers/thermal/rcar_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [28 x i8] c"rcar_thermal.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [61 x i8] c"rcar_thermal.description=R-Car THS/TSC thermal sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author175 = internal constant [73 x i8] c"rcar_thermal.author=Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"rcar_thermal\00", align 1
@rcar_thermal_dt_ids = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_thermal }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_thermal }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,thermal-r8a774c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_thermal }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,thermal-r8a77970\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_thermal }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,thermal-r8a77990\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_thermal }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,thermal-r8a77995\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_thermal }, %struct.of_device_id zeroinitializer], align 4
@rcar_thermal_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @rcar_thermal_suspend, ptr @rcar_thermal_resume, ptr @rcar_thermal_suspend, ptr @rcar_thermal_resume, ptr @rcar_thermal_suspend, ptr @rcar_thermal_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"irq request failed\0A \00", align 1
@rcar_thermal_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"&priv->lock\00", align 1
@rcar_thermal_zone_of_ops = internal constant %struct.thermal_zone_of_device_ops { ptr @rcar_thermal_of_get_temp, ptr null, ptr null, ptr null, ptr null }, align 4
@rcar_thermal_zone_ops = internal global %struct.thermal_zone_device_ops { ptr null, ptr null, ptr @rcar_thermal_get_temp, ptr null, ptr null, ptr @rcar_thermal_get_trip_type, ptr @rcar_thermal_get_trip_temp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"can't register thermal zone\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%d sensor probed\0A\00", align 1
@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"thermal sensor was broken\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"rcar driver trip error\0A\00", align 1
@rcar_thermal = internal constant %struct.rcar_thermal_chip { i8 2, i32 1, i32 1 }, align 4
@rcar_gen2_thermal = internal constant %struct.rcar_thermal_chip { i8 3, i32 1, i32 1 }, align 4
@rcar_gen3_thermal = internal constant %struct.rcar_thermal_chip { i8 13, i32 2, i32 2 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_rcar_thermal_driver_exit, ptr @__initcall__kmod_rcar_thermal__171_633_rcar_thermal_driver_init6, ptr @rcar_thermal_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rcar_thermal_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_thermal_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rcar_thermal_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_thermal_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_thermal_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #4
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 20, i32 noundef 3520) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %174, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %7, align 8
  %8 = getelementptr inbounds %struct.rcar_thermal_common, ptr %4, i32 0, i32 2
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.rcar_thermal_common, ptr %4, i32 0, i32 2, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rcar_thermal_common, ptr %4, i32 0, i32 3
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rcar_thermal_common, ptr %4, i32 0, i32 1
  store ptr %2, ptr %11, align 4
  tail call void @pm_runtime_enable(ptr noundef %2) #4
  %12 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #4
  %13 = getelementptr inbounds %struct.rcar_thermal_chip, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  br label %24

18:                                               ; preds = %62, %6
  %19 = phi i32 [ 0, %6 ], [ %63, %62 ]
  %20 = phi i32 [ 5000, %6 ], [ %64, %62 ]
  %21 = phi i32 [ 0, %6 ], [ %65, %62 ]
  %22 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef %19) #4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %161, label %69

24:                                               ; preds = %62, %16
  %25 = phi i32 [ 0, %16 ], [ %65, %62 ]
  %26 = phi i32 [ 5000, %16 ], [ %64, %62 ]
  %27 = phi i32 [ 0, %16 ], [ %66, %62 ]
  %28 = phi i32 [ 0, %16 ], [ %63, %62 ]
  %29 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 1024, i32 noundef %27) #4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %62, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr %4, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef %28) #4
  %36 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %35) #4
  store ptr %36, ptr %4, align 4
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = ptrtoint ptr %36 to i32
  br label %171

40:                                               ; preds = %34
  %41 = add i32 %28, 1
  br label %42

42:                                               ; preds = %40, %31
  %43 = phi i32 [ %28, %31 ], [ %41, %40 ]
  %44 = phi i32 [ %26, %31 ], [ 0, %40 ]
  %45 = load i32, ptr %29, align 4
  %46 = load ptr, ptr %17, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load ptr, ptr %2, align 4
  br label %50

50:                                               ; preds = %48, %42
  %51 = phi ptr [ %49, %48 ], [ %46, %42 ]
  %52 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %45, ptr noundef nonnull @rcar_thermal_irq, ptr noundef null, i32 noundef 128, ptr noundef %51, ptr noundef nonnull %4) #4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  br label %171

55:                                               ; preds = %50
  %56 = load i8, ptr %3, align 4
  %57 = and i8 %56, 4
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = shl nuw i32 1, %27
  %61 = or i32 %25, %60
  br label %62

62:                                               ; preds = %59, %55, %24
  %63 = phi i32 [ %43, %59 ], [ %43, %55 ], [ %28, %24 ]
  %64 = phi i32 [ %44, %59 ], [ %44, %55 ], [ %26, %24 ]
  %65 = phi i32 [ %61, %59 ], [ %25, %55 ], [ %25, %24 ]
  %66 = add nuw i32 %27, 1
  %67 = load i32, ptr %13, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %24, label %18

69:                                               ; preds = %146, %18
  %70 = phi ptr [ %159, %146 ], [ %22, %18 ]
  %71 = phi i32 [ %74, %146 ], [ %19, %18 ]
  %72 = phi i32 [ %157, %146 ], [ %21, %18 ]
  %73 = phi i32 [ %158, %146 ], [ 0, %18 ]
  %74 = add i32 %71, 1
  %75 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 92, i32 noundef 3520) #4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %171, label %77

77:                                               ; preds = %69
  %78 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %70) #4
  store ptr %78, ptr %75, align 4
  %79 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = ptrtoint ptr %78 to i32
  br label %171

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %75, i32 0, i32 1
  store ptr %4, ptr %83, align 4
  %84 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %75, i32 0, i32 7
  store i32 %73, ptr %84, align 4
  %85 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %75, i32 0, i32 3
  store ptr %3, ptr %85, align 4
  %86 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %75, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %86, ptr noundef nonnull @.str.2, ptr noundef nonnull @rcar_thermal_probe.__key) #4
  %87 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %75, i32 0, i32 6
  store volatile ptr %87, ptr %87, align 4
  %88 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %75, i32 0, i32 6, i32 1
  store ptr %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %75, i32 0, i32 4
  store i32 -32, ptr %89, align 4
  %90 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %75, i32 0, i32 4, i32 0, i32 1
  store volatile ptr %90, ptr %90, align 4
  %91 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %75, i32 0, i32 4, i32 0, i32 1, i32 1
  store ptr %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %75, i32 0, i32 4, i32 0, i32 2
  store ptr @rcar_thermal_work, ptr %92, align 4
  %93 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %75, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %93, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #4
  %94 = tail call fastcc i32 @rcar_thermal_update_temp(ptr noundef nonnull %75)
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %171, label %96

96:                                               ; preds = %82
  %97 = load i8, ptr %3, align 4
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %2, i32 noundef %73, ptr noundef nonnull %75, ptr noundef nonnull @rcar_thermal_zone_of_ops) #4
  %102 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %75, i32 0, i32 2
  store ptr %101, ptr %102, align 4
  br label %111

103:                                              ; preds = %96
  %104 = tail call ptr @thermal_zone_device_register(ptr noundef nonnull @.str, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %75, ptr noundef nonnull @rcar_thermal_zone_ops, ptr noundef null, i32 noundef 0, i32 noundef %20) #4
  %105 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %75, i32 0, i32 2
  store ptr %104, ptr %105, align 4
  %106 = tail call i32 @thermal_zone_device_enable(ptr noundef %104) #4
  %107 = icmp eq i32 %106, 0
  %108 = load ptr, ptr %105, align 4
  br i1 %107, label %111, label %109

109:                                              ; preds = %103
  tail call void @thermal_zone_device_unregister(ptr noundef %108) #4
  %110 = inttoptr i32 %106 to ptr
  store ptr %110, ptr %105, align 4
  br label %111

111:                                              ; preds = %109, %103, %100
  %112 = phi ptr [ %110, %109 ], [ %101, %100 ], [ %108, %103 ]
  %113 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %75, i32 0, i32 2
  %114 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #5
  %116 = load ptr, ptr %113, align 4
  %117 = ptrtoint ptr %116 to i32
  store ptr null, ptr %113, align 4
  br label %171

118:                                              ; preds = %111
  %119 = load i8, ptr %3, align 4
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.thermal_zone_device, ptr %112, i32 0, i32 21
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.thermal_zone_params, ptr %124, i32 0, i32 1
  store i8 0, ptr %125, align 4
  %126 = load ptr, ptr %113, align 4
  %127 = tail call i32 @thermal_add_hwmon_sysfs(ptr noundef %126) #4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %171

129:                                              ; preds = %122, %118
  %130 = load ptr, ptr %83, align 4
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %146, label %133

133:                                              ; preds = %129
  %134 = load i32, ptr %84, align 4
  %135 = shl i32 %134, 3
  %136 = shl i32 3, %135
  %137 = getelementptr inbounds %struct.rcar_thermal_common, ptr %130, i32 0, i32 3
  %138 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %137) #4
  %139 = load ptr, ptr %130, align 4
  %140 = getelementptr i8, ptr %139, i32 12
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %142 = xor i32 %136, -1
  %143 = and i32 %141, %142
  %144 = load ptr, ptr %130, align 4
  %145 = getelementptr i8, ptr %144, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %143) #4, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %137, i32 noundef %138) #4
  br label %146

146:                                              ; preds = %133, %129
  %147 = load ptr, ptr %88, align 4
  %148 = load ptr, ptr %87, align 4
  %149 = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  store ptr %147, ptr %149, align 4
  store volatile ptr %148, ptr %147, align 4
  %150 = load ptr, ptr %9, align 4
  store ptr %87, ptr %9, align 4
  store ptr %8, ptr %87, align 4
  store ptr %150, ptr %88, align 4
  store volatile ptr %87, ptr %150, align 4
  %151 = load i8, ptr %3, align 4
  %152 = and i8 %151, 4
  %153 = icmp eq i8 %152, 0
  %154 = shl i32 %73, 3
  %155 = shl i32 3, %154
  %156 = select i1 %153, i32 %155, i32 0
  %157 = or i32 %156, %72
  %158 = add i32 %73, 1
  %159 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef %74) #4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %69

161:                                              ; preds = %146, %18
  %162 = phi i32 [ 0, %18 ], [ %158, %146 ]
  %163 = phi i32 [ %21, %18 ], [ %157, %146 ]
  %164 = load ptr, ptr %4, align 4
  %165 = icmp ne ptr %164, null
  %166 = icmp ne i32 %163, 0
  %167 = select i1 %165, i1 %166, i1 false
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = getelementptr i8, ptr %164, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %163) #4, !srcloc !11
  br label %170

170:                                              ; preds = %168, %161
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %162) #5
  br label %174

171:                                              ; preds = %122, %115, %82, %80, %69, %54, %38
  %172 = phi i32 [ %52, %54 ], [ %39, %38 ], [ %81, %80 ], [ %117, %115 ], [ -12, %69 ], [ %127, %122 ], [ %94, %82 ]
  %173 = tail call i32 @rcar_thermal_remove(ptr noundef %0)
  br label %174

174:                                              ; preds = %171, %170, %1
  %175 = phi i32 [ %172, %171 ], [ 0, %170 ], [ -12, %1 ]
  ret i32 %175
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_thermal_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_thermal_common, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %41, label %7

7:                                                ; preds = %38, %1
  %8 = phi ptr [ %39, %38 ], [ %5, %1 ]
  %9 = getelementptr i8, ptr %8, i32 -76
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %8, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %15, 3
  %17 = shl i32 3, %16
  %18 = getelementptr inbounds %struct.rcar_thermal_common, ptr %10, i32 0, i32 3
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #4
  %20 = load ptr, ptr %10, align 4
  %21 = getelementptr i8, ptr %20, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %23 = or i32 %22, %17
  %24 = load ptr, ptr %10, align 4
  %25 = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #4, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #4
  br label %26

26:                                               ; preds = %13, %7
  %27 = getelementptr i8, ptr %8, i32 -64
  %28 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %27) #4
  %29 = getelementptr i8, ptr %8, i32 -68
  %30 = load ptr, ptr %29, align 4
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr i8, ptr %8, i32 -72
  %35 = load ptr, ptr %34, align 4
  br i1 %33, label %37, label %36

36:                                               ; preds = %26
  tail call void @thermal_remove_hwmon_sysfs(ptr noundef %35) #4
  br label %38

37:                                               ; preds = %26
  tail call void @thermal_zone_device_unregister(ptr noundef %35) #4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load ptr, ptr %8, align 4
  %40 = icmp eq ptr %39, %4
  br i1 %40, label %41, label %7

41:                                               ; preds = %38, %1
  %42 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %43 = tail call i32 @__pm_runtime_idle(ptr noundef %42, i32 noundef 5) #4
  tail call void @__pm_runtime_disable(ptr noundef %42, i1 noundef zeroext true) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_thermal_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.rcar_thermal_common, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %3) #4
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %7 = load ptr, ptr %1, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %9 = and i32 %6, 986895
  %10 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #4, !srcloc !11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  %11 = load i16, ptr %3, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  %13 = xor i32 %6, -1
  %14 = and i32 %8, %13
  %15 = getelementptr inbounds %struct.rcar_thermal_common, ptr %1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %47, label %18

18:                                               ; preds = %44, %2
  %19 = phi ptr [ %45, %44 ], [ %16, %2 ]
  %20 = getelementptr i8, ptr %19, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %21, 3
  %23 = shl i32 3, %22
  %24 = and i32 %14, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %18
  %27 = getelementptr i8, ptr %19, i32 -76
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.rcar_thermal_common, ptr %28, i32 0, i32 3
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #4
  %34 = load ptr, ptr %28, align 4
  %35 = getelementptr i8, ptr %34, i32 12
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %37 = or i32 %36, %23
  %38 = load ptr, ptr %28, align 4
  %39 = getelementptr i8, ptr %38, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #4, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %33) #4
  br label %40

40:                                               ; preds = %31, %26
  %41 = load ptr, ptr @system_freezable_wq, align 4
  %42 = getelementptr i8, ptr %19, i32 -64
  %43 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %41, ptr noundef %42, i32 noundef 30) #4
  br label %44

44:                                               ; preds = %40, %18
  %45 = load ptr, ptr %19, align 4
  %46 = icmp eq ptr %45, %15
  br i1 %46, label %47, label %18

47:                                               ; preds = %44, %2
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_thermal_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = tail call fastcc i32 @rcar_thermal_update_temp(ptr noundef %2)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -12
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %0, i32 72
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 3
  %14 = shl i32 3, %13
  %15 = getelementptr inbounds %struct.rcar_thermal_common, ptr %7, i32 0, i32 3
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #4
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr i8, ptr %17, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %20 = xor i32 %14, -1
  %21 = and i32 %19, %20
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #4, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #4
  br label %24

24:                                               ; preds = %10, %5
  %25 = getelementptr i8, ptr %0, i32 -8
  %26 = load ptr, ptr %25, align 4
  tail call void @thermal_zone_device_update(ptr noundef %26, i32 noundef 0) #4
  br label %27

27:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rcar_thermal_update_temp(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rcar_thermal_common, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %6) #4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr i8, ptr %7, i32 44
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %10 = or i32 %9, 4096
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #4, !srcloc !11
  br label %16

13:                                               ; preds = %16
  %14 = add nuw nsw i32 %17, 1
  %15 = icmp eq i32 %14, 128
  br i1 %15, label %24, label %16

16:                                               ; preds = %13, %1
  %17 = phi i32 [ 0, %1 ], [ %14, %13 ]
  %18 = phi i32 [ -1, %1 ], [ %22, %13 ]
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 400, i32 noundef 2) #4
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr i8, ptr %19, i32 48
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %22 = and i32 %21, 63
  %23 = icmp eq i32 %22, %18
  br i1 %23, label %25, label %13

24:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5) #5
  br label %46

25:                                               ; preds = %16
  %26 = load ptr, ptr %2, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %46, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = load i8, ptr %31, align 4
  %33 = and i8 %32, 2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %0, align 4
  %37 = getelementptr i8, ptr %36, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 0) #4, !srcloc !11
  br label %38

38:                                               ; preds = %35, %29
  %39 = load ptr, ptr %0, align 4
  %40 = getelementptr i8, ptr %39, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 1) #4, !srcloc !11
  %41 = shl nuw nsw i32 %18, 8
  %42 = add nsw i32 %18, -1
  %43 = or i32 %41, %42
  %44 = load ptr, ptr %0, align 4
  %45 = getelementptr i8, ptr %44, i32 52
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #4, !srcloc !11
  br label %46

46:                                               ; preds = %38, %25, %24
  %47 = phi i32 [ %18, %25 ], [ %18, %38 ], [ -22, %24 ]
  tail call void @mutex_unlock(ptr noundef %6) #4
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_device_register(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_add_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_thermal_of_get_temp(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = tail call fastcc i32 @rcar_thermal_update_temp(ptr noundef %0) #4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rcar_thermal_chip, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = mul i32 %3, 5000
  %13 = add i32 %12, -65000
  br label %26

14:                                               ; preds = %5
  %15 = icmp ult i32 %3, 24
  br i1 %15, label %16, label %23

16:                                               ; preds = %14
  %17 = trunc i32 %3 to i16
  %18 = mul nuw nsw i16 %17, 55
  %19 = add nsw i16 %18, -720
  %20 = sdiv i16 %19, 10
  %21 = sext i16 %20 to i32
  %22 = mul nsw i32 %21, 1000
  br label %26

23:                                               ; preds = %14
  %24 = mul i32 %3, 5000
  %25 = add i32 %24, -60000
  br label %26

26:                                               ; preds = %23, %16, %11
  %27 = phi i32 [ %13, %11 ], [ %25, %23 ], [ %22, %16 ]
  store i32 %27, ptr %1, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi i32 [ %3, %2 ], [ 0, %26 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_thermal_get_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @rcar_thermal_update_temp(ptr noundef %4) #4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rcar_thermal_chip, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = mul i32 %5, 5000
  %15 = add i32 %14, -65000
  br label %28

16:                                               ; preds = %7
  %17 = icmp ult i32 %5, 24
  br i1 %17, label %18, label %25

18:                                               ; preds = %16
  %19 = trunc i32 %5 to i16
  %20 = mul nuw nsw i16 %19, 55
  %21 = add nsw i16 %20, -720
  %22 = sdiv i16 %21, 10
  %23 = sext i16 %22 to i32
  %24 = mul nsw i32 %23, 1000
  br label %28

25:                                               ; preds = %16
  %26 = mul i32 %5, 5000
  %27 = add i32 %26, -60000
  br label %28

28:                                               ; preds = %25, %18, %13
  %29 = phi i32 [ %15, %13 ], [ %27, %25 ], [ %24, %18 ]
  store i32 %29, ptr %1, align 4
  br label %30

30:                                               ; preds = %28, %2
  %31 = phi i32 [ %5, %2 ], [ 0, %28 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_thermal_get_trip_type(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  store i32 3, ptr %2, align 4
  br label %13

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rcar_thermal_common, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.6) #5
  br label %13

13:                                               ; preds = %6, %5
  %14 = phi i32 [ 0, %5 ], [ -22, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_thermal_get_trip_temp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  store i32 90000, ptr %2, align 4
  br label %13

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rcar_thermal_common, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.6) #5
  br label %13

13:                                               ; preds = %6, %5
  %14 = phi i32 [ 0, %5 ], [ -22, %6 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_remove_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_thermal_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_thermal_common, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -68
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %5, i32 -80
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #4, !srcloc !11
  %15 = getelementptr i8, ptr %5, i32 -76
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %11
  %20 = getelementptr i8, ptr %5, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %21, 3
  %23 = shl i32 3, %22
  %24 = getelementptr inbounds %struct.rcar_thermal_common, ptr %16, i32 0, i32 3
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #4
  %26 = load ptr, ptr %16, align 4
  %27 = getelementptr i8, ptr %26, i32 12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %29 = or i32 %28, %23
  %30 = load ptr, ptr %16, align 4
  %31 = getelementptr i8, ptr %30, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #4, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %25) #4
  br label %32

32:                                               ; preds = %19, %11
  %33 = load ptr, ptr %12, align 4
  %34 = getelementptr i8, ptr %33, i32 44
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %36 = and i32 %35, -4097
  %37 = load ptr, ptr %12, align 4
  %38 = getelementptr i8, ptr %37, i32 44
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #4, !srcloc !11
  br label %39

39:                                               ; preds = %32, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_thermal_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_thermal_common, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -68
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %37, label %11

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %5, i32 -80
  %13 = tail call fastcc i32 @rcar_thermal_update_temp(ptr noundef %12)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %5, i32 -76
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %5, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %22, 3
  %24 = shl i32 3, %23
  %25 = getelementptr inbounds %struct.rcar_thermal_common, ptr %17, i32 0, i32 3
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #4
  %27 = load ptr, ptr %17, align 4
  %28 = getelementptr i8, ptr %27, i32 12
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %30 = xor i32 %24, -1
  %31 = and i32 %29, %30
  %32 = load ptr, ptr %17, align 4
  %33 = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #4, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #4
  br label %34

34:                                               ; preds = %20, %15
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 3) #4, !srcloc !11
  br label %37

37:                                               ; preds = %34, %11, %1
  %38 = phi i32 [ %13, %11 ], [ 0, %34 ], [ 0, %1 ]
  ret i32 %38
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
!8 = !{i64 3003915}
!9 = !{i64 2150543368}
!10 = !{i64 2150544590}
!11 = !{i64 3003497}
!12 = !{i64 2149180357}
!13 = !{i64 2149176181}
!14 = !{i64 2149176256, i64 2149176283, i64 2149176330, i64 2149176352, i64 2149176380, i64 2149176400}
!15 = !{i64 2149203360}
