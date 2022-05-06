; ModuleID = '/llk/IR/drivers/input/misc/max8997_haptic.c_pt.bc'
source_filename = "../drivers/input/misc/max8997_haptic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_device_id = type { [20 x i8], i32 }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
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
%struct.max8997_platform_data = type { i32, ptr, i32, i8, [3 x i32], i32, [8 x i32], i8, [8 x i32], i8, [8 x i32], i8, i32, i32, ptr, ptr, ptr }
%struct.max8997_haptic = type { ptr, ptr, ptr, ptr, %struct.work_struct, %struct.mutex, i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.max8997_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, ptr, %struct.mutex, [11 x i32], [11 x i32], [187 x i8], [12 x i8] }
%struct.max8997_haptic_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.71 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.71 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@max8997_haptic_id = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max8997-haptic\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [43 x i8] c"author=Donggeun Kim <dg77.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [34 x i8] c"description=max8997_haptic driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@max8997_haptic_driver = internal global %struct.platform_driver { ptr @max8997_haptic_probe, ptr @max8997_haptic_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_haptic_pm_ops, ptr null, ptr null }, ptr @max8997_haptic_id, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [15 x i8] c"max8997-haptic\00", align 1
@max8997_haptic_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @max8997_haptic_suspend, ptr null, ptr @max8997_haptic_suspend, ptr null, ptr @max8997_haptic_suspend, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"no haptic platform data\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unable to allocate memory\0A\00", align 1
@max8997_haptic_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"&chip->mutex\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"unable to request PWM for haptic, error: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Invalid chip mode specified (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"inmotor\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"unable to get regulator, error: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"unable to create FF device, error: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"unable to register input device, error: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"set_pwm_cycle failed, error: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Failed to enable regulator\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Failed to enable PWM\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_platform__max8997_haptic_id_device_table = dso_local alias [2 x %struct.platform_device_id], ptr @max8997_haptic_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8997_haptic_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8997_haptic_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_haptic_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.pwm_state, align 8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.max8997_platform_data, ptr %10, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #9
  br label %105

17:                                               ; preds = %12
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 92) #10
  %20 = tail call ptr @input_allocate_device() #8
  %21 = icmp ne ptr %19, null
  %22 = icmp ne ptr %20, null
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #9
  br label %103

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.max8997_haptic, ptr %19, i32 0, i32 4
  store i32 -32, ptr %26, align 8
  %27 = getelementptr inbounds %struct.max8997_haptic, ptr %19, i32 0, i32 4, i32 1
  store volatile ptr %27, ptr %27, align 4
  %28 = getelementptr inbounds %struct.max8997_haptic, ptr %19, i32 0, i32 4, i32 1, i32 1
  store ptr %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.max8997_haptic, ptr %19, i32 0, i32 4, i32 2
  store ptr @max8997_haptic_play_effect_work, ptr %29, align 4
  %30 = getelementptr inbounds %struct.max8997_haptic, ptr %19, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %30, ptr noundef nonnull @.str.3, ptr noundef nonnull @max8997_haptic_probe.__key) #8
  %31 = getelementptr inbounds %struct.max8997_dev, ptr %7, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.max8997_haptic, ptr %19, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  store ptr %3, ptr %19, align 8
  %34 = getelementptr inbounds %struct.max8997_haptic, ptr %19, i32 0, i32 2
  store ptr %20, ptr %34, align 8
  %35 = getelementptr inbounds %struct.max8997_haptic_platform_data, ptr %14, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.max8997_haptic, ptr %19, i32 0, i32 9
  store i32 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.max8997_haptic_platform_data, ptr %14, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.max8997_haptic, ptr %19, i32 0, i32 11
  store i32 %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.max8997_haptic_platform_data, ptr %14, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.max8997_haptic, ptr %19, i32 0, i32 12
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.max8997_haptic_platform_data, ptr %14, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.max8997_haptic, ptr %19, i32 0, i32 10
  store i32 %45, ptr %46, align 4
  switch i32 %42, label %72 [
    i32 1, label %47
    i32 0, label %57
  ]

47:                                               ; preds = %25
  %48 = getelementptr inbounds %struct.max8997_haptic_platform_data, ptr %14, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.max8997_haptic, ptr %19, i32 0, i32 13
  store i32 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.max8997_haptic_platform_data, ptr %14, i32 0, i32 6
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.max8997_haptic, ptr %19, i32 0, i32 14
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.max8997_haptic_platform_data, ptr %14, i32 0, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.max8997_haptic, ptr %19, i32 0, i32 15
  store i32 %55, ptr %56, align 8
  br label %73

57:                                               ; preds = %25
  %58 = load i32, ptr %14, align 4
  %59 = tail call ptr @pwm_request(i32 noundef %58, ptr noundef nonnull @.str) #8
  %60 = getelementptr inbounds %struct.max8997_haptic, ptr %19, i32 0, i32 8
  store ptr %59, ptr %60, align 4
  %61 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = ptrtoint ptr %59 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %63) #9
  br label %103

64:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  %65 = getelementptr inbounds %struct.pwm_device, ptr %59, i32 0, i32 6
  %66 = getelementptr inbounds %struct.pwm_device, ptr %59, i32 0, i32 6, i32 1
  %67 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %67, i8 0, i64 16, i1 false) #8
  %68 = load i32, ptr %66, align 8
  %69 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  store i32 %68, ptr %69, align 8
  %70 = load i64, ptr %65, align 8
  store i64 %70, ptr %2, align 8
  %71 = call i32 @pwm_apply_state(ptr noundef %59, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  br label %73

72:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %42) #9
  br label %103

73:                                               ; preds = %64, %47
  %74 = call ptr @regulator_get(ptr noundef %3, ptr noundef nonnull @.str.6) #8
  %75 = getelementptr inbounds %struct.max8997_haptic, ptr %19, i32 0, i32 3
  store ptr %74, ptr %75, align 4
  %76 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = ptrtoint ptr %74 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %78) #9
  br label %96

79:                                               ; preds = %73
  store ptr @.str, ptr %20, align 8
  %80 = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 3, i32 3
  store i16 1, ptr %80, align 2
  %81 = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 40, i32 1
  store ptr %3, ptr %81, align 4
  %82 = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 32
  store ptr @max8997_haptic_close, ptr %82, align 8
  %83 = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 40, i32 8
  store ptr %19, ptr %83, align 8
  call void @input_set_capability(ptr noundef nonnull %20, i32 noundef 21, i32 noundef 80) #8
  %84 = call i32 @input_ff_create_memless(ptr noundef nonnull %20, ptr noundef null, ptr noundef nonnull @max8997_haptic_play_effect) #8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %84) #9
  br label %93

87:                                               ; preds = %79
  %88 = call i32 @input_register_device(ptr noundef nonnull %20) #8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %88) #9
  call void @input_ff_destroy(ptr noundef nonnull %20) #8
  br label %93

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %19, ptr %92, align 8
  br label %105

93:                                               ; preds = %90, %86
  %94 = phi i32 [ %84, %86 ], [ %88, %90 ]
  %95 = load ptr, ptr %75, align 4
  call void @regulator_put(ptr noundef %95) #8
  br label %96

96:                                               ; preds = %93, %77
  %97 = phi i32 [ %78, %77 ], [ %94, %93 ]
  %98 = load i32, ptr %43, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.max8997_haptic, ptr %19, i32 0, i32 8
  %102 = load ptr, ptr %101, align 4
  call void @pwm_free(ptr noundef %102) #8
  br label %103

103:                                              ; preds = %100, %96, %72, %62, %24
  %104 = phi i32 [ -22, %72 ], [ %63, %62 ], [ %97, %100 ], [ %97, %96 ], [ -12, %24 ]
  call void @input_free_device(ptr noundef %20) #8
  call void @kfree(ptr noundef %19) #8
  br label %105

105:                                              ; preds = %103, %91, %16
  %106 = phi i32 [ %104, %103 ], [ 0, %91 ], [ -22, %16 ]
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_haptic_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.max8997_haptic, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @input_unregister_device(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.max8997_haptic, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @regulator_put(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.max8997_haptic, ptr %3, i32 0, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.max8997_haptic, ptr %3, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  tail call void @pwm_free(ptr noundef %13) #8
  br label %14

14:                                               ; preds = %11, %1
  tail call void @kfree(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max8997_haptic_play_effect_work(ptr noundef %0) #2 {
  %2 = alloca %struct.pwm_state, align 8
  %3 = alloca %struct.pwm_state, align 8
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr i8, ptr %0, i32 40
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %103, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 16
  tail call void @mutex_lock(ptr noundef %9) #8
  %10 = getelementptr i8, ptr %0, i32 60
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %0, i32 48
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %5, align 4
  %17 = getelementptr i8, ptr %0, i32 44
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  %19 = icmp eq ptr %18, null
  %20 = icmp slt i32 %15, 0
  %21 = or i1 %20, %19
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  br label %66

23:                                               ; preds = %13
  %24 = mul i32 %16, %15
  %25 = udiv i32 %24, 100
  %26 = getelementptr inbounds %struct.pwm_device, ptr %18, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef align 8 dereferenceable(24) %26, i32 24, i1 false) #8
  %27 = getelementptr inbounds %struct.pwm_state, ptr %3, i32 0, i32 1
  %28 = load i64, ptr %27, align 8
  %29 = zext i32 %25 to i64
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = zext i32 %15 to i64
  br label %62

33:                                               ; preds = %23
  %34 = load i64, ptr %3, align 8
  %35 = zext i32 %15 to i64
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  br label %69

38:                                               ; preds = %8
  %39 = load i32, ptr %5, align 4
  %40 = shl i32 %39, 6
  %41 = add i32 %40, 99
  %42 = udiv i32 %41, 100
  %43 = trunc i32 %42 to i8
  %44 = getelementptr i8, ptr %0, i32 64
  %45 = load i32, ptr %44, align 4
  switch i32 %45, label %69 [
    i32 0, label %46
    i32 1, label %50
    i32 2, label %54
    i32 3, label %58
  ]

46:                                               ; preds = %38
  %47 = getelementptr i8, ptr %0, i32 -12
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @max8997_write_reg(ptr noundef %48, i8 noundef zeroext 12, i8 noundef zeroext %43) #8
  br label %69

50:                                               ; preds = %38
  %51 = getelementptr i8, ptr %0, i32 -12
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @max8997_write_reg(ptr noundef %52, i8 noundef zeroext 13, i8 noundef zeroext %43) #8
  br label %69

54:                                               ; preds = %38
  %55 = getelementptr i8, ptr %0, i32 -12
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 @max8997_write_reg(ptr noundef %56, i8 noundef zeroext 14, i8 noundef zeroext %43) #8
  br label %69

58:                                               ; preds = %38
  %59 = getelementptr i8, ptr %0, i32 -12
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 @max8997_write_reg(ptr noundef %60, i8 noundef zeroext 15, i8 noundef zeroext %43) #8
  br label %69

62:                                               ; preds = %33, %31
  %63 = phi i64 [ %32, %31 ], [ %35, %33 ]
  store i64 %29, ptr %27, align 8
  store i64 %63, ptr %3, align 8
  %64 = call i32 @pwm_apply_state(ptr noundef nonnull %18, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62, %22
  %67 = phi i32 [ -22, %22 ], [ %64, %62 ]
  %68 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.10, i32 noundef %67) #9
  br label %102

69:                                               ; preds = %62, %58, %54, %50, %46, %38, %37
  %70 = getelementptr i8, ptr %0, i32 36
  %71 = load i8, ptr %70, align 4, !range !8
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %69
  %74 = getelementptr i8, ptr %0, i32 -4
  %75 = load ptr, ptr %74, align 4
  %76 = call i32 @regulator_enable(ptr noundef %75) #8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.11) #9
  br label %102

80:                                               ; preds = %73
  call fastcc void @max8997_haptic_configure(ptr noundef %4) #8
  %81 = load i32, ptr %10, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %80
  %84 = getelementptr i8, ptr %0, i32 44
  %85 = load ptr, ptr %84, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  br label %97

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.pwm_device, ptr %85, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef align 8 dereferenceable(24) %89, i32 24, i1 false) #8
  %90 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %91 = load i8, ptr %90, align 4, !range !8
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  br label %101

94:                                               ; preds = %88
  store i8 1, ptr %90, align 4
  %95 = call i32 @pwm_apply_state(ptr noundef nonnull %85, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %94, %87
  %98 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.12) #9
  %99 = load ptr, ptr %74, align 4
  %100 = call i32 @regulator_disable(ptr noundef %99) #8
  br label %102

101:                                              ; preds = %94, %93, %80
  store i8 1, ptr %70, align 4
  br label %102

102:                                              ; preds = %101, %97, %78, %69, %66
  call void @mutex_unlock(ptr noundef %9) #8
  br label %104

103:                                              ; preds = %1
  tail call fastcc void @max8997_haptic_disable(ptr noundef %4)
  br label %104

104:                                              ; preds = %103, %102
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max8997_haptic_close(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.max8997_haptic, ptr %3, i32 0, i32 4
  %5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %4) #8
  tail call fastcc void @max8997_haptic_disable(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_haptic_play_effect(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ff_effect, ptr %2, i32 0, i32 5
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.max8997_haptic, ptr %5, i32 0, i32 7
  store i32 %8, ptr %9, align 4
  %10 = icmp eq i16 %7, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ff_effect, ptr %2, i32 0, i32 5, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  store i32 %14, ptr %9, align 4
  br label %15

15:                                               ; preds = %11, %3
  %16 = getelementptr inbounds %struct.max8997_haptic, ptr %5, i32 0, i32 4
  %17 = load ptr, ptr @system_wq, align 4
  %18 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %17, ptr noundef %16) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_ff_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @max8997_haptic_disable(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.pwm_state, align 8
  %3 = getelementptr inbounds %struct.max8997_haptic, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.max8997_haptic, ptr %0, i32 0, i32 6
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  store i8 0, ptr %4, align 4
  tail call fastcc void @max8997_haptic_configure(ptr noundef %0)
  %8 = getelementptr inbounds %struct.max8997_haptic, ptr %0, i32 0, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.max8997_haptic, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pwm_device, ptr %13, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef align 8 dereferenceable(24) %16, i32 24, i1 false) #8
  %17 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %18 = load i8, ptr %17, align 4, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  store i8 0, ptr %17, align 4
  %21 = call i32 @pwm_apply_state(ptr noundef nonnull %13, ptr noundef nonnull %2) #8
  br label %22

22:                                               ; preds = %20, %15, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  br label %23

23:                                               ; preds = %22, %7
  %24 = getelementptr inbounds %struct.max8997_haptic, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @regulator_disable(ptr noundef %25) #8
  br label %27

27:                                               ; preds = %23, %1
  call void @mutex_unlock(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @max8997_haptic_configure(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.max8997_haptic, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 4
  %4 = shl i32 %3, 7
  %5 = getelementptr inbounds %struct.max8997_haptic, ptr %0, i32 0, i32 6
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = shl nuw nsw i8 %6, 6
  %8 = zext i8 %7 to i32
  %9 = or i32 %4, %8
  %10 = getelementptr inbounds %struct.max8997_haptic, ptr %0, i32 0, i32 12
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, 5
  %13 = or i32 %9, %12
  %14 = getelementptr inbounds %struct.max8997_haptic, ptr %0, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %13, %15
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds %struct.max8997_haptic, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @max8997_write_reg(ptr noundef %19, i8 noundef zeroext 2, i8 noundef zeroext %17) #8
  %21 = load i32, ptr %10, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %72

23:                                               ; preds = %1
  %24 = load i8, ptr %5, align 4, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %72, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.max8997_haptic, ptr %0, i32 0, i32 13
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %28, 6
  %30 = shl i32 %28, 4
  %31 = shl i32 %28, 2
  %32 = or i32 %30, %28
  %33 = or i32 %32, %29
  %34 = or i32 %33, %31
  %35 = trunc i32 %34 to i8
  %36 = load ptr, ptr %18, align 4
  %37 = tail call i32 @max8997_write_reg(ptr noundef %36, i8 noundef zeroext 3, i8 noundef zeroext %35) #8
  %38 = load i32, ptr %27, align 4
  switch i32 %38, label %72 [
    i32 0, label %39
    i32 1, label %46
    i32 2, label %52
    i32 3, label %59
  ]

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.max8997_haptic, ptr %0, i32 0, i32 14
  %41 = load i32, ptr %40, align 4
  %42 = trunc i32 %41 to i8
  %43 = shl i8 %42, 4
  %44 = load ptr, ptr %18, align 4
  %45 = tail call i32 @max8997_write_reg(ptr noundef %44, i8 noundef zeroext 4, i8 noundef zeroext %43) #8
  br label %65

46:                                               ; preds = %26
  %47 = getelementptr inbounds %struct.max8997_haptic, ptr %0, i32 0, i32 14
  %48 = load i32, ptr %47, align 4
  %49 = trunc i32 %48 to i8
  %50 = load ptr, ptr %18, align 4
  %51 = tail call i32 @max8997_write_reg(ptr noundef %50, i8 noundef zeroext 4, i8 noundef zeroext %49) #8
  br label %65

52:                                               ; preds = %26
  %53 = getelementptr inbounds %struct.max8997_haptic, ptr %0, i32 0, i32 14
  %54 = load i32, ptr %53, align 4
  %55 = trunc i32 %54 to i8
  %56 = shl i8 %55, 4
  %57 = load ptr, ptr %18, align 4
  %58 = tail call i32 @max8997_write_reg(ptr noundef %57, i8 noundef zeroext 5, i8 noundef zeroext %56) #8
  br label %65

59:                                               ; preds = %26
  %60 = getelementptr inbounds %struct.max8997_haptic, ptr %0, i32 0, i32 14
  %61 = load i32, ptr %60, align 4
  %62 = trunc i32 %61 to i8
  %63 = load ptr, ptr %18, align 4
  %64 = tail call i32 @max8997_write_reg(ptr noundef %63, i8 noundef zeroext 5, i8 noundef zeroext %62) #8
  br label %65

65:                                               ; preds = %59, %52, %46, %39
  %66 = phi i8 [ 6, %39 ], [ 7, %46 ], [ 8, %52 ], [ 9, %59 ]
  %67 = getelementptr inbounds %struct.max8997_haptic, ptr %0, i32 0, i32 15
  %68 = load i32, ptr %67, align 4
  %69 = trunc i32 %68 to i8
  %70 = load ptr, ptr %18, align 4
  %71 = tail call i32 @max8997_write_reg(ptr noundef %70, i8 noundef zeroext %66, i8 noundef zeroext %69) #8
  br label %72

72:                                               ; preds = %65, %26, %23, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_write_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_haptic_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @max8997_haptic_disable(ptr noundef %3)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!8 = !{i8 0, i8 2}
