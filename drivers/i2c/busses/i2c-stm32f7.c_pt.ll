; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-stm32f7.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-stm32f7.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stm32f7_i2c_spec = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type {}
%struct.stm32f7_i2c_setup = type { i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.stm32f7_i2c_dev = type { %struct.i2c_adapter, ptr, ptr, %struct.completion, ptr, i32, ptr, i32, i32, %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_setup, %struct.stm32f7_i2c_timings, [3 x ptr], ptr, %struct.stm32f7_i2c_regs, i32, i8, ptr, i8, ptr, i32, i32, i32, i8, i8, ptr, i8, i32, i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.stm32f7_i2c_msg = type { i16, i32, ptr, i32, i8, i8, i32, i8, [3 x i8], [35 x i8] }
%struct.stm32f7_i2c_timings = type { %struct.list_head, i8, i8, i8, i8, i8 }
%struct.stm32f7_i2c_regs = type { i32, i32, i32, i32, i32 }
%struct.stm32f7_i2c_alert = type { %struct.i2c_smbus_alert_setup, ptr }
%struct.i2c_smbus_alert_setup = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.stm32_i2c_dma = type { ptr, ptr, ptr, i32, i32, i32, i32, %struct.completion }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_i2c_stm32f7_drv__252_2485_stm32f7_i2c_driver_init6 = internal global ptr @stm32f7_i2c_driver_init, section ".initcall6.init", align 4
@stm32f7_i2c_driver = internal global %struct.platform_driver { ptr @stm32f7_i2c_probe, ptr @stm32f7_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32f7_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32f7_i2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_stm32f7_i2c_driver_exit = internal global ptr @stm32f7_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author253 = internal constant [76 x i8] c"i2c_stm32f7_drv.author=M'boumba Cedric Madianga <cedric.madianga@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [66 x i8] c"i2c_stm32f7_drv.description=STMicroelectronics STM32F7 I2C driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [56 x i8] c"i2c_stm32f7_drv.file=drivers/i2c/busses/i2c-stm32f7-drv\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [31 x i8] c"i2c_stm32f7_drv.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"stm32f7-i2c\00", align 1
@stm32f7_i2c_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f7-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32f7_setup }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp15-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp15_setup }, %struct.of_device_id zeroinitializer], align 4
@stm32f7_i2c_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32f7_i2c_suspend, ptr @stm32f7_i2c_resume, ptr @stm32f7_i2c_suspend, ptr @stm32f7_i2c_resume, ptr @stm32f7_i2c_suspend, ptr @stm32f7_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32f7_i2c_runtime_suspend, ptr @stm32f7_i2c_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to get controller clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to prepare_enable clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Error: Missing reset ctrl\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to request irq event %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to request irq error %i\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Can't get device data\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"STM32F7 I2C(%pa)\00", align 1
@stm32f7_i2c_algo = internal constant %struct.i2c_algorithm { ptr @stm32f7_i2c_xfer, ptr null, ptr @stm32f7_i2c_smbus_xfer, ptr null, ptr @stm32f7_i2c_func, ptr @stm32f7_i2c_reg_slave, ptr @stm32f7_i2c_unreg_slave }, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"Failed to set wake up irq\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"smbus\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"failed to enable SMBus Host-Notify protocol (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"smbus-alert\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"failed to enable SMBus alert protocol (%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"STM32F7 I2C-%d bus adapter\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"can't use DMA\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"<%s>: Bus error accessing addr 0x%x\0A\00", align 1
@__func__.stm32f7_i2c_isr_error = private unnamed_addr constant [22 x i8] c"stm32f7_i2c_isr_error\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"<%s>: PEC error in reception accessing addr 0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"Invalid bus speed (%i>%i)\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"clock rate is 0\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"i2c-digital-filter\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"failed to compute I2C timings.\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"downgrade I2C Speed Freq to (%i)\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"Impossible to compute I2C timings.\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"i2c-analog-filter\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"speed out of bound {%d}\0A\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"timings out of bound Rise{%d>%d}/Fall{%d>%d}\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"DNF out of bound %d/%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"no Prescaler solution\0A\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"no solution at all\0A\00", align 1
@stm32f7_i2c_specs = internal global [3 x %struct.stm32f7_i2c_spec] [%struct.stm32f7_i2c_spec { i32 100000, i32 300, i32 1000, i32 0, i32 3450, i32 250, i32 4700, i32 4000 }, %struct.stm32f7_i2c_spec { i32 400000, i32 300, i32 300, i32 0, i32 900, i32 100, i32 1300, i32 600 }, %struct.stm32f7_i2c_spec { i32 1000000, i32 100, i32 120, i32 0, i32 450, i32 50, i32 500, i32 260 }], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.30 = private unnamed_addr constant [14 x i8] c"st,syscfg-fmp\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Unsupported smbus transaction\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"Invalid block write size %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Unsupported smbus protocol %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"Unsupported smbus protocol for PEC\0A\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"Bad PEC 0x%02x vs. 0x%02x\0A\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"SMBus PEC not supported in slave mode\0A\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"Too much slave registered\0A\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"I2C slave id not supported\0A\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"Slave 0x%x could not be registered\0A\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"drivers/i2c/busses/i2c-stm32f7.c\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"Slave 0x%x not registered\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@stm32f7_setup = internal constant %struct.stm32f7_i2c_setup { i32 0, i32 0, i32 25, i32 10, i32 0 }, align 4
@stm32mp15_setup = internal constant %struct.stm32f7_i2c_setup { i32 0, i32 0, i32 25, i32 10, i32 64 }, align 4
@.str.43 = private unnamed_addr constant [32 x i8] c"failed to prepare_enable clock\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_stm32f7_i2c_driver_exit, ptr @__initcall__kmod_i2c_stm32f7_drv__252_2485_stm32f7_i2c_driver_init6, ptr @stm32f7_i2c_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32f7_i2c_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @stm32f7_i2c_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32f7_i2c_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca %struct.i2c_timings, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 896, i32 noundef 3520) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %623, label %8

8:                                                ; preds = %1
  %9 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #11
  %10 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 2
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = ptrtoint ptr %9 to i32
  br label %623

14:                                               ; preds = %8
  %15 = load ptr, ptr %4, align 4
  %16 = load i32, ptr %15, align 4
  %17 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = icmp eq i32 %17, 0
  %21 = select i1 %20, i32 -2, i32 %17
  br label %623

22:                                               ; preds = %14
  %23 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #11
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = icmp eq i32 %23, 0
  %27 = select i1 %26, i32 -2, i32 %23
  br label %623

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %30 = load ptr, ptr %29, align 8
  %31 = call ptr @of_find_property(ptr noundef %30, ptr noundef nonnull @.str.1, ptr noundef null) #11
  %32 = icmp ne ptr %31, null
  %33 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 23
  %34 = zext i1 %32 to i8
  store i8 %34, ptr %33, align 4
  %35 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef null) #11
  %36 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 4
  store ptr %35, ptr %36, align 8
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = ptrtoint ptr %35 to i32
  %40 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %39, ptr noundef nonnull @.str.2) #11
  br label %623

41:                                               ; preds = %28
  %42 = call i32 @clk_prepare(ptr noundef %35) #11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = call i32 @clk_enable(ptr noundef %35) #11
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  call void @clk_unprepare(ptr noundef %35) #11
  br label %48

48:                                               ; preds = %47, %41
  %49 = phi i32 [ %45, %47 ], [ %42, %41 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3) #12
  br label %623

50:                                               ; preds = %44
  %51 = call ptr @__devm_reset_control_get(ptr noundef %5, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = ptrtoint ptr %51 to i32
  %55 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %54, ptr noundef nonnull @.str.4) #11
  br label %620

56:                                               ; preds = %50
  %57 = call i32 @reset_control_assert(ptr noundef %51) #11
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %58(i32 noundef 429496) #11
  %59 = call i32 @reset_control_deassert(ptr noundef %51) #11
  %60 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 1
  store ptr %5, ptr %60, align 8
  %61 = load ptr, ptr %0, align 8
  %62 = call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %17, ptr noundef nonnull @stm32f7_i2c_isr_event, ptr noundef nonnull @stm32f7_i2c_isr_event_thread, i32 noundef 8192, ptr noundef %61, ptr noundef nonnull %6) #11
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %17) #12
  br label %620

65:                                               ; preds = %56
  %66 = load ptr, ptr %0, align 8
  %67 = call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %23, ptr noundef nonnull @stm32f7_i2c_isr_error, ptr noundef null, i32 noundef 0, ptr noundef %66, ptr noundef nonnull %6) #11
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %23) #12
  br label %620

70:                                               ; preds = %65
  %71 = call ptr @of_device_get_match_data(ptr noundef %5) #11
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7) #12
  br label %620

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %75, ptr noundef nonnull align 4 dereferenceable(20) %71, i32 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  %76 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %76, i8 0, i32 20, i1 false) #11, !annotation !8
  store i32 100000, ptr %3, align 4
  %77 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 10, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.i2c_timings, ptr %3, i32 0, i32 1
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 10, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.i2c_timings, ptr %3, i32 0, i32 2
  store i32 %81, ptr %82, align 4
  %83 = load ptr, ptr %60, align 8
  call void @i2c_parse_fw_timings(ptr noundef %83, ptr noundef nonnull %3, i1 noundef zeroext false) #11
  %84 = load i32, ptr %3, align 4
  %85 = icmp ugt i32 %84, 1000000
  br i1 %85, label %86, label %88

86:                                               ; preds = %74
  %87 = load ptr, ptr %60, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.18, i32 noundef %84, i32 noundef 1000000) #12
  br label %498

88:                                               ; preds = %74
  store i32 %84, ptr %75, align 4
  %89 = load i32, ptr %79, align 4
  store i32 %89, ptr %77, align 4
  %90 = load i32, ptr %82, align 4
  store i32 %90, ptr %80, align 4
  %91 = getelementptr inbounds %struct.i2c_timings, ptr %3, i32 0, i32 6
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 27
  store i32 %92, ptr %93, align 8
  %94 = load ptr, ptr %36, align 8
  %95 = call i32 @clk_get_rate(ptr noundef %94) #11
  %96 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 10, i32 1
  store i32 %95, ptr %96, align 4
  %97 = icmp eq i32 %95, 0
  %98 = load ptr, ptr %60, align 8
  br i1 %97, label %99, label %100

99:                                               ; preds = %88
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.19) #12
  br label %498

100:                                              ; preds = %88
  %101 = getelementptr inbounds %struct.device, ptr %98, i32 0, i32 25
  %102 = load ptr, ptr %101, align 8
  %103 = call ptr @of_find_property(ptr noundef %102, ptr noundef nonnull @.str.20, ptr noundef null) #11
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 0, ptr %93, align 8
  br label %106

106:                                              ; preds = %105, %100
  %107 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 28
  %108 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 26
  %109 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %110 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 11, i32 1
  %111 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 11, i32 2
  %112 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 11, i32 3
  %113 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 11, i32 5
  %114 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 11, i32 4
  br label %115

115:                                              ; preds = %480, %106
  %116 = load i32, ptr %96, align 4
  %117 = lshr i32 %116, 1
  %118 = add nuw i32 %117, 1000000000
  %119 = udiv i32 %118, %116
  %120 = load i32, ptr %75, align 4
  %121 = lshr i32 %120, 1
  %122 = add nuw i32 %121, 1000000000
  %123 = udiv i32 %122, %120
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %124 = load i32, ptr @stm32f7_i2c_specs, align 4
  %125 = icmp ult i32 %124, %120
  br i1 %125, label %126, label %132

126:                                              ; preds = %115
  %127 = load i32, ptr getelementptr inbounds ([3 x %struct.stm32f7_i2c_spec], ptr @stm32f7_i2c_specs, i32 0, i32 1), align 4
  %128 = icmp ult i32 %127, %120
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, ptr getelementptr inbounds ([3 x %struct.stm32f7_i2c_spec], ptr @stm32f7_i2c_specs, i32 0, i32 2), align 4
  %131 = icmp ult i32 %130, %120
  br i1 %131, label %135, label %132

132:                                              ; preds = %129, %126, %115
  %133 = phi i1 [ icmp eq (ptr getelementptr inbounds ([3 x %struct.stm32f7_i2c_spec], ptr @stm32f7_i2c_specs, i32 0, i32 2), ptr inttoptr (i32 -22 to ptr)), %129 ], [ icmp eq (ptr inttoptr (i32 -22 to ptr), ptr @stm32f7_i2c_specs), %115 ], [ icmp eq (ptr getelementptr inbounds ([3 x %struct.stm32f7_i2c_spec], ptr @stm32f7_i2c_specs, i32 0, i32 1), ptr inttoptr (i32 -22 to ptr)), %126 ]
  %134 = phi ptr [ getelementptr inbounds ([3 x %struct.stm32f7_i2c_spec], ptr @stm32f7_i2c_specs, i32 0, i32 2), %129 ], [ @stm32f7_i2c_specs, %115 ], [ getelementptr inbounds ([3 x %struct.stm32f7_i2c_spec], ptr @stm32f7_i2c_specs, i32 0, i32 1), %126 ]
  br i1 %133, label %135, label %137

135:                                              ; preds = %132, %129
  %136 = load ptr, ptr %60, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.25, i32 noundef %120) #12
  br label %473

137:                                              ; preds = %132
  %138 = load i32, ptr %77, align 4
  %139 = getelementptr inbounds %struct.stm32f7_i2c_spec, ptr %134, i32 0, i32 2
  %140 = load i32, ptr %139, align 4
  %141 = icmp ugt i32 %138, %140
  %142 = load i32, ptr %80, align 4
  %143 = getelementptr inbounds %struct.stm32f7_i2c_spec, ptr %134, i32 0, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = icmp ugt i32 %142, %144
  %146 = select i1 %141, i1 true, i1 %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %137
  %148 = load ptr, ptr %60, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.26, i32 noundef %138, i32 noundef %140, i32 noundef %142, i32 noundef %144) #12
  br label %473

149:                                              ; preds = %137
  %150 = load i32, ptr %93, align 8
  %151 = lshr i32 %119, 1
  %152 = add i32 %150, %151
  %153 = udiv i32 %152, %119
  store i32 %153, ptr %107, align 4
  %154 = icmp ugt i32 %153, 15
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load ptr, ptr %60, align 8
  %157 = mul i32 %153, %119
  %158 = mul i32 %119, 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.27, i32 noundef %157, i32 noundef %158) #12
  br label %473

159:                                              ; preds = %149
  %160 = load i8, ptr %108, align 4, !range !9
  %161 = icmp eq i8 %160, 0
  %162 = select i1 %161, i32 0, i32 -50
  %163 = select i1 %161, i32 0, i32 50
  %164 = select i1 %161, i32 0, i32 -260
  %165 = mul i32 %153, %119
  %166 = getelementptr inbounds %struct.stm32f7_i2c_spec, ptr %134, i32 0, i32 3
  %167 = load i32, ptr %166, align 4
  %168 = sub nuw nsw i32 -3, %153
  %169 = mul i32 %168, %119
  %170 = add i32 %169, %142
  %171 = add i32 %170, %167
  %172 = add i32 %171, %162
  %173 = getelementptr inbounds %struct.stm32f7_i2c_spec, ptr %134, i32 0, i32 4
  %174 = load i32, ptr %173, align 4
  %175 = sub nuw nsw i32 -4, %153
  %176 = mul i32 %175, %119
  %177 = sub i32 %176, %138
  %178 = add i32 %177, %164
  %179 = add i32 %178, %174
  %180 = getelementptr inbounds %struct.stm32f7_i2c_spec, ptr %134, i32 0, i32 5
  %181 = load i32, ptr %180, align 4
  %182 = add i32 %181, %138
  %183 = call i32 @llvm.smax.i32(i32 %172, i32 0) #11
  %184 = call i32 @llvm.smax.i32(i32 %179, i32 0) #11
  store volatile ptr %2, ptr %2, align 8
  store ptr %2, ptr %109, align 4
  %185 = icmp ult i32 %119, %183
  %186 = icmp ugt i32 %119, %184
  %187 = select i1 %185, i1 true, i1 %186
  br label %188

188:                                              ; preds = %359, %159
  %189 = phi i32 [ 0, %159 ], [ %192, %359 ]
  %190 = phi i32 [ 16, %159 ], [ %360, %359 ]
  %191 = phi i16 [ 0, %159 ], [ %361, %359 ]
  %192 = add nuw nsw i32 %189, 1
  %193 = mul i32 %192, %119
  %194 = icmp eq i32 %190, %189
  %195 = icmp ne i32 %190, %189
  %196 = select i1 %187, i1 true, i1 %194
  %197 = add nuw nsw i32 %189, 2
  %198 = mul i32 %197, %119
  %199 = icmp ult i32 %198, %183
  %200 = icmp ugt i32 %198, %184
  %201 = select i1 %199, i1 true, i1 %200
  %202 = select i1 %201, i1 true, i1 %194
  %203 = shl nuw nsw i32 %192, 1
  %204 = or i32 %203, 1
  %205 = mul i32 %204, %119
  %206 = icmp ult i32 %205, %183
  %207 = icmp ugt i32 %205, %184
  %208 = select i1 %206, i1 true, i1 %207
  %209 = select i1 %208, i1 true, i1 %194
  %210 = mul nuw nsw i32 %192, 3
  %211 = add nuw nsw i32 %210, 1
  %212 = mul i32 %211, %119
  %213 = icmp ult i32 %212, %183
  %214 = icmp ugt i32 %212, %184
  %215 = select i1 %213, i1 true, i1 %214
  %216 = select i1 %215, i1 true, i1 %194
  %217 = shl nuw nsw i32 %192, 2
  %218 = or i32 %217, 1
  %219 = mul i32 %218, %119
  %220 = icmp ult i32 %219, %183
  %221 = icmp ugt i32 %219, %184
  %222 = select i1 %220, i1 true, i1 %221
  %223 = select i1 %222, i1 true, i1 %194
  %224 = mul nuw nsw i32 %192, 5
  %225 = add nuw nsw i32 %224, 1
  %226 = mul i32 %225, %119
  %227 = icmp ult i32 %226, %183
  %228 = icmp ugt i32 %226, %184
  %229 = select i1 %227, i1 true, i1 %228
  %230 = select i1 %229, i1 true, i1 %194
  %231 = mul nuw nsw i32 %192, 6
  %232 = or i32 %231, 1
  %233 = mul i32 %232, %119
  %234 = icmp ult i32 %233, %183
  %235 = icmp ugt i32 %233, %184
  %236 = select i1 %234, i1 true, i1 %235
  %237 = select i1 %236, i1 true, i1 %194
  %238 = mul nuw nsw i32 %192, 7
  %239 = add nuw nsw i32 %238, 1
  %240 = mul i32 %239, %119
  %241 = icmp ult i32 %240, %183
  %242 = icmp ugt i32 %240, %184
  %243 = select i1 %241, i1 true, i1 %242
  %244 = select i1 %243, i1 true, i1 %194
  %245 = shl nuw nsw i32 %192, 3
  %246 = or i32 %245, 1
  %247 = mul i32 %246, %119
  %248 = icmp ult i32 %247, %183
  %249 = icmp ugt i32 %247, %184
  %250 = select i1 %248, i1 true, i1 %249
  %251 = select i1 %250, i1 true, i1 %194
  %252 = mul nuw nsw i32 %192, 9
  %253 = add nuw nsw i32 %252, 1
  %254 = mul i32 %253, %119
  %255 = icmp ult i32 %254, %183
  %256 = icmp ugt i32 %254, %184
  %257 = select i1 %255, i1 true, i1 %256
  %258 = select i1 %257, i1 true, i1 %194
  %259 = mul nuw nsw i32 %192, 10
  %260 = or i32 %259, 1
  %261 = mul i32 %260, %119
  %262 = icmp ult i32 %261, %183
  %263 = icmp ugt i32 %261, %184
  %264 = select i1 %262, i1 true, i1 %263
  %265 = select i1 %264, i1 true, i1 %194
  %266 = mul nuw nsw i32 %192, 11
  %267 = add nuw nsw i32 %266, 1
  %268 = mul i32 %267, %119
  %269 = icmp ult i32 %268, %183
  %270 = icmp ugt i32 %268, %184
  %271 = select i1 %269, i1 true, i1 %270
  %272 = select i1 %271, i1 true, i1 %194
  %273 = mul nuw nsw i32 %192, 12
  %274 = or i32 %273, 1
  %275 = mul i32 %274, %119
  %276 = icmp ult i32 %275, %183
  %277 = icmp ugt i32 %275, %184
  %278 = select i1 %276, i1 true, i1 %277
  %279 = select i1 %278, i1 true, i1 %194
  %280 = mul nuw nsw i32 %192, 13
  %281 = add nuw nsw i32 %280, 1
  %282 = mul i32 %281, %119
  %283 = icmp ult i32 %282, %183
  %284 = icmp ugt i32 %282, %184
  %285 = select i1 %283, i1 true, i1 %284
  %286 = select i1 %285, i1 true, i1 %194
  %287 = mul nuw nsw i32 %192, 14
  %288 = or i32 %287, 1
  %289 = mul i32 %288, %119
  %290 = icmp ult i32 %289, %183
  %291 = icmp ugt i32 %289, %184
  %292 = select i1 %290, i1 true, i1 %291
  %293 = select i1 %292, i1 true, i1 %194
  %294 = mul nuw nsw i32 %192, 15
  %295 = add nuw nsw i32 %294, 1
  %296 = mul i32 %295, %119
  %297 = icmp ult i32 %296, %183
  %298 = icmp ugt i32 %296, %184
  %299 = select i1 %297, i1 true, i1 %298
  %300 = select i1 %299, i1 true, i1 %194
  %301 = select i1 %196, i1 %202, i1 false
  %302 = select i1 %301, i1 %209, i1 false
  %303 = select i1 %302, i1 %216, i1 false
  %304 = select i1 %303, i1 %223, i1 false
  %305 = select i1 %304, i1 %230, i1 false
  %306 = select i1 %305, i1 %237, i1 false
  %307 = select i1 %306, i1 %244, i1 false
  %308 = select i1 %307, i1 %251, i1 false
  %309 = select i1 %308, i1 %258, i1 false
  %310 = select i1 %309, i1 %265, i1 false
  %311 = select i1 %310, i1 %272, i1 false
  %312 = select i1 %311, i1 %279, i1 false
  %313 = select i1 %312, i1 %286, i1 false
  %314 = select i1 %313, i1 %293, i1 false
  %315 = select i1 %314, i1 %300, i1 false
  br label %316

316:                                              ; preds = %357, %188
  %317 = phi i16 [ 0, %188 ], [ %358, %357 ]
  %318 = zext i16 %317 to i32
  %319 = add nuw nsw i32 %318, 1
  %320 = mul i32 %193, %319
  %321 = icmp ult i32 %320, %182
  br i1 %321, label %354, label %322

322:                                              ; preds = %316
  br i1 %315, label %350, label %323

323:                                              ; preds = %322
  %324 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %325 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %324, i32 noundef 3264, i32 noundef 16) #13
  %326 = icmp eq ptr %325, null
  br i1 %326, label %461, label %327

327:                                              ; preds = %323
  %328 = zext i1 %196 to i8
  %329 = select i1 %301, i8 2, i8 %328
  %330 = select i1 %302, i8 3, i8 %329
  %331 = select i1 %303, i8 4, i8 %330
  %332 = select i1 %304, i8 5, i8 %331
  %333 = select i1 %305, i8 6, i8 %332
  %334 = select i1 %306, i8 7, i8 %333
  %335 = select i1 %307, i8 8, i8 %334
  %336 = select i1 %308, i8 9, i8 %335
  %337 = select i1 %309, i8 10, i8 %336
  %338 = select i1 %310, i8 11, i8 %337
  %339 = select i1 %311, i8 12, i8 %338
  %340 = select i1 %312, i8 13, i8 %339
  %341 = select i1 %313, i8 14, i8 %340
  %342 = select i1 %314, i8 15, i8 %341
  %343 = trunc i16 %191 to i8
  %344 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %325, i32 0, i32 1
  store i8 %343, ptr %344, align 8
  %345 = trunc i16 %317 to i8
  %346 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %325, i32 0, i32 2
  store i8 %345, ptr %346, align 1
  %347 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %325, i32 0, i32 3
  store i8 %342, ptr %347, align 2
  %348 = load ptr, ptr %109, align 4
  store ptr %325, ptr %109, align 4
  store ptr %2, ptr %325, align 8
  %349 = getelementptr inbounds %struct.list_head, ptr %325, i32 0, i32 1
  store ptr %348, ptr %349, align 4
  store volatile ptr %325, ptr %348, align 4
  br label %359

350:                                              ; preds = %322
  %351 = add i16 %317, 1
  %352 = icmp ult i16 %351, 16
  %353 = select i1 %195, i1 %352, i1 false
  br i1 %353, label %357, label %359

354:                                              ; preds = %316
  %355 = add i16 %317, 1
  %356 = icmp ult i16 %355, 16
  br i1 %356, label %357, label %359

357:                                              ; preds = %354, %350
  %358 = phi i16 [ %355, %354 ], [ %351, %350 ]
  br label %316

359:                                              ; preds = %354, %350, %327
  %360 = phi i32 [ %189, %327 ], [ %190, %350 ], [ %190, %354 ]
  %361 = add nuw nsw i16 %191, 1
  %362 = icmp eq i32 %192, 16
  br i1 %362, label %363, label %188

363:                                              ; preds = %359
  %364 = load volatile ptr, ptr %2, align 8
  %365 = icmp eq ptr %364, %2
  br i1 %365, label %366, label %368

366:                                              ; preds = %363
  %367 = load ptr, ptr %60, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %367, ptr noundef nonnull @.str.28) #12
  br label %461

368:                                              ; preds = %363
  %369 = add i32 %163, %165
  %370 = shl i32 %119, 1
  %371 = add i32 %369, %370
  %372 = load i32, ptr %75, align 4
  %373 = shl i32 %372, 3
  %374 = udiv i32 %373, 10
  %375 = udiv i32 1000000000, %374
  %376 = udiv i32 1000000000, %372
  %377 = getelementptr inbounds %struct.stm32f7_i2c_spec, ptr %134, i32 0, i32 6
  %378 = getelementptr inbounds %struct.stm32f7_i2c_spec, ptr %134, i32 0, i32 7
  br label %382

379:                                              ; preds = %441
  %380 = load ptr, ptr %383, align 4
  %381 = icmp eq ptr %380, %2
  br i1 %381, label %446, label %382

382:                                              ; preds = %379, %368
  %383 = phi ptr [ %364, %368 ], [ %380, %379 ]
  %384 = phi i32 [ %123, %368 ], [ %443, %379 ]
  %385 = phi ptr [ null, %368 ], [ %442, %379 ]
  %386 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %383, i32 0, i32 1
  %387 = load i8, ptr %386, align 4
  %388 = zext i8 %387 to i32
  %389 = add nuw nsw i32 %388, 1
  %390 = mul i32 %389, %119
  %391 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %383, i32 0, i32 5
  %392 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %383, i32 0, i32 4
  br label %393

393:                                              ; preds = %441, %382
  %394 = phi i32 [ 0, %382 ], [ %398, %441 ]
  %395 = phi i32 [ %384, %382 ], [ %443, %441 ]
  %396 = phi i16 [ 0, %382 ], [ %444, %441 ]
  %397 = phi ptr [ %385, %382 ], [ %442, %441 ]
  %398 = add nuw nsw i32 %394, 1
  %399 = mul i32 %398, %390
  %400 = add i32 %399, %371
  %401 = load i32, ptr %377, align 4
  %402 = icmp uge i32 %400, %401
  %403 = sub i32 %400, %369
  %404 = lshr i32 %403, 2
  %405 = icmp ult i32 %119, %404
  %406 = select i1 %402, i1 %405, i1 false
  br i1 %406, label %407, label %441

407:                                              ; preds = %393
  %408 = trunc i16 %396 to i8
  br label %409

409:                                              ; preds = %436, %407
  %410 = phi i32 [ 0, %407 ], [ %414, %436 ]
  %411 = phi i32 [ %395, %407 ], [ %438, %436 ]
  %412 = phi i16 [ 0, %407 ], [ %439, %436 ]
  %413 = phi ptr [ %397, %407 ], [ %437, %436 ]
  %414 = add nuw nsw i32 %410, 1
  %415 = mul i32 %414, %390
  %416 = add i32 %415, %371
  %417 = add i32 %416, %400
  %418 = load i32, ptr %77, align 4
  %419 = add i32 %417, %418
  %420 = load i32, ptr %80, align 4
  %421 = add i32 %419, %420
  %422 = icmp ult i32 %421, %376
  %423 = icmp ugt i32 %421, %375
  %424 = select i1 %422, i1 true, i1 %423
  br i1 %424, label %436, label %425

425:                                              ; preds = %409
  %426 = load i32, ptr %378, align 4
  %427 = icmp uge i32 %416, %426
  %428 = icmp ult i32 %119, %416
  %429 = select i1 %427, i1 %428, i1 false
  br i1 %429, label %430, label %436

430:                                              ; preds = %425
  %431 = sub i32 %421, %123
  %432 = call i32 @llvm.abs.i32(i32 %431, i1 false) #11
  %433 = icmp ult i32 %432, %411
  br i1 %433, label %434, label %436

434:                                              ; preds = %430
  store i8 %408, ptr %391, align 4
  %435 = trunc i16 %412 to i8
  store i8 %435, ptr %392, align 1
  br label %436

436:                                              ; preds = %434, %430, %425, %409
  %437 = phi ptr [ %413, %425 ], [ %413, %409 ], [ %383, %434 ], [ %413, %430 ]
  %438 = phi i32 [ %411, %425 ], [ %411, %409 ], [ %432, %434 ], [ %411, %430 ]
  %439 = add nuw nsw i16 %412, 1
  %440 = icmp eq i32 %414, 256
  br i1 %440, label %441, label %409

441:                                              ; preds = %436, %393
  %442 = phi ptr [ %397, %393 ], [ %437, %436 ]
  %443 = phi i32 [ %395, %393 ], [ %438, %436 ]
  %444 = add nuw nsw i16 %396, 1
  %445 = icmp eq i32 %398, 256
  br i1 %445, label %379, label %393

446:                                              ; preds = %379
  %447 = icmp eq ptr %442, null
  br i1 %447, label %448, label %450

448:                                              ; preds = %446
  %449 = load ptr, ptr %60, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %449, ptr noundef nonnull @.str.29) #12
  br label %461

450:                                              ; preds = %446
  %451 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %442, i32 0, i32 1
  %452 = load i8, ptr %451, align 4
  store i8 %452, ptr %110, align 4
  %453 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %442, i32 0, i32 2
  %454 = load i8, ptr %453, align 1
  store i8 %454, ptr %111, align 1
  %455 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %442, i32 0, i32 3
  %456 = load i8, ptr %455, align 2
  store i8 %456, ptr %112, align 2
  %457 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %442, i32 0, i32 5
  %458 = load i8, ptr %457, align 4
  store i8 %458, ptr %113, align 4
  %459 = getelementptr inbounds %struct.stm32f7_i2c_timings, ptr %442, i32 0, i32 4
  %460 = load i8, ptr %459, align 1
  store i8 %460, ptr %114, align 1
  br label %461

461:                                              ; preds = %450, %448, %366, %323
  %462 = phi i1 [ true, %450 ], [ false, %448 ], [ false, %366 ], [ false, %323 ]
  %463 = phi i32 [ 0, %450 ], [ -1, %448 ], [ -1, %366 ], [ -12, %323 ]
  %464 = load ptr, ptr %2, align 8
  %465 = icmp eq ptr %464, %2
  br i1 %465, label %474, label %466

466:                                              ; preds = %466, %461
  %467 = phi ptr [ %468, %466 ], [ %464, %461 ]
  %468 = load ptr, ptr %467, align 4
  %469 = getelementptr inbounds %struct.list_head, ptr %467, i32 0, i32 1
  %470 = load ptr, ptr %469, align 4
  %471 = getelementptr inbounds %struct.list_head, ptr %468, i32 0, i32 1
  store ptr %470, ptr %471, align 4
  store volatile ptr %468, ptr %470, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %467, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %469, align 4
  call void @kfree(ptr noundef %467) #11
  %472 = icmp eq ptr %468, %2
  br i1 %472, label %474, label %466

473:                                              ; preds = %155, %147, %135
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %475

474:                                              ; preds = %466, %461
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br i1 %462, label %489, label %475

475:                                              ; preds = %474, %473
  %476 = phi i32 [ -22, %473 ], [ %463, %474 ]
  %477 = load ptr, ptr %60, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %477, ptr noundef nonnull @.str.21) #12
  %478 = load i32, ptr %75, align 4
  %479 = icmp ult i32 %478, 100001
  br i1 %479, label %499, label %480

480:                                              ; preds = %475
  %481 = load i32, ptr getelementptr inbounds ([3 x %struct.stm32f7_i2c_spec], ptr @stm32f7_i2c_specs, i32 0, i32 2), align 4
  %482 = icmp ult i32 %481, %478
  %483 = load i32, ptr getelementptr inbounds ([3 x %struct.stm32f7_i2c_spec], ptr @stm32f7_i2c_specs, i32 0, i32 1), align 4
  %484 = icmp ult i32 %483, %478
  %485 = load i32, ptr @stm32f7_i2c_specs, align 4
  %486 = select i1 %484, i32 %483, i32 %485
  %487 = select i1 %482, i32 %481, i32 %486
  store i32 %487, ptr %75, align 4
  %488 = load ptr, ptr %60, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %488, ptr noundef nonnull @.str.22, i32 noundef %487) #12
  br label %115

489:                                              ; preds = %474
  %490 = load ptr, ptr %60, align 8
  %491 = getelementptr inbounds %struct.device, ptr %490, i32 0, i32 25
  %492 = load ptr, ptr %491, align 8
  %493 = call ptr @of_find_property(ptr noundef %492, ptr noundef nonnull @.str.24, ptr noundef null) #11
  %494 = icmp ne ptr %493, null
  %495 = zext i1 %494 to i8
  store i8 %495, ptr %108, align 4
  %496 = load i32, ptr %75, align 4
  %497 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 5
  store i32 %496, ptr %497, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  br label %505

498:                                              ; preds = %99, %86
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  br label %620

499:                                              ; preds = %475
  %500 = load ptr, ptr %60, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %500, ptr noundef nonnull @.str.23) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  %501 = icmp eq i32 %476, 0
  br i1 %501, label %502, label %620

502:                                              ; preds = %499
  %503 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 5
  %504 = load i32, ptr %503, align 4
  br label %505

505:                                              ; preds = %502, %489
  %506 = phi i32 [ %504, %502 ], [ %496, %489 ]
  %507 = icmp ugt i32 %506, 400000
  br i1 %507, label %508, label %514

508:                                              ; preds = %505
  %509 = call fastcc i32 @stm32f7_i2c_setup_fm_plus_bits(ptr noundef %0, ptr noundef nonnull %6)
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %620

511:                                              ; preds = %508
  %512 = call fastcc i32 @stm32f7_i2c_write_fm_plus_bits(ptr noundef nonnull %6, i1 noundef zeroext true)
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %620

514:                                              ; preds = %511, %505
  %515 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 9, i32 8
  store ptr %6, ptr %515, align 8
  %516 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 12
  %517 = load ptr, ptr %4, align 4
  %518 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %516, i32 noundef 48, ptr noundef nonnull @.str.8, ptr noundef %517)
  store ptr null, ptr %6, align 8
  %519 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 7
  store i32 200, ptr %519, align 4
  %520 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 8
  store i32 3, ptr %520, align 8
  %521 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 2
  store ptr @stm32f7_i2c_algo, ptr %521, align 8
  %522 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 9, i32 1
  store ptr %5, ptr %522, align 4
  %523 = load ptr, ptr %29, align 8
  %524 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 9, i32 25
  store ptr %523, ptr %524, align 8
  %525 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 3
  store i32 0, ptr %525, align 4
  %526 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 3, i32 1
  call void @__init_swait_queue_head(ptr noundef %526, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_completion.__key) #11
  %527 = load ptr, ptr %60, align 8
  %528 = call ptr @stm32_i2c_dma_request(ptr noundef %527, i32 noundef %16, i32 noundef 40, i32 noundef 36) #11
  %529 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 17
  store ptr %528, ptr %529, align 4
  %530 = icmp ugt ptr %528, inttoptr (i32 -4096 to ptr)
  br i1 %530, label %531, label %535

531:                                              ; preds = %514
  %532 = ptrtoint ptr %528 to i32
  %533 = icmp eq ptr %528, inttoptr (i32 -19 to ptr)
  br i1 %533, label %534, label %617

534:                                              ; preds = %531
  store ptr null, ptr %529, align 4
  br label %535

535:                                              ; preds = %534, %514
  %536 = load i8, ptr %33, align 4, !range !9
  %537 = icmp eq i8 %536, 0
  br i1 %537, label %545, label %538

538:                                              ; preds = %535
  %539 = load ptr, ptr %60, align 8
  call void @device_set_wakeup_capable(ptr noundef %539, i1 noundef zeroext true) #11
  %540 = load ptr, ptr %60, align 8
  %541 = call i32 @dev_pm_set_wake_irq(ptr noundef %540, i32 noundef %17) #11
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %545, label %543

543:                                              ; preds = %538
  %544 = load ptr, ptr %60, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %544, ptr noundef nonnull @.str.9) #12
  br label %606

545:                                              ; preds = %538, %535
  %546 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %546, align 8
  %547 = load ptr, ptr %60, align 8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %547, i32 noundef 1) #11
  %548 = load ptr, ptr %60, align 8
  call void @__pm_runtime_use_autosuspend(ptr noundef %548, i1 noundef zeroext true) #11
  %549 = load ptr, ptr %60, align 8
  %550 = call i32 @__pm_runtime_set_status(ptr noundef %549, i32 noundef 0) #11
  %551 = load ptr, ptr %60, align 8
  call void @pm_runtime_enable(ptr noundef %551) #11
  %552 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %552) #11, !srcloc !10
  %553 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %552, ptr %552, i32 1, ptr elementtype(i32) %552) #11, !srcloc !11
  call fastcc void @stm32f7_i2c_hw_config(ptr noundef nonnull %6)
  %554 = load ptr, ptr %29, align 8
  %555 = call ptr @of_find_property(ptr noundef %554, ptr noundef nonnull @.str.10, ptr noundef null) #11
  %556 = icmp ne ptr %555, null
  %557 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %6, i32 0, i32 24
  %558 = zext i1 %556 to i8
  store i8 %558, ptr %557, align 1
  %559 = call i32 @i2c_add_adapter(ptr noundef nonnull %6) #11
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %589

561:                                              ; preds = %545
  %562 = load i8, ptr %557, align 1, !range !9
  %563 = icmp eq i8 %562, 0
  br i1 %563, label %569, label %564

564:                                              ; preds = %561
  %565 = call fastcc i32 @stm32f7_i2c_enable_smbus_host(ptr noundef nonnull %6)
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %569, label %567

567:                                              ; preds = %564
  %568 = load ptr, ptr %60, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %568, ptr noundef nonnull @.str.11, i32 noundef %565) #12
  br label %587

569:                                              ; preds = %564, %561
  %570 = load ptr, ptr %29, align 8
  %571 = call ptr @of_find_property(ptr noundef %570, ptr noundef nonnull @.str.12, ptr noundef null) #11
  %572 = icmp eq ptr %571, null
  br i1 %572, label %578, label %573

573:                                              ; preds = %569
  %574 = call fastcc i32 @stm32f7_i2c_enable_smbus_alert(ptr noundef nonnull %6)
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %578, label %576

576:                                              ; preds = %573
  %577 = load ptr, ptr %60, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %577, ptr noundef nonnull @.str.13, i32 noundef %574) #12
  call fastcc void @stm32f7_i2c_disable_smbus_host(ptr noundef nonnull %6)
  br label %587

578:                                              ; preds = %573, %569
  %579 = load ptr, ptr %60, align 8
  %580 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %581 = load i32, ptr %580, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %579, ptr noundef nonnull @.str.14, i32 noundef %581) #12
  %582 = load ptr, ptr %60, align 8
  %583 = call i64 @ktime_get_mono_fast_ns() #11
  %584 = getelementptr inbounds %struct.device, ptr %582, i32 0, i32 11, i32 22
  store volatile i64 %583, ptr %584, align 8
  %585 = load ptr, ptr %60, align 8
  %586 = call i32 @__pm_runtime_suspend(ptr noundef %585, i32 noundef 13) #11
  br label %623

587:                                              ; preds = %576, %567
  %588 = phi i32 [ %565, %567 ], [ %574, %576 ]
  call void @i2c_del_adapter(ptr noundef nonnull %6) #11
  br label %589

589:                                              ; preds = %587, %545
  %590 = phi i32 [ %559, %545 ], [ %588, %587 ]
  %591 = load ptr, ptr %60, align 8
  %592 = getelementptr inbounds %struct.device, ptr %591, i32 0, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %592) #11, !srcloc !10
  %593 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %592, ptr %592, i32 0, i32 -1, ptr elementtype(i32) %592) #11, !srcloc !13
  %594 = extractvalue { i32, i32, i32 } %593, 0
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %597, label %596

596:                                              ; preds = %589
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  br label %597

597:                                              ; preds = %596, %589
  %598 = load ptr, ptr %60, align 8
  call void @__pm_runtime_disable(ptr noundef %598, i1 noundef zeroext true) #11
  %599 = load ptr, ptr %60, align 8
  %600 = call i32 @__pm_runtime_set_status(ptr noundef %599, i32 noundef 2) #11
  %601 = load ptr, ptr %60, align 8
  call void @__pm_runtime_use_autosuspend(ptr noundef %601, i1 noundef zeroext false) #11
  %602 = load i8, ptr %33, align 4, !range !9
  %603 = icmp eq i8 %602, 0
  br i1 %603, label %612, label %604

604:                                              ; preds = %597
  %605 = load ptr, ptr %60, align 8
  call void @dev_pm_clear_wake_irq(ptr noundef %605) #11
  br label %606

606:                                              ; preds = %604, %543
  %607 = phi i32 [ %590, %604 ], [ %541, %543 ]
  %608 = load i8, ptr %33, align 4
  %609 = icmp eq i8 %608, 0
  br i1 %609, label %612, label %610

610:                                              ; preds = %606
  %611 = load ptr, ptr %60, align 8
  call void @device_set_wakeup_capable(ptr noundef %611, i1 noundef zeroext false) #11
  br label %612

612:                                              ; preds = %610, %606, %597
  %613 = phi i32 [ %607, %610 ], [ %607, %606 ], [ %590, %597 ]
  %614 = load ptr, ptr %529, align 4
  %615 = icmp eq ptr %614, null
  br i1 %615, label %617, label %616

616:                                              ; preds = %612
  call void @stm32_i2c_dma_free(ptr noundef nonnull %614) #11
  store ptr null, ptr %529, align 4
  br label %617

617:                                              ; preds = %616, %612, %531
  %618 = phi i32 [ %532, %531 ], [ %613, %616 ], [ %613, %612 ]
  %619 = call fastcc i32 @stm32f7_i2c_write_fm_plus_bits(ptr noundef nonnull %6, i1 noundef zeroext false)
  br label %620

620:                                              ; preds = %617, %511, %508, %499, %498, %73, %69, %64, %53
  %621 = phi i32 [ %55, %53 ], [ %62, %64 ], [ %67, %69 ], [ %476, %499 ], [ %509, %508 ], [ %512, %511 ], [ %618, %617 ], [ -19, %73 ], [ -22, %498 ]
  %622 = load ptr, ptr %36, align 8
  call void @clk_disable(ptr noundef %622) #11
  call void @clk_unprepare(ptr noundef %622) #11
  br label %623

623:                                              ; preds = %620, %578, %48, %38, %25, %19, %12, %1
  %624 = phi i32 [ %13, %12 ], [ %21, %19 ], [ %27, %25 ], [ %40, %38 ], [ %49, %48 ], [ %621, %620 ], [ 0, %578 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %624
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 29
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !15
  %11 = and i32 %10, -4194305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %11) #11, !srcloc !16
  %12 = getelementptr inbounds %struct.stm32f7_i2c_alert, ptr %5, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @i2c_unregister_device(ptr noundef %13) #11
  br label %14

14:                                               ; preds = %7, %1
  %15 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !15
  %22 = and i32 %21, -1048577
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %22) #11, !srcloc !16
  %23 = load ptr, ptr %15, align 8
  tail call void @i2c_free_slave_host_notify_device(ptr noundef %23) #11
  br label %24

24:                                               ; preds = %18, %14
  tail call void @i2c_del_adapter(ptr noundef %3) #11
  %25 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = tail call i32 @__pm_runtime_resume(ptr noundef %26, i32 noundef 4) #11
  %28 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 23
  %29 = load i8, ptr %28, align 4, !range !9
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr %25, align 8
  tail call void @dev_pm_clear_wake_irq(ptr noundef %32) #11
  %33 = load ptr, ptr %25, align 8
  %34 = tail call i32 @device_init_wakeup(ptr noundef %33, i1 noundef zeroext false) #11
  br label %35

35:                                               ; preds = %31, %24
  %36 = load ptr, ptr %25, align 8
  %37 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #11, !srcloc !10
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 0, i32 -1, ptr elementtype(i32) %37) #11, !srcloc !13
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  br label %42

42:                                               ; preds = %41, %35
  %43 = load ptr, ptr %25, align 8
  tail call void @__pm_runtime_disable(ptr noundef %43, i1 noundef zeroext true) #11
  %44 = load ptr, ptr %25, align 8
  %45 = tail call i32 @__pm_runtime_set_status(ptr noundef %44, i32 noundef 2) #11
  %46 = load ptr, ptr %25, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %46, i1 noundef zeroext false) #11
  %47 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 17
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  tail call void @stm32_i2c_dma_free(ptr noundef nonnull %48) #11
  store ptr null, ptr %47, align 4
  br label %51

51:                                               ; preds = %50, %42
  %52 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = icmp ult i32 %53, 400001
  br i1 %54, label %73, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 19
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  %59 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  %60 = or i1 %58, %59
  br i1 %60, label %73, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 20
  %63 = load i32, ptr %62, align 8
  %64 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 21
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %63, %65
  %67 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 22
  %68 = load i32, ptr %67, align 8
  br i1 %66, label %69, label %71

69:                                               ; preds = %61
  %70 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %57, i32 noundef %63, i32 noundef %68, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %73

71:                                               ; preds = %61
  %72 = tail call i32 @regmap_write(ptr noundef nonnull %57, i32 noundef %65, i32 noundef %68) #11
  br label %73

73:                                               ; preds = %71, %69, %55, %51
  %74 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 4
  %75 = load ptr, ptr %74, align 8
  tail call void @clk_disable(ptr noundef %75) #11
  tail call void @clk_unprepare(ptr noundef %75) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_isr_event(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 16
  %10 = load i8, ptr %9, align 8, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %171

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1, !annotation !8
  %13 = getelementptr i8, ptr %8, i32 24
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !15
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 13
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 8
  %21 = load ptr, ptr %20, align 8
  %22 = call i32 %21(ptr noundef %19, i32 noundef 2, ptr noundef nonnull %4) #11
  %23 = load i8, ptr %4, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr i8, ptr %8, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %24) #11, !srcloc !16
  br label %26

26:                                               ; preds = %17, %12
  %27 = and i32 %14, 132
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr i8, ptr %30, i32 36
  %32 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %31) #11, !srcloc !17
  store i8 %32, ptr %4, align 1
  %33 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 13
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 8
  %36 = load ptr, ptr %35, align 8
  %37 = call i32 %36(ptr noundef %34, i32 noundef 3, ptr noundef nonnull %4) #11
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load ptr, ptr %7, align 4
  %41 = getelementptr i8, ptr %40, i32 4
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #11, !srcloc !15
  %43 = or i32 %42, 65536
  %44 = load ptr, ptr %7, align 4
  %45 = getelementptr i8, ptr %44, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #11, !srcloc !16
  br label %50

46:                                               ; preds = %29
  %47 = getelementptr i8, ptr %8, i32 4
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #11, !srcloc !15
  %49 = or i32 %48, 32768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %49) #11, !srcloc !16
  br label %50

50:                                               ; preds = %46, %39, %26
  %51 = and i32 %14, 16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = getelementptr i8, ptr %8, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 16) #11, !srcloc !16
  br label %55

55:                                               ; preds = %53, %50
  %56 = and i32 %14, 32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %7, align 4
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #11, !srcloc !15
  %61 = and i32 %60, -119
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %61) #11, !srcloc !16
  %62 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 15
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !15
  %67 = or i32 %66, 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %67) #11, !srcloc !16
  br label %68

68:                                               ; preds = %65, %58
  %69 = getelementptr i8, ptr %8, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 32) #11, !srcloc !16
  %70 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 13
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 8
  %73 = load ptr, ptr %72, align 8
  %74 = call i32 %73(ptr noundef %71, i32 noundef 4, ptr noundef nonnull %4) #11
  store ptr null, ptr %70, align 4
  br label %75

75:                                               ; preds = %68, %55
  %76 = and i32 %14, 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %170, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %7, align 4
  %80 = getelementptr i8, ptr %79, i32 24
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #11, !srcloc !15
  %82 = lshr i32 %81, 17
  %83 = and i32 %82, 127
  %84 = and i32 %81, 65536
  %85 = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 12, i32 0
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %132, label %88

88:                                               ; preds = %78
  %89 = load i16, ptr %86, align 8
  %90 = and i16 %89, 16
  %91 = icmp eq i16 %90, 0
  %92 = getelementptr inbounds %struct.i2c_client, ptr %86, i32 0, i32 1
  %93 = load i16, ptr %92, align 2
  br i1 %91, label %99, label %94

94:                                               ; preds = %88
  %95 = lshr i16 %93, 8
  %96 = or i16 %95, 120
  %97 = zext i16 %96 to i32
  %98 = icmp eq i32 %83, %97
  br i1 %98, label %103, label %132

99:                                               ; preds = %88
  %100 = and i16 %93, 127
  %101 = zext i16 %100 to i32
  %102 = icmp eq i32 %83, %101
  br i1 %102, label %103, label %132

103:                                              ; preds = %166, %161, %147, %142, %99, %94
  %104 = phi ptr [ %86, %94 ], [ %86, %99 ], [ %134, %142 ], [ %134, %147 ], [ %153, %161 ], [ %153, %166 ]
  %105 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 13
  store ptr %104, ptr %105, align 4
  %106 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 15
  store i32 %84, ptr %106, align 4
  %107 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1
  %108 = icmp eq i32 %84, 0
  %109 = getelementptr inbounds %struct.i2c_client, ptr %104, i32 0, i32 8
  %110 = load ptr, ptr %109, align 8
  br i1 %108, label %123, label %111

111:                                              ; preds = %103
  %112 = call i32 %110(ptr noundef nonnull %104, i32 noundef 0, ptr noundef nonnull %3) #11
  %113 = getelementptr i8, ptr %107, i32 4
  %114 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #11, !srcloc !15
  %115 = and i32 %114, -16777217
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %115) #11, !srcloc !16
  %116 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #11, !srcloc !15
  %117 = and i32 %116, -65605
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %117) #11, !srcloc !16
  %118 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #11, !srcloc !15
  %119 = or i32 %118, 50
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %119) #11, !srcloc !16
  %120 = load i8, ptr %3, align 1
  %121 = zext i8 %120 to i32
  %122 = getelementptr i8, ptr %107, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %121) #11, !srcloc !16
  br label %130

123:                                              ; preds = %103
  %124 = call i32 %110(ptr noundef nonnull %104, i32 noundef 1, ptr noundef nonnull %3) #11
  %125 = getelementptr i8, ptr %107, i32 4
  %126 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #11, !srcloc !15
  %127 = or i32 %126, 16777216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %127) #11, !srcloc !16
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #11, !srcloc !15
  %129 = or i32 %128, 65652
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %129) #11, !srcloc !16
  br label %130

130:                                              ; preds = %123, %111
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %131 = getelementptr i8, ptr %79, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 8) #11, !srcloc !16
  br label %170

132:                                              ; preds = %99, %94, %78
  %133 = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 12, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %151, label %136

136:                                              ; preds = %132
  %137 = load i16, ptr %134, align 8
  %138 = and i16 %137, 16
  %139 = icmp eq i16 %138, 0
  %140 = getelementptr inbounds %struct.i2c_client, ptr %134, i32 0, i32 1
  %141 = load i16, ptr %140, align 2
  br i1 %139, label %147, label %142

142:                                              ; preds = %136
  %143 = lshr i16 %141, 8
  %144 = or i16 %143, 120
  %145 = zext i16 %144 to i32
  %146 = icmp eq i32 %83, %145
  br i1 %146, label %103, label %151

147:                                              ; preds = %136
  %148 = and i16 %141, 127
  %149 = zext i16 %148 to i32
  %150 = icmp eq i32 %83, %149
  br i1 %150, label %103, label %151

151:                                              ; preds = %147, %142, %132
  %152 = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 12, i32 2
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %170, label %155

155:                                              ; preds = %151
  %156 = load i16, ptr %153, align 8
  %157 = and i16 %156, 16
  %158 = icmp eq i16 %157, 0
  %159 = getelementptr inbounds %struct.i2c_client, ptr %153, i32 0, i32 1
  %160 = load i16, ptr %159, align 2
  br i1 %158, label %166, label %161

161:                                              ; preds = %155
  %162 = lshr i16 %160, 8
  %163 = or i16 %162, 120
  %164 = zext i16 %163 to i32
  %165 = icmp eq i32 %83, %164
  br i1 %165, label %103, label %170

166:                                              ; preds = %155
  %167 = and i16 %160, 127
  %168 = zext i16 %167 to i32
  %169 = icmp eq i32 %83, %168
  br i1 %169, label %103, label %170

170:                                              ; preds = %166, %161, %151, %130, %75
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  br label %350

171:                                              ; preds = %2
  %172 = getelementptr i8, ptr %8, i32 24
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #11, !srcloc !15
  %174 = and i32 %173, 2
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %189, label %176

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 1
  %178 = load i32, ptr %177, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %189, label %180

180:                                              ; preds = %176
  %181 = load ptr, ptr %7, align 4
  %182 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 2
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr i8, ptr %183, i32 1
  store ptr %184, ptr %182, align 4
  %185 = load i8, ptr %183, align 1
  %186 = getelementptr i8, ptr %181, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %186, i8 %185) #11, !srcloc !18
  %187 = load i32, ptr %177, align 4
  %188 = add i32 %187, -1
  store i32 %188, ptr %177, align 4
  br label %189

189:                                              ; preds = %180, %176, %171
  %190 = and i32 %173, 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %205, label %192

192:                                              ; preds = %189
  %193 = load ptr, ptr %7, align 4
  %194 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 1
  %195 = load i32, ptr %194, align 4
  %196 = icmp eq i32 %195, 0
  %197 = getelementptr i8, ptr %193, i32 36
  %198 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %197) #11
  br i1 %196, label %205, label %199

199:                                              ; preds = %192
  %200 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 2
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr i8, ptr %201, i32 1
  store ptr %202, ptr %200, align 4
  store i8 %198, ptr %201, align 1
  %203 = load i32, ptr %194, align 4
  %204 = add i32 %203, -1
  store i32 %204, ptr %194, align 4
  br label %205

205:                                              ; preds = %199, %192, %189
  %206 = and i32 %173, 16
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %227, label %208

208:                                              ; preds = %205
  %209 = getelementptr i8, ptr %8, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 16) #11, !srcloc !16
  %210 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 18
  %211 = load i8, ptr %210, align 8, !range !9
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %225, label %213

213:                                              ; preds = %208
  %214 = load ptr, ptr %7, align 4
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %214) #11, !srcloc !15
  %216 = and i32 %215, -49153
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %216) #11, !srcloc !16
  %217 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %6, i32 0, i32 2
  %218 = load ptr, ptr %217, align 4
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr inbounds %struct.dma_device, ptr %219, i32 0, i32 47
  %221 = load ptr, ptr %220, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %225, label %223

223:                                              ; preds = %213
  %224 = tail call i32 %221(ptr noundef %218) #11
  br label %225

225:                                              ; preds = %223, %213, %208
  %226 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 3
  store i32 -6, ptr %226, align 4
  br label %227

227:                                              ; preds = %225, %205
  %228 = and i32 %173, 32
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %258, label %230

230:                                              ; preds = %227
  %231 = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 12, i32 0
  %232 = load ptr, ptr %231, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %242

234:                                              ; preds = %230
  %235 = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 12, i32 1
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %242

238:                                              ; preds = %234
  %239 = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 12, i32 2
  %240 = load ptr, ptr %239, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %243, label %242

242:                                              ; preds = %238, %234, %230
  br label %243

243:                                              ; preds = %242, %238
  %244 = phi i32 [ -119, %242 ], [ -247, %238 ]
  %245 = load ptr, ptr %7, align 4
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %245) #11, !srcloc !15
  %247 = and i32 %246, %244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %245, i32 %247) #11, !srcloc !16
  %248 = getelementptr i8, ptr %8, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %248, i32 32) #11, !srcloc !16
  %249 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 18
  %250 = load i8, ptr %249, align 8, !range !9
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %243
  %253 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 3
  %254 = load i32, ptr %253, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %252, %243
  store i8 0, ptr %9, align 8
  %257 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %257) #11
  br label %258

258:                                              ; preds = %256, %252, %227
  %259 = phi i32 [ 1, %256 ], [ 1, %227 ], [ 2, %252 ]
  %260 = and i32 %173, 64
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %290, label %262

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 4
  %264 = load i8, ptr %263, align 4, !range !9
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %270, label %266

266:                                              ; preds = %262
  %267 = getelementptr i8, ptr %8, i32 4
  %268 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %267) #11, !srcloc !15
  %269 = or i32 %268, 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %267, i32 %269) #11, !srcloc !16
  br label %290

270:                                              ; preds = %262
  %271 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 18
  %272 = load i8, ptr %271, align 8, !range !9
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %278, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 3
  %276 = load i32, ptr %275, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %290, label %278

278:                                              ; preds = %274, %270
  %279 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 5
  %280 = load i8, ptr %279, align 1, !range !9
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %278
  tail call fastcc void @stm32f7_i2c_smbus_rep_start(ptr noundef %1)
  br label %290

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 8
  %285 = load i32, ptr %284, align 8
  %286 = add i32 %285, 1
  store i32 %286, ptr %284, align 8
  %287 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 6
  %288 = load ptr, ptr %287, align 8
  %289 = getelementptr %struct.i2c_msg, ptr %288, i32 1
  store ptr %289, ptr %287, align 8
  tail call fastcc void @stm32f7_i2c_xfer_msg(ptr noundef %1, ptr noundef %289)
  br label %290

290:                                              ; preds = %283, %282, %274, %266, %258
  %291 = phi i32 [ %259, %266 ], [ %259, %282 ], [ %259, %283 ], [ %259, %258 ], [ 2, %274 ]
  %292 = and i32 %173, 128
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %350, label %294

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 5
  %296 = load i8, ptr %295, align 1, !range !9
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %327, label %298

298:                                              ; preds = %294
  %299 = load ptr, ptr %7, align 4
  %300 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 1
  %301 = load i32, ptr %300, align 4
  %302 = icmp eq i32 %301, 0
  %303 = getelementptr i8, ptr %299, i32 36
  %304 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %303) #11
  br i1 %302, label %311, label %305

305:                                              ; preds = %298
  %306 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 2
  %307 = load ptr, ptr %306, align 4
  %308 = getelementptr i8, ptr %307, i32 1
  store ptr %308, ptr %306, align 4
  store i8 %304, ptr %307, align 1
  %309 = load i32, ptr %300, align 4
  %310 = add i32 %309, -1
  store i32 %310, ptr %300, align 4
  br label %311

311:                                              ; preds = %305, %298
  %312 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 2
  %313 = load ptr, ptr %312, align 4
  %314 = getelementptr i8, ptr %313, i32 -1
  %315 = load i8, ptr %314, align 1
  %316 = zext i8 %315 to i32
  store i32 %316, ptr %300, align 4
  %317 = load ptr, ptr %7, align 4
  %318 = getelementptr i8, ptr %317, i32 4
  %319 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %318) #11, !srcloc !15
  %320 = and i32 %319, -33488897
  %321 = load i32, ptr %300, align 4
  %322 = shl i32 %321, 16
  %323 = and i32 %322, 16711680
  %324 = or i32 %323, %320
  %325 = load ptr, ptr %7, align 4
  %326 = getelementptr i8, ptr %325, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %326, i32 %324) #11, !srcloc !16
  br label %350

327:                                              ; preds = %294
  %328 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 18
  %329 = load i8, ptr %328, align 8, !range !9
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %335, label %331

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 1
  %333 = load i32, ptr %332, align 4
  %334 = add i32 %333, -255
  store i32 %334, ptr %332, align 4
  br label %335

335:                                              ; preds = %331, %327
  %336 = load ptr, ptr %7, align 4
  %337 = getelementptr i8, ptr %336, i32 4
  %338 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %337) #11, !srcloc !15
  %339 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 1
  %340 = load i32, ptr %339, align 4
  %341 = icmp ugt i32 %340, 255
  %342 = or i32 %338, 16711680
  %343 = and i32 %338, -33488897
  %344 = shl i32 %340, 16
  %345 = and i32 %344, 16711680
  %346 = or i32 %345, %343
  %347 = select i1 %341, i32 %342, i32 %346
  %348 = load ptr, ptr %7, align 4
  %349 = getelementptr i8, ptr %348, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %349, i32 %347) #11, !srcloc !16
  br label %350

350:                                              ; preds = %335, %311, %290, %170
  %351 = phi i32 [ 1, %170 ], [ %291, %311 ], [ %291, %335 ], [ %291, %290 ]
  ret i32 %351
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_isr_event_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %4, i32 0, i32 7
  %6 = tail call i32 @wait_for_completion_timeout(ptr noundef %5, i32 noundef 100) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !15
  %12 = and i32 %11, -49153
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %12) #11, !srcloc !16
  %13 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 47
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  %20 = tail call i32 %17(ptr noundef %14) #11
  br label %21

21:                                               ; preds = %19, %8
  %22 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 3
  store i32 -110, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %2
  %24 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !15
  %28 = and i32 %27, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 5
  %32 = load i8, ptr %31, align 1, !range !9
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call fastcc void @stm32f7_i2c_smbus_rep_start(ptr noundef %1)
  br label %45

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 8
  %37 = load i32, ptr %36, align 8
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 8
  %39 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 6
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr %struct.i2c_msg, ptr %40, i32 1
  store ptr %41, ptr %39, align 8
  tail call fastcc void @stm32f7_i2c_xfer_msg(ptr noundef %1, ptr noundef %41)
  br label %45

42:                                               ; preds = %23
  %43 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 16
  store i8 0, ptr %43, align 8
  %44 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %44) #11
  br label %45

45:                                               ; preds = %42, %35, %34
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_isr_error(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9
  %4 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %5, i32 24
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !15
  %12 = and i32 %11, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %2
  %15 = load i16, ptr %3, align 4
  %16 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.stm32f7_i2c_isr_error, i32 noundef %16) #12
  %17 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 256) #11, !srcloc !16
  %18 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !15
  %23 = and i32 %22, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %23) #11, !srcloc !16
  tail call fastcc void @stm32f7_i2c_hw_config(ptr noundef %19) #11
  %24 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 3
  store i32 -5, ptr %24, align 4
  br label %25

25:                                               ; preds = %14, %2
  %26 = and i32 %11, 512
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 512) #11, !srcloc !16
  %30 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 3
  store i32 -11, ptr %30, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = and i32 %11, 2048
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load i16, ptr %3, align 4
  %36 = zext i16 %35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.stm32f7_i2c_isr_error, i32 noundef %36) #12
  %37 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 2048) #11, !srcloc !16
  %38 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 9, i32 3
  store i32 -22, ptr %38, align 4
  br label %39

39:                                               ; preds = %34, %31
  %40 = and i32 %11, 8192
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 8192) #11, !srcloc !16
  %44 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 29
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.stm32f7_i2c_alert, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @i2c_handle_smbus_alert(ptr noundef %47) #11
  br label %90

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 13
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 12, i32 0
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 12, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = getelementptr %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 12, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %61, %57, %53
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi i32 [ -119, %65 ], [ -247, %61 ]
  %68 = load ptr, ptr %4, align 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #11, !srcloc !15
  %70 = and i32 %69, %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %70) #11, !srcloc !16
  br label %71

71:                                               ; preds = %66, %49
  %72 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 18
  %73 = load i8, ptr %72, align 8, !range !9
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %4, align 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #11, !srcloc !15
  %78 = and i32 %77, -49153
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %78) #11, !srcloc !16
  %79 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %9, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.dma_device, ptr %81, i32 0, i32 47
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %75
  %86 = tail call i32 %83(ptr noundef %80) #11
  br label %87

87:                                               ; preds = %85, %75, %71
  %88 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 16
  store i8 0, ptr %88, align 8
  %89 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %89) #11
  br label %90

90:                                               ; preds = %87, %42
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32f7_i2c_setup_fm_plus_bits(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %4, ptr noundef nonnull @.str.30) #11
  %6 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 19
  store ptr %5, ptr %6, align 4
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 20
  %10 = tail call i32 @of_property_read_u32_index(ptr noundef %4, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef %9) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i32, ptr %9, align 8
  %14 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 10, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  %17 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 21
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %1, i32 0, i32 22
  %19 = tail call i32 @of_property_read_u32_index(ptr noundef %4, ptr noundef nonnull @.str.30, i32 noundef 2, ptr noundef %18) #11
  br label %20

20:                                               ; preds = %12, %8, %2
  %21 = phi i32 [ %19, %12 ], [ 0, %2 ], [ %10, %8 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32f7_i2c_write_fm_plus_bits(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 400001
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %11 = or i1 %9, %10
  br i1 %11, label %28, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 20
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 21
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 22
  %20 = load i32, ptr %19, align 8
  %21 = select i1 %1, i32 %20, i32 0
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %8, i32 noundef %14, i32 noundef %20, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %28

23:                                               ; preds = %12
  %24 = select i1 %1, i32 %14, i32 %16
  %25 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 22
  %26 = load i32, ptr %25, align 8
  %27 = tail call i32 @regmap_write(ptr noundef nonnull %8, i32 noundef %24, i32 noundef %26) #11
  br label %28

28:                                               ; preds = %23, %18, %6, %2
  %29 = phi i32 [ 0, %6 ], [ 0, %2 ], [ %22, %18 ], [ %27, %23 ]
  ret i32 %29
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stm32_i2c_dma_request(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32f7_i2c_hw_config(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 11, i32 1
  %3 = load i8, ptr %2, align 4
  %4 = zext i8 %3 to i32
  %5 = shl i32 %4, 28
  %6 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 11, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 15
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 20
  %11 = or i32 %10, %5
  %12 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 11, i32 3
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 15
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = or i32 %11, %16
  %18 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 11, i32 4
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or i32 %17, %21
  %23 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 11, i32 5
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  %26 = or i32 %22, %25
  %27 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #11, !srcloc !16
  %30 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 26
  %31 = load i8, ptr %30, align 4, !range !9
  %32 = icmp eq i8 %31, 0
  %33 = load ptr, ptr %27, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11
  br i1 %32, label %37, label %35

35:                                               ; preds = %1
  %36 = and i32 %34, -4097
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %36) #11, !srcloc !16
  br label %39

37:                                               ; preds = %1
  %38 = or i32 %34, 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %38) #11, !srcloc !16
  br label %39

39:                                               ; preds = %37, %35
  %40 = load ptr, ptr %27, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !15
  %42 = and i32 %41, -3841
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %42) #11, !srcloc !16
  %43 = load ptr, ptr %27, align 4
  %44 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 28
  %45 = load i32, ptr %44, align 4
  %46 = shl i32 %45, 8
  %47 = and i32 %46, 3840
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #11, !srcloc !15
  %49 = or i32 %47, %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %49) #11, !srcloc !16
  %50 = load ptr, ptr %27, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #11, !srcloc !15
  %52 = or i32 %51, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %52) #11, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32f7_i2c_enable_smbus_host(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @i2c_new_slave_host_notify_device(ptr noundef %0) #11
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = ptrtoint ptr %4 to i32
  br label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 25
  store ptr %4, ptr %9, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !15
  %11 = or i32 %10, 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %11) #11, !srcloc !16
  br label %12

12:                                               ; preds = %8, %6
  %13 = phi i32 [ %7, %6 ], [ 0, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32f7_i2c_enable_smbus_alert(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 8, i32 noundef 3520) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @i2c_new_smbus_alert_device(ptr noundef %0, ptr noundef nonnull %6) #11
  %10 = getelementptr inbounds %struct.stm32f7_i2c_alert, ptr %6, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = ptrtoint ptr %9 to i32
  br label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 29
  store ptr %6, ptr %15, align 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !15
  %17 = or i32 %16, 4194304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %17) #11, !srcloc !16
  br label %18

18:                                               ; preds = %14, %12, %1
  %19 = phi i32 [ %13, %12 ], [ 0, %14 ], [ -12, %1 ]
  ret i32 %19
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32f7_i2c_disable_smbus_host(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !15
  %9 = and i32 %8, -1048577
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %9) #11, !srcloc !16
  %10 = load ptr, ptr %2, align 8
  tail call void @i2c_free_slave_host_notify_device(ptr noundef %10) #11
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stm32_i2c_dma_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32f7_i2c_smbus_rep_start(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !15
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !15
  %7 = or i32 %5, 1024
  %8 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 9, i32 6
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %17 [
    i32 2, label %10
    i32 3, label %12
    i32 4, label %12
    i32 5, label %14
    i32 7, label %14
  ]

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 9, i32 1
  store i32 1, ptr %11, align 4
  br label %17

12:                                               ; preds = %1, %1
  %13 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 9, i32 1
  store i32 2, ptr %13, align 4
  br label %17

14:                                               ; preds = %1, %1
  %15 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 9, i32 1
  store i32 1, ptr %15, align 4
  %16 = or i32 %5, 16778240
  br label %17

17:                                               ; preds = %14, %12, %10, %1
  %18 = phi i32 [ %7, %1 ], [ %16, %14 ], [ %7, %12 ], [ %7, %10 ]
  %19 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 9, i32 9
  %20 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 9, i32 2
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 9, i32 4
  store i8 1, ptr %21, align 4
  %22 = and i32 %6, 8388608
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 9, i32 1
  %25 = load i32, ptr %24, align 4
  br i1 %23, label %28, label %26

26:                                               ; preds = %17
  %27 = add i32 %25, 1
  store i32 %27, ptr %24, align 4
  br label %28

28:                                               ; preds = %26, %17
  %29 = phi i32 [ %27, %26 ], [ %25, %17 ]
  %30 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 18
  store i8 0, ptr %30, align 8
  %31 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  %33 = icmp ne ptr %32, null
  %34 = icmp ugt i32 %29, 21
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  switch i32 %9, label %37 [
    i32 5, label %48
    i32 7, label %48
  ]

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = tail call i32 @stm32_i2c_prep_dma_xfer(ptr noundef %39, ptr noundef nonnull %32, i1 noundef zeroext true, i32 noundef %29, ptr noundef %19, ptr noundef nonnull @stm32f7_i2c_dma_callback, ptr noundef %0) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i8 1, ptr %30, align 8
  br label %48

43:                                               ; preds = %37
  %44 = load ptr, ptr %38, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.15) #12
  %45 = load i8, ptr %30, align 8, !range !9
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, i32 4, i32 32768
  br label %48

48:                                               ; preds = %43, %42, %36, %36, %28
  %49 = phi i32 [ 4, %36 ], [ 4, %36 ], [ 32768, %42 ], [ %47, %43 ], [ 4, %28 ]
  %50 = and i32 %6, -49159
  %51 = or i32 %49, %50
  %52 = and i32 %18, -16719873
  %53 = shl i32 %29, 16
  %54 = and i32 %53, 16711680
  %55 = or i32 %52, %54
  %56 = or i32 %55, 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %51) #11, !srcloc !16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %56) #11, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32f7_i2c_xfer_msg(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 9
  %4 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load i16, ptr %1, align 4
  store i16 %6, ptr %3, align 4
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 9, i32 2
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 9, i32 1
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 9, i32 3
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -1
  %20 = icmp uge i32 %16, %19
  %21 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 9, i32 4
  %22 = zext i1 %20 to i8
  store i8 %22, ptr %21, align 4
  %23 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 3
  store i32 0, ptr %23, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !15
  %25 = getelementptr i8, ptr %5, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !15
  %27 = and i32 %26, -1025
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %29 = load i16, ptr %28, align 2
  %30 = shl i16 %29, 10
  %31 = and i16 %30, 1024
  %32 = zext i16 %31 to i32
  %33 = or i32 %27, %32
  %34 = and i16 %29, 16
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %2
  %37 = and i32 %33, -7168
  %38 = load i16, ptr %3, align 4
  %39 = and i16 %38, 1023
  %40 = zext i16 %39 to i32
  %41 = or i32 %37, %40
  %42 = or i32 %41, 2048
  br label %50

43:                                               ; preds = %2
  %44 = and i32 %33, -6399
  %45 = load i16, ptr %3, align 4
  %46 = shl i16 %45, 1
  %47 = and i16 %46, 254
  %48 = zext i16 %47 to i32
  %49 = or i32 %44, %48
  br label %50

50:                                               ; preds = %43, %36
  %51 = phi i32 [ %42, %36 ], [ %49, %43 ]
  %52 = load i32, ptr %13, align 4
  %53 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 18
  store i8 0, ptr %53, align 8
  %54 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 17
  %55 = load ptr, ptr %54, align 4
  %56 = icmp ne ptr %55, null
  %57 = icmp ugt i32 %52, 21
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %73

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8
  %62 = load i16, ptr %28, align 2
  %63 = and i16 %62, 1
  %64 = icmp ne i16 %63, 0
  %65 = load ptr, ptr %9, align 4
  %66 = tail call i32 @stm32_i2c_prep_dma_xfer(ptr noundef %61, ptr noundef nonnull %55, i1 noundef zeroext %64, i32 noundef %52, ptr noundef %65, ptr noundef nonnull @stm32f7_i2c_dma_callback, ptr noundef %0) #11
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  store i8 1, ptr %53, align 8
  br label %78

69:                                               ; preds = %59
  %70 = load ptr, ptr %60, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %70, ptr noundef nonnull @.str.15) #12
  %71 = load i8, ptr %53, align 8
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69, %50
  %74 = load i16, ptr %28, align 2
  %75 = and i16 %74, 1
  %76 = icmp eq i16 %75, 0
  %77 = select i1 %76, i32 242, i32 244
  br label %83

78:                                               ; preds = %69, %68
  %79 = load i16, ptr %28, align 2
  %80 = and i16 %79, 1
  %81 = icmp eq i16 %80, 0
  %82 = select i1 %81, i32 16624, i32 33008
  br label %83

83:                                               ; preds = %78, %73
  %84 = phi i32 [ %77, %73 ], [ %82, %78 ]
  %85 = and i32 %24, -49399
  %86 = or i32 %85, %84
  %87 = icmp ugt i32 %52, 255
  %88 = or i32 %51, 33488896
  %89 = and i32 %51, -33497089
  %90 = shl i32 %52, 16
  %91 = and i32 %90, 16711680
  %92 = or i32 %91, %89
  %93 = select i1 %87, i32 %88, i32 %92
  %94 = or i32 %93, 8192
  %95 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 16
  store i8 1, ptr %95, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %86) #11, !srcloc !16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %94) #11, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm32_i2c_prep_dma_xfer(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32f7_i2c_dma_callback(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !15
  %12 = and i32 %11, -49153
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %12) #11, !srcloc !16
  %13 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %3, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %3, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %3, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %8, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef 0) #11
  %19 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %3, i32 0, i32 7
  tail call void @complete(ptr noundef %19) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_handle_smbus_alert(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_parse_fw_timings(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 6
  store ptr %1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 7
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 8
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 9, i32 5
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #11
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #11, !srcloc !10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 0, i32 -1, ptr elementtype(i32) %17) #11, !srcloc !13
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %82, label %21

21:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  br label %82

22:                                               ; preds = %3
  %23 = tail call fastcc i32 @stm32f7_i2c_wait_free_bus(ptr noundef %5)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %73

25:                                               ; preds = %22
  tail call fastcc void @stm32f7_i2c_xfer_msg(ptr noundef %5, ptr noundef %1)
  %26 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 3
  %27 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @wait_for_completion_timeout(ptr noundef %26, i32 noundef %28) #11
  %30 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 9, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 18
  %35 = load i8, ptr %34, align 8, !range !9
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %7, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 48
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  tail call void %42(ptr noundef %39) #11
  br label %45

45:                                               ; preds = %44, %37, %33
  %46 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 1) #11, !srcloc !16
  br label %73

49:                                               ; preds = %25
  %50 = icmp eq i32 %29, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 18
  %53 = load i8, ptr %52, align 8, !range !9
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %7, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dma_device, ptr %58, i32 0, i32 47
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %55
  %63 = tail call i32 %60(ptr noundef %57) #11
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load ptr, ptr %57, align 4
  %67 = getelementptr inbounds %struct.dma_device, ptr %66, i32 0, i32 48
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  tail call void %68(ptr noundef %57) #11
  br label %71

71:                                               ; preds = %70, %65, %62, %55, %51
  %72 = tail call fastcc i32 @stm32f7_i2c_wait_free_bus(ptr noundef %5)
  br label %73

73:                                               ; preds = %71, %49, %45, %22
  %74 = phi i32 [ %23, %22 ], [ %31, %45 ], [ 0, %49 ], [ -110, %71 ]
  %75 = load ptr, ptr %12, align 8
  %76 = tail call i64 @ktime_get_mono_fast_ns() #11
  %77 = getelementptr inbounds %struct.device, ptr %75, i32 0, i32 11, i32 22
  store volatile i64 %76, ptr %77, align 8
  %78 = load ptr, ptr %12, align 8
  %79 = tail call i32 @__pm_runtime_suspend(ptr noundef %78, i32 noundef 13) #11
  %80 = icmp slt i32 %74, 0
  %81 = select i1 %80, i32 %74, i32 %2
  br label %82

82:                                               ; preds = %73, %21, %16
  %83 = phi i32 [ %14, %16 ], [ %14, %21 ], [ %81, %73 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_smbus_xfer(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, ptr nocapture noundef %6) #2 {
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  store i16 %1, ptr %10, align 4
  %15 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 6
  store i32 %5, ptr %15, align 4
  %16 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 7
  store i8 %3, ptr %16, align 4
  %17 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 5
  store i8 1, ptr %17, align 1
  %18 = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #11
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #11, !srcloc !10
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 0, i32 -1, ptr elementtype(i32) %21) #11, !srcloc !13
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %273, label %25

25:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  br label %273

26:                                               ; preds = %7
  %27 = tail call fastcc i32 @stm32f7_i2c_wait_free_bus(ptr noundef %9)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %268

29:                                               ; preds = %26
  %30 = load ptr, ptr %13, align 8
  %31 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 3
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 3
  store i32 0, ptr %34, align 4
  %35 = getelementptr i8, ptr %32, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #11, !srcloc !15
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !15
  %38 = and i32 %36, -3327
  %39 = load i8, ptr %16, align 4
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %40, i32 0, i32 1024
  %42 = or i32 %41, %38
  %43 = load i16, ptr %10, align 4
  %44 = shl i16 %43, 1
  %45 = and i16 %44, 254
  %46 = zext i16 %45 to i32
  %47 = or i32 %42, %46
  %48 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 9
  store i8 %4, ptr %48, align 4
  %49 = load i32, ptr %15, align 4
  switch i32 %49, label %133 [
    i32 0, label %50
    i32 1, label %53
    i32 2, label %56
    i32 3, label %65
    i32 5, label %79
    i32 4, label %102
    i32 7, label %113
    i32 8, label %268
  ]

50:                                               ; preds = %29
  %51 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 4
  store i8 1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 1
  store i32 0, ptr %52, align 4
  br label %134

53:                                               ; preds = %29
  %54 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 4
  store i8 1, ptr %54, align 4
  %55 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 1
  store i32 1, ptr %55, align 4
  br label %134

56:                                               ; preds = %29
  %57 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 4
  br i1 %40, label %61, label %58

58:                                               ; preds = %56
  store i8 0, ptr %57, align 4
  %59 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 1
  store i32 1, ptr %59, align 4
  %60 = and i32 %47, -3073
  br label %134

61:                                               ; preds = %56
  store i8 1, ptr %57, align 4
  %62 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 1
  store i32 2, ptr %62, align 4
  %63 = load i8, ptr %6, align 2
  %64 = getelementptr %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 9, i32 1
  store i8 %63, ptr %64, align 1
  br label %134

65:                                               ; preds = %29
  %66 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 4
  br i1 %40, label %70, label %67

67:                                               ; preds = %65
  store i8 0, ptr %66, align 4
  %68 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 1
  store i32 1, ptr %68, align 4
  %69 = and i32 %47, -3073
  br label %134

70:                                               ; preds = %65
  store i8 1, ptr %66, align 4
  %71 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 1
  store i32 3, ptr %71, align 4
  %72 = load i16, ptr %6, align 2
  %73 = trunc i16 %72 to i8
  %74 = getelementptr %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 9, i32 1
  store i8 %73, ptr %74, align 1
  %75 = load i16, ptr %6, align 2
  %76 = lshr i16 %75, 8
  %77 = trunc i16 %76 to i8
  %78 = getelementptr %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 9, i32 2
  store i8 %77, ptr %78, align 2
  br label %134

79:                                               ; preds = %29
  %80 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 4
  br i1 %40, label %84, label %81

81:                                               ; preds = %79
  store i8 0, ptr %80, align 4
  %82 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 1
  store i32 1, ptr %82, align 4
  %83 = and i32 %47, -3073
  br label %134

84:                                               ; preds = %79
  store i8 1, ptr %80, align 4
  %85 = load i8, ptr %6, align 2
  %86 = zext i8 %85 to i32
  %87 = add i8 %85, -33
  %88 = icmp ult i8 %87, -32
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.32, i32 noundef %86) #12
  br label %268

90:                                               ; preds = %84
  %91 = add nuw nsw i32 %86, 2
  %92 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 1
  store i32 %91, ptr %92, align 4
  br label %93

93:                                               ; preds = %93, %90
  %94 = phi i32 [ %99, %93 ], [ 1, %90 ]
  %95 = add i32 %94, -1
  %96 = getelementptr [34 x i8], ptr %6, i32 0, i32 %95
  %97 = load i8, ptr %96, align 1
  %98 = getelementptr %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 9, i32 %94
  store i8 %97, ptr %98, align 1
  %99 = add nuw i32 %94, 1
  %100 = load i32, ptr %92, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %93, label %134

102:                                              ; preds = %29
  %103 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 4
  store i8 0, ptr %103, align 4
  %104 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 1
  store i32 3, ptr %104, align 4
  %105 = load i16, ptr %6, align 2
  %106 = trunc i16 %105 to i8
  %107 = getelementptr %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 9, i32 1
  store i8 %106, ptr %107, align 1
  %108 = load i16, ptr %6, align 2
  %109 = lshr i16 %108, 8
  %110 = trunc i16 %109 to i8
  %111 = getelementptr %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 9, i32 2
  store i8 %110, ptr %111, align 2
  %112 = and i32 %47, -3073
  store i8 1, ptr %16, align 4
  br label %134

113:                                              ; preds = %29
  %114 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 4
  store i8 0, ptr %114, align 4
  %115 = load i8, ptr %6, align 2
  %116 = zext i8 %115 to i32
  %117 = icmp ugt i8 %115, 31
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.32, i32 noundef %116) #12
  br label %268

119:                                              ; preds = %113
  %120 = add nuw nsw i32 %116, 2
  %121 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 1
  store i32 %120, ptr %121, align 4
  br label %122

122:                                              ; preds = %122, %119
  %123 = phi i32 [ %128, %122 ], [ 1, %119 ]
  %124 = add i32 %123, -1
  %125 = getelementptr [34 x i8], ptr %6, i32 0, i32 %124
  %126 = load i8, ptr %125, align 1
  %127 = getelementptr %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 9, i32 %123
  store i8 %126, ptr %127, align 1
  %128 = add nuw i32 %123, 1
  %129 = load i32, ptr %121, align 4
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %122, label %131

131:                                              ; preds = %122
  %132 = and i32 %47, -3073
  store i8 1, ptr %16, align 4
  br label %134

133:                                              ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.33, i32 noundef %49) #12
  br label %268

134:                                              ; preds = %131, %102, %93, %81, %70, %67, %61, %58, %53, %50
  %135 = phi i32 [ %129, %131 ], [ 3, %102 ], [ 1, %81 ], [ 1, %67 ], [ 3, %70 ], [ 1, %58 ], [ 2, %61 ], [ 1, %53 ], [ 0, %50 ], [ %100, %93 ]
  %136 = phi i32 [ %132, %131 ], [ %112, %102 ], [ %83, %81 ], [ %69, %67 ], [ %47, %70 ], [ %60, %58 ], [ %47, %61 ], [ %47, %53 ], [ %47, %50 ], [ %47, %93 ]
  %137 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 2
  store ptr %48, ptr %137, align 4
  %138 = and i16 %2, 4
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %134
  %141 = load i32, ptr %15, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %140
  %144 = or i32 %37, 8388608
  %145 = or i32 %136, 67108864
  %146 = load i8, ptr %16, align 4
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 1
  %150 = add i32 %135, 1
  store i32 %150, ptr %149, align 4
  br label %154

151:                                              ; preds = %140, %134
  %152 = and i32 %37, -8388609
  %153 = and i32 %136, -67108865
  br label %154

154:                                              ; preds = %151, %148, %143
  %155 = phi i32 [ %135, %143 ], [ %150, %148 ], [ %135, %151 ]
  %156 = phi i32 [ %144, %143 ], [ %144, %148 ], [ %152, %151 ]
  %157 = phi i32 [ %145, %143 ], [ %145, %148 ], [ %153, %151 ]
  %158 = and i32 %157, -33497089
  %159 = shl i32 %155, 16
  %160 = and i32 %159, 16711680
  %161 = and i32 %156, -49399
  %162 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 18
  store i8 0, ptr %162, align 8
  %163 = load ptr, ptr %11, align 4
  %164 = icmp ne ptr %163, null
  %165 = icmp ugt i32 %155, 21
  %166 = select i1 %164, i1 %165, i1 false
  br i1 %166, label %169, label %167

167:                                              ; preds = %154
  %168 = and i32 %157, 1024
  br label %180

169:                                              ; preds = %154
  %170 = load ptr, ptr %13, align 8
  %171 = and i32 %157, 1024
  %172 = icmp ne i32 %171, 0
  %173 = tail call i32 @stm32_i2c_prep_dma_xfer(ptr noundef %170, ptr noundef nonnull %163, i1 noundef zeroext %172, i32 noundef %155, ptr noundef %48, ptr noundef nonnull @stm32f7_i2c_dma_callback, ptr noundef %9) #11
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  store i8 1, ptr %162, align 8
  br label %184

176:                                              ; preds = %169
  %177 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %177, ptr noundef nonnull @.str.15) #12
  %178 = load i8, ptr %162, align 8
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %176, %167
  %181 = phi i32 [ %168, %167 ], [ %171, %176 ]
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %182, i32 242, i32 244
  br label %187

184:                                              ; preds = %176, %175
  %185 = icmp eq i32 %171, 0
  %186 = select i1 %185, i32 16624, i32 33008
  br label %187

187:                                              ; preds = %184, %180
  %188 = phi i32 [ %183, %180 ], [ %186, %184 ]
  %189 = or i32 %188, %161
  %190 = or i32 %160, %158
  %191 = or i32 %190, 8192
  %192 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 16
  store i8 1, ptr %192, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %189) #11, !srcloc !16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %191) #11, !srcloc !16
  %193 = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 7
  %194 = load i32, ptr %193, align 4
  %195 = tail call i32 @wait_for_completion_timeout(ptr noundef %34, i32 noundef %194) #11
  %196 = load i32, ptr %33, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %212, label %198

198:                                              ; preds = %187
  %199 = load i8, ptr %162, align 8, !range !9
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %209, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %12, i32 0, i32 2
  %203 = load ptr, ptr %202, align 4
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr inbounds %struct.dma_device, ptr %204, i32 0, i32 48
  %206 = load ptr, ptr %205, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %201
  tail call void %206(ptr noundef %203) #11
  br label %209

209:                                              ; preds = %208, %201, %198
  %210 = load ptr, ptr %31, align 4
  %211 = getelementptr i8, ptr %210, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %211, i32 1) #11, !srcloc !16
  br label %268

212:                                              ; preds = %187
  %213 = icmp eq i32 %195, 0
  br i1 %213, label %214, label %235

214:                                              ; preds = %212
  %215 = load i8, ptr %162, align 8, !range !9
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %233, label %217

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %12, i32 0, i32 2
  %219 = load ptr, ptr %218, align 4
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr inbounds %struct.dma_device, ptr %220, i32 0, i32 47
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %233, label %224

224:                                              ; preds = %217
  %225 = tail call i32 %222(ptr noundef %219) #11
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %224
  %228 = load ptr, ptr %219, align 4
  %229 = getelementptr inbounds %struct.dma_device, ptr %228, i32 0, i32 48
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %227
  tail call void %230(ptr noundef %219) #11
  br label %233

233:                                              ; preds = %232, %227, %224, %217, %214
  %234 = tail call fastcc i32 @stm32f7_i2c_wait_free_bus(ptr noundef %9)
  br label %268

235:                                              ; preds = %212
  %236 = icmp ne i16 %138, 0
  %237 = icmp ne i32 %5, 0
  %238 = and i1 %236, %237
  %239 = icmp ne i8 %3, 0
  %240 = and i1 %239, %238
  br i1 %240, label %241, label %244

241:                                              ; preds = %235
  %242 = tail call fastcc i32 @stm32f7_i2c_smbus_check_pec(ptr noundef %9)
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %268

244:                                              ; preds = %241, %235
  %245 = and i1 %239, %237
  br i1 %245, label %246, label %268

246:                                              ; preds = %244
  switch i32 %5, label %267 [
    i32 1, label %248
    i32 2, label %248
    i32 3, label %250
    i32 4, label %250
    i32 5, label %247
    i32 7, label %247
  ]

247:                                              ; preds = %246, %246
  br label %258

248:                                              ; preds = %246, %246
  %249 = load i8, ptr %48, align 4
  store i8 %249, ptr %6, align 2
  br label %268

250:                                              ; preds = %246, %246
  %251 = load i8, ptr %48, align 4
  %252 = zext i8 %251 to i16
  %253 = getelementptr %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 9, i32 1
  %254 = load i8, ptr %253, align 1
  %255 = zext i8 %254 to i16
  %256 = shl nuw i16 %255, 8
  %257 = or i16 %256, %252
  store i16 %257, ptr %6, align 2
  br label %268

258:                                              ; preds = %258, %247
  %259 = phi i32 [ %263, %258 ], [ 0, %247 ]
  %260 = getelementptr %struct.stm32f7_i2c_dev, ptr %9, i32 0, i32 9, i32 9, i32 %259
  %261 = load i8, ptr %260, align 1
  %262 = getelementptr [34 x i8], ptr %6, i32 0, i32 %259
  store i8 %261, ptr %262, align 1
  %263 = add nuw nsw i32 %259, 1
  %264 = load i8, ptr %48, align 4
  %265 = zext i8 %264 to i32
  %266 = icmp ult i32 %259, %265
  br i1 %266, label %258, label %268

267:                                              ; preds = %246
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.31) #12
  br label %268

268:                                              ; preds = %267, %258, %250, %248, %244, %241, %233, %209, %133, %118, %89, %29, %26
  %269 = phi i32 [ %27, %26 ], [ %196, %209 ], [ %242, %241 ], [ -22, %267 ], [ 0, %250 ], [ 0, %248 ], [ 0, %244 ], [ -110, %233 ], [ -95, %29 ], [ -22, %89 ], [ -22, %118 ], [ -95, %133 ], [ 0, %258 ]
  %270 = tail call i64 @ktime_get_mono_fast_ns() #11
  %271 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 22
  store volatile i64 %270, ptr %271, align 8
  %272 = tail call i32 @__pm_runtime_suspend(ptr noundef %14, i32 noundef 13) #11
  br label %273

273:                                              ; preds = %268, %25, %20
  %274 = phi i32 [ %269, %268 ], [ %18, %20 ], [ %18, %25 ]
  ret i32 %274
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @stm32f7_i2c_func(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 24
  %5 = load i8, ptr %4, align 1, !range !9
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i32 268402731, i32 536838187
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_reg_slave(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = load i16, ptr %0, align 8
  %11 = and i16 %10, 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.36) #12
  br label %159

14:                                               ; preds = %1
  %15 = getelementptr %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 12, i32 0
  %16 = load ptr, ptr %15, align 4
  %17 = icmp ne ptr %16, null
  %18 = zext i1 %17 to i32
  %19 = getelementptr %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 12, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ne ptr %20, null
  %22 = zext i1 %21 to i32
  %23 = add nuw nsw i32 %22, %18
  %24 = getelementptr %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 12, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp ne ptr %25, null
  %27 = zext i1 %26 to i32
  %28 = add nuw nsw i32 %23, %27
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %31

30:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.37) #12
  br label %159

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 24
  %33 = load i8, ptr %32, align 1, !range !9
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %37 = load i16, ptr %36, align 2
  %38 = icmp eq i16 %37, 8
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = icmp eq ptr %16, null
  br i1 %40, label %54, label %52

41:                                               ; preds = %35, %31
  %42 = and i16 %10, 16
  %43 = icmp eq i16 %42, 0
  %44 = icmp eq ptr %25, null
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = icmp eq ptr %20, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  br label %52

52:                                               ; preds = %48, %39
  %53 = phi i32 [ %51, %48 ], [ 8, %39 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.39, i32 noundef %53) #12
  br label %159

54:                                               ; preds = %46, %41, %39
  %55 = phi i32 [ 1, %46 ], [ 0, %39 ], [ 2, %41 ]
  %56 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #11
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #11, !srcloc !10
  %60 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 0, i32 -1, ptr elementtype(i32) %59) #11, !srcloc !13
  %61 = extractvalue { i32, i32, i32 } %60, 0
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %159, label %63

63:                                               ; preds = %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  br label %159

64:                                               ; preds = %54
  %65 = load ptr, ptr %15, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = load ptr, ptr %19, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load ptr, ptr %24, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 23
  %75 = load i8, ptr %74, align 4, !range !9
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %6, align 4
  %79 = load ptr, ptr %8, align 8
  %80 = tail call i32 @device_set_wakeup_enable(ptr noundef %79, i1 noundef zeroext true) #11
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #11, !srcloc !15
  %82 = or i32 %81, 262144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %82) #11, !srcloc !16
  br label %83

83:                                               ; preds = %77, %73, %70, %67, %64
  switch i32 %55, label %128 [
    i32 0, label %84
    i32 1, label %85
    i32 2, label %110
  ]

84:                                               ; preds = %83
  store ptr %0, ptr %15, align 4
  br label %129

85:                                               ; preds = %83
  %86 = load ptr, ptr %6, align 4
  %87 = getelementptr i8, ptr %86, i32 8
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #11, !srcloc !15
  %89 = and i32 %88, -34816
  %90 = load i16, ptr %0, align 8
  %91 = and i16 %90, 16
  %92 = icmp eq i16 %91, 0
  %93 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %94 = load i16, ptr %93, align 2
  br i1 %92, label %100, label %95

95:                                               ; preds = %85
  %96 = and i16 %94, 1023
  %97 = zext i16 %96 to i32
  %98 = or i32 %89, %97
  %99 = or i32 %98, 1024
  br label %105

100:                                              ; preds = %85
  %101 = shl i16 %94, 1
  %102 = and i16 %101, 254
  %103 = zext i16 %102 to i32
  %104 = or i32 %89, %103
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i32 [ %99, %95 ], [ %104, %100 ]
  %107 = or i32 %106, 32768
  store ptr %0, ptr %19, align 4
  %108 = load ptr, ptr %6, align 4
  %109 = getelementptr i8, ptr %108, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %107) #11, !srcloc !16
  br label %129

110:                                              ; preds = %83
  %111 = load ptr, ptr %6, align 4
  %112 = getelementptr i8, ptr %111, i32 12
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #11, !srcloc !15
  %114 = load i16, ptr %0, align 8
  %115 = and i16 %114, 16
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %110
  %118 = and i32 %113, -34815
  %119 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %120 = load i16, ptr %119, align 2
  %121 = shl i16 %120, 1
  %122 = and i16 %121, 254
  %123 = zext i16 %122 to i32
  %124 = or i32 %118, %123
  %125 = or i32 %124, 32768
  store ptr %0, ptr %24, align 4
  %126 = load ptr, ptr %6, align 4
  %127 = getelementptr i8, ptr %126, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %125) #11, !srcloc !16
  br label %129

128:                                              ; preds = %83
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.38) #12
  br label %135

129:                                              ; preds = %117, %105, %84
  %130 = getelementptr i8, ptr %7, i32 4
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #11, !srcloc !15
  %132 = and i32 %131, -32769
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %132) #11, !srcloc !16
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !15
  %134 = or i32 %133, 137
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %134) #11, !srcloc !16
  br label %135

135:                                              ; preds = %129, %128, %110
  %136 = phi i32 [ -19, %128 ], [ 0, %129 ], [ -95, %110 ]
  %137 = load ptr, ptr %15, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %155

139:                                              ; preds = %135
  %140 = load ptr, ptr %19, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %155

142:                                              ; preds = %139
  %143 = load ptr, ptr %24, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 23
  %147 = load i8, ptr %146, align 4, !range !9
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr %6, align 4
  %151 = load ptr, ptr %8, align 8
  %152 = tail call i32 @device_set_wakeup_enable(ptr noundef %151, i1 noundef zeroext false) #11
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #11, !srcloc !15
  %154 = and i32 %153, -262145
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %154) #11, !srcloc !16
  br label %155

155:                                              ; preds = %149, %145, %142, %139, %135
  %156 = tail call i64 @ktime_get_mono_fast_ns() #11
  %157 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 11, i32 22
  store volatile i64 %156, ptr %157, align 8
  %158 = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #11
  br label %159

159:                                              ; preds = %155, %63, %58, %52, %30, %13
  %160 = phi i32 [ -22, %13 ], [ -16, %30 ], [ %136, %155 ], [ -22, %52 ], [ %56, %58 ], [ %56, %63 ]
  ret i32 %160
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_unreg_slave(ptr noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 12, i32 0
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %25, label %11

11:                                               ; preds = %1
  %12 = getelementptr %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 12, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = getelementptr %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 12, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.41, i32 noundef %24) #12
  br label %80

25:                                               ; preds = %15, %11, %1
  %26 = phi i32 [ 2, %15 ], [ 1, %11 ], [ 0, %1 ]
  %27 = getelementptr %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 12, i32 %26
  %28 = icmp eq ptr %0, null
  br i1 %28, label %29, label %30, !prof !19

29:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1933, i32 noundef 9, ptr noundef null) #11
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = tail call i32 @__pm_runtime_resume(ptr noundef %32, i32 noundef 4) #11
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #11, !srcloc !10
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 0, i32 -1, ptr elementtype(i32) %36) #11, !srcloc !13
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %80, label %40

40:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  br label %80

41:                                               ; preds = %30
  switch i32 %26, label %50 [
    i32 1, label %42
    i32 2, label %46
  ]

42:                                               ; preds = %41
  %43 = getelementptr i8, ptr %7, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #11, !srcloc !15
  %45 = and i32 %44, -32769
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %45) #11, !srcloc !16
  br label %50

46:                                               ; preds = %41
  %47 = getelementptr i8, ptr %7, i32 12
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #11, !srcloc !15
  %49 = and i32 %48, -32769
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %49) #11, !srcloc !16
  br label %50

50:                                               ; preds = %46, %42, %41
  store ptr null, ptr %27, align 4
  %51 = load ptr, ptr %8, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %74

53:                                               ; preds = %50
  %54 = getelementptr %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 12, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = getelementptr %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 12, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load ptr, ptr %6, align 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #11, !srcloc !15
  %64 = and i32 %63, -247
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %64) #11, !srcloc !16
  %65 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %5, i32 0, i32 23
  %66 = load i8, ptr %65, align 4, !range !9
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %61
  %69 = load ptr, ptr %6, align 4
  %70 = load ptr, ptr %31, align 8
  %71 = tail call i32 @device_set_wakeup_enable(ptr noundef %70, i1 noundef zeroext false) #11
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #11, !srcloc !15
  %73 = and i32 %72, -262145
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %73) #11, !srcloc !16
  br label %74

74:                                               ; preds = %68, %61, %57, %53, %50
  %75 = load ptr, ptr %31, align 8
  %76 = tail call i64 @ktime_get_mono_fast_ns() #11
  %77 = getelementptr inbounds %struct.device, ptr %75, i32 0, i32 11, i32 22
  store volatile i64 %76, ptr %77, align 8
  %78 = load ptr, ptr %31, align 8
  %79 = tail call i32 @__pm_runtime_suspend(ptr noundef %78, i32 noundef 13) #11
  br label %80

80:                                               ; preds = %74, %40, %35, %19
  %81 = phi i32 [ 0, %74 ], [ -19, %19 ], [ %33, %35 ], [ %33, %40 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32f7_i2c_wait_free_bus(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = tail call i64 @ktime_get() #11
  %3 = add i64 %2, 1000000
  %4 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !15
  %8 = and i32 %7, 32768
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %13, %1
  %11 = tail call i64 @ktime_get() #11
  %12 = icmp sgt i64 %11, %3
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !15
  %17 = and i32 %16, 32768
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %10

19:                                               ; preds = %10
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !15
  %23 = and i32 %22, 32768
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !15
  %31 = and i32 %30, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %31) #11, !srcloc !16
  tail call fastcc void @stm32f7_i2c_hw_config(ptr noundef %27) #11
  br label %32

32:                                               ; preds = %25, %19, %13, %1
  %33 = phi i32 [ -16, %25 ], [ 0, %19 ], [ 0, %1 ], [ 0, %13 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32f7_i2c_smbus_check_pec(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !15
  %6 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 9, i32 6
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %13 [
    i32 1, label %16
    i32 2, label %16
    i32 3, label %8
    i32 4, label %8
    i32 5, label %9
    i32 7, label %9
  ]

8:                                                ; preds = %1, %1
  br label %16

9:                                                ; preds = %1, %1
  %10 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 9, i32 9
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  br label %16

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.34) #12
  br label %26

16:                                               ; preds = %9, %8, %1, %1
  %17 = phi i32 [ %12, %9 ], [ 2, %8 ], [ 1, %1 ], [ 1, %1 ]
  %18 = getelementptr %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 9, i32 9, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = and i32 %5, 255
  %21 = zext i8 %19 to i32
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.35, i32 noundef %20, i32 noundef %21) #12
  br label %26

26:                                               ; preds = %23, %16, %13
  %27 = phi i32 [ -22, %13 ], [ -74, %23 ], [ 0, %16 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_slave_host_notify_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_smbus_alert_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_free_slave_host_notify_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %3, i32 noundef 1) #11
  %7 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %7) #11
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.i2c_lock_operations, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %3, i32 noundef 1) #11
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %88

19:                                               ; preds = %15, %1
  %20 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 7
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %88

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = tail call i32 @__pm_runtime_resume(ptr noundef %26, i32 noundef 4) #11
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #11, !srcloc !10
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 0, i32 -1, ptr elementtype(i32) %30) #11, !srcloc !13
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %77, label %34

34:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  br label %77

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 14
  %37 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #11, !srcloc !15
  store i32 %39, ptr %36, align 4
  %40 = load ptr, ptr %37, align 4
  %41 = getelementptr i8, ptr %40, i32 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #11, !srcloc !15
  %43 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 14, i32 1
  store i32 %42, ptr %43, align 4
  %44 = load ptr, ptr %37, align 4
  %45 = getelementptr i8, ptr %44, i32 8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #11, !srcloc !15
  %47 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 14, i32 2
  store i32 %46, ptr %47, align 4
  %48 = load ptr, ptr %37, align 4
  %49 = getelementptr i8, ptr %48, i32 12
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #11, !srcloc !15
  %51 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 14, i32 3
  store i32 %50, ptr %51, align 4
  %52 = load ptr, ptr %37, align 4
  %53 = getelementptr i8, ptr %52, i32 16
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #11, !srcloc !15
  %55 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 14, i32 4
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = icmp ult i32 %57, 400001
  br i1 %58, label %83, label %59

59:                                               ; preds = %35
  %60 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 19
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  %64 = or i1 %62, %63
  br i1 %64, label %83, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 20
  %67 = load i32, ptr %66, align 8
  %68 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 21
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %67, %69
  %71 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 22
  %72 = load i32, ptr %71, align 8
  br i1 %70, label %73, label %75

73:                                               ; preds = %65
  %74 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %61, i32 noundef %67, i32 noundef %72, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %83

75:                                               ; preds = %65
  %76 = tail call i32 @regmap_write(ptr noundef nonnull %61, i32 noundef %69, i32 noundef %72) #11
  br label %83

77:                                               ; preds = %34, %29
  %78 = load ptr, ptr %4, align 8
  %79 = load ptr, ptr %78, align 4
  tail call void %79(ptr noundef %3, i32 noundef 1) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %7) #11
  %80 = load ptr, ptr %4, align 8
  %81 = getelementptr inbounds %struct.i2c_lock_operations, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  tail call void %82(ptr noundef %3, i32 noundef 1) #11
  br label %88

83:                                               ; preds = %75, %73, %59, %35
  %84 = load ptr, ptr %25, align 8
  %85 = tail call i32 @__pm_runtime_idle(ptr noundef %84, i32 noundef 4) #11
  %86 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #11
  %87 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #11
  br label %88

88:                                               ; preds = %83, %77, %19, %15
  %89 = phi i32 [ %27, %77 ], [ 0, %83 ], [ 0, %19 ], [ 0, %15 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %95

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 7
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %95

17:                                               ; preds = %12
  %18 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #11
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %103, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #11
  %22 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 14
  %23 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 @__pm_runtime_resume(ptr noundef %24, i32 noundef 4) #11
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #11, !srcloc !10
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 0, i32 -1, ptr elementtype(i32) %28) #11, !srcloc !13
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %103, label %32

32:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  br label %103

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #11, !srcloc !15
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %34, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !15
  %42 = and i32 %41, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %42) #11, !srcloc !16
  br label %43

43:                                               ; preds = %39, %33
  %44 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 14, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %34, align 4
  %47 = getelementptr i8, ptr %46, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #11, !srcloc !16
  %48 = load i32, ptr %22, align 4
  %49 = and i32 %48, -2
  %50 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %49) #11, !srcloc !16
  %51 = load i32, ptr %22, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %43
  %55 = load ptr, ptr %34, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #11, !srcloc !15
  %57 = or i32 %56, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %57) #11, !srcloc !16
  br label %58

58:                                               ; preds = %54, %43
  %59 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 14, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %34, align 4
  %62 = getelementptr i8, ptr %61, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #11, !srcloc !16
  %63 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 14, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %34, align 4
  %66 = getelementptr i8, ptr %65, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #11, !srcloc !16
  %67 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 14, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr %34, align 4
  %70 = getelementptr i8, ptr %69, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #11, !srcloc !16
  %71 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = icmp ult i32 %72, 400001
  br i1 %73, label %92, label %74

74:                                               ; preds = %58
  %75 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 19
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  %78 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  %79 = or i1 %77, %78
  br i1 %79, label %92, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 20
  %82 = load i32, ptr %81, align 8
  %83 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 21
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %82, %84
  %86 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 22
  %87 = load i32, ptr %86, align 8
  br i1 %85, label %88, label %90

88:                                               ; preds = %80
  %89 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %76, i32 noundef %82, i32 noundef %87, i32 noundef %87, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %92

90:                                               ; preds = %80
  %91 = tail call i32 @regmap_write(ptr noundef nonnull %76, i32 noundef %82, i32 noundef %87) #11
  br label %92

92:                                               ; preds = %90, %88, %74, %58
  %93 = load ptr, ptr %23, align 8
  %94 = tail call i32 @__pm_runtime_idle(ptr noundef %93, i32 noundef 4) #11
  br label %95

95:                                               ; preds = %92, %12, %8
  %96 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 4
  %97 = load ptr, ptr %96, align 8
  %98 = load ptr, ptr %97, align 4
  tail call void %98(ptr noundef %3, i32 noundef 1) #11
  %99 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %99) #11
  %100 = load ptr, ptr %96, align 8
  %101 = getelementptr inbounds %struct.i2c_lock_operations, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  tail call void %102(ptr noundef %3, i32 noundef 1) #11
  br label %103

103:                                              ; preds = %95, %32, %27, %17
  %104 = phi i32 [ 0, %95 ], [ %18, %17 ], [ %25, %27 ], [ %25, %32 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 12, i32 0
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = getelementptr %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 12, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = getelementptr %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 12, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 4
  %17 = load ptr, ptr %16, align 8
  tail call void @clk_disable(ptr noundef %17) #11
  tail call void @clk_unprepare(ptr noundef %17) #11
  br label %18

18:                                               ; preds = %15, %11, %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32f7_i2c_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 12, i32 0
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = getelementptr %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 12, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = getelementptr %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 12, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.stm32f7_i2c_dev, ptr %3, i32 0, i32 4
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 @clk_prepare(ptr noundef %17) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = tail call i32 @clk_enable(ptr noundef %17) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  tail call void @clk_unprepare(ptr noundef %17) #11
  br label %24

24:                                               ; preds = %23, %15
  %25 = phi i32 [ %21, %23 ], [ %18, %15 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.43) #12
  br label %26

26:                                               ; preds = %24, %20, %11, %7, %1
  %27 = phi i32 [ %25, %24 ], [ 0, %11 ], [ 0, %20 ], [ 0, %1 ], [ 0, %7 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 505277, i64 2147995248, i64 2147995274, i64 2147995321, i64 2147995343, i64 2147995371, i64 2147995391}
!11 = !{i64 2148007460, i64 2148007486, i64 2148007515, i64 2148007549, i64 2148007580, i64 2148007603}
!12 = !{i64 2148006967}
!13 = !{i64 491846, i64 491871, i64 491893, i64 491909, i64 491921, i64 491941, i64 491965, i64 491981, i64 491993}
!14 = !{i64 2148007093}
!15 = !{i64 5450922}
!16 = !{i64 5450504}
!17 = !{i64 5450702}
!18 = !{i64 5450307}
!19 = !{!"branch_weights", i32 1, i32 2000}
