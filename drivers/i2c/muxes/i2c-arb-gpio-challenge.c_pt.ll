; ModuleID = '/llk/IR/drivers/i2c/muxes/i2c-arb-gpio-challenge.c_pt.bc'
source_filename = "../drivers/i2c/muxes/i2c-arb-gpio-challenge.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.i2c_arbitrator_data = type { ptr, ptr, i32, i32, i32 }

@i2c_arbitrator_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"i2c-arb-gpio-challenge\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description247 = internal constant [39 x i8] c"description=GPIO-based I2C Arbitration\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [45 x i8] c"author=Doug Anderson <dianders@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias250 = internal constant [38 x i8] c"alias=platform:i2c-arb-gpio-challenge\00", section ".modinfo", align 1
@i2c_arbitrator_driver = internal global %struct.platform_driver { ptr @i2c_arbitrator_probe, ptr @i2c_arbitrator_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @i2c_arbitrator_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [23 x i8] c"i2c-arb-gpio-challenge\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot find device tree node\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Platform data is not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"our-claim\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"could not get \22our-claim\22 GPIO (%ld)\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"their-claim\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"could not get \22their-claim\22 GPIO (%ld)\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Only one other master is supported\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"slew-delay-us\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"wait-retry-us\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"wait-free-us\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"i2c-parent\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Cannot parse i2c-parent\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Cannot find parent bus\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.14 = private unnamed_addr constant [30 x i8] c"Could not claim bus, timeout\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias250, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_of__i2c_arbitrator_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @i2c_arbitrator_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @i2c_arbitrator_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @i2c_arbitrator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_arbitrator_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  br label %72

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  br label %72

13:                                               ; preds = %8
  %14 = tail call ptr @i2c_mux_alloc(ptr noundef null, ptr noundef %3, i32 noundef 1, i32 noundef 20, i32 noundef 2, ptr noundef nonnull @i2c_arbitrator_select, ptr noundef nonnull @i2c_arbitrator_deselect) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %72, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.i2c_mux_core, ptr %14, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %14, ptr %19, align 8
  %20 = tail call ptr @devm_gpiod_get(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 3) #6
  store ptr %20, ptr %18, align 4
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = ptrtoint ptr %20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %23) #7
  %24 = load ptr, ptr %18, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %72

26:                                               ; preds = %16
  %27 = tail call ptr @devm_gpiod_get(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef 1) #6
  %28 = getelementptr inbounds %struct.i2c_arbitrator_data, ptr %18, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = ptrtoint ptr %27 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %31) #7
  %32 = load ptr, ptr %28, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %72

34:                                               ; preds = %26
  %35 = tail call ptr @devm_gpiod_get_index(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 1) #6
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #7
  br label %72

38:                                               ; preds = %34
  %39 = icmp eq ptr %35, inttoptr (i32 -517 to ptr)
  br i1 %39, label %72, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.i2c_arbitrator_data, ptr %18, i32 0, i32 2
  %42 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.8, ptr noundef %41, i32 noundef 1, i32 noundef 0) #6
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 10, ptr %41, align 4
  br label %45

45:                                               ; preds = %44, %40
  %46 = getelementptr inbounds %struct.i2c_arbitrator_data, ptr %18, i32 0, i32 3
  %47 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.9, ptr noundef %46, i32 noundef 1, i32 noundef 0) #6
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store i32 3000, ptr %46, align 4
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds %struct.i2c_arbitrator_data, ptr %18, i32 0, i32 4
  %52 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.10, ptr noundef %51, i32 noundef 1, i32 noundef 0) #6
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 50000, ptr %51, align 4
  br label %55

55:                                               ; preds = %54, %50
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #6, !annotation !8
  %56 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %5, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #6
  %57 = icmp ne i32 %56, 0
  %58 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  %59 = icmp eq ptr %58, null
  %60 = select i1 %57, i1 true, i1 %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12) #7
  br label %72

62:                                               ; preds = %55
  %63 = call ptr @of_get_i2c_adapter_by_node(ptr noundef nonnull %58) #6
  store ptr %63, ptr %14, align 4
  call void @of_node_put(ptr noundef nonnull %58) #6
  %64 = load ptr, ptr %14, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13) #7
  br label %72

67:                                               ; preds = %62
  %68 = call i32 @i2c_mux_add_adapter(ptr noundef nonnull %14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr %14, align 4
  call void @i2c_put_adapter(ptr noundef %71) #6
  br label %72

72:                                               ; preds = %70, %67, %66, %61, %38, %37, %30, %22, %13, %12, %7
  %73 = phi i32 [ -22, %12 ], [ %25, %22 ], [ %33, %30 ], [ -517, %66 ], [ -22, %61 ], [ -22, %37 ], [ -19, %7 ], [ -12, %13 ], [ -517, %38 ], [ %68, %70 ], [ 0, %67 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_arbitrator_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @i2c_mux_del_adapters(ptr noundef %3) #6
  %4 = load ptr, ptr %3, align 4
  tail call void @i2c_put_adapter(ptr noundef %4) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_arbitrator_select(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = getelementptr inbounds %struct.i2c_arbitrator_data, ptr %4, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @__usecs_to_jiffies(i32 noundef %7) #6
  %9 = add i32 %8, %5
  %10 = xor i32 %9, -1
  %11 = getelementptr inbounds %struct.i2c_arbitrator_data, ptr %4, i32 0, i32 2
  %12 = getelementptr inbounds %struct.i2c_arbitrator_data, ptr %4, i32 0, i32 3
  %13 = getelementptr inbounds %struct.i2c_arbitrator_data, ptr %4, i32 0, i32 1
  br label %14

14:                                               ; preds = %34, %2
  %15 = load ptr, ptr %4, align 4
  tail call void @gpiod_set_value(ptr noundef %15, i32 noundef 1) #6
  %16 = load i32, ptr %11, align 4
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #6
  %18 = load volatile i32, ptr @jiffies, align 64
  %19 = load i32, ptr %12, align 4
  %20 = tail call i32 @__usecs_to_jiffies(i32 noundef %19) #6
  %21 = add i32 %20, %18
  %22 = xor i32 %21, -1
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = add i32 %23, %22
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %30, %14
  %27 = load ptr, ptr %13, align 4
  %28 = tail call i32 @gpiod_get_value(ptr noundef %27) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %26
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 200, i32 noundef 2) #6
  %31 = load volatile i32, ptr @jiffies, align 64
  %32 = add i32 %31, %22
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %26, label %34

34:                                               ; preds = %30, %14
  %35 = load ptr, ptr %4, align 4
  tail call void @gpiod_set_value(ptr noundef %35, i32 noundef 0) #6
  %36 = load i32, ptr %12, align 4
  %37 = shl i32 %36, 1
  tail call void @usleep_range_state(i32 noundef %36, i32 noundef %37, i32 noundef 2) #6
  %38 = load volatile i32, ptr @jiffies, align 64
  %39 = add i32 %38, %10
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %14, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr %4, align 4
  tail call void @gpiod_set_value(ptr noundef %42, i32 noundef 0) #6
  %43 = load i32, ptr %11, align 4
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %44(i32 noundef %43) #6
  %45 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.14) #7
  br label %47

47:                                               ; preds = %41, %26
  %48 = phi i32 [ -16, %41 ], [ 0, %26 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_arbitrator_deselect(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #6
  %6 = getelementptr inbounds %struct.i2c_arbitrator_data, ptr %4, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %7) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

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
