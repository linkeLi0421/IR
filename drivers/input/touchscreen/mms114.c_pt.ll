; ModuleID = '/llk/IR/drivers/input/touchscreen/mms114.c_pt.bc'
source_filename = "../drivers/input/touchscreen/mms114.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mms114_data = type { ptr, ptr, ptr, ptr, %struct.touchscreen_properties, i32, i32, i32, i8 }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.mms114_touch = type { i16, i8, i8, i8, i8, [2 x i8] }

@mms114_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mms114\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@mms114_dt_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"melfas,mms114\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 114 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"melfas,mms134s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 134 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"melfas,mms136\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 136 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"melfas,mms152\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 152 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"melfas,mms345l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 345 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [48 x i8] c"author=Joonyoung Shim <jy0922.shim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [45 x i8] c"description=MELFAS mms114 Touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@mms114_driver = internal global %struct.i2c_driver { i32 0, ptr @mms114_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mms114_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mms114_pm_ops, ptr null, ptr null }, ptr @mms114_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"mms114\00", align 1
@mms114_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @mms114_suspend, ptr @mms114_resume, ptr @mms114_suspend, ptr @mms114_resume, ptr @mms114_suspend, ptr @mms114_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Not supported I2C adapter\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to allocate memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"MELFAS MMS%d Touchscreen\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Unable to get the Core regulator (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Unable to get the IO regulator (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Failed to register interrupt\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Failed to register input device\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"x-size\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"y-size\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"contact-threshold\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"moving-threshold\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"x-invert\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"y-invert\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Failed to enable avdd: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Failed to enable vdd: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"TSP FW Rev: bootloader 0x%x / core 0x%x / config 0x%x\0A\00", align 1
@.str.19 = private unnamed_addr constant [73 x i8] c"TSP FW Rev: bootloader 0x%x / core 0x%x / config 0x%x, Compat group: %c\0A\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"TSP Rev: 0x%x, HW Rev: 0x%x, Firmware Ver: 0x%x\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"%s: i2c transfer failed (%d)\0A\00", align 1
@__func__.__mms114_read_reg = private unnamed_addr constant [18 x i8] c"__mms114_read_reg\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.22 = private unnamed_addr constant [26 x i8] c"%s: i2c send failed (%d)\0A\00", align 1
@__func__.mms114_write_reg = private unnamed_addr constant [17 x i8] c"mms114_write_reg\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"Failed to disable vdd: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Failed to disable avdd: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"Wrong touch id (%d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"Wrong touch type (%d)\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_i2c__mms114_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @mms114_id
@__mod_of__mms114_dt_match_device_table = dso_local alias [6 x %struct.of_device_id], ptr @mms114_dt_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @mms114_driver) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @mms114_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mms114_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.i2c_algorithm, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4) #6
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  br i1 %11, label %13, label %14

13:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.1) #7
  br label %137

14:                                               ; preds = %2
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 44, i32 noundef 3520) #6
  %16 = tail call ptr @devm_input_allocate_device(ptr noundef %12) #6
  %17 = icmp ne ptr %15, null
  %18 = icmp ne ptr %16, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.2) #7
  br label %137

21:                                               ; preds = %14
  store ptr %0, ptr %15, align 4
  %22 = getelementptr inbounds %struct.mms114_data, ptr %15, i32 0, i32 1
  store ptr %16, ptr %22, align 4
  %23 = tail call ptr @device_get_match_data(ptr noundef %12) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %137, label %25

25:                                               ; preds = %21
  %26 = ptrtoint ptr %23 to i32
  %27 = getelementptr inbounds %struct.mms114_data, ptr %15, i32 0, i32 5
  store i32 %26, ptr %27, align 4
  tail call void @input_set_capability(ptr noundef nonnull %16, i32 noundef 3, i32 noundef 53) #6
  tail call void @input_set_capability(ptr noundef nonnull %16, i32 noundef 3, i32 noundef 54) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %16, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %16, i32 noundef 48, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #6
  %28 = getelementptr inbounds %struct.mms114_data, ptr %15, i32 0, i32 4
  tail call void @touchscreen_parse_properties(ptr noundef nonnull %16, i1 noundef zeroext true, ptr noundef %28) #6
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.mms114_data, ptr %15, i32 0, i32 4, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %31, %25
  %36 = load ptr, ptr %15, align 4
  %37 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  %38 = tail call i32 @device_property_read_u32_array(ptr noundef %37, ptr noundef nonnull @.str.10, ptr noundef %28, i32 noundef 1) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %137

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.mms114_data, ptr %15, i32 0, i32 4, i32 1
  %42 = tail call i32 @device_property_read_u32_array(ptr noundef %37, ptr noundef nonnull @.str.11, ptr noundef %41, i32 noundef 1) #6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %137

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.mms114_data, ptr %15, i32 0, i32 6
  %46 = tail call i32 @device_property_read_u32_array(ptr noundef %37, ptr noundef nonnull @.str.12, ptr noundef %45, i32 noundef 1) #6
  %47 = getelementptr inbounds %struct.mms114_data, ptr %15, i32 0, i32 7
  %48 = tail call i32 @device_property_read_u32_array(ptr noundef %37, ptr noundef nonnull @.str.13, ptr noundef %47, i32 noundef 1) #6
  %49 = tail call zeroext i1 @device_property_present(ptr noundef %37, ptr noundef nonnull @.str.14) #6
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.mms114_data, ptr %15, i32 0, i32 4, i32 2
  store i8 1, ptr %51, align 4
  br label %52

52:                                               ; preds = %50, %44
  %53 = tail call zeroext i1 @device_property_present(ptr noundef %37, ptr noundef nonnull @.str.15) #6
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.mms114_data, ptr %15, i32 0, i32 4, i32 3
  store i8 1, ptr %55, align 1
  br label %56

56:                                               ; preds = %54, %52
  %57 = getelementptr inbounds %struct.mms114_data, ptr %15, i32 0, i32 4, i32 4
  store i8 0, ptr %57, align 2
  %58 = load i32, ptr %28, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %16, i32 noundef 53, i32 noundef 0, i32 noundef %58, i32 noundef 0, i32 noundef 0) #6
  %59 = load i32, ptr %41, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %16, i32 noundef 54, i32 noundef 0, i32 noundef %59, i32 noundef 0, i32 noundef 0) #6
  br label %60

60:                                               ; preds = %56, %31
  %61 = load i32, ptr %27, align 4
  switch i32 %61, label %94 [
    i32 114, label %62
    i32 134, label %62
    i32 136, label %62
  ]

62:                                               ; preds = %60, %60, %60
  %63 = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 26
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = getelementptr %struct.input_absinfo, ptr %64, i32 53, i32 3
  %68 = load i32, ptr %67, align 4
  br label %69

69:                                               ; preds = %66, %62
  %70 = phi i32 [ %68, %66 ], [ 0, %62 ]
  %71 = getelementptr inbounds %struct.mms114_data, ptr %15, i32 0, i32 7
  store i32 %70, ptr %71, align 4
  %72 = load ptr, ptr %63, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = getelementptr %struct.input_absinfo, ptr %72, i32 58, i32 3
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %74, %69
  %78 = phi i32 [ %76, %74 ], [ 0, %69 ]
  %79 = getelementptr inbounds %struct.mms114_data, ptr %15, i32 0, i32 6
  store i32 %78, ptr %79, align 4
  tail call void @input_alloc_absinfo(ptr noundef nonnull %16) #6
  %80 = load ptr, ptr %63, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = getelementptr %struct.input_absinfo, ptr %80, i32 53, i32 3
  store i32 0, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %77
  tail call void @input_alloc_absinfo(ptr noundef nonnull %16) #6
  %85 = load ptr, ptr %63, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = getelementptr %struct.input_absinfo, ptr %85, i32 54, i32 3
  store i32 0, ptr %88, align 4
  br label %89

89:                                               ; preds = %87, %84
  tail call void @input_alloc_absinfo(ptr noundef nonnull %16) #6
  %90 = load ptr, ptr %63, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = getelementptr %struct.input_absinfo, ptr %90, i32 58, i32 3
  store i32 0, ptr %93, align 4
  br label %94

94:                                               ; preds = %92, %89, %60
  %95 = load i32, ptr %27, align 4
  %96 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %12, i32 noundef 3264, ptr noundef nonnull @.str.3, i32 noundef %95) #6
  store ptr %96, ptr %16, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %137, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 3
  store i16 24, ptr %99, align 4
  %100 = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 40, i32 1
  store ptr %12, ptr %100, align 4
  %101 = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 31
  store ptr @mms114_input_open, ptr %101, align 4
  %102 = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 32
  store ptr @mms114_input_close, ptr %102, align 8
  %103 = tail call i32 @input_mt_init_slots(ptr noundef nonnull %16, i32 noundef 10, i32 noundef 2) #6
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %137

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 40, i32 8
  store ptr %15, ptr %106, align 8
  %107 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %15, ptr %107, align 8
  %108 = tail call ptr @devm_regulator_get(ptr noundef %12, ptr noundef nonnull @.str.4) #6
  %109 = getelementptr inbounds %struct.mms114_data, ptr %15, i32 0, i32 2
  store ptr %108, ptr %109, align 4
  %110 = icmp ugt ptr %108, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = ptrtoint ptr %108 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.5, i32 noundef %112) #7
  br label %137

113:                                              ; preds = %105
  %114 = tail call ptr @devm_regulator_get(ptr noundef %12, ptr noundef nonnull @.str.6) #6
  %115 = getelementptr inbounds %struct.mms114_data, ptr %15, i32 0, i32 3
  store ptr %114, ptr %115, align 4
  %116 = icmp ugt ptr %114, inttoptr (i32 -4096 to ptr)
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = ptrtoint ptr %114 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.7, i32 noundef %118) #7
  br label %137

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 3
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load ptr, ptr %12, align 4
  br label %127

127:                                              ; preds = %125, %119
  %128 = phi ptr [ %126, %125 ], [ %123, %119 ]
  %129 = tail call i32 @devm_request_threaded_irq(ptr noundef %12, i32 noundef %121, ptr noundef null, ptr noundef nonnull @mms114_interrupt, i32 noundef 532480, ptr noundef %128, ptr noundef nonnull %15) #6
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.8) #7
  br label %137

132:                                              ; preds = %127
  %133 = load ptr, ptr %22, align 4
  %134 = tail call i32 @input_register_device(ptr noundef %133) #6
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.9) #7
  br label %137

137:                                              ; preds = %136, %132, %131, %117, %111, %98, %94, %40, %35, %21, %20, %13
  %138 = phi i32 [ %112, %111 ], [ %118, %117 ], [ %129, %131 ], [ %134, %136 ], [ -12, %20 ], [ -19, %13 ], [ -22, %21 ], [ -12, %94 ], [ %103, %98 ], [ 0, %132 ], [ -22, %35 ], [ -22, %40 ]
  ret i32 %138
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mms114_input_open(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @mms114_start(ptr noundef %3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mms114_input_close(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  tail call void @disable_irq(i32 noundef %6) #6
  %7 = getelementptr inbounds %struct.mms114_data, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regulator_disable(ptr noundef %8) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.23, i32 noundef %9) #7
  br label %13

13:                                               ; preds = %11, %1
  %14 = getelementptr inbounds %struct.mms114_data, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regulator_disable(ptr noundef %15) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.24, i32 noundef %16) #7
  br label %20

20:                                               ; preds = %18, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mms114_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [10 x %struct.mms114_touch], align 1
  %9 = getelementptr inbounds %struct.mms114_data, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %8) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %8, i8 0, i32 80, i1 false), !annotation !8
  %11 = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %11) #6
  %12 = tail call zeroext i1 @input_device_enabled(ptr noundef %10) #6
  tail call void @mutex_unlock(ptr noundef %11) #6
  br i1 %12, label %13, label %131

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #6
  store i8 0, ptr %7, align 1, !annotation !8
  %14 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  %15 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %15, i8 0, i32 16, i1 false) #6, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 15, ptr %6, align 1
  %16 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 1
  %17 = load i16, ptr %16, align 2
  store i16 %17, ptr %5, align 4
  %18 = load i16, ptr %14, align 8
  %19 = and i16 %18, 16
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 %19, ptr %20, align 2
  store i16 1, ptr %15, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %6, ptr %21, align 4
  %22 = load i16, ptr %16, align 2
  %23 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %5, i32 0, i32 1
  store i16 %22, ptr %23, align 4
  %24 = load i16, ptr %14, align 8
  %25 = and i16 %24, 16
  %26 = or i16 %25, 1
  %27 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %5, i32 0, i32 1, i32 1
  store i16 %26, ptr %27, align 2
  %28 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %5, i32 0, i32 1, i32 2
  store i16 1, ptr %28, align 4
  %29 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %5, i32 0, i32 1, i32 3
  store ptr %7, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %5, i32 noundef 2) #6
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %36, label %34

34:                                               ; preds = %13
  %35 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.__mms114_read_reg, i32 noundef %32) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #6
  br label %131

36:                                               ; preds = %13
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 10737400) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  %38 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #6
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %131, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.mms114_data, ptr %1, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  switch i32 %42, label %45 [
    i32 134, label %43
    i32 136, label %43
  ]

43:                                               ; preds = %40, %40
  %44 = udiv i8 %38, 6
  br label %47

45:                                               ; preds = %40
  %46 = lshr i8 %38, 3
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i8 [ %44, %43 ], [ %46, %45 ]
  %49 = zext i8 %48 to i32
  %50 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  %51 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %51, i8 0, i32 16, i1 false) #6, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 16, ptr %4, align 1
  %52 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 1
  %53 = load i16, ptr %52, align 2
  store i16 %53, ptr %3, align 4
  %54 = load i16, ptr %50, align 8
  %55 = and i16 %54, 16
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 %55, ptr %56, align 2
  store i16 1, ptr %51, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %57, align 4
  %58 = load i16, ptr %52, align 2
  %59 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %3, i32 0, i32 1
  store i16 %58, ptr %59, align 4
  %60 = load i16, ptr %50, align 8
  %61 = and i16 %60, 16
  %62 = or i16 %61, 1
  %63 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %3, i32 0, i32 1, i32 1
  store i16 %62, ptr %63, align 2
  %64 = zext i8 %38 to i16
  %65 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %3, i32 0, i32 1, i32 2
  store i16 %64, ptr %65, align 4
  %66 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %3, i32 0, i32 1, i32 3
  store ptr %8, ptr %66, align 4
  %67 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 3
  %68 = load ptr, ptr %67, align 8
  %69 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %3, i32 noundef 2) #6
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %73, label %71

71:                                               ; preds = %47
  %72 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.__mms114_read_reg, i32 noundef %69) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  br label %131

73:                                               ; preds = %47
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %74(i32 noundef 10737400) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  %75 = icmp eq i8 %48, 0
  br i1 %75, label %128, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.mms114_data, ptr %1, i32 0, i32 4
  br label %78

78:                                               ; preds = %125, %76
  %79 = phi i32 [ 0, %76 ], [ %126, %125 ]
  %80 = getelementptr %struct.mms114_touch, ptr %8, i32 %79
  %81 = load ptr, ptr %1, align 4
  %82 = load ptr, ptr %9, align 4
  %83 = load i16, ptr %80, align 1
  %84 = and i16 %83, 15
  %85 = zext i16 %84 to i32
  %86 = icmp ugt i16 %84, 10
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.25, i32 noundef %85) #7
  br label %125

89:                                               ; preds = %78
  %90 = lshr i16 %83, 5
  %91 = and i16 %90, 3
  %92 = icmp eq i16 %91, 1
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = zext i16 %91 to i32
  %95 = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.26, i32 noundef %94) #7
  br label %125

96:                                               ; preds = %89
  %97 = add nsw i32 %85, -1
  %98 = getelementptr %struct.mms114_touch, ptr %8, i32 %79, i32 1
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr %struct.mms114_touch, ptr %8, i32 %79, i32 2
  %101 = load i8, ptr %100, align 1
  call void @input_event(ptr noundef %82, i32 noundef 3, i32 noundef 47, i32 noundef %97) #6
  %102 = load i16, ptr %80, align 1
  %103 = and i16 %102, 128
  %104 = icmp ne i16 %103, 0
  %105 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %82, i32 noundef 0, i1 noundef zeroext %104) #6
  %106 = load i16, ptr %80, align 1
  %107 = and i16 %106, 128
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %125, label %109

109:                                              ; preds = %96
  %110 = zext i8 %101 to i32
  %111 = lshr i16 %83, 4
  %112 = and i16 %111, 3840
  %113 = zext i16 %112 to i32
  %114 = or i32 %110, %113
  %115 = zext i8 %99 to i32
  %116 = and i16 %83, 3840
  %117 = zext i16 %116 to i32
  %118 = or i32 %115, %117
  call void @touchscreen_report_pos(ptr noundef %82, ptr noundef %77, i32 noundef %118, i32 noundef %114, i1 noundef zeroext true) #6
  %119 = getelementptr %struct.mms114_touch, ptr %8, i32 %79, i32 3
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %120 to i32
  call void @input_event(ptr noundef %82, i32 noundef 3, i32 noundef 48, i32 noundef %121) #6
  %122 = getelementptr %struct.mms114_touch, ptr %8, i32 %79, i32 4
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  call void @input_event(ptr noundef %82, i32 noundef 3, i32 noundef 58, i32 noundef %124) #6
  br label %125

125:                                              ; preds = %109, %96, %93, %87
  %126 = add nuw nsw i32 %79, 1
  %127 = icmp eq i32 %126, %49
  br i1 %127, label %128, label %78

128:                                              ; preds = %125, %73
  %129 = load ptr, ptr %9, align 4
  call void @input_mt_report_pointer_emulation(ptr noundef %129, i1 noundef zeroext true) #6
  %130 = load ptr, ptr %9, align 4
  call void @input_event(ptr noundef %130, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %131

131:                                              ; preds = %128, %71, %36, %34, %2
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mms114_start(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca i8, align 1
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca i8, align 1
  %12 = alloca [2 x %struct.i2c_msg], align 4
  %13 = alloca i8, align 1
  %14 = alloca [6 x i8], align 1
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.mms114_data, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @regulator_enable(ptr noundef %17) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.16, i32 noundef %18) #7
  br label %244

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.mms114_data, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @regulator_enable(ptr noundef %24) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.17, i32 noundef %25) #7
  %29 = load ptr, ptr %16, align 4
  %30 = tail call i32 @regulator_disable(ptr noundef %29) #6
  br label %244

31:                                               ; preds = %22
  tail call void @msleep(i32 noundef 200) #6
  %32 = getelementptr inbounds %struct.mms114_data, ptr %0, i32 0, i32 4
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %14) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %14, i8 0, i32 6, i1 false) #6, !annotation !8
  %35 = getelementptr inbounds %struct.mms114_data, ptr %0, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  switch i32 %36, label %144 [
    i32 345, label %37
    i32 152, label %70
    i32 114, label %107
    i32 134, label %107
    i32 136, label %107
  ]

37:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #6
  %38 = getelementptr inbounds i8, ptr %12, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %38, i8 0, i32 16, i1 false) #6, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #6
  store i8 -31, ptr %13, align 1
  %39 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 1
  %40 = load i16, ptr %39, align 2
  store i16 %40, ptr %12, align 4
  %41 = load i16, ptr %33, align 8
  %42 = and i16 %41, 16
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 %42, ptr %43, align 2
  store i16 1, ptr %38, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %13, ptr %44, align 4
  %45 = load i16, ptr %39, align 2
  %46 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %12, i32 0, i32 1
  store i16 %45, ptr %46, align 4
  %47 = load i16, ptr %33, align 8
  %48 = and i16 %47, 16
  %49 = or i16 %48, 1
  %50 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %12, i32 0, i32 1, i32 1
  store i16 %49, ptr %50, align 2
  %51 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %12, i32 0, i32 1, i32 2
  store i16 3, ptr %51, align 4
  %52 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %12, i32 0, i32 1, i32 3
  store ptr %14, ptr %52, align 4
  %53 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8
  %55 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %12, i32 noundef 2) #6
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %60, label %57

57:                                               ; preds = %37
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.__mms114_read_reg, i32 noundef %55) #7
  %58 = icmp slt i32 %55, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #6
  %59 = select i1 %58, i32 %55, i32 -5
  br label %140

60:                                               ; preds = %37
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %61(i32 noundef 10737400) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #6
  %62 = load i8, ptr %14, align 1
  %63 = zext i8 %62 to i32
  %64 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 1
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 2
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.18, i32 noundef %63, i32 noundef %66, i32 noundef %69) #7
  br label %142

70:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #6
  %71 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %71, i8 0, i32 16, i1 false) #6, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #6
  store i8 -31, ptr %11, align 1
  %72 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 1
  %73 = load i16, ptr %72, align 2
  store i16 %73, ptr %10, align 4
  %74 = load i16, ptr %33, align 8
  %75 = and i16 %74, 16
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 %75, ptr %76, align 2
  store i16 1, ptr %71, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %11, ptr %77, align 4
  %78 = load i16, ptr %72, align 2
  %79 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %10, i32 0, i32 1
  store i16 %78, ptr %79, align 4
  %80 = load i16, ptr %33, align 8
  %81 = and i16 %80, 16
  %82 = or i16 %81, 1
  %83 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %10, i32 0, i32 1, i32 1
  store i16 %82, ptr %83, align 2
  %84 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %10, i32 0, i32 1, i32 2
  store i16 3, ptr %84, align 4
  %85 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %10, i32 0, i32 1, i32 3
  store ptr %14, ptr %85, align 4
  %86 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 3
  %87 = load ptr, ptr %86, align 8
  %88 = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %10, i32 noundef 2) #6
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %93, label %90

90:                                               ; preds = %70
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.__mms114_read_reg, i32 noundef %88) #7
  %91 = icmp slt i32 %88, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #6
  %92 = select i1 %91, i32 %88, i32 -5
  br label %140

93:                                               ; preds = %70
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %94(i32 noundef 10737400) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #6
  %95 = load ptr, ptr %0, align 4
  %96 = call i32 @i2c_smbus_read_byte_data(ptr noundef %95, i8 noundef zeroext -14) #6
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %140, label %98

98:                                               ; preds = %93
  %99 = load i8, ptr %14, align 1
  %100 = zext i8 %99 to i32
  %101 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 2
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.19, i32 noundef %100, i32 noundef %103, i32 noundef %106, i32 noundef %96) #7
  br label %142

107:                                              ; preds = %31, %31, %31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #6
  %108 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %108, i8 0, i32 16, i1 false) #6, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #6
  store i8 -16, ptr %9, align 1
  %109 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 1
  %110 = load i16, ptr %109, align 2
  store i16 %110, ptr %8, align 4
  %111 = load i16, ptr %33, align 8
  %112 = and i16 %111, 16
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 %112, ptr %113, align 2
  store i16 1, ptr %108, align 4
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %9, ptr %114, align 4
  %115 = load i16, ptr %109, align 2
  %116 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %8, i32 0, i32 1
  store i16 %115, ptr %116, align 4
  %117 = load i16, ptr %33, align 8
  %118 = and i16 %117, 16
  %119 = or i16 %118, 1
  %120 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %8, i32 0, i32 1, i32 1
  store i16 %119, ptr %120, align 2
  %121 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %8, i32 0, i32 1, i32 2
  store i16 6, ptr %121, align 4
  %122 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %8, i32 0, i32 1, i32 3
  store ptr %14, ptr %122, align 4
  %123 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 3
  %124 = load ptr, ptr %123, align 8
  %125 = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %8, i32 noundef 2) #6
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %130, label %127

127:                                              ; preds = %107
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.__mms114_read_reg, i32 noundef %125) #7
  %128 = icmp slt i32 %125, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #6
  %129 = select i1 %128, i32 %125, i32 -5
  br label %140

130:                                              ; preds = %107
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %131(i32 noundef 10737400) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #6
  %132 = load i8, ptr %14, align 1
  %133 = zext i8 %132 to i32
  %134 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 1
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  %137 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 3
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.20, i32 noundef %133, i32 noundef %136, i32 noundef %139) #7
  br label %142

140:                                              ; preds = %127, %93, %90, %57
  %141 = phi i32 [ %96, %93 ], [ %59, %57 ], [ %92, %90 ], [ %129, %127 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %14) #6
  br label %235

142:                                              ; preds = %130, %98, %60
  %143 = load i32, ptr %35, align 4
  br label %144

144:                                              ; preds = %142, %31
  %145 = phi i32 [ %143, %142 ], [ %36, %31 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %14) #6
  switch i32 %145, label %241 [
    i32 114, label %146
    i32 134, label %146
    i32 136, label %146
  ]

146:                                              ; preds = %144, %144, %144
  %147 = getelementptr inbounds %struct.mms114_data, ptr %0, i32 0, i32 8
  %148 = load i8, ptr %147, align 4
  %149 = and i8 %148, -15
  %150 = or i8 %149, 2
  %151 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #6
  store i8 1, ptr %7, align 2
  %152 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 %150, ptr %152, align 1
  %153 = call i32 @i2c_transfer_buffer_flags(ptr noundef %151, ptr noundef nonnull %7, i32 noundef 2, i16 noundef zeroext 0) #6
  %154 = icmp eq i32 %153, 2
  br i1 %154, label %159, label %155

155:                                              ; preds = %146
  %156 = getelementptr inbounds %struct.i2c_client, ptr %151, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.mms114_write_reg, i32 noundef %153) #7
  %157 = icmp slt i32 %153, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #6
  %158 = select i1 %157, i32 %153, i32 -5
  br label %235

159:                                              ; preds = %146
  %160 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %160(i32 noundef 10737400) #6
  store i8 %150, ptr %147, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #6
  %161 = load i32, ptr %32, align 4
  %162 = lshr i32 %161, 8
  %163 = and i32 %162, 15
  %164 = getelementptr inbounds %struct.mms114_data, ptr %0, i32 0, i32 4, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = lshr i32 %165, 4
  %167 = and i32 %166, 240
  %168 = or i32 %167, %163
  %169 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #6
  store i8 2, ptr %6, align 2
  %170 = trunc i32 %168 to i8
  %171 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 %170, ptr %171, align 1
  %172 = call i32 @i2c_transfer_buffer_flags(ptr noundef %169, ptr noundef nonnull %6, i32 noundef 2, i16 noundef zeroext 0) #6
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %178, label %174

174:                                              ; preds = %159
  %175 = getelementptr inbounds %struct.i2c_client, ptr %169, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.mms114_write_reg, i32 noundef %172) #7
  %176 = icmp slt i32 %172, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #6
  %177 = select i1 %176, i32 %172, i32 -5
  br label %235

178:                                              ; preds = %159
  %179 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %179(i32 noundef 10737400) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #6
  %180 = load i32, ptr %32, align 4
  %181 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #6
  store i8 3, ptr %5, align 2
  %182 = trunc i32 %180 to i8
  %183 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 %182, ptr %183, align 1
  %184 = call i32 @i2c_transfer_buffer_flags(ptr noundef %181, ptr noundef nonnull %5, i32 noundef 2, i16 noundef zeroext 0) #6
  %185 = icmp eq i32 %184, 2
  br i1 %185, label %190, label %186

186:                                              ; preds = %178
  %187 = getelementptr inbounds %struct.i2c_client, ptr %181, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %187, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.mms114_write_reg, i32 noundef %184) #7
  %188 = icmp slt i32 %184, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #6
  %189 = select i1 %188, i32 %184, i32 -5
  br label %235

190:                                              ; preds = %178
  %191 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %191(i32 noundef 10737400) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #6
  %192 = load i32, ptr %32, align 4
  %193 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #6
  store i8 4, ptr %4, align 2
  %194 = trunc i32 %192 to i8
  %195 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 %194, ptr %195, align 1
  %196 = call i32 @i2c_transfer_buffer_flags(ptr noundef %193, ptr noundef nonnull %4, i32 noundef 2, i16 noundef zeroext 0) #6
  %197 = icmp eq i32 %196, 2
  br i1 %197, label %202, label %198

198:                                              ; preds = %190
  %199 = getelementptr inbounds %struct.i2c_client, ptr %193, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %199, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.mms114_write_reg, i32 noundef %196) #7
  %200 = icmp slt i32 %196, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #6
  %201 = select i1 %200, i32 %196, i32 -5
  br label %235

202:                                              ; preds = %190
  %203 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %203(i32 noundef 10737400) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #6
  %204 = getelementptr inbounds %struct.mms114_data, ptr %0, i32 0, i32 6
  %205 = load i32, ptr %204, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %219, label %207

207:                                              ; preds = %202
  %208 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i8 5, ptr %3, align 2
  %209 = trunc i32 %205 to i8
  %210 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 %209, ptr %210, align 1
  %211 = call i32 @i2c_transfer_buffer_flags(ptr noundef %208, ptr noundef nonnull %3, i32 noundef 2, i16 noundef zeroext 0) #6
  %212 = icmp eq i32 %211, 2
  br i1 %212, label %217, label %213

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.i2c_client, ptr %208, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %214, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.mms114_write_reg, i32 noundef %211) #7
  %215 = icmp slt i32 %211, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  %216 = select i1 %215, i32 %211, i32 -5
  br label %235

217:                                              ; preds = %207
  %218 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %218(i32 noundef 10737400) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  br label %219

219:                                              ; preds = %217, %202
  %220 = getelementptr inbounds %struct.mms114_data, ptr %0, i32 0, i32 7
  %221 = load i32, ptr %220, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %241, label %223

223:                                              ; preds = %219
  %224 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i8 6, ptr %2, align 2
  %225 = trunc i32 %221 to i8
  %226 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %225, ptr %226, align 1
  %227 = call i32 @i2c_transfer_buffer_flags(ptr noundef %224, ptr noundef nonnull %2, i32 noundef 2, i16 noundef zeroext 0) #6
  %228 = icmp eq i32 %227, 2
  br i1 %228, label %233, label %229

229:                                              ; preds = %223
  %230 = getelementptr inbounds %struct.i2c_client, ptr %224, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %230, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.mms114_write_reg, i32 noundef %227) #7
  %231 = icmp slt i32 %227, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  %232 = select i1 %231, i32 %227, i32 -5
  br label %235

233:                                              ; preds = %223
  %234 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %234(i32 noundef 10737400) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  br label %241

235:                                              ; preds = %229, %213, %198, %186, %174, %155, %140
  %236 = phi i32 [ %141, %140 ], [ %158, %155 ], [ %177, %174 ], [ %189, %186 ], [ %201, %198 ], [ %216, %213 ], [ %232, %229 ]
  %237 = load ptr, ptr %23, align 4
  %238 = call i32 @regulator_disable(ptr noundef %237) #6
  %239 = load ptr, ptr %16, align 4
  %240 = call i32 @regulator_disable(ptr noundef %239) #6
  br label %244

241:                                              ; preds = %233, %219, %144
  %242 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 6
  %243 = load i32, ptr %242, align 4
  call void @enable_irq(i32 noundef %243) #6
  br label %244

244:                                              ; preds = %241, %235, %27, %20
  %245 = phi i32 [ %18, %20 ], [ %25, %27 ], [ %236, %235 ], [ 0, %241 ]
  ret i32 %245
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mms114_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mms114_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 47, i32 noundef 0) #6
  %6 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %5, i32 noundef 0, i1 noundef zeroext false) #6
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 47, i32 noundef 1) #6
  %7 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %5, i32 noundef 0, i1 noundef zeroext false) #6
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 47, i32 noundef 2) #6
  %8 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %5, i32 noundef 0, i1 noundef zeroext false) #6
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 47, i32 noundef 3) #6
  %9 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %5, i32 noundef 0, i1 noundef zeroext false) #6
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 47, i32 noundef 4) #6
  %10 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %5, i32 noundef 0, i1 noundef zeroext false) #6
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 47, i32 noundef 5) #6
  %11 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %5, i32 noundef 0, i1 noundef zeroext false) #6
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 47, i32 noundef 6) #6
  %12 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %5, i32 noundef 0, i1 noundef zeroext false) #6
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 47, i32 noundef 7) #6
  %13 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %5, i32 noundef 0, i1 noundef zeroext false) #6
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 47, i32 noundef 8) #6
  %14 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %5, i32 noundef 0, i1 noundef zeroext false) #6
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 47, i32 noundef 9) #6
  %15 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %5, i32 noundef 0, i1 noundef zeroext false) #6
  tail call void @input_mt_report_pointer_emulation(ptr noundef %5, i1 noundef zeroext true) #6
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %16 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %16) #6
  %17 = tail call zeroext i1 @input_device_enabled(ptr noundef %5) #6
  br i1 %17, label %18, label %35

18:                                               ; preds = %1
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  tail call void @disable_irq(i32 noundef %21) #6
  %22 = getelementptr inbounds %struct.mms114_data, ptr %3, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @regulator_disable(ptr noundef %23) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.23, i32 noundef %24) #7
  br label %28

28:                                               ; preds = %26, %18
  %29 = getelementptr inbounds %struct.mms114_data, ptr %3, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @regulator_disable(ptr noundef %30) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.24, i32 noundef %31) #7
  br label %35

35:                                               ; preds = %33, %28, %1
  tail call void @mutex_unlock(ptr noundef %16) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mms114_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mms114_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %6) #6
  %7 = tail call zeroext i1 @input_device_enabled(ptr noundef %5) #6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @mms114_start(ptr noundef %3)
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %1
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi i32 [ 0, %11 ], [ %9, %8 ]
  tail call void @mutex_unlock(ptr noundef %6) #6
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

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
