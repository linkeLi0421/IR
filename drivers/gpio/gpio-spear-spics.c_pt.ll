; ModuleID = '/llk/IR/drivers/gpio/gpio-spear-spics.c_pt.bc'
source_filename = "../drivers/gpio/gpio-spear-spics.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.spear_spics = type { ptr, i32, i32, i32, i32, i32, i32, i32, %struct.gpio_chip }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }

@__initcall__kmod_gpio_spear_spics__206_187_spics_gpio_init4 = internal global ptr @spics_gpio_init, section ".initcall4.init", align 4
@spics_gpio_driver = internal global %struct.platform_driver { ptr @spics_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spics_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [17 x i8] c"spear-spics-gpio\00", align 1
@spics_gpio_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,spear-spics-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"st-spics,peripcfg-reg\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"st-spics,sw-enable-bit\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"st-spics,cs-value-bit\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"st-spics,cs-enable-mask\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"st-spics,cs-enable-shift\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"DT probe failed\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_gpio_spear_spics__206_187_spics_gpio_init4], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @spics_gpio_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @spics_gpio_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spics_gpio_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 336, i32 noundef 3520) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  store ptr %8, ptr %5, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = ptrtoint ptr %8 to i32
  br label %54

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.spear_spics, ptr %5, i32 0, i32 1
  %14 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef %13, i32 noundef 1, i32 noundef 0) #5
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %53

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.spear_spics, ptr %5, i32 0, i32 2
  %18 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef %17, i32 noundef 1, i32 noundef 0) #5
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.spear_spics, ptr %5, i32 0, i32 3
  %22 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef %21, i32 noundef 1, i32 noundef 0) #5
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.spear_spics, ptr %5, i32 0, i32 4
  %26 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef %25, i32 noundef 1, i32 noundef 0) #5
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.spear_spics, ptr %5, i32 0, i32 5
  %30 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef %29, i32 noundef 1, i32 noundef 0) #5
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.spear_spics, ptr %5, i32 0, i32 8
  %34 = getelementptr inbounds %struct.spear_spics, ptr %5, i32 0, i32 8, i32 20
  store i16 4, ptr %34, align 4
  %35 = getelementptr inbounds %struct.spear_spics, ptr %5, i32 0, i32 8, i32 19
  store i32 -1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.spear_spics, ptr %5, i32 0, i32 8, i32 5
  store ptr @spics_request, ptr %36, align 4
  %37 = getelementptr inbounds %struct.spear_spics, ptr %5, i32 0, i32 8, i32 6
  store ptr @spics_free, ptr %37, align 4
  %38 = getelementptr inbounds %struct.spear_spics, ptr %5, i32 0, i32 8, i32 8
  store ptr @spics_direction_input, ptr %38, align 4
  %39 = getelementptr inbounds %struct.spear_spics, ptr %5, i32 0, i32 8, i32 9
  store ptr @spics_direction_output, ptr %39, align 4
  %40 = getelementptr inbounds %struct.spear_spics, ptr %5, i32 0, i32 8, i32 10
  store ptr @spics_get_value, ptr %40, align 4
  %41 = getelementptr inbounds %struct.spear_spics, ptr %5, i32 0, i32 8, i32 12
  store ptr @spics_set_value, ptr %41, align 4
  %42 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load ptr, ptr %2, align 4
  br label %47

47:                                               ; preds = %45, %32
  %48 = phi ptr [ %46, %45 ], [ %43, %32 ]
  store ptr %48, ptr %33, align 4
  %49 = getelementptr inbounds %struct.spear_spics, ptr %5, i32 0, i32 8, i32 2
  store ptr %2, ptr %49, align 4
  %50 = getelementptr inbounds %struct.spear_spics, ptr %5, i32 0, i32 8, i32 4
  store ptr null, ptr %50, align 4
  %51 = getelementptr inbounds %struct.spear_spics, ptr %5, i32 0, i32 7
  store i32 -1, ptr %51, align 4
  %52 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %2, ptr noundef %33, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #5
  br label %54

53:                                               ; preds = %28, %24, %20, %16, %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #6
  br label %54

54:                                               ; preds = %53, %47, %10, %1
  %55 = phi i32 [ %11, %10 ], [ -22, %53 ], [ %52, %47 ], [ -12, %1 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spics_request(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.spear_spics, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 4
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.spear_spics, ptr %3, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  %14 = getelementptr inbounds %struct.spear_spics, ptr %3, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = shl nuw i32 1, %15
  %17 = or i32 %16, %13
  %18 = getelementptr inbounds %struct.spear_spics, ptr %3, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = shl nuw i32 1, %19
  %21 = or i32 %17, %20
  %22 = load ptr, ptr %3, align 4
  %23 = load i32, ptr %10, align 4
  %24 = getelementptr i8, ptr %22, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #5, !srcloc !9
  br label %25

25:                                               ; preds = %8, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spics_free(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.spear_spics, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  store i32 %6, ptr %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.spear_spics, ptr %3, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  %14 = getelementptr inbounds %struct.spear_spics, ptr %3, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = shl nuw i32 1, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %13, %17
  %19 = load ptr, ptr %3, align 4
  %20 = load i32, ptr %10, align 4
  %21 = getelementptr i8, ptr %19, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %18) #5, !srcloc !9
  br label %22

22:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @spics_direction_input(ptr nocapture noundef readnone %0, i32 noundef %1) #3 {
  ret i32 -6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spics_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.spear_spics, ptr %4, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  %10 = getelementptr inbounds %struct.spear_spics, ptr %4, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %23, label %13

13:                                               ; preds = %3
  store i32 %1, ptr %10, align 4
  %14 = getelementptr inbounds %struct.spear_spics, ptr %4, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.spear_spics, ptr %4, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %15, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %9, %19
  %21 = shl i32 %1, %17
  %22 = or i32 %20, %21
  br label %23

23:                                               ; preds = %13, %3
  %24 = phi i32 [ %22, %13 ], [ %9, %3 ]
  %25 = getelementptr inbounds %struct.spear_spics, ptr %4, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = shl nuw i32 1, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  %30 = shl i32 %2, %26
  %31 = or i32 %29, %30
  %32 = load ptr, ptr %4, align 4
  %33 = load i32, ptr %6, align 4
  %34 = getelementptr i8, ptr %32, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @spics_get_value(ptr nocapture noundef readnone %0, i32 noundef %1) #3 {
  ret i32 -6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spics_set_value(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.spear_spics, ptr %4, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  %10 = getelementptr inbounds %struct.spear_spics, ptr %4, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %23, label %13

13:                                               ; preds = %3
  store i32 %1, ptr %10, align 4
  %14 = getelementptr inbounds %struct.spear_spics, ptr %4, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.spear_spics, ptr %4, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %15, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %9, %19
  %21 = shl i32 %1, %17
  %22 = or i32 %20, %21
  br label %23

23:                                               ; preds = %13, %3
  %24 = phi i32 [ %22, %13 ], [ %9, %3 ]
  %25 = getelementptr inbounds %struct.spear_spics, ptr %4, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = shl nuw i32 1, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  %30 = shl i32 %2, %26
  %31 = or i32 %29, %30
  %32 = load ptr, ptr %4, align 4
  %33 = load i32, ptr %6, align 4
  %34 = getelementptr i8, ptr %32, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #5, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 3678303}
!9 = !{i64 3677885}
