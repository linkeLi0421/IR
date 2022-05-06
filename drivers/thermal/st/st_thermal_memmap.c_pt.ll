; ModuleID = '/llk/IR/drivers/thermal/st/st_thermal_memmap.c_pt.bc'
source_filename = "../drivers/thermal/st/st_thermal_memmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.st_thermal_compat_data = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.st_thermal_sensor_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.st_thermal_sensor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
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

@__initcall__kmod_st_thermal_memmap__170_190_st_mmap_thermal_driver_init6 = internal global ptr @st_mmap_thermal_driver_init, section ".initcall6.init", align 4
@st_mmap_thermal_driver = internal global %struct.platform_driver { ptr @st_mmap_probe, ptr @st_mmap_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_mmap_thermal_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_thermal_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_st_mmap_thermal_driver_exit = internal global ptr @st_mmap_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [81 x i8] c"st_thermal_memmap.author=STMicroelectronics (R&D) Limited <ajitpal.singh@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [79 x i8] c"st_thermal_memmap.description=STMicroelectronics STi SoC Thermal Sensor Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [60 x i8] c"st_thermal_memmap.file=drivers/thermal/st/st_thermal_memmap\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [33 x i8] c"st_thermal_memmap.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"st_thermal_mmap\00", align 1
@st_mmap_thermal_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih416-mpe-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_416mpe_cdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_407_cdata }, %struct.of_device_id zeroinitializer], align 4
@st_thermal_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@st_416mpe_cdata = internal constant %struct.st_thermal_compat_data { ptr null, ptr @st_mmap_thermal_regfields, ptr @st_mmap_sensor_ops, i32 14, i32 -95, i32 120 }, align 4
@st_407_cdata = internal constant %struct.st_thermal_compat_data { ptr null, ptr @st_mmap_thermal_regfields, ptr @st_mmap_sensor_ops, i32 16, i32 -95, i32 120 }, align 4
@st_mmap_thermal_regfields = internal constant [5 x %struct.reg_field] [%struct.reg_field { i32 8, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 0, i32 5, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 11, i32 18, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 0, i32 0, i32 0, i32 0 }], align 4
@st_mmap_sensor_ops = internal constant %struct.st_thermal_sensor_ops { ptr @st_mmap_power_ctrl, ptr @st_mmap_alloc_regfields, ptr @st_mmap_regmap_init, ptr @st_mmap_register_enable_irq, ptr @st_mmap_enable_irq }, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to alloc mmap regfields\0A\00", align 1
@st_416mpe_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to initialise regmap\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to register IRQ %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_st_mmap_thermal_driver_exit, ptr @__initcall__kmod_st_thermal_memmap__170_190_st_mmap_thermal_driver_init6, ptr @st_mmap_thermal_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @st_mmap_thermal_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_mmap_thermal_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @st_mmap_thermal_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @st_mmap_thermal_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_mmap_probe(ptr noundef %0) #2 {
  %2 = tail call i32 @st_thermal_register(ptr noundef %0, ptr noundef nonnull @st_mmap_thermal_of_match) #4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_mmap_remove(ptr noundef %0) #2 {
  %2 = tail call i32 @st_thermal_unregister(ptr noundef %0) #4
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_thermal_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_thermal_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_mmap_power_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, i32 0, i32 1040
  %5 = getelementptr inbounds %struct.st_thermal_sensor, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 0, i32 noundef 1040, i32 noundef %4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_mmap_alloc_regfields(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.st_thermal_sensor, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.st_thermal_sensor, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.st_thermal_compat_data, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = insertvalue [5 x i32] undef, i32 %9, 0
  %11 = getelementptr inbounds [5 x i32], ptr %8, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = insertvalue [5 x i32] %10, i32 %12, 1
  %14 = getelementptr inbounds [5 x i32], ptr %8, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = insertvalue [5 x i32] %13, i32 %15, 2
  %17 = getelementptr inbounds [5 x i32], ptr %8, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = insertvalue [5 x i32] %16, i32 %18, 3
  %20 = getelementptr inbounds [5 x i32], ptr %8, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = insertvalue [5 x i32] %19, i32 %21, 4
  %23 = tail call ptr @devm_regmap_field_alloc(ptr noundef %2, ptr noundef %4, [5 x i32] %22) #4
  %24 = getelementptr inbounds %struct.st_thermal_sensor, ptr %0, i32 0, i32 10
  store ptr %23, ptr %24, align 4
  %25 = getelementptr %struct.reg_field, ptr %8, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = insertvalue [5 x i32] undef, i32 %26, 0
  %28 = getelementptr %struct.reg_field, ptr %8, i32 4, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = insertvalue [5 x i32] %27, i32 %29, 1
  %31 = getelementptr %struct.reg_field, ptr %8, i32 4, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = insertvalue [5 x i32] %30, i32 %32, 2
  %34 = getelementptr %struct.reg_field, ptr %8, i32 4, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = insertvalue [5 x i32] %33, i32 %35, 3
  %37 = getelementptr %struct.reg_field, ptr %8, i32 4, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = insertvalue [5 x i32] %36, i32 %38, 4
  %40 = tail call ptr @devm_regmap_field_alloc(ptr noundef %2, ptr noundef %4, [5 x i32] %39) #4
  %41 = getelementptr inbounds %struct.st_thermal_sensor, ptr %0, i32 0, i32 11
  store ptr %40, ptr %41, align 4
  %42 = load ptr, ptr %24, align 4
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  %44 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  br label %47

47:                                               ; preds = %46, %1
  %48 = phi i32 [ -22, %46 ], [ 0, %1 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_mmap_regmap_init(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 -16
  %4 = tail call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %3, i32 noundef 0, ptr noundef null) #4
  %5 = getelementptr inbounds %struct.st_thermal_sensor, ptr %0, i32 0, i32 13
  store ptr %4, ptr %5, align 4
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = ptrtoint ptr %4 to i32
  br label %16

9:                                                ; preds = %1
  %10 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %2, ptr noundef null, ptr noundef %4, ptr noundef nonnull @st_416mpe_regmap_config, ptr noundef null, ptr noundef null) #4
  %11 = getelementptr inbounds %struct.st_thermal_sensor, ptr %0, i32 0, i32 5
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  %14 = load ptr, ptr %11, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %16

16:                                               ; preds = %13, %9, %7
  %17 = phi i32 [ %8, %7 ], [ %15, %13 ], [ 0, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_mmap_register_enable_irq(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 -16
  %4 = tail call i32 @platform_get_irq(ptr noundef %3, i32 noundef 0) #4
  %5 = getelementptr inbounds %struct.st_thermal_sensor, ptr %0, i32 0, i32 12
  store i32 %4, ptr %5, align 4
  %6 = icmp slt i32 %4, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %4, ptr noundef null, ptr noundef nonnull @st_mmap_thermal_trip_handler, i32 noundef 8193, ptr noundef %10, ptr noundef %0) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %14) #5
  br label %31

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.st_thermal_sensor, ptr %0, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.st_thermal_sensor, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.st_thermal_compat_data, ptr %19, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.st_thermal_compat_data, ptr %19, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %21, %23
  %25 = tail call i32 @regmap_field_update_bits_base(ptr noundef %17, i32 noundef -1, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.st_thermal_sensor, ptr %0, i32 0, i32 11
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @regmap_field_update_bits_base(ptr noundef %29, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %31

31:                                               ; preds = %27, %15, %13, %1
  %32 = phi i32 [ %11, %13 ], [ %4, %1 ], [ %30, %27 ], [ %25, %15 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_mmap_enable_irq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.st_thermal_sensor, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.st_thermal_sensor, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.st_thermal_compat_data, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.st_thermal_compat_data, ptr %5, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  %11 = tail call i32 @regmap_field_update_bits_base(ptr noundef %3, i32 noundef -1, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.st_thermal_sensor, ptr %0, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regmap_field_update_bits_base(ptr noundef %15, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %17

17:                                               ; preds = %13, %1
  %18 = phi i32 [ %16, %13 ], [ %11, %1 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_mmap_thermal_trip_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.st_thermal_sensor, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @thermal_zone_device_update(ptr noundef %4, i32 noundef 0) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

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
