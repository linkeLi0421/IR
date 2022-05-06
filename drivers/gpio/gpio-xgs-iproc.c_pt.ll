; ModuleID = '/llk/IR/drivers/gpio/gpio-xgs-iproc.c_pt.bc'
source_filename = "../drivers/gpio/gpio-xgs-iproc.c"
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
%struct.iproc_gpio_chip = type { %struct.irq_chip, %struct.gpio_chip, %struct.spinlock, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_xgs_iproc__210_316_bcm_iproc_gpio_driver_init6 = internal global ptr @bcm_iproc_gpio_driver_init, section ".initcall6.init", align 4
@bcm_iproc_gpio_driver = internal global %struct.platform_driver { ptr @iproc_gpio_probe, ptr @iproc_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_iproc_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bcm_iproc_gpio_driver_exit = internal global ptr @bcm_iproc_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description211 = internal constant [49 x i8] c"gpio_xgs_iproc.description=XGS IPROC GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file212 = internal constant [48 x i8] c"gpio_xgs_iproc.file=drivers/gpio/gpio-xgs-iproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license213 = internal constant [30 x i8] c"gpio_xgs_iproc.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"iproc-xgs-gpio\00", align 1
@bcm_iproc_gpio_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-gpio-cca\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unable to init GPIO chip\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Fail to request IRQ%d: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unable to add GPIO chip\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_file212, ptr @__UNIQUE_ID_license213, ptr @__exitcall_bcm_iproc_gpio_driver_exit, ptr @__initcall__kmod_gpio_xgs_iproc__210_316_bcm_iproc_gpio_driver_init6, ptr @bcm_iproc_gpio_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm_iproc_gpio_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_iproc_gpio_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm_iproc_gpio_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_iproc_gpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_gpio_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 456, i32 noundef 3520) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %79, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.iproc_gpio_chip, ptr %6, i32 0, i32 3
  store ptr %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %10, align 8
  %11 = getelementptr inbounds %struct.iproc_gpio_chip, ptr %6, i32 0, i32 2
  store i32 0, ptr %11, align 4
  %12 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %13 = getelementptr inbounds %struct.iproc_gpio_chip, ptr %6, i32 0, i32 4
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = ptrtoint ptr %12 to i32
  br label %79

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.iproc_gpio_chip, ptr %6, i32 0, i32 1
  %19 = getelementptr i8, ptr %12, i32 4
  %20 = getelementptr i8, ptr %12, i32 8
  %21 = tail call i32 @bgpio_init(ptr noundef %18, ptr noundef %3, i32 noundef 4, ptr noundef %12, ptr noundef %19, ptr noundef null, ptr noundef %20, ptr noundef null, i32 noundef 0) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #6
  br label %79

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load ptr, ptr %3, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi ptr [ %29, %28 ], [ %26, %24 ]
  store ptr %31, ptr %18, align 4
  %32 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, ptr %2, align 4
  %36 = trunc i32 %35 to i16
  %37 = getelementptr inbounds %struct.iproc_gpio_chip, ptr %6, i32 0, i32 1, i32 20
  store i16 %36, ptr %37, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %75

41:                                               ; preds = %38
  %42 = load ptr, ptr %25, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load ptr, ptr %3, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi ptr [ %45, %44 ], [ %42, %41 ]
  %48 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 1
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 6
  store ptr @iproc_gpio_irq_ack, ptr %49, align 4
  %50 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 7
  store ptr @iproc_gpio_irq_mask, ptr %50, align 4
  %51 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 9
  store ptr @iproc_gpio_irq_unmask, ptr %51, align 4
  %52 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 13
  store ptr @iproc_gpio_irq_set_type, ptr %52, align 4
  %53 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #5
  %54 = getelementptr inbounds %struct.iproc_gpio_chip, ptr %6, i32 0, i32 5
  store ptr %53, ptr %54, align 4
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = ptrtoint ptr %53 to i32
  br label %79

58:                                               ; preds = %46
  %59 = getelementptr i8, ptr %53, i32 36
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #5, !srcloc !9
  %61 = or i32 %60, 1
  %62 = load ptr, ptr %54, align 4
  %63 = getelementptr i8, ptr %62, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #5, !srcloc !10
  %64 = load ptr, ptr %18, align 4
  %65 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %39, ptr noundef nonnull @iproc_gpio_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %64, ptr noundef %18) #5
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %39, i32 noundef %65) #6
  br label %79

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.iproc_gpio_chip, ptr %6, i32 0, i32 1, i32 37
  store ptr %6, ptr %69, align 4
  %70 = getelementptr inbounds %struct.iproc_gpio_chip, ptr %6, i32 0, i32 1, i32 37, i32 13
  store ptr null, ptr %70, align 4
  %71 = getelementptr inbounds %struct.iproc_gpio_chip, ptr %6, i32 0, i32 1, i32 37, i32 15
  store i32 0, ptr %71, align 4
  %72 = getelementptr inbounds %struct.iproc_gpio_chip, ptr %6, i32 0, i32 1, i32 37, i32 16
  store ptr null, ptr %72, align 4
  %73 = getelementptr inbounds %struct.iproc_gpio_chip, ptr %6, i32 0, i32 1, i32 37, i32 10
  store i32 0, ptr %73, align 4
  %74 = getelementptr inbounds %struct.iproc_gpio_chip, ptr %6, i32 0, i32 1, i32 37, i32 9
  store ptr @handle_simple_irq, ptr %74, align 4
  br label %75

75:                                               ; preds = %68, %38
  %76 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %3, ptr noundef %18, ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #5
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #6
  br label %79

79:                                               ; preds = %78, %75, %67, %56, %23, %15, %1
  %80 = phi i32 [ %16, %15 ], [ %21, %23 ], [ %76, %78 ], [ -12, %1 ], [ 0, %75 ], [ %57, %56 ], [ %65, %67 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_gpio_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iproc_gpio_chip, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 36
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !9
  %12 = and i32 %11, -2
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #5, !srcloc !10
  br label %15

15:                                               ; preds = %9, %5, %1
  %16 = phi i32 [ -19, %1 ], [ 0, %9 ], [ 0, %5 ]
  ret i32 %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iproc_gpio_irq_ack(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %3, i32 304
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #5
  %10 = tail call ptr @irq_get_irq_data(i32 noundef %7) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.irq_data, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = shl nuw i32 1, %5
  %20 = getelementptr i8, ptr %3, i32 312
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %19) #5, !srcloc !10
  br label %23

23:                                               ; preds = %18, %12, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iproc_gpio_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %3, i32 304
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #5
  %10 = tail call ptr @irq_get_irq_data(i32 noundef %7) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.irq_data, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %12, %1
  %19 = phi i1 [ %17, %12 ], [ true, %1 ]
  %20 = getelementptr i8, ptr %3, i32 312
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 28
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !9
  %24 = load ptr, ptr %20, align 4
  %25 = getelementptr i8, ptr %24, i32 20
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !9
  %27 = shl nuw i32 1, %5
  %28 = xor i32 %27, -1
  br i1 %19, label %33, label %29

29:                                               ; preds = %18
  %30 = and i32 %23, %28
  %31 = load ptr, ptr %20, align 4
  %32 = getelementptr i8, ptr %31, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #5, !srcloc !10
  br label %37

33:                                               ; preds = %18
  %34 = and i32 %26, %28
  %35 = load ptr, ptr %20, align 4
  %36 = getelementptr i8, ptr %35, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #5, !srcloc !10
  br label %37

37:                                               ; preds = %33, %29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iproc_gpio_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %3, i32 304
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #5
  %10 = tail call ptr @irq_get_irq_data(i32 noundef %7) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.irq_data, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %12, %1
  %19 = phi i1 [ %17, %12 ], [ true, %1 ]
  %20 = getelementptr i8, ptr %3, i32 312
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 28
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !9
  %24 = load ptr, ptr %20, align 4
  %25 = getelementptr i8, ptr %24, i32 20
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !9
  %27 = shl nuw i32 1, %5
  br i1 %19, label %32, label %28

28:                                               ; preds = %18
  %29 = or i32 %23, %27
  %30 = load ptr, ptr %20, align 4
  %31 = getelementptr i8, ptr %30, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #5, !srcloc !10
  br label %36

32:                                               ; preds = %18
  %33 = or i32 %26, %27
  %34 = load ptr, ptr %20, align 4
  %35 = getelementptr i8, ptr %34, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #5, !srcloc !10
  br label %36

36:                                               ; preds = %32, %28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_gpio_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %4, i32 304
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #5
  %11 = and i32 %1, 15
  switch i32 %11, label %62 [
    i32 1, label %12
    i32 2, label %22
    i32 4, label %31
    i32 8, label %41
  ]

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %4, i32 312
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 36
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !9
  %17 = shl nuw i32 1, %6
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr i8, ptr %20, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #5, !srcloc !10
  br label %50

22:                                               ; preds = %2
  %23 = getelementptr i8, ptr %4, i32 312
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 36
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !9
  %27 = shl nuw i32 1, %6
  %28 = or i32 %26, %27
  %29 = load ptr, ptr %23, align 4
  %30 = getelementptr i8, ptr %29, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #5, !srcloc !10
  br label %50

31:                                               ; preds = %2
  %32 = getelementptr i8, ptr %4, i32 312
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 16
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !9
  %36 = shl nuw i32 1, %6
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = load ptr, ptr %32, align 4
  %40 = getelementptr i8, ptr %39, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #5, !srcloc !10
  br label %50

41:                                               ; preds = %2
  %42 = getelementptr i8, ptr %4, i32 312
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 16
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #5, !srcloc !9
  %46 = shl nuw i32 1, %6
  %47 = or i32 %45, %46
  %48 = load ptr, ptr %42, align 4
  %49 = getelementptr i8, ptr %48, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #5, !srcloc !10
  br label %50

50:                                               ; preds = %41, %31, %22, %12
  %51 = and i32 %1, 12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = and i32 %1, 3
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53, %50
  %57 = phi ptr [ @handle_level_irq, %50 ], [ @handle_edge_irq, %53 ]
  %58 = tail call ptr @irq_get_irq_data(i32 noundef %8) #5
  %59 = getelementptr inbounds %struct.irq_data, ptr %58, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.irq_desc, ptr %60, i32 0, i32 3
  store ptr %57, ptr %61, align 4
  br label %62

62:                                               ; preds = %56, %53, %2
  %63 = phi i32 [ 0, %53 ], [ -22, %2 ], [ 0, %56 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #5
  ret i32 %63
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_gpio_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4
  %4 = getelementptr i8, ptr %1, i32 316
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 32
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !9
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %50, label %10

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %1, i32 312
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 28
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !9
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr i8, ptr %15, i32 24
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !9
  %18 = and i32 %17, %14
  %19 = load ptr, ptr %11, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !9
  %21 = load ptr, ptr %11, align 4
  %22 = getelementptr i8, ptr %21, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !9
  %24 = xor i32 %23, %20
  %25 = load ptr, ptr %11, align 4
  %26 = getelementptr i8, ptr %25, i32 20
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !9
  %28 = and i32 %27, %24
  %29 = or i32 %28, %18
  store i32 %29, ptr %3, align 4
  %30 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %32, i32 noundef 0) #5
  %34 = load i16, ptr %30, align 4
  %35 = zext i16 %34 to i32
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %10
  %38 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i32 [ %33, %37 ], [ %46, %39 ]
  %41 = load ptr, ptr %38, align 4
  %42 = call i32 @generic_handle_domain_irq(ptr noundef %41, i32 noundef %40) #5
  %43 = load i16, ptr %30, align 4
  %44 = zext i16 %43 to i32
  %45 = add nsw i32 %40, 1
  %46 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %44, i32 noundef %45) #5
  %47 = load i16, ptr %30, align 4
  %48 = zext i16 %47 to i32
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %39, label %50

50:                                               ; preds = %39, %10, %2
  %51 = load i32, ptr %3, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
!8 = !{!"auto-init"}
!9 = !{i64 3681817}
!10 = !{i64 3681399}
