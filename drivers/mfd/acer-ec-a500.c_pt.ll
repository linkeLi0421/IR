; ModuleID = '/llk/IR/drivers/mfd/acer-ec-a500.c_pt.bc'
source_filename = "../drivers/mfd/acer-ec-a500.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
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

@a500_ec_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"acer,a500-iconia-ec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description247 = internal constant [60 x i8] c"description=Acer Iconia Tab A500 Embedded Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [42 x i8] c"author=Dmitry Osipenko <digetx@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@a500_ec_driver = internal global %struct.i2c_driver { i32 0, ptr null, ptr @a500_ec_remove, ptr @a500_ec_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @a500_ec_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [30 x i8] c"acer-a500-embedded-controller\00", align 1
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@a500_ec_restart_handler = internal global %struct.notifier_block { ptr @a500_ec_restart_notify, ptr null, i32 200 }, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"system-power-controller\00", align 1
@a500_ec_client_pm_off = internal unnamed_addr global ptr null, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@a500_ec_regmap_bus = internal constant %struct.regmap_bus { i8 0, ptr @a500_ec_write, ptr null, ptr null, ptr null, ptr null, ptr @a500_ec_read, ptr null, ptr null, ptr null, i8 0, i32 3, i32 2, i32 2, i32 0, i8 0 }, align 4
@a500_ec_regmap_config = internal constant %struct.regmap_config { ptr @.str.5, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@a500_ec_cells = internal constant [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.6, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.7, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to add sub-devices: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"write 0x%x failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"read 0x%x failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"KB930\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"acer-a500-iconia-battery\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"acer-a500-iconia-leds\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_of__a500_ec_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @a500_ec_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @a500_ec_driver) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @a500_ec_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a500_ec_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef null) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @pm_power_off, align 4
  %8 = icmp eq ptr %7, @a500_ec_poweroff
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store ptr null, ptr @pm_power_off, align 4
  br label %10

10:                                               ; preds = %9, %6
  %11 = tail call i32 @unregister_restart_handler(ptr noundef nonnull @a500_ec_restart_handler) #4
  br label %12

12:                                               ; preds = %10, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a500_ec_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %3 = tail call ptr @__devm_regmap_init(ptr noundef %2, ptr noundef nonnull @a500_ec_regmap_bus, ptr noundef %0, ptr noundef nonnull @a500_ec_regmap_config, ptr noundef null, ptr noundef null) #4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = ptrtoint ptr %3 to i32
  br label %23

7:                                                ; preds = %1
  %8 = tail call i32 @devm_mfd_add_devices(ptr noundef %2, i32 noundef -2, ptr noundef nonnull @a500_ec_cells, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef null) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %8) #5
  br label %23

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = tail call ptr @of_find_property(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef null) #4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  store ptr %0, ptr @a500_ec_client_pm_off, align 4
  %17 = tail call i32 @register_restart_handler(ptr noundef nonnull @a500_ec_restart_handler) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load ptr, ptr @pm_power_off, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store ptr @a500_ec_poweroff, ptr @pm_power_off, align 4
  br label %23

23:                                               ; preds = %22, %19, %16, %11, %10, %5
  %24 = phi i32 [ %6, %5 ], [ %8, %10 ], [ %17, %16 ], [ 0, %19 ], [ 0, %22 ], [ 0, %11 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @a500_ec_poweroff() #2 {
  %1 = load ptr, ptr @a500_ec_client_pm_off, align 4
  %2 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 82, i16 noundef zeroext 0) #4
  br label %3

3:                                                ; preds = %3, %0
  %4 = phi i32 [ 1000, %0 ], [ %5, %3 ]
  %5 = add nsw i32 %4, -1
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #4
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %8, label %3

8:                                                ; preds = %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_restart_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a500_ec_restart_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = icmp eq i32 %1, 1
  %5 = load ptr, ptr @a500_ec_client_pm_off, align 4
  br i1 %4, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %5, i8 noundef zeroext 84, i16 noundef zeroext 0) #4
  br label %10

8:                                                ; preds = %3
  %9 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %5, i8 noundef zeroext 85, i16 noundef zeroext 1) #4
  br label %10

10:                                               ; preds = %8, %6
  br label %11

11:                                               ; preds = %11, %10
  %12 = phi i32 [ %13, %11 ], [ 1000, %10 ]
  %13 = add nsw i32 %12, -1
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #4
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %11

16:                                               ; preds = %11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a500_ec_write(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %1, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %0, i8 noundef zeroext %4, i16 noundef zeroext %7) #4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %24, label %10

10:                                               ; preds = %3
  tail call void @msleep(i32 noundef 500) #4
  %11 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %0, i8 noundef zeroext %4, i16 noundef zeroext %7) #4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  tail call void @msleep(i32 noundef 500) #4
  %14 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %0, i8 noundef zeroext %4, i16 noundef zeroext %7) #4
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  tail call void @msleep(i32 noundef 500) #4
  %17 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %0, i8 noundef zeroext %4, i16 noundef zeroext %7) #4
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  tail call void @msleep(i32 noundef 500) #4
  %20 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %0, i8 noundef zeroext %4, i16 noundef zeroext %7) #4
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  tail call void @msleep(i32 noundef 500) #4
  %23 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.3, i32 noundef %5, i32 noundef %20) #5
  br label %24

24:                                               ; preds = %22, %19, %16, %13, %10, %3
  %25 = phi i32 [ %20, %22 ], [ 0, %19 ], [ 0, %16 ], [ 0, %13 ], [ 0, %10 ], [ 0, %3 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a500_ec_read(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #2 {
  %6 = load i8, ptr %1, align 1
  %7 = zext i8 %6 to i32
  %8 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %0, i8 noundef zeroext %6) #4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %24, label %10

10:                                               ; preds = %5
  tail call void @msleep(i32 noundef 500) #4
  %11 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %0, i8 noundef zeroext %6) #4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  tail call void @msleep(i32 noundef 500) #4
  %14 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %0, i8 noundef zeroext %6) #4
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  tail call void @msleep(i32 noundef 500) #4
  %17 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %0, i8 noundef zeroext %6) #4
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  tail call void @msleep(i32 noundef 500) #4
  %20 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %0, i8 noundef zeroext %6) #4
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  tail call void @msleep(i32 noundef 500) #4
  %23 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.4, i32 noundef %7, i32 noundef %20) #5
  br label %29

24:                                               ; preds = %19, %16, %13, %10, %5
  %25 = phi i32 [ %8, %5 ], [ %11, %10 ], [ %14, %13 ], [ %17, %16 ], [ %20, %19 ]
  %26 = trunc i32 %25 to i16
  store i16 %26, ptr %3, align 2
  %27 = icmp eq i8 %6, 3
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #4
  br label %29

29:                                               ; preds = %28, %24, %22
  %30 = phi i32 [ %20, %22 ], [ 0, %28 ], [ 0, %24 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
