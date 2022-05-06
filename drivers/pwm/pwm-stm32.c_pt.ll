; ModuleID = '/llk/IR/drivers/pwm/pwm-stm32.c_pt.bc'
source_filename = "../drivers/pwm/pwm-stm32.c"
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
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.stm32_pwm = type { %struct.pwm_chip, %struct.mutex, ptr, ptr, i32, i8, [2 x %struct.stm32_breakinput], i32, [28 x i8], [4 x i32], [48 x i8] }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.stm32_breakinput = type { i32, i32, i32 }
%struct.stm32_timers = type { ptr, ptr, i32, %struct.stm32_timers_dma }
%struct.stm32_timers_dma = type { %struct.completion, i32, %struct.mutex, ptr, [7 x ptr] }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_capture = type { i32, i32 }

@stm32_pwm_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias235 = internal constant [25 x i8] c"alias=platform:stm32-pwm\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [48 x i8] c"description=STMicroelectronics STM32 PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@stm32_pwm_driver = internal global %struct.platform_driver { ptr @stm32_pwm_probe, ptr @stm32_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_pwm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_pwm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [10 x i8] c"stm32-pwm\00", align 1
@stm32_pwm_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_pwm_suspend, ptr @stm32_pwm_resume, ptr @stm32_pwm_suspend, ptr @stm32_pwm_resume, ptr @stm32_pwm_suspend, ptr @stm32_pwm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@stm32_pwm_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&priv->lock\00", align 1
@stm32pwm_ops = internal constant %struct.pwm_ops { ptr null, ptr null, ptr @stm32_pwm_capture, ptr @stm32_pwm_apply_locked, ptr null, ptr @__this_module, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"st,breakinput\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to enable counter clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"PWM %u still in use by consumer %s\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_license237], section "llvm.metadata"

@__mod_of__stm32_pwm_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @stm32_pwm_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_pwm_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_pwm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pwm_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 192, i32 noundef 3520) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %96, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.stm32_pwm, ptr %11, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef nonnull @stm32_pwm_probe.__key) #7
  %15 = getelementptr inbounds %struct.stm32_timers, ptr %10, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.stm32_pwm, ptr %11, i32 0, i32 3
  store ptr %16, ptr %17, align 4
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr inbounds %struct.stm32_pwm, ptr %11, i32 0, i32 2
  store ptr %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.stm32_timers, ptr %10, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.stm32_pwm, ptr %11, i32 0, i32 4
  store i32 %21, ptr %22, align 64
  %23 = icmp eq ptr %16, null
  %24 = icmp eq ptr %18, null
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %96, label %26

26:                                               ; preds = %13
  %27 = tail call i32 @of_property_count_elems_of_size(ptr noundef %6, ptr noundef nonnull @.str.2, i32 noundef 12) #7
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %62, label %29

29:                                               ; preds = %26
  %30 = icmp ugt i32 %27, 2
  br i1 %30, label %96, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.stm32_pwm, ptr %11, i32 0, i32 7
  store i32 %27, ptr %32, align 32
  %33 = mul nuw nsw i32 %27, 3
  %34 = getelementptr inbounds %struct.stm32_pwm, ptr %11, i32 0, i32 6
  %35 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef %34, i32 noundef %33, i32 noundef 0) #7
  %36 = tail call i32 @llvm.smin.i32(i32 %35, i32 0) #7
  %37 = icmp sgt i32 %35, -1
  br i1 %37, label %38, label %59

38:                                               ; preds = %31
  %39 = load i32, ptr %32, align 32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %57, label %44

41:                                               ; preds = %53
  %42 = add nuw i32 %45, 1
  %43 = icmp eq i32 %42, %39
  br i1 %43, label %57, label %44

44:                                               ; preds = %41, %38
  %45 = phi i32 [ %42, %41 ], [ 0, %38 ]
  %46 = getelementptr %struct.stm32_pwm, ptr %11, i32 0, i32 6, i32 %45
  %47 = load i32, ptr %46, align 4
  %48 = icmp ugt i32 %47, 1
  br i1 %48, label %96, label %49

49:                                               ; preds = %44
  %50 = getelementptr %struct.stm32_pwm, ptr %11, i32 0, i32 6, i32 %45, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %51, 1
  br i1 %52, label %96, label %53

53:                                               ; preds = %49
  %54 = getelementptr %struct.stm32_pwm, ptr %11, i32 0, i32 6, i32 %45, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = icmp ugt i32 %55, 15
  br i1 %56, label %96, label %41

57:                                               ; preds = %41, %38
  %58 = tail call fastcc i32 @stm32_pwm_apply_breakinputs(ptr noundef nonnull %11) #7
  br label %59

59:                                               ; preds = %57, %31
  %60 = phi i32 [ %58, %57 ], [ %36, %31 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %96

62:                                               ; preds = %59, %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %63 = load ptr, ptr %17, align 4
  %64 = tail call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 32, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %65 = load ptr, ptr %17, align 4
  %66 = call i32 @regmap_read(ptr noundef %65, i32 noundef 32, ptr noundef nonnull %3) #7
  %67 = load ptr, ptr %17, align 4
  %68 = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 32, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %69 = load i32, ptr %3, align 4
  %70 = icmp ne i32 %69, 0
  %71 = getelementptr inbounds %struct.stm32_pwm, ptr %11, i32 0, i32 5
  %72 = zext i1 %70 to i8
  store i8 %72, ptr %71, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  store ptr %4, ptr %11, align 64
  %73 = getelementptr inbounds %struct.pwm_chip, ptr %11, i32 0, i32 1
  store ptr @stm32pwm_ops, ptr %73, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %74 = load ptr, ptr %17, align 4
  %75 = call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 32, i32 noundef 4369, i32 noundef 4369, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %76 = load ptr, ptr %17, align 4
  %77 = call i32 @regmap_read(ptr noundef %76, i32 noundef 32, ptr noundef nonnull %2) #7
  %78 = load ptr, ptr %17, align 4
  %79 = call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 32, i32 noundef 4369, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %80 = load i32, ptr %2, align 4
  %81 = and i32 %80, 1
  %82 = lshr i32 %80, 4
  %83 = and i32 %82, 1
  %84 = add nuw nsw i32 %83, %81
  %85 = lshr i32 %80, 8
  %86 = and i32 %85, 1
  %87 = add nuw nsw i32 %84, %86
  %88 = lshr i32 %80, 12
  %89 = and i32 %88, 1
  %90 = add nuw nsw i32 %87, %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %91 = getelementptr inbounds %struct.pwm_chip, ptr %11, i32 0, i32 3
  store i32 %90, ptr %91, align 4
  %92 = call i32 @pwmchip_add(ptr noundef nonnull %11) #7
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %62
  %95 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %95, align 8
  br label %96

96:                                               ; preds = %94, %62, %59, %53, %49, %44, %29, %13, %1
  %97 = phi i32 [ 0, %94 ], [ -12, %1 ], [ -22, %13 ], [ %60, %59 ], [ %92, %62 ], [ -22, %29 ], [ -22, %53 ], [ -22, %49 ], [ -22, %44 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pwm_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.pwm_state, align 8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pwm_chip, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.pwm_chip, ptr %4, i32 0, i32 7
  %10 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  br label %11

11:                                               ; preds = %22, %8
  %12 = phi i32 [ 0, %8 ], [ %23, %22 ]
  %13 = load ptr, ptr %9, align 32
  %14 = getelementptr %struct.pwm_device, ptr %13, i32 %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = getelementptr %struct.pwm_device, ptr %13, i32 %12, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef align 8 dereferenceable(24) %17, i32 24, i1 false) #7
  %18 = load i8, ptr %10, align 4, !range !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  store i8 0, ptr %10, align 4
  %21 = call i32 @pwm_apply_state(ptr noundef nonnull %14, ptr noundef nonnull %2) #7
  br label %22

22:                                               ; preds = %20, %16, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  %23 = add nuw i32 %12, 1
  %24 = load i32, ptr %5, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %11, label %26

26:                                               ; preds = %22, %1
  call void @pwmchip_remove(ptr noundef %4) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_pwm_apply_breakinputs(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.stm32_pwm, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %45, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stm32_pwm, ptr %0, i32 0, i32 3
  br label %12

8:                                                ; preds = %33
  %9 = add nuw i32 %13, 1
  %10 = load i32, ptr %3, align 32
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %8, %6
  %13 = phi i32 [ 0, %6 ], [ %9, %8 ]
  %14 = getelementptr %struct.stm32_pwm, ptr %0, i32 0, i32 6, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %15, 2
  %17 = add i32 %16, 16
  %18 = mul i32 %15, 12
  %19 = add i32 %18, 12
  %20 = shl nuw i32 1, %19
  %21 = add i32 %18, 13
  %22 = shl nuw i32 1, %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  %23 = getelementptr %struct.stm32_pwm, ptr %0, i32 0, i32 6, i32 %13, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 15
  %26 = shl i32 %25, %17
  %27 = or i32 %26, %20
  store i32 %27, ptr %2, align 4
  %28 = getelementptr %struct.stm32_pwm, ptr %0, i32 0, i32 6, i32 %13, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %12
  %32 = or i32 %27, %22
  store i32 %32, ptr %2, align 4
  br label %33

33:                                               ; preds = %31, %12
  %34 = phi i32 [ %32, %31 ], [ %27, %12 ]
  %35 = shl i32 15, %17
  %36 = or i32 %35, %22
  %37 = or i32 %36, %20
  %38 = load ptr, ptr %7, align 4
  %39 = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 68, i32 noundef %37, i32 noundef %34, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %40 = load ptr, ptr %7, align 4
  %41 = call i32 @regmap_read(ptr noundef %40, i32 noundef 68, ptr noundef nonnull %2) #7
  %42 = load i32, ptr %2, align 4
  %43 = and i32 %42, %20
  %44 = icmp eq i32 %43, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br i1 %44, label %45, label %8

45:                                               ; preds = %33, %8, %1
  %46 = phi i32 [ 0, %1 ], [ 0, %8 ], [ -22, %33 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pwm_capture(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.stm32_pwm, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.stm32_pwm, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef 32, ptr noundef nonnull %5) #7
  %12 = load i32, ptr %5, align 4
  %13 = and i32 %12, 4369
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %216

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.stm32_pwm, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @clk_enable(ptr noundef %17) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %0, align 64
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.3) #8
  br label %216

22:                                               ; preds = %15
  %23 = load ptr, ptr %16, align 8
  %24 = call i32 @clk_get_rate(ptr noundef %23) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %213, label %26

26:                                               ; preds = %22
  %27 = zext i32 %24 to i64
  %28 = zext i32 %3 to i64
  %29 = mul nuw i64 %27, %28
  %30 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %29, i32 0) #9, !srcloc !10
  %31 = extractvalue { i64, i32 } %30, 0
  %32 = extractvalue { i64, i32 } %30, 1
  %33 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %29, i64 %31, i32 %32) #9, !srcloc !11
  %34 = extractvalue { i64, i32 } %33, 0
  %35 = lshr i64 %34, 9
  %36 = getelementptr inbounds %struct.stm32_pwm, ptr %0, i32 0, i32 4
  %37 = load i32, ptr %36, align 64
  %38 = zext i32 %37 to i64
  %39 = icmp ugt i64 %35, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %26
  %41 = icmp ult i64 %34, 2199023255552
  %42 = trunc i64 %35 to i32
  br label %43

43:                                               ; preds = %53, %40
  %44 = phi i32 [ 0, %40 ], [ %45, %53 ]
  %45 = add nuw nsw i32 %44, 1
  %46 = add nuw nsw i32 %44, 2
  br i1 %41, label %47, label %50, !prof !12

47:                                               ; preds = %43
  %48 = udiv i32 %42, %46
  %49 = zext i32 %48 to i64
  br label %53

50:                                               ; preds = %43
  %51 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %46, i64 %35) #9, !srcloc !13
  %52 = extractvalue { i64, i64 } %51, 1
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i64 [ %49, %47 ], [ %52, %50 ]
  %55 = icmp ugt i64 %54, %38
  %56 = icmp ult i32 %44, 65534
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %43, label %58

58:                                               ; preds = %53, %26
  %59 = phi i32 [ 0, %26 ], [ %45, %53 ]
  %60 = load ptr, ptr %9, align 4
  %61 = call i32 @regmap_write(ptr noundef %60, i32 noundef 44, i32 noundef %37) #7
  %62 = load ptr, ptr %9, align 4
  %63 = call i32 @regmap_write(ptr noundef %62, i32 noundef 40, i32 noundef %59) #7
  %64 = load ptr, ptr %9, align 4
  %65 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %66 = load i32, ptr %65, align 8
  %67 = icmp ult i32 %66, 2
  %68 = select i1 %67, i32 24, i32 28
  %69 = and i32 %66, 1
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i32 513, i32 258
  %72 = call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef %68, i32 noundef 771, i32 noundef %71, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %73 = load ptr, ptr %9, align 4
  %74 = load i32, ptr %65, align 8
  %75 = icmp ult i32 %74, 2
  %76 = select i1 %75, i32 34, i32 8704
  %77 = select i1 %75, i32 32, i32 8192
  %78 = call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 32, i32 noundef %76, i32 noundef %77, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %79 = call fastcc i32 @stm32_pwm_raw_capture(ptr noundef %0, ptr noundef %1, i32 noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %202

81:                                               ; preds = %58
  %82 = load i32, ptr %6, align 4
  %83 = icmp eq i32 %82, 0
  %84 = load i32, ptr %36, align 64
  br i1 %83, label %89, label %85

85:                                               ; preds = %81
  %86 = add i32 %84, -4096
  %87 = call i32 @llvm.umin.i32(i32 %86, i32 %82)
  %88 = udiv i32 %86, %87
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi i32 [ %88, %85 ], [ %84, %81 ]
  %91 = icmp ne i32 %59, 0
  %92 = icmp ugt i32 %90, 1
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = udiv i32 %59, %90
  %96 = load ptr, ptr %9, align 4
  %97 = call i32 @regmap_write(ptr noundef %96, i32 noundef 40, i32 noundef %95) #7
  %98 = call fastcc i32 @stm32_pwm_raw_capture(ptr noundef %0, ptr noundef %1, i32 noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %202

100:                                              ; preds = %94
  %101 = load i32, ptr %6, align 4
  br label %102

102:                                              ; preds = %100, %89
  %103 = phi i32 [ %101, %100 ], [ %82, %89 ]
  %104 = phi i32 [ %95, %100 ], [ %59, %89 ]
  %105 = zext i32 %103 to i64
  %106 = add i32 %104, 1
  %107 = zext i32 %106 to i64
  %108 = mul nuw nsw i64 %107, 1000000000
  %109 = mul i64 %108, %105
  %110 = icmp ult i64 %109, 4294967296
  br i1 %110, label %111, label %115, !prof !12

111:                                              ; preds = %102
  %112 = trunc i64 %109 to i32
  %113 = udiv i32 %112, %24
  %114 = zext i32 %113 to i64
  br label %118

115:                                              ; preds = %102
  %116 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %24, i64 %109) #9, !srcloc !13
  %117 = extractvalue { i64, i64 } %116, 1
  br label %118

118:                                              ; preds = %115, %111
  %119 = phi i64 [ %114, %111 ], [ %117, %115 ]
  %120 = load i32, ptr %36, align 64
  %121 = add i32 %120, -4096
  %122 = mul i32 %3, 1000000
  %123 = lshr i32 %121, 1
  %124 = icmp ult i32 %103, %123
  br i1 %124, label %125, label %167

125:                                              ; preds = %118
  %126 = lshr exact i32 %122, 2
  %127 = zext i32 %126 to i64
  %128 = icmp ult i64 %119, %127
  br i1 %128, label %129, label %167

129:                                              ; preds = %125
  %130 = lshr i32 %121, 2
  %131 = icmp ult i32 %103, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = lshr exact i32 %122, 3
  %134 = zext i32 %133 to i64
  %135 = icmp ult i64 %119, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = lshr i32 %121, 3
  %138 = icmp ult i32 %103, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = lshr exact i32 %122, 4
  %141 = zext i32 %140 to i64
  %142 = icmp ult i64 %119, %141
  br i1 %142, label %145, label %143

143:                                              ; preds = %139, %136, %132, %129
  %144 = phi i32 [ 1, %129 ], [ 1, %132 ], [ 2, %136 ], [ 2, %139 ]
  br label %145

145:                                              ; preds = %143, %139
  %146 = phi i32 [ %144, %143 ], [ 3, %139 ]
  %147 = load i32, ptr %65, align 8
  %148 = icmp ult i32 %147, 2
  %149 = select i1 %148, i32 24, i32 28
  %150 = load ptr, ptr %9, align 4
  %151 = shl nuw nsw i32 %146, 2
  %152 = and i32 %151, 12
  %153 = shl nuw nsw i32 %146, 10
  %154 = and i32 %153, 3072
  %155 = or i32 %152, %154
  %156 = call i32 @regmap_update_bits_base(ptr noundef %150, i32 noundef %149, i32 noundef 3084, i32 noundef %155, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %157 = call fastcc i32 @stm32_pwm_raw_capture(ptr noundef %0, ptr noundef %1, i32 noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %202

159:                                              ; preds = %145
  %160 = load i32, ptr %7, align 4
  %161 = load i32, ptr %6, align 4
  %162 = lshr i32 %161, %146
  %163 = icmp ult i32 %160, %162
  br i1 %163, label %167, label %164

164:                                              ; preds = %159
  %165 = sub i32 %160, %161
  %166 = add i32 %165, %162
  store i32 %166, ptr %7, align 4
  br label %167

167:                                              ; preds = %164, %159, %125, %118
  %168 = phi i32 [ %161, %159 ], [ %161, %164 ], [ %103, %125 ], [ %103, %118 ]
  %169 = phi i32 [ %146, %159 ], [ %146, %164 ], [ 0, %125 ], [ 0, %118 ]
  %170 = zext i32 %168 to i64
  %171 = mul i64 %108, %170
  %172 = shl i32 %24, %169
  %173 = zext i32 %172 to i64
  %174 = add nsw i64 %173, -1
  %175 = add i64 %174, %171
  %176 = icmp ult i64 %175, 4294967296
  br i1 %176, label %177, label %180, !prof !12

177:                                              ; preds = %167
  %178 = trunc i64 %175 to i32
  %179 = udiv i32 %178, %172
  br label %184

180:                                              ; preds = %167
  %181 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %172, i64 %175) #9, !srcloc !13
  %182 = extractvalue { i64, i64 } %181, 1
  %183 = trunc i64 %182 to i32
  br label %184

184:                                              ; preds = %180, %177
  %185 = phi i32 [ %179, %177 ], [ %183, %180 ]
  store i32 %185, ptr %2, align 4
  %186 = load i32, ptr %7, align 4
  %187 = zext i32 %186 to i64
  %188 = mul i64 %108, %187
  %189 = add nsw i64 %27, -1
  %190 = add i64 %189, %188
  %191 = icmp ult i64 %190, 4294967296
  br i1 %191, label %192, label %195, !prof !12

192:                                              ; preds = %184
  %193 = trunc i64 %190 to i32
  %194 = udiv i32 %193, %24
  br label %199

195:                                              ; preds = %184
  %196 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %24, i64 %190) #9, !srcloc !13
  %197 = extractvalue { i64, i64 } %196, 1
  %198 = trunc i64 %197 to i32
  br label %199

199:                                              ; preds = %195, %192
  %200 = phi i32 [ %194, %192 ], [ %198, %195 ]
  %201 = getelementptr inbounds %struct.pwm_capture, ptr %2, i32 0, i32 1
  store i32 %200, ptr %201, align 4
  br label %202

202:                                              ; preds = %199, %145, %94, %58
  %203 = phi i32 [ %79, %58 ], [ %98, %94 ], [ %157, %145 ], [ 0, %199 ]
  %204 = load ptr, ptr %9, align 4
  %205 = call i32 @regmap_write(ptr noundef %204, i32 noundef 32, i32 noundef 0) #7
  %206 = load ptr, ptr %9, align 4
  %207 = load i32, ptr %65, align 8
  %208 = icmp ult i32 %207, 2
  %209 = select i1 %208, i32 24, i32 28
  %210 = call i32 @regmap_write(ptr noundef %206, i32 noundef %209, i32 noundef 0) #7
  %211 = load ptr, ptr %9, align 4
  %212 = call i32 @regmap_write(ptr noundef %211, i32 noundef 40, i32 noundef 0) #7
  br label %213

213:                                              ; preds = %202, %22
  %214 = phi i32 [ %203, %202 ], [ -22, %22 ]
  %215 = load ptr, ptr %16, align 8
  call void @clk_disable(ptr noundef %215) #7
  br label %216

216:                                              ; preds = %213, %20, %4
  %217 = phi i32 [ %18, %20 ], [ %214, %213 ], [ -16, %4 ]
  call void @mutex_unlock(ptr noundef %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret i32 %217
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pwm_apply_locked(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.stm32_pwm, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #7
  %9 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 3
  %10 = load i8, ptr %9, align 4, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %39, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %14 = load i8, ptr %13, align 4, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = shl i32 %18, 2
  %20 = getelementptr inbounds %struct.stm32_pwm, ptr %0, i32 0, i32 5
  %21 = load i8, ptr %20, align 4, !range !9
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 1, i32 5
  %24 = shl i32 %23, %19
  %25 = getelementptr inbounds %struct.stm32_pwm, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 32, i32 noundef %24, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !8
  %28 = load ptr, ptr %25, align 4
  %29 = call i32 @regmap_read(ptr noundef %28, i32 noundef 32, ptr noundef nonnull %7) #7
  %30 = load i32, ptr %7, align 4
  %31 = and i32 %30, 4369
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %16
  %34 = load ptr, ptr %25, align 4
  %35 = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %36

36:                                               ; preds = %33, %16
  %37 = getelementptr inbounds %struct.stm32_pwm, ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8
  call void @clk_disable(ptr noundef %38) #7
  br label %188

39:                                               ; preds = %12, %3
  %40 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %59, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr inbounds %struct.stm32_pwm, ptr %0, i32 0, i32 5
  %49 = load i8, ptr %48, align 4, !range !9
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %50, i32 2, i32 10
  %52 = shl i32 %47, 2
  %53 = shl i32 %51, %52
  %54 = getelementptr inbounds %struct.stm32_pwm, ptr %0, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq i32 %41, 0
  %57 = select i1 %56, i32 0, i32 %53
  %58 = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 32, i32 noundef %53, i32 noundef %57, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %59

59:                                               ; preds = %45, %39
  %60 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  %62 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  %63 = load i64, ptr %62, align 8
  %64 = load i64, ptr %2, align 8
  %65 = trunc i64 %64 to i32
  %66 = getelementptr inbounds %struct.stm32_pwm, ptr %0, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8
  %68 = tail call i32 @clk_get_rate(ptr noundef %67) #7
  %69 = zext i32 %68 to i64
  %70 = sext i32 %65 to i64
  %71 = mul nsw i64 %69, %70
  %72 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %71, i32 0) #9, !srcloc !10
  %73 = extractvalue { i64, i32 } %72, 0
  %74 = extractvalue { i64, i32 } %72, 1
  %75 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %71, i64 %73, i32 %74) #9, !srcloc !11
  %76 = extractvalue { i64, i32 } %75, 0
  %77 = lshr i64 %76, 29
  %78 = getelementptr inbounds %struct.stm32_pwm, ptr %0, i32 0, i32 4
  %79 = load i32, ptr %78, align 64
  %80 = zext i32 %79 to i64
  %81 = icmp ugt i64 %77, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %59
  %83 = icmp ult i64 %76, 2305843009213693952
  %84 = trunc i64 %77 to i32
  br label %85

85:                                               ; preds = %95, %82
  %86 = phi i32 [ 0, %82 ], [ %87, %95 ]
  %87 = add i32 %86, 1
  %88 = add i32 %86, 2
  br i1 %83, label %89, label %92, !prof !12

89:                                               ; preds = %85
  %90 = udiv i32 %84, %88
  %91 = zext i32 %90 to i64
  br label %95

92:                                               ; preds = %85
  %93 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %88, i64 %77) #9, !srcloc !13
  %94 = extractvalue { i64, i64 } %93, 1
  br label %95

95:                                               ; preds = %92, %89
  %96 = phi i64 [ %91, %89 ], [ %94, %92 ]
  %97 = icmp ugt i64 %96, %80
  br i1 %97, label %85, label %98

98:                                               ; preds = %95
  %99 = icmp ugt i32 %87, 65535
  br i1 %99, label %188, label %100

100:                                              ; preds = %98, %59
  %101 = phi i32 [ %87, %98 ], [ 0, %59 ]
  %102 = phi i64 [ %96, %98 ], [ %77, %59 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %103 = getelementptr inbounds %struct.stm32_pwm, ptr %0, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = call i32 @regmap_read(ptr noundef %104, i32 noundef 32, ptr noundef nonnull %4) #7
  %106 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %107 = shl i32 %61, 2
  %108 = shl nuw i32 1, %107
  %109 = and i32 %108, 4369
  %110 = xor i32 %109, 4369
  %111 = and i32 %106, %110
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  %114 = load ptr, ptr %103, align 4
  %115 = call i32 @regmap_read(ptr noundef %114, i32 noundef 40, ptr noundef nonnull %5) #7
  %116 = load ptr, ptr %103, align 4
  %117 = call i32 @regmap_read(ptr noundef %116, i32 noundef 44, ptr noundef nonnull %6) #7
  %118 = load i32, ptr %5, align 4
  %119 = icmp eq i32 %118, %101
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load i32, ptr %6, align 4
  %122 = zext i32 %121 to i64
  %123 = add i64 %102, -1
  %124 = icmp eq i64 %123, %122
  br i1 %124, label %126, label %125

125:                                              ; preds = %120, %113
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %188

126:                                              ; preds = %120
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %127

127:                                              ; preds = %126, %100
  %128 = load ptr, ptr %103, align 4
  %129 = call i32 @regmap_write(ptr noundef %128, i32 noundef 40, i32 noundef %101) #7
  %130 = load ptr, ptr %103, align 4
  %131 = trunc i64 %102 to i32
  %132 = add i32 %131, -1
  %133 = call i32 @regmap_write(ptr noundef %130, i32 noundef 44, i32 noundef %132) #7
  %134 = load ptr, ptr %103, align 4
  %135 = call i32 @regmap_update_bits_base(ptr noundef %134, i32 noundef 0, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %136 = shl i64 %63, 32
  %137 = ashr exact i64 %136, 32
  %138 = mul i64 %102, %137
  %139 = icmp ult i64 %138, 4294967296
  br i1 %139, label %140, label %143, !prof !12

140:                                              ; preds = %127
  %141 = trunc i64 %138 to i32
  %142 = udiv i32 %141, %65
  br label %147

143:                                              ; preds = %127
  %144 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %65, i64 %138) #9, !srcloc !13
  %145 = extractvalue { i64, i64 } %144, 1
  %146 = trunc i64 %145 to i32
  br label %147

147:                                              ; preds = %143, %140
  %148 = phi i32 [ %142, %140 ], [ %146, %143 ]
  %149 = icmp ult i32 %61, 4
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = shl i32 %61, 2
  %152 = add i32 %151, 52
  %153 = load ptr, ptr %103, align 4
  %154 = call i32 @regmap_write(ptr noundef %153, i32 noundef %152, i32 noundef %148) #7
  br label %155

155:                                              ; preds = %150, %147
  %156 = shl i32 %61, 3
  %157 = and i32 %156, 8
  %158 = shl nuw nsw i32 104, %157
  %159 = shl nuw nsw i32 255, %157
  %160 = icmp slt i32 %61, 2
  %161 = load ptr, ptr %103, align 4
  %162 = select i1 %160, i32 24, i32 28
  %163 = call i32 @regmap_update_bits_base(ptr noundef %161, i32 noundef %162, i32 noundef %159, i32 noundef %158, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %164 = load ptr, ptr %103, align 4
  %165 = call i32 @regmap_update_bits_base(ptr noundef %164, i32 noundef 68, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br i1 %11, label %166, label %188

166:                                              ; preds = %155
  %167 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %168 = load i8, ptr %167, align 4, !range !9
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %188, label %170

170:                                              ; preds = %166
  %171 = load i32, ptr %60, align 8
  %172 = load ptr, ptr %66, align 8
  %173 = call i32 @clk_enable(ptr noundef %172) #7
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %188

175:                                              ; preds = %170
  %176 = shl i32 %171, 2
  %177 = getelementptr inbounds %struct.stm32_pwm, ptr %0, i32 0, i32 5
  %178 = load i8, ptr %177, align 4, !range !9
  %179 = icmp eq i8 %178, 0
  %180 = select i1 %179, i32 1, i32 5
  %181 = shl i32 %180, %176
  %182 = load ptr, ptr %103, align 4
  %183 = call i32 @regmap_update_bits_base(ptr noundef %182, i32 noundef 32, i32 noundef %181, i32 noundef %181, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %184 = load ptr, ptr %103, align 4
  %185 = call i32 @regmap_update_bits_base(ptr noundef %184, i32 noundef 20, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %186 = load ptr, ptr %103, align 4
  %187 = call i32 @regmap_update_bits_base(ptr noundef %186, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %188

188:                                              ; preds = %175, %170, %166, %155, %125, %98, %36
  %189 = phi i32 [ 0, %36 ], [ 0, %155 ], [ 0, %166 ], [ %173, %170 ], [ 0, %175 ], [ -22, %98 ], [ -16, %125 ]
  call void @mutex_unlock(ptr noundef %8) #7
  ret i32 %189
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_pwm_raw_capture(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #2 {
  %6 = load ptr, ptr %0, align 64
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stm32_pwm, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 20, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %12 = load ptr, ptr %9, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %14 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = icmp ult i32 %15, 2
  %17 = select i1 %16, i32 0, i32 2
  %18 = select i1 %16, i32 17, i32 4352
  %19 = select i1 %16, i32 52, i32 60
  %20 = load ptr, ptr %9, align 4
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 32, i32 noundef %18, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %22 = getelementptr inbounds %struct.stm32_pwm, ptr %0, i32 0, i32 9
  %23 = tail call i32 @stm32_timers_dma_burst_read(ptr noundef %8, ptr noundef %22, i32 noundef %17, i32 noundef %19, i32 noundef 2, i32 noundef 2, i32 noundef %2) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %5
  %26 = load i32, ptr %22, align 64
  %27 = getelementptr %struct.stm32_pwm, ptr %0, i32 0, i32 9, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = icmp ult i32 %28, %26
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = sub i32 %28, %26
  br label %37

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.stm32_pwm, ptr %0, i32 0, i32 4
  %34 = load i32, ptr %33, align 64
  %35 = sub i32 %28, %26
  %36 = add i32 %35, %34
  br label %37

37:                                               ; preds = %32, %30
  %38 = phi i32 [ %36, %32 ], [ %31, %30 ]
  store i32 %38, ptr %3, align 4
  %39 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 4
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.pwm_chip, ptr %40, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = icmp ult i32 %42, 2
  br i1 %43, label %62, label %44

44:                                               ; preds = %37
  %45 = load i32, ptr %22, align 64
  %46 = getelementptr %struct.stm32_pwm, ptr %0, i32 0, i32 9, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = icmp ult i32 %47, %45
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = sub i32 %47, %45
  br label %56

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.stm32_pwm, ptr %0, i32 0, i32 4
  %53 = load i32, ptr %52, align 64
  %54 = sub i32 %47, %45
  %55 = add i32 %54, %53
  br label %56

56:                                               ; preds = %51, %49
  %57 = phi i32 [ %50, %49 ], [ %55, %51 ]
  store i32 %57, ptr %4, align 4
  %58 = load i32, ptr %3, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = sub i32 %57, %58
  br label %62

62:                                               ; preds = %60, %37
  %63 = phi i32 [ %61, %60 ], [ 0, %37 ]
  store i32 %63, ptr %4, align 4
  br label %64

64:                                               ; preds = %62, %56, %5
  %65 = load ptr, ptr %9, align 4
  %66 = tail call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 32, i32 noundef %18, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %67 = load ptr, ptr %9, align 4
  %68 = tail call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm32_timers_dma_burst_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pwm_suspend(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.stm32_pwm, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 32, ptr noundef nonnull %2) #7
  %8 = load i32, ptr %2, align 4
  %9 = and i32 %8, 4369
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %10 = getelementptr inbounds %struct.pwm_chip, ptr %4, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %24, %1
  %14 = phi i32 [ %25, %24 ], [ 0, %1 ]
  %15 = shl i32 %14, 2
  %16 = shl nuw i32 1, %15
  %17 = and i32 %9, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.pwm_chip, ptr %4, i32 0, i32 7
  %21 = load ptr, ptr %20, align 32
  %22 = getelementptr %struct.pwm_device, ptr %21, i32 %14
  %23 = load ptr, ptr %22, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %14, ptr noundef %23) #8
  br label %29

24:                                               ; preds = %13
  %25 = add nuw i32 %14, 1
  %26 = icmp eq i32 %25, %11
  br i1 %26, label %27, label %13

27:                                               ; preds = %24, %1
  %28 = call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #7
  br label %29

29:                                               ; preds = %27, %19
  %30 = phi i32 [ -16, %19 ], [ %28, %27 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pwm_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @stm32_pwm_apply_breakinputs(ptr noundef %3)
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ %4, %1 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

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
!10 = !{i64 924897, i64 924924, i64 924946, i64 924974}
!11 = !{i64 925305, i64 925332, i64 925365, i64 925386, i64 925413, i64 925439}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148410441, i64 2148410721, i64 2148411055, i64 2148411389}
