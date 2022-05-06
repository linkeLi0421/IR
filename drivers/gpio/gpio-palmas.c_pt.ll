; ModuleID = '/llk/IR/drivers/gpio/gpio-palmas.c_pt.bc'
source_filename = "../drivers/gpio/gpio-palmas.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.palmas_device_data = type { i32 }
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
%struct.palmas_gpio = type { %struct.gpio_chip, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.71, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.71 = type { ptr }
%struct.palmas_platform_data = type { i32, i32, i8, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.palmas = type { ptr, [3 x ptr], [3 x ptr], i32, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }

@__initcall__kmod_gpio_palmas__252_201_palmas_gpio_init4 = internal global ptr @palmas_gpio_init, section ".initcall4.init", align 4
@palmas_gpio_driver = internal global %struct.platform_driver { ptr @palmas_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_palmas_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"palmas-gpio\00", align 1
@of_palmas_gpio_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,palmas-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65913-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65914-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps80036-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tps80036_dev_data }, %struct.of_device_id zeroinitializer], align 4
@palmas_dev_data = internal constant %struct.palmas_device_data { i32 8 }, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not register gpiochip, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Reg 0x%02x update failed, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Reg 0x%02x write failed, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Reg 0x%02x read failed, %d\0A\00", align 1
@tps80036_dev_data = internal constant %struct.palmas_device_data { i32 16 }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_gpio_palmas__252_201_palmas_gpio_init4], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @palmas_gpio_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @palmas_gpio_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_gpio_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @of_device_get_match_data(ptr noundef %2) #5
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 308, i32 noundef 3520) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %49, label %10

10:                                               ; preds = %1
  %11 = icmp eq ptr %7, null
  %12 = select i1 %11, ptr @palmas_dev_data, ptr %7
  %13 = getelementptr inbounds %struct.palmas_gpio, ptr %8, i32 0, i32 1
  store ptr %6, ptr %13, align 4
  %14 = getelementptr inbounds %struct.gpio_chip, ptr %8, i32 0, i32 4
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load ptr, ptr %2, align 4
  br label %20

20:                                               ; preds = %18, %10
  %21 = phi ptr [ %19, %18 ], [ %16, %10 ]
  store ptr %21, ptr %8, align 4
  %22 = load i32, ptr %12, align 4
  %23 = trunc i32 %22 to i16
  %24 = getelementptr inbounds %struct.gpio_chip, ptr %8, i32 0, i32 20
  store i16 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.gpio_chip, ptr %8, i32 0, i32 23
  store i8 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.gpio_chip, ptr %8, i32 0, i32 8
  store ptr @palmas_gpio_input, ptr %26, align 4
  %27 = getelementptr inbounds %struct.gpio_chip, ptr %8, i32 0, i32 9
  store ptr @palmas_gpio_output, ptr %27, align 4
  %28 = getelementptr inbounds %struct.gpio_chip, ptr %8, i32 0, i32 15
  store ptr @palmas_gpio_to_irq, ptr %28, align 4
  %29 = getelementptr inbounds %struct.gpio_chip, ptr %8, i32 0, i32 12
  store ptr @palmas_gpio_set, ptr %29, align 4
  %30 = getelementptr inbounds %struct.gpio_chip, ptr %8, i32 0, i32 10
  store ptr @palmas_gpio_get, ptr %30, align 4
  %31 = getelementptr inbounds %struct.gpio_chip, ptr %8, i32 0, i32 2
  store ptr %2, ptr %31, align 4
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.palmas_platform_data, ptr %34, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %20
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i32 [ -1, %40 ], [ %38, %36 ]
  %43 = getelementptr inbounds %struct.gpio_chip, ptr %8, i32 0, i32 19
  store i32 %42, ptr %43, align 4
  %44 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) #5
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %44) #6
  br label %49

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %48, align 8
  br label %49

49:                                               ; preds = %47, %46, %1
  %50 = phi i32 [ %44, %46 ], [ %44, %47 ], [ -12, %1 ]
  ret i32 %50
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_gpio_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.palmas_gpio, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = and i32 %1, 7
  %7 = icmp ult i32 %1, 8
  %8 = select i1 %7, i32 1, i32 10
  %9 = shl nuw nsw i32 1, %6
  %10 = or i32 %8, 128
  %11 = getelementptr %struct.palmas, ptr %5, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %10, i32 noundef %9, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.2, i32 noundef %8, i32 noundef %13) #6
  br label %18

18:                                               ; preds = %15, %2
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_gpio_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.palmas_gpio, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = and i32 %1, 7
  %8 = icmp ult i32 %1, 8
  %9 = select i1 %8, i32 1, i32 10
  %10 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %11 = getelementptr inbounds %struct.palmas_gpio, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq i32 %2, 0
  %14 = select i1 %13, i32 4, i32 5
  %15 = shl nuw nsw i32 1, %7
  %16 = or i32 %14, 128
  %17 = getelementptr %struct.palmas, ptr %12, i32 0, i32 2, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef %16, i32 noundef %15) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.3, i32 noundef %14, i32 noundef %19) #6
  br label %24

24:                                               ; preds = %21, %3
  %25 = or i32 %9, 128
  %26 = getelementptr %struct.palmas, ptr %6, i32 0, i32 2, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef %25, i32 noundef %15, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.2, i32 noundef %9, i32 noundef %28) #6
  br label %33

33:                                               ; preds = %30, %24
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_gpio_to_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.palmas_gpio, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = add i32 %1, 24
  %7 = getelementptr inbounds %struct.palmas, ptr %5, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regmap_irq_get_virq(ptr noundef %8, i32 noundef %6) #5
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @palmas_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.palmas_gpio, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = and i32 %1, 7
  %8 = icmp ult i32 %1, 8
  %9 = icmp eq i32 %2, 0
  %10 = select i1 %9, i32 13, i32 14
  %11 = select i1 %9, i32 4, i32 5
  %12 = select i1 %8, i32 %11, i32 %10
  %13 = shl nuw nsw i32 1, %7
  %14 = or i32 %12, 128
  %15 = getelementptr %struct.palmas, ptr %6, i32 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef %14, i32 noundef %13) #5
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.3, i32 noundef %12, i32 noundef %17) #6
  br label %22

22:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.palmas_gpio, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = icmp ult i32 %1, 8
  %8 = select i1 %7, i32 1, i32 10
  %9 = or i32 %8, 128
  %10 = getelementptr %struct.palmas, ptr %6, i32 0, i32 2, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @regmap_read(ptr noundef %11, i32 noundef %9, ptr noundef nonnull %3) #5
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.4, i32 noundef %8, i32 noundef %12) #6
  br label %37

17:                                               ; preds = %2
  %18 = and i32 %1, 7
  %19 = load i32, ptr %3, align 4
  %20 = shl nuw nsw i32 1, %18
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %7, i32 2, i32 11
  %24 = select i1 %7, i32 0, i32 9
  %25 = select i1 %22, i32 %24, i32 %23
  %26 = or i32 %25, 128
  %27 = load ptr, ptr %10, align 4
  %28 = call i32 @regmap_read(ptr noundef %27, i32 noundef %26, ptr noundef nonnull %3) #5
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.4, i32 noundef %25, i32 noundef %28) #6
  br label %37

33:                                               ; preds = %17
  %34 = load i32, ptr %3, align 4
  %35 = lshr i32 %34, %18
  %36 = and i32 %35, 1
  br label %37

37:                                               ; preds = %33, %30, %14
  %38 = phi i32 [ %12, %14 ], [ %28, %30 ], [ %36, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
