; ModuleID = '/llk/IR/drivers/input/misc/max77693-haptic.c_pt.bc'
source_filename = "../drivers/input/misc/max77693-haptic.c"
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
%struct.max77693_dev = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.max77693_haptic = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, i32, %struct.work_struct }
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

@max77693_haptic_id = internal constant [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max77693-haptic\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"max77843-haptic\00\00\00\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [45 x i8] c"author=Jaewon Kim <jaewon02.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [45 x i8] c"author=Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [44 x i8] c"description=MAXIM 77693/77843 Haptic driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@max77693_haptic_driver = internal global %struct.platform_driver { ptr @max77693_haptic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77693_haptic_pm_ops, ptr null, ptr null }, ptr @max77693_haptic_id, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [16 x i8] c"max77693-haptic\00", align 1
@max77693_haptic_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @max77693_haptic_suspend, ptr @max77693_haptic_resume, ptr @max77693_haptic_suspend, ptr @max77693_haptic_resume, ptr @max77693_haptic_suspend, ptr @max77693_haptic_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unsupported device type: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to get pwm device\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"haptic\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to get regulator\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to create force-feedback\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"failed to register input device\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to set duty cycle: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"failed to configure pwm: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"failed to enable haptic pwm device: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"cannot update pmic regmap: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"failed to update haptic config: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"failed to enable regulator: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"failed to %s bias: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"failed to disable regulator: %d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license250], section "llvm.metadata"

@__mod_platform__max77693_haptic_id_device_table = dso_local alias [3 x %struct.platform_device_id], ptr @max77693_haptic_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77693_haptic_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77693_haptic_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_haptic_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.pwm_state, align 8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 64, i32 noundef 3520) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %81, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.max77693_dev, ptr %7, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.max77693_haptic, ptr %8, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.max77693_haptic, ptr %8, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.max77693_haptic, ptr %8, i32 0, i32 11
  store i32 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.max77693_haptic, ptr %8, i32 0, i32 12
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.max77693_haptic, ptr %8, i32 0, i32 8
  store i8 0, ptr %17, align 1
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.platform_device_id, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %8, align 4
  switch i32 %21, label %24 [
    i32 1, label %22
    i32 2, label %25
  ]

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.max77693_dev, ptr %7, i32 0, i32 8
  br label %25

24:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %21) #8
  br label %81

25:                                               ; preds = %22, %10
  %26 = phi ptr [ %23, %22 ], [ %11, %10 ]
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.max77693_haptic, ptr %8, i32 0, i32 2
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.max77693_haptic, ptr %8, i32 0, i32 13
  store i32 -32, ptr %29, align 4
  %30 = getelementptr inbounds %struct.max77693_haptic, ptr %8, i32 0, i32 13, i32 1
  store volatile ptr %30, ptr %30, align 4
  %31 = getelementptr inbounds %struct.max77693_haptic, ptr %8, i32 0, i32 13, i32 1, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.max77693_haptic, ptr %8, i32 0, i32 13, i32 2
  store ptr @max77693_haptic_play_work, ptr %32, align 4
  %33 = tail call ptr @devm_pwm_get(ptr noundef %3, ptr noundef null) #7
  %34 = getelementptr inbounds %struct.max77693_haptic, ptr %8, i32 0, i32 5
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  %37 = load ptr, ptr %34, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %81

39:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  %40 = getelementptr inbounds %struct.pwm_device, ptr %33, i32 0, i32 6
  %41 = getelementptr inbounds %struct.pwm_device, ptr %33, i32 0, i32 6, i32 1
  %42 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false) #7
  %43 = load i32, ptr %41, align 8
  %44 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  store i32 %43, ptr %44, align 8
  %45 = load i64, ptr %40, align 8
  store i64 %45, ptr %2, align 8
  %46 = call i32 @pwm_apply_state(ptr noundef %33, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  %47 = call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.3) #7
  %48 = getelementptr inbounds %struct.max77693_haptic, ptr %8, i32 0, i32 6
  store ptr %47, ptr %48, align 4
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #8
  %51 = load ptr, ptr %48, align 4
  %52 = ptrtoint ptr %51 to i32
  br label %81

53:                                               ; preds = %39
  %54 = call ptr @devm_input_allocate_device(ptr noundef %3) #7
  %55 = getelementptr inbounds %struct.max77693_haptic, ptr %8, i32 0, i32 4
  store ptr %54, ptr %55, align 4
  %56 = icmp eq ptr %54, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #8
  br label %81

58:                                               ; preds = %53
  store ptr @.str, ptr %54, align 8
  %59 = load ptr, ptr %55, align 4
  %60 = getelementptr inbounds %struct.input_dev, ptr %59, i32 0, i32 3, i32 3
  store i16 1, ptr %60, align 2
  %61 = load ptr, ptr %55, align 4
  %62 = getelementptr inbounds %struct.input_dev, ptr %61, i32 0, i32 40, i32 1
  store ptr %3, ptr %62, align 4
  %63 = load ptr, ptr %55, align 4
  %64 = getelementptr inbounds %struct.input_dev, ptr %63, i32 0, i32 31
  store ptr @max77693_haptic_open, ptr %64, align 4
  %65 = load ptr, ptr %55, align 4
  %66 = getelementptr inbounds %struct.input_dev, ptr %65, i32 0, i32 32
  store ptr @max77693_haptic_close, ptr %66, align 8
  %67 = load ptr, ptr %55, align 4
  %68 = getelementptr inbounds %struct.input_dev, ptr %67, i32 0, i32 40, i32 8
  store ptr %8, ptr %68, align 8
  %69 = load ptr, ptr %55, align 4
  call void @input_set_capability(ptr noundef %69, i32 noundef 21, i32 noundef 80) #7
  %70 = load ptr, ptr %55, align 4
  %71 = call i32 @input_ff_create_memless(ptr noundef %70, ptr noundef null, ptr noundef nonnull @max77693_haptic_play_effect) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %58
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #8
  br label %81

74:                                               ; preds = %58
  %75 = load ptr, ptr %55, align 4
  %76 = call i32 @input_register_device(ptr noundef %75) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #8
  br label %81

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %80, align 8
  br label %81

81:                                               ; preds = %79, %78, %73, %57, %50, %36, %24, %1
  %82 = phi i32 [ -22, %24 ], [ %38, %36 ], [ %52, %50 ], [ %71, %73 ], [ %76, %78 ], [ 0, %79 ], [ -12, %57 ], [ -12, %1 ]
  ret i32 %82
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max77693_haptic_play_work(ptr nocapture noundef %0) #2 {
  %2 = alloca %struct.pwm_state, align 8
  %3 = getelementptr i8, ptr %0, i32 -48
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pwm_device, ptr %5, i32 0, i32 6
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr i8, ptr %0, i32 -12
  %9 = load i32, ptr %8, align 4
  %10 = zext i32 %9 to i64
  %11 = add i64 %7, %10
  %12 = lshr i64 %11, 1
  %13 = trunc i64 %7 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  %14 = icmp ne ptr %5, null
  %15 = or i64 %12, %7
  %16 = and i64 %15, 2147483648
  %17 = icmp eq i64 %16, 0
  %18 = and i1 %14, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  br label %38

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.pwm_device, ptr %5, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef align 8 dereferenceable(24) %21, i32 24, i1 false) #7
  %22 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  %23 = load i64, ptr %22, align 8
  %24 = shl i64 %12, 32
  %25 = ashr exact i64 %24, 32
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = sext i32 %13 to i64
  br label %34

29:                                               ; preds = %20
  %30 = load i64, ptr %2, align 8
  %31 = sext i32 %13 to i64
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  br label %43

34:                                               ; preds = %29, %27
  %35 = phi i64 [ %28, %27 ], [ %31, %29 ]
  store i64 %25, ptr %22, align 8
  store i64 %35, ptr %2, align 8
  %36 = call i32 @pwm_apply_state(ptr noundef nonnull %5, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34, %19
  %39 = phi i32 [ -22, %19 ], [ %36, %34 ]
  %40 = getelementptr i8, ptr %0, i32 -36
  %41 = load ptr, ptr %40, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.9, i32 noundef %39) #8
  %42 = load ptr, ptr %40, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.8, i32 noundef %39) #8
  br label %49

43:                                               ; preds = %34, %33
  %44 = getelementptr i8, ptr %0, i32 -16
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  call fastcc void @max77693_haptic_enable(ptr noundef %3)
  br label %49

48:                                               ; preds = %43
  call fastcc void @max77693_haptic_disable(ptr noundef %3)
  br label %49

49:                                               ; preds = %48, %47, %38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pwm_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_haptic_open(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.max77693_haptic, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 2, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.max77693_haptic, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %9) #8
  br label %22

14:                                               ; preds = %6, %1
  %15 = getelementptr inbounds %struct.max77693_haptic, ptr %3, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @regulator_enable(ptr noundef %16) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.max77693_haptic, ptr %3, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.13, i32 noundef %17) #8
  br label %22

22:                                               ; preds = %19, %14, %11
  %23 = phi i32 [ %17, %19 ], [ %9, %11 ], [ 0, %14 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max77693_haptic_close(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.max77693_haptic, ptr %3, i32 0, i32 13
  %5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %4) #7
  tail call fastcc void @max77693_haptic_disable(ptr noundef %3)
  %6 = getelementptr inbounds %struct.max77693_haptic, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regulator_disable(ptr noundef %7) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.max77693_haptic, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.17, i32 noundef %8) #8
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32, ptr %3, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.max77693_haptic, ptr %3, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 2, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.max77693_haptic, ptr %3, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef %19) #8
  br label %24

24:                                               ; preds = %21, %16, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_haptic_play_effect(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ff_effect, ptr %2, i32 0, i32 5
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.max77693_haptic, ptr %5, i32 0, i32 9
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
  %16 = phi i32 [ %14, %11 ], [ %8, %3 ]
  %17 = getelementptr inbounds %struct.max77693_haptic, ptr %5, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.pwm_device, ptr %18, i32 0, i32 6
  %20 = load i64, ptr %19, align 8
  %21 = zext i32 %16 to i64
  %22 = mul i64 %20, %21
  %23 = lshr i64 %22, 16
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.max77693_haptic, ptr %5, i32 0, i32 10
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.max77693_haptic, ptr %5, i32 0, i32 13
  %27 = load ptr, ptr @system_wq, align 4
  %28 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %27, ptr noundef %26) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @max77693_haptic_enable(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.pwm_state, align 8
  %3 = alloca %struct.pwm_state, align 8
  %4 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 7
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %83

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  br label %21

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.pwm_device, ptr %9, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef align 8 dereferenceable(24) %13, i32 24, i1 false) #7
  %14 = getelementptr inbounds %struct.pwm_state, ptr %3, i32 0, i32 3
  %15 = load i8, ptr %14, align 4, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  br label %25

18:                                               ; preds = %12
  store i8 1, ptr %14, align 4
  %19 = call i32 @pwm_apply_state(ptr noundef nonnull %9, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18, %11
  %22 = phi i32 [ -22, %11 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.10, i32 noundef %22) #8
  br label %83

25:                                               ; preds = %18, %17
  %26 = load i32, ptr %0, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 43, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %28
  %34 = load i32, ptr %0, align 4
  br label %35

35:                                               ; preds = %33, %25
  %36 = phi i32 [ %34, %33 ], [ %26, %25 ]
  switch i32 %36, label %72 [
    i32 1, label %37
    i32 2, label %45
  ]

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 11
  %39 = load i32, ptr %38, align 4
  %40 = shl i32 %39, 7
  %41 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 12
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 5
  %44 = or i32 %43, %40
  br label %49

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 11
  %47 = load i32, ptr %46, align 4
  %48 = shl i32 %47, 7
  br label %49

49:                                               ; preds = %45, %37
  %50 = phi i32 [ %48, %45 ], [ %44, %37 ]
  %51 = phi i32 [ 16, %45 ], [ 2, %37 ]
  %52 = or i32 %50, 66
  %53 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = call i32 @regmap_write(ptr noundef %54, i32 noundef %51, i32 noundef %52) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i8 1, ptr %4, align 4
  br label %83

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.12, i32 noundef %55) #8
  %61 = load i32, ptr %0, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 43, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63, %28
  %69 = phi i32 [ %31, %28 ], [ %66, %63 ]
  %70 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.11, i32 noundef %69) #8
  br label %72

72:                                               ; preds = %68, %63, %58, %35
  %73 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  %74 = icmp eq ptr %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.pwm_device, ptr %73, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef align 8 dereferenceable(24) %76, i32 24, i1 false) #7
  %77 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %78 = load i8, ptr %77, align 4, !range !8
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  store i8 0, ptr %77, align 4
  %81 = call i32 @pwm_apply_state(ptr noundef nonnull %73, ptr noundef nonnull %2) #7
  br label %82

82:                                               ; preds = %80, %75, %72
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  br label %83

83:                                               ; preds = %82, %57, %21, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @max77693_haptic_disable(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.pwm_state, align 8
  %3 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 7
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %76, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %0, align 4
  switch i32 %7, label %76 [
    i32 1, label %8
    i32 2, label %16
  ]

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 7
  %12 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 5
  %15 = or i32 %14, %11
  br label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 7
  br label %20

20:                                               ; preds = %16, %8
  %21 = phi i32 [ %19, %16 ], [ %15, %8 ]
  %22 = phi i32 [ 16, %16 ], [ 2, %8 ]
  %23 = or i32 %21, 2
  %24 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef %22, i32 noundef %23) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.12, i32 noundef %26) #8
  br label %76

31:                                               ; preds = %20
  %32 = load i32, ptr %0, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 43, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34, %31
  %40 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.pwm_device, ptr %41, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef align 8 dereferenceable(24) %44, i32 24, i1 false) #7
  %45 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %46 = load i8, ptr %45, align 4, !range !8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  store i8 0, ptr %45, align 4
  %49 = call i32 @pwm_apply_state(ptr noundef nonnull %41, ptr noundef nonnull %2) #7
  br label %50

50:                                               ; preds = %48, %43, %39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  store i8 0, ptr %3, align 4
  br label %76

51:                                               ; preds = %34
  %52 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.11, i32 noundef %37) #8
  %54 = load i32, ptr %0, align 4
  switch i32 %54, label %76 [
    i32 1, label %55
    i32 2, label %63
  ]

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 11
  %57 = load i32, ptr %56, align 4
  %58 = shl i32 %57, 7
  %59 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 12
  %60 = load i32, ptr %59, align 4
  %61 = shl i32 %60, 5
  %62 = or i32 %61, %58
  br label %67

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.max77693_haptic, ptr %0, i32 0, i32 11
  %65 = load i32, ptr %64, align 4
  %66 = shl i32 %65, 7
  br label %67

67:                                               ; preds = %63, %55
  %68 = phi i32 [ %66, %63 ], [ %62, %55 ]
  %69 = phi i32 [ 16, %63 ], [ 2, %55 ]
  %70 = or i32 %68, 66
  %71 = load ptr, ptr %24, align 4
  %72 = tail call i32 @regmap_write(ptr noundef %71, i32 noundef %69, i32 noundef %70) #7
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %67
  %75 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.12, i32 noundef %72) #8
  br label %76

76:                                               ; preds = %74, %67, %51, %50, %28, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_haptic_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.max77693_haptic, ptr %3, i32 0, i32 7
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  tail call fastcc void @max77693_haptic_disable(ptr noundef %3)
  %8 = getelementptr inbounds %struct.max77693_haptic, ptr %3, i32 0, i32 8
  store i8 1, ptr %8, align 1
  br label %9

9:                                                ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_haptic_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.max77693_haptic, ptr %3, i32 0, i32 8
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call fastcc void @max77693_haptic_enable(ptr noundef %3)
  store i8 0, ptr %4, align 1
  br label %8

8:                                                ; preds = %7, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
