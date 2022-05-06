; ModuleID = '/llk/IR/drivers/gpio/gpio-raspberrypi-exp.c_pt.bc'
source_filename = "../drivers/gpio/gpio-raspberrypi-exp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.rpi_exp_gpio = type { %struct.gpio_chip, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.gpio_get_config = type { i32, i32, i32, i32, i32 }
%struct.gpio_set_config = type { i32, i32, i32, i32, i32, i32 }
%struct.gpio_get_set_state = type { i32, i32 }

@__initcall__kmod_gpio_raspberrypi_exp__206_250_rpi_exp_gpio_driver_init6 = internal global ptr @rpi_exp_gpio_driver_init, section ".initcall6.init", align 4
@rpi_exp_gpio_driver = internal global %struct.platform_driver { ptr @rpi_exp_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rpi_exp_gpio_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_rpi_exp_gpio_driver_exit = internal global ptr @rpi_exp_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file207 = internal constant [60 x i8] c"gpio_raspberrypi_exp.file=drivers/gpio/gpio-raspberrypi-exp\00", section ".modinfo", align 1
@__UNIQUE_ID_license208 = internal constant [33 x i8] c"gpio_raspberrypi_exp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author209 = internal constant [76 x i8] c"gpio_raspberrypi_exp.author=Dave Stevenson <dave.stevenson@raspberrypi.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description210 = internal constant [69 x i8] c"gpio_raspberrypi_exp.description=Raspberry Pi 3 expander GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias211 = internal constant [49 x i8] c"gpio_raspberrypi_exp.alias=platform:rpi-exp-gpio\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [21 x i8] c"raspberrypi-exp-gpio\00", align 1
@rpi_exp_gpio_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"raspberrypi,firmware-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Missing firmware node\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to set GPIO %u to input (%d %x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to get GPIO %u config (%d %x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed to set GPIO %u to output (%d %x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to get GPIO %u state (%d %x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Failed to set GPIO %u state (%d %x)\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias211, ptr @__UNIQUE_ID_author209, ptr @__UNIQUE_ID_description210, ptr @__UNIQUE_ID_file207, ptr @__UNIQUE_ID_license208, ptr @__exitcall_rpi_exp_gpio_driver_exit, ptr @__initcall__kmod_gpio_raspberrypi_exp__206_250_rpi_exp_gpio_driver_init6, ptr @rpi_exp_gpio_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rpi_exp_gpio_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rpi_exp_gpio_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rpi_exp_gpio_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rpi_exp_gpio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpi_exp_gpio_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_get_parent(ptr noundef %4) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  br label %27

8:                                                ; preds = %1
  %9 = tail call ptr @devm_rpi_firmware_get(ptr noundef %2, ptr noundef nonnull %5) #6
  tail call void @of_node_put(ptr noundef nonnull %5) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %8
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 308, i32 noundef 3520) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rpi_exp_gpio, ptr %12, i32 0, i32 1
  store ptr %9, ptr %15, align 4
  %16 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 2
  store ptr %2, ptr %16, align 4
  store ptr @.str, ptr %12, align 4
  %17 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 4
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 19
  store i32 -1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 20
  store i16 8, ptr %19, align 4
  %20 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 8
  store ptr @rpi_exp_gpio_dir_in, ptr %20, align 4
  %21 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 9
  store ptr @rpi_exp_gpio_dir_out, ptr %21, align 4
  %22 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 7
  store ptr @rpi_exp_gpio_get_direction, ptr %22, align 4
  %23 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 10
  store ptr @rpi_exp_gpio_get, ptr %23, align 4
  %24 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 12
  store ptr @rpi_exp_gpio_set, ptr %24, align 4
  %25 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 23
  store i8 1, ptr %25, align 4
  %26 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef null, ptr noundef null) #6
  br label %27

27:                                               ; preds = %14, %11, %8, %7
  %28 = phi i32 [ %26, %14 ], [ -2, %7 ], [ -517, %8 ], [ -12, %11 ]
  ret i32 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rpi_firmware_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpi_exp_gpio_dir_in(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.gpio_get_config, align 4
  %4 = alloca %struct.gpio_set_config, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %6 = add i32 %1, 128
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.gpio_set_config, ptr %4, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.gpio_set_config, ptr %4, i32 0, i32 3
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.gpio_set_config, ptr %4, i32 0, i32 4
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.gpio_set_config, ptr %4, i32 0, i32 5
  store i32 0, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #6
  %11 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %11, i8 0, i32 16, i1 false) #6, !annotation !8
  %12 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  store i32 %6, ptr %3, align 4
  %13 = getelementptr inbounds %struct.rpi_exp_gpio, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @rpi_firmware_property(ptr noundef %14, i32 noundef 196675, ptr noundef nonnull %3, i32 noundef 20) #6
  %16 = icmp ne i32 %15, 0
  %17 = load i32, ptr %3, align 4
  %18 = icmp ne i32 %17, 0
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.3, i32 noundef %1, i32 noundef %15, i32 noundef %17) #7
  br i1 %16, label %27, label %23

23:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  br label %43

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.gpio_get_config, ptr %3, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i32 [ %26, %24 ], [ %15, %20 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.gpio_set_config, ptr %4, i32 0, i32 2
  store i32 %28, ptr %31, align 4
  %32 = getelementptr inbounds %struct.rpi_exp_gpio, ptr %5, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 @rpi_firmware_property(ptr noundef %33, i32 noundef 229443, ptr noundef nonnull %4, i32 noundef 24) #6
  %35 = icmp ne i32 %34, 0
  %36 = load i32, ptr %4, align 4
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %35, i1 true, i1 %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.2, i32 noundef %1, i32 noundef %34, i32 noundef %36) #7
  %42 = select i1 %35, i32 %34, i32 -5
  br label %43

43:                                               ; preds = %39, %30, %27, %23
  %44 = phi i32 [ %42, %39 ], [ %28, %27 ], [ 0, %30 ], [ -5, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpi_exp_gpio_dir_out(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.gpio_get_config, align 4
  %5 = alloca %struct.gpio_set_config, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %7 = add i32 %1, 128
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.gpio_set_config, ptr %5, i32 0, i32 1
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.gpio_set_config, ptr %5, i32 0, i32 3
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.gpio_set_config, ptr %5, i32 0, i32 4
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.gpio_set_config, ptr %5, i32 0, i32 5
  store i32 %2, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #6
  %12 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %12, i8 0, i32 16, i1 false) #6, !annotation !8
  %13 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  store i32 %7, ptr %4, align 4
  %14 = getelementptr inbounds %struct.rpi_exp_gpio, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @rpi_firmware_property(ptr noundef %15, i32 noundef 196675, ptr noundef nonnull %4, i32 noundef 20) #6
  %17 = icmp ne i32 %16, 0
  %18 = load i32, ptr %4, align 4
  %19 = icmp ne i32 %18, 0
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.3, i32 noundef %1, i32 noundef %16, i32 noundef %18) #7
  br i1 %17, label %28, label %24

24:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #6
  br label %44

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.gpio_get_config, ptr %4, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i32 [ %27, %25 ], [ %16, %21 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #6
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.gpio_set_config, ptr %5, i32 0, i32 2
  store i32 %29, ptr %32, align 4
  %33 = getelementptr inbounds %struct.rpi_exp_gpio, ptr %6, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 @rpi_firmware_property(ptr noundef %34, i32 noundef 229443, ptr noundef nonnull %5, i32 noundef 24) #6
  %36 = icmp ne i32 %35, 0
  %37 = load i32, ptr %5, align 4
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.4, i32 noundef %1, i32 noundef %35, i32 noundef %37) #7
  %43 = select i1 %36, i32 %35, i32 -5
  br label %44

44:                                               ; preds = %40, %31, %28, %24
  %45 = phi i32 [ %43, %40 ], [ %29, %28 ], [ 0, %31 ], [ -5, %24 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpi_exp_gpio_get_direction(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.gpio_get_config, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #6
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 16, i1 false), !annotation !8
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %6 = add i32 %1, 128
  store i32 %6, ptr %3, align 4
  %7 = getelementptr inbounds %struct.rpi_exp_gpio, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @rpi_firmware_property(ptr noundef %8, i32 noundef 196675, ptr noundef nonnull %3, i32 noundef 20) #6
  %10 = icmp ne i32 %9, 0
  %11 = load i32, ptr %3, align 4
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.3, i32 noundef %1, i32 noundef %9, i32 noundef %11) #7
  %17 = select i1 %10, i32 %9, i32 -5
  br label %23

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.gpio_get_config, ptr %3, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i32 [ %17, %14 ], [ %22, %18 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpi_exp_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.gpio_get_set_state, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %5 = add i32 %1, 128
  store i32 %5, ptr %3, align 8
  %6 = getelementptr inbounds %struct.gpio_get_set_state, ptr %3, i32 0, i32 1
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rpi_exp_gpio, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @rpi_firmware_property(ptr noundef %8, i32 noundef 196673, ptr noundef nonnull %3, i32 noundef 8) #6
  %10 = icmp ne i32 %9, 0
  %11 = load i32, ptr %3, align 8
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %9, i32 noundef %11) #7
  %17 = select i1 %10, i32 %9, i32 -5
  br label %22

18:                                               ; preds = %2
  %19 = load i32, ptr %6, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %17, %14 ], [ %21, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpi_exp_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.gpio_get_set_state, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %6 = add i32 %1, 128
  store i32 %6, ptr %4, align 8
  %7 = getelementptr inbounds %struct.gpio_get_set_state, ptr %4, i32 0, i32 1
  store i32 %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rpi_exp_gpio, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @rpi_firmware_property(ptr noundef %9, i32 noundef 229441, ptr noundef nonnull %4, i32 noundef 8) #6
  %11 = icmp ne i32 %10, 0
  %12 = load i32, ptr %4, align 8
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.6, i32 noundef %1, i32 noundef %10, i32 noundef %12) #7
  br label %18

18:                                               ; preds = %15, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpi_firmware_property(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
!8 = !{!"auto-init"}
