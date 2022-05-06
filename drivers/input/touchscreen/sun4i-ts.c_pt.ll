; ModuleID = '/llk/IR/drivers/input/touchscreen/sun4i-ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/sun4i-ts.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.sun4i_ts_data = type { ptr, ptr, ptr, i32, i8, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_sun4i_ts__210_409_sun4i_ts_driver_init6 = internal global ptr @sun4i_ts_driver_init, section ".initcall6.init", align 4
@sun4i_ts_driver = internal global %struct.platform_driver { ptr @sun4i_ts_probe, ptr @sun4i_ts_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_ts_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sun4i_ts_driver_exit = internal global ptr @sun4i_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description211 = internal constant [77 x i8] c"sun4i_ts.description=Allwinner sun4i resistive touchscreen controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author212 = internal constant [52 x i8] c"sun4i_ts.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [49 x i8] c"sun4i_ts.file=drivers/input/touchscreen/sun4i-ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [21 x i8] c"sun4i_ts.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"sun4i-ts\00", align 1
@sun4i_ts_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"allwinner,sun6i-a31-ts\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"allwinner,sun4i-a10-ts\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"allwinner,ts-attached\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"sun4i_ts/input0\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"allwinner,tp-sensitive-adjust\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"allwinner,filter-type\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"sun4i_ts\00", align 1
@sun4i_ts_groups = internal global [2 x ptr] [ptr @sun4i_ts_group, ptr null], align 4
@sun4i_ts_tz_ops = internal constant %struct.thermal_zone_of_device_ops { ptr @sun4i_get_tz_temp, ptr null, ptr null, ptr null, ptr null }, align 4
@sun4i_ts_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sun4i_ts_attrs, ptr null }, align 4
@sun4i_ts_attrs = internal global [3 x ptr] [ptr @dev_attr_temp1_input, ptr @dev_attr_temp1_label, ptr null], align 4
@dev_attr_temp1_input = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @show_temp, ptr null }, align 4
@dev_attr_temp1_label = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @show_temp_label, ptr null }, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"temp1_input\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"temp1_label\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"SoC temperature\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_sun4i_ts_driver_exit, ptr @__initcall__kmod_sun4i_ts__210_409_sun4i_ts_driver_init6, ptr @sun4i_ts_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun4i_ts_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_ts_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun4i_ts_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_ts_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_ts_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 15, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 1, ptr %3, align 4
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 32, i32 noundef 3520) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %111, label %9

9:                                                ; preds = %1
  store ptr %4, ptr %7, align 4
  %10 = getelementptr inbounds %struct.sun4i_ts_data, ptr %7, i32 0, i32 4
  store i8 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.sun4i_ts_data, ptr %7, i32 0, i32 5
  store i32 -1, ptr %11, align 4
  %12 = tail call i32 @of_device_is_compatible(ptr noundef %6, ptr noundef nonnull @.str.1) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.sun4i_ts_data, ptr %7, i32 0, i32 6
  store i32 271000, ptr %15, align 4
  br label %22

16:                                               ; preds = %9
  %17 = tail call i32 @of_device_is_compatible(ptr noundef %6, ptr noundef nonnull @.str.2) #9
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.sun4i_ts_data, ptr %7, i32 0, i32 6
  br i1 %18, label %21, label %20

20:                                               ; preds = %16
  store i32 257000, ptr %19, align 4
  br label %22

21:                                               ; preds = %16
  store i32 144700, ptr %19, align 4
  br label %22

22:                                               ; preds = %21, %20, %14
  %23 = phi i32 [ 133, %20 ], [ 100, %21 ], [ 167, %14 ]
  %24 = getelementptr inbounds %struct.sun4i_ts_data, ptr %7, i32 0, i32 7
  store i32 %23, ptr %24, align 4
  %25 = tail call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef null) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %57, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @devm_input_allocate_device(ptr noundef %4) #9
  %29 = getelementptr inbounds %struct.sun4i_ts_data, ptr %7, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %111, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8
  store ptr %32, ptr %28, align 8
  %33 = load ptr, ptr %29, align 4
  %34 = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 1
  store ptr @.str.4, ptr %34, align 4
  %35 = load ptr, ptr %29, align 4
  %36 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 31
  store ptr @sun4i_ts_open, ptr %36, align 4
  %37 = load ptr, ptr %29, align 4
  %38 = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 32
  store ptr @sun4i_ts_close, ptr %38, align 8
  %39 = load ptr, ptr %29, align 4
  %40 = getelementptr inbounds %struct.input_dev, ptr %39, i32 0, i32 3
  store i16 25, ptr %40, align 4
  %41 = load ptr, ptr %29, align 4
  %42 = getelementptr inbounds %struct.input_dev, ptr %41, i32 0, i32 3, i32 1
  store i16 1, ptr %42, align 2
  %43 = load ptr, ptr %29, align 4
  %44 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 3, i32 2
  store i16 1, ptr %44, align 4
  %45 = load ptr, ptr %29, align 4
  %46 = getelementptr inbounds %struct.input_dev, ptr %45, i32 0, i32 3, i32 3
  store i16 256, ptr %46, align 2
  %47 = load ptr, ptr %29, align 4
  %48 = getelementptr inbounds %struct.input_dev, ptr %47, i32 0, i32 5
  store i32 11, ptr %48, align 8
  %49 = load ptr, ptr %29, align 4
  %50 = getelementptr %struct.input_dev, ptr %49, i32 0, i32 6, i32 10
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %51, 1024
  store i32 %52, ptr %50, align 4
  %53 = load ptr, ptr %29, align 4
  tail call void @input_set_abs_params(ptr noundef %53, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #9
  %54 = load ptr, ptr %29, align 4
  tail call void @input_set_abs_params(ptr noundef %54, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #9
  %55 = load ptr, ptr %29, align 4
  %56 = getelementptr inbounds %struct.input_dev, ptr %55, i32 0, i32 40, i32 8
  store ptr %7, ptr %56, align 8
  br label %57

57:                                               ; preds = %31, %22
  %58 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  %59 = getelementptr inbounds %struct.sun4i_ts_data, ptr %7, i32 0, i32 2
  store ptr %58, ptr %59, align 4
  %60 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = ptrtoint ptr %58 to i32
  br label %111

63:                                               ; preds = %57
  %64 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %65 = getelementptr inbounds %struct.sun4i_ts_data, ptr %7, i32 0, i32 3
  store i32 %64, ptr %65, align 4
  %66 = tail call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %64, ptr noundef nonnull @sun4i_ts_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %7) #9
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %111

68:                                               ; preds = %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %69 = load ptr, ptr %59, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 2555967) #9, !srcloc !9
  %70 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.5, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  %71 = load i32, ptr %2, align 4
  %72 = shl i32 %71, 28
  %73 = load ptr, ptr %59, align 4
  %74 = getelementptr i8, ptr %73, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #9, !srcloc !9
  %75 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  %76 = load i32, ptr %3, align 4
  %77 = or i32 %76, 4
  %78 = load ptr, ptr %59, align 4
  %79 = getelementptr i8, ptr %78, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #9, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  call void @arm_heavy_mb() #9
  %80 = load ptr, ptr %59, align 4
  %81 = getelementptr i8, ptr %80, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 67489) #9, !srcloc !9
  %82 = call i32 @of_device_is_compatible(ptr noundef %6, ptr noundef nonnull @.str.1) #9
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 21008, i32 21024
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  %85 = load ptr, ptr %59, align 4
  %86 = getelementptr i8, ptr %85, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #9, !srcloc !9
  %87 = load ptr, ptr %7, align 4
  %88 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %87, ptr noundef nonnull @.str.7, ptr noundef nonnull %7, ptr noundef nonnull @sun4i_ts_groups) #9
  %89 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %90, label %92

90:                                               ; preds = %68
  %91 = ptrtoint ptr %88 to i32
  br label %111

92:                                               ; preds = %68
  %93 = load ptr, ptr %7, align 4
  %94 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %93, i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull @sun4i_ts_tz_ops) #9
  %95 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = ptrtoint ptr %94 to i32
  br label %111

98:                                               ; preds = %92
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  call void @arm_heavy_mb() #9
  %99 = load ptr, ptr %59, align 4
  %100 = getelementptr i8, ptr %99, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 262144) #9, !srcloc !9
  br i1 %26, label %109, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.sun4i_ts_data, ptr %7, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = call i32 @input_register_device(ptr noundef %103) #9
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %107 = load ptr, ptr %59, align 4
  %108 = getelementptr i8, ptr %107, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 0) #9, !srcloc !9
  br label %111

109:                                              ; preds = %101, %98
  %110 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %110, align 8
  br label %111

111:                                              ; preds = %109, %106, %96, %90, %63, %61, %27, %1
  %112 = phi i32 [ %62, %61 ], [ %91, %90 ], [ %97, %96 ], [ %104, %106 ], [ 0, %109 ], [ -12, %1 ], [ -12, %27 ], [ %66, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_ts_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sun4i_ts_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @input_unregister_device(ptr noundef nonnull %5) #9
  br label %8

8:                                                ; preds = %7, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %9 = getelementptr inbounds %struct.sun4i_ts_data, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #9, !srcloc !9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_ts_open(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %4 = getelementptr inbounds %struct.sun4i_ts_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 327954) #9, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_ts_close(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %4 = getelementptr inbounds %struct.sun4i_ts_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 262144) #9, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_ts_irq(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sun4i_ts_data, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %7 = and i32 %6, 262144
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !21
  %13 = getelementptr inbounds %struct.sun4i_ts_data, ptr %1, i32 0, i32 5
  store i32 %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %9, %2
  %15 = getelementptr inbounds %struct.sun4i_ts_data, ptr %1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %44, label %18

18:                                               ; preds = %14
  %19 = and i32 %6, 65536
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 36
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !22
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 36
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %28 = getelementptr inbounds %struct.sun4i_ts_data, ptr %1, i32 0, i32 4
  %29 = load i8, ptr %28, align 4, !range !24
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load ptr, ptr %15, align 4
  tail call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 0, i32 noundef %24) #9
  %33 = load ptr, ptr %15, align 4
  tail call void @input_event(ptr noundef %33, i32 noundef 3, i32 noundef 1, i32 noundef %27) #9
  %34 = load ptr, ptr %15, align 4
  tail call void @input_event(ptr noundef %34, i32 noundef 1, i32 noundef 330, i32 noundef 1) #9
  %35 = load ptr, ptr %15, align 4
  tail call void @input_event(ptr noundef %35, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %37

36:                                               ; preds = %21
  store i8 0, ptr %28, align 4
  br label %37

37:                                               ; preds = %36, %31, %18
  %38 = and i32 %6, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.sun4i_ts_data, ptr %1, i32 0, i32 4
  store i8 1, ptr %41, align 4
  %42 = load ptr, ptr %15, align 4
  tail call void @input_event(ptr noundef %42, i32 noundef 1, i32 noundef 330, i32 noundef 0) #9
  %43 = load ptr, ptr %15, align 4
  tail call void @input_event(ptr noundef %43, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %44

44:                                               ; preds = %40, %37, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !25
  tail call void @arm_heavy_mb() #9
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr i8, ptr %45, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %6) #9, !srcloc !9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sun4i_ts_data, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sun4i_ts_data, ptr %5, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, %7
  %13 = getelementptr inbounds %struct.sun4i_ts_data, ptr %5, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %12, %14
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %15)
  br label %17

17:                                               ; preds = %9, %3
  %18 = phi i32 [ %16, %9 ], [ -11, %3 ]
  ret i32 %18
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @show_temp_label(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(17) %2, ptr noundef nonnull align 1 dereferenceable(17) @.str.11, i32 17, i1 false)
  ret i32 16
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_get_tz_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.sun4i_ts_data, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sun4i_ts_data, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = mul i32 %8, %4
  %10 = getelementptr inbounds %struct.sun4i_ts_data, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 %9, %11
  store i32 %12, ptr %1, align 4
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %6 ], [ -11, %2 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind }

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
!8 = !{i64 2152492259}
!9 = !{i64 4629765}
!10 = !{i64 2152492780}
!11 = !{i64 2152493253}
!12 = !{i64 2152493694}
!13 = !{i64 2152494118}
!14 = !{i64 2152494457}
!15 = !{i64 2152494790}
!16 = !{i64 2152495099}
!17 = !{i64 2152486757}
!18 = !{i64 2152487238}
!19 = !{i64 4630183}
!20 = !{i64 2152485687}
!21 = !{i64 2152486104}
!22 = !{i64 2152484917}
!23 = !{i64 2152485250}
!24 = !{i8 0, i8 2}
!25 = !{i64 2152486296}
