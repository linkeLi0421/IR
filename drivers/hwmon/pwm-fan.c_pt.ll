; ModuleID = '/llk/IR/drivers/hwmon/pwm-fan.c_pt.bc'
source_filename = "../drivers/hwmon/pwm-fan.c"
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.hwmon_channel_info = type { i32, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pwm_fan_ctx = type { %struct.mutex, ptr, %struct.pwm_state, ptr, i32, ptr, i64, %struct.timer_list, i32, i32, i32, ptr, ptr, %struct.hwmon_chip_info, %struct.hwmon_channel_info }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_fan_tach = type { i32, %struct.atomic_t, i32, i8 }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }

@of_pwm_fan_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pwm-fan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [43 x i8] c"author=Kamil Debski <k.debski@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias248 = internal constant [23 x i8] c"alias=platform:pwm-fan\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [27 x i8] c"description=PWM FAN driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@pwm_fan_driver = internal global %struct.platform_driver { ptr @pwm_fan_probe, ptr null, ptr @pwm_fan_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_pwm_fan_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwm_fan_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [8 x i8] c"pwm-fan\00", align 1
@pwm_fan_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pwm_fan_suspend, ptr @pwm_fan_resume, ptr @pwm_fan_suspend, ptr @pwm_fan_resume, ptr @pwm_fan_suspend, ptr @pwm_fan_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pwm_fan_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"&ctx->lock\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Could not get PWM\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"fan\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to enable fan supply: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Configured period too big\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to configure PWM: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Could not get number of fan tachometer inputs\0A\00", align 1
@pwm_fan_channel_pwm = internal constant %struct.hwmon_channel_info { i32 8, ptr @pwm_fan_channel_config_pwm }, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"Failed to request interrupt: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"pulses-per-revolution\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"pulses-per-revolution can't be zero.\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@pwm_fan_hwmon_ops = internal constant %struct.hwmon_ops { ptr @pwm_fan_is_visible, ptr @pwm_fan_read, ptr null, ptr @pwm_fan_write }, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"pwmfan\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Failed to register hwmon device\0A\00", align 1
@pwm_fan_cooling_ops = internal constant %struct.thermal_cooling_device_ops { ptr @pwm_fan_get_max_state, ptr @pwm_fan_get_cur_state, ptr @pwm_fan_set_cur_state, ptr null, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [50 x i8] c"Failed to register pwm-fan as cooling device: %d\0A\00", align 1
@pwm_fan_channel_config_pwm = internal constant [2 x i32] [i32 1, i32 0], align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"cooling-levels\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Wrong data!\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"Property 'cooling-levels' cannot be read!\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"PWM fan state[%d]:%d > %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Cannot set pwm!\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Failed to disable fan supply: %d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias248, ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license250], section "llvm.metadata"

@__mod_of__of_pwm_fan_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @of_pwm_fan_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pwm_fan_driver, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @pwm_fan_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_fan_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 128, i32 noundef 3520) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %172, label %6

6:                                                ; preds = %1
  tail call void @__mutex_init(ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @pwm_fan_probe.__key) #9
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @devm_of_pwm_get(ptr noundef %3, ptr noundef %8, ptr noundef null) #9
  %10 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = ptrtoint ptr %9 to i32
  %14 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %13, ptr noundef nonnull @.str.2) #9
  br label %172

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %16, align 8
  %17 = tail call ptr @devm_regulator_get_optional(ptr noundef %3, ptr noundef nonnull @.str.3) #9
  %18 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 3
  store ptr %17, ptr %18, align 8
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = ptrtoint ptr %17 to i32
  %22 = icmp eq ptr %17, inttoptr (i32 -19 to ptr)
  br i1 %22, label %23, label %172

23:                                               ; preds = %20
  store ptr null, ptr %18, align 8
  br label %34

24:                                               ; preds = %15
  %25 = tail call i32 @regulator_enable(ptr noundef %17) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %25) #10
  br label %172

28:                                               ; preds = %24
  %29 = load ptr, ptr %18, align 8
  %30 = tail call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @pwm_fan_regulator_disable, ptr noundef %29) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @regulator_disable(ptr noundef %29) #9
  br label %172

34:                                               ; preds = %28, %23
  %35 = load ptr, ptr %10, align 4
  %36 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 2
  %37 = getelementptr inbounds %struct.pwm_device, ptr %35, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %36, ptr noundef align 8 dereferenceable(24) %37, i32 24, i1 false) #9
  %38 = getelementptr inbounds %struct.pwm_device, ptr %35, i32 0, i32 6
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds %struct.pwm_device, ptr %35, i32 0, i32 6, i32 1
  %41 = load i32, ptr %40, align 8
  store i64 %39, ptr %36, align 8
  %42 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 2, i32 2
  store i32 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 2, i32 1
  store i64 0, ptr %43, align 8
  %44 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 2, i32 4
  store i8 0, ptr %44, align 1
  %45 = icmp ugt i64 %39, 16843010
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #10
  br label %172

47:                                               ; preds = %34
  tail call void @mutex_lock(ptr noundef nonnull %4) #9
  %48 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 8
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 255
  br i1 %50, label %64, label %51

51:                                               ; preds = %47
  %52 = load i64, ptr %36, align 8
  %53 = trunc i64 %52 to i32
  %54 = mul i32 %53, 255
  %55 = add i32 %54, -1
  %56 = udiv i32 %55, 255
  %57 = zext i32 %56 to i64
  store i64 %57, ptr %43, align 8
  %58 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 2, i32 3
  store i8 1, ptr %58, align 4
  %59 = load ptr, ptr %10, align 4
  %60 = tail call i32 @pwm_apply_state(ptr noundef %59, ptr noundef %36) #9
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  store i32 255, ptr %48, align 4
  br label %64

63:                                               ; preds = %51
  tail call void @mutex_unlock(ptr noundef nonnull %4) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %60) #10
  br label %172

64:                                               ; preds = %62, %47
  tail call void @mutex_unlock(ptr noundef nonnull %4) #9
  %65 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 7
  tail call void @init_timer_key(ptr noundef %65, ptr noundef nonnull @sample_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  %66 = tail call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @pwm_fan_pwm_disable, ptr noundef nonnull %4) #9
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 2, i32 3
  store i8 0, ptr %69, align 4
  %70 = load ptr, ptr %10, align 4
  %71 = tail call i32 @pwm_apply_state(ptr noundef %70, ptr noundef %36) #9
  %72 = tail call i32 @del_timer_sync(ptr noundef %65) #9
  br label %172

73:                                               ; preds = %64
  %74 = tail call i32 @platform_irq_count(ptr noundef %0) #9
  %75 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 4
  store i32 %74, ptr %75, align 4
  %76 = icmp slt i32 %74, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %74, ptr noundef nonnull @.str.7) #9
  br label %172

79:                                               ; preds = %73
  %80 = icmp eq i32 %74, 0
  br i1 %80, label %103, label %81

81:                                               ; preds = %79
  %82 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %74, i32 16) #9
  %83 = extractvalue { i32, i1 } %82, 1
  br i1 %83, label %84, label %86, !prof !8

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 5
  store ptr null, ptr %85, align 8
  br label %172

86:                                               ; preds = %81
  %87 = extractvalue { i32, i1 } %82, 0
  %88 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %87, i32 noundef 3520) #9
  %89 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 5
  store ptr %88, ptr %89, align 8
  %90 = icmp eq ptr %88, null
  br i1 %90, label %172, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 14
  store i32 7, ptr %92, align 8
  %93 = load i32, ptr %75, align 4
  %94 = add i32 %93, 1
  %95 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %94, i32 4) #9
  %96 = extractvalue { i32, i1 } %95, 1
  br i1 %96, label %172, label %97, !prof !8

97:                                               ; preds = %91
  %98 = extractvalue { i32, i1 } %95, 0
  %99 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %98, i32 noundef 3520) #9
  %100 = icmp eq ptr %99, null
  br i1 %100, label %172, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 14, i32 1
  store ptr %99, ptr %102, align 4
  br label %103

103:                                              ; preds = %101, %79
  %104 = phi ptr [ %99, %101 ], [ null, %79 ]
  %105 = phi i32 [ 12, %101 ], [ 8, %79 ]
  %106 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %105, i32 noundef 3520) #9
  %107 = icmp eq ptr %106, null
  br i1 %107, label %172, label %108

108:                                              ; preds = %103
  store ptr @pwm_fan_channel_pwm, ptr %106, align 4
  %109 = load i32, ptr %75, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %151

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 5
  br label %113

113:                                              ; preds = %136, %111
  %114 = phi i32 [ 0, %111 ], [ %138, %136 ]
  %115 = load ptr, ptr %112, align 8
  %116 = getelementptr %struct.pwm_fan_tach, ptr %115, i32 %114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 2, ptr %2, align 4
  %117 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef %114) #9
  store i32 %117, ptr %116, align 4
  %118 = icmp eq i32 %117, -517
  br i1 %118, label %134, label %119

119:                                              ; preds = %113
  %120 = icmp sgt i32 %117, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %119
  %122 = load ptr, ptr %0, align 8
  %123 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %117, ptr noundef nonnull @pulse_handler, ptr noundef null, i32 noundef 0, ptr noundef %122, ptr noundef %116) #9
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %121
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %123) #10
  br label %134

126:                                              ; preds = %121, %119
  %127 = load ptr, ptr %7, align 8
  %128 = call i32 @of_property_read_u32_index(ptr noundef %127, ptr noundef nonnull @.str.9, i32 noundef %114, ptr noundef nonnull %2) #9
  %129 = load i32, ptr %2, align 4
  %130 = trunc i32 %129 to i8
  %131 = getelementptr %struct.pwm_fan_tach, ptr %115, i32 %114, i32 3
  store i8 %130, ptr %131, align 4
  %132 = icmp eq i8 %130, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #10
  br label %134

134:                                              ; preds = %133, %125, %113
  %135 = phi i32 [ -22, %133 ], [ %123, %125 ], [ -517, %113 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %172

136:                                              ; preds = %126
  %137 = getelementptr i32, ptr %104, i32 %114
  store i32 2, ptr %137, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %138 = add nuw nsw i32 %114, 1
  %139 = load i32, ptr %75, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %113, label %141

141:                                              ; preds = %136
  %142 = icmp sgt i32 %139, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %141
  %144 = call i64 @ktime_get() #9
  %145 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 6
  store i64 %144, ptr %145, align 8
  %146 = load volatile i32, ptr @jiffies, align 64
  %147 = add i32 %146, 100
  %148 = call i32 @mod_timer(ptr noundef %65, i32 noundef %147) #9
  %149 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 14
  %150 = getelementptr ptr, ptr %106, i32 1
  store ptr %149, ptr %150, align 4
  br label %151

151:                                              ; preds = %143, %141, %108
  %152 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 13
  store ptr @pwm_fan_hwmon_ops, ptr %152, align 8
  %153 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 13, i32 1
  store ptr %106, ptr %153, align 4
  %154 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef nonnull %4, ptr noundef %152, ptr noundef null) #9
  %155 = icmp ugt ptr %154, inttoptr (i32 -4096 to ptr)
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12) #10
  %157 = ptrtoint ptr %154 to i32
  br label %172

158:                                              ; preds = %151
  %159 = call fastcc i32 @pwm_fan_of_get_cooling_data(ptr noundef %3, ptr noundef nonnull %4)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 10
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 9
  store i32 %163, ptr %164, align 8
  %165 = load ptr, ptr %7, align 8
  %166 = call ptr @devm_thermal_of_cooling_device_register(ptr noundef %3, ptr noundef %165, ptr noundef nonnull @.str, ptr noundef nonnull %4, ptr noundef nonnull @pwm_fan_cooling_ops) #9
  %167 = icmp ugt ptr %166, inttoptr (i32 -4096 to ptr)
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = ptrtoint ptr %166 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %169) #10
  br label %172

170:                                              ; preds = %161
  %171 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 12
  store ptr %166, ptr %171, align 4
  br label %172

172:                                              ; preds = %170, %168, %158, %156, %134, %103, %97, %91, %86, %84, %77, %68, %63, %46, %32, %27, %20, %12, %1
  %173 = phi i32 [ %14, %12 ], [ -22, %46 ], [ %60, %63 ], [ %78, %77 ], [ %157, %156 ], [ %169, %168 ], [ 0, %170 ], [ %25, %27 ], [ -12, %1 ], [ %30, %32 ], [ %66, %68 ], [ -12, %86 ], [ -12, %97 ], [ -12, %103 ], [ %159, %158 ], [ %21, %20 ], [ -12, %84 ], [ %135, %134 ], [ -12, %91 ]
  ret i32 %173
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pwm_fan_shutdown(ptr noundef %0) #2 {
  %2 = alloca %struct.pwm_state, align 8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #9
  %10 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %5, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef align 8 dereferenceable(24) %10, i32 24, i1 false) #9
  %11 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  store i64 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  store i8 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @pwm_apply_state(ptr noundef %14, ptr noundef nonnull %2) #9
  %16 = icmp slt i32 %15, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  br i1 %16, label %25, label %17

17:                                               ; preds = %9, %1
  %18 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %5, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = call i32 @regulator_disable(ptr noundef nonnull %19) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef %22) #10
  br label %25

25:                                               ; preds = %24, %21, %17, %9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_pwm_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pwm_fan_regulator_disable(ptr noundef %0) #2 {
  %2 = tail call i32 @regulator_disable(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sample_timer(ptr noundef %0) #2 {
  %2 = tail call i64 @ktime_get() #9
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load i64, ptr %3, align 8
  %5 = sub i64 %2, %4
  %6 = tail call i64 @llvm.abs.i64(i64 %5, i1 false) #9
  %7 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %6) #11, !srcloc !9
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %6, i64 %7, i32 0) #11, !srcloc !10
  %9 = extractvalue { i64, i32 } %8, 0
  %10 = icmp slt i64 %5, 0
  %11 = lshr i64 %9, 18
  %12 = sub nsw i64 0, %11
  %13 = select i1 %10, i64 %12, i64 %11
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %1
  %17 = getelementptr i8, ptr %0, i32 -20
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %0, i32 -16
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ 0, %20 ], [ %35, %22 ]
  %24 = load ptr, ptr %21, align 8
  %25 = getelementptr %struct.pwm_fan_tach, ptr %24, i32 %23, i32 1
  %26 = load volatile i32, ptr %25, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #9, !srcloc !11
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 %26, ptr elementtype(i32) %25) #9, !srcloc !12
  %28 = mul i32 %26, 60000
  %29 = getelementptr %struct.pwm_fan_tach, ptr %24, i32 %23, i32 3
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i32
  %32 = mul i32 %31, %14
  %33 = udiv i32 %28, %32
  %34 = getelementptr %struct.pwm_fan_tach, ptr %24, i32 %23, i32 2
  store i32 %33, ptr %34, align 4
  %35 = add nuw nsw i32 %23, 1
  %36 = load i32, ptr %17, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %22, label %38

38:                                               ; preds = %22, %16
  %39 = tail call i64 @ktime_get() #9
  store i64 %39, ptr %3, align 8
  br label %40

40:                                               ; preds = %38, %1
  %41 = load volatile i32, ptr @jiffies, align 64
  %42 = add i32 %41, 100
  %43 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %42) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pwm_fan_pwm_disable(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %0, i32 0, i32 2, i32 3
  store i8 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @pwm_apply_state(ptr noundef %5, ptr noundef %2) #9
  %7 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %0, i32 0, i32 7
  %8 = tail call i32 @del_timer_sync(ptr noundef %7) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pulse_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.pwm_fan_tach, ptr %1, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #9, !srcloc !11
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #9, !srcloc !13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pwm_fan_of_get_cooling_data(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef null) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @of_property_count_elems_of_size(ptr noundef %4, ptr noundef nonnull @.str.14, i32 noundef 4) #9
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.15) #10
  %11 = icmp eq i32 %8, 0
  %12 = select i1 %11, i32 -22, i32 %8
  br label %41

13:                                               ; preds = %7
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4) #9
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %16, label %18, !prof !8

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 11
  store ptr null, ptr %17, align 8
  br label %41

18:                                               ; preds = %13
  %19 = extractvalue { i32, i1 } %14, 0
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %19, i32 noundef 3520) #9
  %21 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 11
  store ptr %20, ptr %21, align 8
  %22 = icmp eq ptr %20, null
  br i1 %22, label %41, label %23

23:                                               ; preds = %18
  %24 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull %20, i32 noundef %8, i32 noundef 0) #9
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load ptr, ptr %21, align 8
  br label %29

28:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.16) #10
  br label %41

29:                                               ; preds = %35, %26
  %30 = phi i32 [ 0, %26 ], [ %36, %35 ]
  %31 = getelementptr i32, ptr %27, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp ugt i32 %32, 255
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %30, i32 noundef %32, i32 noundef 255) #10
  br label %41

35:                                               ; preds = %29
  %36 = add nuw nsw i32 %30, 1
  %37 = icmp eq i32 %36, %8
  br i1 %37, label %38, label %29

38:                                               ; preds = %35
  %39 = add nsw i32 %8, -1
  %40 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %1, i32 0, i32 10
  store i32 %39, ptr %40, align 4
  br label %41

41:                                               ; preds = %38, %34, %28, %18, %16, %10, %2
  %42 = phi i32 [ %12, %10 ], [ %24, %28 ], [ -22, %34 ], [ 0, %38 ], [ 0, %2 ], [ -12, %18 ], [ -12, %16 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_of_cooling_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i16 @pwm_fan_is_visible(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7 {
  %5 = icmp eq i32 %1, 7
  %6 = select i1 %5, i16 292, i16 0
  %7 = icmp eq i32 %1, 8
  %8 = select i1 %7, i16 420, i16 %6
  ret i16 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pwm_fan_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #8 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  switch i32 %1, label %17 [
    i32 8, label %8
    i32 7, label %10
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %7, i32 0, i32 8
  br label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %7, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr %struct.pwm_fan_tach, ptr %12, i32 %3, i32 2
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi ptr [ %13, %10 ], [ %9, %8 ]
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %4, align 4
  br label %17

17:                                               ; preds = %14, %5
  %18 = phi i32 [ -524, %5 ], [ 0, %14 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_fan_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ugt i32 %4, 255
  br i1 %8, label %48, label %9

9:                                                ; preds = %5
  tail call void @mutex_lock(ptr noundef %7) #9
  %10 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %7, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %4
  br i1 %12, label %32, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %7, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = add i32 %16, -1
  %18 = mul i32 %17, %4
  %19 = add i32 %18, 254
  %20 = udiv i32 %19, 255
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %7, i32 0, i32 2, i32 1
  store i64 %21, ptr %22, align 8
  %23 = icmp ne i32 %4, 0
  %24 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %7, i32 0, i32 2, i32 3
  %25 = zext i1 %23 to i8
  store i8 %25, ptr %24, align 4
  %26 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %7, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @pwm_apply_state(ptr noundef %27, ptr noundef %14) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %13
  store i32 %4, ptr %10, align 4
  br label %32

31:                                               ; preds = %13
  tail call void @mutex_unlock(ptr noundef %7) #9
  br label %48

32:                                               ; preds = %30, %9
  tail call void @mutex_unlock(ptr noundef %7) #9
  %33 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %7, i32 0, i32 11
  %34 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %7, i32 0, i32 10
  %35 = load i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %39, %32
  %37 = phi i32 [ 0, %32 ], [ %41, %39 ]
  %38 = icmp eq i32 %37, %35
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %33, align 8
  %41 = add i32 %37, 1
  %42 = getelementptr i32, ptr %40, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = icmp ugt i32 %43, %4
  br i1 %44, label %45, label %36

45:                                               ; preds = %39, %36
  %46 = phi i32 [ %37, %39 ], [ %35, %36 ]
  %47 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %7, i32 0, i32 9
  store i32 %46, ptr %47, align 8
  br label %48

48:                                               ; preds = %45, %31, %5
  %49 = phi i32 [ 0, %45 ], [ -22, %5 ], [ %28, %31 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pwm_fan_get_max_state(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %1, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ 0, %6 ], [ -22, %2 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pwm_fan_get_cur_state(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 9
  %8 = load i32, ptr %7, align 8
  store i32 %8, ptr %1, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ 0, %6 ], [ -22, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_fan_set_cur_state(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %43, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, %1
  br i1 %9, label %43, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 9
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %43, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 11
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i32, ptr %16, i32 %1
  %18 = load i32, ptr %17, align 4
  tail call void @mutex_lock(ptr noundef nonnull %4) #9
  %19 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %18
  br i1 %21, label %42, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = add i32 %25, -1
  %27 = mul i32 %26, %18
  %28 = add i32 %27, 254
  %29 = udiv i32 %28, 255
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 2, i32 1
  store i64 %30, ptr %31, align 8
  %32 = icmp ne i32 %18, 0
  %33 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 2, i32 3
  %34 = zext i1 %32 to i8
  store i8 %34, ptr %33, align 4
  %35 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @pwm_apply_state(ptr noundef %36, ptr noundef %23) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %22
  store i32 %18, ptr %19, align 4
  br label %42

40:                                               ; preds = %22
  tail call void @mutex_unlock(ptr noundef nonnull %4) #9
  %41 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.18) #10
  br label %43

42:                                               ; preds = %39, %14
  tail call void @mutex_unlock(ptr noundef nonnull %4) #9
  store i32 %1, ptr %11, align 8
  br label %43

43:                                               ; preds = %42, %40, %10, %6, %2
  %44 = phi i32 [ %37, %40 ], [ 0, %42 ], [ -22, %6 ], [ -22, %2 ], [ 0, %10 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_fan_suspend(ptr noundef %0) #2 {
  %2 = alloca %struct.pwm_state, align 8
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #9
  %9 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef align 8 dereferenceable(24) %9, i32 24, i1 false) #9
  %10 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  store i64 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  store i8 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @pwm_apply_state(ptr noundef %13, ptr noundef nonnull %2) #9
  %15 = icmp slt i32 %14, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  br i1 %15, label %24, label %16

16:                                               ; preds = %8, %1
  %17 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %4, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = call i32 @regulator_disable(ptr noundef nonnull %18) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %21) #10
  br label %24

24:                                               ; preds = %23, %20, %16, %8
  %25 = phi i32 [ %21, %23 ], [ %14, %8 ], [ 0, %20 ], [ 0, %16 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_fan_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @regulator_enable(ptr noundef nonnull %5) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %8) #10
  br label %20

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %3, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.pwm_fan_ctx, ptr %3, i32 0, i32 2
  %19 = tail call i32 @pwm_apply_state(ptr noundef %17, ptr noundef %18) #9
  br label %20

20:                                               ; preds = %15, %11, %10
  %21 = phi i32 [ %8, %10 ], [ %19, %15 ], [ 0, %11 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

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
!9 = !{i64 891086, i64 891113}
!10 = !{i64 891781, i64 891808, i64 891841, i64 891862, i64 891889, i64 891915}
!11 = !{i64 388536, i64 2147878507, i64 2147878533, i64 2147878580, i64 2147878602, i64 2147878630, i64 2147878650}
!12 = !{i64 2147893076, i64 2147893102, i64 2147893131, i64 2147893165, i64 2147893196, i64 2147893219}
!13 = !{i64 2147890719, i64 2147890745, i64 2147890774, i64 2147890808, i64 2147890839, i64 2147890862}
