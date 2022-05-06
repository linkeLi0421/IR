; ModuleID = '/llk/IR/drivers/mfd/rn5t618.c_pt.bc'
source_filename = "../drivers/mfd/rn5t618.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.rn5t618 = type { ptr, ptr, i32, i32, ptr }

@__initcall__kmod_rn5t618__247_290_rn5t618_i2c_driver_init6 = internal global ptr @rn5t618_i2c_driver_init, section ".initcall6.init", align 4
@rn5t618_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr null, ptr @rn5t618_i2c_remove, ptr @rn5t618_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rn5t618_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rn5t618_i2c_dev_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_rn5t618_i2c_driver_exit = internal global ptr @rn5t618_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [55 x i8] c"rn5t618.author=Beniamino Galvani <b.galvani@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [49 x i8] c"rn5t618.description=Ricoh RN5T567/618 MFD driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [33 x i8] c"rn5t618.file=drivers/mfd/rn5t618\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [23 x i8] c"rn5t618.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"rn5t618\00", align 1
@rn5t618_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ricoh,rn5t567\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ricoh,rn5t618\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ricoh,rc5t619\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@rn5t618_i2c_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @rn5t618_i2c_suspend, ptr @rn5t618_i2c_resume, ptr @rn5t618_i2c_suspend, ptr @rn5t618_i2c_resume, ptr @rn5t618_i2c_suspend, ptr @rn5t618_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rn5t618_pm_power_off = internal unnamed_addr global ptr null, align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@rn5t618_restart_handler = internal global %struct.notifier_block zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to find matching DT ID\0A\00", align 1
@rn5t618_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @rn5t618_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 252, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"regmap init failed: %d\0A\00", align 1
@rc5t619_cells = internal constant [5 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.6, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.7, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.8, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.9, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.10, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@rn5t618_cells = internal constant [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.8, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.10, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to add sub-devices: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Poweroff callback already assigned\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"cannot register restart handler, %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"rn5t618-adc\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"rn5t618-power\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"rn5t618-regulator\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"rc5t619-rtc\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"rn5t618-wdt\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"system-power-controller\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Failed to shutdown (err = %d)\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.13 = private unnamed_addr constant [41 x i8] c"Currently no IRQ support for variant %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Failed to register IRQ chip\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"rc5t619\00", align 1
@rc5t619_irqs = internal constant [6 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }], align 4
@rc5t619_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.15, i32 0, i32 0, ptr null, i32 0, i32 158, i32 157, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 4, i8 0, i32 1, ptr @rc5t619_irqs, i32 6, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_rn5t618_i2c_driver_exit, ptr @__initcall__kmod_rn5t618__247_290_rn5t618_i2c_driver_init6, ptr @rn5t618_i2c_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rn5t618_i2c_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rn5t618_i2c_driver) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rn5t618_i2c_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @rn5t618_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rn5t618_i2c_remove(ptr nocapture noundef readnone %0) #2 {
  %2 = load ptr, ptr @rn5t618_pm_power_off, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store ptr null, ptr @rn5t618_pm_power_off, align 4
  store ptr null, ptr @pm_power_off, align 4
  br label %5

5:                                                ; preds = %4, %1
  %6 = tail call i32 @unregister_restart_handler(ptr noundef nonnull @rn5t618_restart_handler) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rn5t618_i2c_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %3 = tail call ptr @of_match_device(ptr noundef nonnull @rn5t618_of_match, ptr noundef %2) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %63

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 20, i32 noundef 3520) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %63, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %7, ptr %10, align 8
  %11 = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = getelementptr inbounds %struct.rn5t618, ptr %7, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.rn5t618, ptr %7, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rn5t618, ptr %7, i32 0, i32 1
  store ptr %2, ptr %18, align 4
  %19 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @rn5t618_regmap_config, ptr noundef null, ptr noundef null) #5
  store ptr %19, ptr %7, align 4
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %9
  %22 = ptrtoint ptr %19 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %22) #6
  br label %63

23:                                               ; preds = %9
  %24 = load i32, ptr %14, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call i32 @devm_mfd_add_devices(ptr noundef %2, i32 noundef -1, ptr noundef nonnull @rc5t619_cells, i32 noundef 5, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  br label %30

28:                                               ; preds = %23
  %29 = tail call i32 @devm_mfd_add_devices(ptr noundef %2, i32 noundef -1, ptr noundef nonnull @rn5t618_cells, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %31) #6
  br label %63

34:                                               ; preds = %30
  store ptr %0, ptr @rn5t618_pm_power_off, align 4
  %35 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %36 = load ptr, ptr %35, align 8
  %37 = tail call ptr @of_find_property(ptr noundef %36, ptr noundef nonnull @.str.11, ptr noundef null) #5
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr @pm_power_off, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store ptr @rn5t618_power_off, ptr @pm_power_off, align 4
  br label %44

43:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.4) #6
  br label %44

44:                                               ; preds = %43, %42, %34
  store ptr @rn5t618_restart, ptr @rn5t618_restart_handler, align 4
  store i32 192, ptr getelementptr inbounds (%struct.notifier_block, ptr @rn5t618_restart_handler, i32 0, i32 2), align 4
  %45 = tail call i32 @register_restart_handler(ptr noundef nonnull @rn5t618_restart_handler) #5
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %45) #6
  br label %63

48:                                               ; preds = %44
  %49 = load i32, ptr %17, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr %14, align 4
  %53 = icmp eq i32 %52, 2
  %54 = load ptr, ptr %18, align 4
  br i1 %53, label %55, label %60

55:                                               ; preds = %51
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr inbounds %struct.rn5t618, ptr %7, i32 0, i32 4
  %58 = tail call i32 @devm_regmap_add_irq_chip(ptr noundef %54, ptr noundef %56, i32 noundef %49, i32 noundef 8200, i32 noundef 0, ptr noundef nonnull @rc5t619_irq_chip, ptr noundef %57) #5
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %61

60:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.13, i32 noundef %52) #6
  br label %63

61:                                               ; preds = %55
  %62 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.14) #6
  br label %63

63:                                               ; preds = %61, %60, %55, %48, %47, %33, %21, %6, %5
  %64 = phi i32 [ %22, %21 ], [ %31, %33 ], [ %45, %47 ], [ -22, %5 ], [ -12, %6 ], [ -2, %60 ], [ 0, %48 ], [ %58, %61 ], [ 0, %55 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_restart_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rn5t618_power_off() #2 {
  tail call fastcc void @rn5t618_trigger_poweroff_sequence(i1 noundef zeroext false)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rn5t618_restart(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  tail call fastcc void @rn5t618_trigger_poweroff_sequence(i1 noundef zeroext true)
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rn5t618_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #4 {
  switch i32 %1, label %3 [
    i32 12, label %4
    i32 65, label %4
    i32 102, label %4
    i32 149, label %4
    i32 150, label %4
    i32 151, label %4
    i32 158, label %4
    i32 179, label %4
    i32 189, label %4
    i32 218, label %4
    i32 224, label %4
    i32 225, label %4
    i32 226, label %4
    i32 227, label %4
    i32 228, label %4
    i32 229, label %4
    i32 230, label %4
    i32 231, label %4
    i32 232, label %4
    i32 233, label %4
    i32 234, label %4
    i32 235, label %4
    i32 236, label %4
    i32 237, label %4
    i32 238, label %4
    i32 239, label %4
    i32 240, label %4
    i32 241, label %4
    i32 242, label %4
    i32 243, label %4
    i32 244, label %4
    i32 245, label %4
    i32 246, label %4
    i32 247, label %4
    i32 248, label %4
    i32 249, label %4
    i32 250, label %4
    i32 251, label %4
    i32 252, label %4
    i32 194, label %4
    i32 195, label %4
    i32 196, label %4
    i32 197, label %4
    i32 198, label %4
    i32 199, label %4
    i32 200, label %4
    i32 201, label %4
    i32 182, label %4
    i32 183, label %4
    i32 160, label %4
    i32 161, label %4
    i32 162, label %4
    i32 163, label %4
    i32 164, label %4
    i32 165, label %4
    i32 166, label %4
    i32 174, label %4
    i32 175, label %4
    i32 140, label %4
    i32 141, label %4
    i32 142, label %4
    i32 104, label %4
    i32 105, label %4
    i32 106, label %4
    i32 107, label %4
    i32 108, label %4
    i32 109, label %4
    i32 110, label %4
    i32 111, label %4
    i32 112, label %4
    i32 113, label %4
    i32 114, label %4
    i32 115, label %4
    i32 116, label %4
    i32 117, label %4
    i32 118, label %4
    i32 119, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rn5t618_trigger_poweroff_sequence(i1 noundef zeroext %0) unnamed_addr #2 {
  %2 = load ptr, ptr @rn5t618_pm_power_off, align 4
  %3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 15) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = and i32 %3, 254
  %7 = zext i1 %0 to i32
  %8 = or i32 %6, %7
  %9 = load ptr, ptr @rn5t618_pm_power_off, align 4
  %10 = trunc i32 %8 to i8
  %11 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 15, i8 noundef zeroext %10) #5
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr @rn5t618_pm_power_off, align 4
  %15 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %14, i8 noundef zeroext 14) #5
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @rn5t618_pm_power_off, align 4
  %19 = trunc i32 %15 to i8
  %20 = or i8 %19, 1
  %21 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 14, i8 noundef zeroext %20) #5
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17, %13, %5, %1
  %24 = phi i32 [ %3, %1 ], [ %11, %5 ], [ %15, %13 ], [ %21, %17 ]
  %25 = load ptr, ptr @rn5t618_pm_power_off, align 4
  %26 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %26, ptr noundef nonnull @.str.12, i32 noundef %24) #6
  br label %27

27:                                               ; preds = %23, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regmap_add_irq_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rn5t618_i2c_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rn5t618, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @disable_irq(i32 noundef %5) #5
  br label %8

8:                                                ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rn5t618_i2c_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rn5t618, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @enable_irq(i32 noundef %5) #5
  br label %8

8:                                                ; preds = %7, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
