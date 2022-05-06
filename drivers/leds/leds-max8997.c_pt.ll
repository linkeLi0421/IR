; ModuleID = '/llk/IR/drivers/leds/leds-max8997.c_pt.bc'
source_filename = "../drivers/leds/leds-max8997.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.max8997_led = type { ptr, %struct.led_classdev, i8, i32, i32, %struct.mutex }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.max8997_platform_data = type { i32, ptr, i32, i8, [3 x i32], i32, [8 x i32], i8, [8 x i32], i8, [8 x i32], i8, i32, i32, ptr, ptr, ptr }
%struct.max8997_led_platform_data = type { [2 x i32], [2 x i8] }
%struct.max8997_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, ptr, %struct.mutex, [11 x i32], [11 x i32], [187 x i8], [12 x i8] }

@__UNIQUE_ID_author247 = internal constant [43 x i8] c"author=Donggeun Kim <dg77.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [31 x i8] c"description=MAX8997 LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias250 = internal constant [27 x i8] c"alias=platform:max8997-led\00", section ".modinfo", align 1
@max8997_led_driver = internal global %struct.platform_driver { ptr @max8997_led_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"max8997-led\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"max8997-led%d\00", align 1
@max8997_groups = internal global [2 x ptr] [ptr @max8997_group, ptr null], align 4
@max8997_led_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"&led->mutex\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to update register(%d)\0A\00", align 1
@max8997_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @max8997_attrs, ptr null }, align 4
@max8997_attrs = internal global [2 x ptr] [ptr @dev_attr_mode, ptr null], align 4
@dev_attr_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420 }, ptr @mode_show, ptr @mode_store }, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"FLASH\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"MOVIE\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"FLASH_PIN_CONTROL\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"MOVIE_PIN_CONTROL\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"NONE\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"FLASH_PIN_CONTROL\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"MOVIE_PIN_CONTROL\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"FLASH\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"MOVIE\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias250, ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8997_led_driver, ptr noundef nonnull @__this_module) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8997_led_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_led_probe(ptr noundef %0) #2 {
  %2 = alloca [20 x i8], align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #11
  br label %94

13:                                               ; preds = %1
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 228, i32 noundef 3520) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %94, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.max8997_led, ptr %14, i32 0, i32 3
  store i32 %18, ptr %19, align 4
  %20 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 20, ptr noundef nonnull @.str.2, i32 noundef %18)
  %21 = getelementptr inbounds %struct.max8997_led, ptr %14, i32 0, i32 1
  store ptr %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.max8997_led, ptr %14, i32 0, i32 1, i32 5
  store ptr @max8997_led_brightness_set, ptr %22, align 4
  %23 = getelementptr inbounds %struct.max8997_led, ptr %14, i32 0, i32 1, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 65536
  store i32 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.max8997_led, ptr %14, i32 0, i32 1, i32 1
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.max8997_led, ptr %14, i32 0, i32 1, i32 12
  store ptr @max8997_groups, ptr %27, align 4
  store ptr %7, ptr %14, align 4
  %28 = getelementptr inbounds %struct.max8997_platform_data, ptr %10, i32 0, i32 16
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %87, label %31

31:                                               ; preds = %16
  %32 = getelementptr [2 x i32], ptr %29, i32 0, i32 %18
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr %struct.max8997_led_platform_data, ptr %29, i32 0, i32 1, i32 %18
  %35 = load i8, ptr %34, align 1
  %36 = and i32 %33, 255
  %37 = getelementptr inbounds %struct.max8997_dev, ptr %7, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = trunc i32 %33 to i8
  switch i8 %39, label %52 [
    i8 1, label %40
    i8 2, label %43
    i8 3, label %46
    i8 4, label %49
  ]

40:                                               ; preds = %31
  %41 = icmp eq i32 %18, 0
  %42 = select i1 %41, i8 1, i8 2
  br label %54

43:                                               ; preds = %31
  %44 = icmp eq i32 %18, 0
  %45 = select i1 %44, i8 8, i8 16
  br label %54

46:                                               ; preds = %31
  %47 = icmp eq i32 %18, 0
  %48 = select i1 %47, i8 5, i8 6
  br label %54

49:                                               ; preds = %31
  %50 = icmp eq i32 %18, 0
  %51 = select i1 %50, i8 40, i8 48
  br label %54

52:                                               ; preds = %31
  %53 = getelementptr inbounds %struct.max8997_led, ptr %14, i32 0, i32 1, i32 2
  store i32 0, ptr %53, align 4
  br label %63

54:                                               ; preds = %49, %46, %43, %40
  %55 = phi i32 [ 15, %49 ], [ 31, %46 ], [ 15, %43 ], [ 31, %40 ]
  %56 = phi i8 [ 56, %49 ], [ 7, %46 ], [ 24, %43 ], [ 3, %40 ]
  %57 = phi i8 [ %51, %49 ], [ %48, %46 ], [ %45, %43 ], [ %42, %40 ]
  %58 = getelementptr inbounds %struct.max8997_led, ptr %14, i32 0, i32 1, i32 2
  store i32 %55, ptr %58, align 4
  %59 = call i32 @max8997_update_reg(ptr noundef %38, i8 noundef zeroext 104, i8 noundef zeroext %57, i8 noundef zeroext %56) #10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %54
  %62 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.4, i32 noundef %59) #11
  br label %63

63:                                               ; preds = %61, %54, %52
  %64 = phi i32 [ 0, %52 ], [ %55, %54 ], [ %55, %61 ]
  %65 = getelementptr inbounds %struct.max8997_led, ptr %14, i32 0, i32 4
  store i32 %36, ptr %65, align 4
  %66 = zext i8 %35 to i32
  %67 = icmp ult i32 %64, %66
  %68 = trunc i32 %64 to i8
  %69 = select i1 %67, i8 %68, i8 %35
  %70 = zext i8 %69 to i32
  %71 = load ptr, ptr %37, align 4
  switch i8 %39, label %86 [
    i8 1, label %72
    i8 3, label %72
    i8 2, label %76
    i8 4, label %76
  ]

72:                                               ; preds = %63, %63
  %73 = shl i8 %69, 3
  %74 = icmp eq i32 %18, 0
  %75 = select i1 %74, i8 99, i8 100
  br label %78

76:                                               ; preds = %63, %63
  %77 = shl i8 %69, 4
  br label %78

78:                                               ; preds = %76, %72
  %79 = phi i8 [ %73, %72 ], [ %77, %76 ]
  %80 = phi i8 [ -8, %72 ], [ -16, %76 ]
  %81 = phi i8 [ %75, %72 ], [ 101, %76 ]
  %82 = call i32 @max8997_update_reg(ptr noundef %71, i8 noundef zeroext %81, i8 noundef zeroext %79, i8 noundef zeroext %80) #10
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %78
  %85 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.4, i32 noundef %82) #11
  br label %86

86:                                               ; preds = %84, %78, %63
  store i32 %70, ptr %26, align 4
  br label %90

87:                                               ; preds = %16
  %88 = getelementptr inbounds %struct.max8997_led, ptr %14, i32 0, i32 1, i32 2
  store i32 0, ptr %88, align 4
  %89 = getelementptr inbounds %struct.max8997_led, ptr %14, i32 0, i32 4
  store i32 0, ptr %89, align 4
  br label %90

90:                                               ; preds = %87, %86
  %91 = getelementptr inbounds %struct.max8997_led, ptr %14, i32 0, i32 5
  call void @__mutex_init(ptr noundef %91, ptr noundef nonnull @.str.3, ptr noundef nonnull @max8997_led_probe.__key) #10
  %92 = call i32 @devm_led_classdev_register_ext(ptr noundef %3, ptr noundef %21, ptr noundef null) #10
  %93 = call i32 @llvm.smin.i32(i32 %92, i32 0)
  br label %94

94:                                               ; preds = %90, %13, %12
  %95 = phi i32 [ -19, %12 ], [ -12, %13 ], [ %93, %90 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  ret i32 %95
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max8997_led_brightness_set(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = icmp eq i32 %1, 0
  %5 = load ptr, ptr %3, align 4
  %6 = getelementptr inbounds %struct.max8997_dev, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 200
  %9 = load i32, ptr %8, align 4
  br i1 %4, label %44, label %10

10:                                               ; preds = %2
  switch i32 %9, label %30 [
    i32 1, label %11
    i32 3, label %11
    i32 2, label %18
    i32 4, label %18
  ]

11:                                               ; preds = %10, %10
  %12 = trunc i32 %1 to i8
  %13 = shl i8 %12, 3
  %14 = getelementptr i8, ptr %0, i32 196
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i8 99, i8 100
  br label %21

18:                                               ; preds = %10, %10
  %19 = trunc i32 %1 to i8
  %20 = shl i8 %19, 4
  br label %21

21:                                               ; preds = %18, %11
  %22 = phi i8 [ %13, %11 ], [ %20, %18 ]
  %23 = phi i8 [ -8, %11 ], [ -16, %18 ]
  %24 = phi i8 [ %17, %11 ], [ 101, %18 ]
  %25 = tail call i32 @max8997_update_reg(ptr noundef %7, i8 noundef zeroext %24, i8 noundef zeroext %22, i8 noundef zeroext %23) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %3, align 4
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.4, i32 noundef %25) #11
  br label %30

30:                                               ; preds = %27, %21, %10
  %31 = getelementptr i8, ptr %0, i32 192
  %32 = load i8, ptr %31, align 4, !range !9
  %33 = icmp eq i8 %32, 1
  br i1 %33, label %72, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds %struct.max8997_dev, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @max8997_update_reg(ptr noundef %37, i8 noundef zeroext 103, i8 noundef zeroext 64, i8 noundef zeroext 64) #10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %3, align 4
  %42 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.4, i32 noundef %38) #11
  br label %43

43:                                               ; preds = %40, %34
  store i8 1, ptr %31, align 4
  br label %72

44:                                               ; preds = %2
  switch i32 %9, label %58 [
    i32 1, label %45
    i32 3, label %45
    i32 2, label %50
    i32 4, label %50
  ]

45:                                               ; preds = %44, %44
  %46 = getelementptr i8, ptr %0, i32 196
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i8 99, i8 100
  br label %50

50:                                               ; preds = %45, %44, %44
  %51 = phi i8 [ -8, %45 ], [ -16, %44 ], [ -16, %44 ]
  %52 = phi i8 [ %49, %45 ], [ 101, %44 ], [ 101, %44 ]
  %53 = tail call i32 @max8997_update_reg(ptr noundef %7, i8 noundef zeroext %52, i8 noundef zeroext 0, i8 noundef zeroext %51) #10
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %3, align 4
  %57 = load ptr, ptr %56, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.4, i32 noundef %53) #11
  br label %58

58:                                               ; preds = %55, %50, %44
  %59 = getelementptr i8, ptr %0, i32 192
  %60 = load i8, ptr %59, align 4, !range !9
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %3, align 4
  %64 = getelementptr inbounds %struct.max8997_dev, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 @max8997_update_reg(ptr noundef %65, i8 noundef zeroext 103, i8 noundef zeroext 0, i8 noundef zeroext 64) #10
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load ptr, ptr %3, align 4
  %70 = load ptr, ptr %69, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.4, i32 noundef %66) #11
  br label %71

71:                                               ; preds = %68, %62
  store i8 0, ptr %59, align 4
  br label %72

72:                                               ; preds = %71, %58, %43, %30
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_update_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 204
  tail call void @mutex_lock(ptr noundef %6) #10
  %7 = getelementptr i8, ptr %5, i32 200
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %13 [
    i32 1, label %9
    i32 2, label %10
    i32 3, label %11
    i32 4, label %12
  ]

9:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) @.str.6, i32 7, i1 false)
  br label %14

10:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) @.str.7, i32 7, i1 false)
  br label %14

11:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(19) %2, ptr noundef nonnull align 1 dereferenceable(19) @.str.8, i32 19, i1 false)
  br label %14

12:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(19) %2, ptr noundef nonnull align 1 dereferenceable(19) @.str.9, i32 19, i1 false)
  br label %14

13:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.10, i32 6, i1 false)
  br label %14

14:                                               ; preds = %13, %12, %11, %10, %9
  %15 = phi i32 [ 5, %13 ], [ 18, %12 ], [ 18, %11 ], [ 6, %10 ], [ 6, %9 ]
  tail call void @mutex_unlock(ptr noundef %6) #10
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mode_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef returned %3) #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 204
  tail call void @mutex_lock(ptr noundef %7) #10
  %8 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(18) @.str.11, i32 noundef 17)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(18) @.str.12, i32 noundef 17)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(6) @.str.13, i32 noundef 5)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(6) @.str.14, i32 noundef 5)
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr i8, ptr %6, i32 -4
  br i1 %18, label %28, label %51

20:                                               ; preds = %13
  %21 = getelementptr i8, ptr %6, i32 -4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.max8997_dev, ptr %22, i32 0, i32 2
  %24 = getelementptr i8, ptr %6, i32 196
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i8 1, i8 2
  br label %53

28:                                               ; preds = %16
  %29 = load ptr, ptr %19, align 4
  %30 = getelementptr inbounds %struct.max8997_dev, ptr %29, i32 0, i32 2
  %31 = getelementptr i8, ptr %6, i32 196
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i8 8, i8 16
  br label %53

35:                                               ; preds = %4
  %36 = getelementptr i8, ptr %6, i32 -4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.max8997_dev, ptr %37, i32 0, i32 2
  %39 = getelementptr i8, ptr %6, i32 196
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i8 5, i8 6
  br label %53

43:                                               ; preds = %10
  %44 = getelementptr i8, ptr %6, i32 -4
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.max8997_dev, ptr %45, i32 0, i32 2
  %47 = getelementptr i8, ptr %6, i32 196
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i8 40, i8 48
  br label %53

51:                                               ; preds = %16
  %52 = getelementptr i8, ptr %6, i32 8
  store i32 0, ptr %52, align 4
  br label %67

53:                                               ; preds = %43, %35, %28, %20
  %54 = phi ptr [ %46, %43 ], [ %38, %35 ], [ %30, %28 ], [ %23, %20 ]
  %55 = phi i32 [ 4, %43 ], [ 3, %35 ], [ 2, %28 ], [ 1, %20 ]
  %56 = phi ptr [ %44, %43 ], [ %36, %35 ], [ %19, %28 ], [ %21, %20 ]
  %57 = phi i32 [ 15, %43 ], [ 31, %35 ], [ 15, %28 ], [ 31, %20 ]
  %58 = phi i8 [ 56, %43 ], [ 7, %35 ], [ 24, %28 ], [ 3, %20 ]
  %59 = phi i8 [ %50, %43 ], [ %42, %35 ], [ %34, %28 ], [ %27, %20 ]
  %60 = load ptr, ptr %54, align 4
  %61 = getelementptr i8, ptr %6, i32 8
  store i32 %57, ptr %61, align 4
  %62 = tail call i32 @max8997_update_reg(ptr noundef %60, i8 noundef zeroext 104, i8 noundef zeroext %59, i8 noundef zeroext %58) #10
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %53
  %65 = load ptr, ptr %56, align 4
  %66 = load ptr, ptr %65, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.4, i32 noundef %62) #11
  br label %67

67:                                               ; preds = %64, %53, %51
  %68 = phi ptr [ %19, %51 ], [ %56, %53 ], [ %56, %64 ]
  %69 = phi i32 [ 0, %51 ], [ %55, %53 ], [ %55, %64 ]
  %70 = getelementptr inbounds %struct.max8997_led, ptr %68, i32 0, i32 4
  store i32 %69, ptr %70, align 4
  tail call void @mutex_unlock(ptr noundef %7) #10
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
