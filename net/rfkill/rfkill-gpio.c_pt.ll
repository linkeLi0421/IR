; ModuleID = '/llk/IR/net/rfkill/rfkill-gpio.c_pt.bc'
source_filename = "../net/rfkill/rfkill-gpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rfkill_ops = type { ptr, ptr, ptr }
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
%struct.rfkill_gpio_data = type { ptr, i32, ptr, ptr, ptr, ptr, i8 }

@__initcall__kmod_rfkill_gpio__166_169_rfkill_gpio_driver_init6 = internal global ptr @rfkill_gpio_driver_init, section ".initcall6.init", align 4
@rfkill_gpio_driver = internal global %struct.platform_driver { ptr @rfkill_gpio_probe, ptr @rfkill_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_rfkill_gpio_driver_exit = internal global ptr @rfkill_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description167 = internal constant [36 x i8] c"rfkill_gpio.description=gpio rfkill\00", section ".modinfo", align 1
@__UNIQUE_ID_author168 = internal constant [26 x i8] c"rfkill_gpio.author=NVIDIA\00", section ".modinfo", align 1
@__UNIQUE_ID_file169 = internal constant [40 x i8] c"rfkill_gpio.file=net/rfkill/rfkill-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license170 = internal constant [24 x i8] c"rfkill_gpio.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"rfkill_gpio\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"invalid platform data\0A\00", align 1
@rfkill_gpio_ops = internal constant %struct.rfkill_ops { ptr null, ptr null, ptr @rfkill_gpio_set_power }, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"%s device registered.\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author168, ptr @__UNIQUE_ID_description167, ptr @__UNIQUE_ID_file169, ptr @__UNIQUE_ID_license170, ptr @__exitcall_rfkill_gpio_driver_exit, ptr @__initcall__kmod_rfkill_gpio__166_169_rfkill_gpio_driver_init6, ptr @rfkill_gpio_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rfkill_gpio_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rfkill_gpio_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rfkill_gpio_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rfkill_gpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rfkill_gpio_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 28, i32 noundef 3520) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %56, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @device_property_read_string(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #5
  %8 = call i32 @device_property_read_string(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #5
  %9 = load ptr, ptr %4, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 4
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %16, %15 ], [ %13, %11 ]
  store ptr %18, ptr %4, align 4
  br label %19

19:                                               ; preds = %17, %6
  %20 = load ptr, ptr %2, align 4
  %21 = call i32 @rfkill_find_type(ptr noundef %20) #5
  %22 = getelementptr inbounds %struct.rfkill_gpio_data, ptr %4, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #5
  %24 = getelementptr inbounds %struct.rfkill_gpio_data, ptr %4, i32 0, i32 5
  store ptr %23, ptr %24, align 4
  %25 = call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 3) #5
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = ptrtoint ptr %25 to i32
  br label %56

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.rfkill_gpio_data, ptr %4, i32 0, i32 2
  store ptr %25, ptr %30, align 4
  %31 = call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef 3) #5
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = ptrtoint ptr %31 to i32
  br label %56

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.rfkill_gpio_data, ptr %4, i32 0, i32 3
  store ptr %31, ptr %36, align 4
  %37 = load ptr, ptr %30, align 4
  %38 = icmp eq ptr %37, null
  %39 = icmp eq ptr %31, null
  %40 = and i1 %39, %38
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #6
  br label %56

42:                                               ; preds = %35
  %43 = load ptr, ptr %4, align 4
  %44 = load i32, ptr %22, align 4
  %45 = call ptr @rfkill_alloc(ptr noundef %43, ptr noundef %3, i32 noundef %44, ptr noundef nonnull @rfkill_gpio_ops, ptr noundef nonnull %4) #5
  %46 = getelementptr inbounds %struct.rfkill_gpio_data, ptr %4, i32 0, i32 4
  store ptr %45, ptr %46, align 4
  %47 = icmp eq ptr %45, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %42
  %49 = call i32 @rfkill_register(ptr noundef nonnull %45) #5
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %52, align 8
  %53 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef %53) #6
  br label %56

54:                                               ; preds = %48
  %55 = load ptr, ptr %46, align 4
  call void @rfkill_destroy(ptr noundef %55) #5
  br label %56

56:                                               ; preds = %54, %51, %42, %41, %33, %27, %1
  %57 = phi i32 [ %28, %27 ], [ %34, %33 ], [ %49, %54 ], [ 0, %51 ], [ -22, %41 ], [ -12, %1 ], [ -12, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rfkill_gpio_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rfkill_gpio_data, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @rfkill_unregister(ptr noundef %5) #5
  %6 = load ptr, ptr %4, align 4
  tail call void @rfkill_destroy(ptr noundef %6) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rfkill_find_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rfkill_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rfkill_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rfkill_gpio_set_power(ptr nocapture noundef %0, i1 noundef zeroext %1) #2 {
  br i1 %1, label %13, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.rfkill_gpio_data, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rfkill_gpio_data, ptr %0, i32 0, i32 6
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i32 @clk_enable(ptr noundef %5) #5
  br label %13

13:                                               ; preds = %11, %7, %3, %2
  %14 = getelementptr inbounds %struct.rfkill_gpio_data, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = xor i1 %1, true
  %17 = zext i1 %16 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef %17) #5
  %18 = getelementptr inbounds %struct.rfkill_gpio_data, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %19, i32 noundef %17) #5
  br i1 %1, label %20, label %29

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rfkill_gpio_data, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.rfkill_gpio_data, ptr %0, i32 0, i32 6
  %26 = load i8, ptr %25, align 4, !range !9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @clk_disable(ptr noundef %22) #5
  br label %29

29:                                               ; preds = %28, %24, %20, %13
  %30 = getelementptr inbounds %struct.rfkill_gpio_data, ptr %0, i32 0, i32 6
  %31 = zext i1 %16 to i8
  store i8 %31, ptr %30, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_unregister(ptr noundef) local_unnamed_addr #1

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
!9 = !{i8 0, i8 2}
