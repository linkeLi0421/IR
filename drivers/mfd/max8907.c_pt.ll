; ModuleID = '/llk/IR/drivers/mfd/max8907.c_pt.bc'
source_filename = "../drivers/mfd/max8907.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.max8907_platform_data = type { [29 x ptr], i8 }
%struct.max8907 = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_max8907__247_334_max8907_i2c_init4 = internal global ptr @max8907_i2c_init, section ".initcall4.init", align 4
@max8907_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @max8907_i2c_probe, ptr @max8907_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max8907_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max8907_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_max8907_i2c_exit = internal global ptr @max8907_i2c_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [55 x i8] c"max8907.description=MAX8907 multi-function core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [51 x i8] c"max8907.author=Gyungoh Yoo <jack.yoo@maxim-ic.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [33 x i8] c"max8907.file=drivers/mfd/max8907\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [23 x i8] c"max8907.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [37 x i8] c"\013Failed to register I2C driver: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"max8907\00", align 1
@max8907_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max8907\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@max8907_i2c_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max8907\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"maxim,system-power-controller\00", align 1
@max8907_regmap_gen_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @max8907_gen_is_writeable_reg, ptr null, ptr @max8907_gen_is_volatile_reg, ptr @max8907_gen_is_precious_reg, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 158, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"gen regmap init failed: %d\0A\00", align 1
@max8907_regmap_rtc_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @max8907_rtc_is_writeable_reg, ptr null, ptr @max8907_rtc_is_volatile_reg, ptr @max8907_rtc_is_precious_reg, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 30, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"rtc regmap init failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to add chg irq chip: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"failed to add on off irq chip: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"failed to add rtc irq chip: %d\0A\00", align 1
@max8907_cells = internal constant [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.15, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.16, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to add MFD devices %d\0A\00", align 1
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@max8907_pm_off = internal unnamed_addr global ptr null, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"max8907 chg\00", align 1
@max8907_chg_irqs = internal constant [11 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }], align 4
@max8907_chg_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.9, i32 0, i32 0, ptr null, i32 0, i32 126, i32 128, i32 0, i32 0, i32 128, i32 0, ptr null, i32 1, i8 0, i8 0, i32 2, ptr @max8907_chg_irqs, i32 11, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"max8907 on_off\00", align 1
@max8907_on_off_irqs = internal constant [10 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }], align 4
@max8907_on_off_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.11, i32 0, i32 0, ptr null, i32 0, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, ptr null, i32 12, i8 0, i8 0, i32 2, ptr @max8907_on_off_irqs, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"max8907 rtc\00", align 1
@max8907_rtc_irqs = internal constant [2 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }], align 4
@max8907_rtc_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.13, i32 0, i32 0, ptr null, i32 0, i32 28, i32 29, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 1, ptr @max8907_rtc_irqs, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [18 x i8] c"max8907-regulator\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"max8907-rtc\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_max8907_i2c_exit, ptr @__initcall__kmod_max8907__247_334_max8907_i2c_init4, ptr @max8907_i2c_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @max8907_i2c_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max8907_i2c_driver) #5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1) #6
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @max8907_i2c_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @max8907_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8907_i2c_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.max8907_platform_data, ptr %5, i32 0, i32 1
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp ne i8 %9, 0
  br label %18

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @of_find_property(ptr noundef nonnull %13, ptr noundef nonnull @.str.2, ptr noundef null) #5
  %17 = icmp ne ptr %16, null
  br label %18

18:                                               ; preds = %15, %11, %7
  %19 = phi i1 [ %10, %7 ], [ %17, %15 ], [ false, %11 ]
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 52, i32 noundef 3520) #5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %103, label %22

22:                                               ; preds = %18
  store ptr %3, ptr %20, align 4
  %23 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %24 = getelementptr inbounds %struct.max8907, ptr %20, i32 0, i32 2
  store ptr %0, ptr %24, align 4
  store ptr %20, ptr %23, align 8
  %25 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @max8907_regmap_gen_config, ptr noundef null, ptr noundef null) #5
  %26 = getelementptr inbounds %struct.max8907, ptr %20, i32 0, i32 4
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = ptrtoint ptr %25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %29) #6
  br label %103

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = tail call ptr @i2c_new_dummy_device(ptr noundef %32, i16 noundef zeroext 104) #5
  %34 = getelementptr inbounds %struct.max8907, ptr %20, i32 0, i32 3
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = ptrtoint ptr %33 to i32
  br label %103

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4, i32 8
  store ptr %20, ptr %39, align 8
  %40 = load ptr, ptr %34, align 4
  %41 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %40, ptr noundef nonnull @max8907_regmap_rtc_config, ptr noundef null, ptr noundef null) #5
  %42 = getelementptr inbounds %struct.max8907, ptr %20, i32 0, i32 5
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = ptrtoint ptr %41 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %45) #6
  br label %100

46:                                               ; preds = %38
  %47 = load ptr, ptr %26, align 4
  %48 = load ptr, ptr %24, align 4
  %49 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.max8907, ptr %20, i32 0, i32 6
  %52 = tail call i32 @regmap_add_irq_chip(ptr noundef %47, i32 noundef %50, i32 noundef 8320, i32 noundef -1, ptr noundef nonnull @max8907_chg_irq_chip, ptr noundef %51) #5
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %52) #6
  br label %100

55:                                               ; preds = %46
  %56 = load ptr, ptr %26, align 4
  %57 = load ptr, ptr %24, align 4
  %58 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.max8907, ptr %20, i32 0, i32 7
  %61 = tail call i32 @regmap_add_irq_chip(ptr noundef %56, i32 noundef %59, i32 noundef 8320, i32 noundef -1, ptr noundef nonnull @max8907_on_off_irq_chip, ptr noundef %60) #5
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %61) #6
  br label %94

64:                                               ; preds = %55
  %65 = load ptr, ptr %42, align 4
  %66 = load ptr, ptr %24, align 4
  %67 = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 6
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.max8907, ptr %20, i32 0, i32 8
  %70 = tail call i32 @regmap_add_irq_chip(ptr noundef %65, i32 noundef %68, i32 noundef 8320, i32 noundef -1, ptr noundef nonnull @max8907_rtc_irq_chip, ptr noundef %69) #5
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %70) #6
  br label %88

73:                                               ; preds = %64
  %74 = load ptr, ptr %20, align 4
  %75 = tail call i32 @mfd_add_devices(ptr noundef %74, i32 noundef -1, ptr noundef nonnull @max8907_cells, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %75) #6
  %78 = load ptr, ptr %24, align 4
  %79 = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 6
  %80 = load i32, ptr %79, align 4
  %81 = load ptr, ptr %69, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %80, ptr noundef %81) #5
  br label %88

82:                                               ; preds = %73
  %83 = xor i1 %19, true
  %84 = load ptr, ptr @pm_power_off, align 4
  %85 = icmp ne ptr %84, null
  %86 = select i1 %83, i1 true, i1 %85
  br i1 %86, label %103, label %87

87:                                               ; preds = %82
  store ptr %20, ptr @max8907_pm_off, align 4
  store ptr @max8907_power_off, ptr @pm_power_off, align 4
  br label %103

88:                                               ; preds = %77, %72
  %89 = phi i32 [ %70, %72 ], [ %75, %77 ]
  %90 = load ptr, ptr %24, align 4
  %91 = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 6
  %92 = load i32, ptr %91, align 4
  %93 = load ptr, ptr %60, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %92, ptr noundef %93) #5
  br label %94

94:                                               ; preds = %88, %63
  %95 = phi i32 [ %61, %63 ], [ %89, %88 ]
  %96 = load ptr, ptr %24, align 4
  %97 = getelementptr inbounds %struct.i2c_client, ptr %96, i32 0, i32 6
  %98 = load i32, ptr %97, align 4
  %99 = load ptr, ptr %51, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %98, ptr noundef %99) #5
  br label %100

100:                                              ; preds = %94, %54, %44
  %101 = phi i32 [ %45, %44 ], [ %52, %54 ], [ %95, %94 ]
  %102 = load ptr, ptr %34, align 4
  tail call void @i2c_unregister_device(ptr noundef %102) #5
  br label %103

103:                                              ; preds = %100, %87, %82, %36, %28, %18
  %104 = phi i32 [ 0, %87 ], [ 0, %82 ], [ %29, %28 ], [ %37, %36 ], [ %101, %100 ], [ -12, %18 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8907_i2c_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  tail call void @mfd_remove_devices(ptr noundef %4) #5
  %5 = getelementptr inbounds %struct.max8907, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.max8907, ptr %3, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %8, ptr noundef %10) #5
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.max8907, ptr %3, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %13, ptr noundef %15) #5
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.max8907, ptr %3, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %18, ptr noundef %20) #5
  %21 = getelementptr inbounds %struct.max8907, ptr %3, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  tail call void @i2c_unregister_device(ptr noundef %22) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max8907_power_off() #3 {
  %1 = load ptr, ptr @max8907_pm_off, align 4
  %2 = getelementptr inbounds %struct.max8907, ptr %1, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 15, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max8907_gen_is_writeable_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #4 {
  switch i32 %1, label %3 [
    i32 1, label %4
    i32 3, label %4
    i32 13, label %4
    i32 126, label %4
    i32 127, label %4
    i32 130, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ true, %3 ], [ false, %2 ], [ false, %2 ], [ false, %2 ], [ false, %2 ], [ false, %2 ], [ false, %2 ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max8907_gen_is_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #4 {
  switch i32 %1, label %3 [
    i32 1, label %4
    i32 3, label %4
    i32 13, label %4
    i32 126, label %4
    i32 127, label %4
    i32 130, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max8907_gen_is_precious_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #4 {
  switch i32 %1, label %3 [
    i32 1, label %4
    i32 13, label %4
    i32 126, label %4
    i32 127, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max8907_rtc_is_writeable_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #4 {
  %3 = add i32 %1, -26
  %4 = and i32 %3, -3
  %5 = icmp ne i32 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max8907_rtc_is_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #4 {
  %3 = icmp ult i32 %1, 8
  %4 = add i32 %1, -26
  %5 = and i32 %4, -3
  %6 = icmp eq i32 %5, 0
  %7 = or i1 %3, %6
  ret i1 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max8907_rtc_is_precious_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #4 {
  %3 = icmp eq i32 %1, 28
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i8 0, i8 2}
