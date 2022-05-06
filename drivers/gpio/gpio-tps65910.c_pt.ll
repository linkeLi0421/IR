; ModuleID = '/llk/IR/drivers/gpio/gpio-tps65910.c_pt.bc'
source_filename = "../drivers/gpio/gpio-tps65910.c"
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
%struct.tps65910_gpio = type { %struct.gpio_chip, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.71, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.71 = type { ptr }
%struct.tps65910 = type { ptr, ptr, ptr, i32, ptr, i32, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.tps65910_board = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, %struct.tps65910_sleep_keepon_data, [9 x i8], [14 x i32], [14 x ptr] }
%struct.tps65910_sleep_keepon_data = type { i8, [3 x i8] }

@__initcall__kmod_gpio_tps65910__249_181_tps65910_gpio_init4 = internal global ptr @tps65910_gpio_init, section ".initcall4.init", align 4
@tps65910_gpio_driver = internal global %struct.platform_driver { ptr @tps65910_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [14 x i8] c"tps65910-gpio\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"GPIO Sleep setting failed with err %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ti,en-gpio-sleep\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_gpio_tps65910__249_181_tps65910_gpio_init4], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tps65910_gpio_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps65910_gpio_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_gpio_probe(ptr noundef %0) #2 {
  %2 = alloca [9 x i32], align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @dev_fwnode(ptr noundef %5) #6
  tail call void @device_set_node(ptr noundef %3, ptr noundef %11) #6
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 308, i32 noundef 3520) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %89, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.tps65910_gpio, ptr %12, i32 0, i32 1
  store ptr %7, ptr %15, align 4
  %16 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 4
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tps65910, ptr %7, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 2
  store ptr %19, ptr %12, align 4
  %20 = getelementptr inbounds %struct.tps65910, ptr %7, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  switch i32 %21, label %89 [
    i32 0, label %23
    i32 1, label %22
  ]

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %14
  %24 = phi i16 [ 9, %22 ], [ 6, %14 ]
  %25 = phi i32 [ 9, %22 ], [ 6, %14 ]
  %26 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 20
  store i16 %24, ptr %26, align 4
  %27 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 23
  store i8 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 8
  store ptr @tps65910_gpio_input, ptr %28, align 4
  %29 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 9
  store ptr @tps65910_gpio_output, ptr %29, align 4
  %30 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 12
  store ptr @tps65910_gpio_set, ptr %30, align 4
  %31 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 10
  store ptr @tps65910_gpio_get, ptr %31, align 4
  %32 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 2
  store ptr %3, ptr %32, align 4
  %33 = icmp eq ptr %10, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %23
  %35 = load i32, ptr %10, align 4
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 19
  %38 = select i1 %36, i32 -1, i32 %35
  store i32 %38, ptr %37, align 4
  br label %64

39:                                               ; preds = %23
  %40 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 19
  store i32 -1, ptr %40, align 4
  %41 = load ptr, ptr %7, align 4
  %42 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 25
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %87, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.tps65910, ptr %7, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false) #6, !annotation !8
  store i32 -1, ptr %47, align 4
  %48 = load ptr, ptr %7, align 4
  %49 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 25
  %50 = load ptr, ptr %49, align 8
  %51 = call i32 @of_property_read_variable_u32_array(ptr noundef %50, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef %25, i32 noundef 0) #6
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %62

53:                                               ; preds = %53, %45
  %54 = phi i32 [ %60, %53 ], [ 0, %45 ]
  %55 = getelementptr [9 x i32], ptr %2, i32 0, i32 %54
  %56 = load i32, ptr %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = getelementptr %struct.tps65910_board, ptr %47, i32 0, i32 10, i32 %54
  %59 = zext i1 %57 to i8
  store i8 %59, ptr %58, align 1
  %60 = add nuw nsw i32 %54, 1
  %61 = icmp eq i32 %60, %25
  br i1 %61, label %62, label %53

62:                                               ; preds = %53, %45
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #6
  %63 = icmp eq ptr %47, null
  br i1 %63, label %87, label %64

64:                                               ; preds = %62, %34
  %65 = phi ptr [ %47, %62 ], [ %10, %34 ]
  %66 = getelementptr inbounds %struct.gpio_chip, ptr %12, i32 0, i32 20
  %67 = load i16, ptr %66, align 4
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.tps65910, ptr %7, i32 0, i32 2
  %71 = zext i16 %67 to i32
  br label %72

72:                                               ; preds = %84, %69
  %73 = phi i32 [ 0, %69 ], [ %85, %84 ]
  %74 = getelementptr %struct.tps65910_board, ptr %65, i32 0, i32 10, i32 %73
  %75 = load i8, ptr %74, align 1, !range !9
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = load ptr, ptr %70, align 4
  %79 = add nuw nsw i32 %73, 96
  %80 = call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef %79, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %83, ptr noundef nonnull @.str.1, i32 noundef %80) #7
  br label %84

84:                                               ; preds = %82, %77, %72
  %85 = add nuw nsw i32 %73, 1
  %86 = icmp ult i32 %85, %71
  br i1 %86, label %72, label %87

87:                                               ; preds = %84, %64, %62, %39
  %88 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %3, ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef null, ptr noundef null) #6
  br label %89

89:                                               ; preds = %87, %14, %1
  %90 = phi i32 [ %88, %87 ], [ -12, %1 ], [ -22, %14 ]
  ret i32 %90
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_gpio_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.tps65910_gpio, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tps65910, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = add i32 %1, 96
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %8, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_gpio_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.tps65910_gpio, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %8 = getelementptr inbounds %struct.tps65910_gpio, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ne i32 %2, 0
  %11 = getelementptr inbounds %struct.tps65910, ptr %9, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = add i32 %1, 96
  %14 = zext i1 %10 to i32
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %13, i32 noundef 1, i32 noundef %14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %16 = getelementptr inbounds %struct.tps65910, ptr %6, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %13, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tps65910_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.tps65910_gpio, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne i32 %2, 0
  %8 = getelementptr inbounds %struct.tps65910, ptr %6, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = add i32 %1, 96
  %11 = zext i1 %7 to i32
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %10, i32 noundef 1, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.tps65910_gpio, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.tps65910, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = add i32 %1, 96
  %10 = call i32 @regmap_read(ptr noundef %8, i32 noundef %9, ptr noundef nonnull %3) #6
  %11 = load i32, ptr %3, align 4
  %12 = lshr i32 %11, 1
  %13 = and i32 %12, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %13
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
!9 = !{i8 0, i8 2}
