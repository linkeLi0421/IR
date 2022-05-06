; ModuleID = '/llk/IR/drivers/mfd/as3722.c_pt.bc'
source_filename = "../drivers/mfd/as3722.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.as3722 = type { ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_as3722__247_453_as3722_i2c_driver_init6 = internal global ptr @as3722_i2c_driver_init, section ".initcall6.init", align 4
@as3722_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @as3722_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @as3722_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @as3722_pm_ops, ptr null, ptr null }, ptr @as3722_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_as3722_i2c_driver_exit = internal global ptr @as3722_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [48 x i8] c"as3722.description=I2C support for AS3722 PMICs\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [58 x i8] c"as3722.author=Florian Lobmaier <florian.lobmaier@ams.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [53 x i8] c"as3722.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [31 x i8] c"as3722.file=drivers/mfd/as3722\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [19 x i8] c"as3722.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"as3722\00", align 1
@as3722_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ams,as3722\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@as3722_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @as3722_i2c_suspend, ptr @as3722_i2c_resume, ptr @as3722_i2c_suspend, ptr @as3722_i2c_resume, ptr @as3722_i2c_suspend, ptr @as3722_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@as3722_i2c_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"as3722\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@as3722_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 244, ptr @as3722_writable_table, ptr @as3722_readable_table, ptr @as3722_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"regmap init failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to add regmap irq: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"CTRLsequ1 update failed: %d\0A\00", align 1
@as3722_devs = internal constant [6 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.16, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.17, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.18, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @as3722_rtc_resource, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.19, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @as3722_adc_resource, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.20, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.21, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to add MFD devices: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Device Tree not found\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Invalid IRQ: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"ams,enable-internal-int-pullup\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"ams,enable-internal-i2c-pullup\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"ams,enable-ac-ok-power-on\00", align 1
@as3722_writable_table = internal constant %struct.regmap_access_table { ptr @as3722_writable_ranges, i32 13, ptr null, i32 0 }, align 4
@as3722_readable_table = internal constant %struct.regmap_access_table { ptr @as3722_readable_ranges, i32 14, ptr null, i32 0 }, align 4
@as3722_volatile_table = internal constant %struct.regmap_access_table { ptr null, i32 0, ptr @as3722_cacheable_ranges, i32 2 }, align 4
@as3722_writable_ranges = internal constant [13 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 6 }, %struct.regmap_range { i32 8, i32 23 }, %struct.regmap_range { i32 25, i32 32 }, %struct.regmap_range { i32 34, i32 36 }, %struct.regmap_range { i32 39, i32 66 }, %struct.regmap_range { i32 70, i32 70 }, %struct.regmap_range { i32 72, i32 74 }, %struct.regmap_range { i32 77, i32 85 }, %struct.regmap_range { i32 87, i32 109 }, %struct.regmap_range { i32 116, i32 125 }, %struct.regmap_range { i32 128, i32 129 }, %struct.regmap_range { i32 134, i32 138 }, %struct.regmap_range { i32 158, i32 158 }], align 4
@as3722_readable_ranges = internal constant [14 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 6 }, %struct.regmap_range { i32 8, i32 23 }, %struct.regmap_range { i32 25, i32 36 }, %struct.regmap_range { i32 39, i32 66 }, %struct.regmap_range { i32 70, i32 70 }, %struct.regmap_range { i32 72, i32 74 }, %struct.regmap_range { i32 77, i32 85 }, %struct.regmap_range { i32 87, i32 109 }, %struct.regmap_range { i32 111, i32 111 }, %struct.regmap_range { i32 115, i32 125 }, %struct.regmap_range { i32 128, i32 138 }, %struct.regmap_range { i32 144, i32 145 }, %struct.regmap_range { i32 158, i32 158 }, %struct.regmap_range { i32 167, i32 167 }], align 4
@as3722_cacheable_ranges = internal constant [2 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 27 }, %struct.regmap_range { i32 77, i32 79 }], align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"ASIC_ID1 read failed: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Device is not AS3722, ID is 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"ASIC_ID2 read failed: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"AS3722 with revision 0x%x found\0A\00", align 1
@as3722_irqs = internal constant [32 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 128, %struct.regmap_irq_type zeroinitializer }], align 4
@as3722_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str, i32 0, i32 0, ptr null, i32 0, i32 120, i32 116, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 4, ptr @as3722_irqs, i32 32, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [33 x i8] c"IOVOLTAGE_REG update failed: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"as3722-pinctrl\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"as3722-regulator\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"as3722-rtc\00", align 1
@as3722_rtc_resource = internal constant [1 x %struct.resource] [%struct.resource { i32 16, i32 16, ptr @.str.22, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.19 = private unnamed_addr constant [11 x i8] c"as3722-adc\00", align 1
@as3722_adc_resource = internal constant [1 x %struct.resource] [%struct.resource { i32 31, i32 31, ptr @.str.19, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.20 = private unnamed_addr constant [17 x i8] c"as3722-power-off\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"as3722-wdt\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"as3722-rtc-alarm\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_as3722_i2c_driver_exit, ptr @__initcall__kmod_as3722__247_453_as3722_i2c_driver_init6, ptr @as3722_i2c_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @as3722_i2c_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @as3722_i2c_driver) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @as3722_i2c_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @as3722_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_i2c_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 24, i32 noundef 3520) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %104, label %7

7:                                                ; preds = %2
  store ptr %4, ptr %5, align 4
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.as3722, ptr %5, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %5, ptr %11, align 8
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #6
  br label %104

16:                                               ; preds = %7
  %17 = tail call ptr @irq_get_irq_data(i32 noundef %9) #5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %20) #6
  br label %104

21:                                               ; preds = %16
  %22 = tail call ptr @of_find_property(ptr noundef nonnull %13, ptr noundef nonnull @.str.7, ptr noundef null) #5
  %23 = icmp ne ptr %22, null
  %24 = getelementptr inbounds %struct.as3722, ptr %5, i32 0, i32 4
  %25 = zext i1 %23 to i8
  store i8 %25, ptr %24, align 4
  %26 = tail call ptr @of_find_property(ptr noundef nonnull %13, ptr noundef nonnull @.str.8, ptr noundef null) #5
  %27 = icmp ne ptr %26, null
  %28 = getelementptr inbounds %struct.as3722, ptr %5, i32 0, i32 5
  %29 = zext i1 %27 to i8
  store i8 %29, ptr %28, align 1
  %30 = tail call ptr @of_find_property(ptr noundef nonnull %13, ptr noundef nonnull @.str.9, ptr noundef null) #5
  %31 = icmp ne ptr %30, null
  %32 = getelementptr inbounds %struct.as3722, ptr %5, i32 0, i32 6
  %33 = zext i1 %31 to i8
  store i8 %33, ptr %32, align 2
  %34 = getelementptr inbounds %struct.irq_data, ptr %17, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 15
  %38 = getelementptr inbounds %struct.as3722, ptr %5, i32 0, i32 3
  store i32 %37, ptr %38, align 4
  %39 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @as3722_regmap_config, ptr noundef null, ptr noundef null) #5
  %40 = getelementptr inbounds %struct.as3722, ptr %5, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %44

42:                                               ; preds = %21
  %43 = ptrtoint ptr %39 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %43) #6
  br label %104

44:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %45 = call i32 @regmap_read(ptr noundef %39, i32 noundef 144, ptr noundef nonnull %3) #5
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.10, i32 noundef %45) #6
  br label %60

49:                                               ; preds = %44
  %50 = load i32, ptr %3, align 4
  %51 = icmp eq i32 %50, 12
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.11, i32 noundef %50) #6
  br label %60

54:                                               ; preds = %49
  %55 = load ptr, ptr %40, align 4
  %56 = call i32 @regmap_read(ptr noundef %55, i32 noundef 145, ptr noundef nonnull %3) #5
  %57 = icmp slt i32 %56, 0
  %58 = load ptr, ptr %5, align 4
  br i1 %57, label %59, label %62

59:                                               ; preds = %54
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.12, i32 noundef %56) #6
  br label %60

60:                                               ; preds = %59, %52, %47
  %61 = phi i32 [ %56, %59 ], [ -19, %52 ], [ %45, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  br label %104

62:                                               ; preds = %54
  %63 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.13, i32 noundef %63) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %64 = load i32, ptr %38, align 4
  %65 = or i32 %64, 8192
  %66 = load ptr, ptr %5, align 4
  %67 = load ptr, ptr %40, align 4
  %68 = load i32, ptr %10, align 4
  %69 = getelementptr inbounds %struct.as3722, ptr %5, i32 0, i32 7
  %70 = call i32 @devm_regmap_add_irq_chip(ptr noundef %66, ptr noundef %67, i32 noundef %68, i32 noundef %65, i32 noundef -1, ptr noundef nonnull @as3722_irq_chip, ptr noundef %69) #5
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.2, i32 noundef %70) #6
  br label %104

74:                                               ; preds = %62
  %75 = load i8, ptr %24, align 4, !range !9
  %76 = icmp eq i8 %75, 0
  %77 = select i1 %76, i32 0, i32 32
  %78 = load i8, ptr %28, align 1, !range !9
  %79 = icmp eq i8 %78, 0
  %80 = or i32 %77, 16
  %81 = select i1 %79, i32 %77, i32 %80
  %82 = load ptr, ptr %40, align 4
  %83 = call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 73, i32 noundef 48, i32 noundef %81, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.15, i32 noundef %83) #6
  br label %104

87:                                               ; preds = %74
  %88 = load i8, ptr %32, align 2, !range !9
  %89 = load ptr, ptr %40, align 4
  %90 = zext i8 %88 to i32
  %91 = call i32 @regmap_update_bits_base(ptr noundef %89, i32 noundef 88, i32 noundef 1, i32 noundef %90, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.3, i32 noundef %91) #6
  br label %104

95:                                               ; preds = %87
  %96 = load ptr, ptr %69, align 4
  %97 = call ptr @regmap_irq_get_domain(ptr noundef %96) #5
  %98 = call i32 @devm_mfd_add_devices(ptr noundef %4, i32 noundef -1, ptr noundef nonnull @as3722_devs, i32 noundef 6, ptr noundef null, i32 noundef 0, ptr noundef %97) #5
  %99 = icmp eq i32 %98, 0
  %100 = load ptr, ptr %5, align 4
  br i1 %99, label %102, label %101

101:                                              ; preds = %95
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.4, i32 noundef %98) #6
  br label %104

102:                                              ; preds = %95
  %103 = call i32 @device_init_wakeup(ptr noundef %100, i1 noundef zeroext true) #5
  br label %104

104:                                              ; preds = %102, %101, %93, %85, %72, %60, %42, %19, %15, %2
  %105 = phi i32 [ %43, %42 ], [ %70, %72 ], [ %91, %93 ], [ %98, %101 ], [ 0, %102 ], [ -12, %2 ], [ %61, %60 ], [ %83, %85 ], [ -22, %19 ], [ -22, %15 ]
  ret i32 %105
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regmap_add_irq_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_irq_get_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_i2c_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.as3722, ptr %3, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #5
  br label %16

16:                                               ; preds = %12, %8, %1
  %17 = getelementptr inbounds %struct.as3722, ptr %3, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  tail call void @disable_irq(i32 noundef %18) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_i2c_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.as3722, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  tail call void @enable_irq(i32 noundef %5) #5
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %4, align 4
  %16 = tail call i32 @irq_set_irq_wake(i32 noundef %15, i32 noundef 0) #5
  br label %17

17:                                               ; preds = %14, %10, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

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
!9 = !{i8 0, i8 2}
