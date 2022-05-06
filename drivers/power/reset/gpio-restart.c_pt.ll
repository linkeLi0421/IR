; ModuleID = '/llk/IR/drivers/power/reset/gpio-restart.c_pt.bc'
source_filename = "../drivers/power/reset/gpio-restart.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.gpio_restart = type { ptr, %struct.notifier_block, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_gpio_restart__162_138_gpio_restart_driver_init6 = internal global ptr @gpio_restart_driver_init, section ".initcall6.init", align 4
@gpio_restart_driver = internal global %struct.platform_driver { ptr @gpio_restart_probe, ptr @gpio_restart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_gpio_restart_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_gpio_restart_driver_exit = internal global ptr @gpio_restart_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [58 x i8] c"gpio_restart.author=David Riley <davidriley@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [45 x i8] c"gpio_restart.description=GPIO restart driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [51 x i8] c"gpio_restart.file=drivers/power/reset/gpio-restart\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [25 x i8] c"gpio_restart.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"restart-gpio\00", align 1
@of_gpio_restart_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-restart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"open-source\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Could not get reset GPIO\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Invalid priority property: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"active-delay\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"inactive-delay\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"wait-delay\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"%s: cannot register restart handler, %d\0A\00", align 1
@__func__.gpio_restart_probe = private unnamed_addr constant [19 x i8] c"gpio_restart_probe\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"drivers/power/reset/gpio-restart.c\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"%s: cannot unregister restart handler, %d\0A\00", align 1
@__func__.gpio_restart_remove = private unnamed_addr constant [20 x i8] c"gpio_restart_remove\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_gpio_restart_driver_exit, ptr @__initcall__kmod_gpio_restart__162_138_gpio_restart_driver_init6, ptr @gpio_restart_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gpio_restart_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_restart_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @gpio_restart_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_restart_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_restart_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 28, i32 noundef 3520) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %42, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef null) #5
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, i32 3, i32 1
  %12 = tail call ptr @devm_gpiod_get(ptr noundef %3, ptr noundef null, i32 noundef %11) #5
  store ptr %12, ptr %4, align 4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %14 = ptrtoint ptr %12 to i32
  %15 = select i1 %13, i32 %14, i32 0
  switch i32 %15, label %16 [
    i32 0, label %17
    i32 -517, label %42
  ]

16:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #6
  br label %42

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.gpio_restart, ptr %4, i32 0, i32 1
  store ptr @gpio_restart_notify, ptr %18, align 4
  %19 = getelementptr inbounds %struct.gpio_restart, ptr %4, i32 0, i32 1, i32 2
  store i32 129, ptr %19, align 4
  %20 = getelementptr inbounds %struct.gpio_restart, ptr %4, i32 0, i32 2
  store i32 100, ptr %20, align 4
  %21 = getelementptr inbounds %struct.gpio_restart, ptr %4, i32 0, i32 3
  store i32 100, ptr %21, align 4
  %22 = getelementptr inbounds %struct.gpio_restart, ptr %4, i32 0, i32 4
  store i32 3000, ptr %22, align 4
  %23 = load ptr, ptr %7, align 8
  %24 = call i32 @of_property_read_variable_u32_array(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load i32, ptr %2, align 4
  %28 = icmp ugt i32 %27, 255
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %27) #6
  br label %31

30:                                               ; preds = %26
  store i32 %27, ptr %19, align 4
  br label %31

31:                                               ; preds = %30, %29, %17
  %32 = load ptr, ptr %7, align 8
  %33 = call i32 @of_property_read_variable_u32_array(ptr noundef %32, ptr noundef nonnull @.str.5, ptr noundef %20, i32 noundef 1, i32 noundef 0) #5
  %34 = load ptr, ptr %7, align 8
  %35 = call i32 @of_property_read_variable_u32_array(ptr noundef %34, ptr noundef nonnull @.str.6, ptr noundef %21, i32 noundef 1, i32 noundef 0) #5
  %36 = load ptr, ptr %7, align 8
  %37 = call i32 @of_property_read_variable_u32_array(ptr noundef %36, ptr noundef nonnull @.str.7, ptr noundef %22, i32 noundef 1, i32 noundef 0) #5
  %38 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %38, align 8
  %39 = call i32 @register_restart_handler(ptr noundef %18) #5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.gpio_restart_probe, i32 noundef %39) #6
  br label %42

42:                                               ; preds = %41, %31, %16, %6, %1
  %43 = phi i32 [ -19, %41 ], [ -12, %1 ], [ %15, %6 ], [ %15, %16 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_restart_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gpio_restart, ptr %3, i32 0, i32 1
  %5 = tail call i32 @unregister_restart_handler(ptr noundef %4) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.gpio_restart_remove, i32 noundef %5) #6
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ -19, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_restart_notify(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gpiod_direction_output(ptr noundef %5, i32 noundef 1) #5
  %7 = getelementptr i8, ptr %0, i32 12
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %10, %3
  %11 = phi i32 [ %12, %10 ], [ %8, %3 ]
  %12 = add i32 %11, -1
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #5
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %10

15:                                               ; preds = %10, %3
  %16 = load ptr, ptr %4, align 4
  tail call void @gpiod_set_value(ptr noundef %16, i32 noundef 0) #5
  %17 = getelementptr i8, ptr %0, i32 16
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %20, %15
  %21 = phi i32 [ %22, %20 ], [ %18, %15 ]
  %22 = add i32 %21, -1
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #5
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %25, label %20

25:                                               ; preds = %20, %15
  %26 = load ptr, ptr %4, align 4
  tail call void @gpiod_set_value(ptr noundef %26, i32 noundef 1) #5
  %27 = getelementptr i8, ptr %0, i32 20
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %30, %25
  %31 = phi i32 [ %32, %30 ], [ %28, %25 ]
  %32 = add i32 %31, -1
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #5
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %30

35:                                               ; preds = %30, %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 46, i32 noundef 9, ptr noundef null) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_restart_handler(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
