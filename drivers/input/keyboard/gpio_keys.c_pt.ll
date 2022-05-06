; ModuleID = '/llk/IR/drivers/input/keyboard/gpio_keys.c_pt.bc'
source_filename = "../drivers/input/keyboard/gpio_keys.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.gpio_keys_platform_data = type { ptr, i32, i32, i8, ptr, ptr, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.gpio_keys_button = type { i32, i32, i32, ptr, i32, i32, i32, i32, i8, i32, i32 }
%struct.gpio_keys_drvdata = type { ptr, ptr, %struct.mutex, ptr, [0 x %struct.gpio_button_data] }
%struct.gpio_button_data = type { ptr, ptr, ptr, ptr, %struct.hrtimer, i32, %struct.delayed_work, %struct.hrtimer, i32, i32, i32, %struct.spinlock, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@gpio_keys_device_driver = internal global %struct.platform_driver { ptr @gpio_keys_probe, ptr null, ptr @gpio_keys_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpio_keys_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpio_keys_groups, ptr @gpio_keys_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__initcall__kmod_gpio_keys__210_1069_gpio_keys_init7 = internal global ptr @gpio_keys_init, section ".initcall7.init", align 4
@__exitcall_gpio_keys_exit = internal global ptr @gpio_keys_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file211 = internal constant [48 x i8] c"gpio_keys.file=drivers/input/keyboard/gpio_keys\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [22 x i8] c"gpio_keys.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author213 = internal constant [50 x i8] c"gpio_keys.author=Phil Blundell <pb@handhelds.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description214 = internal constant [48 x i8] c"gpio_keys.description=Keyboard driver for GPIOs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias215 = internal constant [35 x i8] c"gpio_keys.alias=platform:gpio-keys\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"gpio-keys\00", align 1
@gpio_keys_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-keys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@gpio_keys_groups = internal global [2 x ptr] [ptr @gpio_keys_group, ptr null], align 4
@gpio_keys_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @gpio_keys_suspend, ptr @gpio_keys_resume, ptr @gpio_keys_suspend, ptr @gpio_keys_resume, ptr @gpio_keys_suspend, ptr @gpio_keys_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to allocate state\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@gpio_keys_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"&ddata->disable_lock\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"gpio-keys/input0\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"missing child device node for entry %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Unable to register input device, error: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"autorepeat\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"linux,code\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Button without keycode\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"linux,input-type\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"gpio-key,wakeup\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"wakeup-event-action\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"linux,can-disable\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"debounce-interval\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"failed to get gpio state: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"gpio_keys\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"failed to get gpio: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Failed to request GPIO %d, error %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"Unable to get irq number for GPIO %d, error %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"Found button without gpio or irq\0A\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"Only EV_KEY allowed for IRQ buttons.\0A\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"failed to register quiesce action, error: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"Unable to claim irq %d; error %d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.26 = private unnamed_addr constant [20 x i8] c"failed to shutdown\0A\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"failed to configure IRQ %d as wakeup source: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"failed to set wakeup trigger %08x for IRQ %d: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [52 x i8] c"failed to restore interrupt trigger for IRQ %d: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"failed to disable IRQ %d as wake source: %d\0A\00", align 1
@gpio_keys_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @gpio_keys_attrs, ptr null }, align 4
@gpio_keys_attrs = internal global [5 x ptr] [ptr @dev_attr_keys, ptr @dev_attr_switches, ptr @dev_attr_disabled_keys, ptr @dev_attr_disabled_switches, ptr null], align 4
@dev_attr_keys = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292 }, ptr @gpio_keys_show_keys, ptr null }, align 4
@dev_attr_switches = internal global %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292 }, ptr @gpio_keys_show_switches, ptr null }, align 4
@dev_attr_disabled_keys = internal global %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420 }, ptr @gpio_keys_show_disabled_keys, ptr @gpio_keys_store_disabled_keys }, align 4
@dev_attr_disabled_switches = internal global %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420 }, ptr @gpio_keys_show_disabled_switches, ptr @gpio_keys_store_disabled_switches }, align 4
@.str.31 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"%*pbl\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"switches\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"disabled_keys\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"disabled_switches\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias215, ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_description214, ptr @__UNIQUE_ID_file211, ptr @__UNIQUE_ID_license212, ptr @__exitcall_gpio_keys_exit, ptr @__initcall__kmod_gpio_keys__210_1069_gpio_keys_init7, ptr @gpio_keys_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @gpio_keys_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_keys_device_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gpio_keys_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_keys_device_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_keys_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %76

6:                                                ; preds = %1
  %7 = tail call i32 @device_get_child_node_count(ptr noundef %2) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %73, label %9

9:                                                ; preds = %6
  %10 = mul i32 %7, 44
  %11 = add i32 %10, 28
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %11, i32 noundef 3520) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %73, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.gpio_keys_platform_data, ptr %12, i32 1
  store ptr %15, ptr %12, align 4
  %16 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %12, i32 0, i32 1
  store i32 %7, ptr %16, align 4
  %17 = tail call zeroext i1 @device_property_present(ptr noundef %2, ptr noundef nonnull @.str.7) #5
  %18 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %12, i32 0, i32 3
  %19 = zext i1 %17 to i8
  %20 = load i8, ptr %18, align 4
  %21 = and i8 %20, -2
  %22 = or i8 %21, %19
  store i8 %22, ptr %18, align 4
  %23 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %12, i32 0, i32 6
  %24 = tail call i32 @device_property_read_string(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef %23) #5
  %25 = tail call ptr @device_get_next_child_node(ptr noundef %2, ptr noundef null) #5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %71, label %27

27:                                               ; preds = %67, %14
  %28 = phi ptr [ %68, %67 ], [ %15, %14 ]
  %29 = phi ptr [ %69, %67 ], [ %25, %14 ]
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.fwnode_handle, ptr %29, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, @of_fwnode_ops
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %29, i32 -12
  %37 = tail call i32 @irq_of_parse_and_map(ptr noundef %36, i32 noundef 0) #5
  %38 = getelementptr inbounds %struct.gpio_keys_button, ptr %28, i32 0, i32 10
  store i32 %37, ptr %38, align 4
  br label %39

39:                                               ; preds = %35, %31, %27
  %40 = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %29, ptr noundef nonnull @.str.9, ptr noundef %28, i32 noundef 1) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #6
  tail call void @fwnode_handle_put(ptr noundef nonnull %29) #5
  br label %73

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.gpio_keys_button, ptr %28, i32 0, i32 3
  %45 = tail call i32 @fwnode_property_read_string(ptr noundef nonnull %29, ptr noundef nonnull @.str.8, ptr noundef %44) #5
  %46 = getelementptr inbounds %struct.gpio_keys_button, ptr %28, i32 0, i32 4
  %47 = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %29, ptr noundef nonnull @.str.11, ptr noundef %46, i32 noundef 1) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  store i32 1, ptr %46, align 4
  br label %50

50:                                               ; preds = %49, %43
  %51 = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %29, ptr noundef nonnull @.str.12) #5
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  %53 = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %29, ptr noundef nonnull @.str.13) #5
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i1 [ true, %50 ], [ %53, %52 ]
  %56 = zext i1 %55 to i32
  %57 = getelementptr inbounds %struct.gpio_keys_button, ptr %28, i32 0, i32 5
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.gpio_keys_button, ptr %28, i32 0, i32 6
  %59 = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %29, ptr noundef nonnull @.str.14, ptr noundef %58, i32 noundef 1) #5
  %60 = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %29, ptr noundef nonnull @.str.15) #5
  %61 = getelementptr inbounds %struct.gpio_keys_button, ptr %28, i32 0, i32 8
  %62 = zext i1 %60 to i8
  store i8 %62, ptr %61, align 4
  %63 = getelementptr inbounds %struct.gpio_keys_button, ptr %28, i32 0, i32 7
  %64 = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %29, ptr noundef nonnull @.str.16, ptr noundef %63, i32 noundef 1) #5
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %54
  store i32 5, ptr %63, align 4
  br label %67

67:                                               ; preds = %66, %54
  %68 = getelementptr %struct.gpio_keys_button, ptr %28, i32 1
  %69 = tail call ptr @device_get_next_child_node(ptr noundef %2, ptr noundef nonnull %29) #5
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %27

71:                                               ; preds = %67, %14
  %72 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %76

73:                                               ; preds = %71, %42, %9, %6
  %74 = phi ptr [ %12, %71 ], [ inttoptr (i32 -12 to ptr), %9 ], [ inttoptr (i32 -19 to ptr), %6 ], [ inttoptr (i32 -22 to ptr), %42 ]
  %75 = ptrtoint ptr %74 to i32
  br label %312

76:                                               ; preds = %71, %1
  %77 = phi ptr [ %4, %1 ], [ %12, %71 ]
  %78 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %77, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %79, i32 184) #5
  %81 = extractvalue { i32, i1 } %80, 1
  %82 = extractvalue { i32, i1 } %80, 0
  %83 = add nuw i32 %82, 32
  %84 = select i1 %81, i32 -1, i32 %83
  %85 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %84, i32 noundef 3520) #5
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %312

88:                                               ; preds = %76
  %89 = load i32, ptr %78, align 4
  %90 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %89, i32 2) #5
  %91 = extractvalue { i32, i1 } %90, 1
  br i1 %91, label %92, label %94, !prof !8

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 3
  store ptr null, ptr %93, align 4
  br label %312

94:                                               ; preds = %88
  %95 = extractvalue { i32, i1 } %90, 0
  %96 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %95, i32 noundef 3520) #5
  %97 = getelementptr inbounds %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 3
  store ptr %96, ptr %97, align 4
  %98 = icmp eq ptr %96, null
  br i1 %98, label %312, label %99

99:                                               ; preds = %94
  %100 = tail call ptr @devm_input_allocate_device(ptr noundef %2) #5
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  br label %312

103:                                              ; preds = %99
  store ptr %77, ptr %85, align 8
  %104 = getelementptr inbounds %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 1
  store ptr %100, ptr %104, align 4
  %105 = getelementptr inbounds %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %105, ptr noundef nonnull @.str.3, ptr noundef nonnull @gpio_keys_probe.__key) #5
  %106 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %85, ptr %106, align 8
  %107 = getelementptr inbounds %struct.input_dev, ptr %100, i32 0, i32 40, i32 8
  store ptr %85, ptr %107, align 8
  %108 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %77, i32 0, i32 6
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load ptr, ptr %0, align 8
  br label %113

113:                                              ; preds = %111, %103
  %114 = phi ptr [ %112, %111 ], [ %109, %103 ]
  store ptr %114, ptr %100, align 8
  %115 = getelementptr inbounds %struct.input_dev, ptr %100, i32 0, i32 1
  store ptr @.str.4, ptr %115, align 4
  %116 = getelementptr inbounds %struct.input_dev, ptr %100, i32 0, i32 40, i32 1
  store ptr %2, ptr %116, align 4
  %117 = getelementptr inbounds %struct.input_dev, ptr %100, i32 0, i32 31
  store ptr @gpio_keys_open, ptr %117, align 4
  %118 = getelementptr inbounds %struct.input_dev, ptr %100, i32 0, i32 32
  store ptr @gpio_keys_close, ptr %118, align 8
  %119 = getelementptr inbounds %struct.input_dev, ptr %100, i32 0, i32 3
  store i16 25, ptr %119, align 4
  %120 = getelementptr inbounds %struct.input_dev, ptr %100, i32 0, i32 3, i32 1
  store i16 1, ptr %120, align 2
  %121 = getelementptr inbounds %struct.input_dev, ptr %100, i32 0, i32 3, i32 2
  store i16 1, ptr %121, align 4
  %122 = getelementptr inbounds %struct.input_dev, ptr %100, i32 0, i32 3, i32 3
  store i16 256, ptr %122, align 2
  %123 = load ptr, ptr %97, align 4
  %124 = getelementptr inbounds %struct.input_dev, ptr %100, i32 0, i32 17
  store ptr %123, ptr %124, align 4
  %125 = getelementptr inbounds %struct.input_dev, ptr %100, i32 0, i32 16
  store i32 2, ptr %125, align 8
  %126 = load i32, ptr %78, align 4
  %127 = getelementptr inbounds %struct.input_dev, ptr %100, i32 0, i32 15
  store i32 %126, ptr %127, align 4
  %128 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %77, i32 0, i32 3
  %129 = load i8, ptr %128, align 4
  %130 = and i8 %129, 1
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %113
  %133 = getelementptr inbounds %struct.input_dev, ptr %100, i32 0, i32 5
  %134 = load i32, ptr %133, align 4
  %135 = or i32 %134, 1048576
  store i32 %135, ptr %133, align 4
  br label %136

136:                                              ; preds = %132, %113
  %137 = load i32, ptr %78, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %303

139:                                              ; preds = %295, %136
  %140 = phi i32 [ %299, %295 ], [ 0, %136 ]
  %141 = phi i32 [ %300, %295 ], [ 0, %136 ]
  %142 = phi ptr [ %152, %295 ], [ null, %136 ]
  %143 = load ptr, ptr %77, align 4
  %144 = getelementptr %struct.gpio_keys_button, ptr %143, i32 %141
  %145 = load ptr, ptr %3, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %139
  %148 = tail call ptr @device_get_next_child_node(ptr noundef %2, ptr noundef %142) #5
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %141) #6
  br label %312

151:                                              ; preds = %147, %139
  %152 = phi ptr [ %142, %139 ], [ %148, %147 ]
  %153 = getelementptr %struct.gpio_keys_button, ptr %143, i32 %141, i32 3
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  %156 = select i1 %155, ptr @.str.18, ptr %154
  %157 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141
  %158 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 1
  store ptr %100, ptr %158, align 4
  store ptr %144, ptr %157, align 8
  %159 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 11
  store i32 0, ptr %159, align 4
  %160 = icmp eq ptr %152, null
  br i1 %160, label %168, label %161

161:                                              ; preds = %151
  %162 = tail call ptr @devm_fwnode_gpiod_get_index(ptr noundef %2, ptr noundef nonnull %152, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef %156) #5
  %163 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 2
  store ptr %162, ptr %163, align 8
  %164 = icmp ugt ptr %162, inttoptr (i32 -4096 to ptr)
  br i1 %164, label %165, label %188

165:                                              ; preds = %161
  %166 = ptrtoint ptr %162 to i32
  switch i32 %166, label %289 [
    i32 -2, label %167
    i32 -517, label %291
  ]

167:                                              ; preds = %165
  store ptr null, ptr %163, align 8
  br label %242

168:                                              ; preds = %151
  %169 = getelementptr %struct.gpio_keys_button, ptr %143, i32 %141, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = icmp ult i32 %170, 2048
  br i1 %171, label %175, label %172

172:                                              ; preds = %168
  %173 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 2
  %174 = load ptr, ptr %173, align 8
  br label %188

175:                                              ; preds = %168
  %176 = getelementptr %struct.gpio_keys_button, ptr %143, i32 %141, i32 2
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, 0
  %179 = select i1 %178, i32 1, i32 5
  %180 = tail call i32 @devm_gpio_request_one(ptr noundef %2, i32 noundef %170, i32 noundef %179, ptr noundef nonnull %156) #5
  %181 = icmp slt i32 %180, 0
  %182 = load i32, ptr %169, align 4
  br i1 %181, label %183, label %184

183:                                              ; preds = %175
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef %182, i32 noundef %180) #6
  br label %293

184:                                              ; preds = %175
  %185 = tail call ptr @gpio_to_desc(i32 noundef %182) #5
  %186 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 2
  store ptr %185, ptr %186, align 8
  %187 = icmp eq ptr %185, null
  br i1 %187, label %293, label %191

188:                                              ; preds = %172, %161
  %189 = phi ptr [ %174, %172 ], [ %162, %161 ]
  %190 = icmp eq ptr %189, null
  br i1 %190, label %242, label %191

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %189, %188 ], [ %185, %184 ]
  %193 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 2
  %194 = tail call i32 @gpiod_is_active_low(ptr noundef nonnull %192) #5
  %195 = icmp eq i32 %194, 0
  %196 = getelementptr %struct.gpio_keys_button, ptr %143, i32 %141, i32 7
  %197 = load i32, ptr %196, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %213, label %199

199:                                              ; preds = %191
  %200 = load ptr, ptr %193, align 8
  %201 = mul i32 %197, 1000
  %202 = tail call i32 @gpiod_set_debounce(ptr noundef %200, i32 noundef %201) #5
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load i32, ptr %196, align 4
  %206 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 8
  store i32 %205, ptr %206, align 8
  br label %207

207:                                              ; preds = %204, %199
  %208 = load ptr, ptr %193, align 8
  %209 = tail call i32 @gpiod_cansleep(ptr noundef %208) #5
  %210 = icmp eq i32 %209, 0
  %211 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 15
  %212 = zext i1 %210 to i8
  store i8 %212, ptr %211, align 1
  br label %213

213:                                              ; preds = %207, %191
  %214 = getelementptr %struct.gpio_keys_button, ptr %143, i32 %141, i32 10
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %213
  %218 = load ptr, ptr %193, align 8
  %219 = tail call i32 @gpiod_to_irq(ptr noundef %218) #5
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %239, label %221

221:                                              ; preds = %217, %213
  %222 = phi i32 [ %215, %213 ], [ %219, %217 ]
  %223 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 9
  store i32 %222, ptr %223, align 4
  %224 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 6
  store i32 -32, ptr %224, align 4
  %225 = getelementptr inbounds %struct.work_struct, ptr %224, i32 0, i32 1
  store volatile ptr %225, ptr %225, align 4
  %226 = getelementptr inbounds %struct.work_struct, ptr %224, i32 0, i32 1, i32 1
  store ptr %225, ptr %226, align 4
  %227 = getelementptr inbounds %struct.work_struct, ptr %224, i32 0, i32 2
  store ptr @gpio_keys_gpio_work_func, ptr %227, align 4
  %228 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %228, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #5
  %229 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 7
  tail call void @hrtimer_init(ptr noundef %229, i32 noundef 0, i32 noundef 1) #5
  %230 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 7, i32 2
  store ptr @gpio_keys_debounce_timer, ptr %230, align 8
  %231 = getelementptr %struct.gpio_keys_button, ptr %143, i32 %141, i32 6
  %232 = load i32, ptr %231, align 4
  switch i32 %232, label %259 [
    i32 1, label %233
    i32 2, label %236
  ]

233:                                              ; preds = %221
  %234 = select i1 %195, i32 1, i32 2
  %235 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 10
  store i32 %234, ptr %235, align 8
  br label %259

236:                                              ; preds = %221
  %237 = select i1 %195, i32 2, i32 1
  %238 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 10
  store i32 %237, ptr %238, align 8
  br label %259

239:                                              ; preds = %217
  %240 = getelementptr %struct.gpio_keys_button, ptr %143, i32 %141, i32 1
  %241 = load i32, ptr %240, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef %241, i32 noundef %219) #6
  br label %293

242:                                              ; preds = %188, %167
  %243 = getelementptr %struct.gpio_keys_button, ptr %143, i32 %141, i32 10
  %244 = load i32, ptr %243, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %242
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.22) #6
  br label %293

247:                                              ; preds = %242
  %248 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 9
  store i32 %244, ptr %248, align 4
  %249 = getelementptr %struct.gpio_keys_button, ptr %143, i32 %141, i32 4
  %250 = load i32, ptr %249, align 4
  %251 = icmp ult i32 %250, 2
  br i1 %251, label %253, label %252

252:                                              ; preds = %247
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.23) #6
  br label %293

253:                                              ; preds = %247
  %254 = getelementptr %struct.gpio_keys_button, ptr %143, i32 %141, i32 7
  %255 = load i32, ptr %254, align 4
  %256 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 5
  store i32 %255, ptr %256, align 8
  %257 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 4
  tail call void @hrtimer_init(ptr noundef %257, i32 noundef 0, i32 noundef 9) #5
  %258 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 4, i32 2
  store ptr @gpio_keys_irq_timer, ptr %258, align 8
  br label %259

259:                                              ; preds = %253, %236, %233, %221
  %260 = phi ptr [ @gpio_keys_irq_isr, %253 ], [ @gpio_keys_gpio_isr, %221 ], [ @gpio_keys_gpio_isr, %236 ], [ @gpio_keys_gpio_isr, %233 ]
  %261 = phi i32 [ 0, %253 ], [ 3, %221 ], [ 3, %236 ], [ 3, %233 ]
  %262 = load ptr, ptr %97, align 4
  %263 = getelementptr i16, ptr %262, i32 %141
  %264 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 3
  store ptr %263, ptr %264, align 4
  %265 = load i32, ptr %144, align 4
  %266 = trunc i32 %265 to i16
  store i16 %266, ptr %263, align 2
  %267 = getelementptr %struct.gpio_keys_button, ptr %143, i32 %141, i32 4
  %268 = load i32, ptr %267, align 4
  %269 = icmp eq i32 %268, 0
  %270 = select i1 %269, i32 1, i32 %268
  %271 = load ptr, ptr %264, align 4
  %272 = load i16, ptr %271, align 2
  %273 = zext i16 %272 to i32
  tail call void @input_set_capability(ptr noundef nonnull %100, i32 noundef %270, i32 noundef %273) #5
  %274 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @gpio_keys_quiesce_key, ptr noundef %157) #5
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %259
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef %274) #6
  br label %293

277:                                              ; preds = %259
  %278 = getelementptr %struct.gpio_keys_button, ptr %143, i32 %141, i32 8
  %279 = load i8, ptr %278, align 4, !range !9
  %280 = icmp eq i8 %279, 0
  %281 = or i32 %261, 128
  %282 = select i1 %280, i32 %281, i32 %261
  %283 = getelementptr %struct.gpio_keys_drvdata, ptr %85, i32 0, i32 4, i32 %141, i32 9
  %284 = load i32, ptr %283, align 4
  %285 = tail call i32 @devm_request_any_context_irq(ptr noundef %2, i32 noundef %284, ptr noundef nonnull %260, i32 noundef %282, ptr noundef nonnull %156, ptr noundef %157) #5
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %295

287:                                              ; preds = %277
  %288 = load i32, ptr %283, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %288, i32 noundef %285) #6
  br label %293

289:                                              ; preds = %165
  %290 = ptrtoint ptr %162 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %290) #6
  br label %293

291:                                              ; preds = %165
  %292 = ptrtoint ptr %162 to i32
  br label %293

293:                                              ; preds = %291, %289, %287, %276, %252, %246, %239, %184, %183
  %294 = phi i32 [ %290, %289 ], [ %180, %183 ], [ -22, %246 ], [ -22, %252 ], [ %219, %239 ], [ %285, %287 ], [ %274, %276 ], [ %292, %291 ], [ -22, %184 ]
  tail call void @fwnode_handle_put(ptr noundef %152) #5
  br label %312

295:                                              ; preds = %277
  %296 = getelementptr %struct.gpio_keys_button, ptr %143, i32 %141, i32 5
  %297 = load i32, ptr %296, align 4
  %298 = icmp eq i32 %297, 0
  %299 = select i1 %298, i32 %140, i32 1
  %300 = add nuw nsw i32 %141, 1
  %301 = load i32, ptr %78, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %139, label %303

303:                                              ; preds = %295, %136
  %304 = phi ptr [ null, %136 ], [ %152, %295 ]
  %305 = phi i32 [ 0, %136 ], [ %299, %295 ]
  tail call void @fwnode_handle_put(ptr noundef %304) #5
  %306 = tail call i32 @input_register_device(ptr noundef nonnull %100) #5
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %309, label %308

308:                                              ; preds = %303
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %306) #6
  br label %312

309:                                              ; preds = %303
  %310 = icmp ne i32 %305, 0
  %311 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext %310) #5
  br label %312

312:                                              ; preds = %309, %308, %293, %150, %102, %94, %92, %87, %73
  %313 = phi i32 [ %306, %308 ], [ 0, %309 ], [ -12, %102 ], [ -12, %87 ], [ %75, %73 ], [ -12, %94 ], [ -12, %92 ], [ -22, %150 ], [ %294, %293 ]
  ret i32 %313
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_keys_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @gpio_keys_suspend(ptr noundef %2)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.26) #6
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_keys_open(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %6(ptr noundef %10) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %8
  %14 = load ptr, ptr %3, align 8
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi ptr [ %14, %13 ], [ %4, %1 ]
  %17 = getelementptr inbounds %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %16, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %31, %15
  %23 = phi ptr [ %32, %31 ], [ %16, %15 ]
  %24 = phi i32 [ %33, %31 ], [ 0, %15 ]
  %25 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %24, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %24
  tail call fastcc void @gpio_keys_gpio_report_event(ptr noundef %29) #5
  %30 = load ptr, ptr %3, align 8
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi ptr [ %30, %28 ], [ %23, %22 ]
  %33 = add nuw nsw i32 %24, 1
  %34 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %32, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %22, label %37

37:                                               ; preds = %31, %15
  tail call void @input_event(ptr noundef %18, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %38

38:                                               ; preds = %37, %8
  %39 = phi i32 [ 0, %37 ], [ %11, %8 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_keys_close(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %6(ptr noundef %10) #5
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpio_keys_gpio_report_event(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.gpio_button_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_keys_button, ptr %2, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1, i32 %6
  %9 = getelementptr inbounds %struct.gpio_button_data, ptr %0, i32 0, i32 15
  %10 = load i8, ptr %9, align 1, !range !9
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.gpio_button_data, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  br i1 %11, label %16, label %14

14:                                               ; preds = %1
  %15 = tail call i32 @gpiod_get_value(ptr noundef %13) #5
  br label %18

16:                                               ; preds = %1
  %17 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %13) #5
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 40, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.17, i32 noundef %19) #6
  br label %37

24:                                               ; preds = %18
  %25 = icmp eq i32 %8, 3
  br i1 %25, label %26, label %32

26:                                               ; preds = %24
  %27 = icmp eq i32 %19, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %26
  %29 = load i32, ptr %2, align 4
  %30 = getelementptr inbounds %struct.gpio_keys_button, ptr %2, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  tail call void @input_event(ptr noundef %4, i32 noundef 3, i32 noundef %29, i32 noundef %31) #5
  br label %37

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.gpio_button_data, ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef %8, i32 noundef %36, i32 noundef %19) #5
  br label %37

37:                                               ; preds = %32, %28, %26, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_is_active_low(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_debounce(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_keys_gpio_work_func(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -68
  tail call fastcc void @gpio_keys_gpio_report_event(ptr noundef %2) #5
  %3 = getelementptr i8, ptr %0, i32 -64
  %4 = load ptr, ptr %3, align 4
  tail call void @input_event(ptr noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.gpio_keys_button, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 40, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @pm_relax(ptr noundef %12) #5
  br label %13

13:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_keys_debounce_timer(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -112
  tail call fastcc void @gpio_keys_gpio_report_event(ptr noundef %2) #5
  %3 = getelementptr i8, ptr %0, i32 -108
  %4 = load ptr, ptr %3, align 4
  tail call void @input_event(ptr noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.gpio_keys_button, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 40, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @pm_relax(ptr noundef %12) #5
  br label %13

13:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_keys_gpio_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gpio_button_data, ptr %1, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %0
  br i1 %5, label %7, label %6, !prof !10

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/input/keyboard/gpio_keys.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 421, 0\0A.popsection", ""() #5, !srcloc !11
  unreachable

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8
  %9 = getelementptr inbounds %struct.gpio_keys_button, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.gpio_button_data, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 40, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void @pm_stay_awake(ptr noundef %16) #5
  %17 = getelementptr inbounds %struct.gpio_button_data, ptr %1, i32 0, i32 14
  %18 = load i8, ptr %17, align 2, !range !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.gpio_keys_button, ptr %8, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load ptr, ptr %13, align 4
  %26 = load i32, ptr %8, align 4
  tail call void @input_event(ptr noundef %25, i32 noundef 1, i32 noundef %26, i32 noundef 1) #5
  br label %27

27:                                               ; preds = %24, %20, %12, %7
  %28 = getelementptr inbounds %struct.gpio_button_data, ptr %1, i32 0, i32 15
  %29 = load i8, ptr %28, align 1, !range !9
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gpio_button_data, ptr %1, i32 0, i32 7
  %33 = getelementptr inbounds %struct.gpio_button_data, ptr %1, i32 0, i32 8
  %34 = load i32, ptr %33, align 8
  %35 = zext i32 %34 to i64
  %36 = mul nuw nsw i64 %35, 1000000
  tail call void @hrtimer_start_range_ns(ptr noundef %32, i64 noundef %36, i64 noundef 0, i32 noundef 1) #5
  br label %44

37:                                               ; preds = %27
  %38 = load ptr, ptr @system_wq, align 4
  %39 = getelementptr inbounds %struct.gpio_button_data, ptr %1, i32 0, i32 6
  %40 = getelementptr inbounds %struct.gpio_button_data, ptr %1, i32 0, i32 8
  %41 = load i32, ptr %40, align 8
  %42 = tail call i32 @__msecs_to_jiffies(i32 noundef %41) #5
  %43 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %38, ptr noundef %39, i32 noundef %42) #5
  br label %44

44:                                               ; preds = %37, %31
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_keys_irq_timer(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 161
  %3 = load i8, ptr %2, align 1, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  tail call void @input_event(ptr noundef %7, i32 noundef 1, i32 noundef %11, i32 noundef 0) #5
  tail call void @input_event(ptr noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  store i8 0, ptr %2, align 1
  br label %12

12:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_keys_irq_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gpio_button_data, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_button_data, ptr %1, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %9, label %8, !prof !10

8:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/input/keyboard/gpio_keys.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 473, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gpio_button_data, ptr %1, i32 0, i32 11
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #5
  %12 = getelementptr inbounds %struct.gpio_button_data, ptr %1, i32 0, i32 13
  %13 = load i8, ptr %12, align 1, !range !9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = load ptr, ptr %1, align 8
  %17 = getelementptr inbounds %struct.gpio_keys_button, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.input_dev, ptr %21, i32 0, i32 40, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void @pm_wakeup_dev_event(ptr noundef %23, i32 noundef 0, i1 noundef zeroext false) #5
  br label %24

24:                                               ; preds = %20, %15
  %25 = getelementptr inbounds %struct.gpio_button_data, ptr %1, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef %28, i32 noundef 1) #5
  tail call void @input_event(ptr noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %29 = getelementptr inbounds %struct.gpio_button_data, ptr %1, i32 0, i32 5
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load ptr, ptr %25, align 4
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef %35, i32 noundef 0) #5
  tail call void @input_event(ptr noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %46

36:                                               ; preds = %24
  store i8 1, ptr %12, align 1
  br label %41

37:                                               ; preds = %9
  %38 = getelementptr inbounds %struct.gpio_button_data, ptr %1, i32 0, i32 5
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37, %36
  %42 = phi i32 [ %30, %36 ], [ %39, %37 ]
  %43 = getelementptr inbounds %struct.gpio_button_data, ptr %1, i32 0, i32 4
  %44 = zext i32 %42 to i64
  %45 = mul nuw nsw i64 %44, 1000000
  tail call void @hrtimer_start_range_ns(ptr noundef %43, i64 noundef %45, i64 noundef 0, i32 noundef 9) #5
  br label %46

46:                                               ; preds = %41, %37, %32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_keys_quiesce_key(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.gpio_button_data, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gpio_button_data, ptr %0, i32 0, i32 4
  %7 = tail call i32 @hrtimer_cancel(ptr noundef %6) #5
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.gpio_button_data, ptr %0, i32 0, i32 15
  %10 = load i8, ptr %9, align 1, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gpio_button_data, ptr %0, i32 0, i32 7
  %14 = tail call i32 @hrtimer_cancel(ptr noundef %13) #5
  br label %18

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.gpio_button_data, ptr %0, i32 0, i32 6
  %17 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %16) #5
  br label %18

18:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_any_context_irq(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fwnode_gpiod_get_index(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_relax(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_stay_awake(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_keys_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %101, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %101, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %115

19:                                               ; preds = %57, %14
  %20 = phi i32 [ %59, %57 ], [ 0, %14 ]
  %21 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %20
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.gpio_keys_button, ptr %22, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %57, label %26

26:                                               ; preds = %19
  %27 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %20, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @irq_set_irq_wake(i32 noundef %28, i32 noundef 1) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %20, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 40, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.27, i32 noundef %36, i32 noundef %29) #6
  br label %54

37:                                               ; preds = %26
  %38 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %20, i32 10
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %27, align 4
  %43 = tail call i32 @irq_set_irq_type(i32 noundef %42, i32 noundef %39) #5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %41
  %46 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %20, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.input_dev, ptr %47, i32 0, i32 40, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %38, align 8
  %51 = load i32, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.28, i32 noundef %50, i32 noundef %51, i32 noundef %43) #6
  %52 = load i32, ptr %27, align 4
  %53 = tail call i32 @irq_set_irq_wake(i32 noundef %52, i32 noundef 0) #5
  br label %54

54:                                               ; preds = %45, %31
  %55 = phi i32 [ %29, %31 ], [ %43, %45 ]
  %56 = icmp eq i32 %20, 0
  br i1 %56, label %115, label %64

57:                                               ; preds = %41, %37, %19
  %58 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %20, i32 14
  store i8 1, ptr %58, align 2
  %59 = add nuw nsw i32 %20, 1
  %60 = load ptr, ptr %3, align 8
  %61 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %60, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %19, label %115

64:                                               ; preds = %98, %54
  %65 = phi i32 [ %66, %98 ], [ %20, %54 ]
  %66 = add nsw i32 %65, -1
  %67 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %66
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.gpio_keys_button, ptr %68, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %98, label %72

72:                                               ; preds = %64
  %73 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %66, i32 10
  %74 = load i32, ptr %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %72
  %77 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %66, i32 9
  %78 = load i32, ptr %77, align 4
  %79 = tail call i32 @irq_set_irq_type(i32 noundef %78, i32 noundef 3) #5
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %66, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.input_dev, ptr %83, i32 0, i32 40, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = load i32, ptr %77, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %85, ptr noundef nonnull @.str.29, i32 noundef %86, i32 noundef %79) #6
  br label %87

87:                                               ; preds = %81, %76, %72
  %88 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %66, i32 9
  %89 = load i32, ptr %88, align 4
  %90 = tail call i32 @irq_set_irq_wake(i32 noundef %89, i32 noundef 0) #5
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %87
  %93 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %66, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.input_dev, ptr %94, i32 0, i32 40, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = load i32, ptr %88, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %96, ptr noundef nonnull @.str.30, i32 noundef %97, i32 noundef %90) #6
  br label %98

98:                                               ; preds = %92, %87, %64
  %99 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %66, i32 14
  store i8 0, ptr %99, align 2
  %100 = icmp eq i32 %66, 0
  br i1 %100, label %115, label %64

101:                                              ; preds = %10, %1
  %102 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %102) #5
  %103 = tail call zeroext i1 @input_device_enabled(ptr noundef %5) #5
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 40, i32 8
  %106 = load ptr, ptr %105, align 8
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %107, i32 0, i32 5
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 40, i32 1
  %113 = load ptr, ptr %112, align 4
  tail call void %109(ptr noundef %113) #5
  br label %114

114:                                              ; preds = %111, %104, %101
  tail call void @mutex_unlock(ptr noundef %102) #5
  br label %115

115:                                              ; preds = %114, %98, %57, %54, %14
  %116 = phi i32 [ %55, %54 ], [ 0, %14 ], [ 0, %114 ], [ %55, %98 ], [ 0, %57 ]
  ret i32 %116
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_keys_show_keys(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @bitmap_zalloc(i32 noundef 768, i32 noundef 3264) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %33, %8
  %14 = phi ptr [ %34, %33 ], [ %9, %8 ]
  %15 = phi i32 [ %35, %33 ], [ 0, %8 ]
  %16 = getelementptr %struct.gpio_keys_drvdata, ptr %5, i32 0, i32 4, i32 %15
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.gpio_keys_button, ptr %17, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %33

21:                                               ; preds = %13
  %22 = getelementptr %struct.gpio_keys_drvdata, ptr %5, i32 0, i32 4, i32 %15, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 31
  %27 = shl nuw i32 1, %26
  %28 = lshr i32 %25, 5
  %29 = getelementptr i32, ptr %6, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %27, %30
  store i32 %31, ptr %29, align 4
  %32 = load ptr, ptr %5, align 8
  br label %33

33:                                               ; preds = %21, %13
  %34 = phi ptr [ %14, %13 ], [ %32, %21 ]
  %35 = add nuw nsw i32 %15, 1
  %36 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %34, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %13, label %39

39:                                               ; preds = %33, %8
  %40 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4095, ptr noundef nonnull @.str.32, i32 noundef 768, ptr noundef nonnull %6) #5
  %41 = add i32 %40, 1
  %42 = getelementptr i8, ptr %2, i32 %40
  store i8 10, ptr %42, align 1
  %43 = getelementptr i8, ptr %2, i32 %41
  store i8 0, ptr %43, align 1
  tail call void @bitmap_free(ptr noundef nonnull %6) #5
  br label %44

44:                                               ; preds = %39, %3
  %45 = phi i32 [ %41, %39 ], [ -12, %3 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gpio_keys_attr_show_helper(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
  %5 = and i32 %2, -5
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %8, label %7, !prof !10

7:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/input/keyboard/gpio_keys.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #5, !srcloc !13
  unreachable

8:                                                ; preds = %4
  %9 = icmp eq i32 %2, 1
  %10 = select i1 %9, i32 768, i32 17
  %11 = tail call ptr @bitmap_zalloc(i32 noundef %10, i32 noundef 3264) #5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %54, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %43, %13
  %19 = phi ptr [ %44, %43 ], [ %14, %13 ]
  %20 = phi i32 [ %45, %43 ], [ 0, %13 ]
  %21 = getelementptr %struct.gpio_keys_drvdata, ptr %0, i32 0, i32 4, i32 %20
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.gpio_keys_button, ptr %22, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %26, label %43

26:                                               ; preds = %18
  br i1 %3, label %27, label %31

27:                                               ; preds = %26
  %28 = getelementptr %struct.gpio_keys_drvdata, ptr %0, i32 0, i32 4, i32 %20, i32 12
  %29 = load i8, ptr %28, align 8, !range !9
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %26
  %32 = getelementptr %struct.gpio_keys_drvdata, ptr %0, i32 0, i32 4, i32 %20, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = and i32 %35, 31
  %37 = shl nuw i32 1, %36
  %38 = lshr i32 %35, 5
  %39 = getelementptr i32, ptr %11, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %37, %40
  store i32 %41, ptr %39, align 4
  %42 = load ptr, ptr %0, align 8
  br label %43

43:                                               ; preds = %31, %27, %18
  %44 = phi ptr [ %19, %27 ], [ %19, %18 ], [ %42, %31 ]
  %45 = add nuw nsw i32 %20, 1
  %46 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %44, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %18, label %49

49:                                               ; preds = %43, %13
  %50 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %1, i32 noundef 4095, ptr noundef nonnull @.str.32, i32 noundef %10, ptr noundef nonnull %11) #5
  %51 = add i32 %50, 1
  %52 = getelementptr i8, ptr %1, i32 %50
  store i8 10, ptr %52, align 1
  %53 = getelementptr i8, ptr %1, i32 %51
  store i8 0, ptr %53, align 1
  tail call void @bitmap_free(ptr noundef nonnull %11) #5
  br label %54

54:                                               ; preds = %49, %8
  %55 = phi i32 [ %51, %49 ], [ -12, %8 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_keys_show_switches(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @bitmap_zalloc(i32 noundef 17, i32 noundef 3264) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %33, %8
  %14 = phi ptr [ %34, %33 ], [ %9, %8 ]
  %15 = phi i32 [ %35, %33 ], [ 0, %8 ]
  %16 = getelementptr %struct.gpio_keys_drvdata, ptr %5, i32 0, i32 4, i32 %15
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.gpio_keys_button, ptr %17, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 5
  br i1 %20, label %21, label %33

21:                                               ; preds = %13
  %22 = getelementptr %struct.gpio_keys_drvdata, ptr %5, i32 0, i32 4, i32 %15, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 31
  %27 = shl nuw i32 1, %26
  %28 = lshr i32 %25, 5
  %29 = getelementptr i32, ptr %6, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %27, %30
  store i32 %31, ptr %29, align 4
  %32 = load ptr, ptr %5, align 8
  br label %33

33:                                               ; preds = %21, %13
  %34 = phi ptr [ %14, %13 ], [ %32, %21 ]
  %35 = add nuw nsw i32 %15, 1
  %36 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %34, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %13, label %39

39:                                               ; preds = %33, %8
  %40 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4095, ptr noundef nonnull @.str.32, i32 noundef 17, ptr noundef nonnull %6) #5
  %41 = add i32 %40, 1
  %42 = getelementptr i8, ptr %2, i32 %40
  store i8 10, ptr %42, align 1
  %43 = getelementptr i8, ptr %2, i32 %41
  store i8 0, ptr %43, align 1
  tail call void @bitmap_free(ptr noundef nonnull %6) #5
  br label %44

44:                                               ; preds = %39, %3
  %45 = phi i32 [ %41, %39 ], [ -12, %3 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_keys_show_disabled_keys(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = tail call fastcc i32 @gpio_keys_attr_show_helper(ptr noundef %5, ptr noundef %2, i32 noundef 1, i1 noundef zeroext true)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_keys_store_disabled_keys(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = tail call fastcc i32 @gpio_keys_attr_store_helper(ptr noundef %6, ptr noundef %2, i32 noundef 1)
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 %3, i32 %7
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gpio_keys_attr_store_helper(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = and i32 %2, -5
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6, !prof !10

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/input/keyboard/gpio_keys.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #5, !srcloc !13
  unreachable

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, 1
  %9 = select i1 %8, i32 768, i32 17
  %10 = getelementptr inbounds %struct.gpio_keys_drvdata, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 13
  %14 = select i1 %8, ptr %12, ptr %13
  %15 = tail call ptr @bitmap_alloc(i32 noundef %9, i32 noundef 3264) #5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %117, label %17

17:                                               ; preds = %7
  %18 = tail call i32 @bitmap_parselist(ptr noundef %1, ptr noundef nonnull %15, i32 noundef %9) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %115

20:                                               ; preds = %17
  %21 = tail call i32 @__bitmap_subset(ptr noundef nonnull %15, ptr noundef %14, i32 noundef %9) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %115, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %51, %23
  %29 = phi i32 [ %52, %51 ], [ 0, %23 ]
  %30 = getelementptr %struct.gpio_keys_drvdata, ptr %0, i32 0, i32 4, i32 %29
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.gpio_keys_button, ptr %31, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %2
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  %36 = getelementptr %struct.gpio_keys_drvdata, ptr %0, i32 0, i32 4, i32 %29, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  %40 = lshr i32 %39, 5
  %41 = getelementptr i32, ptr %15, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %39, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.gpio_keys_button, ptr %31, i32 0, i32 8
  %49 = load i8, ptr %48, align 4, !range !9
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %115, label %51

51:                                               ; preds = %47, %35, %28
  %52 = add nuw nsw i32 %29, 1
  %53 = icmp eq i32 %52, %26
  br i1 %53, label %54, label %28

54:                                               ; preds = %51, %23
  %55 = getelementptr inbounds %struct.gpio_keys_drvdata, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %55) #5
  %56 = load ptr, ptr %0, align 8
  %57 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %56, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %114

60:                                               ; preds = %108, %54
  %61 = phi i32 [ %109, %108 ], [ 0, %54 ]
  %62 = getelementptr %struct.gpio_keys_drvdata, ptr %0, i32 0, i32 4, i32 %61
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.gpio_keys_button, ptr %63, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, %2
  br i1 %66, label %67, label %108

67:                                               ; preds = %60
  %68 = getelementptr %struct.gpio_keys_drvdata, ptr %0, i32 0, i32 4, i32 %61, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = load i16, ptr %69, align 2
  %71 = zext i16 %70 to i32
  %72 = lshr i32 %71, 5
  %73 = getelementptr i32, ptr %15, i32 %72
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %71, 31
  %76 = shl nuw i32 1, %75
  %77 = and i32 %76, %74
  %78 = icmp eq i32 %77, 0
  %79 = getelementptr %struct.gpio_keys_drvdata, ptr %0, i32 0, i32 4, i32 %61, i32 12
  %80 = load i8, ptr %79, align 8, !range !9
  %81 = icmp eq i8 %80, 0
  br i1 %78, label %102, label %82

82:                                               ; preds = %67
  br i1 %81, label %83, label %108

83:                                               ; preds = %82
  %84 = getelementptr %struct.gpio_keys_drvdata, ptr %0, i32 0, i32 4, i32 %61, i32 9
  %85 = load i32, ptr %84, align 4
  tail call void @disable_irq(i32 noundef %85) #5
  %86 = getelementptr %struct.gpio_keys_drvdata, ptr %0, i32 0, i32 4, i32 %61, i32 2
  %87 = load ptr, ptr %86, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = getelementptr %struct.gpio_keys_drvdata, ptr %0, i32 0, i32 4, i32 %61, i32 4
  %91 = tail call i32 @hrtimer_cancel(ptr noundef %90) #5
  br label %92

92:                                               ; preds = %89, %83
  %93 = getelementptr %struct.gpio_keys_drvdata, ptr %0, i32 0, i32 4, i32 %61, i32 15
  %94 = load i8, ptr %93, align 1, !range !9
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = getelementptr %struct.gpio_keys_drvdata, ptr %0, i32 0, i32 4, i32 %61, i32 7
  %98 = tail call i32 @hrtimer_cancel(ptr noundef %97) #5
  br label %106

99:                                               ; preds = %92
  %100 = getelementptr %struct.gpio_keys_drvdata, ptr %0, i32 0, i32 4, i32 %61, i32 6
  %101 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %100) #5
  br label %106

102:                                              ; preds = %67
  br i1 %81, label %108, label %103

103:                                              ; preds = %102
  %104 = getelementptr %struct.gpio_keys_drvdata, ptr %0, i32 0, i32 4, i32 %61, i32 9
  %105 = load i32, ptr %104, align 4
  tail call void @enable_irq(i32 noundef %105) #5
  br label %106

106:                                              ; preds = %103, %99, %96
  %107 = phi i8 [ 0, %103 ], [ 1, %99 ], [ 1, %96 ]
  store i8 %107, ptr %79, align 8
  br label %108

108:                                              ; preds = %106, %102, %82, %60
  %109 = add nuw nsw i32 %61, 1
  %110 = load ptr, ptr %0, align 8
  %111 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %110, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %60, label %114

114:                                              ; preds = %108, %54
  tail call void @mutex_unlock(ptr noundef %55) #5
  br label %115

115:                                              ; preds = %114, %47, %20, %17
  %116 = phi i32 [ %18, %17 ], [ 0, %114 ], [ -22, %20 ], [ -22, %47 ]
  tail call void @bitmap_free(ptr noundef nonnull %15) #5
  br label %117

117:                                              ; preds = %115, %7
  %118 = phi i32 [ %116, %115 ], [ -12, %7 ]
  ret i32 %118
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parselist(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_keys_show_disabled_switches(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = tail call fastcc i32 @gpio_keys_attr_show_helper(ptr noundef %5, ptr noundef %2, i32 noundef 5, i1 noundef zeroext true)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_keys_store_disabled_switches(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = tail call fastcc i32 @gpio_keys_attr_store_helper(ptr noundef %6, ptr noundef %2, i32 noundef 5)
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 %3, i32 %7
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_keys_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %62, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %62, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %4, align 4
  br label %127

21:                                               ; preds = %56, %14
  %22 = phi i32 [ %57, %56 ], [ 0, %14 ]
  %23 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %22, i32 14
  store i8 0, ptr %23, align 2
  %24 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %22, i32 9
  %25 = load i32, ptr %24, align 4
  %26 = tail call ptr @irq_get_irq_data(i32 noundef %25) #5
  %27 = getelementptr inbounds %struct.irq_data, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 16384
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %56, label %32

32:                                               ; preds = %21
  %33 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %22, i32 10
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %24, align 4
  %38 = tail call i32 @irq_set_irq_type(i32 noundef %37, i32 noundef 3) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %22, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.input_dev, ptr %42, i32 0, i32 40, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.29, i32 noundef %45, i32 noundef %38) #6
  br label %46

46:                                               ; preds = %40, %36, %32
  %47 = load i32, ptr %24, align 4
  %48 = tail call i32 @irq_set_irq_wake(i32 noundef %47, i32 noundef 0) #5
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %22, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.input_dev, ptr %52, i32 0, i32 40, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.30, i32 noundef %55, i32 noundef %48) #6
  br label %56

56:                                               ; preds = %50, %46, %21
  %57 = add nuw nsw i32 %22, 1
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %58, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %21, label %107

62:                                               ; preds = %10, %1
  %63 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %63) #5
  %64 = tail call zeroext i1 @input_device_enabled(ptr noundef %5) #5
  br i1 %64, label %65, label %102

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 40, i32 8
  %67 = load ptr, ptr %66, align 8
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %68, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 40, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = tail call i32 %70(ptr noundef %74) #5
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %106

77:                                               ; preds = %72
  %78 = load ptr, ptr %67, align 8
  br label %79

79:                                               ; preds = %77, %65
  %80 = phi ptr [ %78, %77 ], [ %68, %65 ]
  %81 = getelementptr inbounds %struct.gpio_keys_drvdata, ptr %67, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %80, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %95, %79
  %87 = phi ptr [ %96, %95 ], [ %80, %79 ]
  %88 = phi i32 [ %97, %95 ], [ 0, %79 ]
  %89 = getelementptr %struct.gpio_keys_drvdata, ptr %67, i32 0, i32 4, i32 %88, i32 2
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = getelementptr %struct.gpio_keys_drvdata, ptr %67, i32 0, i32 4, i32 %88
  tail call fastcc void @gpio_keys_gpio_report_event(ptr noundef %93) #5
  %94 = load ptr, ptr %67, align 8
  br label %95

95:                                               ; preds = %92, %86
  %96 = phi ptr [ %94, %92 ], [ %87, %86 ]
  %97 = add nuw nsw i32 %88, 1
  %98 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %96, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %86, label %101

101:                                              ; preds = %95, %79
  tail call void @input_event(ptr noundef %82, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %102

102:                                              ; preds = %101, %62
  tail call void @mutex_unlock(ptr noundef %63) #5
  %103 = load ptr, ptr %3, align 8
  %104 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %103, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  br label %107

106:                                              ; preds = %72
  tail call void @mutex_unlock(ptr noundef %63) #5
  br label %129

107:                                              ; preds = %102, %56
  %108 = phi i32 [ %105, %102 ], [ %60, %56 ]
  %109 = phi ptr [ %103, %102 ], [ %58, %56 ]
  %110 = load ptr, ptr %4, align 4
  %111 = icmp sgt i32 %108, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %121, %107
  %113 = phi ptr [ %122, %121 ], [ %109, %107 ]
  %114 = phi i32 [ %123, %121 ], [ 0, %107 ]
  %115 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %114, i32 2
  %116 = load ptr, ptr %115, align 8
  %117 = icmp eq ptr %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %112
  %119 = getelementptr %struct.gpio_keys_drvdata, ptr %3, i32 0, i32 4, i32 %114
  tail call fastcc void @gpio_keys_gpio_report_event(ptr noundef %119) #5
  %120 = load ptr, ptr %3, align 8
  br label %121

121:                                              ; preds = %118, %112
  %122 = phi ptr [ %120, %118 ], [ %113, %112 ]
  %123 = add nuw nsw i32 %114, 1
  %124 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %122, i32 0, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %112, label %127

127:                                              ; preds = %121, %107, %19
  %128 = phi ptr [ %20, %19 ], [ %110, %107 ], [ %110, %121 ]
  tail call void @input_event(ptr noundef %128, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %129

129:                                              ; preds = %127, %106
  %130 = phi i32 [ 0, %127 ], [ %75, %106 ]
  ret i32 %130
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2152618857, i64 2152619356, i64 2152618894, i64 2152618950, i64 2152618984, i64 2152619008, i64 2152619049, i64 2152619070, i64 2152619098, i64 2152619132}
!12 = !{i64 2152621188, i64 2152621687, i64 2152621225, i64 2152621281, i64 2152621315, i64 2152621339, i64 2152621380, i64 2152621401, i64 2152621429, i64 2152621463}
!13 = !{i64 2152590258, i64 2152590757, i64 2152590295, i64 2152590351, i64 2152590385, i64 2152590409, i64 2152590450, i64 2152590471, i64 2152590499, i64 2152590533}
