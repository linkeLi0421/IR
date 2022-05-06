; ModuleID = '/llk/IR/drivers/gpio/gpio-pl061.c_pt.bc'
source_filename = "../drivers/gpio/gpio-pl061.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.pl061 = type { %struct.raw_spinlock, ptr, %struct.gpio_chip, %struct.irq_chip, i32, %struct.pl061_context_save_regs }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.71, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.71 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pl061_context_save_regs = type { i8, i8, i8, i8, i8, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_pl061__247_424_pl061_gpio_driver_init6 = internal global ptr @pl061_gpio_driver_init, section ".initcall6.init", align 4
@pl061_gpio_driver = internal global %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl061_dev_pm_ops, ptr null, ptr null }, ptr @pl061_probe, ptr null, ptr null, ptr @pl061_ids }, align 4
@__exitcall_pl061_gpio_driver_exit = internal global ptr @pl061_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file248 = internal constant [40 x i8] c"gpio_pl061.file=drivers/gpio/gpio-pl061\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [26 x i8] c"gpio_pl061.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"pl061_gpio\00", align 1
@pl061_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pl061_suspend, ptr @pl061_resume, ptr @pl061_suspend, ptr null, ptr null, ptr @pl061_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pl061_ids = internal constant [2 x %struct.amba_id] [%struct.amba_id { i32 266337, i32 1048575, ptr null }, %struct.amba_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"IRQ support disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"PL061 GPIO chip registered\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"trying to configure line %d for both level and edge detection, choose one!\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"no trigger selected for line %d\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_pl061_gpio_driver_exit, ptr @__initcall__kmod_gpio_pl061__247_424_pl061_gpio_driver_init6, ptr @pl061_gpio_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pl061_gpio_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @amba_driver_register(ptr noundef nonnull @pl061_gpio_driver) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pl061_gpio_driver_exit() #0 section ".exit.text" {
  tail call void @amba_driver_unregister(ptr noundef nonnull @pl061_gpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl061_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 460, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %60, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1
  %7 = tail call ptr @devm_ioremap_resource(ptr noundef %0, ptr noundef %6) #5
  %8 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = ptrtoint ptr %7 to i32
  br label %60

12:                                               ; preds = %5
  store i32 0, ptr %3, align 4
  %13 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 2
  %14 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 2, i32 5
  store ptr @gpiochip_generic_request, ptr %14, align 4
  %15 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 2, i32 6
  store ptr @gpiochip_generic_free, ptr %15, align 4
  %16 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 2, i32 19
  store i32 -1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 2, i32 7
  store ptr @pl061_get_direction, ptr %17, align 4
  %18 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 2, i32 8
  store ptr @pl061_direction_input, ptr %18, align 4
  %19 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 2, i32 9
  store ptr @pl061_direction_output, ptr %19, align 4
  %20 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 2, i32 10
  store ptr @pl061_get_value, ptr %20, align 4
  %21 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 2, i32 12
  store ptr @pl061_set_value, ptr %21, align 4
  %22 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 2, i32 20
  store i16 8, ptr %22, align 4
  %23 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 4
  br label %28

28:                                               ; preds = %26, %12
  %29 = phi ptr [ %27, %26 ], [ %24, %12 ]
  store ptr %29, ptr %13, align 4
  %30 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 2, i32 2
  store ptr %0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 2, i32 4
  store ptr null, ptr %31, align 4
  %32 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 3
  %33 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 3, i32 1
  store ptr %29, ptr %33, align 4
  %34 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 3, i32 6
  store ptr @pl061_irq_ack, ptr %34, align 4
  %35 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 3, i32 7
  store ptr @pl061_irq_mask, ptr %35, align 4
  %36 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 3, i32 9
  store ptr @pl061_irq_unmask, ptr %36, align 4
  %37 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 3, i32 13
  store ptr @pl061_irq_type, ptr %37, align 4
  %38 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 3, i32 14
  store ptr @pl061_irq_set_wake, ptr %38, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %39 = load ptr, ptr %8, align 4
  %40 = getelementptr i8, ptr %39, i32 1040
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %40, i8 0) #5, !srcloc !9
  %41 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 7
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.1) #6
  br label %45

45:                                               ; preds = %44, %28
  %46 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 4
  store i32 %42, ptr %46, align 4
  %47 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 2, i32 37
  store ptr %32, ptr %47, align 4
  %48 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 2, i32 37, i32 13
  store ptr @pl061_irq_handler, ptr %48, align 4
  %49 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 2, i32 37, i32 15
  store i32 1, ptr %49, align 4
  %50 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 4, i32 noundef 3520) #5
  %51 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 2, i32 37, i32 16
  store ptr %50, ptr %51, align 4
  %52 = icmp eq ptr %50, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %45
  store i32 %42, ptr %50, align 4
  %54 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 2, i32 37, i32 10
  store i32 0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 2, i32 37, i32 9
  store ptr @handle_bad_irq, ptr %55, align 4
  %56 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %0, ptr noundef %13, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #5
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %3, ptr %59, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.2) #6
  br label %60

60:                                               ; preds = %58, %53, %45, %10, %2
  %61 = phi i32 [ %11, %10 ], [ 0, %58 ], [ -12, %2 ], [ -12, %45 ], [ %56, %53 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl061_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 5
  store i8 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 1024
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %9 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 5, i32 1
  store i8 %8, ptr %9, align 1
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 1028
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %13 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 5, i32 2
  store i8 %12, ptr %13, align 2
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr i8, ptr %14, i32 1032
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %17 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 5, i32 3
  store i8 %16, ptr %17, align 1
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 1036
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %19) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %21 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 5, i32 4
  store i8 %20, ptr %21, align 4
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %22, i32 1040
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %23) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %25 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 5, i32 5
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 2
  br label %27

27:                                               ; preds = %47, %1
  %28 = phi i32 [ 0, %1 ], [ %48, %47 ]
  %29 = load i8, ptr %9, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 1, %28
  %32 = and i32 %31, %30
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %27
  %35 = tail call ptr @gpiochip_get_data(ptr noundef %26) #5
  %36 = getelementptr inbounds %struct.pl061, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = shl i32 4, %28
  %39 = getelementptr i8, ptr %37, i32 %38
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %39) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %41 = icmp ne i8 %40, 0
  %42 = zext i1 %41 to i32
  %43 = shl nuw nsw i32 %42, %28
  %44 = load i8, ptr %4, align 4
  %45 = trunc i32 %43 to i8
  %46 = or i8 %44, %45
  store i8 %46, ptr %4, align 4
  br label %47

47:                                               ; preds = %34, %27
  %48 = add nuw nsw i32 %28, 1
  %49 = icmp eq i32 %48, 8
  br i1 %49, label %50, label %27

50:                                               ; preds = %47
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl061_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 5, i32 1
  %5 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 5
  %6 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 2
  br label %7

7:                                                ; preds = %48, %1
  %8 = phi i32 [ 0, %1 ], [ %49, %48 ]
  %9 = load i8, ptr %4, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 1, %8
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %7
  %15 = load i8, ptr %5, align 4
  %16 = zext i8 %15 to i32
  %17 = tail call ptr @gpiochip_get_data(ptr noundef %6) #5
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %19 = lshr i32 %16, %8
  %20 = and i32 %19, 1
  %21 = shl nuw nsw i32 %20, %8
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.pl061, ptr %17, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = shl i32 4, %8
  %26 = getelementptr i8, ptr %24, i32 %25
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 %22) #5, !srcloc !9
  %27 = load ptr, ptr %23, align 4
  %28 = getelementptr i8, ptr %27, i32 1024
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %28) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %30 = trunc i32 %11 to i8
  %31 = or i8 %29, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %32 = load ptr, ptr %23, align 4
  %33 = getelementptr i8, ptr %32, i32 1024
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 %31) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %34 = load ptr, ptr %23, align 4
  %35 = getelementptr i8, ptr %34, i32 %25
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 %22) #5, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %18) #5
  br label %48

36:                                               ; preds = %7
  %37 = tail call ptr @gpiochip_get_data(ptr noundef %6) #5
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #5
  %39 = getelementptr inbounds %struct.pl061, ptr %37, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 1024
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %41) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %43 = trunc i32 %11 to i8
  %44 = xor i8 %43, -1
  %45 = and i8 %42, %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %46 = load ptr, ptr %39, align 4
  %47 = getelementptr i8, ptr %46, i32 1024
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %47, i8 %45) #5, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %38) #5
  br label %48

48:                                               ; preds = %36, %14
  %49 = add nuw nsw i32 %8, 1
  %50 = icmp eq i32 %49, 8
  br i1 %50, label %51, label %7

51:                                               ; preds = %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %52 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 5, i32 2
  %53 = load i8, ptr %52, align 2
  %54 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 1028
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %56, i8 %53) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %57 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 5, i32 3
  %58 = load i8, ptr %57, align 1
  %59 = load ptr, ptr %54, align 4
  %60 = getelementptr i8, ptr %59, i32 1032
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %60, i8 %58) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %61 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 5, i32 4
  %62 = load i8, ptr %61, align 4
  %63 = load ptr, ptr %54, align 4
  %64 = getelementptr i8, ptr %63, i32 1036
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %64, i8 %62) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %65 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 5, i32 5
  %66 = load i8, ptr %65, align 1
  %67 = load ptr, ptr %54, align 4
  %68 = getelementptr i8, ptr %67, i32 1040
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %68, i8 %66) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl061_get_value(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = add i32 %1, 2
  %7 = shl nuw i32 1, %6
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl061_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %6 = icmp ne i32 %2, 0
  %7 = zext i1 %6 to i32
  %8 = shl nuw i32 %7, %1
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds %struct.pl061, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = add i32 %1, 2
  %13 = shl nuw i32 1, %12
  %14 = getelementptr i8, ptr %11, i32 %13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %9) #5, !srcloc !9
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr i8, ptr %15, i32 1024
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %18 = shl nuw i32 1, %1
  %19 = trunc i32 %18 to i8
  %20 = or i8 %17, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr i8, ptr %21, i32 1024
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 %20) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr i8, ptr %23, i32 %13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 %9) #5, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl061_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 1024
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %9 = shl nuw i32 1, %1
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, -1
  %12 = and i8 %8, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr i8, ptr %13, i32 1024
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %12) #5, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl061_get_direction(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.pl061, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1024
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !27
  %8 = zext i8 %7 to i32
  %9 = xor i32 %8, -1
  %10 = lshr i32 %9, %1
  %11 = and i32 %10, 1
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl061_set_value(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %5 = icmp ne i32 %2, 0
  %6 = zext i1 %5 to i32
  %7 = shl nuw i32 %6, %1
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds %struct.pl061, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = add i32 %1, 2
  %12 = shl nuw i32 1, %11
  %13 = getelementptr i8, ptr %10, i32 %12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %8) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl061_irq_ack(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 7
  %8 = shl nuw nsw i32 1, %7
  %9 = trunc i32 %8 to i8
  tail call void @_raw_spin_lock(ptr noundef %4) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %10 = getelementptr inbounds %struct.pl061, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 1052
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 %9) #5, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !30
  %13 = load i16, ptr %4, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl061_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 7
  %8 = shl nuw nsw i32 1, %7
  tail call void @_raw_spin_lock(ptr noundef %4) #5
  %9 = getelementptr inbounds %struct.pl061, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 1040
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !34
  %13 = trunc i32 %8 to i8
  %14 = xor i8 %13, -1
  %15 = and i8 %12, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr i8, ptr %16, i32 1040
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 %15) #5, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !30
  %18 = load i16, ptr %4, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl061_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 7
  %8 = shl nuw nsw i32 1, %7
  tail call void @_raw_spin_lock(ptr noundef %4) #5
  %9 = getelementptr inbounds %struct.pl061, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 1040
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !36
  %13 = trunc i32 %8 to i8
  %14 = or i8 %12, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr i8, ptr %15, i32 1040
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 %14) #5, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !30
  %17 = load i16, ptr %4, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl061_irq_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = shl nuw i32 1, %7
  %9 = icmp ugt i32 %7, 7
  br i1 %9, label %89, label %10

10:                                               ; preds = %2
  %11 = and i32 %1, 12
  %12 = icmp eq i32 %11, 0
  %13 = and i32 %1, 3
  %14 = icmp eq i32 %13, 0
  %15 = or i1 %12, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.gpio_chip, ptr %4, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.3, i32 noundef %7) #6
  br label %89

19:                                               ; preds = %10
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %21 = getelementptr inbounds %struct.pl061, ptr %5, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 1036
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %23) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !38
  %25 = load ptr, ptr %21, align 4
  %26 = getelementptr i8, ptr %25, i32 1028
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %26) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !39
  %28 = load ptr, ptr %21, align 4
  %29 = getelementptr i8, ptr %28, i32 1032
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %29) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !40
  br i1 %12, label %44, label %31

31:                                               ; preds = %19
  %32 = and i32 %1, 4
  %33 = icmp eq i32 %32, 0
  %34 = trunc i32 %8 to i8
  %35 = xor i8 %34, -1
  %36 = and i8 %30, %35
  %37 = or i8 %27, %34
  %38 = or i8 %24, %34
  %39 = and i8 %24, %35
  %40 = select i1 %33, i8 %39, i8 %38
  %41 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.irq_desc, ptr %42, i32 0, i32 3
  store ptr @handle_level_irq, ptr %43, align 4
  br label %79

44:                                               ; preds = %19
  %45 = icmp eq i32 %13, 3
  br i1 %45, label %46, label %54

46:                                               ; preds = %44
  %47 = trunc i32 %8 to i8
  %48 = xor i8 %47, -1
  %49 = and i8 %27, %48
  %50 = or i8 %30, %47
  %51 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.irq_desc, ptr %52, i32 0, i32 3
  store ptr @handle_edge_irq, ptr %53, align 4
  br label %79

54:                                               ; preds = %44
  br i1 %14, label %68, label %55

55:                                               ; preds = %54
  %56 = and i32 %1, 1
  %57 = icmp eq i32 %56, 0
  %58 = trunc i32 %8 to i8
  %59 = xor i8 %58, -1
  %60 = and i8 %27, %59
  %61 = and i8 %30, %59
  %62 = or i8 %24, %58
  %63 = and i8 %24, %59
  %64 = select i1 %57, i8 %63, i8 %62
  %65 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.irq_desc, ptr %66, i32 0, i32 3
  store ptr @handle_edge_irq, ptr %67, align 4
  br label %79

68:                                               ; preds = %54
  %69 = trunc i32 %8 to i8
  %70 = xor i8 %69, -1
  %71 = and i8 %27, %70
  %72 = and i8 %30, %70
  %73 = and i8 %24, %70
  %74 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.irq_desc, ptr %75, i32 0, i32 3
  store ptr @handle_bad_irq, ptr %76, align 4
  %77 = getelementptr inbounds %struct.gpio_chip, ptr %4, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %78, ptr noundef nonnull @.str.4, i32 noundef %7) #6
  br label %79

79:                                               ; preds = %68, %55, %46, %31
  %80 = phi i8 [ %40, %31 ], [ %24, %46 ], [ %64, %55 ], [ %73, %68 ]
  %81 = phi i8 [ %36, %31 ], [ %50, %46 ], [ %61, %55 ], [ %72, %68 ]
  %82 = phi i8 [ %37, %31 ], [ %49, %46 ], [ %60, %55 ], [ %71, %68 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %83 = load ptr, ptr %21, align 4
  %84 = getelementptr i8, ptr %83, i32 1028
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %84, i8 %82) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %85 = load ptr, ptr %21, align 4
  %86 = getelementptr i8, ptr %85, i32 1032
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %86, i8 %81) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %87 = load ptr, ptr %21, align 4
  %88 = getelementptr i8, ptr %87, i32 1036
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %88, i8 %80) #5, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %20) #5
  br label %89

89:                                               ; preds = %79, %16, %2
  %90 = phi i32 [ -22, %16 ], [ 0, %79 ], [ -22, %2 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl061_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.pl061, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef %1) #5
  ret i32 %8
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl061_irq_handler(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  %3 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %13(ptr noundef %16) #5
  br label %25

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %19(ptr noundef %20) #5
  %21 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void %22(ptr noundef %20) #5
  br label %25

25:                                               ; preds = %24, %17, %15, %1
  %26 = getelementptr inbounds %struct.pl061, ptr %5, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 1048
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %28) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !44
  %30 = zext i8 %29 to i32
  store i32 %30, ptr %2, align 4
  %31 = icmp eq i8 %29, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %25
  %33 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 8, i32 noundef 0) #5
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.gpio_chip, ptr %4, i32 0, i32 37, i32 1
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi i32 [ %33, %35 ], [ %42, %37 ]
  %39 = load ptr, ptr %36, align 4
  %40 = call i32 @generic_handle_domain_irq(ptr noundef %39, i32 noundef %38) #5
  %41 = add nsw i32 %38, 1
  %42 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 8, i32 noundef %41) #5
  %43 = icmp slt i32 %42, 8
  br i1 %43, label %37, label %44

44:                                               ; preds = %37, %32, %25
  %45 = load ptr, ptr %8, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 9
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi ptr [ %49, %47 ], [ %45, %44 ]
  %52 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %51(ptr noundef %52) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

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
!8 = !{i64 2153615369}
!9 = !{i64 1408237}
!10 = !{i64 1408632}
!11 = !{i64 2153617067}
!12 = !{i64 2153617280}
!13 = !{i64 2153617493}
!14 = !{i64 2153617706}
!15 = !{i64 2153617919}
!16 = !{i64 2153606469}
!17 = !{i64 2153604783}
!18 = !{i64 2153605102}
!19 = !{i64 2153605379}
!20 = !{i64 2153605760}
!21 = !{i64 2153603647}
!22 = !{i64 2153603924}
!23 = !{i64 2153618378}
!24 = !{i64 2153618673}
!25 = !{i64 2153618969}
!26 = !{i64 2153619264}
!27 = !{i64 2153603114}
!28 = !{i64 2153606789}
!29 = !{i64 2153614521}
!30 = !{i64 2148830222}
!31 = !{i64 2148826046}
!32 = !{i64 2148826121, i64 2148826148, i64 2148826195, i64 2148826217, i64 2148826245, i64 2148826265}
!33 = !{i64 2148853225}
!34 = !{i64 2153613196}
!35 = !{i64 2153613392}
!36 = !{i64 2153613868}
!37 = !{i64 2153614064}
!38 = !{i64 2153608324}
!39 = !{i64 2153608537}
!40 = !{i64 2153608750}
!41 = !{i64 2153611523}
!42 = !{i64 2153611780}
!43 = !{i64 2153612038}
!44 = !{i64 2153612554}
