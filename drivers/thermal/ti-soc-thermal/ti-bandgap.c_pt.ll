; ModuleID = '/llk/IR/drivers/thermal/ti-soc-thermal/ti-bandgap.c_pt.bc'
source_filename = "../drivers/thermal/ti-soc-thermal/ti-bandgap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ti_bandgap = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, ptr, i32, %struct.notifier_block, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ti_bandgap_data = type { i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, [0 x %struct.ti_temp_sensor] }
%struct.ti_temp_sensor = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.temp_sensor_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.temp_sensor_regval = type { i32, i32, i32, i32, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.temp_sensor_data = type { i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_ti_soc_thermal__171_1294_ti_bandgap_sensor_driver_init6 = internal global ptr @ti_bandgap_sensor_driver_init, section ".initcall6.init", align 4
@ti_bandgap_sensor_driver = internal global %struct.platform_driver { ptr @ti_bandgap_probe, ptr @ti_bandgap_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_ti_bandgap_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ti_bandgap_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ti_bandgap_sensor_driver_exit = internal global ptr @ti_bandgap_sensor_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description172 = internal constant [68 x i8] c"ti_soc_thermal.description=OMAP4+ bandgap temperature sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [66 x i8] c"ti_soc_thermal.file=drivers/thermal/ti-soc-thermal/ti-soc-thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [30 x i8] c"ti_soc_thermal.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias175 = internal constant [45 x i8] c"ti_soc_thermal.alias=platform:ti-soc-thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_author176 = internal constant [44 x i8] c"ti_soc_thermal.author=Texas Instrument Inc.\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [31 x i8] c"\013%s: invalid bandgap pointer\0A\00", align 1
@__func__.ti_bandgap_validate = private unnamed_addr constant [20 x i8] c"ti_bandgap_validate\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: sensor id out of range (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Wrong counter delay value read from register %X\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Delay %d ms is not supported\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"eocz timed out waiting high\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"eocz timed out waiting low\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"ti-soc-thermal\00", align 1
@of_ti_bandgap_match = internal constant [1 x %struct.of_device_id] zeroinitializer, align 4
@ti_bandgap_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @ti_bandgap_suspend, ptr @ti_bandgap_resume, ptr @ti_bandgap_suspend, ptr @ti_bandgap_resume, ptr @ti_bandgap_suspend, ptr @ti_bandgap_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to fetch platform data\0A\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"This OMAP thermal sensor is unreliable. You've been warned\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"failed to request fclock reference\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"failed to request div_ts_ck clock ref\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Non-trimmed BGAP, Temp not accurate\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"wrong clock rate (%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Cannot re-set clock rate. Continuing\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"failed to initialize Talert IRQ\0A\00", align 1
@soc_no_cpu_notifier = internal constant [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr @.str.23, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@.str.16 = private unnamed_addr constant [35 x i8] c"no platform information available\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"invalid gpio for tshut\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"tshut\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"request irq failed for TSHUT\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"\010%s: TSHUT temperature reached. Needs shut down...\0A\00", align 1
@__func__.ti_bandgap_tshut_irq_handler = private unnamed_addr constant [29 x i8] c"ti_bandgap_tshut_irq_handler\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"talert\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"Request threaded irq failed.\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"OMAP4430\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_ti_bandgap_sensor_driver_exit, ptr @__initcall__kmod_ti_soc_thermal__171_1294_ti_bandgap_sensor_driver_init6, ptr @ti_bandgap_sensor_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ti_bandgap_read_update_interval(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ti_bandgap_validate) #6
  br label %64

9:                                                ; preds = %3
  %10 = icmp slt i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ti_bandgap_data, ptr %13, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, %1
  br i1 %16, label %19, label %17

17:                                               ; preds = %11, %9
  %18 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ti_bandgap_validate, i32 noundef %1) #6
  br label %64

19:                                               ; preds = %11
  %20 = load i32, ptr %13, align 4
  %21 = and i32 %20, 272
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %64, label %23

23:                                               ; preds = %19
  %24 = and i32 %20, 16
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr %struct.ti_bandgap_data, ptr %13, i32 0, i32 10, i32 %1, i32 1
  %27 = load ptr, ptr %26, align 4
  br i1 %25, label %44, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.temp_sensor_registers, ptr %27, i32 0, i32 12
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %30
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %35 = getelementptr inbounds %struct.temp_sensor_registers, ptr %27, i32 0, i32 13
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, %34
  %38 = tail call i32 @llvm.cttz.i32(i32 %36, i1 false) #7, !range !10
  %39 = lshr i32 %37, %38
  %40 = mul i32 %39, 1000
  %41 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = udiv i32 %40, %42
  store i32 %43, ptr %2, align 4
  br label %64

44:                                               ; preds = %23
  %45 = getelementptr inbounds %struct.temp_sensor_registers, ptr %27, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 %46
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %51 = getelementptr inbounds %struct.temp_sensor_registers, ptr %27, i32 0, i32 8
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, %50
  %54 = tail call i32 @llvm.cttz.i32(i32 %52, i1 false) #7, !range !10
  %55 = lshr i32 %53, %54
  switch i32 %55, label %62 [
    i32 0, label %56
    i32 1, label %57
    i32 2, label %58
    i32 3, label %59
    i32 4, label %60
    i32 5, label %61
  ]

56:                                               ; preds = %44
  store i32 0, ptr %2, align 4
  br label %64

57:                                               ; preds = %44
  store i32 1, ptr %2, align 4
  br label %64

58:                                               ; preds = %44
  store i32 10, ptr %2, align 4
  br label %64

59:                                               ; preds = %44
  store i32 100, ptr %2, align 4
  br label %64

60:                                               ; preds = %44
  store i32 250, ptr %2, align 4
  br label %64

61:                                               ; preds = %44
  store i32 500, ptr %2, align 4
  br label %64

62:                                               ; preds = %44
  %63 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.2, i32 noundef %55) #6
  br label %64

64:                                               ; preds = %62, %61, %60, %59, %58, %57, %56, %28, %19, %17, %7
  %65 = phi i32 [ 0, %28 ], [ -524, %19 ], [ 0, %56 ], [ 0, %57 ], [ 0, %58 ], [ 0, %59 ], [ 0, %60 ], [ 0, %61 ], [ 0, %62 ], [ -34, %17 ], [ -22, %7 ]
  ret i32 %65
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ti_bandgap_write_update_interval(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ti_bandgap_validate) #6
  br label %85

9:                                                ; preds = %3
  %10 = icmp slt i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ti_bandgap_data, ptr %13, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, %1
  br i1 %16, label %19, label %17

17:                                               ; preds = %11, %9
  %18 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ti_bandgap_validate, i32 noundef %1) #6
  br label %85

19:                                               ; preds = %11
  %20 = load i32, ptr %13, align 4
  %21 = and i32 %20, 272
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %85, label %23

23:                                               ; preds = %19
  %24 = and i32 %20, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = mul i32 %28, %2
  %30 = udiv i32 %29, 1000
  %31 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %31) #7
  %32 = load ptr, ptr %12, align 4
  %33 = getelementptr %struct.ti_bandgap_data, ptr %32, i32 0, i32 10, i32 %1, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.temp_sensor_registers, ptr %34, i32 0, i32 12
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 %36
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %41 = getelementptr inbounds %struct.temp_sensor_registers, ptr %34, i32 0, i32 13
  %42 = load i32, ptr %41, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %40, %43
  %45 = tail call i32 @llvm.cttz.i32(i32 %42, i1 false) #7, !range !10
  %46 = shl i32 %30, %45
  %47 = or i32 %46, %44
  %48 = load i32, ptr %35, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %49 = load ptr, ptr %37, align 4
  %50 = getelementptr i8, ptr %49, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %47) #7, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %51 = load i16, ptr %31, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  br label %85

53:                                               ; preds = %23
  switch i32 %2, label %59 [
    i32 0, label %61
    i32 1, label %54
    i32 10, label %55
    i32 100, label %56
    i32 250, label %57
    i32 500, label %58
  ]

54:                                               ; preds = %53
  br label %61

55:                                               ; preds = %53
  br label %61

56:                                               ; preds = %53
  br label %61

57:                                               ; preds = %53
  br label %61

58:                                               ; preds = %53
  br label %61

59:                                               ; preds = %53
  %60 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %60, ptr noundef nonnull @.str.3, i32 noundef %2) #6
  br label %85

61:                                               ; preds = %58, %57, %56, %55, %54, %53
  %62 = phi i32 [ 5, %58 ], [ 4, %57 ], [ 3, %56 ], [ 2, %55 ], [ 1, %54 ], [ %2, %53 ]
  %63 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %63) #7
  %64 = load ptr, ptr %12, align 4
  %65 = getelementptr %struct.ti_bandgap_data, ptr %64, i32 0, i32 10, i32 %1, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.temp_sensor_registers, ptr %66, i32 0, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 %68
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %73 = getelementptr inbounds %struct.temp_sensor_registers, ptr %66, i32 0, i32 8
  %74 = load i32, ptr %73, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %72, %75
  %77 = tail call i32 @llvm.cttz.i32(i32 %74, i1 false) #7, !range !10
  %78 = shl i32 %62, %77
  %79 = or i32 %78, %76
  %80 = load i32, ptr %67, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %81 = load ptr, ptr %69, align 4
  %82 = getelementptr i8, ptr %81, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %79) #7, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %83 = load i16, ptr %63, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %63, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  br label %85

85:                                               ; preds = %61, %59, %26, %19, %17, %7
  %86 = phi i32 [ 0, %26 ], [ -524, %19 ], [ -22, %59 ], [ 0, %61 ], [ -34, %17 ], [ -22, %7 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ti_bandgap_read_temperature(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ti_bandgap_validate) #6
  br label %112

9:                                                ; preds = %3
  %10 = icmp slt i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ti_bandgap_data, ptr %13, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, %1
  br i1 %16, label %19, label %17

17:                                               ; preds = %11, %9
  %18 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ti_bandgap_validate, i32 noundef %1) #6
  br label %112

19:                                               ; preds = %11
  %20 = load i32, ptr %13, align 4
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call fastcc void @ti_bandgap_force_single_read(ptr noundef nonnull %0, i32 noundef %1)
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %25) #7
  %26 = load ptr, ptr %12, align 4
  %27 = getelementptr %struct.ti_bandgap_data, ptr %26, i32 0, i32 10, i32 %1, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %26, align 4
  %30 = and i32 %29, 128
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.temp_sensor_registers, ptr %28, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 %34
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %39 = getelementptr inbounds %struct.temp_sensor_registers, ptr %28, i32 0, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %38, %41
  %43 = tail call i32 @llvm.cttz.i32(i32 %40, i1 false) #7, !range !10
  %44 = shl nuw i32 1, %43
  %45 = or i32 %44, %42
  %46 = load i32, ptr %33, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %47 = load ptr, ptr %35, align 4
  %48 = getelementptr i8, ptr %47, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %45) #7, !srcloc !12
  %49 = getelementptr inbounds %struct.temp_sensor_registers, ptr %28, i32 0, i32 23
  %50 = load ptr, ptr %12, align 4
  %51 = load i32, ptr %50, align 4
  br label %52

52:                                               ; preds = %32, %24
  %53 = phi i32 [ %51, %32 ], [ %29, %24 ]
  %54 = phi ptr [ %49, %32 ], [ %28, %24 ]
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %53, 1024
  %57 = icmp eq i32 %56, 0
  %58 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 %55
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7
  br i1 %57, label %71, label %62

62:                                               ; preds = %52
  %63 = load ptr, ptr %58, align 4
  %64 = getelementptr i8, ptr %63, i32 %55
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %66 = icmp eq i32 %61, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr %58, align 4
  %69 = getelementptr i8, ptr %68, i32 %55
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  br label %71

71:                                               ; preds = %67, %62, %52
  %72 = phi i32 [ %70, %67 ], [ %61, %62 ], [ %61, %52 ]
  %73 = getelementptr inbounds %struct.temp_sensor_registers, ptr %28, i32 0, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = load ptr, ptr %12, align 4
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 128
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %71
  %80 = getelementptr %struct.ti_bandgap_data, ptr %75, i32 0, i32 10, i32 %1, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.temp_sensor_registers, ptr %81, i32 0, i32 5
  %83 = load i32, ptr %82, align 4
  %84 = load ptr, ptr %58, align 4
  %85 = getelementptr i8, ptr %84, i32 %83
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %87 = getelementptr inbounds %struct.temp_sensor_registers, ptr %81, i32 0, i32 9
  %88 = load i32, ptr %87, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %86, %89
  %91 = load i32, ptr %82, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %92 = load ptr, ptr %58, align 4
  %93 = getelementptr i8, ptr %92, i32 %91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %90) #7, !srcloc !12
  br label %94

94:                                               ; preds = %79, %71
  %95 = and i32 %74, %72
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %96 = load i16, ptr %25, align 4
  %97 = add i16 %96, 1
  store i16 %97, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  %98 = load ptr, ptr %12, align 4
  %99 = getelementptr inbounds %struct.ti_bandgap_data, ptr %98, i32 0, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = icmp ult i32 %95, %100
  br i1 %101, label %112, label %102

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.ti_bandgap_data, ptr %98, i32 0, i32 3
  %104 = load i32, ptr %103, align 4
  %105 = icmp ult i32 %104, %95
  br i1 %105, label %112, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.ti_bandgap_data, ptr %98, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = sub i32 %95, %100
  %110 = getelementptr i32, ptr %108, i32 %109
  %111 = load i32, ptr %110, align 4
  store i32 %111, ptr %2, align 4
  br label %112

112:                                              ; preds = %106, %102, %94, %17, %7
  %113 = phi i32 [ 0, %106 ], [ -34, %17 ], [ -22, %7 ], [ -5, %102 ], [ -5, %94 ]
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ti_bandgap_force_single_read(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.ti_bandgap_data, ptr %4, i32 0, i32 10, i32 %1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = load i32, ptr %4, align 4
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %2
  %15 = and i32 %11, 4096
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.temp_sensor_registers, ptr %6, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %8, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7
  %21 = getelementptr inbounds %struct.temp_sensor_registers, ptr %6, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %20, %23
  br i1 %16, label %32, label %25

25:                                               ; preds = %14
  %26 = tail call i32 @llvm.cttz.i32(i32 %22, i1 false) #7, !range !10
  %27 = shl nuw i32 1, %26
  %28 = or i32 %27, %24
  %29 = load i32, ptr %17, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr i8, ptr %30, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %28) #7, !srcloc !12
  br label %36

32:                                               ; preds = %14
  %33 = load i32, ptr %17, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr i8, ptr %34, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %24) #7, !srcloc !12
  br label %36

36:                                               ; preds = %32, %25, %2
  %37 = getelementptr inbounds %struct.temp_sensor_registers, ptr %6, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %99, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %3, align 4
  %42 = getelementptr %struct.ti_bandgap_data, ptr %41, i32 0, i32 10, i32 %1, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %7, align 4
  %46 = getelementptr i8, ptr %45, i32 %44
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %48 = getelementptr inbounds %struct.temp_sensor_registers, ptr %43, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %47, %50
  %52 = tail call i32 @llvm.cttz.i32(i32 %49, i1 false) #7, !range !10
  %53 = shl nuw i32 1, %52
  %54 = or i32 %53, %51
  %55 = load i32, ptr %43, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr i8, ptr %56, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %54) #7, !srcloc !12
  %58 = tail call i64 @ktime_get() #7
  %59 = add i64 %58, 1000000
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  %61 = getelementptr inbounds %struct.temp_sensor_registers, ptr %6, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %71, %40
  %66 = tail call i64 @ktime_get() #7
  %67 = icmp sgt i64 %66, %59
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %70 = load i32, ptr %61, align 4
  br label %77

71:                                               ; preds = %65
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748) #7
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  %74 = load i32, ptr %61, align 4
  %75 = and i32 %74, %73
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %65, label %77

77:                                               ; preds = %71, %68, %40
  %78 = phi i32 [ %70, %68 ], [ %62, %40 ], [ %74, %71 ]
  %79 = phi i32 [ %69, %68 ], [ %60, %40 ], [ %73, %71 ]
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %83, ptr noundef nonnull @.str.4) #6
  br label %84

84:                                               ; preds = %82, %77
  %85 = load ptr, ptr %3, align 4
  %86 = getelementptr %struct.ti_bandgap_data, ptr %85, i32 0, i32 10, i32 %1, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = load i32, ptr %87, align 4
  %89 = load ptr, ptr %7, align 4
  %90 = getelementptr i8, ptr %89, i32 %88
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %92 = getelementptr inbounds %struct.temp_sensor_registers, ptr %87, i32 0, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = xor i32 %93, -1
  %95 = and i32 %91, %94
  %96 = load i32, ptr %87, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %97 = load ptr, ptr %7, align 4
  %98 = getelementptr i8, ptr %97, i32 %96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %95) #7, !srcloc !12
  br label %99

99:                                               ; preds = %84, %36
  %100 = tail call i64 @ktime_get() #7
  %101 = add i64 %100, 1500000
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  %103 = getelementptr inbounds %struct.temp_sensor_registers, ptr %6, i32 0, i32 3
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, %102
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %113, %99
  %108 = tail call i64 @ktime_get() #7
  %109 = icmp sgt i64 %108, %101
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %112 = load i32, ptr %103, align 4
  br label %119

113:                                              ; preds = %107
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %114(i32 noundef 214748) #7
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  %116 = load i32, ptr %103, align 4
  %117 = and i32 %116, %115
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %107

119:                                              ; preds = %113, %110, %99
  %120 = phi i32 [ %112, %110 ], [ %104, %99 ], [ %116, %113 ]
  %121 = phi i32 [ %111, %110 ], [ %102, %99 ], [ %115, %113 ]
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %119
  %125 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %125, ptr noundef nonnull @.str.5) #6
  br label %126

126:                                              ; preds = %124, %119
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ti_bandgap_set_sensor_data(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ti_bandgap_validate) #6
  br label %23

9:                                                ; preds = %3
  %10 = icmp slt i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ti_bandgap_data, ptr %13, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, %1
  br i1 %16, label %19, label %17

17:                                               ; preds = %11, %9
  %18 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ti_bandgap_validate, i32 noundef %1) #6
  br label %23

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr %struct.temp_sensor_regval, ptr %21, i32 %1, i32 5
  store ptr %2, ptr %22, align 4
  br label %23

23:                                               ; preds = %19, %17, %7
  %24 = phi i32 [ 0, %19 ], [ -34, %17 ], [ -22, %7 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ti_bandgap_get_sensor_data(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ti_bandgap_validate) #6
  br label %23

8:                                                ; preds = %2
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ti_bandgap_data, ptr %12, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, %1
  br i1 %15, label %18, label %16

16:                                               ; preds = %10, %8
  %17 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ti_bandgap_validate, i32 noundef %1) #6
  br label %23

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.temp_sensor_regval, ptr %20, i32 %1, i32 5
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %18, %16, %6
  %24 = phi ptr [ %22, %18 ], [ inttoptr (i32 -34 to ptr), %16 ], [ inttoptr (i32 -22 to ptr), %6 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ti_bandgap_get_trend(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !21
  %5 = icmp eq ptr %0, null
  %6 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ti_bandgap_validate) #6
  br label %108

10:                                               ; preds = %3
  %11 = icmp slt i32 %1, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ti_bandgap_data, ptr %14, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, %1
  br i1 %17, label %20, label %18

18:                                               ; preds = %12, %10
  %19 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ti_bandgap_validate, i32 noundef %1) #6
  br label %108

20:                                               ; preds = %12
  %21 = load i32, ptr %14, align 4
  %22 = and i32 %21, 640
  %23 = icmp eq i32 %22, 640
  br i1 %23, label %24, label %108

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %25) #7
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr %struct.ti_bandgap_data, ptr %26, i32 0, i32 10, i32 %1, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.temp_sensor_registers, ptr %28, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %30
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %35 = getelementptr inbounds %struct.temp_sensor_registers, ptr %28, i32 0, i32 9
  %36 = load i32, ptr %35, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %34, %37
  %39 = tail call i32 @llvm.cttz.i32(i32 %36, i1 false) #7, !range !10
  %40 = shl nuw i32 1, %39
  %41 = or i32 %40, %38
  %42 = load i32, ptr %29, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %43 = load ptr, ptr %31, align 4
  %44 = getelementptr i8, ptr %43, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %41) #7, !srcloc !12
  %45 = getelementptr inbounds %struct.temp_sensor_registers, ptr %28, i32 0, i32 23
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.temp_sensor_registers, ptr %28, i32 0, i32 24
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %31, align 4
  %50 = getelementptr i8, ptr %49, i32 %46
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %52 = getelementptr inbounds %struct.temp_sensor_registers, ptr %28, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, %51
  %55 = load ptr, ptr %31, align 4
  %56 = getelementptr i8, ptr %55, i32 %48
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %58 = load i32, ptr %52, align 4
  %59 = load ptr, ptr %13, align 4
  %60 = getelementptr inbounds %struct.ti_bandgap_data, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = icmp ult i32 %54, %61
  br i1 %62, label %89, label %63

63:                                               ; preds = %24
  %64 = getelementptr inbounds %struct.ti_bandgap_data, ptr %59, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = icmp ult i32 %65, %54
  br i1 %66, label %89, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.ti_bandgap_data, ptr %59, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = sub i32 %54, %61
  %71 = getelementptr i32, ptr %69, i32 %70
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %58, %57
  %74 = icmp ult i32 %73, %61
  %75 = icmp ult i32 %65, %73
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %89, label %77

77:                                               ; preds = %67
  %78 = sub i32 %73, %61
  %79 = getelementptr i32, ptr %69, i32 %78
  %80 = load i32, ptr %79, align 4
  %81 = call i32 @ti_bandgap_read_update_interval(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %4)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i32, ptr %4, align 4
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 1, i32 %84
  store i32 %86, ptr %4, align 4
  %87 = sub i32 %72, %80
  %88 = sdiv i32 %87, %86
  store i32 %88, ptr %2, align 4
  br label %89

89:                                               ; preds = %83, %77, %67, %63, %24
  %90 = phi i32 [ %81, %77 ], [ 0, %83 ], [ -34, %63 ], [ -34, %24 ], [ -34, %67 ]
  %91 = load ptr, ptr %13, align 4
  %92 = getelementptr %struct.ti_bandgap_data, ptr %91, i32 0, i32 10, i32 %1, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.temp_sensor_registers, ptr %93, i32 0, i32 5
  %95 = load i32, ptr %94, align 4
  %96 = load ptr, ptr %31, align 4
  %97 = getelementptr i8, ptr %96, i32 %95
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %99 = getelementptr inbounds %struct.temp_sensor_registers, ptr %93, i32 0, i32 9
  %100 = load i32, ptr %99, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %98, %101
  %103 = load i32, ptr %94, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %104 = load ptr, ptr %31, align 4
  %105 = getelementptr i8, ptr %104, i32 %103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %102) #7, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %106 = load i16, ptr %25, align 4
  %107 = add i16 %106, 1
  store i16 %107, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  br label %108

108:                                              ; preds = %89, %20, %18, %8
  %109 = phi i32 [ %90, %89 ], [ -524, %20 ], [ -34, %18 ], [ -22, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %109
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ti_bandgap_sensor_driver_init() #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_bandgap_sensor_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ti_bandgap_sensor_driver_exit() #2 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_bandgap_sensor_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_bandgap_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.16) #6
  br label %62

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 56, i32 noundef 3520) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %62, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @of_match_device(ptr noundef nonnull @of_ti_bandgap_match, ptr noundef %2) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ti_bandgap, ptr %8, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  br label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.of_device_id, ptr %11, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ti_bandgap, ptr %8, i32 0, i32 2
  store ptr %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi ptr [ %15, %13 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.ti_bandgap_data, ptr %21, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 24) #7
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %26, label %28, !prof !22

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ti_bandgap, ptr %8, i32 0, i32 3
  store ptr null, ptr %27, align 4
  br label %62

28:                                               ; preds = %20
  %29 = extractvalue { i32, i1 } %24, 0
  %30 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %29, i32 noundef 3520) #7
  %31 = getelementptr inbounds %struct.ti_bandgap, ptr %8, i32 0, i32 3
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %62, label %33

33:                                               ; preds = %28
  %34 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.ti_bandgap, ptr %8, i32 0, i32 1
  br label %42

38:                                               ; preds = %48
  %39 = add i32 %44, 1
  %40 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef %39) #7
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %38, %36
  %43 = phi ptr [ %34, %36 ], [ %40, %38 ]
  %44 = phi i32 [ 0, %36 ], [ %39, %38 ]
  %45 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %43) #7
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store ptr %45, ptr %37, align 4
  br label %48

48:                                               ; preds = %47, %42
  %49 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %59, label %38

50:                                               ; preds = %38, %33
  %51 = load i32, ptr %21, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = tail call ptr @devm_gpiod_get(ptr noundef %2, ptr noundef null, i32 noundef 1) #7
  %56 = getelementptr inbounds %struct.ti_bandgap, ptr %8, i32 0, i32 8
  store ptr %55, ptr %56, align 4
  %57 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.17) #6
  br label %59

59:                                               ; preds = %58, %54, %50, %48
  %60 = phi ptr [ %55, %58 ], [ %8, %54 ], [ %8, %50 ], [ %45, %48 ]
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %65

62:                                               ; preds = %59, %28, %26, %7, %6
  %63 = phi ptr [ %60, %59 ], [ inttoptr (i32 -12 to ptr), %28 ], [ inttoptr (i32 -12 to ptr), %26 ], [ inttoptr (i32 -12 to ptr), %7 ], [ inttoptr (i32 -22 to ptr), %6 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #6
  %64 = ptrtoint ptr %63 to i32
  br label %600

65:                                               ; preds = %59
  store ptr %2, ptr %60, align 4
  %66 = getelementptr inbounds %struct.ti_bandgap, ptr %60, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 2048
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.8) #6
  %72 = load ptr, ptr %66, align 4
  %73 = load i32, ptr %72, align 4
  br label %74

74:                                               ; preds = %71, %65
  %75 = phi i32 [ %73, %71 ], [ %68, %65 ]
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ti_bandgap, ptr %60, i32 0, i32 8
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 @gpiod_to_irq(ptr noundef %80) #7
  %82 = tail call i32 @request_threaded_irq(i32 noundef %81, ptr noundef nonnull @ti_bandgap_tshut_irq_handler, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.18, ptr noundef null) #7
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %78
  %85 = load ptr, ptr %60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.19) #6
  br label %86

86:                                               ; preds = %84, %78, %74
  %87 = load ptr, ptr %66, align 4
  %88 = getelementptr inbounds %struct.ti_bandgap_data, ptr %87, i32 0, i32 4
  %89 = load ptr, ptr %88, align 4
  %90 = tail call ptr @clk_get(ptr noundef null, ptr noundef %89) #7
  %91 = getelementptr inbounds %struct.ti_bandgap, ptr %60, i32 0, i32 4
  store ptr %90, ptr %91, align 4
  %92 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #6
  %94 = load ptr, ptr %91, align 4
  %95 = ptrtoint ptr %94 to i32
  br label %589

96:                                               ; preds = %86
  %97 = load ptr, ptr %66, align 4
  %98 = getelementptr inbounds %struct.ti_bandgap_data, ptr %97, i32 0, i32 5
  %99 = load ptr, ptr %98, align 4
  %100 = tail call ptr @clk_get(ptr noundef null, ptr noundef %99) #7
  %101 = getelementptr inbounds %struct.ti_bandgap, ptr %60, i32 0, i32 5
  store ptr %100, ptr %101, align 4
  %102 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %102, label %110, label %103

103:                                              ; preds = %96
  %104 = load ptr, ptr %66, align 4
  %105 = getelementptr inbounds %struct.ti_bandgap_data, ptr %104, i32 0, i32 6
  %106 = load i32, ptr %105, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %133

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.ti_bandgap, ptr %60, i32 0, i32 1
  br label %113

110:                                              ; preds = %96
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11) #6
  %111 = load ptr, ptr %101, align 4
  %112 = ptrtoint ptr %111 to i32
  br label %586

113:                                              ; preds = %125, %108
  %114 = phi ptr [ %104, %108 ], [ %127, %125 ]
  %115 = phi i32 [ 0, %108 ], [ %126, %125 ]
  %116 = getelementptr %struct.ti_bandgap_data, ptr %114, i32 0, i32 10, i32 %115, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.temp_sensor_registers, ptr %117, i32 0, i32 25
  %119 = load i32, ptr %118, align 4
  %120 = load ptr, ptr %109, align 4
  %121 = getelementptr i8, ptr %120, i32 %119
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.12) #6
  br label %125

125:                                              ; preds = %124, %113
  %126 = add nuw nsw i32 %115, 1
  %127 = load ptr, ptr %66, align 4
  %128 = getelementptr inbounds %struct.ti_bandgap_data, ptr %127, i32 0, i32 6
  %129 = load i32, ptr %128, align 4
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %113, label %131

131:                                              ; preds = %125
  %132 = load ptr, ptr %101, align 4
  br label %133

133:                                              ; preds = %131, %103
  %134 = phi ptr [ %100, %103 ], [ %132, %131 ]
  %135 = phi ptr [ %104, %103 ], [ %127, %131 ]
  %136 = getelementptr inbounds %struct.ti_bandgap_data, ptr %135, i32 0, i32 10
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.temp_sensor_data, ptr %137, i32 0, i32 5
  %139 = load i32, ptr %138, align 4
  %140 = tail call i32 @clk_round_rate(ptr noundef %134, i32 noundef %139) #7
  %141 = load ptr, ptr %66, align 4
  %142 = getelementptr inbounds %struct.ti_bandgap_data, ptr %141, i32 0, i32 10
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.temp_sensor_data, ptr %143, i32 0, i32 4
  %145 = load i32, ptr %144, align 4
  %146 = icmp ult i32 %140, %145
  %147 = icmp slt i32 %140, 1
  %148 = or i1 %147, %146
  br i1 %148, label %149, label %150

149:                                              ; preds = %133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %140) #6
  br label %583

150:                                              ; preds = %133
  %151 = load ptr, ptr %101, align 4
  %152 = tail call i32 @clk_set_rate(ptr noundef %151, i32 noundef %140) #7
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.14) #6
  br label %155

155:                                              ; preds = %154, %150
  %156 = getelementptr inbounds %struct.ti_bandgap, ptr %60, i32 0, i32 9
  store i32 %140, ptr %156, align 4
  %157 = load ptr, ptr %66, align 4
  %158 = load i32, ptr %157, align 4
  %159 = and i32 %158, 64
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %169, label %161

161:                                              ; preds = %155
  %162 = load ptr, ptr %91, align 4
  %163 = tail call i32 @clk_prepare(ptr noundef %162) #7
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = tail call i32 @clk_enable(ptr noundef %162) #7
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %165
  tail call void @clk_unprepare(ptr noundef %162) #7
  br label %169

169:                                              ; preds = %168, %165, %161, %155
  %170 = getelementptr inbounds %struct.ti_bandgap, ptr %60, i32 0, i32 6
  store i32 0, ptr %170, align 4
  store ptr %2, ptr %60, align 4
  %171 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %60, ptr %171, align 8
  %172 = load ptr, ptr %66, align 4
  %173 = load i32, ptr %172, align 4
  %174 = and i32 %173, 32
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %205, label %176

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.ti_bandgap_data, ptr %172, i32 0, i32 6
  %178 = load i32, ptr %177, align 4
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %205

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.ti_bandgap, ptr %60, i32 0, i32 1
  br label %182

182:                                              ; preds = %182, %180
  %183 = phi ptr [ %172, %180 ], [ %199, %182 ]
  %184 = phi i32 [ 0, %180 ], [ %198, %182 ]
  %185 = getelementptr %struct.ti_bandgap_data, ptr %183, i32 0, i32 10, i32 %184, i32 1
  %186 = load ptr, ptr %185, align 4
  %187 = load i32, ptr %186, align 4
  %188 = load ptr, ptr %181, align 4
  %189 = getelementptr i8, ptr %188, i32 %187
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %191 = getelementptr inbounds %struct.temp_sensor_registers, ptr %186, i32 0, i32 1
  %192 = load i32, ptr %191, align 4
  %193 = xor i32 %192, -1
  %194 = and i32 %190, %193
  %195 = load i32, ptr %186, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %196 = load ptr, ptr %181, align 4
  %197 = getelementptr i8, ptr %196, i32 %195
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %194) #7, !srcloc !12
  %198 = add nuw nsw i32 %184, 1
  %199 = load ptr, ptr %66, align 4
  %200 = getelementptr inbounds %struct.ti_bandgap_data, ptr %199, i32 0, i32 6
  %201 = load i32, ptr %200, align 4
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %182, label %203

203:                                              ; preds = %182
  %204 = load i32, ptr %199, align 4
  br label %205

205:                                              ; preds = %203, %176, %169
  %206 = phi i32 [ %204, %203 ], [ %173, %169 ], [ %173, %176 ]
  %207 = phi ptr [ %199, %203 ], [ %172, %169 ], [ %172, %176 ]
  %208 = and i32 %206, 16
  %209 = icmp eq i32 %208, 0
  %210 = getelementptr inbounds %struct.ti_bandgap_data, ptr %207, i32 0, i32 6
  %211 = load i32, ptr %210, align 4
  br i1 %209, label %241, label %212

212:                                              ; preds = %205
  %213 = icmp sgt i32 %211, 0
  br i1 %213, label %214, label %417

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct.ti_bandgap, ptr %60, i32 0, i32 1
  br label %216

216:                                              ; preds = %216, %214
  %217 = phi ptr [ %207, %214 ], [ %237, %216 ]
  %218 = phi i32 [ 0, %214 ], [ %236, %216 ]
  %219 = getelementptr %struct.ti_bandgap_data, ptr %217, i32 0, i32 10, i32 %218, i32 1
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr inbounds %struct.temp_sensor_registers, ptr %220, i32 0, i32 12
  %222 = load i32, ptr %221, align 4
  %223 = load ptr, ptr %215, align 4
  %224 = getelementptr i8, ptr %223, i32 %222
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %224) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %226 = getelementptr inbounds %struct.temp_sensor_registers, ptr %220, i32 0, i32 13
  %227 = load i32, ptr %226, align 4
  %228 = xor i32 %227, -1
  %229 = and i32 %225, %228
  %230 = tail call i32 @llvm.cttz.i32(i32 %227, i1 false) #7, !range !10
  %231 = shl nuw i32 1, %230
  %232 = or i32 %231, %229
  %233 = load i32, ptr %221, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %234 = load ptr, ptr %215, align 4
  %235 = getelementptr i8, ptr %234, i32 %233
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %232) #7, !srcloc !12
  %236 = add nuw nsw i32 %218, 1
  %237 = load ptr, ptr %66, align 4
  %238 = getelementptr inbounds %struct.ti_bandgap_data, ptr %237, i32 0, i32 6
  %239 = load i32, ptr %238, align 4
  %240 = icmp slt i32 %236, %239
  br i1 %240, label %216, label %241

241:                                              ; preds = %216, %205
  %242 = phi i32 [ %211, %205 ], [ %239, %216 ]
  %243 = phi ptr [ %207, %205 ], [ %237, %216 ]
  %244 = icmp sgt i32 %242, 0
  br i1 %244, label %245, label %417

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.ti_bandgap, ptr %60, i32 0, i32 1
  br label %247

247:                                              ; preds = %378, %245
  %248 = phi ptr [ %243, %245 ], [ %379, %378 ]
  %249 = phi i32 [ 0, %245 ], [ %380, %378 ]
  %250 = getelementptr %struct.ti_bandgap_data, ptr %248, i32 0, i32 10, i32 %249
  %251 = load ptr, ptr %250, align 4
  %252 = load i32, ptr %248, align 4
  %253 = and i32 %252, 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %333, label %255

255:                                              ; preds = %247
  %256 = getelementptr %struct.ti_bandgap_data, ptr %248, i32 0, i32 10, i32 %249, i32 1
  %257 = load ptr, ptr %256, align 4
  %258 = getelementptr inbounds %struct.temp_sensor_registers, ptr %257, i32 0, i32 14
  %259 = load i32, ptr %258, align 4
  %260 = load ptr, ptr %246, align 4
  %261 = getelementptr i8, ptr %260, i32 %259
  %262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %261) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %263 = getelementptr inbounds %struct.temp_sensor_registers, ptr %257, i32 0, i32 16
  %264 = load i32, ptr %263, align 4
  %265 = xor i32 %264, -1
  %266 = and i32 %262, %265
  %267 = getelementptr inbounds %struct.temp_sensor_data, ptr %251, i32 0, i32 3
  %268 = load i32, ptr %267, align 4
  %269 = tail call i32 @llvm.cttz.i32(i32 %264, i1 false) #7, !range !10
  %270 = shl i32 %268, %269
  %271 = or i32 %270, %266
  %272 = load i32, ptr %258, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %273 = load ptr, ptr %246, align 4
  %274 = getelementptr i8, ptr %273, i32 %272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %274, i32 %271) #7, !srcloc !12
  %275 = load ptr, ptr %66, align 4
  %276 = getelementptr %struct.ti_bandgap_data, ptr %275, i32 0, i32 10, i32 %249, i32 1
  %277 = load ptr, ptr %276, align 4
  %278 = getelementptr inbounds %struct.temp_sensor_registers, ptr %277, i32 0, i32 14
  %279 = load i32, ptr %278, align 4
  %280 = load ptr, ptr %246, align 4
  %281 = getelementptr i8, ptr %280, i32 %279
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %281) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %283 = getelementptr inbounds %struct.temp_sensor_registers, ptr %277, i32 0, i32 15
  %284 = load i32, ptr %283, align 4
  %285 = xor i32 %284, -1
  %286 = and i32 %282, %285
  %287 = getelementptr inbounds %struct.temp_sensor_data, ptr %251, i32 0, i32 2
  %288 = load i32, ptr %287, align 4
  %289 = tail call i32 @llvm.cttz.i32(i32 %284, i1 false) #7, !range !10
  %290 = shl i32 %288, %289
  %291 = or i32 %290, %286
  %292 = load i32, ptr %278, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %293 = load ptr, ptr %246, align 4
  %294 = getelementptr i8, ptr %293, i32 %292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %294, i32 %291) #7, !srcloc !12
  %295 = load ptr, ptr %66, align 4
  %296 = getelementptr %struct.ti_bandgap_data, ptr %295, i32 0, i32 10, i32 %249, i32 1
  %297 = load ptr, ptr %296, align 4
  %298 = getelementptr inbounds %struct.temp_sensor_registers, ptr %297, i32 0, i32 5
  %299 = load i32, ptr %298, align 4
  %300 = load ptr, ptr %246, align 4
  %301 = getelementptr i8, ptr %300, i32 %299
  %302 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %301) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %303 = getelementptr inbounds %struct.temp_sensor_registers, ptr %297, i32 0, i32 6
  %304 = load i32, ptr %303, align 4
  %305 = xor i32 %304, -1
  %306 = and i32 %302, %305
  %307 = tail call i32 @llvm.cttz.i32(i32 %304, i1 false) #7, !range !10
  %308 = shl nuw i32 1, %307
  %309 = or i32 %308, %306
  %310 = load i32, ptr %298, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %311 = load ptr, ptr %246, align 4
  %312 = getelementptr i8, ptr %311, i32 %310
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %312, i32 %309) #7, !srcloc !12
  %313 = load ptr, ptr %66, align 4
  %314 = getelementptr %struct.ti_bandgap_data, ptr %313, i32 0, i32 10, i32 %249, i32 1
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr inbounds %struct.temp_sensor_registers, ptr %315, i32 0, i32 5
  %317 = load i32, ptr %316, align 4
  %318 = load ptr, ptr %246, align 4
  %319 = getelementptr i8, ptr %318, i32 %317
  %320 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %319) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %321 = getelementptr inbounds %struct.temp_sensor_registers, ptr %315, i32 0, i32 7
  %322 = load i32, ptr %321, align 4
  %323 = xor i32 %322, -1
  %324 = and i32 %320, %323
  %325 = tail call i32 @llvm.cttz.i32(i32 %322, i1 false) #7, !range !10
  %326 = shl nuw i32 1, %325
  %327 = or i32 %326, %324
  %328 = load i32, ptr %316, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %329 = load ptr, ptr %246, align 4
  %330 = getelementptr i8, ptr %329, i32 %328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %330, i32 %327) #7, !srcloc !12
  %331 = load ptr, ptr %66, align 4
  %332 = load i32, ptr %331, align 4
  br label %333

333:                                              ; preds = %255, %247
  %334 = phi ptr [ %331, %255 ], [ %248, %247 ]
  %335 = phi i32 [ %332, %255 ], [ %252, %247 ]
  %336 = and i32 %335, 2
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %378, label %338

338:                                              ; preds = %333
  %339 = getelementptr %struct.ti_bandgap_data, ptr %334, i32 0, i32 10, i32 %249, i32 1
  %340 = load ptr, ptr %339, align 4
  %341 = getelementptr inbounds %struct.temp_sensor_registers, ptr %340, i32 0, i32 17
  %342 = load i32, ptr %341, align 4
  %343 = load ptr, ptr %246, align 4
  %344 = getelementptr i8, ptr %343, i32 %342
  %345 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %344) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %346 = getelementptr inbounds %struct.temp_sensor_registers, ptr %340, i32 0, i32 18
  %347 = load i32, ptr %346, align 4
  %348 = xor i32 %347, -1
  %349 = and i32 %345, %348
  %350 = load i32, ptr %251, align 4
  %351 = tail call i32 @llvm.cttz.i32(i32 %347, i1 false) #7, !range !10
  %352 = shl i32 %350, %351
  %353 = or i32 %352, %349
  %354 = load i32, ptr %341, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %355 = load ptr, ptr %246, align 4
  %356 = getelementptr i8, ptr %355, i32 %354
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %356, i32 %353) #7, !srcloc !12
  %357 = load ptr, ptr %66, align 4
  %358 = getelementptr %struct.ti_bandgap_data, ptr %357, i32 0, i32 10, i32 %249, i32 1
  %359 = load ptr, ptr %358, align 4
  %360 = getelementptr inbounds %struct.temp_sensor_registers, ptr %359, i32 0, i32 17
  %361 = load i32, ptr %360, align 4
  %362 = load ptr, ptr %246, align 4
  %363 = getelementptr i8, ptr %362, i32 %361
  %364 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %363) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %365 = getelementptr inbounds %struct.temp_sensor_registers, ptr %359, i32 0, i32 19
  %366 = load i32, ptr %365, align 4
  %367 = xor i32 %366, -1
  %368 = and i32 %364, %367
  %369 = getelementptr inbounds %struct.temp_sensor_data, ptr %251, i32 0, i32 1
  %370 = load i32, ptr %369, align 4
  %371 = tail call i32 @llvm.cttz.i32(i32 %366, i1 false) #7, !range !10
  %372 = shl i32 %370, %371
  %373 = or i32 %372, %368
  %374 = load i32, ptr %360, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %375 = load ptr, ptr %246, align 4
  %376 = getelementptr i8, ptr %375, i32 %374
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %376, i32 %373) #7, !srcloc !12
  %377 = load ptr, ptr %66, align 4
  br label %378

378:                                              ; preds = %338, %333
  %379 = phi ptr [ %377, %338 ], [ %334, %333 ]
  %380 = add nuw nsw i32 %249, 1
  %381 = getelementptr inbounds %struct.ti_bandgap_data, ptr %379, i32 0, i32 6
  %382 = load i32, ptr %381, align 4
  %383 = icmp slt i32 %380, %382
  br i1 %383, label %247, label %384

384:                                              ; preds = %378
  %385 = load i32, ptr %379, align 4
  %386 = and i32 %385, 8
  %387 = icmp ne i32 %386, 0
  %388 = icmp sgt i32 %382, 0
  %389 = select i1 %387, i1 %388, i1 false
  br i1 %389, label %390, label %420

390:                                              ; preds = %384
  %391 = getelementptr inbounds %struct.ti_bandgap, ptr %60, i32 0, i32 1
  br label %392

392:                                              ; preds = %392, %390
  %393 = phi i32 [ 0, %390 ], [ %412, %392 ]
  tail call fastcc void @ti_bandgap_force_single_read(ptr noundef nonnull %60, i32 noundef %393) #7
  %394 = load ptr, ptr %66, align 4
  %395 = getelementptr %struct.ti_bandgap_data, ptr %394, i32 0, i32 10, i32 %393, i32 1
  %396 = load ptr, ptr %395, align 4
  %397 = getelementptr inbounds %struct.temp_sensor_registers, ptr %396, i32 0, i32 10
  %398 = load i32, ptr %397, align 4
  %399 = load ptr, ptr %391, align 4
  %400 = getelementptr i8, ptr %399, i32 %398
  %401 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %400) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %402 = getelementptr inbounds %struct.temp_sensor_registers, ptr %396, i32 0, i32 11
  %403 = load i32, ptr %402, align 4
  %404 = xor i32 %403, -1
  %405 = and i32 %401, %404
  %406 = tail call i32 @llvm.cttz.i32(i32 %403, i1 false) #7, !range !10
  %407 = shl nuw i32 1, %406
  %408 = or i32 %407, %405
  %409 = load i32, ptr %397, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %410 = load ptr, ptr %391, align 4
  %411 = getelementptr i8, ptr %410, i32 %409
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %411, i32 %408) #7, !srcloc !12
  %412 = add nuw nsw i32 %393, 1
  %413 = load ptr, ptr %66, align 4
  %414 = getelementptr inbounds %struct.ti_bandgap_data, ptr %413, i32 0, i32 6
  %415 = load i32, ptr %414, align 4
  %416 = icmp slt i32 %412, %415
  br i1 %416, label %392, label %417

417:                                              ; preds = %392, %241, %212
  %418 = phi ptr [ %243, %241 ], [ %207, %212 ], [ %413, %392 ]
  %419 = load i32, ptr %418, align 4
  br label %420

420:                                              ; preds = %417, %384
  %421 = phi i32 [ %385, %384 ], [ %419, %417 ]
  %422 = phi ptr [ %379, %384 ], [ %418, %417 ]
  %423 = and i32 %421, 16
  %424 = icmp eq i32 %423, 0
  %425 = getelementptr inbounds %struct.ti_bandgap_data, ptr %422, i32 0, i32 6
  %426 = load i32, ptr %425, align 4
  br i1 %424, label %458, label %427

427:                                              ; preds = %420
  %428 = icmp sgt i32 %426, 0
  br i1 %428, label %429, label %490

429:                                              ; preds = %427
  %430 = getelementptr inbounds %struct.ti_bandgap, ptr %60, i32 0, i32 1
  br label %431

431:                                              ; preds = %431, %429
  %432 = phi ptr [ %422, %429 ], [ %454, %431 ]
  %433 = phi i32 [ 0, %429 ], [ %453, %431 ]
  %434 = getelementptr %struct.ti_bandgap_data, ptr %432, i32 0, i32 10, i32 %433, i32 1
  %435 = load ptr, ptr %434, align 4
  %436 = getelementptr inbounds %struct.temp_sensor_registers, ptr %435, i32 0, i32 12
  %437 = load i32, ptr %436, align 4
  %438 = load ptr, ptr %430, align 4
  %439 = getelementptr i8, ptr %438, i32 %437
  %440 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %439) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %441 = getelementptr inbounds %struct.temp_sensor_registers, ptr %435, i32 0, i32 13
  %442 = load i32, ptr %441, align 4
  %443 = xor i32 %442, -1
  %444 = and i32 %440, %443
  %445 = load i32, ptr %156, align 4
  %446 = lshr i32 %445, 2
  %447 = tail call i32 @llvm.cttz.i32(i32 %442, i1 false) #7, !range !10
  %448 = shl i32 %446, %447
  %449 = or i32 %448, %444
  %450 = load i32, ptr %436, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %451 = load ptr, ptr %430, align 4
  %452 = getelementptr i8, ptr %451, i32 %450
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %452, i32 %449) #7, !srcloc !12
  %453 = add nuw nsw i32 %433, 1
  %454 = load ptr, ptr %66, align 4
  %455 = getelementptr inbounds %struct.ti_bandgap_data, ptr %454, i32 0, i32 6
  %456 = load i32, ptr %455, align 4
  %457 = icmp slt i32 %453, %456
  br i1 %457, label %431, label %458

458:                                              ; preds = %431, %420
  %459 = phi i32 [ %426, %420 ], [ %456, %431 ]
  %460 = phi ptr [ %422, %420 ], [ %454, %431 ]
  %461 = icmp sgt i32 %459, 0
  br i1 %461, label %462, label %490

462:                                              ; preds = %484, %458
  %463 = phi ptr [ %485, %484 ], [ %460, %458 ]
  %464 = phi i32 [ %486, %484 ], [ 0, %458 ]
  %465 = getelementptr %struct.ti_bandgap_data, ptr %463, i32 0, i32 10, i32 %464, i32 5
  %466 = load ptr, ptr %465, align 4
  %467 = icmp eq ptr %466, null
  br i1 %467, label %473, label %468

468:                                              ; preds = %462
  %469 = tail call i32 %466(ptr noundef nonnull %60, i32 noundef %464) #7
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %518

471:                                              ; preds = %468
  %472 = load ptr, ptr %66, align 4
  br label %473

473:                                              ; preds = %471, %462
  %474 = phi ptr [ %472, %471 ], [ %463, %462 ]
  %475 = getelementptr inbounds %struct.ti_bandgap_data, ptr %474, i32 0, i32 8
  %476 = load ptr, ptr %475, align 4
  %477 = icmp eq ptr %476, null
  br i1 %477, label %484, label %478

478:                                              ; preds = %473
  %479 = getelementptr %struct.ti_bandgap_data, ptr %474, i32 0, i32 10, i32 %464, i32 2
  %480 = load ptr, ptr %479, align 4
  %481 = tail call i32 %476(ptr noundef nonnull %60, i32 noundef %464, ptr noundef %480) #7
  %482 = icmp eq i32 %481, 0
  %483 = load ptr, ptr %66, align 4
  br i1 %482, label %484, label %512

484:                                              ; preds = %478, %473
  %485 = phi ptr [ %474, %473 ], [ %483, %478 ]
  %486 = add nuw nsw i32 %464, 1
  %487 = getelementptr inbounds %struct.ti_bandgap_data, ptr %485, i32 0, i32 6
  %488 = load i32, ptr %487, align 4
  %489 = icmp slt i32 %486, %488
  br i1 %489, label %462, label %490

490:                                              ; preds = %484, %458, %427
  %491 = phi ptr [ %460, %458 ], [ %422, %427 ], [ %485, %484 ]
  %492 = load i32, ptr %491, align 4
  %493 = and i32 %492, 4
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %506, label %495

495:                                              ; preds = %490
  %496 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %497 = getelementptr inbounds %struct.ti_bandgap, ptr %60, i32 0, i32 7
  store i32 %496, ptr %497, align 4
  %498 = icmp slt i32 %496, 0
  br i1 %498, label %503, label %499

499:                                              ; preds = %495
  %500 = tail call i32 @request_threaded_irq(i32 noundef %496, ptr noundef null, ptr noundef nonnull @ti_bandgap_talert_irq_handler, i32 noundef 8196, ptr noundef nonnull @.str.21, ptr noundef nonnull %60) #7
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %506, label %502

502:                                              ; preds = %499
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.22) #6
  br label %503

503:                                              ; preds = %502, %495
  %504 = phi i32 [ %496, %495 ], [ %500, %502 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.15) #6
  %505 = load ptr, ptr %66, align 4
  br label %575

506:                                              ; preds = %499, %490
  %507 = getelementptr inbounds %struct.ti_bandgap, ptr %60, i32 0, i32 10
  store ptr @bandgap_omap_cpu_notifier, ptr %507, align 4
  %508 = tail call ptr @soc_device_match(ptr noundef nonnull @soc_no_cpu_notifier) #7
  %509 = icmp eq ptr %508, null
  br i1 %509, label %510, label %600

510:                                              ; preds = %506
  %511 = tail call i32 @cpu_pm_register_notifier(ptr noundef %507) #7
  br label %600

512:                                              ; preds = %478
  %513 = getelementptr %struct.ti_bandgap_data, ptr %483, i32 0, i32 10, i32 %464, i32 6
  %514 = load ptr, ptr %513, align 4
  %515 = icmp eq ptr %514, null
  br i1 %515, label %518, label %516

516:                                              ; preds = %512
  %517 = tail call i32 %514(ptr noundef nonnull %60, i32 noundef %464) #7
  br label %518

518:                                              ; preds = %516, %512, %468
  %519 = phi i32 [ %481, %512 ], [ %481, %516 ], [ %469, %468 ]
  %520 = icmp eq i32 %464, 0
  br i1 %520, label %540, label %521

521:                                              ; preds = %538, %518
  %522 = phi i32 [ %523, %538 ], [ %464, %518 ]
  %523 = add nsw i32 %522, -1
  %524 = load ptr, ptr %66, align 4
  %525 = getelementptr %struct.ti_bandgap_data, ptr %524, i32 0, i32 10, i32 %523, i32 6
  %526 = load ptr, ptr %525, align 4
  %527 = icmp eq ptr %526, null
  br i1 %527, label %531, label %528

528:                                              ; preds = %521
  %529 = tail call i32 %526(ptr noundef nonnull %60, i32 noundef %523) #7
  %530 = load ptr, ptr %66, align 4
  br label %531

531:                                              ; preds = %528, %521
  %532 = phi ptr [ %530, %528 ], [ %524, %521 ]
  %533 = getelementptr inbounds %struct.ti_bandgap_data, ptr %532, i32 0, i32 9
  %534 = load ptr, ptr %533, align 4
  %535 = icmp eq ptr %534, null
  br i1 %535, label %538, label %536

536:                                              ; preds = %531
  %537 = tail call i32 %534(ptr noundef nonnull %60, i32 noundef %523) #7
  br label %538

538:                                              ; preds = %536, %531
  %539 = icmp sgt i32 %522, 1
  br i1 %539, label %521, label %540

540:                                              ; preds = %538, %518
  %541 = load ptr, ptr %66, align 4
  %542 = load i32, ptr %541, align 4
  %543 = and i32 %542, 32
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %575, label %545

545:                                              ; preds = %540
  %546 = getelementptr inbounds %struct.ti_bandgap_data, ptr %541, i32 0, i32 6
  %547 = load i32, ptr %546, align 4
  %548 = icmp sgt i32 %547, 0
  br i1 %548, label %549, label %575

549:                                              ; preds = %545
  %550 = getelementptr inbounds %struct.ti_bandgap, ptr %60, i32 0, i32 1
  br label %551

551:                                              ; preds = %551, %549
  %552 = phi ptr [ %541, %549 ], [ %571, %551 ]
  %553 = phi i32 [ 0, %549 ], [ %570, %551 ]
  %554 = getelementptr %struct.ti_bandgap_data, ptr %552, i32 0, i32 10, i32 %553, i32 1
  %555 = load ptr, ptr %554, align 4
  %556 = load i32, ptr %555, align 4
  %557 = load ptr, ptr %550, align 4
  %558 = getelementptr i8, ptr %557, i32 %556
  %559 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %558) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %560 = getelementptr inbounds %struct.temp_sensor_registers, ptr %555, i32 0, i32 1
  %561 = load i32, ptr %560, align 4
  %562 = xor i32 %561, -1
  %563 = and i32 %559, %562
  %564 = tail call i32 @llvm.cttz.i32(i32 %561, i1 false) #7, !range !10
  %565 = shl nuw i32 1, %564
  %566 = or i32 %565, %563
  %567 = load i32, ptr %555, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %568 = load ptr, ptr %550, align 4
  %569 = getelementptr i8, ptr %568, i32 %567
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %569, i32 %566) #7, !srcloc !12
  %570 = add nuw nsw i32 %553, 1
  %571 = load ptr, ptr %66, align 4
  %572 = getelementptr inbounds %struct.ti_bandgap_data, ptr %571, i32 0, i32 6
  %573 = load i32, ptr %572, align 4
  %574 = icmp slt i32 %570, %573
  br i1 %574, label %551, label %575

575:                                              ; preds = %551, %545, %540, %503
  %576 = phi ptr [ %505, %503 ], [ %541, %540 ], [ %541, %545 ], [ %571, %551 ]
  %577 = phi i32 [ %504, %503 ], [ %519, %540 ], [ %519, %545 ], [ %519, %551 ]
  %578 = load i32, ptr %576, align 4
  %579 = and i32 %578, 64
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %583, label %581

581:                                              ; preds = %575
  %582 = load ptr, ptr %91, align 4
  tail call void @clk_disable(ptr noundef %582) #7
  tail call void @clk_unprepare(ptr noundef %582) #7
  br label %583

583:                                              ; preds = %581, %575, %149
  %584 = phi i32 [ -19, %149 ], [ %577, %581 ], [ %577, %575 ]
  %585 = load ptr, ptr %101, align 4
  tail call void @clk_put(ptr noundef %585) #7
  br label %586

586:                                              ; preds = %583, %110
  %587 = phi i32 [ %112, %110 ], [ %584, %583 ]
  %588 = load ptr, ptr %91, align 4
  tail call void @clk_put(ptr noundef %588) #7
  br label %589

589:                                              ; preds = %586, %93
  %590 = phi i32 [ %95, %93 ], [ %587, %586 ]
  %591 = load ptr, ptr %66, align 4
  %592 = load i32, ptr %591, align 4
  %593 = and i32 %592, 1
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %600, label %595

595:                                              ; preds = %589
  %596 = getelementptr inbounds %struct.ti_bandgap, ptr %60, i32 0, i32 8
  %597 = load ptr, ptr %596, align 4
  %598 = tail call i32 @gpiod_to_irq(ptr noundef %597) #7
  %599 = tail call ptr @free_irq(i32 noundef %598, ptr noundef null) #7
  br label %600

600:                                              ; preds = %595, %589, %510, %506, %62
  %601 = phi i32 [ %64, %62 ], [ 0, %510 ], [ 0, %506 ], [ %590, %595 ], [ %590, %589 ]
  ret i32 %601
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_bandgap_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @soc_device_match(ptr noundef nonnull @soc_no_cpu_notifier) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ti_bandgap, ptr %3, i32 0, i32 10
  %8 = tail call i32 @cpu_pm_unregister_notifier(ptr noundef %7) #7
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.ti_bandgap, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ti_bandgap_data, ptr %11, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %70

15:                                               ; preds = %32, %9
  %16 = phi ptr [ %33, %32 ], [ %11, %9 ]
  %17 = phi i32 [ %34, %32 ], [ 0, %9 ]
  %18 = getelementptr %struct.ti_bandgap_data, ptr %16, i32 0, i32 10, i32 %17, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = tail call i32 %19(ptr noundef %3, i32 noundef %17) #7
  %23 = load ptr, ptr %10, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi ptr [ %23, %21 ], [ %16, %15 ]
  %26 = getelementptr inbounds %struct.ti_bandgap_data, ptr %25, i32 0, i32 9
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = tail call i32 %27(ptr noundef %3, i32 noundef %17) #7
  %31 = load ptr, ptr %10, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi ptr [ %25, %24 ], [ %31, %29 ]
  %34 = add nuw nsw i32 %17, 1
  %35 = getelementptr inbounds %struct.ti_bandgap_data, ptr %33, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %15, label %38

38:                                               ; preds = %32
  %39 = load i32, ptr %33, align 4
  %40 = and i32 %39, 32
  %41 = icmp ne i32 %40, 0
  %42 = icmp sgt i32 %36, 0
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %73

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.ti_bandgap, ptr %3, i32 0, i32 1
  br label %46

46:                                               ; preds = %46, %44
  %47 = phi ptr [ %33, %44 ], [ %66, %46 ]
  %48 = phi i32 [ 0, %44 ], [ %65, %46 ]
  %49 = getelementptr %struct.ti_bandgap_data, ptr %47, i32 0, i32 10, i32 %48, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = load i32, ptr %50, align 4
  %52 = load ptr, ptr %45, align 4
  %53 = getelementptr i8, ptr %52, i32 %51
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %55 = getelementptr inbounds %struct.temp_sensor_registers, ptr %50, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %54, %57
  %59 = tail call i32 @llvm.cttz.i32(i32 %56, i1 false) #7, !range !10
  %60 = shl nuw i32 1, %59
  %61 = or i32 %60, %58
  %62 = load i32, ptr %50, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %63 = load ptr, ptr %45, align 4
  %64 = getelementptr i8, ptr %63, i32 %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %61) #7, !srcloc !12
  %65 = add nuw nsw i32 %48, 1
  %66 = load ptr, ptr %10, align 4
  %67 = getelementptr inbounds %struct.ti_bandgap_data, ptr %66, i32 0, i32 6
  %68 = load i32, ptr %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %46, label %70

70:                                               ; preds = %46, %9
  %71 = phi ptr [ %11, %9 ], [ %66, %46 ]
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %70, %38
  %74 = phi i32 [ %39, %38 ], [ %72, %70 ]
  %75 = and i32 %74, 64
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.ti_bandgap, ptr %3, i32 0, i32 4
  %79 = load ptr, ptr %78, align 4
  tail call void @clk_disable(ptr noundef %79) #7
  tail call void @clk_unprepare(ptr noundef %79) #7
  br label %80

80:                                               ; preds = %77, %73
  %81 = getelementptr inbounds %struct.ti_bandgap, ptr %3, i32 0, i32 4
  %82 = load ptr, ptr %81, align 4
  tail call void @clk_put(ptr noundef %82) #7
  %83 = getelementptr inbounds %struct.ti_bandgap, ptr %3, i32 0, i32 5
  %84 = load ptr, ptr %83, align 4
  tail call void @clk_put(ptr noundef %84) #7
  %85 = load ptr, ptr %10, align 4
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.ti_bandgap, ptr %3, i32 0, i32 7
  %91 = load i32, ptr %90, align 4
  %92 = tail call ptr @free_irq(i32 noundef %91, ptr noundef %3) #7
  %93 = load ptr, ptr %10, align 4
  %94 = load i32, ptr %93, align 4
  br label %95

95:                                               ; preds = %89, %80
  %96 = phi i32 [ %94, %89 ], [ %86, %80 ]
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.ti_bandgap, ptr %3, i32 0, i32 8
  %101 = load ptr, ptr %100, align 4
  %102 = tail call i32 @gpiod_to_irq(ptr noundef %101) #7
  %103 = tail call ptr @free_irq(i32 noundef %102, ptr noundef null) #7
  br label %104

104:                                              ; preds = %99, %95
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bandgap_omap_cpu_notifier(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -40
  %5 = getelementptr i8, ptr %0, i32 -16
  tail call void @_raw_spin_lock(ptr noundef %5) #7
  switch i32 %1, label %106 [
    i32 3, label %6
    i32 4, label %56
    i32 5, label %56
  ]

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 12
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %106

11:                                               ; preds = %6
  tail call fastcc void @ti_bandgap_save_ctxt(ptr noundef %4)
  %12 = getelementptr i8, ptr %0, i32 -32
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ti_bandgap_data, ptr %13, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %0, i32 -36
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi ptr [ %13, %21 ], [ %43, %23 ]
  %25 = phi i32 [ 0, %21 ], [ %42, %23 ]
  %26 = getelementptr %struct.ti_bandgap_data, ptr %24, i32 0, i32 10, i32 %25, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %22, align 4
  %30 = getelementptr i8, ptr %29, i32 %28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %32 = getelementptr inbounds %struct.temp_sensor_registers, ptr %27, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %31, %34
  %36 = tail call i32 @llvm.cttz.i32(i32 %33, i1 false) #7, !range !10
  %37 = shl nuw i32 1, %36
  %38 = or i32 %37, %35
  %39 = load i32, ptr %27, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %40 = load ptr, ptr %22, align 4
  %41 = getelementptr i8, ptr %40, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %38) #7, !srcloc !12
  %42 = add nuw nsw i32 %25, 1
  %43 = load ptr, ptr %12, align 4
  %44 = getelementptr inbounds %struct.ti_bandgap_data, ptr %43, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %23, label %47

47:                                               ; preds = %23
  %48 = load i32, ptr %43, align 4
  br label %49

49:                                               ; preds = %47, %17, %11
  %50 = phi i32 [ %48, %47 ], [ %14, %11 ], [ %14, %17 ]
  %51 = and i32 %50, 64
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %106, label %53

53:                                               ; preds = %49
  %54 = getelementptr i8, ptr %0, i32 -24
  %55 = load ptr, ptr %54, align 4
  tail call void @clk_disable(ptr noundef %55) #7
  br label %106

56:                                               ; preds = %3, %3
  %57 = getelementptr i8, ptr %0, i32 12
  %58 = load i8, ptr %57, align 4
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %106

61:                                               ; preds = %56
  %62 = getelementptr i8, ptr %0, i32 -32
  %63 = load ptr, ptr %62, align 4
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = getelementptr i8, ptr %0, i32 -24
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 @clk_enable(ptr noundef %69) #7
  %71 = load ptr, ptr %62, align 4
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %67, %61
  %74 = phi i32 [ %72, %67 ], [ %64, %61 ]
  %75 = phi ptr [ %71, %67 ], [ %63, %61 ]
  %76 = and i32 %74, 32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %105, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.ti_bandgap_data, ptr %75, i32 0, i32 6
  %80 = load i32, ptr %79, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %78
  %83 = getelementptr i8, ptr %0, i32 -36
  br label %84

84:                                               ; preds = %84, %82
  %85 = phi ptr [ %75, %82 ], [ %101, %84 ]
  %86 = phi i32 [ 0, %82 ], [ %100, %84 ]
  %87 = getelementptr %struct.ti_bandgap_data, ptr %85, i32 0, i32 10, i32 %86, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = load i32, ptr %88, align 4
  %90 = load ptr, ptr %83, align 4
  %91 = getelementptr i8, ptr %90, i32 %89
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %93 = getelementptr inbounds %struct.temp_sensor_registers, ptr %88, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = xor i32 %94, -1
  %96 = and i32 %92, %95
  %97 = load i32, ptr %88, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %98 = load ptr, ptr %83, align 4
  %99 = getelementptr i8, ptr %98, i32 %97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %96) #7, !srcloc !12
  %100 = add nuw nsw i32 %86, 1
  %101 = load ptr, ptr %62, align 4
  %102 = getelementptr inbounds %struct.ti_bandgap_data, ptr %101, i32 0, i32 6
  %103 = load i32, ptr %102, align 4
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %84, label %105

105:                                              ; preds = %84, %78, %73
  tail call fastcc void @ti_bandgap_restore_ctxt(ptr noundef %4)
  br label %106

106:                                              ; preds = %105, %56, %53, %49, %6, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %107 = load i16, ptr %5, align 4
  %108 = add i16 %107, 1
  store i16 %108, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_bandgap_tshut_irq_handler(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.ti_bandgap_tshut_irq_handler) #6
  tail call void @orderly_poweroff(i1 noundef zeroext true) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @orderly_poweroff(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_bandgap_talert_irq_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ti_bandgap, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.ti_bandgap, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ti_bandgap_data, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %68

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ti_bandgap, ptr %1, i32 0, i32 1
  br label %11

11:                                               ; preds = %62, %9
  %12 = phi ptr [ %5, %9 ], [ %64, %62 ]
  %13 = phi i32 [ 0, %9 ], [ %63, %62 ]
  %14 = getelementptr %struct.ti_bandgap_data, ptr %12, i32 0, i32 10, i32 %13, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.temp_sensor_registers, ptr %15, i32 0, i32 20
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr i8, ptr %18, i32 %17
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %21 = getelementptr inbounds %struct.temp_sensor_registers, ptr %15, i32 0, i32 21
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %20
  %24 = getelementptr inbounds %struct.temp_sensor_registers, ptr %15, i32 0, i32 22
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %20
  %27 = icmp ne i32 %26, 0
  %28 = icmp ne i32 %23, 0
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %11
  %31 = getelementptr inbounds %struct.temp_sensor_registers, ptr %15, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %10, align 4
  %34 = getelementptr i8, ptr %33, i32 %32
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  br i1 %28, label %36, label %39

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.temp_sensor_registers, ptr %15, i32 0, i32 6
  %38 = getelementptr inbounds %struct.temp_sensor_registers, ptr %15, i32 0, i32 7
  br label %43

39:                                               ; preds = %30
  br i1 %27, label %40, label %51

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.temp_sensor_registers, ptr %15, i32 0, i32 7
  %42 = getelementptr inbounds %struct.temp_sensor_registers, ptr %15, i32 0, i32 6
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi ptr [ %42, %40 ], [ %38, %36 ]
  %45 = phi ptr [ %41, %40 ], [ %37, %36 ]
  %46 = load i32, ptr %45, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %35, %47
  %49 = load i32, ptr %44, align 4
  %50 = or i32 %48, %49
  br label %51

51:                                               ; preds = %43, %39
  %52 = phi i32 [ %35, %39 ], [ %50, %43 ]
  %53 = load i32, ptr %31, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %54 = load ptr, ptr %10, align 4
  %55 = getelementptr i8, ptr %54, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %52) #7, !srcloc !12
  %56 = load ptr, ptr %4, align 4
  %57 = getelementptr inbounds %struct.ti_bandgap_data, ptr %56, i32 0, i32 7
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %51
  %61 = tail call i32 %58(ptr noundef %1, i32 noundef %13) #7
  br label %62

62:                                               ; preds = %60, %51, %11
  %63 = add nuw nsw i32 %13, 1
  %64 = load ptr, ptr %4, align 4
  %65 = getelementptr inbounds %struct.ti_bandgap_data, ptr %64, i32 0, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %11, label %68

68:                                               ; preds = %62, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %69 = load i16, ptr %3, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ti_bandgap_save_ctxt(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ti_bandgap_data, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %81

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 1
  br label %10

10:                                               ; preds = %75, %7
  %11 = phi ptr [ %3, %7 ], [ %76, %75 ]
  %12 = phi i32 [ 0, %7 ], [ %77, %75 ]
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr %struct.ti_bandgap_data, ptr %11, i32 0, i32 10, i32 %12, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %11, align 4
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %10
  %20 = getelementptr %struct.temp_sensor_regval, ptr %13, i32 %12
  %21 = getelementptr inbounds %struct.temp_sensor_registers, ptr %15, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %9, align 4
  %24 = getelementptr i8, ptr %23, i32 %22
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  store i32 %25, ptr %20, align 4
  %26 = load ptr, ptr %2, align 4
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %19, %10
  %29 = phi ptr [ %26, %19 ], [ %11, %10 ]
  %30 = phi i32 [ %27, %19 ], [ %16, %10 ]
  %31 = and i32 %30, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.temp_sensor_registers, ptr %15, i32 0, i32 12
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %9, align 4
  %37 = getelementptr i8, ptr %36, i32 %35
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %39 = getelementptr %struct.temp_sensor_regval, ptr %13, i32 %12, i32 2
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %2, align 4
  %41 = load i32, ptr %40, align 4
  br label %42

42:                                               ; preds = %33, %28
  %43 = phi ptr [ %40, %33 ], [ %29, %28 ]
  %44 = phi i32 [ %41, %33 ], [ %30, %28 ]
  %45 = and i32 %44, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.temp_sensor_registers, ptr %15, i32 0, i32 14
  %49 = load i32, ptr %48, align 4
  %50 = load ptr, ptr %9, align 4
  %51 = getelementptr i8, ptr %50, i32 %49
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %53 = getelementptr %struct.temp_sensor_regval, ptr %13, i32 %12, i32 3
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.temp_sensor_registers, ptr %15, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = load ptr, ptr %9, align 4
  %57 = getelementptr i8, ptr %56, i32 %55
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %59 = getelementptr %struct.temp_sensor_regval, ptr %13, i32 %12, i32 1
  store i32 %58, ptr %59, align 4
  %60 = load ptr, ptr %2, align 4
  %61 = load i32, ptr %60, align 4
  br label %62

62:                                               ; preds = %47, %42
  %63 = phi ptr [ %60, %47 ], [ %43, %42 ]
  %64 = phi i32 [ %61, %47 ], [ %44, %42 ]
  %65 = and i32 %64, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.temp_sensor_registers, ptr %15, i32 0, i32 17
  %69 = load i32, ptr %68, align 4
  %70 = load ptr, ptr %9, align 4
  %71 = getelementptr i8, ptr %70, i32 %69
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %73 = getelementptr %struct.temp_sensor_regval, ptr %13, i32 %12, i32 4
  store i32 %72, ptr %73, align 4
  %74 = load ptr, ptr %2, align 4
  br label %75

75:                                               ; preds = %67, %62
  %76 = phi ptr [ %74, %67 ], [ %63, %62 ]
  %77 = add nuw nsw i32 %12, 1
  %78 = getelementptr inbounds %struct.ti_bandgap_data, ptr %76, i32 0, i32 6
  %79 = load i32, ptr %78, align 4
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %10, label %81

81:                                               ; preds = %75, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ti_bandgap_restore_ctxt(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ti_bandgap_data, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %79

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.ti_bandgap, ptr %0, i32 0, i32 1
  br label %10

10:                                               ; preds = %73, %7
  %11 = phi ptr [ %3, %7 ], [ %74, %73 ]
  %12 = phi i32 [ 0, %7 ], [ %75, %73 ]
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr %struct.temp_sensor_regval, ptr %13, i32 %12
  %15 = getelementptr %struct.ti_bandgap_data, ptr %11, i32 0, i32 10, i32 %12, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %11, align 4
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %10
  %21 = getelementptr %struct.temp_sensor_regval, ptr %13, i32 %12, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.temp_sensor_registers, ptr %16, i32 0, i32 17
  %24 = load i32, ptr %23, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %25 = load ptr, ptr %9, align 4
  %26 = getelementptr i8, ptr %25, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %22) #7, !srcloc !12
  br label %27

27:                                               ; preds = %20, %10
  tail call fastcc void @ti_bandgap_force_single_read(ptr noundef %0, i32 noundef %12)
  %28 = load ptr, ptr %2, align 4
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %27
  %33 = getelementptr %struct.temp_sensor_regval, ptr %13, i32 %12, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.temp_sensor_registers, ptr %16, i32 0, i32 12
  %36 = load i32, ptr %35, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %37 = load ptr, ptr %9, align 4
  %38 = getelementptr i8, ptr %37, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %34) #7, !srcloc !12
  %39 = load ptr, ptr %2, align 4
  %40 = load i32, ptr %39, align 4
  br label %41

41:                                               ; preds = %32, %27
  %42 = phi i32 [ %40, %32 ], [ %29, %27 ]
  %43 = phi ptr [ %39, %32 ], [ %28, %27 ]
  %44 = and i32 %42, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load i32, ptr %14, align 4
  %48 = getelementptr inbounds %struct.temp_sensor_registers, ptr %16, i32 0, i32 10
  %49 = load i32, ptr %48, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %50 = load ptr, ptr %9, align 4
  %51 = getelementptr i8, ptr %50, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %47) #7, !srcloc !12
  %52 = load ptr, ptr %2, align 4
  %53 = load i32, ptr %52, align 4
  br label %54

54:                                               ; preds = %46, %41
  %55 = phi i32 [ %53, %46 ], [ %42, %41 ]
  %56 = phi ptr [ %52, %46 ], [ %43, %41 ]
  %57 = and i32 %55, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %54
  %60 = getelementptr %struct.temp_sensor_regval, ptr %13, i32 %12, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.temp_sensor_registers, ptr %16, i32 0, i32 14
  %63 = load i32, ptr %62, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %64 = load ptr, ptr %9, align 4
  %65 = getelementptr i8, ptr %64, i32 %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %61) #7, !srcloc !12
  %66 = getelementptr %struct.temp_sensor_regval, ptr %13, i32 %12, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.temp_sensor_registers, ptr %16, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %70 = load ptr, ptr %9, align 4
  %71 = getelementptr i8, ptr %70, i32 %69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %67) #7, !srcloc !12
  %72 = load ptr, ptr %2, align 4
  br label %73

73:                                               ; preds = %59, %54
  %74 = phi ptr [ %72, %59 ], [ %56, %54 ]
  %75 = add nuw nsw i32 %12, 1
  %76 = getelementptr inbounds %struct.ti_bandgap_data, ptr %74, i32 0, i32 6
  %77 = load i32, ptr %76, align 4
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %10, label %79

79:                                               ; preds = %73, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_unregister_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_bandgap_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @ti_bandgap_save_ctxt(ptr noundef %3)
  %4 = getelementptr inbounds %struct.ti_bandgap, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ti_bandgap_data, ptr %5, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ti_bandgap, ptr %3, i32 0, i32 1
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi ptr [ %5, %13 ], [ %35, %15 ]
  %17 = phi i32 [ 0, %13 ], [ %34, %15 ]
  %18 = getelementptr %struct.ti_bandgap_data, ptr %16, i32 0, i32 10, i32 %17, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr i8, ptr %21, i32 %20
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %24 = getelementptr inbounds %struct.temp_sensor_registers, ptr %19, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %23, %26
  %28 = tail call i32 @llvm.cttz.i32(i32 %25, i1 false) #7, !range !10
  %29 = shl nuw i32 1, %28
  %30 = or i32 %29, %27
  %31 = load i32, ptr %19, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %32 = load ptr, ptr %14, align 4
  %33 = getelementptr i8, ptr %32, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %30) #7, !srcloc !12
  %34 = add nuw nsw i32 %17, 1
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr inbounds %struct.ti_bandgap_data, ptr %35, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %15, label %39

39:                                               ; preds = %15
  %40 = load i32, ptr %35, align 4
  br label %41

41:                                               ; preds = %39, %9, %1
  %42 = phi i32 [ %40, %39 ], [ %6, %1 ], [ %6, %9 ]
  %43 = and i32 %42, 64
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ti_bandgap, ptr %3, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  tail call void @clk_disable(ptr noundef %47) #7
  tail call void @clk_unprepare(ptr noundef %47) #7
  br label %48

48:                                               ; preds = %45, %41
  %49 = getelementptr inbounds %struct.ti_bandgap, ptr %3, i32 0, i32 11
  %50 = load i8, ptr %49, align 4
  %51 = or i8 %50, 1
  store i8 %51, ptr %49, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_bandgap_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ti_bandgap, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ti_bandgap, ptr %3, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_prepare(ptr noundef %11) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = tail call i32 @clk_enable(ptr noundef %11) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @clk_unprepare(ptr noundef %11) #7
  br label %18

18:                                               ; preds = %17, %14, %9, %1
  %19 = load ptr, ptr %4, align 4
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ti_bandgap_data, ptr %19, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ti_bandgap, ptr %3, i32 0, i32 1
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi ptr [ %19, %27 ], [ %46, %29 ]
  %31 = phi i32 [ 0, %27 ], [ %45, %29 ]
  %32 = getelementptr %struct.ti_bandgap_data, ptr %30, i32 0, i32 10, i32 %31, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %28, align 4
  %36 = getelementptr i8, ptr %35, i32 %34
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %38 = getelementptr inbounds %struct.temp_sensor_registers, ptr %33, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %37, %40
  %42 = load i32, ptr %33, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %43 = load ptr, ptr %28, align 4
  %44 = getelementptr i8, ptr %43, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %41) #7, !srcloc !12
  %45 = add nuw nsw i32 %31, 1
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr inbounds %struct.ti_bandgap_data, ptr %46, i32 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %29, label %50

50:                                               ; preds = %29, %23, %18
  %51 = getelementptr inbounds %struct.ti_bandgap, ptr %3, i32 0, i32 11
  %52 = load i8, ptr %51, align 4
  %53 = and i8 %52, -2
  store i8 %53, ptr %51, align 4
  tail call fastcc void @ti_bandgap_restore_ctxt(ptr noundef %3)
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind }

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
!8 = !{i64 3787394}
!9 = !{i64 2151853466}
!10 = !{i32 0, i32 33}
!11 = !{i64 2151853649}
!12 = !{i64 3786976}
!13 = !{i64 2148911116}
!14 = !{i64 2148906940}
!15 = !{i64 2148907015, i64 2148907042, i64 2148907089, i64 2148907111, i64 2148907139, i64 2148907159}
!16 = !{i64 2148934119}
!17 = !{i64 2151864706}
!18 = !{i64 2151865037}
!19 = !{i64 2151868352}
!20 = !{i64 2151868683}
!21 = !{!"auto-init"}
!22 = !{!"branch_weights", i32 1, i32 2000}
