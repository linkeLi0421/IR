; ModuleID = '/llk/IR/drivers/gpio/gpio-rcar.c_pt.bc'
source_filename = "../drivers/gpio/gpio-rcar.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpio_rcar_info = type { i8, i8, i8, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.gpio_rcar_priv = type { ptr, %struct.spinlock, ptr, %struct.gpio_chip, %struct.irq_chip, i32, %struct.atomic_t, %struct.gpio_rcar_info, %struct.gpio_rcar_bank_info }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gpio_rcar_bank_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_rcar__211_662_gpio_rcar_device_driver_init6 = internal global ptr @gpio_rcar_device_driver_init, section ".initcall6.init", align 4
@gpio_rcar_device_driver = internal global %struct.platform_driver { ptr @gpio_rcar_probe, ptr @gpio_rcar_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpio_rcar_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpio_rcar_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_gpio_rcar_device_driver_exit = internal global ptr @gpio_rcar_device_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author212 = internal constant [29 x i8] c"gpio_rcar.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_description213 = internal constant [48 x i8] c"gpio_rcar.description=Renesas R-Car GPIO Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file214 = internal constant [38 x i8] c"gpio_rcar.file=drivers/gpio/gpio-rcar\00", section ".modinfo", align 1
@__UNIQUE_ID_license215 = internal constant [25 x i8] c"gpio_rcar.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"gpio_rcar\00", align 1
@gpio_rcar_of_table = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,gpio-r8a779a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gpio_rcar_info_v3u }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen1-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gpio_rcar_info_gen1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gpio_rcar_info_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gpio_rcar_info_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,gpio-rcar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gpio_rcar_info_gen1 }, %struct.of_device_id zeroinitializer], align 4
@gpio_rcar_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @gpio_rcar_suspend, ptr @gpio_rcar_resume, ptr @gpio_rcar_suspend, ptr @gpio_rcar_resume, ptr @gpio_rcar_suspend, ptr @gpio_rcar_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"gpio-rcar\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to add GPIO controller\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"driving %d GPIOs\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Invalid number of gpio lines %u, using %u\0A\00", align 1
@gpio_rcar_info_v3u = internal constant %struct.gpio_rcar_info { i8 1, i8 1, i8 1, i8 1 }, align 1
@gpio_rcar_info_gen1 = internal constant %struct.gpio_rcar_info zeroinitializer, align 1
@gpio_rcar_info_gen2 = internal constant %struct.gpio_rcar_info { i8 1, i8 1, i8 0, i8 0 }, align 1
@gpio_rcar_info_gen3 = internal constant %struct.gpio_rcar_info { i8 1, i8 1, i8 1, i8 0 }, align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description213, ptr @__UNIQUE_ID_file214, ptr @__UNIQUE_ID_license215, ptr @__exitcall_gpio_rcar_device_driver_exit, ptr @__initcall__kmod_gpio_rcar__211_662_gpio_rcar_device_driver_init6, ptr @gpio_rcar_device_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gpio_rcar_device_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_rcar_device_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @gpio_rcar_device_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_rcar_device_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_rcar_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ %5, %1 ]
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 492, i32 noundef 3520) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %88, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 2
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 1
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %17 = load ptr, ptr %16, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #7, !annotation !8
  %18 = tail call ptr @of_device_get_match_data(ptr noundef %3) #7
  %19 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 7
  %20 = load i32, ptr %18, align 1
  store i32 %20, ptr %19, align 4
  %21 = call i32 @__of_parse_phandle_with_args(ptr noundef %17, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %2) #7
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = select i1 %22, i32 %24, i32 32
  %26 = add i32 %25, -33
  %27 = icmp ult i32 %26, -32
  br i1 %27, label %28, label %30

28:                                               ; preds = %13
  %29 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.6, i32 noundef %25, i32 noundef 32) #8
  br label %30

30:                                               ; preds = %28, %13
  %31 = phi i32 [ 32, %28 ], [ %25, %13 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #7
  %32 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %32, align 8
  call void @pm_runtime_enable(ptr noundef %3) #7
  %33 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %86, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 5
  store i32 %33, ptr %36, align 4
  %37 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  store ptr %37, ptr %11, align 4
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = ptrtoint ptr %37 to i32
  br label %86

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 3
  %43 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 3, i32 5
  store ptr @gpio_rcar_request, ptr %43, align 4
  %44 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 3, i32 6
  store ptr @gpio_rcar_free, ptr %44, align 4
  %45 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 3, i32 7
  store ptr @gpio_rcar_get_direction, ptr %45, align 4
  %46 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 3, i32 8
  store ptr @gpio_rcar_direction_input, ptr %46, align 4
  %47 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 3, i32 10
  store ptr @gpio_rcar_get, ptr %47, align 4
  %48 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 3, i32 11
  store ptr @gpio_rcar_get_multiple, ptr %48, align 4
  %49 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 3, i32 9
  store ptr @gpio_rcar_direction_output, ptr %49, align 4
  %50 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 3, i32 12
  store ptr @gpio_rcar_set, ptr %50, align 4
  %51 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 3, i32 13
  store ptr @gpio_rcar_set_multiple, ptr %51, align 4
  store ptr %10, ptr %42, align 4
  %52 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 3, i32 2
  store ptr %3, ptr %52, align 4
  %53 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 3, i32 4
  store ptr null, ptr %53, align 4
  %54 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 3, i32 19
  store i32 -1, ptr %54, align 4
  %55 = trunc i32 %31 to i16
  %56 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 3, i32 20
  store i16 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 4
  %58 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 4, i32 1
  store ptr @.str.1, ptr %58, align 4
  store ptr %3, ptr %57, align 4
  %59 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 4, i32 7
  store ptr @gpio_rcar_irq_disable, ptr %59, align 4
  %60 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 4, i32 9
  store ptr @gpio_rcar_irq_enable, ptr %60, align 4
  %61 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 4, i32 13
  store ptr @gpio_rcar_irq_set_type, ptr %61, align 4
  %62 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 4, i32 14
  store ptr @gpio_rcar_irq_set_wake, ptr %62, align 4
  %63 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 4, i32 33
  store i32 5, ptr %63, align 4
  %64 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 3, i32 37
  store ptr %57, ptr %64, align 4
  %65 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 3, i32 37, i32 13
  store ptr null, ptr %65, align 4
  %66 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 3, i32 37, i32 15
  store i32 0, ptr %66, align 4
  %67 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 3, i32 37, i32 16
  store ptr null, ptr %67, align 4
  %68 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 3, i32 37, i32 10
  store i32 0, ptr %68, align 4
  %69 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 3, i32 37, i32 9
  store ptr @handle_level_irq, ptr %69, align 4
  %70 = call i32 @gpiochip_add_data_with_key(ptr noundef %42, ptr noundef nonnull %11, ptr noundef null, ptr noundef null) #7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %41
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  br label %86

73:                                               ; preds = %41
  %74 = load i32, ptr %36, align 4
  %75 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %74, ptr noundef nonnull @gpio_rcar_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %10, ptr noundef nonnull %11) #7
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #8
  call void @gpiochip_remove(ptr noundef %42) #7
  br label %86

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %11, i32 0, i32 7, i32 3
  %80 = load i8, ptr %79, align 1, !range !9
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  call fastcc void @gpio_rcar_enable_inputs(ptr noundef nonnull %11)
  %84 = call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #7
  br label %85

85:                                               ; preds = %82, %78
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %31) #8
  br label %88

86:                                               ; preds = %77, %72, %39, %30
  %87 = phi i32 [ %33, %30 ], [ %40, %39 ], [ %70, %72 ], [ %75, %77 ]
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #7
  br label %88

88:                                               ; preds = %86, %85, %9
  %89 = phi i32 [ %87, %86 ], [ 0, %85 ], [ -12, %9 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_rcar_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 3
  tail call void @gpiochip_remove(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_rcar_request(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %1
  %12 = tail call i32 @pinctrl_gpio_request(i32 noundef %11) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %8, %2
  %15 = phi i32 [ %6, %2 ], [ %12, %8 ]
  %16 = load ptr, ptr %4, align 4
  %17 = tail call i32 @__pm_runtime_idle(ptr noundef %16, i32 noundef 5) #7
  br label %18

18:                                               ; preds = %14, %8
  %19 = phi i32 [ 0, %8 ], [ %15, %14 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_rcar_free(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %1
  tail call void @pinctrl_gpio_free(i32 noundef %6) #7
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %7, i32 0, i32 1
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #7
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr i8, ptr %10, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %13 = shl nuw i32 1, %1
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #7, !srcloc !13
  %18 = load ptr, ptr %7, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %20 = and i32 %19, %14
  %21 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %20) #7, !srcloc !13
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr i8, ptr %22, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %25 = and i32 %24, %14
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #7, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #7
  %28 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @__pm_runtime_idle(ptr noundef %29, i32 noundef 5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_rcar_get_direction(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %7 = xor i32 %6, -1
  %8 = lshr i32 %7, %1
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_rcar_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %9 = shl nuw i32 1, %1
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #7, !srcloc !13
  %14 = load ptr, ptr %3, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %16 = and i32 %15, %10
  %17 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #7, !srcloc !13
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %21 = and i32 %20, %10
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #7, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_rcar_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 7, i32 2
  %5 = load i8, ptr %4, align 2, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = shl nuw i32 1, %1
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %12 = and i32 %11, %8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %22

18:                                               ; preds = %7, %2
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %21, %18 ], [ %17, %14 ]
  %24 = lshr i32 %23, %1
  %25 = and i32 %24, 1
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_rcar_get_multiple(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = sub nsw i32 32, %8
  %10 = lshr i32 -1, %9
  %11 = and i32 %10, %5
  %12 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 38
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, ptr %13, align 4
  %17 = and i32 %16, %11
  br label %18

18:                                               ; preds = %15, %3
  %19 = phi i32 [ %17, %15 ], [ %11, %3 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %58, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %4, i32 0, i32 7, i32 2
  %23 = load i8, ptr %22, align 2, !range !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr i8, ptr %26, i32 12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %29 = and i32 %28, %19
  br label %56

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %4, i32 0, i32 1
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %31) #7
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %36 = and i32 %35, %19
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %30
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr i8, ptr %39, i32 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %42 = and i32 %41, %36
  br label %43

43:                                               ; preds = %38, %30
  %44 = phi i32 [ %42, %38 ], [ 0, %30 ]
  %45 = xor i32 %35, -1
  %46 = and i32 %19, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr i8, ptr %49, i32 12
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %52 = and i32 %51, %46
  %53 = or i32 %52, %44
  br label %54

54:                                               ; preds = %48, %43
  %55 = phi i32 [ %53, %48 ], [ %44, %43 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %31, i32 noundef %32) #7
  br label %56

56:                                               ; preds = %54, %25
  %57 = phi i32 [ %55, %54 ], [ %29, %25 ]
  store i32 %57, ptr %2, align 4
  br label %58

58:                                               ; preds = %56, %18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_rcar_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %4, i32 0, i32 1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %7 = icmp eq i32 %2, 0
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %11 = shl nuw i32 1, %1
  %12 = or i32 %10, %11
  %13 = xor i32 %11, -1
  %14 = and i32 %10, %13
  %15 = select i1 %7, i32 %14, i32 %12
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #7, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  tail call fastcc void @gpio_rcar_config_general_input_output_mode(ptr noundef %0, i32 noundef %1, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_rcar_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %4, i32 0, i32 1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %7 = icmp eq i32 %2, 0
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %11 = shl nuw i32 1, %1
  %12 = or i32 %10, %11
  %13 = xor i32 %11, -1
  %14 = and i32 %10, %13
  %15 = select i1 %7, i32 %14, i32 %12
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #7, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_rcar_set_multiple(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = sub nsw i32 32, %8
  %10 = lshr i32 -1, %9
  %11 = and i32 %10, %5
  %12 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 38
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, ptr %13, align 4
  %17 = and i32 %16, %11
  br label %18

18:                                               ; preds = %15, %3
  %19 = phi i32 [ %17, %15 ], [ %11, %3 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %4, i32 0, i32 1
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #7
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr i8, ptr %24, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %27 = xor i32 %19, -1
  %28 = and i32 %26, %27
  %29 = load i32, ptr %2, align 4
  %30 = and i32 %29, %19
  %31 = or i32 %30, %28
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #7, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #7
  br label %34

34:                                               ; preds = %21, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_rcar_irq_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %6
  %8 = xor i32 %7, -1
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_rcar_irq_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %6
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_rcar_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %1, 15
  switch i32 %8, label %18 [
    i32 4, label %9
    i32 8, label %10
    i32 1, label %11
    i32 2, label %12
    i32 3, label %13
  ]

9:                                                ; preds = %2
  tail call fastcc void @gpio_rcar_config_interrupt_input_mode(ptr noundef %5, i32 noundef %7, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %18

10:                                               ; preds = %2
  tail call fastcc void @gpio_rcar_config_interrupt_input_mode(ptr noundef %5, i32 noundef %7, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %18

11:                                               ; preds = %2
  tail call fastcc void @gpio_rcar_config_interrupt_input_mode(ptr noundef %5, i32 noundef %7, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %18

12:                                               ; preds = %2
  tail call fastcc void @gpio_rcar_config_interrupt_input_mode(ptr noundef %5, i32 noundef %7, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %18

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %5, i32 0, i32 7, i32 1
  %15 = load i8, ptr %14, align 1, !range !9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call fastcc void @gpio_rcar_config_interrupt_input_mode(ptr noundef %5, i32 noundef %7, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %18

18:                                               ; preds = %17, %13, %12, %11, %10, %9, %2
  %19 = phi i32 [ -22, %13 ], [ -22, %2 ], [ 0, %17 ], [ 0, %12 ], [ 0, %11 ], [ 0, %10 ], [ 0, %9 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_rcar_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef %1) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %12, %9, %2
  %14 = icmp eq i32 %1, 0
  %15 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %5, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #7
  br i1 %14, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #7, !srcloc !14
  br label %20

18:                                               ; preds = %13
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #7, !srcloc !15
  br label %20

20:                                               ; preds = %18, %16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_rcar_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr i8, ptr %6, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %9 = and i32 %8, %5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 3, i32 37, i32 1
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i32 [ %9, %11 ], [ %29, %13 ]
  %15 = phi i32 [ 0, %11 ], [ %22, %13 ]
  %16 = tail call i32 @llvm.cttz.i32(i32 %14, i1 true) #7, !range !16
  %17 = shl nuw i32 1, %16
  %18 = load ptr, ptr %1, align 4
  %19 = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #7, !srcloc !13
  %20 = load ptr, ptr %12, align 4
  %21 = tail call i32 @generic_handle_domain_irq(ptr noundef %20, i32 noundef %16) #7
  %22 = add i32 %15, 1
  %23 = load ptr, ptr %1, align 4
  %24 = getelementptr i8, ptr %23, i32 16
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %26 = load ptr, ptr %1, align 4
  %27 = getelementptr i8, ptr %26, i32 24
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %29 = and i32 %28, %25
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %13

31:                                               ; preds = %13
  %32 = icmp ne i32 %22, 0
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %31, %2
  %35 = phi i32 [ 0, %2 ], [ %33, %31 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpio_rcar_enable_inputs(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %0, i32 0, i32 3, i32 20
  %3 = load i16, ptr %2, align 4
  %4 = zext i16 %3 to i32
  %5 = sub nsw i32 32, %4
  %6 = lshr i32 -1, %5
  %7 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %0, i32 0, i32 3, i32 38
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, ptr %8, align 4
  %12 = and i32 %11, %6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10, %1
  %15 = phi i32 [ %12, %10 ], [ %6, %1 ]
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr i8, ptr %16, i32 80
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %19 = or i32 %18, %15
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr i8, ptr %20, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #7, !srcloc !13
  br label %22

22:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_request(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpio_rcar_config_general_input_output_mode(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %4, i32 0, i32 1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 32
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %10 = shl nuw i32 1, %1
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #7, !srcloc !13
  %15 = load ptr, ptr %4, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %17 = and i32 %16, %11
  %18 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #7, !srcloc !13
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %22 = or i32 %21, %10
  %23 = and i32 %21, %11
  %24 = select i1 %2, i32 %22, i32 %23
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #7, !srcloc !13
  %27 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %4, i32 0, i32 7
  %28 = load i8, ptr %27, align 4, !range !9
  %29 = icmp ne i8 %28, 0
  %30 = and i1 %29, %2
  br i1 %30, label %31, label %38

31:                                               ; preds = %3
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr i8, ptr %32, i32 64
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %35 = and i32 %34, %11
  %36 = load ptr, ptr %4, align 4
  %37 = getelementptr i8, ptr %36, i32 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #7, !srcloc !13
  br label %38

38:                                               ; preds = %31, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpio_rcar_config_interrupt_input_mode(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %0, i32 0, i32 1
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #7
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr i8, ptr %8, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %11 = shl nuw i32 1, %1
  %12 = or i32 %10, %11
  %13 = xor i32 %11, -1
  %14 = and i32 %10, %13
  %15 = select i1 %2, i32 %14, i32 %12
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #7, !srcloc !13
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr i8, ptr %18, i32 36
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %21 = or i32 %20, %11
  %22 = and i32 %20, %13
  %23 = select i1 %3, i32 %22, i32 %21
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr i8, ptr %24, i32 36
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #7, !srcloc !13
  %26 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %0, i32 0, i32 7, i32 1
  %27 = load i8, ptr %26, align 1, !range !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %5
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr i8, ptr %30, i32 76
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %33 = or i32 %32, %11
  %34 = and i32 %32, %13
  %35 = select i1 %4, i32 %33, i32 %34
  %36 = load ptr, ptr %0, align 4
  %37 = getelementptr i8, ptr %36, i32 76
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #7, !srcloc !13
  br label %38

38:                                               ; preds = %29, %5
  %39 = load ptr, ptr %0, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %41 = or i32 %40, %11
  %42 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %41) #7, !srcloc !13
  br i1 %3, label %46, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %0, align 4
  %45 = getelementptr i8, ptr %44, i32 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %11) #7, !srcloc !13
  br label %46

46:                                               ; preds = %43, %38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_rcar_suspend(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %6 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 8
  store i32 %5, ptr %6, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %10 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 8, i32 1
  store i32 %9, ptr %10, align 4
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %14 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 8, i32 2
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 24
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %18 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 8, i32 6
  store i32 %17, ptr %18, align 4
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 32
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %22 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 8, i32 3
  store i32 %21, ptr %22, align 4
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr i8, ptr %23, i32 36
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %26 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 8, i32 4
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 7, i32 1
  %28 = load i8, ptr %27, align 1, !range !9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %1
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr i8, ptr %31, i32 76
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %34 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 8, i32 5
  store i32 %33, ptr %34, align 4
  br label %35

35:                                               ; preds = %30, %1
  %36 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 6
  %37 = load volatile i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 7
  %41 = load i8, ptr %40, align 4
  %42 = or i8 %41, 1
  store i8 %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %39, %35
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_rcar_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 3, i32 20
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %89, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 8
  %10 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 8, i32 3
  %11 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 8, i32 4
  %12 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 8, i32 5
  %13 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 8, i32 6
  %14 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 8, i32 1
  %15 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 8, i32 2
  br label %16

16:                                               ; preds = %81, %8
  %17 = phi i32 [ 0, %8 ], [ %82, %81 ]
  %18 = tail call zeroext i1 @gpiochip_line_is_valid(ptr noundef %4, i32 noundef %17) #7
  br i1 %18, label %19, label %81

19:                                               ; preds = %16
  %20 = shl nuw i32 1, %17
  %21 = load i32, ptr %9, align 4
  %22 = and i32 %21, %20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %19
  %25 = load i32, ptr %14, align 4
  %26 = and i32 %25, %20
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %15, align 4
  %30 = tail call ptr @gpiochip_get_data(ptr noundef %4) #7
  %31 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %30, i32 0, i32 1
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %31) #7
  %33 = and i32 %29, %20
  %34 = icmp eq i32 %33, 0
  %35 = load ptr, ptr %30, align 4
  %36 = getelementptr i8, ptr %35, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %38 = or i32 %37, %20
  %39 = xor i32 %20, -1
  %40 = and i32 %37, %39
  %41 = select i1 %34, i32 %40, i32 %38
  %42 = load ptr, ptr %30, align 4
  %43 = getelementptr i8, ptr %42, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #7, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %31, i32 noundef %32) #7
  tail call fastcc void @gpio_rcar_config_general_input_output_mode(ptr noundef %4, i32 noundef %17, i1 noundef zeroext true) #7
  br label %81

44:                                               ; preds = %24
  %45 = tail call ptr @gpiochip_get_data(ptr noundef %4) #7
  %46 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %45, i32 0, i32 1
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %46) #7
  %48 = load ptr, ptr %45, align 4
  %49 = getelementptr i8, ptr %48, i32 32
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %51 = xor i32 %20, -1
  %52 = and i32 %50, %51
  %53 = load ptr, ptr %45, align 4
  %54 = getelementptr i8, ptr %53, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #7, !srcloc !13
  %55 = load ptr, ptr %45, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %57 = and i32 %56, %51
  %58 = load ptr, ptr %45, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %57) #7, !srcloc !13
  %59 = load ptr, ptr %45, align 4
  %60 = getelementptr i8, ptr %59, i32 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %62 = and i32 %61, %51
  %63 = load ptr, ptr %45, align 4
  %64 = getelementptr i8, ptr %63, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #7, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %47) #7
  br label %81

65:                                               ; preds = %19
  %66 = load i32, ptr %10, align 4
  %67 = and i32 %66, %20
  %68 = icmp eq i32 %67, 0
  %69 = load i32, ptr %11, align 4
  %70 = and i32 %69, %20
  %71 = icmp eq i32 %70, 0
  %72 = load i32, ptr %12, align 4
  %73 = and i32 %72, %20
  %74 = icmp ne i32 %73, 0
  tail call fastcc void @gpio_rcar_config_interrupt_input_mode(ptr noundef %3, i32 noundef %17, i1 noundef zeroext %68, i1 noundef zeroext %71, i1 noundef zeroext %74)
  %75 = load i32, ptr %13, align 4
  %76 = and i32 %75, %20
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %65
  %79 = load ptr, ptr %3, align 4
  %80 = getelementptr i8, ptr %79, i32 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %20) #7, !srcloc !13
  br label %81

81:                                               ; preds = %78, %65, %44, %28, %16
  %82 = add nuw nsw i32 %17, 1
  %83 = load i16, ptr %5, align 4
  %84 = zext i16 %83 to i32
  %85 = icmp ult i32 %82, %84
  br i1 %85, label %16, label %86

86:                                               ; preds = %81
  %87 = zext i16 %83 to i32
  %88 = sub nsw i32 32, %87
  br label %89

89:                                               ; preds = %86, %1
  %90 = phi i32 [ 32, %1 ], [ %88, %86 ]
  %91 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 7, i32 3
  %92 = load i8, ptr %91, align 1, !range !9
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %111, label %94

94:                                               ; preds = %89
  %95 = lshr i32 -1, %90
  %96 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %3, i32 0, i32 3, i32 38
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = load i32, ptr %97, align 4
  %101 = and i32 %100, %95
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %99, %94
  %104 = phi i32 [ %101, %99 ], [ %95, %94 ]
  %105 = load ptr, ptr %3, align 4
  %106 = getelementptr i8, ptr %105, i32 80
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %108 = or i32 %107, %104
  %109 = load ptr, ptr %3, align 4
  %110 = getelementptr i8, ptr %109, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #7, !srcloc !13
  br label %111

111:                                              ; preds = %103, %99, %89
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gpiochip_line_is_valid(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{i64 3690041}
!11 = !{i64 2151229494}
!12 = !{i64 2151230716}
!13 = !{i64 3689623}
!14 = !{i64 2148176547, i64 2148176573, i64 2148176602, i64 2148176636, i64 2148176667, i64 2148176690}
!15 = !{i64 2148178904, i64 2148178930, i64 2148178959, i64 2148178993, i64 2148179024, i64 2148179047}
!16 = !{i32 0, i32 33}
