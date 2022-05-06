; ModuleID = '/llk/IR/drivers/input/misc/da9063_onkey.c_pt.bc'
source_filename = "../drivers/input/misc/da9063_onkey.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.da906x_chip_config = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.da9063_onkey = type { %struct.delayed_work, ptr, ptr, ptr, ptr, [32 x i8], i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@da9063_compatible_reg_id_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9063-onkey\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da9063_regs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9062-onkey\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da9062_regs }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author210 = internal constant [47 x i8] c"author=S Twiss <stwiss.opensource@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description211 = internal constant [69 x i8] c"description=Onkey device driver for Dialog DA9063, DA9062 and DA9061\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias213 = internal constant [28 x i8] c"alias=platform:da9063-onkey\00", section ".modinfo", align 1
@da9063_regs = internal constant %struct.da906x_chip_config { i32 1, i32 15, i32 5, i32 19, i32 1, i32 16, i32 32, i32 2, ptr @.str }, align 4
@da9062_regs = internal constant %struct.da906x_chip_config { i32 1, i32 15, i32 5, i32 19, i32 1, i32 16, i32 32, i32 2, ptr @.str.1 }, align 4
@.str = private unnamed_addr constant [13 x i8] c"da9063-onkey\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"da9062-onkey\00", align 1
@da9063_onkey_driver = internal global %struct.platform_driver { ptr @da9063_onkey_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @da9063_compatible_reg_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to allocate memory.\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Parent regmap unavailable.\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"dlg,disable-key-power\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to allocated input device.\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Failed to add cancel poll action: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"ONKEY\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Failed to request IRQ %d: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Failed to register input device: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Failed to read ON status: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Failed to reset the Key Delay %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Cannot read FAULT_LOG: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Cannot reset KEY_RESET fault log: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Cannot SHUTDOWN PMIC: %d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias213, ptr @__UNIQUE_ID_author210, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_license212], section "llvm.metadata"

@__mod_of__da9063_compatible_reg_id_table_device_table = dso_local alias [3 x %struct.of_device_id], ptr @da9063_compatible_reg_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9063_onkey_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9063_onkey_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @da9063_onkey_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_match_node(ptr noundef nonnull @da9063_compatible_reg_id_table, ptr noundef %4) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %64, label %7

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 96, i32 noundef 3520) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #7
  br label %64

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.da9063_onkey, ptr %8, i32 0, i32 4
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.da9063_onkey, ptr %8, i32 0, i32 2
  store ptr %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call ptr @dev_get_regmap(ptr noundef %17, ptr noundef null) #6
  %19 = getelementptr inbounds %struct.da9063_onkey, ptr %8, i32 0, i32 3
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #7
  br label %64

22:                                               ; preds = %11
  %23 = load ptr, ptr %3, align 8
  %24 = tail call ptr @of_find_property(ptr noundef %23, ptr noundef nonnull @.str.4, ptr noundef null) #6
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.da9063_onkey, ptr %8, i32 0, i32 6
  %27 = zext i1 %25 to i8
  store i8 %27, ptr %26, align 4
  %28 = tail call ptr @devm_input_allocate_device(ptr noundef %2) #6
  %29 = getelementptr inbounds %struct.da9063_onkey, ptr %8, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #7
  br label %64

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.da906x_chip_config, ptr %13, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  store ptr %34, ptr %28, align 8
  %35 = getelementptr inbounds %struct.da9063_onkey, ptr %8, i32 0, i32 5
  %36 = load ptr, ptr %14, align 4
  %37 = getelementptr inbounds %struct.da906x_chip_config, ptr %36, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %35, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %38)
  %40 = load ptr, ptr %29, align 4
  %41 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 1
  store ptr %35, ptr %41, align 4
  %42 = load ptr, ptr %29, align 4
  %43 = getelementptr inbounds %struct.input_dev, ptr %42, i32 0, i32 40, i32 1
  store ptr %2, ptr %43, align 4
  %44 = load ptr, ptr %29, align 4
  tail call void @input_set_capability(ptr noundef %44, i32 noundef 1, i32 noundef 116) #6
  store i32 -32, ptr %8, align 4
  %45 = getelementptr inbounds %struct.work_struct, ptr %8, i32 0, i32 1
  store volatile ptr %45, ptr %45, align 4
  %46 = getelementptr inbounds %struct.work_struct, ptr %8, i32 0, i32 1, i32 1
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.work_struct, ptr %8, i32 0, i32 2
  store ptr @da9063_poll_on, ptr %47, align 4
  %48 = getelementptr inbounds %struct.delayed_work, ptr %8, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %48, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #6
  %49 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @da9063_cancel_poll, ptr noundef nonnull %8) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %49) #7
  br label %64

52:                                               ; preds = %32
  %53 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.8) #6
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %53, ptr noundef null, ptr noundef nonnull @da9063_onkey_irq_handler, i32 noundef 8200, ptr noundef nonnull @.str.8, ptr noundef nonnull %8) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %53, i32 noundef %56) #7
  br label %64

59:                                               ; preds = %55
  %60 = load ptr, ptr %29, align 4
  %61 = tail call i32 @input_register_device(ptr noundef %60) #6
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %61) #7
  br label %64

64:                                               ; preds = %63, %59, %58, %52, %51, %31, %21, %10, %1
  %65 = phi i32 [ %49, %51 ], [ %56, %58 ], [ %61, %63 ], [ -12, %31 ], [ -6, %21 ], [ -12, %10 ], [ -6, %1 ], [ %53, %52 ], [ 0, %59 ]
  ret i32 %65
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @da9063_poll_on(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.da9063_onkey, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4
  %6 = getelementptr inbounds %struct.da9063_onkey, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %5, align 4
  %9 = call i32 @regmap_read(ptr noundef %7, i32 noundef %8, ptr noundef nonnull %2) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.da9063_onkey, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.11, i32 noundef %9) #7
  br label %73

14:                                               ; preds = %1
  %15 = load i32, ptr %2, align 4
  %16 = getelementptr inbounds %struct.da906x_chip_config, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr inbounds %struct.da906x_chip_config, ptr %5, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.da906x_chip_config, ptr %5, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.da9063_onkey, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.12, i32 noundef %26) #7
  br label %73

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.da9063_onkey, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  call void @input_event(ptr noundef %33, i32 noundef 1, i32 noundef 116, i32 noundef 0) #6
  %34 = load ptr, ptr %32, align 4
  call void @input_event(ptr noundef %34, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %35

35:                                               ; preds = %31, %14
  %36 = load ptr, ptr %6, align 4
  %37 = getelementptr inbounds %struct.da906x_chip_config, ptr %5, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = call i32 @regmap_read(ptr noundef %36, i32 noundef %38, ptr noundef nonnull %3) #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.da9063_onkey, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.13, i32 noundef %39) #7
  br label %72

45:                                               ; preds = %35
  %46 = load i32, ptr %3, align 4
  %47 = getelementptr inbounds %struct.da906x_chip_config, ptr %5, i32 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %72, label %51

51:                                               ; preds = %45
  %52 = load ptr, ptr %6, align 4
  %53 = load i32, ptr %37, align 4
  %54 = call i32 @regmap_write(ptr noundef %52, i32 noundef %53, i32 noundef %48) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.da9063_onkey, ptr %0, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.input_dev, ptr %58, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.14, i32 noundef %54) #7
  br label %72

60:                                               ; preds = %51
  %61 = load ptr, ptr %6, align 4
  %62 = getelementptr inbounds %struct.da906x_chip_config, ptr %5, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.da906x_chip_config, ptr %5, i32 0, i32 7
  %65 = load i32, ptr %64, align 4
  %66 = call i32 @regmap_write(ptr noundef %61, i32 noundef %63, i32 noundef %65) #6
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.da9063_onkey, ptr %0, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.input_dev, ptr %70, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.15, i32 noundef %66) #7
  br label %72

72:                                               ; preds = %68, %60, %56, %45, %41
  br i1 %19, label %76, label %73

73:                                               ; preds = %72, %28, %11
  %74 = load ptr, ptr @system_wq, align 4
  %75 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %74, ptr noundef %0, i32 noundef 5) #6
  br label %76

76:                                               ; preds = %73, %72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @da9063_cancel_poll(ptr noundef %0) #2 {
  %2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @da9063_onkey_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.da9063_onkey, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.da9063_onkey, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %5, align 4
  %9 = call i32 @regmap_read(ptr noundef %7, i32 noundef %8, ptr noundef nonnull %3) #6
  %10 = getelementptr inbounds %struct.da9063_onkey, ptr %1, i32 0, i32 6
  %11 = load i8, ptr %10, align 4, !range !9
  %12 = icmp eq i8 %11, 0
  %13 = icmp ne i32 %9, 0
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = load i32, ptr %3, align 4
  %17 = getelementptr inbounds %struct.da906x_chip_config, ptr %5, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.da9063_onkey, ptr %1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  call void @input_event(ptr noundef %23, i32 noundef 1, i32 noundef 116, i32 noundef 1) #6
  %24 = load ptr, ptr %22, align 4
  call void @input_event(ptr noundef %24, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %25 = load ptr, ptr @system_wq, align 4
  %26 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %25, ptr noundef %1, i32 noundef 0) #6
  br label %33

27:                                               ; preds = %15, %2
  %28 = getelementptr inbounds %struct.da9063_onkey, ptr %1, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  call void @input_event(ptr noundef %29, i32 noundef 1, i32 noundef 116, i32 noundef 1) #6
  %30 = load ptr, ptr %28, align 4
  call void @input_event(ptr noundef %30, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %31 = load ptr, ptr %28, align 4
  call void @input_event(ptr noundef %31, i32 noundef 1, i32 noundef 116, i32 noundef 0) #6
  %32 = load ptr, ptr %28, align 4
  call void @input_event(ptr noundef %32, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %33

33:                                               ; preds = %27, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{i8 0, i8 2}
