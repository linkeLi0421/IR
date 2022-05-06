; ModuleID = '/llk/IR/drivers/gpio/gpio-tps6586x.c_pt.bc'
source_filename = "../drivers/gpio/gpio-tps6586x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.tps6586x_gpio = type { %struct.gpio_chip, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.tps6586x_platform_data = type { i32, ptr, i32, i32, i8, [15 x ptr] }

@__initcall__kmod_gpio_tps6586x__206_120_tps6586x_gpio_init4 = internal global ptr @tps6586x_gpio_init, section ".initcall4.init", align 4
@tps6586x_gpio_driver = internal global %struct.platform_driver { ptr @tps6586x_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [14 x i8] c"tps6586x-gpio\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_gpio_tps6586x__206_120_tps6586x_gpio_init4], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tps6586x_gpio_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps6586x_gpio_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_gpio_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @dev_fwnode(ptr noundef %4) #4
  tail call void @device_set_node(ptr noundef %2, ptr noundef %5) #4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 308, i32 noundef 3520) #4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.tps6586x_gpio, ptr %9, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 4
  store ptr null, ptr %14, align 4
  %15 = load ptr, ptr %0, align 8
  store ptr %15, ptr %9, align 4
  %16 = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 2
  store ptr %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 20
  store i16 4, ptr %17, align 4
  %18 = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 23
  store i8 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 9
  store ptr @tps6586x_gpio_output, ptr %19, align 4
  %20 = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 12
  store ptr @tps6586x_gpio_set, ptr %20, align 4
  %21 = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 10
  store ptr @tps6586x_gpio_get, ptr %21, align 4
  %22 = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 15
  store ptr @tps6586x_gpio_to_irq, ptr %22, align 4
  %23 = icmp eq ptr %8, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.tps6586x_platform_data, ptr %8, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %11
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ -1, %28 ], [ %26, %24 ]
  %31 = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 19
  store i32 %30, ptr %31, align 4
  %32 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef null, ptr noundef null) #4
  br label %33

33:                                               ; preds = %29, %1
  %34 = phi i32 [ %32, %29 ], [ -12, %1 ]
  ret i32 %34
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_gpio_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #4
  %6 = getelementptr inbounds %struct.tps6586x_gpio, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = shl i32 %2, %1
  %9 = trunc i32 %8 to i8
  %10 = shl nuw i32 1, %1
  %11 = trunc i32 %10 to i8
  %12 = tail call i32 @tps6586x_update(ptr noundef %7, i32 noundef 94, i8 noundef zeroext %9, i8 noundef zeroext %11) #4
  %13 = shl i32 %1, 1
  %14 = shl nuw i32 1, %13
  %15 = trunc i32 %14 to i8
  %16 = shl i32 3, %13
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds %struct.tps6586x_gpio, ptr %4, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @tps6586x_update(ptr noundef %19, i32 noundef 93, i8 noundef zeroext %15, i8 noundef zeroext %17) #4
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tps6586x_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #4
  %5 = getelementptr inbounds %struct.tps6586x_gpio, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = shl i32 %2, %1
  %8 = trunc i32 %7 to i8
  %9 = shl nuw i32 1, %1
  %10 = trunc i32 %9 to i8
  %11 = tail call i32 @tps6586x_update(ptr noundef %6, i32 noundef 94, i8 noundef zeroext %8, i8 noundef zeroext %10) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #4
  store i8 0, ptr %3, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.tps6586x_gpio, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @tps6586x_read(ptr noundef %6, i32 noundef 94, ptr noundef nonnull %3) #4
  %8 = icmp eq i32 %7, 0
  %9 = load i8, ptr %3, align 1
  %10 = zext i8 %9 to i32
  %11 = lshr i32 %10, %1
  %12 = and i32 %11, 1
  %13 = select i1 %8, i32 %12, i32 %7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #4
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_gpio_to_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #4
  %4 = getelementptr inbounds %struct.tps6586x_gpio, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @tps6586x_irq_get_virq(ptr noundef %5, i32 noundef %1) #4
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_update(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }

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
