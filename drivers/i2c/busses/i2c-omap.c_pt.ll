; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-omap.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-omap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.omap_i2c_bus_platform_data = type { i32, i32, i32, ptr }
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
%struct.omap_i2c_dev = type { ptr, ptr, i32, i32, %struct.completion, ptr, i32, ptr, i32, i32, i16, i16, ptr, ptr, i32, %struct.i2c_adapter, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_omap__252_1602_omap_i2c_init_driver4 = internal global ptr @omap_i2c_init_driver, section ".initcall4.init", align 4
@omap_i2c_driver = internal global %struct.platform_driver { ptr @omap_i2c_probe, ptr @omap_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_i2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_omap_i2c_exit_driver = internal global ptr @omap_i2c_exit_driver, section ".exitcall.exit", align 4
@__UNIQUE_ID_author253 = internal constant [55 x i8] c"i2c_omap.author=MontaVista Software, Inc. (and others)\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [45 x i8] c"i2c_omap.description=TI OMAP I2C bus adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [42 x i8] c"i2c_omap.file=drivers/i2c/busses/i2c-omap\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [21 x i8] c"i2c_omap.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias257 = internal constant [33 x i8] c"i2c_omap.alias=platform:omap_i2c\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"omap_i2c\00", align 1
@omap_i2c_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2430-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2430_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2420-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2420_pdata }, %struct.of_device_id zeroinitializer], align 4
@omap_i2c_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @omap_i2c_runtime_suspend, ptr @omap_i2c_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@reg_map_ip_v1 = internal constant [18 x i8] c"\00\01\02\03\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 1
@reg_map_ip_v2 = internal constant [23 x i8] c"\04,(44\90\94\98\9C\10\A4\A8\AC\B0\B4\B8\BC\C0\00\04$,0", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failure requesting irq %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"OMAP I2C adapter\00", align 1
@omap_i2c_algo = internal constant %struct.i2c_algorithm { ptr @omap_i2c_xfer_irq, ptr @omap_i2c_xfer_polling, ptr null, ptr null, ptr @omap_i2c_func, ptr null, ptr null }, align 4
@omap_i2c_quirks = internal constant %struct.i2c_adapter_quirks { i64 96, i32 0, i16 0, i16 0, i16 0, i16 0 }, align 8
@omap_i2c_bus_recovery_info = internal global %struct.i2c_bus_recovery_info { ptr @i2c_generic_scl_recovery, ptr @omap_i2c_get_scl, ptr @omap_i2c_set_scl, ptr @omap_i2c_get_sda, ptr null, ptr null, ptr @omap_i2c_prepare_recovery, ptr @omap_i2c_unprepare_recovery, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"bus %d rev%d.%d at %d kHz\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"could not get fck: %i\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Too much work in one IRQ\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Arbitration lost\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Receive overrun\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Transmit underflow\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"timeout waiting on XUDF bit\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.13 = private unnamed_addr constant [31 x i8] c"timeout waiting for bus ready\0A\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"controller timed out waiting for start condition to finish\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"controller timed out\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"timeout waiting for controller reset\0A\00", align 1
@omap4_pdata = internal global %struct.omap_i2c_bus_platform_data { i32 0, i32 2, i32 0, ptr null }, align 4
@omap3_pdata = internal global %struct.omap_i2c_bus_platform_data { i32 0, i32 1, i32 256, ptr null }, align 4
@omap2430_pdata = internal global %struct.omap_i2c_bus_platform_data { i32 0, i32 1, i32 320, ptr null }, align 4
@omap2420_pdata = internal global %struct.omap_i2c_bus_platform_data { i32 0, i32 1, i32 263, ptr null }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias257, ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_omap_i2c_exit_driver, ptr @__initcall__kmod_i2c_omap__252_1602_omap_i2c_init_driver4, ptr @omap_i2c_exit_driver], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @omap_i2c_init_driver() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_i2c_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap_i2c_exit_driver() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_i2c_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %331, label %10

10:                                               ; preds = %1
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 752, i32 noundef 3520) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %331, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %15 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = ptrtoint ptr %14 to i32
  br label %331

19:                                               ; preds = %13
  %20 = tail call ptr @of_match_device(ptr noundef nonnull @omap_i2c_of_match, ptr noundef %3) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 100000, ptr %2, align 4
  %23 = getelementptr inbounds %struct.of_device_id, ptr %20, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.omap_i2c_bus_platform_data, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 9
  store i32 %26, ptr %27, align 8
  %28 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %29 = load i32, ptr %2, align 4
  %30 = udiv i32 %29, 1000
  %31 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 8
  store i32 %30, ptr %31, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %43

32:                                               ; preds = %19
  %33 = icmp eq ptr %5, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %32
  %35 = load i32, ptr %5, align 4
  %36 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 8
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.omap_i2c_bus_platform_data, ptr %5, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 9
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.omap_i2c_bus_platform_data, ptr %5, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 7
  store ptr %41, ptr %42, align 8
  br label %43

43:                                               ; preds = %34, %32, %22
  store ptr %3, ptr %11, align 8
  %44 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 2
  store i32 %8, ptr %44, align 8
  %45 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %45, align 8
  %46 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 4
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 4, i32 1
  call void @__init_swait_queue_head(ptr noundef %47, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #8
  %48 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 9
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 7
  %51 = and i32 %50, 3
  %52 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 3
  store i32 %51, ptr %52, align 4
  %53 = load ptr, ptr %11, align 8
  call void @pm_runtime_enable(ptr noundef %53) #8
  %54 = load ptr, ptr %11, align 8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %54, i32 noundef 1000) #8
  %55 = load ptr, ptr %11, align 8
  call void @__pm_runtime_use_autosuspend(ptr noundef %55, i1 noundef zeroext true) #8
  %56 = load ptr, ptr %11, align 8
  %57 = call i32 @__pm_runtime_resume(ptr noundef %56, i32 noundef 4) #8
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %43
  %60 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #8, !srcloc !9
  %61 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 0, i32 -1, ptr elementtype(i32) %60) #8, !srcloc !10
  %62 = extractvalue { i32, i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %329, label %64

64:                                               ; preds = %59
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  br label %329

65:                                               ; preds = %43
  %66 = load ptr, ptr %15, align 4
  %67 = getelementptr i8, ptr %66, i32 4
  %68 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %67) #8, !srcloc !12
  %69 = lshr i16 %68, 14
  %70 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 10
  store i16 %69, ptr %70, align 4
  %71 = icmp ult i16 %68, 16384
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 13
  store ptr @reg_map_ip_v1, ptr %73, align 4
  %74 = load ptr, ptr %15, align 4
  %75 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %74) #8, !srcloc !12
  %76 = zext i16 %75 to i32
  %77 = lshr i16 %75, 4
  br label %89

78:                                               ; preds = %65
  %79 = zext i16 %68 to i32
  %80 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 13
  store ptr @reg_map_ip_v2, ptr %80, align 4
  %81 = shl nuw i32 %79, 16
  %82 = load ptr, ptr %15, align 4
  %83 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %82) #8, !srcloc !12
  %84 = zext i16 %83 to i32
  %85 = or i32 %81, %84
  %86 = and i16 %83, 31
  %87 = lshr i16 %83, 7
  %88 = and i16 %87, 14
  br label %89

89:                                               ; preds = %78, %72
  %90 = phi i32 [ %76, %72 ], [ %85, %78 ]
  %91 = phi i16 [ %77, %72 ], [ %86, %78 ]
  %92 = phi i16 [ %77, %72 ], [ %88, %78 ]
  %93 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 18
  store i32 %90, ptr %93, align 4
  %94 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 26
  %95 = add i32 %90, -54
  %96 = icmp ult i32 %95, 1346371532
  %97 = zext i1 %96 to i16
  %98 = icmp ult i32 %90, 61
  %99 = or i16 %97, 2
  %100 = select i1 %98, i16 %99, i16 %97
  store i16 %100, ptr %94, align 2
  %101 = load i32, ptr %48, align 8
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %139

104:                                              ; preds = %89
  %105 = load ptr, ptr %15, align 4
  %106 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 13
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i8, ptr %107, i32 17
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = load i32, ptr %52, align 4
  %112 = shl i32 %110, %111
  %113 = getelementptr i8, ptr %105, i32 %112
  %114 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %113) #8, !srcloc !12
  %115 = lshr i16 %114, 14
  %116 = trunc i16 %115 to i8
  %117 = shl nuw nsw i8 8, %116
  %118 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 17
  %119 = lshr exact i8 %117, 1
  store i8 %119, ptr %118, align 1
  %120 = load i32, ptr %93, align 4
  %121 = icmp ult i32 %120, 64
  br i1 %121, label %122, label %126

122:                                              ; preds = %104
  %123 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 19
  %124 = load i8, ptr %123, align 8
  %125 = or i8 %124, 1
  store i8 %125, ptr %123, align 8
  br label %126

126:                                              ; preds = %122, %104
  %127 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 7
  %128 = load ptr, ptr %127, align 8
  %129 = icmp eq ptr %128, null
  br i1 %129, label %139, label %130

130:                                              ; preds = %126
  %131 = zext i8 %119 to i32
  %132 = mul nuw nsw i32 %131, 1000000
  %133 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 8
  %134 = load i32, ptr %133, align 4
  %135 = mul i32 %134, 1000
  %136 = lshr exact i32 %135, 3
  %137 = udiv i32 %132, %136
  %138 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 6
  store i32 %137, ptr %138, align 4
  br label %139

139:                                              ; preds = %130, %126, %89
  %140 = phi i32 [ %120, %126 ], [ %120, %130 ], [ %90, %89 ]
  %141 = icmp ugt i32 %140, 59
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 25
  store i16 25455, ptr %143, align 4
  br label %144

144:                                              ; preds = %142, %139
  %145 = load i32, ptr %48, align 8
  %146 = and i32 %145, 32
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %161, label %148

148:                                              ; preds = %144
  %149 = load ptr, ptr %11, align 8
  %150 = call ptr @clk_get(ptr noundef %149, ptr noundef nonnull @.str.6) #8
  %151 = icmp ugt ptr %150, inttoptr (i32 -4096 to ptr)
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = ptrtoint ptr %150 to i32
  %154 = load ptr, ptr %11, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %154, ptr noundef nonnull @.str.7, i32 noundef %153) #9
  br label %271

155:                                              ; preds = %148
  %156 = call i32 @clk_get_rate(ptr noundef %150) #8
  call void @clk_put(ptr noundef %150) #8
  %157 = icmp ugt i32 %156, 12000000
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = udiv i32 %156, 12000000
  %160 = trunc i32 %159 to i16
  br label %161

161:                                              ; preds = %158, %155, %144
  %162 = phi i32 [ %156, %158 ], [ %156, %155 ], [ 12000000, %144 ]
  %163 = phi i16 [ %160, %158 ], [ 0, %155 ], [ 0, %144 ]
  %164 = load i32, ptr %48, align 8
  %165 = and i32 %164, 2
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %239

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 8
  %169 = load i32, ptr %168, align 4
  %170 = icmp ult i32 %169, 401
  %171 = and i32 %164, 64
  %172 = icmp eq i32 %171, 0
  %173 = select i1 %170, i1 %172, i1 false
  %174 = icmp ugt i32 %169, 100
  %175 = select i1 %174, i32 9600, i32 4000
  %176 = select i1 %173, i32 %175, i32 19200
  %177 = load ptr, ptr %11, align 8
  %178 = call ptr @clk_get(ptr noundef %177, ptr noundef nonnull @.str.6) #8
  %179 = icmp ugt ptr %178, inttoptr (i32 -4096 to ptr)
  br i1 %179, label %180, label %183

180:                                              ; preds = %167
  %181 = ptrtoint ptr %178 to i32
  %182 = load ptr, ptr %11, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %182, ptr noundef nonnull @.str.7, i32 noundef %181) #9
  br label %271

183:                                              ; preds = %167
  %184 = call i32 @clk_get_rate(ptr noundef %178) #8
  %185 = udiv i32 %184, 1000
  call void @clk_put(ptr noundef %178) #8
  %186 = udiv i32 %185, %176
  %187 = trunc i32 %186 to i16
  %188 = add nsw i16 %187, -1
  %189 = load i32, ptr %168, align 4
  %190 = icmp ugt i32 %189, 400
  br i1 %190, label %191, label %211

191:                                              ; preds = %183
  %192 = trunc i32 %176 to i16
  %193 = udiv i16 %192, 400
  %194 = zext i16 %193 to i32
  %195 = udiv i16 %192, 1200
  %196 = zext i16 %195 to i32
  %197 = sub nuw nsw i32 -7, %196
  %198 = add nsw i32 %197, %194
  %199 = add nsw i32 %196, -5
  %200 = udiv i32 %185, %189
  %201 = trunc i32 %200 to i16
  %202 = udiv i16 %201, 3
  %203 = zext i16 %202 to i32
  %204 = sub nsw i32 %200, %203
  %205 = shl nsw i32 %204, 8
  %206 = add i32 %205, 16775424
  %207 = and i32 %206, 16776960
  %208 = shl nuw nsw i32 %203, 8
  %209 = add nuw nsw i32 %208, 16775936
  %210 = and i32 %209, 16776960
  br label %230

211:                                              ; preds = %183
  %212 = icmp ugt i32 %189, 100
  %213 = trunc i32 %176 to i16
  %214 = trunc i32 %189 to i16
  br i1 %212, label %215, label %224

215:                                              ; preds = %211
  %216 = udiv i16 %213, %214
  %217 = zext i16 %216 to i32
  %218 = trunc i16 %216 to i8
  %219 = udiv i8 %218, 3
  %220 = zext i8 %219 to i32
  %221 = add nsw i32 %217, -7
  %222 = sub nsw i32 %221, %220
  %223 = add nsw i32 %220, -5
  br label %230

224:                                              ; preds = %211
  %225 = shl nuw nsw i16 %214, 1
  %226 = udiv i16 %213, %225
  %227 = zext i16 %226 to i32
  %228 = add nuw nsw i32 %227, 65529
  %229 = add nuw nsw i32 %227, 65531
  br label %230

230:                                              ; preds = %224, %215, %191
  %231 = phi i32 [ %198, %191 ], [ %222, %215 ], [ %228, %224 ]
  %232 = phi i32 [ %199, %191 ], [ %223, %215 ], [ %229, %224 ]
  %233 = phi i32 [ %207, %191 ], [ 0, %215 ], [ 0, %224 ]
  %234 = phi i32 [ %210, %191 ], [ 0, %215 ], [ 0, %224 ]
  %235 = or i32 %233, %231
  %236 = trunc i32 %235 to i16
  %237 = or i32 %234, %232
  %238 = trunc i32 %237 to i16
  br label %252

239:                                              ; preds = %161
  %240 = zext i16 %163 to i32
  %241 = mul nuw nsw i32 %240, 1000
  %242 = add nuw nsw i32 %241, 1000
  %243 = udiv i32 %162, %242
  %244 = call i16 @llvm.umin.i16(i16 %163, i16 2) #8
  %245 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 8
  %246 = load i32, ptr %245, align 4
  %247 = shl i32 %246, 1
  %248 = udiv i32 %243, %247
  %249 = trunc i32 %248 to i16
  %250 = add nuw nsw i16 %244, -7
  %251 = add i16 %250, %249
  br label %252

252:                                              ; preds = %239, %230
  %253 = phi i16 [ %251, %239 ], [ %236, %230 ]
  %254 = phi i16 [ %251, %239 ], [ %238, %230 ]
  %255 = phi i16 [ %244, %239 ], [ %188, %230 ]
  %256 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 17
  %257 = load i8, ptr %256, align 1
  %258 = icmp eq i8 %257, 0
  %259 = select i1 %258, i16 31, i16 24607
  %260 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 20
  store i16 %259, ptr %260, align 2
  %261 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 21
  store i16 %255, ptr %261, align 4
  %262 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 22
  store i16 %253, ptr %262, align 2
  %263 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 23
  store i16 %254, ptr %263, align 8
  %264 = load i32, ptr %93, align 4
  %265 = icmp ult i32 %264, 61
  br i1 %265, label %266, label %270

266:                                              ; preds = %252
  %267 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 19
  %268 = load i8, ptr %267, align 8
  %269 = or i8 %268, 2
  store i8 %269, ptr %267, align 8
  br label %270

270:                                              ; preds = %266, %252
  call fastcc void @__omap_i2c_init(ptr noundef nonnull %11) #8
  br label %271

271:                                              ; preds = %270, %180, %152
  %272 = load i32, ptr %93, align 4
  %273 = icmp ult i32 %272, 32
  %274 = load i32, ptr %44, align 8
  %275 = load ptr, ptr %0, align 8
  br i1 %273, label %276, label %278

276:                                              ; preds = %271
  %277 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %274, ptr noundef null, ptr noundef null, i32 noundef 16384, ptr noundef %275, ptr noundef nonnull %11) #8
  br label %280

278:                                              ; preds = %271
  %279 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %274, ptr noundef nonnull @omap_i2c_isr, ptr noundef nonnull @omap_i2c_isr_thread, i32 noundef 24576, ptr noundef %275, ptr noundef nonnull %11) #8
  br label %280

280:                                              ; preds = %278, %276
  %281 = phi i32 [ %277, %276 ], [ %279, %278 ]
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %280
  %284 = load ptr, ptr %11, align 8
  %285 = load i32, ptr %44, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %284, ptr noundef nonnull @.str.2, i32 noundef %285) #9
  br label %315

286:                                              ; preds = %280
  %287 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 15
  %288 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 15, i32 9, i32 8
  store ptr %11, ptr %288, align 8
  store ptr null, ptr %287, align 8
  %289 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 15, i32 1
  store i32 256, ptr %289, align 4
  %290 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 15, i32 12
  %291 = call i32 @strlcpy(ptr noundef %290, ptr noundef nonnull @.str.3, i32 noundef 48) #8
  %292 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 15, i32 2
  store ptr @omap_i2c_algo, ptr %292, align 8
  %293 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 15, i32 17
  store ptr @omap_i2c_quirks, ptr %293, align 8
  %294 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 15, i32 9, i32 1
  store ptr %3, ptr %294, align 4
  %295 = load ptr, ptr %6, align 8
  %296 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 15, i32 9, i32 25
  store ptr %295, ptr %296, align 8
  %297 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 15, i32 16
  store ptr @omap_i2c_bus_recovery_info, ptr %297, align 4
  %298 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %299 = load i32, ptr %298, align 4
  %300 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 15, i32 11
  store i32 %299, ptr %300, align 4
  %301 = call i32 @i2c_add_numbered_adapter(ptr noundef %287) #8
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %315

303:                                              ; preds = %286
  %304 = load ptr, ptr %11, align 8
  %305 = load i32, ptr %300, align 4
  %306 = zext i16 %92 to i32
  %307 = zext i16 %91 to i32
  %308 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 8
  %309 = load i32, ptr %308, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %304, ptr noundef nonnull @.str.4, i32 noundef %305, i32 noundef %306, i32 noundef %307, i32 noundef %309) #9
  %310 = load ptr, ptr %11, align 8
  %311 = call i64 @ktime_get_mono_fast_ns() #8
  %312 = getelementptr inbounds %struct.device, ptr %310, i32 0, i32 11, i32 22
  store volatile i64 %311, ptr %312, align 8
  %313 = load ptr, ptr %11, align 8
  %314 = call i32 @__pm_runtime_suspend(ptr noundef %313, i32 noundef 13) #8
  br label %331

315:                                              ; preds = %286, %283
  %316 = phi i32 [ %281, %283 ], [ %301, %286 ]
  %317 = load ptr, ptr %15, align 4
  %318 = getelementptr inbounds %struct.omap_i2c_dev, ptr %11, i32 0, i32 13
  %319 = load ptr, ptr %318, align 4
  %320 = getelementptr i8, ptr %319, i32 10
  %321 = load i8, ptr %320, align 1
  %322 = zext i8 %321 to i32
  %323 = load i32, ptr %52, align 4
  %324 = shl i32 %322, %323
  %325 = getelementptr i8, ptr %317, i32 %324
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %325, i16 0) #8, !srcloc !13
  %326 = load ptr, ptr %11, align 8
  call void @__pm_runtime_use_autosuspend(ptr noundef %326, i1 noundef zeroext false) #8
  %327 = load ptr, ptr %11, align 8
  %328 = call i32 @__pm_runtime_idle(ptr noundef %327, i32 noundef 4) #8
  br label %329

329:                                              ; preds = %315, %64, %59
  %330 = phi i32 [ %316, %315 ], [ %57, %59 ], [ %57, %64 ]
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #8
  br label %331

331:                                              ; preds = %329, %303, %17, %10, %1
  %332 = phi i32 [ %18, %17 ], [ %330, %329 ], [ 0, %303 ], [ %8, %1 ], [ -12, %10 ]
  ret i32 %332
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_i2c_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 15
  tail call void @i2c_del_adapter(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #8, !srcloc !9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 0, i32 -1, ptr elementtype(i32) %9) #8, !srcloc !10
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  br label %27

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 13
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 10
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 %21, %23
  %25 = getelementptr i8, ptr %16, i32 %24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 0) #8, !srcloc !13
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %5, i1 noundef zeroext false) #8
  %26 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #8
  br label %27

27:                                               ; preds = %14, %13, %8
  %28 = phi i32 [ 0, %14 ], [ %6, %8 ], [ %6, %13 ]
  ret i32 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_i2c_isr(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %9, %11
  %13 = getelementptr i8, ptr %4, i32 %12
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #8, !srcloc !12
  %15 = load ptr, ptr %3, align 4
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr i8, ptr %16, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i32, ptr %10, align 4
  %21 = shl i32 %19, %20
  %22 = getelementptr i8, ptr %15, i32 %21
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %22) #8, !srcloc !12
  %24 = and i16 %23, %14
  %25 = icmp eq i16 %24, 0
  %26 = select i1 %25, i32 1, i32 2
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_i2c_isr_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = tail call fastcc i32 @omap_i2c_xfer_data(ptr noundef %1)
  %4 = icmp eq i32 %3, -11
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = trunc i32 %3 to i16
  %7 = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 11
  %8 = load i16, ptr %7, align 2
  %9 = or i16 %8, %6
  store i16 %9, ptr %7, align 2
  %10 = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 4
  tail call void @complete(ptr noundef %10) #8
  br label %11

11:                                               ; preds = %5, %2
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__omap_i2c_init(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 10
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %8, %10
  %12 = getelementptr i8, ptr %3, i32 %11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 0) #8, !srcloc !13
  %13 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 21
  %14 = load i16, ptr %13, align 4
  %15 = load ptr, ptr %2, align 4
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 13
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i32, ptr %9, align 4
  %21 = shl i32 %19, %20
  %22 = getelementptr i8, ptr %15, i32 %21
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %22, i16 %14) #8, !srcloc !13
  %23 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 22
  %24 = load i16, ptr %23, align 2
  %25 = load ptr, ptr %2, align 4
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr i8, ptr %26, i32 14
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i32, ptr %9, align 4
  %31 = shl i32 %29, %30
  %32 = getelementptr i8, ptr %25, i32 %31
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %32, i16 %24) #8, !srcloc !13
  %33 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 23
  %34 = load i16, ptr %33, align 8
  %35 = load ptr, ptr %2, align 4
  %36 = load ptr, ptr %4, align 4
  %37 = getelementptr i8, ptr %36, i32 15
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i32, ptr %9, align 4
  %41 = shl i32 %39, %40
  %42 = getelementptr i8, ptr %35, i32 %41
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %42, i16 %34) #8, !srcloc !13
  %43 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 18
  %44 = load i32, ptr %43, align 4
  %45 = icmp ugt i32 %44, 59
  br i1 %45, label %46, label %57

46:                                               ; preds = %1
  %47 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 25
  %48 = load i16, ptr %47, align 4
  %49 = load ptr, ptr %2, align 4
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr i8, ptr %50, i32 4
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load i32, ptr %9, align 4
  %55 = shl i32 %53, %54
  %56 = getelementptr i8, ptr %49, i32 %55
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %56, i16 %48) #8, !srcloc !13
  br label %57

57:                                               ; preds = %46, %1
  %58 = load ptr, ptr %2, align 4
  %59 = load ptr, ptr %4, align 4
  %60 = getelementptr i8, ptr %59, i32 10
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = load i32, ptr %9, align 4
  %64 = shl i32 %62, %63
  %65 = getelementptr i8, ptr %58, i32 %64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %65, i16 -32768) #8, !srcloc !13
  %66 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 20
  %67 = load i16, ptr %66, align 2
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %57
  %70 = load ptr, ptr %2, align 4
  %71 = load ptr, ptr %4, align 4
  %72 = getelementptr i8, ptr %71, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = load i32, ptr %9, align 4
  %76 = shl i32 %74, %75
  %77 = getelementptr i8, ptr %70, i32 %76
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %77, i16 %67) #8, !srcloc !13
  br label %78

78:                                               ; preds = %69, %57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @omap_i2c_xfer_data(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 13
  %4 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 19
  %6 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 17
  %7 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 14
  %8 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 26
  %9 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 9
  %11 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 16
  br label %12

12:                                               ; preds = %296, %1
  %13 = phi i32 [ 0, %1 ], [ %75, %296 ]
  %14 = phi i32 [ 0, %1 ], [ %41, %296 ]
  %15 = load ptr, ptr %2, align 4
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr i8, ptr %16, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i32, ptr %4, align 4
  %21 = shl i32 %19, %20
  %22 = getelementptr i8, ptr %15, i32 %21
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %22) #8, !srcloc !12
  %24 = load ptr, ptr %2, align 4
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 2
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = load i32, ptr %4, align 4
  %30 = shl i32 %28, %29
  %31 = getelementptr i8, ptr %24, i32 %30
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %31) #8, !srcloc !12
  %33 = and i16 %32, %23
  %34 = load i8, ptr %5, align 8
  %35 = and i8 %34, 4
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %36, i16 -8201, i16 -16401
  %38 = and i16 %33, %37
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %325, label %40

40:                                               ; preds = %12
  %41 = add nuw nsw i32 %14, 1
  %42 = icmp eq i32 %14, 100
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.8) #9
  br label %325

45:                                               ; preds = %40
  %46 = zext i16 %38 to i32
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %45
  %50 = or i32 %13, 2
  %51 = load ptr, ptr %2, align 4
  %52 = load ptr, ptr %3, align 4
  %53 = getelementptr i8, ptr %52, i32 2
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = load i32, ptr %4, align 4
  %57 = shl i32 %55, %56
  %58 = getelementptr i8, ptr %51, i32 %57
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %58, i16 2) #8, !srcloc !13
  br label %59

59:                                               ; preds = %49, %45
  %60 = phi i32 [ %50, %49 ], [ %13, %45 ]
  %61 = and i32 %46, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.9) #9
  %65 = or i32 %60, 1
  %66 = load ptr, ptr %2, align 4
  %67 = load ptr, ptr %3, align 4
  %68 = getelementptr i8, ptr %67, i32 2
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = load i32, ptr %4, align 4
  %72 = shl i32 %70, %71
  %73 = getelementptr i8, ptr %66, i32 %72
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %73, i16 1) #8, !srcloc !13
  br label %74

74:                                               ; preds = %63, %59
  %75 = phi i32 [ %65, %63 ], [ %60, %59 ]
  %76 = and i32 %46, 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %2, align 4
  %80 = load ptr, ptr %3, align 4
  %81 = getelementptr i8, ptr %80, i32 2
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = load i32, ptr %4, align 4
  %85 = shl i32 %83, %84
  %86 = getelementptr i8, ptr %79, i32 %85
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %86, i16 4) #8, !srcloc !13
  br label %87

87:                                               ; preds = %78, %74
  %88 = and i32 %46, 7
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %2, align 4
  %92 = load ptr, ptr %3, align 4
  %93 = getelementptr i8, ptr %92, i32 2
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = load i32, ptr %4, align 4
  %97 = shl i32 %95, %96
  %98 = getelementptr i8, ptr %91, i32 %97
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %98, i16 24604) #8, !srcloc !13
  br label %325

99:                                               ; preds = %87
  %100 = and i32 %46, 8192
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %211, label %102

102:                                              ; preds = %99
  %103 = load i8, ptr %6, align 1
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %7, align 8
  %107 = trunc i32 %106 to i8
  br label %108

108:                                              ; preds = %105, %102
  %109 = phi i8 [ %107, %105 ], [ 1, %102 ]
  %110 = load i16, ptr %8, align 2
  %111 = and i16 %110, 1
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %170, label %113

113:                                              ; preds = %108
  %114 = and i16 %38, 8192
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %157, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr %2, align 4
  %118 = load ptr, ptr %3, align 4
  %119 = getelementptr i8, ptr %118, i32 2
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %120 to i32
  %122 = load i32, ptr %4, align 4
  %123 = shl i32 %121, %122
  %124 = getelementptr i8, ptr %117, i32 %123
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %124, i16 8192) #8, !srcloc !13
  %125 = load ptr, ptr %2, align 4
  %126 = load ptr, ptr %3, align 4
  %127 = getelementptr i8, ptr %126, i32 2
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  %130 = load i32, ptr %4, align 4
  %131 = shl i32 %129, %130
  %132 = getelementptr i8, ptr %125, i32 %131
  %133 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %132) #8, !srcloc !12
  %134 = and i16 %133, 4096
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %157

136:                                              ; preds = %116
  %137 = load ptr, ptr %2, align 4
  %138 = load ptr, ptr %3, align 4
  %139 = getelementptr i8, ptr %138, i32 2
  %140 = load i8, ptr %139, align 1
  %141 = zext i8 %140 to i32
  %142 = load i32, ptr %4, align 4
  %143 = shl i32 %141, %142
  %144 = getelementptr i8, ptr %137, i32 %143
  %145 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %144) #8, !srcloc !12
  %146 = and i16 %145, 8192
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %136
  %149 = load ptr, ptr %2, align 4
  %150 = load ptr, ptr %3, align 4
  %151 = getelementptr i8, ptr %150, i32 2
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i32
  %154 = load i32, ptr %4, align 4
  %155 = shl i32 %153, %154
  %156 = getelementptr i8, ptr %149, i32 %155
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %156, i16 8192) #8, !srcloc !13
  br label %157

157:                                              ; preds = %148, %136, %116, %113
  %158 = load ptr, ptr %2, align 4
  %159 = load ptr, ptr %3, align 4
  %160 = getelementptr i8, ptr %159, i32 17
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i32
  %163 = load i32, ptr %4, align 4
  %164 = shl i32 %162, %163
  %165 = getelementptr i8, ptr %158, i32 %164
  %166 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %165) #8, !srcloc !12
  %167 = lshr i16 %166, 8
  %168 = trunc i16 %167 to i8
  %169 = and i8 %168, 63
  br label %170

170:                                              ; preds = %157, %108
  %171 = phi i8 [ %169, %157 ], [ %109, %108 ]
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %202, label %173

173:                                              ; preds = %200, %170
  %174 = phi i8 [ %175, %200 ], [ %171, %170 ]
  %175 = add i8 %174, -1
  %176 = load ptr, ptr %2, align 4
  %177 = load ptr, ptr %3, align 4
  %178 = getelementptr i8, ptr %177, i32 8
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i32
  %181 = load i32, ptr %4, align 4
  %182 = shl i32 %180, %181
  %183 = getelementptr i8, ptr %176, i32 %182
  %184 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %183) #8, !srcloc !12
  %185 = trunc i16 %184 to i8
  %186 = load ptr, ptr %9, align 8
  %187 = getelementptr i8, ptr %186, i32 1
  store ptr %187, ptr %9, align 8
  store i8 %185, ptr %186, align 1
  %188 = load i32, ptr %7, align 8
  %189 = add i32 %188, -1
  store i32 %189, ptr %7, align 8
  %190 = load i32, ptr %10, align 8
  %191 = and i32 %190, 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %200, label %193

193:                                              ; preds = %173
  %194 = lshr i16 %184, 8
  %195 = trunc i16 %194 to i8
  %196 = load ptr, ptr %9, align 8
  %197 = getelementptr i8, ptr %196, i32 1
  store ptr %197, ptr %9, align 8
  store i8 %195, ptr %196, align 1
  %198 = load i32, ptr %7, align 8
  %199 = add i32 %198, -1
  store i32 %199, ptr %7, align 8
  br label %200

200:                                              ; preds = %193, %173
  %201 = icmp eq i8 %175, 0
  br i1 %201, label %202, label %173

202:                                              ; preds = %200, %170
  %203 = load ptr, ptr %2, align 4
  %204 = load ptr, ptr %3, align 4
  %205 = getelementptr i8, ptr %204, i32 2
  %206 = load i8, ptr %205, align 1
  %207 = zext i8 %206 to i32
  %208 = load i32, ptr %4, align 4
  %209 = shl i32 %207, %208
  %210 = getelementptr i8, ptr %203, i32 %209
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %210, i16 8192) #8, !srcloc !13
  br label %296

211:                                              ; preds = %99
  %212 = and i32 %46, 8
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %256, label %214

214:                                              ; preds = %211
  %215 = load i8, ptr %11, align 8
  %216 = icmp eq i8 %215, 0
  %217 = select i1 %216, i8 1, i8 %215
  br label %218

218:                                              ; preds = %245, %214
  %219 = phi i8 [ %217, %214 ], [ %220, %245 ]
  %220 = add i8 %219, -1
  %221 = load ptr, ptr %2, align 4
  %222 = load ptr, ptr %3, align 4
  %223 = getelementptr i8, ptr %222, i32 8
  %224 = load i8, ptr %223, align 1
  %225 = zext i8 %224 to i32
  %226 = load i32, ptr %4, align 4
  %227 = shl i32 %225, %226
  %228 = getelementptr i8, ptr %221, i32 %227
  %229 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %228) #8, !srcloc !12
  %230 = trunc i16 %229 to i8
  %231 = load ptr, ptr %9, align 8
  %232 = getelementptr i8, ptr %231, i32 1
  store ptr %232, ptr %9, align 8
  store i8 %230, ptr %231, align 1
  %233 = load i32, ptr %7, align 8
  %234 = add i32 %233, -1
  store i32 %234, ptr %7, align 8
  %235 = load i32, ptr %10, align 8
  %236 = and i32 %235, 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %245, label %238

238:                                              ; preds = %218
  %239 = lshr i16 %229, 8
  %240 = trunc i16 %239 to i8
  %241 = load ptr, ptr %9, align 8
  %242 = getelementptr i8, ptr %241, i32 1
  store ptr %242, ptr %9, align 8
  store i8 %240, ptr %241, align 1
  %243 = load i32, ptr %7, align 8
  %244 = add i32 %243, -1
  store i32 %244, ptr %7, align 8
  br label %245

245:                                              ; preds = %238, %218
  %246 = icmp eq i8 %220, 0
  br i1 %246, label %247, label %218

247:                                              ; preds = %245
  %248 = load ptr, ptr %2, align 4
  %249 = load ptr, ptr %3, align 4
  %250 = getelementptr i8, ptr %249, i32 2
  %251 = load i8, ptr %250, align 1
  %252 = zext i8 %251 to i32
  %253 = load i32, ptr %4, align 4
  %254 = shl i32 %252, %253
  %255 = getelementptr i8, ptr %248, i32 %254
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %255, i16 8) #8, !srcloc !13
  br label %296

256:                                              ; preds = %211
  %257 = and i32 %46, 16384
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %278, label %259

259:                                              ; preds = %256
  %260 = load i8, ptr %6, align 1
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %259
  %263 = load i32, ptr %7, align 8
  %264 = trunc i32 %263 to i8
  br label %265

265:                                              ; preds = %262, %259
  %266 = phi i8 [ %264, %262 ], [ 1, %259 ]
  %267 = tail call fastcc i32 @omap_i2c_transmit_data(ptr noundef %0, i8 noundef zeroext %266)
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %325, label %269

269:                                              ; preds = %265
  %270 = load ptr, ptr %2, align 4
  %271 = load ptr, ptr %3, align 4
  %272 = getelementptr i8, ptr %271, i32 2
  %273 = load i8, ptr %272, align 1
  %274 = zext i8 %273 to i32
  %275 = load i32, ptr %4, align 4
  %276 = shl i32 %274, %275
  %277 = getelementptr i8, ptr %270, i32 %276
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %277, i16 16384) #8, !srcloc !13
  br label %296

278:                                              ; preds = %256
  %279 = and i32 %46, 16
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %297, label %281

281:                                              ; preds = %278
  %282 = load i8, ptr %11, align 8
  %283 = icmp eq i8 %282, 0
  %284 = select i1 %283, i8 1, i8 %282
  %285 = tail call fastcc i32 @omap_i2c_transmit_data(ptr noundef %0, i8 noundef zeroext %284)
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %325, label %287

287:                                              ; preds = %281
  %288 = load ptr, ptr %2, align 4
  %289 = load ptr, ptr %3, align 4
  %290 = getelementptr i8, ptr %289, i32 2
  %291 = load i8, ptr %290, align 1
  %292 = zext i8 %291 to i32
  %293 = load i32, ptr %4, align 4
  %294 = shl i32 %292, %293
  %295 = getelementptr i8, ptr %288, i32 %294
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %295, i16 16) #8, !srcloc !13
  br label %296

296:                                              ; preds = %311, %287, %269, %247, %202
  br label %12

297:                                              ; preds = %278
  %298 = and i32 %46, 2048
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %311, label %300

300:                                              ; preds = %297
  %301 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %301, ptr noundef nonnull @.str.10) #9
  %302 = or i32 %75, 2048
  %303 = load ptr, ptr %2, align 4
  %304 = load ptr, ptr %3, align 4
  %305 = getelementptr i8, ptr %304, i32 2
  %306 = load i8, ptr %305, align 1
  %307 = zext i8 %306 to i32
  %308 = load i32, ptr %4, align 4
  %309 = shl i32 %307, %308
  %310 = getelementptr i8, ptr %303, i32 %309
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %310, i16 2048) #8, !srcloc !13
  br label %325

311:                                              ; preds = %297
  %312 = and i32 %46, 1024
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %296, label %314

314:                                              ; preds = %311
  %315 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %315, ptr noundef nonnull @.str.11) #9
  %316 = or i32 %75, 1024
  %317 = load ptr, ptr %2, align 4
  %318 = load ptr, ptr %3, align 4
  %319 = getelementptr i8, ptr %318, i32 2
  %320 = load i8, ptr %319, align 1
  %321 = zext i8 %320 to i32
  %322 = load i32, ptr %4, align 4
  %323 = shl i32 %321, %322
  %324 = getelementptr i8, ptr %317, i32 %323
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %324, i16 1024) #8, !srcloc !13
  br label %325

325:                                              ; preds = %314, %300, %281, %265, %90, %43, %12
  %326 = phi i32 [ %13, %43 ], [ %75, %90 ], [ %302, %300 ], [ %316, %314 ], [ %75, %281 ], [ %75, %265 ], [ -11, %12 ]
  ret i32 %326
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @omap_i2c_transmit_data(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %107, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 12
  %6 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 14
  %7 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 9
  %8 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 26
  %9 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 13
  %11 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 3
  br label %12

12:                                               ; preds = %97, %4
  %13 = phi i8 [ %1, %4 ], [ %14, %97 ]
  %14 = add i8 %13, -1
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr i8, ptr %15, i32 1
  store ptr %16, ptr %5, align 8
  %17 = load i8, ptr %15, align 1
  %18 = zext i8 %17 to i16
  %19 = load i32, ptr %6, align 8
  %20 = add i32 %19, -1
  store i32 %20, ptr %6, align 8
  %21 = load i32, ptr %7, align 8
  %22 = and i32 %21, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %12
  %25 = getelementptr i8, ptr %15, i32 2
  store ptr %25, ptr %5, align 8
  %26 = load i8, ptr %16, align 1
  %27 = zext i8 %26 to i16
  %28 = shl nuw i16 %27, 8
  %29 = or i16 %28, %18
  %30 = add i32 %19, -2
  store i32 %30, ptr %6, align 8
  br label %31

31:                                               ; preds = %24, %12
  %32 = phi i16 [ %29, %24 ], [ %18, %12 ]
  %33 = load i16, ptr %8, align 2
  %34 = and i16 %33, 2
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %97, label %36

36:                                               ; preds = %92, %31
  %37 = phi i32 [ %93, %92 ], [ 10000, %31 ]
  %38 = load ptr, ptr %9, align 4
  %39 = load ptr, ptr %10, align 4
  %40 = getelementptr i8, ptr %39, i32 2
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i32, ptr %11, align 4
  %44 = shl i32 %42, %43
  %45 = getelementptr i8, ptr %38, i32 %44
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %45) #8, !srcloc !12
  %47 = zext i16 %46 to i32
  %48 = and i32 %47, 1024
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %97

50:                                               ; preds = %36
  %51 = and i32 %47, 3
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %92, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %9, align 4
  %55 = load ptr, ptr %10, align 4
  %56 = getelementptr i8, ptr %55, i32 2
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = load i32, ptr %11, align 4
  %60 = shl i32 %58, %59
  %61 = getelementptr i8, ptr %54, i32 %60
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %61, i16 16400) #8, !srcloc !13
  %62 = and i32 %47, 2
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 11
  %66 = load i16, ptr %65, align 2
  %67 = or i16 %66, 2
  store i16 %67, ptr %65, align 2
  %68 = load ptr, ptr %9, align 4
  %69 = load ptr, ptr %10, align 4
  %70 = getelementptr i8, ptr %69, i32 2
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = load i32, ptr %11, align 4
  %74 = shl i32 %72, %73
  %75 = getelementptr i8, ptr %68, i32 %74
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %75, i16 2) #8, !srcloc !13
  br label %76

76:                                               ; preds = %64, %53
  %77 = and i32 %47, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %107, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.9) #9
  %81 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 11
  %82 = load i16, ptr %81, align 2
  %83 = or i16 %82, 1
  store i16 %83, ptr %81, align 2
  %84 = load ptr, ptr %9, align 4
  %85 = load ptr, ptr %10, align 4
  %86 = getelementptr i8, ptr %85, i32 2
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i32, ptr %11, align 4
  %90 = shl i32 %88, %89
  %91 = getelementptr i8, ptr %84, i32 %90
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %91, i16 1) #8, !srcloc !13
  br label %107

92:                                               ; preds = %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !15
  %93 = add nsw i32 %37, -1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %36

95:                                               ; preds = %92
  %96 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.12) #9
  br label %97

97:                                               ; preds = %95, %36, %31
  %98 = load ptr, ptr %9, align 4
  %99 = load ptr, ptr %10, align 4
  %100 = getelementptr i8, ptr %99, i32 8
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = load i32, ptr %11, align 4
  %104 = shl i32 %102, %103
  %105 = getelementptr i8, ptr %98, i32 %104
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %105, i16 %32) #8, !srcloc !13
  %106 = icmp eq i8 %14, 0
  br i1 %106, label %107, label %12

107:                                              ; preds = %97, %79, %76, %2
  %108 = phi i32 [ -5, %79 ], [ -5, %76 ], [ 0, %2 ], [ 0, %97 ]
  ret i32 %108
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_i2c_xfer_irq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = tail call fastcc i32 @omap_i2c_xfer_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_i2c_xfer_polling(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = tail call fastcc i32 @omap_i2c_xfer_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true)
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @omap_i2c_func(ptr nocapture noundef readnone %0) #6 {
  ret i32 251527181
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @omap_i2c_xfer_common(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %459, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.omap_i2c_dev, ptr %6, i32 0, i32 19
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %101

15:                                               ; preds = %10
  %16 = load volatile i32, ptr @jiffies, align 64
  %17 = add i32 %16, 100
  %18 = getelementptr inbounds %struct.omap_i2c_dev, ptr %6, i32 0, i32 1
  %19 = getelementptr inbounds %struct.omap_i2c_dev, ptr %6, i32 0, i32 13
  %20 = getelementptr inbounds %struct.omap_i2c_dev, ptr %6, i32 0, i32 3
  %21 = load ptr, ptr %18, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr i8, ptr %22, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = load i32, ptr %20, align 4
  %27 = shl i32 %25, %26
  %28 = getelementptr i8, ptr %21, i32 %27
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %28) #8, !srcloc !12
  %30 = and i16 %29, 4352
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %95

32:                                               ; preds = %83, %15
  %33 = phi i32 [ %58, %83 ], [ 0, %15 ]
  %34 = phi i32 [ %57, %83 ], [ 0, %15 ]
  %35 = load ptr, ptr %18, align 4
  %36 = load ptr, ptr %19, align 4
  %37 = getelementptr i8, ptr %36, i32 16
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i32, ptr %20, align 4
  %41 = shl i32 %39, %40
  %42 = getelementptr i8, ptr %35, i32 %41
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %42) #8, !srcloc !12
  %44 = and i16 %43, 320
  %45 = icmp eq i16 %44, 320
  br i1 %45, label %46, label %56

46:                                               ; preds = %32
  %47 = icmp eq i32 %33, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load volatile i32, ptr @jiffies, align 64
  %50 = add i32 %49, 1
  br label %51

51:                                               ; preds = %48, %46
  %52 = phi i32 [ %34, %46 ], [ %50, %48 ]
  %53 = load volatile i32, ptr @jiffies, align 64
  %54 = sub i32 %52, %53
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %95, label %56

56:                                               ; preds = %51, %32
  %57 = phi i32 [ %52, %51 ], [ %34, %32 ]
  %58 = phi i32 [ 1, %51 ], [ 0, %32 ]
  %59 = load volatile i32, ptr @jiffies, align 64
  %60 = sub i32 %17, %59
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %56
  %63 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.13) #9
  %64 = load ptr, ptr %18, align 4
  %65 = load ptr, ptr %19, align 4
  %66 = getelementptr i8, ptr %65, i32 16
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i32, ptr %20, align 4
  %70 = shl i32 %68, %69
  %71 = getelementptr i8, ptr %64, i32 %70
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %71) #8, !srcloc !12
  %73 = zext i16 %72 to i32
  %74 = and i32 %73, 256
  %75 = icmp eq i32 %74, 0
  %76 = and i32 %73, 320
  %77 = icmp eq i32 %76, 320
  %78 = or i1 %77, %75
  %79 = select i1 %77, i32 0, i32 -16
  br i1 %78, label %98, label %80

80:                                               ; preds = %62
  %81 = getelementptr inbounds %struct.omap_i2c_dev, ptr %6, i32 0, i32 15
  %82 = tail call i32 @i2c_recover_bus(ptr noundef %81) #8
  br label %98

83:                                               ; preds = %56
  tail call void @msleep(i32 noundef 1) #8
  %84 = load ptr, ptr %18, align 4
  %85 = load ptr, ptr %19, align 4
  %86 = getelementptr i8, ptr %85, i32 2
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i32, ptr %20, align 4
  %90 = shl i32 %88, %89
  %91 = getelementptr i8, ptr %84, i32 %90
  %92 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %91) #8, !srcloc !12
  %93 = and i16 %92, 4352
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %32, label %95

95:                                               ; preds = %83, %51, %15
  %96 = load i8, ptr %11, align 8
  %97 = or i8 %96, 2
  store i8 %97, ptr %11, align 8
  br label %101

98:                                               ; preds = %80, %62
  %99 = phi i32 [ %82, %80 ], [ %79, %62 ]
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %459, label %101

101:                                              ; preds = %98, %95, %10
  %102 = tail call fastcc i32 @omap_i2c_wait_for_bb(ptr noundef %6)
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %459, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.omap_i2c_dev, ptr %6, i32 0, i32 7
  %106 = load ptr, ptr %105, align 8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %6, align 8
  %110 = getelementptr inbounds %struct.omap_i2c_dev, ptr %6, i32 0, i32 6
  %111 = load i32, ptr %110, align 4
  tail call void %106(ptr noundef %109, i32 noundef %111) #8
  br label %112

112:                                              ; preds = %108, %104
  %113 = icmp sgt i32 %2, 0
  br i1 %113, label %114, label %449

114:                                              ; preds = %112
  %115 = add nsw i32 %2, -1
  br label %116

116:                                              ; preds = %446, %114
  %117 = phi i32 [ 0, %114 ], [ %447, %446 ]
  %118 = getelementptr %struct.i2c_msg, ptr %1, i32 %117
  %119 = icmp eq i32 %117, %115
  %120 = load ptr, ptr %5, align 8
  %121 = getelementptr %struct.i2c_msg, ptr %1, i32 %117, i32 1
  %122 = load i16, ptr %121, align 2
  %123 = getelementptr inbounds %struct.omap_i2c_dev, ptr %120, i32 0, i32 19
  %124 = trunc i16 %122 to i8
  %125 = load i8, ptr %123, align 8
  %126 = shl i8 %124, 2
  %127 = and i8 %126, 4
  %128 = and i8 %125, -5
  %129 = or i8 %127, %128
  store i8 %129, ptr %123, align 8
  %130 = getelementptr %struct.i2c_msg, ptr %1, i32 %117, i32 2
  %131 = getelementptr inbounds %struct.omap_i2c_dev, ptr %120, i32 0, i32 9
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, 1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %202

135:                                              ; preds = %116
  %136 = and i8 %124, 1
  %137 = icmp eq i8 %136, 0
  %138 = load i16, ptr %130, align 4
  %139 = trunc i16 %138 to i8
  %140 = tail call i8 @llvm.umax.i8(i8 %139, i8 1) #8
  %141 = getelementptr inbounds %struct.omap_i2c_dev, ptr %120, i32 0, i32 17
  %142 = load i8, ptr %141, align 1
  %143 = tail call i8 @llvm.umin.i8(i8 %140, i8 %142) #8
  %144 = getelementptr inbounds %struct.omap_i2c_dev, ptr %120, i32 0, i32 16
  store i8 %143, ptr %144, align 8
  %145 = getelementptr inbounds %struct.omap_i2c_dev, ptr %120, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.omap_i2c_dev, ptr %120, i32 0, i32 13
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr i8, ptr %148, i32 6
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i32
  %152 = getelementptr inbounds %struct.omap_i2c_dev, ptr %120, i32 0, i32 3
  %153 = load i32, ptr %152, align 4
  %154 = shl i32 %151, %153
  %155 = getelementptr i8, ptr %146, i32 %154
  %156 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %155) #8, !srcloc !12
  br i1 %137, label %165, label %157

157:                                              ; preds = %135
  %158 = and i16 %156, -32513
  %159 = load i8, ptr %144, align 8
  %160 = zext i8 %159 to i16
  %161 = shl nuw i16 %160, 8
  %162 = add i16 %161, -256
  %163 = or i16 %158, %162
  %164 = or i16 %163, 16384
  br label %172

165:                                              ; preds = %135
  %166 = and i16 %156, -128
  %167 = load i8, ptr %144, align 8
  %168 = zext i8 %167 to i16
  %169 = add nsw i16 %168, -1
  %170 = or i16 %166, %169
  %171 = or i16 %170, 64
  br label %172

172:                                              ; preds = %165, %157
  %173 = phi i16 [ %164, %157 ], [ %171, %165 ]
  %174 = load ptr, ptr %145, align 4
  %175 = load ptr, ptr %147, align 4
  %176 = getelementptr i8, ptr %175, i32 6
  %177 = load i8, ptr %176, align 1
  %178 = zext i8 %177 to i32
  %179 = load i32, ptr %152, align 4
  %180 = shl i32 %178, %179
  %181 = getelementptr i8, ptr %174, i32 %180
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %181, i16 %173) #8, !srcloc !13
  %182 = getelementptr inbounds %struct.omap_i2c_dev, ptr %120, i32 0, i32 18
  %183 = load i32, ptr %182, align 4
  %184 = icmp ult i32 %183, 64
  br i1 %184, label %185, label %188

185:                                              ; preds = %172
  %186 = load i8, ptr %123, align 8
  %187 = or i8 %186, 1
  store i8 %187, ptr %123, align 8
  br label %188

188:                                              ; preds = %185, %172
  %189 = getelementptr inbounds %struct.omap_i2c_dev, ptr %120, i32 0, i32 7
  %190 = load ptr, ptr %189, align 8
  %191 = icmp eq ptr %190, null
  br i1 %191, label %202, label %192

192:                                              ; preds = %188
  %193 = load i8, ptr %144, align 8
  %194 = zext i8 %193 to i32
  %195 = mul nuw nsw i32 %194, 1000000
  %196 = getelementptr inbounds %struct.omap_i2c_dev, ptr %120, i32 0, i32 8
  %197 = load i32, ptr %196, align 4
  %198 = mul i32 %197, 1000
  %199 = lshr exact i32 %198, 3
  %200 = udiv i32 %195, %199
  %201 = getelementptr inbounds %struct.omap_i2c_dev, ptr %120, i32 0, i32 6
  store i32 %200, ptr %201, align 4
  br label %202

202:                                              ; preds = %192, %188, %116
  %203 = load i16, ptr %118, align 4
  %204 = getelementptr inbounds %struct.omap_i2c_dev, ptr %120, i32 0, i32 1
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr inbounds %struct.omap_i2c_dev, ptr %120, i32 0, i32 13
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr i8, ptr %207, i32 12
  %209 = load i8, ptr %208, align 1
  %210 = zext i8 %209 to i32
  %211 = getelementptr inbounds %struct.omap_i2c_dev, ptr %120, i32 0, i32 3
  %212 = load i32, ptr %211, align 4
  %213 = shl i32 %210, %212
  %214 = getelementptr i8, ptr %205, i32 %213
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %214, i16 %203) #8, !srcloc !13
  %215 = getelementptr %struct.i2c_msg, ptr %1, i32 %117, i32 3
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.omap_i2c_dev, ptr %120, i32 0, i32 12
  store ptr %216, ptr %217, align 8
  %218 = load i16, ptr %130, align 4
  %219 = zext i16 %218 to i32
  %220 = getelementptr inbounds %struct.omap_i2c_dev, ptr %120, i32 0, i32 14
  store i32 %219, ptr %220, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  %221 = load i32, ptr %220, align 8
  %222 = trunc i32 %221 to i16
  %223 = load ptr, ptr %204, align 4
  %224 = load ptr, ptr %206, align 4
  %225 = getelementptr i8, ptr %224, i32 7
  %226 = load i8, ptr %225, align 1
  %227 = zext i8 %226 to i32
  %228 = load i32, ptr %211, align 4
  %229 = shl i32 %227, %228
  %230 = getelementptr i8, ptr %223, i32 %229
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %230, i16 %222) #8, !srcloc !13
  %231 = load ptr, ptr %204, align 4
  %232 = load ptr, ptr %206, align 4
  %233 = getelementptr i8, ptr %232, i32 6
  %234 = load i8, ptr %233, align 1
  %235 = zext i8 %234 to i32
  %236 = load i32, ptr %211, align 4
  %237 = shl i32 %235, %236
  %238 = getelementptr i8, ptr %231, i32 %237
  %239 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %238) #8, !srcloc !12
  %240 = or i16 %239, 16448
  %241 = load ptr, ptr %204, align 4
  %242 = load ptr, ptr %206, align 4
  %243 = getelementptr i8, ptr %242, i32 6
  %244 = load i8, ptr %243, align 1
  %245 = zext i8 %244 to i32
  %246 = load i32, ptr %211, align 4
  %247 = shl i32 %245, %246
  %248 = getelementptr i8, ptr %241, i32 %247
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %248, i16 %240) #8, !srcloc !13
  br i1 %3, label %251, label %249

249:                                              ; preds = %202
  %250 = getelementptr inbounds %struct.omap_i2c_dev, ptr %120, i32 0, i32 4
  store i32 0, ptr %250, align 4
  br label %251

251:                                              ; preds = %249, %202
  %252 = getelementptr inbounds %struct.omap_i2c_dev, ptr %120, i32 0, i32 11
  store i16 0, ptr %252, align 2
  %253 = getelementptr inbounds %struct.omap_i2c_dev, ptr %120, i32 0, i32 8
  %254 = load i32, ptr %253, align 4
  %255 = icmp ugt i32 %254, 400
  %256 = select i1 %255, i16 -27647, i16 -31743
  %257 = load i16, ptr %121, align 2
  %258 = icmp slt i16 %257, 0
  %259 = shl i16 %257, 4
  %260 = and i16 %259, 256
  %261 = or i16 %260, %256
  %262 = shl i16 %257, 9
  %263 = and i16 %262, 512
  %264 = or i16 %261, %263
  %265 = xor i16 %264, 512
  %266 = load i8, ptr %123, align 8
  %267 = and i8 %266, 1
  %268 = icmp eq i8 %267, 0
  %269 = or i1 %119, %258
  %270 = and i1 %269, %268
  %271 = or i16 %265, 2
  %272 = select i1 %270, i16 %271, i16 %265
  %273 = load ptr, ptr %204, align 4
  %274 = load ptr, ptr %206, align 4
  %275 = getelementptr i8, ptr %274, i32 10
  %276 = load i8, ptr %275, align 1
  %277 = zext i8 %276 to i32
  %278 = load i32, ptr %211, align 4
  %279 = shl i32 %277, %278
  %280 = getelementptr i8, ptr %273, i32 %279
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %280, i16 %272) #8, !srcloc !13
  %281 = load i8, ptr %123, align 8
  %282 = and i8 %281, 1
  %283 = icmp ne i8 %282, 0
  %284 = and i1 %269, %283
  br i1 %284, label %285, label %327

285:                                              ; preds = %251
  %286 = load volatile i32, ptr @jiffies, align 64
  %287 = add i32 %286, 100
  %288 = load ptr, ptr %204, align 4
  %289 = load ptr, ptr %206, align 4
  %290 = getelementptr i8, ptr %289, i32 10
  %291 = load i8, ptr %290, align 1
  %292 = zext i8 %291 to i32
  %293 = load i32, ptr %211, align 4
  %294 = shl i32 %292, %293
  %295 = getelementptr i8, ptr %288, i32 %294
  %296 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %295) #8, !srcloc !12
  %297 = and i16 %296, 1
  %298 = icmp eq i16 %297, 0
  br i1 %298, label %317, label %299

299:                                              ; preds = %314, %285
  %300 = load ptr, ptr %204, align 4
  %301 = load ptr, ptr %206, align 4
  %302 = getelementptr i8, ptr %301, i32 10
  %303 = load i8, ptr %302, align 1
  %304 = zext i8 %303 to i32
  %305 = load i32, ptr %211, align 4
  %306 = shl i32 %304, %305
  %307 = getelementptr i8, ptr %300, i32 %306
  %308 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %307) #8, !srcloc !12
  %309 = load volatile i32, ptr @jiffies, align 64
  %310 = sub i32 %287, %309
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %299
  %313 = load ptr, ptr %120, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %313, ptr noundef nonnull @.str.14) #9
  br label %452

314:                                              ; preds = %299
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !18
  %315 = and i16 %308, 1
  %316 = icmp eq i16 %315, 0
  br i1 %316, label %317, label %299

317:                                              ; preds = %314, %285
  %318 = and i16 %271, -26878
  %319 = load ptr, ptr %204, align 4
  %320 = load ptr, ptr %206, align 4
  %321 = getelementptr i8, ptr %320, i32 10
  %322 = load i8, ptr %321, align 1
  %323 = zext i8 %322 to i32
  %324 = load i32, ptr %211, align 4
  %325 = shl i32 %323, %324
  %326 = getelementptr i8, ptr %319, i32 %325
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %326, i16 %318) #8, !srcloc !13
  br label %327

327:                                              ; preds = %317, %251
  br i1 %3, label %331, label %328

328:                                              ; preds = %327
  %329 = getelementptr inbounds %struct.omap_i2c_dev, ptr %120, i32 0, i32 4
  %330 = tail call i32 @wait_for_completion_timeout(ptr noundef %329, i32 noundef 100) #8
  br label %404

331:                                              ; preds = %398, %327
  %332 = load ptr, ptr %204, align 4
  %333 = load ptr, ptr %206, align 4
  %334 = getelementptr i8, ptr %333, i32 1
  %335 = load i8, ptr %334, align 1
  %336 = zext i8 %335 to i32
  %337 = load i32, ptr %211, align 4
  %338 = shl i32 %336, %337
  %339 = getelementptr i8, ptr %332, i32 %338
  %340 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %339) #8, !srcloc !12
  %341 = load ptr, ptr %204, align 4
  %342 = load ptr, ptr %206, align 4
  %343 = getelementptr i8, ptr %342, i32 2
  %344 = load i8, ptr %343, align 1
  %345 = zext i8 %344 to i32
  %346 = load i32, ptr %211, align 4
  %347 = shl i32 %345, %346
  %348 = getelementptr i8, ptr %341, i32 %347
  %349 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %348) #8, !srcloc !12
  %350 = and i16 %349, %340
  %351 = icmp eq i16 %350, 0
  br i1 %351, label %352, label %398

352:                                              ; preds = %331
  %353 = load ptr, ptr %204, align 4
  %354 = load ptr, ptr %206, align 4
  %355 = getelementptr i8, ptr %354, i32 2
  %356 = load i8, ptr %355, align 1
  %357 = zext i8 %356 to i32
  %358 = load i32, ptr %211, align 4
  %359 = shl i32 %357, %358
  %360 = getelementptr i8, ptr %353, i32 %359
  %361 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %360) #8, !srcloc !12
  %362 = and i16 %361, %340
  %363 = icmp eq i16 %362, 0
  br i1 %363, label %364, label %398

364:                                              ; preds = %352
  %365 = load ptr, ptr %204, align 4
  %366 = load ptr, ptr %206, align 4
  %367 = getelementptr i8, ptr %366, i32 2
  %368 = load i8, ptr %367, align 1
  %369 = zext i8 %368 to i32
  %370 = load i32, ptr %211, align 4
  %371 = shl i32 %369, %370
  %372 = getelementptr i8, ptr %365, i32 %371
  %373 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %372) #8, !srcloc !12
  %374 = and i16 %373, %340
  %375 = icmp eq i16 %374, 0
  br i1 %375, label %376, label %398

376:                                              ; preds = %364
  %377 = load ptr, ptr %204, align 4
  %378 = load ptr, ptr %206, align 4
  %379 = getelementptr i8, ptr %378, i32 2
  %380 = load i8, ptr %379, align 1
  %381 = zext i8 %380 to i32
  %382 = load i32, ptr %211, align 4
  %383 = shl i32 %381, %382
  %384 = getelementptr i8, ptr %377, i32 %383
  %385 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %384) #8, !srcloc !12
  %386 = and i16 %385, %340
  %387 = icmp eq i16 %386, 0
  br i1 %387, label %388, label %398

388:                                              ; preds = %376
  %389 = load ptr, ptr %204, align 4
  %390 = load ptr, ptr %206, align 4
  %391 = getelementptr i8, ptr %390, i32 2
  %392 = load i8, ptr %391, align 1
  %393 = zext i8 %392 to i32
  %394 = load i32, ptr %211, align 4
  %395 = shl i32 %393, %394
  %396 = getelementptr i8, ptr %389, i32 %395
  %397 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %396) #8, !srcloc !12
  br label %398

398:                                              ; preds = %388, %376, %364, %352, %331
  %399 = tail call fastcc i32 @omap_i2c_xfer_data(ptr noundef %120) #8
  %400 = icmp eq i32 %399, -11
  br i1 %400, label %331, label %401

401:                                              ; preds = %398
  %402 = icmp eq i32 %399, 0
  %403 = zext i1 %402 to i32
  br label %404

404:                                              ; preds = %401, %328
  %405 = phi i32 [ %403, %401 ], [ %330, %328 ]
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %409

407:                                              ; preds = %404
  %408 = load ptr, ptr %120, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %408, ptr noundef nonnull @.str.15) #9
  tail call fastcc void @omap_i2c_reset(ptr noundef %120) #8
  tail call fastcc void @__omap_i2c_init(ptr noundef %120) #8
  br label %452

409:                                              ; preds = %404
  %410 = load i16, ptr %252, align 2
  %411 = icmp eq i16 %410, 0
  br i1 %411, label %446, label %412, !prof !19

412:                                              ; preds = %409
  %413 = zext i16 %410 to i32
  %414 = and i32 %413, 3072
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %417, label %416

416:                                              ; preds = %412
  tail call fastcc void @omap_i2c_reset(ptr noundef %120) #8
  tail call fastcc void @__omap_i2c_init(ptr noundef %120) #8
  br label %452

417:                                              ; preds = %412
  %418 = and i32 %413, 1
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %452

420:                                              ; preds = %417
  %421 = and i32 %413, 2
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %452, label %423

423:                                              ; preds = %420
  %424 = load i16, ptr %121, align 2
  %425 = and i16 %424, 4096
  %426 = icmp eq i16 %425, 0
  br i1 %426, label %427, label %446

427:                                              ; preds = %423
  %428 = load ptr, ptr %204, align 4
  %429 = load ptr, ptr %206, align 4
  %430 = getelementptr i8, ptr %429, i32 10
  %431 = load i8, ptr %430, align 1
  %432 = zext i8 %431 to i32
  %433 = load i32, ptr %211, align 4
  %434 = shl i32 %432, %433
  %435 = getelementptr i8, ptr %428, i32 %434
  %436 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %435) #8, !srcloc !12
  %437 = or i16 %436, 2
  %438 = load ptr, ptr %204, align 4
  %439 = load ptr, ptr %206, align 4
  %440 = getelementptr i8, ptr %439, i32 10
  %441 = load i8, ptr %440, align 1
  %442 = zext i8 %441 to i32
  %443 = load i32, ptr %211, align 4
  %444 = shl i32 %442, %443
  %445 = getelementptr i8, ptr %438, i32 %444
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %445, i16 %437) #8, !srcloc !13
  br label %452

446:                                              ; preds = %423, %409
  %447 = add nuw nsw i32 %117, 1
  %448 = icmp eq i32 %447, %2
  br i1 %448, label %451, label %116

449:                                              ; preds = %112
  %450 = icmp eq i32 %102, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %449, %446
  br label %452

452:                                              ; preds = %451, %449, %427, %420, %417, %416, %407, %312
  %453 = phi i32 [ -110, %407 ], [ -5, %416 ], [ -121, %427 ], [ -110, %312 ], [ %2, %451 ], [ %102, %449 ], [ -5, %420 ], [ -11, %417 ]
  %454 = tail call fastcc i32 @omap_i2c_wait_for_bb(ptr noundef %6)
  %455 = load ptr, ptr %105, align 8
  %456 = icmp eq ptr %455, null
  br i1 %456, label %459, label %457

457:                                              ; preds = %452
  %458 = load ptr, ptr %6, align 8
  tail call void %455(ptr noundef %458, i32 noundef -1) #8
  br label %459

459:                                              ; preds = %457, %452, %101, %98, %4
  %460 = phi i32 [ %8, %4 ], [ %99, %98 ], [ %102, %101 ], [ %453, %457 ], [ %453, %452 ]
  %461 = load ptr, ptr %6, align 8
  %462 = tail call i64 @ktime_get_mono_fast_ns() #8
  %463 = getelementptr inbounds %struct.device, ptr %461, i32 0, i32 11, i32 22
  store volatile i64 %462, ptr %463, align 8
  %464 = load ptr, ptr %6, align 8
  %465 = tail call i32 @__pm_runtime_suspend(ptr noundef %464, i32 noundef 13) #8
  ret i32 %460
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @omap_i2c_wait_for_bb(ptr noundef %0) unnamed_addr #2 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = add i32 %2, 100
  %4 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 13
  %6 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = load i32, ptr %6, align 4
  %13 = shl i32 %11, %12
  %14 = getelementptr i8, ptr %7, i32 %13
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %14) #8, !srcloc !12
  %16 = and i16 %15, 4096
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %54, label %18

18:                                               ; preds = %42, %1
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = sub i32 %3, %19
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load ptr, ptr %4, align 4
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr i8, ptr %24, i32 16
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = load i32, ptr %6, align 4
  %29 = shl i32 %27, %28
  %30 = getelementptr i8, ptr %23, i32 %29
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %30) #8, !srcloc !12
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, 256
  %34 = icmp eq i32 %33, 0
  %35 = and i32 %32, 320
  %36 = icmp eq i32 %35, 320
  %37 = or i1 %36, %34
  %38 = select i1 %36, i32 0, i32 -16
  br i1 %37, label %54, label %39

39:                                               ; preds = %22
  %40 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 15
  %41 = tail call i32 @i2c_recover_bus(ptr noundef %40) #8
  br label %54

42:                                               ; preds = %18
  tail call void @msleep(i32 noundef 1) #8
  %43 = load ptr, ptr %4, align 4
  %44 = load ptr, ptr %5, align 4
  %45 = getelementptr i8, ptr %44, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load i32, ptr %6, align 4
  %49 = shl i32 %47, %48
  %50 = getelementptr i8, ptr %43, i32 %49
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %50) #8, !srcloc !12
  %52 = and i16 %51, 4096
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %18

54:                                               ; preds = %42, %39, %22, %1
  %55 = phi i32 [ %41, %39 ], [ %38, %22 ], [ 0, %1 ], [ 0, %42 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_i2c_reset(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 18
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 31
  br i1 %4, label %5, label %98

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 9
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %12, %14
  %16 = getelementptr i8, ptr %7, i32 %15
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %16) #8, !srcloc !12
  %18 = load ptr, ptr %6, align 4
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr i8, ptr %19, i32 10
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = load i32, ptr %13, align 4
  %24 = shl i32 %22, %23
  %25 = getelementptr i8, ptr %18, i32 %24
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %25) #8, !srcloc !12
  %27 = and i16 %26, 32767
  %28 = load ptr, ptr %6, align 4
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr i8, ptr %29, i32 10
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i32, ptr %13, align 4
  %34 = shl i32 %32, %33
  %35 = getelementptr i8, ptr %28, i32 %34
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %35, i16 %27) #8, !srcloc !13
  %36 = load ptr, ptr %6, align 4
  %37 = load ptr, ptr %8, align 4
  %38 = getelementptr i8, ptr %37, i32 9
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i32, ptr %13, align 4
  %42 = shl i32 %40, %41
  %43 = getelementptr i8, ptr %36, i32 %42
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %43, i16 2) #8, !srcloc !13
  %44 = load volatile i32, ptr @jiffies, align 64
  %45 = add i32 %44, 100
  %46 = load ptr, ptr %6, align 4
  %47 = load ptr, ptr %8, align 4
  %48 = getelementptr i8, ptr %47, i32 10
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i32, ptr %13, align 4
  %52 = shl i32 %50, %51
  %53 = getelementptr i8, ptr %46, i32 %52
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %53, i16 -32768) #8, !srcloc !13
  %54 = load ptr, ptr %6, align 4
  %55 = load ptr, ptr %8, align 4
  %56 = getelementptr i8, ptr %55, i32 5
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = load i32, ptr %13, align 4
  %60 = shl i32 %58, %59
  %61 = getelementptr i8, ptr %54, i32 %60
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %61) #8, !srcloc !12
  %63 = and i16 %62, 1
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %71, %5
  %66 = load volatile i32, ptr @jiffies, align 64
  %67 = sub i32 %45, %66
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %70, ptr noundef nonnull @.str.16) #9
  br label %98

71:                                               ; preds = %65
  tail call void @msleep(i32 noundef 1) #8
  %72 = load ptr, ptr %6, align 4
  %73 = load ptr, ptr %8, align 4
  %74 = getelementptr i8, ptr %73, i32 5
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load i32, ptr %13, align 4
  %78 = shl i32 %76, %77
  %79 = getelementptr i8, ptr %72, i32 %78
  %80 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %79) #8, !srcloc !12
  %81 = and i16 %80, 1
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %65, label %83

83:                                               ; preds = %71, %5
  %84 = load ptr, ptr %6, align 4
  %85 = load ptr, ptr %8, align 4
  %86 = getelementptr i8, ptr %85, i32 9
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i32, ptr %13, align 4
  %90 = shl i32 %88, %89
  %91 = getelementptr i8, ptr %84, i32 %90
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %91, i16 %17) #8, !srcloc !13
  %92 = load i32, ptr %2, align 4
  %93 = icmp ugt i32 %92, 60
  br i1 %93, label %94, label %98

94:                                               ; preds = %83
  %95 = getelementptr inbounds %struct.omap_i2c_dev, ptr %0, i32 0, i32 19
  %96 = load i8, ptr %95, align 8
  %97 = and i8 %96, -3
  store i8 %97, ptr %95, align 8
  br label %98

98:                                               ; preds = %94, %83, %69, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_generic_scl_recovery(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_i2c_get_scl(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %10, %12
  %14 = getelementptr i8, ptr %5, i32 %13
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %14) #8, !srcloc !12
  %16 = and i16 %15, 256
  %17 = zext i16 %16 to i32
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_i2c_set_scl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.omap_i2c_dev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.omap_i2c_dev, ptr %4, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.omap_i2c_dev, ptr %4, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %11, %13
  %15 = getelementptr i8, ptr %6, i32 %14
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #8, !srcloc !12
  %17 = icmp eq i32 %1, 0
  %18 = and i16 %16, -5
  %19 = select i1 %17, i16 0, i16 4
  %20 = or i16 %18, %19
  %21 = load ptr, ptr %5, align 4
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr i8, ptr %22, i32 16
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = load i32, ptr %12, align 4
  %27 = shl i32 %25, %26
  %28 = getelementptr i8, ptr %21, i32 %27
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %28, i16 %20) #8, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_i2c_get_sda(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %10, %12
  %14 = getelementptr i8, ptr %5, i32 %13
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %14) #8, !srcloc !12
  %16 = and i16 %15, 64
  %17 = zext i16 %16 to i32
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_i2c_prepare_recovery(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %10, %12
  %14 = getelementptr i8, ptr %5, i32 %13
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %14) #8, !srcloc !12
  %16 = or i16 %15, -20475
  %17 = load ptr, ptr %4, align 4
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr i8, ptr %18, i32 16
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load i32, ptr %11, align 4
  %23 = shl i32 %21, %22
  %24 = getelementptr i8, ptr %17, i32 %23
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %24, i16 %16) #8, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_i2c_unprepare_recovery(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %10, %12
  %14 = getelementptr i8, ptr %5, i32 %13
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %14) #8, !srcloc !12
  %16 = and i16 %15, 20474
  %17 = load ptr, ptr %4, align 4
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr i8, ptr %18, i32 16
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load i32, ptr %11, align 4
  %23 = shl i32 %21, %22
  %24 = getelementptr i8, ptr %17, i32 %23
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %24, i16 %16) #8, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_i2c_runtime_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %10, %12
  %14 = getelementptr i8, ptr %5, i32 %13
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %14) #8, !srcloc !12
  %16 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 20
  store i16 %15, ptr %16, align 2
  %17 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 10
  %18 = load i16, ptr %17, align 4
  %19 = icmp eq i16 %18, 0
  %20 = load ptr, ptr %4, align 4
  %21 = load ptr, ptr %6, align 4
  br i1 %19, label %22, label %29

22:                                               ; preds = %1
  %23 = getelementptr i8, ptr %21, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = load i32, ptr %11, align 4
  %27 = shl i32 %25, %26
  %28 = getelementptr i8, ptr %20, i32 %27
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %28, i16 0) #8, !srcloc !13
  br label %36

29:                                               ; preds = %1
  %30 = getelementptr i8, ptr %21, i32 22
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i32, ptr %11, align 4
  %34 = shl i32 %32, %33
  %35 = getelementptr i8, ptr %20, i32 %34
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %35, i16 28671) #8, !srcloc !13
  br label %36

36:                                               ; preds = %29, %22
  %37 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 18
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %38, 32
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load ptr, ptr %4, align 4
  %42 = load ptr, ptr %6, align 4
  %43 = getelementptr i8, ptr %42, i32 3
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = load i32, ptr %11, align 4
  %47 = shl i32 %45, %46
  %48 = getelementptr i8, ptr %41, i32 %47
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %48) #8, !srcloc !12
  br label %69

50:                                               ; preds = %36
  %51 = load i16, ptr %16, align 2
  %52 = load ptr, ptr %4, align 4
  %53 = load ptr, ptr %6, align 4
  %54 = getelementptr i8, ptr %53, i32 2
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i32, ptr %11, align 4
  %58 = shl i32 %56, %57
  %59 = getelementptr i8, ptr %52, i32 %58
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %59, i16 %51) #8, !srcloc !13
  %60 = load ptr, ptr %4, align 4
  %61 = load ptr, ptr %6, align 4
  %62 = getelementptr i8, ptr %61, i32 2
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = load i32, ptr %11, align 4
  %66 = shl i32 %64, %65
  %67 = getelementptr i8, ptr %60, i32 %66
  %68 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %67) #8, !srcloc !12
  br label %69

69:                                               ; preds = %50, %40
  %70 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_i2c_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.omap_i2c_dev, ptr %3, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call fastcc void @__omap_i2c_init(ptr noundef %3)
  br label %9

9:                                                ; preds = %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2148083655}
!9 = !{i64 582762, i64 2148072733, i64 2148072759, i64 2148072806, i64 2148072828, i64 2148072856, i64 2148072876}
!10 = !{i64 569331, i64 569356, i64 569378, i64 569394, i64 569406, i64 569426, i64 569450, i64 569466, i64 569478}
!11 = !{i64 2148083781}
!12 = !{i64 5394939}
!13 = !{i64 5394739}
!14 = !{i64 2154220479}
!15 = !{i64 2154220321}
!16 = !{i64 2154215544}
!17 = !{i64 2154217061}
!18 = !{i64 2154216903}
!19 = !{!"branch_weights", i32 2000, i32 1}
