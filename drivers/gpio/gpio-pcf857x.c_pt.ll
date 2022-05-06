; ModuleID = '/llk/IR/drivers/gpio/gpio-pcf857x.c_pt.bc'
source_filename = "../drivers/gpio/gpio-pcf857x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type {}
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.pcf857x_platform_data = type { i32, i32, ptr, ptr, ptr }
%struct.pcf857x = type { %struct.gpio_chip, %struct.irq_chip, ptr, %struct.mutex, i32, i32, i32, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.73, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.73 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_pcf857x__247_441_pcf857x_init4 = internal global ptr @pcf857x_init, section ".initcall4.init", align 4
@pcf857x_driver = internal global %struct.i2c_driver { i32 0, ptr @pcf857x_probe, ptr @pcf857x_remove, ptr null, ptr @pcf857x_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pcf857x_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pcf857x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_pcf857x_exit = internal global ptr @pcf857x_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file248 = internal constant [44 x i8] c"gpio_pcf857x.file=drivers/gpio/gpio-pcf857x\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [25 x i8] c"gpio_pcf857x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [35 x i8] c"gpio_pcf857x.author=David Brownell\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"pcf857x\00", align 1
@pcf857x_of_table = internal constant [14 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcf8574\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcf8574a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca8574\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9670\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9672\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9674\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcf8575\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca8575\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9671\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9673\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9675\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7328\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7329\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@pcf857x_id = internal constant [14 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pcf8574\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"pcf8574a\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"pca8574\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"pca9670\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"pca9672\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"pca9674\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"pcf8575\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.i2c_device_id { [20 x i8] c"pca8575\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.i2c_device_id { [20 x i8] c"pca9671\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.i2c_device_id { [20 x i8] c"pca9673\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.i2c_device_id { [20 x i8] c"pca9675\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.i2c_device_id { [20 x i8] c"max7328\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"max7329\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"lines-initial-states\00", align 1
@pcf857x_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"&gpio->lock\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"setup --> %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"probed\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%s --> %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"teardown\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_pcf857x_exit, ptr @__initcall__kmod_gpio_pcf857x__247_441_pcf857x_init4, ptr @pcf857x_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pcf857x_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pcf857x_driver) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pcf857x_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @pcf857x_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcf857x_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  br label %18

13:                                               ; preds = %2
  %14 = icmp eq ptr %7, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.pcf857x_platform_data, ptr %7, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %4, align 4
  br label %18

18:                                               ; preds = %15, %13, %11
  %19 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 484, i32 noundef 3520) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %140, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.pcf857x, ptr %19, i32 0, i32 3
  call void @__mutex_init(ptr noundef %22, ptr noundef nonnull @.str.2, ptr noundef nonnull @pcf857x_probe.__key) #8
  %23 = icmp eq ptr %7, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %7, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi i32 [ %25, %24 ], [ -1, %21 ]
  %28 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 19
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 23
  store i8 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 2
  store ptr %5, ptr %30, align 4
  %31 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 4
  store ptr null, ptr %31, align 4
  %32 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 10
  store ptr @pcf857x_get, ptr %32, align 4
  %33 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 12
  store ptr @pcf857x_set, ptr %33, align 4
  %34 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 8
  store ptr @pcf857x_input, ptr %34, align 4
  %35 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 9
  store ptr @pcf857x_output, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = trunc i32 %37 to i16
  %39 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 20
  store i16 %38, ptr %39, align 4
  switch i16 %38, label %140 [
    i16 8, label %40
    i16 16, label %54
  ]

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.pcf857x, ptr %19, i32 0, i32 7
  store ptr @i2c_write_le8, ptr %41, align 4
  %42 = getelementptr inbounds %struct.pcf857x, ptr %19, i32 0, i32 8
  store ptr @i2c_read_le8, ptr %42, align 4
  %43 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.i2c_adapter, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.i2c_algorithm, ptr %46, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = call i32 %48(ptr noundef %44) #8
  %50 = and i32 %49, 393216
  %51 = icmp eq i32 %50, 393216
  br i1 %51, label %52, label %140

52:                                               ; preds = %40
  %53 = call i32 @i2c_smbus_read_byte(ptr noundef %0) #8
  br label %77

54:                                               ; preds = %26
  %55 = getelementptr inbounds %struct.pcf857x, ptr %19, i32 0, i32 7
  store ptr @i2c_write_le16, ptr %55, align 4
  %56 = getelementptr inbounds %struct.pcf857x, ptr %19, i32 0, i32 8
  store ptr @i2c_read_le16, ptr %56, align 4
  %57 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.i2c_adapter, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.i2c_algorithm, ptr %60, i32 0, i32 4
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 %62(ptr noundef %58) #8
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %140, label %66

66:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2, !annotation !8
  %67 = call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 2, i16 noundef zeroext 1) #8
  %68 = icmp slt i32 %67, 0
  %69 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 8
  %73 = load i8, ptr %3, align 2
  %74 = zext i8 %73 to i32
  %75 = or i32 %72, %74
  %76 = select i1 %68, i32 %67, i32 %75
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  br label %77

77:                                               ; preds = %66, %52
  %78 = phi i32 [ %53, %52 ], [ %76, %66 ]
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %140, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 2
  store ptr %81, ptr %19, align 4
  %82 = getelementptr inbounds %struct.pcf857x, ptr %19, i32 0, i32 2
  store ptr %0, ptr %82, align 4
  %83 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %19, ptr %83, align 8
  %84 = load i32, ptr %4, align 4
  %85 = xor i32 %84, -1
  %86 = getelementptr inbounds %struct.pcf857x, ptr %19, i32 0, i32 4
  store i32 %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.pcf857x, ptr %19, i32 0, i32 8
  %88 = load ptr, ptr %87, align 4
  %89 = call i32 %88(ptr noundef %0) #8
  %90 = getelementptr inbounds %struct.pcf857x, ptr %19, i32 0, i32 5
  store i32 %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %122, label %94

94:                                               ; preds = %80
  %95 = getelementptr inbounds %struct.pcf857x, ptr %19, i32 0, i32 1, i32 1
  store ptr @.str, ptr %95, align 4
  %96 = getelementptr inbounds %struct.pcf857x, ptr %19, i32 0, i32 1, i32 4
  store ptr @pcf857x_irq_enable, ptr %96, align 4
  %97 = getelementptr inbounds %struct.pcf857x, ptr %19, i32 0, i32 1, i32 5
  store ptr @pcf857x_irq_disable, ptr %97, align 4
  %98 = getelementptr inbounds %struct.pcf857x, ptr %19, i32 0, i32 1, i32 6
  store ptr @noop, ptr %98, align 4
  %99 = getelementptr inbounds %struct.pcf857x, ptr %19, i32 0, i32 1, i32 7
  store ptr @noop, ptr %99, align 4
  %100 = getelementptr inbounds %struct.pcf857x, ptr %19, i32 0, i32 1, i32 9
  store ptr @noop, ptr %100, align 4
  %101 = getelementptr inbounds %struct.pcf857x, ptr %19, i32 0, i32 1, i32 14
  store ptr @pcf857x_irq_set_wake, ptr %101, align 4
  %102 = getelementptr inbounds %struct.pcf857x, ptr %19, i32 0, i32 1, i32 15
  store ptr @pcf857x_irq_bus_lock, ptr %102, align 4
  %103 = getelementptr inbounds %struct.pcf857x, ptr %19, i32 0, i32 1, i32 16
  store ptr @pcf857x_irq_bus_sync_unlock, ptr %103, align 4
  %104 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %94
  %108 = load ptr, ptr %5, align 4
  br label %109

109:                                              ; preds = %107, %94
  %110 = phi ptr [ %108, %107 ], [ %105, %94 ]
  %111 = call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %92, ptr noundef null, ptr noundef nonnull @pcf857x_irq, i32 noundef 8322, ptr noundef %110, ptr noundef nonnull %19) #8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %140

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.pcf857x, ptr %19, i32 0, i32 1
  %115 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 37
  store ptr %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 37, i32 13
  store ptr null, ptr %116, align 4
  %117 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 37, i32 15
  store i32 0, ptr %117, align 4
  %118 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 37, i32 16
  store ptr null, ptr %118, align 4
  %119 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 37, i32 10
  store i32 0, ptr %119, align 4
  %120 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 37, i32 9
  store ptr @handle_level_irq, ptr %120, align 4
  %121 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 37, i32 18
  store i8 1, ptr %121, align 4
  br label %122

122:                                              ; preds = %113, %80
  %123 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %5, ptr noundef nonnull %19, ptr noundef nonnull %19, ptr noundef null, ptr noundef null) #8
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %140, label %125

125:                                              ; preds = %122
  br i1 %23, label %139, label %126

126:                                              ; preds = %125
  %127 = getelementptr inbounds %struct.pcf857x_platform_data, ptr %7, i32 0, i32 2
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %139, label %130

130:                                              ; preds = %126
  %131 = load i32, ptr %28, align 4
  %132 = load i16, ptr %39, align 4
  %133 = zext i16 %132 to i32
  %134 = getelementptr inbounds %struct.pcf857x_platform_data, ptr %7, i32 0, i32 4
  %135 = load ptr, ptr %134, align 4
  %136 = call i32 %128(ptr noundef %0, i32 noundef %131, i32 noundef %133, ptr noundef %135) #8
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %136) #9
  br label %139

139:                                              ; preds = %138, %130, %126, %125
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.4) #9
  br label %140

140:                                              ; preds = %139, %122, %109, %77, %54, %40, %26, %18
  %141 = phi i32 [ 0, %139 ], [ -12, %18 ], [ %78, %77 ], [ %123, %122 ], [ %111, %109 ], [ -22, %26 ], [ -5, %54 ], [ -5, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcf857x_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %4, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.pcf857x_platform_data, ptr %4, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gpio_chip, ptr %6, i32 0, i32 19
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.gpio_chip, ptr %6, i32 0, i32 20
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.pcf857x_platform_data, ptr %4, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %10(ptr noundef %0, i32 noundef %14, i32 noundef %17, ptr noundef %19) #8
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %20) #9
  br label %23

23:                                               ; preds = %22, %12, %8, %1
  %24 = phi i32 [ %20, %22 ], [ %20, %12 ], [ 0, %8 ], [ 0, %1 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcf857x_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pcf857x, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pcf857x, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 20
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = shl nsw i32 -1, %10
  %12 = xor i32 %11, -1
  %13 = tail call i32 %5(ptr noundef %7, i32 noundef %12) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcf857x_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.pcf857x, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pcf857x, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %5(ptr noundef %7) #8
  %9 = icmp slt i32 %8, 0
  %10 = lshr i32 %8, %1
  %11 = and i32 %10, 1
  %12 = select i1 %9, i32 %8, i32 %11
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcf857x_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = shl nuw i32 1, %1
  %6 = getelementptr inbounds %struct.pcf857x, ptr %4, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pcf857x, ptr %4, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, %5
  store i32 %11, ptr %9, align 4
  br label %17

12:                                               ; preds = %3
  %13 = xor i32 %5, -1
  %14 = getelementptr inbounds %struct.pcf857x, ptr %4, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, %13
  store i32 %16, ptr %14, align 4
  br label %17

17:                                               ; preds = %12, %8
  %18 = phi i32 [ %16, %12 ], [ %11, %8 ]
  %19 = getelementptr inbounds %struct.pcf857x, ptr %4, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.pcf857x, ptr %4, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %20(ptr noundef %22, i32 noundef %18) #8
  tail call void @mutex_unlock(ptr noundef %6) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcf857x_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.pcf857x, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = shl nuw i32 1, %1
  %6 = getelementptr inbounds %struct.pcf857x, ptr %3, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, %5
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.pcf857x, ptr %3, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pcf857x, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %10(ptr noundef %12, i32 noundef %8) #8
  tail call void @mutex_unlock(ptr noundef %4) #8
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcf857x_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = shl nuw i32 1, %1
  %6 = getelementptr inbounds %struct.pcf857x, ptr %4, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pcf857x, ptr %4, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, %5
  store i32 %11, ptr %9, align 4
  br label %17

12:                                               ; preds = %3
  %13 = xor i32 %5, -1
  %14 = getelementptr inbounds %struct.pcf857x, ptr %4, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, %13
  store i32 %16, ptr %14, align 4
  br label %17

17:                                               ; preds = %12, %8
  %18 = phi i32 [ %16, %12 ], [ %11, %8 ]
  %19 = getelementptr inbounds %struct.pcf857x, ptr %4, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.pcf857x, ptr %4, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %20(ptr noundef %22, i32 noundef %18) #8
  tail call void @mutex_unlock(ptr noundef %6) #8
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_write_le8(ptr noundef %0, i32 noundef %1) #2 {
  %3 = trunc i32 %1 to i8
  %4 = tail call i32 @i2c_smbus_write_byte(ptr noundef %0, i8 noundef zeroext %3) #8
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_read_le8(ptr noundef %0) #2 {
  %2 = tail call i32 @i2c_smbus_read_byte(ptr noundef %0) #8
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_write_le16(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  %4 = trunc i32 %1 to i8
  store i8 %4, ptr %3, align 2
  %5 = getelementptr inbounds i8, ptr %3, i32 1
  %6 = lshr i32 %1, 8
  %7 = trunc i32 %6 to i8
  store i8 %7, ptr %5, align 1
  %8 = call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 2, i16 noundef zeroext 0) #8
  %9 = call i32 @llvm.smin.i32(i32 %8, i32 0)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_read_le16(ptr noundef %0) #2 {
  %2 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2, i16 noundef zeroext 1) #8
  %4 = icmp slt i32 %3, 0
  %5 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 8
  %9 = load i8, ptr %2, align 2
  %10 = zext i8 %9 to i32
  %11 = or i32 %8, %10
  %12 = select i1 %4, i32 %3, i32 %11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @pcf857x_irq_enable(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl nuw i32 1, %5
  %7 = getelementptr inbounds %struct.pcf857x, ptr %3, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, %6
  store i32 %9, ptr %7, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @pcf857x_irq_disable(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl nuw i32 1, %5
  %7 = xor i32 %6, -1
  %8 = getelementptr inbounds %struct.pcf857x, ptr %3, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  store i32 %10, ptr %8, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @noop(ptr nocapture noundef %0) #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcf857x_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pcf857x, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef %1) #8
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcf857x_irq_bus_lock(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pcf857x, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcf857x_irq_bus_sync_unlock(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pcf857x, ptr %3, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcf857x_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct.pcf857x, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pcf857x, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %6(ptr noundef %8) #8
  %10 = getelementptr inbounds %struct.pcf857x, ptr %1, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %10) #8
  %11 = getelementptr inbounds %struct.pcf857x, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = xor i32 %12, %9
  %14 = getelementptr inbounds %struct.pcf857x, ptr %1, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %13, %15
  store i32 %16, ptr %4, align 4
  store i32 %9, ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef %10) #8
  %17 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %19, i32 noundef 0) #8
  %21 = load i16, ptr %17, align 4
  %22 = zext i16 %21 to i32
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi i32 [ %20, %24 ], [ %36, %26 ]
  %28 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %29 = call ptr @__irq_resolve_mapping(ptr noundef %28, i32 noundef %27, ptr noundef nonnull %3) #8
  %30 = icmp eq ptr %29, null
  %31 = load i32, ptr %3, align 4
  %32 = select i1 %30, i32 0, i32 %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @handle_nested_irq(i32 noundef %32) #8
  %33 = load i16, ptr %17, align 4
  %34 = zext i16 %33 to i32
  %35 = add nuw i32 %27, 1
  %36 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %34, i32 noundef %35) #8
  %37 = load i16, ptr %17, align 4
  %38 = zext i16 %37 to i32
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %26, label %40

40:                                               ; preds = %26, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
