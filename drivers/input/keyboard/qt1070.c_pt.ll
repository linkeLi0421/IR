; ModuleID = '/llk/IR/drivers/input/keyboard/qt1070.c_pt.bc'
source_filename = "../drivers/input/keyboard/qt1070.c"
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
%struct.qt1070_data = type { ptr, ptr, i32, [7 x i16], i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@qt1070_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"qt1070\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@qt1070_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qt1070\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [38 x i8] c"author=Bo Shen <voice.shen@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [48 x i8] c"description=Driver for AT42QT1070 QTouch sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@qt1070_driver = internal global %struct.i2c_driver { i32 0, ptr @qt1070_probe, ptr @qt1070_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qt1070_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qt1070_pm_ops, ptr null, ptr null }, ptr @qt1070_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"qt1070\00", align 1
@qt1070_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @qt1070_suspend, ptr @qt1070_resume, ptr @qt1070_suspend, ptr @qt1070_resume, ptr @qt1070_suspend, ptr @qt1070_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s adapter not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"please assign the irq to this device\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"insufficient memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"AT42QT1070 QTouch Sensor\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"fail to request irq\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to register input device\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"ID %d not supported\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"could not read the firmware version\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"AT42QT1070 firmware version %x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"can not write register, returned %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"can not read register, returned %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_i2c__qt1070_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @qt1070_id
@__mod_of__qt1070_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @qt1070_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @qt1070_driver) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @qt1070_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qt1070_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.i2c_algorithm, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4) #5
  %10 = and i32 %9, 393216
  %11 = icmp eq i32 %10, 393216
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 9
  %16 = tail call ptr @dev_driver_string(ptr noundef %15) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef %16) #6
  br label %108

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.2) #6
  br label %108

23:                                               ; preds = %17
  %24 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 0) #5
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.11, i32 noundef %24) #6
  br label %30

28:                                               ; preds = %23
  %29 = icmp eq i32 %24, 46
  br i1 %29, label %32, label %30

30:                                               ; preds = %28, %26
  %31 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.7, i32 noundef %24) #6
  br label %108

32:                                               ; preds = %28
  %33 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 1) #5
  %34 = icmp slt i32 %33, 0
  %35 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  br i1 %34, label %36, label %37

36:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.11, i32 noundef %33) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.8) #6
  br label %108

37:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.9, i32 noundef %33) #6
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 28) #7
  %40 = tail call ptr @input_allocate_device() #5
  %41 = icmp ne ptr %39, null
  %42 = icmp ne ptr %40, null
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.3) #6
  br label %106

45:                                               ; preds = %37
  store ptr %0, ptr %39, align 8
  %46 = getelementptr inbounds %struct.qt1070_data, ptr %39, i32 0, i32 1
  store ptr %40, ptr %46, align 4
  %47 = load i32, ptr %18, align 4
  %48 = getelementptr inbounds %struct.qt1070_data, ptr %39, i32 0, i32 2
  store i32 %47, ptr %48, align 8
  store ptr @.str.4, ptr %40, align 8
  %49 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 40, i32 1
  store ptr %35, ptr %49, align 4
  %50 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 3
  store i16 24, ptr %50, align 4
  %51 = getelementptr %struct.qt1070_data, ptr %39, i32 0, i32 3
  %52 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 17
  store ptr %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 16
  store i32 2, ptr %53, align 8
  %54 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 15
  store i32 7, ptr %54, align 4
  %55 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = or i32 %56, 2
  store i32 %57, ptr %55, align 4
  %58 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 6
  store i16 11, ptr %51, align 4
  %59 = load i32, ptr %58, align 4
  %60 = or i32 %59, 2048
  store i32 %60, ptr %58, align 4
  %61 = getelementptr %struct.qt1070_data, ptr %39, i32 0, i32 3, i32 1
  store i16 2, ptr %61, align 2
  %62 = load i32, ptr %58, align 4
  %63 = or i32 %62, 4
  store i32 %63, ptr %58, align 4
  %64 = getelementptr %struct.qt1070_data, ptr %39, i32 0, i32 3, i32 2
  store i16 3, ptr %64, align 8
  %65 = load i32, ptr %58, align 4
  %66 = or i32 %65, 8
  store i32 %66, ptr %58, align 4
  %67 = getelementptr %struct.qt1070_data, ptr %39, i32 0, i32 3, i32 3
  store i16 4, ptr %67, align 2
  %68 = load i32, ptr %58, align 4
  %69 = or i32 %68, 16
  store i32 %69, ptr %58, align 4
  %70 = getelementptr %struct.qt1070_data, ptr %39, i32 0, i32 3, i32 4
  store i16 5, ptr %70, align 4
  %71 = load i32, ptr %58, align 4
  %72 = or i32 %71, 32
  store i32 %72, ptr %58, align 4
  %73 = getelementptr %struct.qt1070_data, ptr %39, i32 0, i32 3, i32 5
  store i16 6, ptr %73, align 2
  %74 = load i32, ptr %58, align 4
  %75 = or i32 %74, 64
  store i32 %75, ptr %58, align 4
  %76 = getelementptr %struct.qt1070_data, ptr %39, i32 0, i32 3, i32 6
  store i16 7, ptr %76, align 8
  %77 = load i32, ptr %58, align 4
  %78 = or i32 %77, 128
  store i32 %78, ptr %58, align 4
  %79 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %0, i8 noundef zeroext 56, i8 noundef zeroext 1) #5
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.10, i32 noundef %79) #6
  br label %82

82:                                               ; preds = %81, %45
  tail call void @msleep(i32 noundef 200) #5
  %83 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %0, i8 noundef zeroext 57, i8 noundef zeroext 1) #5
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.10, i32 noundef %83) #6
  br label %86

86:                                               ; preds = %85, %82
  tail call void @msleep(i32 noundef 255) #5
  %87 = load i32, ptr %18, align 4
  %88 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 6
  %89 = load ptr, ptr %88, align 8
  %90 = load ptr, ptr %89, align 4
  %91 = tail call i32 @request_threaded_irq(i32 noundef %87, ptr noundef null, ptr noundef nonnull @qt1070_interrupt, i32 noundef 8192, ptr noundef %90, ptr noundef nonnull %39) #5
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.5) #6
  br label %106

94:                                               ; preds = %86
  %95 = load ptr, ptr %46, align 4
  %96 = tail call i32 @input_register_device(ptr noundef %95) #5
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.6) #6
  %99 = load i32, ptr %18, align 4
  %100 = tail call ptr @free_irq(i32 noundef %99, ptr noundef nonnull %39) #5
  br label %106

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %39, ptr %102, align 8
  %103 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext 2) #5
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.11, i32 noundef %103) #6
  br label %108

106:                                              ; preds = %98, %93, %44
  %107 = phi i32 [ %91, %93 ], [ %96, %98 ], [ -12, %44 ]
  tail call void @input_free_device(ptr noundef %40) #5
  tail call void @kfree(ptr noundef %39) #5
  br label %108

108:                                              ; preds = %106, %105, %101, %36, %30, %21, %12
  %109 = phi i32 [ %107, %106 ], [ -22, %21 ], [ -19, %12 ], [ 0, %101 ], [ 0, %105 ], [ -19, %30 ], [ -19, %36 ]
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qt1070_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %3) #5
  %7 = getelementptr inbounds %struct.qt1070_data, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @input_unregister_device(ptr noundef %8) #5
  tail call void @kfree(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qt1070_interrupt(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.qt1070_data, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.11, i32 noundef %6) #6
  br label %10

10:                                               ; preds = %8, %2
  %11 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 3) #5
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.11, i32 noundef %11) #6
  br label %15

15:                                               ; preds = %13, %10
  %16 = getelementptr inbounds %struct.qt1070_data, ptr %1, i32 0, i32 4
  %17 = load i8, ptr %16, align 2
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 1
  %20 = and i32 %11, 1
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = getelementptr %struct.qt1070_data, ptr %1, i32 0, i32 3, i32 0
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %25, i32 noundef %20) #5
  %26 = load i8, ptr %16, align 2
  %27 = zext i8 %26 to i32
  br label %28

28:                                               ; preds = %22, %15
  %29 = phi i32 [ %27, %22 ], [ %18, %15 ]
  %30 = and i32 %29, 2
  %31 = and i32 %11, 2
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = getelementptr %struct.qt1070_data, ptr %1, i32 0, i32 3, i32 1
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = lshr exact i32 %31, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %36, i32 noundef %37) #5
  %38 = load i8, ptr %16, align 2
  %39 = zext i8 %38 to i32
  br label %40

40:                                               ; preds = %33, %28
  %41 = phi i32 [ %39, %33 ], [ %29, %28 ]
  %42 = and i32 %41, 4
  %43 = and i32 %11, 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = getelementptr %struct.qt1070_data, ptr %1, i32 0, i32 3, i32 2
  %47 = load i16, ptr %46, align 2
  %48 = zext i16 %47 to i32
  %49 = lshr exact i32 %43, 2
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %48, i32 noundef %49) #5
  %50 = load i8, ptr %16, align 2
  %51 = zext i8 %50 to i32
  br label %52

52:                                               ; preds = %45, %40
  %53 = phi i32 [ %51, %45 ], [ %41, %40 ]
  %54 = and i32 %53, 8
  %55 = and i32 %11, 8
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %52
  %58 = getelementptr %struct.qt1070_data, ptr %1, i32 0, i32 3, i32 3
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = lshr exact i32 %55, 3
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %60, i32 noundef %61) #5
  %62 = load i8, ptr %16, align 2
  %63 = zext i8 %62 to i32
  br label %64

64:                                               ; preds = %57, %52
  %65 = phi i32 [ %63, %57 ], [ %53, %52 ]
  %66 = and i32 %65, 16
  %67 = and i32 %11, 16
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %76, label %69

69:                                               ; preds = %64
  %70 = getelementptr %struct.qt1070_data, ptr %1, i32 0, i32 3, i32 4
  %71 = load i16, ptr %70, align 2
  %72 = zext i16 %71 to i32
  %73 = lshr exact i32 %67, 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %72, i32 noundef %73) #5
  %74 = load i8, ptr %16, align 2
  %75 = zext i8 %74 to i32
  br label %76

76:                                               ; preds = %69, %64
  %77 = phi i32 [ %75, %69 ], [ %65, %64 ]
  %78 = and i32 %77, 32
  %79 = and i32 %11, 32
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %88, label %81

81:                                               ; preds = %76
  %82 = getelementptr %struct.qt1070_data, ptr %1, i32 0, i32 3, i32 5
  %83 = load i16, ptr %82, align 2
  %84 = zext i16 %83 to i32
  %85 = lshr exact i32 %79, 5
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %84, i32 noundef %85) #5
  %86 = load i8, ptr %16, align 2
  %87 = zext i8 %86 to i32
  br label %88

88:                                               ; preds = %81, %76
  %89 = phi i32 [ %87, %81 ], [ %77, %76 ]
  %90 = and i32 %89, 64
  %91 = and i32 %11, 64
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = getelementptr %struct.qt1070_data, ptr %1, i32 0, i32 3, i32 6
  %95 = load i16, ptr %94, align 2
  %96 = zext i16 %95 to i32
  %97 = lshr exact i32 %91, 6
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %96, i32 noundef %97) #5
  br label %98

98:                                               ; preds = %93, %88
  %99 = trunc i32 %11 to i8
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  store i8 %99, ptr %16, align 2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qt1070_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
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
  %13 = getelementptr inbounds %struct.qt1070_data, ptr %3, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #5
  br label %16

16:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qt1070_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
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
  %13 = getelementptr inbounds %struct.qt1070_data, ptr %3, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #5
  br label %16

16:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind allocsize(2) }

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
