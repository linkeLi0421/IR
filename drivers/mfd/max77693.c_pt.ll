; ModuleID = '/llk/IR/drivers/mfd/max77693.c_pt.bc'
source_filename = "../drivers/mfd/max77693.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.max77693_dev = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@max77693_i2c_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max77693\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], align 4
@max77693_dt_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max77693\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description248 = internal constant [51 x i8] c"description=MAXIM 77693 multi-function core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [46 x i8] c"author=SangYoung, Son <hello.son@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@max77693_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @max77693_i2c_probe, ptr @max77693_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max77693_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77693_pm, ptr null, ptr null }, ptr @max77693_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"max77693\00", align 1
@max77693_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @max77693_suspend, ptr @max77693_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@max77693_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 199, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to allocate register map: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"device not found on this channel\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"device ID: 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to allocate I2C device for MUIC\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Failed to allocate I2C device for Haptic\0A\00", align 1
@max77693_regmap_haptic_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 17, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"failed to initialize haptic register map: %d\0A\00", align 1
@max77693_regmap_muic_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to add irq chip: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Could not unmask interrupts in INTSRC: %d\0A\00", align 1
@max77693_devs = internal constant [5 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.17, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.13, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.18, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.15, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.19, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.20, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.21, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.9, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.22, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"max77693-led\00", align 1
@max77693_led_irqs = internal constant [5 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }], align 4
@max77693_led_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.9, i32 0, i32 0, ptr null, i32 0, i32 14, i32 15, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 1, ptr @max77693_led_irqs, i32 5, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"max77693-topsys\00", align 1
@max77693_topsys_irqs = internal constant [3 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }], align 4
@max77693_topsys_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.11, i32 0, i32 0, ptr null, i32 0, i32 36, i32 38, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 1, ptr @max77693_topsys_irqs, i32 3, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"max77693-charger\00", align 1
@max77693_charger_irqs = internal constant [5 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }], align 4
@max77693_charger_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.13, i32 0, i32 0, ptr null, i32 0, i32 176, i32 177, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 1, ptr @max77693_charger_irqs, i32 5, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"max77693-muic\00", align 1
@max77693_muic_irqs = internal constant [16 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }], align 4
@max77693_muic_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.15, i32 0, i32 0, ptr null, i32 0, i32 1, i32 7, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 4, i8 0, i32 3, ptr @max77693_muic_irqs, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"max77693-pmic\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"maxim,max77693-charger\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"maxim,max77693-muic\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"max77693-haptic\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"maxim,max77693-haptic\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"maxim,max77693-led\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license250], section "llvm.metadata"

@__mod_i2c__max77693_i2c_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @max77693_i2c_id
@__mod_of__max77693_dt_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @max77693_dt_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @max77693_i2c_driver) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @max77693_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_i2c_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 60, i32 noundef 3520) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %132, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %5, ptr %8, align 8
  store ptr %4, ptr %5, align 4
  %9 = getelementptr inbounds %struct.max77693_dev, ptr %5, i32 0, i32 1
  store ptr %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.max77693_dev, ptr %5, i32 0, i32 14
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.max77693_dev, ptr %5, i32 0, i32 5
  store i32 %14, ptr %15, align 4
  %16 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @max77693_regmap_config, ptr noundef null, ptr noundef null) #5
  %17 = getelementptr inbounds %struct.max77693_dev, ptr %5, i32 0, i32 6
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %22

19:                                               ; preds = %7
  %20 = ptrtoint ptr %16 to i32
  %21 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.1, i32 noundef %20) #6
  br label %132

22:                                               ; preds = %7
  %23 = call i32 @regmap_read(ptr noundef %16, i32 noundef 33, ptr noundef nonnull %3) #5
  %24 = icmp slt i32 %23, 0
  %25 = load ptr, ptr %5, align 4
  br i1 %24, label %26, label %27

26:                                               ; preds = %22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.2) #6
  br label %132

27:                                               ; preds = %22
  %28 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.3, i32 noundef %28) #6
  %29 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = call ptr @i2c_new_dummy_device(ptr noundef %30, i16 noundef zeroext 37) #5
  %32 = getelementptr inbounds %struct.max77693_dev, ptr %5, i32 0, i32 2
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.4) #6
  %36 = load ptr, ptr %32, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %132

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4, i32 8
  store ptr %5, ptr %39, align 8
  %40 = load ptr, ptr %29, align 8
  %41 = call ptr @i2c_new_dummy_device(ptr noundef %40, i16 noundef zeroext 72) #5
  %42 = getelementptr inbounds %struct.max77693_dev, ptr %5, i32 0, i32 3
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.5) #6
  %46 = load ptr, ptr %42, align 4
  %47 = ptrtoint ptr %46 to i32
  br label %129

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4, i32 8
  store ptr %5, ptr %49, align 8
  %50 = load ptr, ptr %42, align 4
  %51 = call ptr @__devm_regmap_init_i2c(ptr noundef %50, ptr noundef nonnull @max77693_regmap_haptic_config, ptr noundef null, ptr noundef null) #5
  %52 = getelementptr inbounds %struct.max77693_dev, ptr %5, i32 0, i32 8
  store ptr %51, ptr %52, align 4
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = ptrtoint ptr %51 to i32
  %56 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.6, i32 noundef %55) #6
  br label %126

57:                                               ; preds = %48
  %58 = load ptr, ptr %32, align 4
  %59 = call ptr @__devm_regmap_init_i2c(ptr noundef %58, ptr noundef nonnull @max77693_regmap_muic_config, ptr noundef null, ptr noundef null) #5
  %60 = getelementptr inbounds %struct.max77693_dev, ptr %5, i32 0, i32 7
  store ptr %59, ptr %60, align 4
  %61 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = ptrtoint ptr %59 to i32
  %64 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.1, i32 noundef %63) #6
  br label %126

65:                                               ; preds = %57
  %66 = load ptr, ptr %17, align 4
  %67 = load i32, ptr %12, align 4
  %68 = getelementptr inbounds %struct.max77693_dev, ptr %5, i32 0, i32 10
  %69 = call i32 @regmap_add_irq_chip(ptr noundef %66, i32 noundef %67, i32 noundef 8320, i32 noundef 0, ptr noundef nonnull @max77693_led_irq_chip, ptr noundef %68) #5
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %65
  %72 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.7, i32 noundef %69) #6
  br label %126

73:                                               ; preds = %65
  %74 = load ptr, ptr %17, align 4
  %75 = load i32, ptr %12, align 4
  %76 = getelementptr inbounds %struct.max77693_dev, ptr %5, i32 0, i32 11
  %77 = call i32 @regmap_add_irq_chip(ptr noundef %74, i32 noundef %75, i32 noundef 8320, i32 noundef 0, ptr noundef nonnull @max77693_topsys_irq_chip, ptr noundef %76) #5
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.7, i32 noundef %77) #6
  br label %122

81:                                               ; preds = %73
  %82 = load ptr, ptr %17, align 4
  %83 = load i32, ptr %12, align 4
  %84 = getelementptr inbounds %struct.max77693_dev, ptr %5, i32 0, i32 12
  %85 = call i32 @regmap_add_irq_chip(ptr noundef %82, i32 noundef %83, i32 noundef 8320, i32 noundef 0, ptr noundef nonnull @max77693_charger_irq_chip, ptr noundef %84) #5
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %81
  %88 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.7, i32 noundef %85) #6
  br label %118

89:                                               ; preds = %81
  %90 = load ptr, ptr %60, align 4
  %91 = load i32, ptr %12, align 4
  %92 = getelementptr inbounds %struct.max77693_dev, ptr %5, i32 0, i32 13
  %93 = call i32 @regmap_add_irq_chip(ptr noundef %90, i32 noundef %91, i32 noundef 8320, i32 noundef 0, ptr noundef nonnull @max77693_muic_irq_chip, ptr noundef %92) #5
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %89
  %96 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.7, i32 noundef %93) #6
  br label %114

97:                                               ; preds = %89
  %98 = load ptr, ptr %17, align 4
  %99 = call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef 35, i32 noundef 15, i32 noundef -16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %100 = icmp slt i32 %99, 0
  %101 = load ptr, ptr %5, align 4
  br i1 %100, label %102, label %103

102:                                              ; preds = %97
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.8, i32 noundef %99) #6
  br label %110

103:                                              ; preds = %97
  %104 = call i32 @__pm_runtime_set_status(ptr noundef %101, i32 noundef 0) #5
  %105 = load ptr, ptr %5, align 4
  %106 = call i32 @mfd_add_devices(ptr noundef %105, i32 noundef -1, ptr noundef nonnull @max77693_devs, i32 noundef 5, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %132

108:                                              ; preds = %103
  %109 = load ptr, ptr %5, align 4
  call void @mfd_remove_devices(ptr noundef %109) #5
  br label %110

110:                                              ; preds = %108, %102
  %111 = phi i32 [ %99, %102 ], [ %106, %108 ]
  %112 = load i32, ptr %12, align 4
  %113 = load ptr, ptr %92, align 4
  call void @regmap_del_irq_chip(i32 noundef %112, ptr noundef %113) #5
  br label %114

114:                                              ; preds = %110, %95
  %115 = phi i32 [ %93, %95 ], [ %111, %110 ]
  %116 = load i32, ptr %12, align 4
  %117 = load ptr, ptr %84, align 4
  call void @regmap_del_irq_chip(i32 noundef %116, ptr noundef %117) #5
  br label %118

118:                                              ; preds = %114, %87
  %119 = phi i32 [ %85, %87 ], [ %115, %114 ]
  %120 = load i32, ptr %12, align 4
  %121 = load ptr, ptr %76, align 4
  call void @regmap_del_irq_chip(i32 noundef %120, ptr noundef %121) #5
  br label %122

122:                                              ; preds = %118, %79
  %123 = phi i32 [ %77, %79 ], [ %119, %118 ]
  %124 = load i32, ptr %12, align 4
  %125 = load ptr, ptr %68, align 4
  call void @regmap_del_irq_chip(i32 noundef %124, ptr noundef %125) #5
  br label %126

126:                                              ; preds = %122, %71, %62, %54
  %127 = phi i32 [ %55, %54 ], [ %63, %62 ], [ %69, %71 ], [ %123, %122 ]
  %128 = load ptr, ptr %42, align 4
  call void @i2c_unregister_device(ptr noundef %128) #5
  br label %129

129:                                              ; preds = %126, %44
  %130 = phi i32 [ %47, %44 ], [ %127, %126 ]
  %131 = load ptr, ptr %32, align 4
  call void @i2c_unregister_device(ptr noundef %131) #5
  br label %132

132:                                              ; preds = %129, %103, %34, %26, %19, %2
  %133 = phi i32 [ %20, %19 ], [ %23, %26 ], [ %37, %34 ], [ %130, %129 ], [ -12, %2 ], [ %106, %103 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  tail call void @mfd_remove_devices(ptr noundef %4) #5
  %5 = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %6, ptr noundef %8) #5
  %9 = load i32, ptr %5, align 4
  %10 = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %9, ptr noundef %11) #5
  %12 = load i32, ptr %5, align 4
  %13 = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %12, ptr noundef %14) #5
  %15 = load i32, ptr %5, align 4
  %16 = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %15, ptr noundef %17) #5
  %18 = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  tail call void @i2c_unregister_device(ptr noundef %19) #5
  %20 = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  tail call void @i2c_unregister_device(ptr noundef %21) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 14
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #5
  %16 = load i32, ptr %13, align 4
  tail call void @disable_irq(i32 noundef %16) #5
  br label %17

17:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 14
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #5
  %16 = load i32, ptr %13, align 4
  tail call void @enable_irq(i32 noundef %16) #5
  br label %17

17:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

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
