; ModuleID = '/llk/IR/drivers/thermal/imx_thermal.c_pt.bc'
source_filename = "../drivers/thermal/imx_thermal.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_soc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.imx_thermal_data = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpumask = type { [1 x i32] }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }

@__initcall__kmod_imx_thermal__183_931_imx_thermal_init6 = internal global ptr @imx_thermal_init, section ".initcall6.init", align 4
@imx_thermal = internal global %struct.platform_driver { ptr @imx_thermal_probe, ptr @imx_thermal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_imx_thermal_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_thermal_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_imx_thermal_exit = internal global ptr @imx_thermal_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [49 x i8] c"imx_thermal.author=Freescale Semiconductor, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [63 x i8] c"imx_thermal.description=Thermal driver for Freescale i.MX SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [45 x i8] c"imx_thermal.file=drivers/thermal/imx_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [27 x i8] c"imx_thermal.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias188 = internal constant [39 x i8] c"imx_thermal.alias=platform:imx-thermal\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"imx_thermal\00", align 1
@of_imx_thermal_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-tempmon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @thermal_imx6q_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-tempmon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @thermal_imx6sx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-tempmon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @thermal_imx7d_data }, %struct.of_device_id zeroinitializer], align 4
@imx_thermal_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @imx_thermal_suspend, ptr @imx_thermal_resume, ptr @imx_thermal_suspend, ptr @imx_thermal_resume, ptr @imx_thermal_suspend, ptr @imx_thermal_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_thermal_runtime_suspend, ptr @imx_thermal_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"fsl,tempmon\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to get tempmon regmap: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"no device match found\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"nvmem-cells\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to init from nvmem\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"failed to init from fsl,tempmon-data\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"failed to register cpufreq cooling device\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to get thermal clk: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"failed to enable thermal clk: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"imx_thermal_zone\00", align 1
@imx_tz_ops = internal global %struct.thermal_zone_device_ops { ptr @imx_bind, ptr @imx_unbind, ptr @imx_get_temp, ptr null, ptr @imx_change_mode, ptr @imx_get_trip_type, ptr @imx_get_trip_temp, ptr @imx_set_trip_temp, ptr null, ptr null, ptr @imx_get_crit_temp, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [43 x i8] c"failed to register thermal zone device %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"%s CPU temperature grade - max:%dC critical:%dC passive:%dC\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"failed to request alarm irq: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"calib\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"temp_grade\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"invalid sensor calibration data\0A\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Commercial\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Extended Commercial\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"Industrial\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"Automotive\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"fsl,tempmon-data\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"failed to get sensor regmap: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"failed to read sensor data: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"#cooling-cells\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"binding zone %s with cdev %s failed:%d\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"unbinding zone %s with cdev %s failed:%d\0A\00", align 1
@thermal_imx6q_data = internal global %struct.thermal_soc_data { i32 1, i32 384, i32 1, i32 2, i32 400, i32 65535, i32 0, i32 384, i32 1048320, i32 8, i32 4, i32 0, i32 0, i32 0, i32 384, i32 -1048576, i32 20, i32 0, i32 0, i32 0 }, align 4
@thermal_imx6sx_data = internal global %struct.thermal_soc_data { i32 2, i32 384, i32 1, i32 2, i32 400, i32 65535, i32 0, i32 384, i32 1048320, i32 8, i32 4, i32 656, i32 268369920, i32 16, i32 384, i32 -1048576, i32 20, i32 656, i32 4095, i32 0 }, align 4
@thermal_imx7d_data = internal global %struct.thermal_soc_data { i32 3, i32 784, i32 512, i32 1024, i32 784, i32 -65536, i32 16, i32 784, i32 511, i32 0, i32 2048, i32 784, i32 133955584, i32 18, i32 768, i32 261632, i32 9, i32 768, i32 511, i32 0 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_imx_thermal_exit, ptr @__initcall__kmod_imx_thermal__183_931_imx_thermal_init6, ptr @imx_thermal_exit], section "llvm.metadata"
@switch.table.imx_thermal_probe.28 = private unnamed_addr constant [4 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], align 4
@switch.table.imx_thermal_probe.29 = private unnamed_addr constant [4 x i32] [i32 95000, i32 105000, i32 105000, i32 125000], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx_thermal_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_thermal, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx_thermal_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_thermal) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_thermal_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 68, i32 noundef 3520) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %314, label %7

7:                                                ; preds = %1
  store ptr %4, ptr %5, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %9, ptr noundef nonnull @.str.1) #8
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = ptrtoint ptr %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %13) #9
  br label %314

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 4
  store ptr %10, ptr %15, align 4
  %16 = tail call ptr @of_device_get_match_data(ptr noundef %4) #8
  %17 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 15
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #9
  br label %314

20:                                               ; preds = %14
  %21 = load i32, ptr %16, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 360, i32 noundef 939524096) #8
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr inbounds %struct.thermal_soc_data, ptr %25, i32 0, i32 17
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 4
  %29 = getelementptr inbounds %struct.thermal_soc_data, ptr %25, i32 0, i32 18
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %28, i32 noundef %30) #8
  br label %32

32:                                               ; preds = %23, %20
  %33 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %34 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = icmp slt i32 %33, 0
  br i1 %35, label %314, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %37, align 8
  %38 = load ptr, ptr %8, align 8
  %39 = tail call ptr @of_find_property(ptr noundef %38, ptr noundef nonnull @.str.4, ptr noundef null) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %91, label %41

41:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %42 = call i32 @nvmem_cell_read_u32(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull %3) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %88

44:                                               ; preds = %41
  %45 = load i32, ptr %3, align 4
  %46 = load ptr, ptr %37, align 8
  %47 = add i32 %45, 1
  %48 = icmp ult i32 %47, 2
  br i1 %48, label %69, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.imx_thermal_data, ptr %46, i32 0, i32 15
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = lshr i32 %45, 9
  %56 = and i32 %55, 511
  %57 = getelementptr inbounds %struct.imx_thermal_data, ptr %46, i32 0, i32 5
  store i32 %56, ptr %57, align 4
  br label %70

58:                                               ; preds = %49
  %59 = lshr i32 %45, 20
  %60 = mul nuw nsw i32 %59, 15423
  %61 = add nsw i32 %60, -4148468
  %62 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %61, i64 10000000000) #10, !srcloc !9
  %63 = extractvalue { i64, i64 } %62, 1
  %64 = trunc i64 %63 to i32
  %65 = getelementptr inbounds %struct.imx_thermal_data, ptr %46, i32 0, i32 5
  store i32 %64, ptr %65, align 4
  %66 = mul i32 %59, %64
  %67 = add i32 %66, 28581
  %68 = getelementptr inbounds %struct.imx_thermal_data, ptr %46, i32 0, i32 6
  store i32 %67, ptr %68, align 4
  br label %70

69:                                               ; preds = %44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.16) #9
  br label %88

70:                                               ; preds = %58, %54
  %71 = call i32 @nvmem_cell_read_u32(ptr noundef %4, ptr noundef nonnull @.str.15, ptr noundef nonnull %3) #8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %70
  %74 = load i32, ptr %3, align 4
  %75 = load ptr, ptr %37, align 8
  %76 = lshr i32 %74, 6
  %77 = and i32 %76, 3
  %78 = getelementptr inbounds [4 x ptr], ptr @switch.table.imx_thermal_probe.28, i32 0, i32 %77
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds [4 x i32], ptr @switch.table.imx_thermal_probe.29, i32 0, i32 %77
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.imx_thermal_data, ptr %75, i32 0, i32 16
  store ptr %79, ptr %82, align 4
  %83 = getelementptr inbounds %struct.imx_thermal_data, ptr %75, i32 0, i32 9
  store i32 %81, ptr %83, align 4
  %84 = add nsw i32 %81, -5000
  %85 = getelementptr inbounds %struct.imx_thermal_data, ptr %75, i32 0, i32 8
  store i32 %84, ptr %85, align 4
  %86 = add nsw i32 %81, -10000
  %87 = getelementptr inbounds %struct.imx_thermal_data, ptr %75, i32 0, i32 7
  store i32 %86, ptr %87, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %150

88:                                               ; preds = %70, %69, %41
  %89 = phi i32 [ %71, %70 ], [ -22, %69 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %90 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %89, ptr noundef nonnull @.str.5) #8
  br label %314

91:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %92 = load ptr, ptr %8, align 8
  %93 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %92, ptr noundef nonnull @.str.21) #8
  %94 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  br i1 %94, label %146, label %95

95:                                               ; preds = %91
  %96 = call i32 @regmap_read(ptr noundef %93, i32 noundef 1248, ptr noundef nonnull %2) #8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.23, i32 noundef %96) #9
  br label %144

99:                                               ; preds = %95
  %100 = load i32, ptr %2, align 4
  %101 = load ptr, ptr %37, align 8
  %102 = add i32 %100, 1
  %103 = icmp ult i32 %102, 2
  br i1 %103, label %124, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.imx_thermal_data, ptr %101, i32 0, i32 15
  %106 = load ptr, ptr %105, align 4
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 3
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = lshr i32 %100, 9
  %111 = and i32 %110, 511
  %112 = getelementptr inbounds %struct.imx_thermal_data, ptr %101, i32 0, i32 5
  store i32 %111, ptr %112, align 4
  br label %125

113:                                              ; preds = %104
  %114 = lshr i32 %100, 20
  %115 = mul nuw nsw i32 %114, 15423
  %116 = add nsw i32 %115, -4148468
  %117 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %116, i64 10000000000) #10, !srcloc !9
  %118 = extractvalue { i64, i64 } %117, 1
  %119 = trunc i64 %118 to i32
  %120 = getelementptr inbounds %struct.imx_thermal_data, ptr %101, i32 0, i32 5
  store i32 %119, ptr %120, align 4
  %121 = mul i32 %114, %119
  %122 = add i32 %121, 28581
  %123 = getelementptr inbounds %struct.imx_thermal_data, ptr %101, i32 0, i32 6
  store i32 %122, ptr %123, align 4
  br label %125

124:                                              ; preds = %99
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.16) #9
  br label %144

125:                                              ; preds = %113, %109
  %126 = call i32 @regmap_read(ptr noundef %93, i32 noundef 1152, ptr noundef nonnull %2) #8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %125
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.23, i32 noundef %126) #9
  br label %144

129:                                              ; preds = %125
  %130 = load i32, ptr %2, align 4
  %131 = load ptr, ptr %37, align 8
  %132 = lshr i32 %130, 6
  %133 = and i32 %132, 3
  %134 = getelementptr inbounds [4 x ptr], ptr @switch.table.imx_thermal_probe.28, i32 0, i32 %133
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds [4 x i32], ptr @switch.table.imx_thermal_probe.29, i32 0, i32 %133
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.imx_thermal_data, ptr %131, i32 0, i32 16
  store ptr %135, ptr %138, align 4
  %139 = getelementptr inbounds %struct.imx_thermal_data, ptr %131, i32 0, i32 9
  store i32 %137, ptr %139, align 4
  %140 = add nsw i32 %137, -5000
  %141 = getelementptr inbounds %struct.imx_thermal_data, ptr %131, i32 0, i32 8
  store i32 %140, ptr %141, align 4
  %142 = add nsw i32 %137, -10000
  %143 = getelementptr inbounds %struct.imx_thermal_data, ptr %131, i32 0, i32 7
  store i32 %142, ptr %143, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %150

144:                                              ; preds = %128, %124, %98
  %145 = phi i32 [ -22, %124 ], [ %126, %128 ], [ %96, %98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %148

146:                                              ; preds = %91
  %147 = ptrtoint ptr %93 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.22, i32 noundef %147) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #9
  br label %314

150:                                              ; preds = %129, %73
  %151 = load ptr, ptr %17, align 4
  %152 = getelementptr inbounds %struct.thermal_soc_data, ptr %151, i32 0, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = add i32 %153, 8
  %155 = getelementptr inbounds %struct.thermal_soc_data, ptr %151, i32 0, i32 2
  %156 = load i32, ptr %155, align 4
  %157 = call i32 @regmap_write(ptr noundef %10, i32 noundef %154, i32 noundef %156) #8
  %158 = load ptr, ptr %17, align 4
  %159 = getelementptr inbounds %struct.thermal_soc_data, ptr %158, i32 0, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = add i32 %160, 8
  %162 = getelementptr inbounds %struct.thermal_soc_data, ptr %158, i32 0, i32 3
  %163 = load i32, ptr %162, align 4
  %164 = call i32 @regmap_write(ptr noundef %10, i32 noundef %161, i32 noundef %163) #8
  %165 = load ptr, ptr %17, align 4
  %166 = getelementptr inbounds %struct.thermal_soc_data, ptr %165, i32 0, i32 4
  %167 = load i32, ptr %166, align 4
  %168 = add i32 %167, 8
  %169 = getelementptr inbounds %struct.thermal_soc_data, ptr %165, i32 0, i32 5
  %170 = load i32, ptr %169, align 4
  %171 = call i32 @regmap_write(ptr noundef %10, i32 noundef %168, i32 noundef %170) #8
  %172 = load ptr, ptr %17, align 4
  %173 = load i32, ptr %172, align 4
  %174 = icmp eq i32 %173, 3
  br i1 %174, label %178, label %175

175:                                              ; preds = %150
  %176 = call i32 @regmap_write(ptr noundef %10, i32 noundef 340, i32 noundef 8) #8
  %177 = load ptr, ptr %17, align 4
  br label %178

178:                                              ; preds = %175, %150
  %179 = phi ptr [ %177, %175 ], [ %172, %150 ]
  %180 = getelementptr inbounds %struct.thermal_soc_data, ptr %179, i32 0, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = add i32 %181, 4
  %183 = getelementptr inbounds %struct.thermal_soc_data, ptr %179, i32 0, i32 2
  %184 = load i32, ptr %183, align 4
  %185 = call i32 @regmap_write(ptr noundef %10, i32 noundef %182, i32 noundef %184) #8
  %186 = call ptr @cpufreq_cpu_get(i32 noundef 0) #8
  %187 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 1
  store ptr %186, ptr %187, align 4
  %188 = icmp eq ptr %186, null
  br i1 %188, label %209, label %189

189:                                              ; preds = %178
  %190 = getelementptr inbounds %struct.cpufreq_policy, ptr %186, i32 0, i32 4
  %191 = load i32, ptr %190, align 4
  %192 = call ptr @of_get_cpu_node(i32 noundef %191, ptr noundef null) #8
  %193 = icmp eq ptr %192, null
  br i1 %193, label %197, label %194

194:                                              ; preds = %189
  %195 = call ptr @of_find_property(ptr noundef nonnull %192, ptr noundef nonnull @.str.24, ptr noundef null) #8
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %202

197:                                              ; preds = %194, %189
  %198 = load ptr, ptr %187, align 4
  %199 = call ptr @cpufreq_cooling_register(ptr noundef %198) #8
  %200 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 3
  store ptr %199, ptr %200, align 4
  %201 = icmp ugt ptr %199, inttoptr (i32 -4096 to ptr)
  br i1 %201, label %206, label %202

202:                                              ; preds = %197, %194
  call void @of_node_put(ptr noundef %192) #8
  %203 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #8
  %204 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 14
  store ptr %203, ptr %204, align 4
  %205 = icmp ugt ptr %203, inttoptr (i32 -4096 to ptr)
  br i1 %205, label %212, label %216

206:                                              ; preds = %197
  %207 = ptrtoint ptr %199 to i32
  %208 = load ptr, ptr %187, align 4
  call void @cpufreq_cpu_put(ptr noundef %208) #8
  call void @of_node_put(ptr noundef %192) #8
  br label %209

209:                                              ; preds = %206, %178
  %210 = phi i32 [ %207, %206 ], [ -517, %178 ]
  %211 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %210, ptr noundef nonnull @.str.7) #8
  br label %314

212:                                              ; preds = %202
  %213 = icmp eq ptr %203, inttoptr (i32 -517 to ptr)
  br i1 %213, label %309, label %214

214:                                              ; preds = %212
  %215 = ptrtoint ptr %203 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %215) #9
  br label %309

216:                                              ; preds = %202
  %217 = call fastcc i32 @clk_prepare_enable(ptr noundef %203)
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %216
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %217) #9
  br label %309

220:                                              ; preds = %216
  %221 = call ptr @thermal_zone_device_register(ptr noundef nonnull @.str.10, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %5, ptr noundef nonnull @imx_tz_ops, ptr noundef null, i32 noundef 1000, i32 noundef 2000) #8
  %222 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 2
  store ptr %221, ptr %222, align 4
  %223 = icmp ugt ptr %221, inttoptr (i32 -4096 to ptr)
  br i1 %223, label %224, label %226

224:                                              ; preds = %220
  %225 = ptrtoint ptr %221 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef %225) #9
  br label %306

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 16
  %228 = load ptr, ptr %227, align 4
  %229 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 9
  %230 = load i32, ptr %229, align 4
  %231 = sdiv i32 %230, 1000
  %232 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 8
  %233 = load i32, ptr %232, align 4
  %234 = sdiv i32 %233, 1000
  %235 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 7
  %236 = load i32, ptr %235, align 4
  %237 = sdiv i32 %236, 1000
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.12, ptr noundef %228, i32 noundef %231, i32 noundef %234, i32 noundef %237) #9
  %238 = load ptr, ptr %17, align 4
  %239 = getelementptr inbounds %struct.thermal_soc_data, ptr %238, i32 0, i32 4
  %240 = load i32, ptr %239, align 4
  %241 = add i32 %240, 8
  %242 = getelementptr inbounds %struct.thermal_soc_data, ptr %238, i32 0, i32 5
  %243 = load i32, ptr %242, align 4
  %244 = call i32 @regmap_write(ptr noundef %10, i32 noundef %241, i32 noundef %243) #8
  %245 = load ptr, ptr %17, align 4
  %246 = getelementptr inbounds %struct.thermal_soc_data, ptr %245, i32 0, i32 4
  %247 = load i32, ptr %246, align 4
  %248 = add i32 %247, 4
  %249 = getelementptr inbounds %struct.thermal_soc_data, ptr %245, i32 0, i32 6
  %250 = load i32, ptr %249, align 4
  %251 = shl i32 3277, %250
  %252 = call i32 @regmap_write(ptr noundef %10, i32 noundef %248, i32 noundef %251) #8
  %253 = load i32, ptr %235, align 4
  call fastcc void @imx_set_alarm_temp(ptr noundef nonnull %5, i32 noundef %253)
  %254 = load ptr, ptr %17, align 4
  %255 = load i32, ptr %254, align 4
  %256 = icmp eq i32 %255, 2
  br i1 %256, label %257, label %260

257:                                              ; preds = %226
  %258 = load i32, ptr %232, align 4
  call fastcc void @imx_set_panic_temp(ptr noundef nonnull %5, i32 noundef %258)
  %259 = load ptr, ptr %17, align 4
  br label %260

260:                                              ; preds = %257, %226
  %261 = phi ptr [ %259, %257 ], [ %254, %226 ]
  %262 = getelementptr inbounds %struct.thermal_soc_data, ptr %261, i32 0, i32 1
  %263 = load i32, ptr %262, align 4
  %264 = add i32 %263, 8
  %265 = getelementptr inbounds %struct.thermal_soc_data, ptr %261, i32 0, i32 2
  %266 = load i32, ptr %265, align 4
  %267 = call i32 @regmap_write(ptr noundef %10, i32 noundef %264, i32 noundef %266) #8
  %268 = load ptr, ptr %17, align 4
  %269 = getelementptr inbounds %struct.thermal_soc_data, ptr %268, i32 0, i32 1
  %270 = load i32, ptr %269, align 4
  %271 = add i32 %270, 4
  %272 = getelementptr inbounds %struct.thermal_soc_data, ptr %268, i32 0, i32 3
  %273 = load i32, ptr %272, align 4
  %274 = call i32 @regmap_write(ptr noundef %10, i32 noundef %271, i32 noundef %273) #8
  call void @usleep_range_state(i32 noundef 20, i32 noundef 50, i32 noundef 2) #8
  %275 = call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 0) #8
  %276 = load ptr, ptr %5, align 4
  call void @pm_runtime_enable(ptr noundef %276) #8
  %277 = load ptr, ptr %5, align 4
  %278 = call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %277)
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %296, label %280

280:                                              ; preds = %260
  %281 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 12
  store i8 1, ptr %281, align 4
  %282 = load ptr, ptr %222, align 4
  %283 = call i32 @thermal_zone_device_enable(ptr noundef %282) #8
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %293

285:                                              ; preds = %280
  %286 = load i32, ptr %34, align 4
  %287 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %286, ptr noundef nonnull @imx_thermal_alarm_irq, ptr noundef nonnull @imx_thermal_alarm_irq_thread, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %5) #8
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %285
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.13, i32 noundef %287) #9
  br label %293

290:                                              ; preds = %285
  %291 = load ptr, ptr %5, align 4
  %292 = call i32 @__pm_runtime_idle(ptr noundef %291, i32 noundef 5) #8
  br label %314

293:                                              ; preds = %289, %280
  %294 = phi i32 [ %283, %280 ], [ %287, %289 ]
  %295 = load ptr, ptr %222, align 4
  call void @thermal_zone_device_unregister(ptr noundef %295) #8
  br label %296

296:                                              ; preds = %293, %260
  %297 = phi i32 [ %278, %260 ], [ %294, %293 ]
  %298 = load ptr, ptr %5, align 4
  %299 = getelementptr inbounds %struct.device, ptr %298, i32 0, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %299) #8, !srcloc !11
  %300 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %299, ptr %299, i32 0, i32 -1, ptr elementtype(i32) %299) #8, !srcloc !12
  %301 = extractvalue { i32, i32, i32 } %300, 0
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %296
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  br label %304

304:                                              ; preds = %303, %296
  %305 = load ptr, ptr %5, align 4
  call void @__pm_runtime_disable(ptr noundef %305, i1 noundef zeroext true) #8
  br label %306

306:                                              ; preds = %304, %224
  %307 = phi i32 [ %225, %224 ], [ %297, %304 ]
  %308 = load ptr, ptr %204, align 4
  call void @clk_disable(ptr noundef %308) #8
  call void @clk_unprepare(ptr noundef %308) #8
  br label %309

309:                                              ; preds = %306, %219, %214, %212
  %310 = phi i32 [ %215, %214 ], [ -517, %212 ], [ %217, %219 ], [ %307, %306 ]
  %311 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 3
  %312 = load ptr, ptr %311, align 4
  call void @cpufreq_cooling_unregister(ptr noundef %312) #8
  %313 = load ptr, ptr %187, align 4
  call void @cpufreq_cpu_put(ptr noundef %313) #8
  br label %314

314:                                              ; preds = %309, %290, %209, %148, %88, %32, %19, %12, %1
  %315 = phi i32 [ %13, %12 ], [ %90, %88 ], [ %211, %209 ], [ %310, %309 ], [ 0, %290 ], [ %149, %148 ], [ -19, %19 ], [ -12, %1 ], [ %33, %32 ]
  ret i32 %315
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_thermal_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #8, !srcloc !11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 0, i32 -1, ptr elementtype(i32) %5) #8, !srcloc !12
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  br label %10

10:                                               ; preds = %9, %1
  %11 = load ptr, ptr %3, align 4
  tail call void @__pm_runtime_disable(ptr noundef %11, i1 noundef zeroext true) #8
  %12 = getelementptr inbounds %struct.imx_thermal_data, ptr %3, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void @thermal_zone_device_unregister(ptr noundef %13) #8
  %14 = getelementptr inbounds %struct.imx_thermal_data, ptr %3, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void @cpufreq_cooling_unregister(ptr noundef %15) #8
  %16 = getelementptr inbounds %struct.imx_thermal_data, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void @cpufreq_cpu_put(ptr noundef %17) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #8
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_device_register(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @imx_set_alarm_temp(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.imx_thermal_data, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.imx_thermal_data, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.imx_thermal_data, ptr %0, i32 0, i32 10
  store i32 %1, ptr %7, align 4
  %8 = load i32, ptr %6, align 4
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = sdiv i32 %1, 1000
  %12 = getelementptr inbounds %struct.imx_thermal_data, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = add nsw i32 %11, -25
  %15 = add i32 %14, %13
  br label %23

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.imx_thermal_data, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %18, %1
  %20 = getelementptr inbounds %struct.imx_thermal_data, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = udiv i32 %19, %21
  br label %23

23:                                               ; preds = %16, %10
  %24 = phi i32 [ %15, %10 ], [ %22, %16 ]
  %25 = getelementptr inbounds %struct.thermal_soc_data, ptr %6, i32 0, i32 14
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 8
  %28 = getelementptr inbounds %struct.thermal_soc_data, ptr %6, i32 0, i32 15
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %27, i32 noundef %29) #8
  %31 = load i32, ptr %25, align 4
  %32 = add i32 %31, 4
  %33 = getelementptr inbounds %struct.thermal_soc_data, ptr %6, i32 0, i32 16
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %24, %34
  %36 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %32, i32 noundef %35) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @imx_set_panic_temp(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.imx_thermal_data, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.imx_thermal_data, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.imx_thermal_data, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %8, %1
  %10 = getelementptr inbounds %struct.imx_thermal_data, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = udiv i32 %9, %11
  %13 = getelementptr inbounds %struct.thermal_soc_data, ptr %4, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 8
  %16 = getelementptr inbounds %struct.thermal_soc_data, ptr %4, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %15, i32 noundef %17) #8
  %19 = load i32, ptr %13, align 4
  %20 = add i32 %19, 4
  %21 = getelementptr inbounds %struct.thermal_soc_data, ptr %4, i32 0, i32 13
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %12, %22
  %24 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %20, i32 noundef %23) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #8
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #8, !srcloc !11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 0, i32 -1, ptr elementtype(i32) %5) #8, !srcloc !12
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  br label %10

10:                                               ; preds = %9, %4, %1
  %11 = phi i32 [ 0, %1 ], [ %2, %4 ], [ %2, %9 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_thermal_alarm_irq(i32 noundef %0, ptr nocapture noundef writeonly %1) #2 {
  tail call void @disable_irq_nosync(i32 noundef %0) #8
  %3 = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 12
  store i8 0, ptr %3, align 4
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_thermal_alarm_irq_thread(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.imx_thermal_data, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void @thermal_zone_device_update(ptr noundef %4, i32 noundef 0) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmem_cell_read_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_cpu_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_cooling_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_cpu_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @thermal_zone_bind_cooling_device(ptr noundef %0, i32 noundef 0, ptr noundef %1, i32 noundef -1, i32 noundef -1, i32 noundef 0) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.thermal_cooling_device, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.25, ptr noundef %7, ptr noundef %9, i32 noundef %3) #9
  br label %10

10:                                               ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_unbind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @thermal_zone_unbind_cooling_device(ptr noundef %0, i32 noundef 0, ptr noundef %1) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.thermal_cooling_device, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.26, ptr noundef %7, ptr noundef %9, i32 noundef %3) #9
  br label %10

10:                                               ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_get_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %10 = load ptr, ptr %5, align 4
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #8
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #8, !srcloc !11
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 0, i32 -1, ptr elementtype(i32) %14) #8, !srcloc !12
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %160, label %18

18:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  br label %160

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.thermal_soc_data, ptr %7, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = call i32 @regmap_read(ptr noundef %9, i32 noundef %21, ptr noundef nonnull %3) #8
  %23 = load i32, ptr %3, align 4
  %24 = getelementptr inbounds %struct.thermal_soc_data, ptr %7, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %160, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.thermal_soc_data, ptr %7, i32 0, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, %23
  %32 = getelementptr inbounds %struct.thermal_soc_data, ptr %7, i32 0, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = lshr i32 %31, %33
  %35 = load ptr, ptr %6, align 4
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = sub i32 %34, %40
  %42 = mul i32 %41, 1000
  %43 = add i32 %42, 25000
  br label %51

44:                                               ; preds = %28
  %45 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = mul i32 %48, %34
  %50 = sub i32 %46, %49
  br label %51

51:                                               ; preds = %44, %38
  %52 = phi i32 [ %50, %44 ], [ %43, %38 ]
  store i32 %52, ptr %1, align 4
  %53 = load ptr, ptr %6, align 4
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %139

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 10
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = icmp ne i32 %58, %60
  %62 = icmp slt i32 %52, %60
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %98, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 8
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %8, align 4
  store i32 %66, ptr %57, align 4
  %68 = load i32, ptr %53, align 4
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = sdiv i32 %66, 1000
  %72 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = add nsw i32 %71, -25
  %75 = add i32 %74, %73
  br label %83

76:                                               ; preds = %64
  %77 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = sub i32 %78, %66
  %80 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = udiv i32 %79, %81
  br label %83

83:                                               ; preds = %76, %70
  %84 = phi i32 [ %75, %70 ], [ %82, %76 ]
  %85 = getelementptr inbounds %struct.thermal_soc_data, ptr %53, i32 0, i32 14
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, 8
  %88 = getelementptr inbounds %struct.thermal_soc_data, ptr %53, i32 0, i32 15
  %89 = load i32, ptr %88, align 4
  %90 = call i32 @regmap_write(ptr noundef %67, i32 noundef %87, i32 noundef %89) #8
  %91 = load i32, ptr %85, align 4
  %92 = add i32 %91, 4
  %93 = getelementptr inbounds %struct.thermal_soc_data, ptr %53, i32 0, i32 16
  %94 = load i32, ptr %93, align 4
  %95 = shl i32 %84, %94
  %96 = call i32 @regmap_write(ptr noundef %67, i32 noundef %92, i32 noundef %95) #8
  %97 = load i32, ptr %57, align 4
  br label %98

98:                                               ; preds = %83, %56
  %99 = phi i32 [ %97, %83 ], [ %58, %56 ]
  %100 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 8
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %139

103:                                              ; preds = %98
  %104 = load i32, ptr %1, align 4
  %105 = load i32, ptr %59, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %139

107:                                              ; preds = %103
  %108 = load ptr, ptr %8, align 4
  %109 = load ptr, ptr %6, align 4
  store i32 %105, ptr %57, align 4
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 3
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = sdiv i32 %105, 1000
  %114 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 5
  %115 = load i32, ptr %114, align 4
  %116 = add nsw i32 %113, -25
  %117 = add i32 %116, %115
  br label %125

118:                                              ; preds = %107
  %119 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 6
  %120 = load i32, ptr %119, align 4
  %121 = sub i32 %120, %105
  %122 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 5
  %123 = load i32, ptr %122, align 4
  %124 = udiv i32 %121, %123
  br label %125

125:                                              ; preds = %118, %112
  %126 = phi i32 [ %117, %112 ], [ %124, %118 ]
  %127 = getelementptr inbounds %struct.thermal_soc_data, ptr %109, i32 0, i32 14
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %128, 8
  %130 = getelementptr inbounds %struct.thermal_soc_data, ptr %109, i32 0, i32 15
  %131 = load i32, ptr %130, align 4
  %132 = call i32 @regmap_write(ptr noundef %108, i32 noundef %129, i32 noundef %131) #8
  %133 = load i32, ptr %127, align 4
  %134 = add i32 %133, 4
  %135 = getelementptr inbounds %struct.thermal_soc_data, ptr %109, i32 0, i32 16
  %136 = load i32, ptr %135, align 4
  %137 = shl i32 %126, %136
  %138 = call i32 @regmap_write(ptr noundef %108, i32 noundef %134, i32 noundef %137) #8
  br label %139

139:                                              ; preds = %125, %103, %98, %51
  %140 = load i32, ptr %1, align 4
  %141 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 11
  %142 = load i32, ptr %141, align 4
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  store i32 %140, ptr %141, align 4
  br label %145

145:                                              ; preds = %144, %139
  %146 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 12
  %147 = load i8, ptr %146, align 4, !range !14
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %145
  %150 = load i32, ptr %1, align 4
  %151 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 10
  %152 = load i32, ptr %151, align 4
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  store i8 1, ptr %146, align 4
  %155 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 13
  %156 = load i32, ptr %155, align 4
  call void @enable_irq(i32 noundef %156) #8
  br label %157

157:                                              ; preds = %154, %149, %145
  %158 = load ptr, ptr %5, align 4
  %159 = call i32 @__pm_runtime_idle(ptr noundef %158, i32 noundef 5) #8
  br label %160

160:                                              ; preds = %157, %19, %18, %13
  %161 = phi i32 [ 0, %157 ], [ -11, %19 ], [ %11, %13 ], [ %11, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %161
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_change_mode(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 1
  %6 = load ptr, ptr %4, align 4
  br i1 %5, label %7, label %15

7:                                                ; preds = %2
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 5) #8
  %9 = getelementptr inbounds %struct.imx_thermal_data, ptr %4, i32 0, i32 12
  %10 = load i8, ptr %9, align 4, !range !14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  store i8 1, ptr %9, align 4
  %13 = getelementptr inbounds %struct.imx_thermal_data, ptr %4, i32 0, i32 13
  %14 = load i32, ptr %13, align 4
  tail call void @enable_irq(i32 noundef %14) #8
  br label %23

15:                                               ; preds = %2
  %16 = tail call i32 @__pm_runtime_idle(ptr noundef %6, i32 noundef 5) #8
  %17 = getelementptr inbounds %struct.imx_thermal_data, ptr %4, i32 0, i32 12
  %18 = load i8, ptr %17, align 4, !range !14
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.imx_thermal_data, ptr %4, i32 0, i32 13
  %22 = load i32, ptr %21, align 4
  tail call void @disable_irq(i32 noundef %22) #8
  store i8 0, ptr %17, align 4
  br label %23

23:                                               ; preds = %20, %15, %12, %7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @imx_get_trip_type(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = icmp eq i32 %1, 0
  %5 = select i1 %4, i32 1, i32 3
  store i32 %5, ptr %2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @imx_get_trip_temp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 0
  %7 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 7
  %8 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 8
  %9 = select i1 %6, ptr %7, ptr %8
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_set_trip_temp(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #8, !srcloc !11
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #8, !srcloc !12
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %61, label %14

14:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  br label %61

15:                                               ; preds = %3
  %16 = icmp eq i32 %1, 1
  br i1 %16, label %61, label %17

17:                                               ; preds = %15
  %18 = icmp slt i32 %2, 0
  br i1 %18, label %61, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = icmp slt i32 %21, %2
  br i1 %22, label %61, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 7
  store i32 %2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 15
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 10
  store i32 %2, ptr %29, align 4
  %30 = load i32, ptr %28, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = udiv i32 %2, 1000
  %34 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = add nsw i32 %33, -25
  %37 = add i32 %36, %35
  br label %45

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = sub i32 %40, %2
  %42 = getelementptr inbounds %struct.imx_thermal_data, ptr %5, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = udiv i32 %41, %43
  br label %45

45:                                               ; preds = %38, %32
  %46 = phi i32 [ %37, %32 ], [ %44, %38 ]
  %47 = getelementptr inbounds %struct.thermal_soc_data, ptr %28, i32 0, i32 14
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, 8
  %50 = getelementptr inbounds %struct.thermal_soc_data, ptr %28, i32 0, i32 15
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef %49, i32 noundef %51) #8
  %53 = load i32, ptr %47, align 4
  %54 = add i32 %53, 4
  %55 = getelementptr inbounds %struct.thermal_soc_data, ptr %28, i32 0, i32 16
  %56 = load i32, ptr %55, align 4
  %57 = shl i32 %46, %56
  %58 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef %54, i32 noundef %57) #8
  %59 = load ptr, ptr %5, align 4
  %60 = tail call i32 @__pm_runtime_idle(ptr noundef %59, i32 noundef 5) #8
  br label %61

61:                                               ; preds = %45, %19, %17, %15, %14, %9
  %62 = phi i32 [ 0, %45 ], [ -1, %15 ], [ -22, %19 ], [ -22, %17 ], [ %7, %9 ], [ %7, %14 ]
  ret i32 %62
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @imx_get_crit_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.imx_thermal_data, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_bind_cooling_device(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_unbind_cooling_device(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_cooling_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_thermal_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.imx_thermal_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @thermal_zone_device_disable(ptr noundef %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 4
  %10 = tail call i32 @pm_runtime_force_suspend(ptr noundef %9) #8
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i32 [ %10, %8 ], [ %6, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_thermal_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @pm_runtime_force_resume(ptr noundef %4) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.imx_thermal_data, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @thermal_zone_device_enable(ptr noundef %9) #8
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i32 [ %10, %7 ], [ %5, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_thermal_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.imx_thermal_data, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.imx_thermal_data, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.thermal_soc_data, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 8
  %11 = getelementptr inbounds %struct.thermal_soc_data, ptr %5, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %10, i32 noundef %12) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load i32, ptr %8, align 4
  %17 = add i32 %16, 4
  %18 = getelementptr inbounds %struct.thermal_soc_data, ptr %5, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %17, i32 noundef %19) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.imx_thermal_data, ptr %3, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  tail call void @clk_disable(ptr noundef %24) #8
  tail call void @clk_unprepare(ptr noundef %24) #8
  br label %25

25:                                               ; preds = %22, %15, %1
  %26 = phi i32 [ 0, %22 ], [ %13, %1 ], [ %20, %15 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_thermal_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.imx_thermal_data, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.imx_thermal_data, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.imx_thermal_data, ptr %3, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_prepare(ptr noundef %9) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = tail call i32 @clk_enable(ptr noundef %9) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %32

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.thermal_soc_data, ptr %5, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 8
  %20 = getelementptr inbounds %struct.thermal_soc_data, ptr %5, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %19, i32 noundef %21) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load i32, ptr %17, align 4
  %26 = add i32 %25, 4
  %27 = getelementptr inbounds %struct.thermal_soc_data, ptr %5, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %26, i32 noundef %28) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 50, i32 noundef 2) #8
  br label %32

32:                                               ; preds = %31, %24, %16, %15, %1
  %33 = phi i32 [ 0, %31 ], [ %22, %16 ], [ %29, %24 ], [ %13, %15 ], [ %10, %1 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

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
!9 = !{i64 2148379395, i64 2148379675, i64 2148380009, i64 2148380343}
!10 = !{i64 2147965722}
!11 = !{i64 464032, i64 2147954003, i64 2147954029, i64 2147954076, i64 2147954098, i64 2147954126, i64 2147954146}
!12 = !{i64 450601, i64 450626, i64 450648, i64 450664, i64 450676, i64 450696, i64 450720, i64 450736, i64 450748}
!13 = !{i64 2147965848}
!14 = !{i8 0, i8 2}
