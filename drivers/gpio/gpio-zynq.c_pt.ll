; ModuleID = '/llk/IR/drivers/gpio/gpio-zynq.c_pt.bc'
source_filename = "../drivers/gpio/gpio-zynq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.zynq_platform_data = type { ptr, i32, i16, i32, [6 x i32], [6 x i32] }
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
%struct.zynq_gpio = type { %struct.gpio_chip, ptr, ptr, i32, ptr, %struct.gpio_regs, %struct.spinlock }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.gpio_regs = type { [6 x i32], [6 x i32], [6 x i32], [6 x i32], [6 x i32], [6 x i32], [6 x i32], [6 x i32], [6 x i32] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_zynq__211_1032_zynq_gpio_driver_init6 = internal global ptr @zynq_gpio_driver_init, section ".initcall6.init", align 4
@zynq_gpio_driver = internal global %struct.platform_driver { ptr @zynq_gpio_probe, ptr @zynq_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @zynq_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zynq_gpio_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_zynq_gpio_driver_exit = internal global ptr @zynq_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author212 = internal constant [29 x i8] c"gpio_zynq.author=Xilinx Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description213 = internal constant [39 x i8] c"gpio_zynq.description=Zynq GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file214 = internal constant [38 x i8] c"gpio_zynq.file=drivers/gpio/gpio-zynq\00", section ".modinfo", align 1
@__UNIQUE_ID_license215 = internal constant [22 x i8] c"gpio_zynq.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"zynq-gpio\00", align 1
@zynq_gpio_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynq-gpio-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @zynq_gpio_def }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynqmp-gpio-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @zynqmp_gpio_def }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,versal-gpio-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @versal_gpio_def }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,pmc-gpio-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pmc_gpio_def }, %struct.of_device_id zeroinitializer], align 4
@zynq_gpio_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @zynq_gpio_suspend, ptr @zynq_gpio_resume, ptr @zynq_gpio_suspend, ptr @zynq_gpio_resume, ptr @zynq_gpio_suspend, ptr @zynq_gpio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zynq_gpio_runtime_suspend, ptr @zynq_gpio_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"of_match_node() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"input clock not found.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Unable to enable clock.\0A\00", align 1
@zynq_gpio_edge_irqchip = internal global %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr @zynq_gpio_irq_enable, ptr null, ptr @zynq_gpio_irq_ack, ptr @zynq_gpio_irq_mask, ptr null, ptr @zynq_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @zynq_gpio_set_irq_type, ptr @zynq_gpio_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zynq_gpio_irq_reqres, ptr @zynq_gpio_irq_relres, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4 }, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to add gpio chip\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"drivers/gpio/gpio-zynq.c\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"invalid GPIO pin number: %u\00", align 1
@zynq_gpio_level_irqchip = internal global %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr @zynq_gpio_irq_enable, ptr null, ptr null, ptr @zynq_gpio_irq_mask, ptr null, ptr @zynq_gpio_irq_unmask, ptr @zynq_gpio_irq_ack, ptr null, ptr null, ptr @zynq_gpio_set_irq_type, ptr @zynq_gpio_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zynq_gpio_irq_reqres, ptr @zynq_gpio_irq_relres, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 70 }, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"pm_runtime_get_sync() Failed\0A\00", align 1
@zynq_gpio_def = internal constant %struct.zynq_platform_data { ptr @.str.9, i32 3, i16 118, i32 4, [6 x i32] [i32 0, i32 32, i32 54, i32 86, i32 0, i32 0], [6 x i32] [i32 31, i32 53, i32 85, i32 117, i32 0, i32 0] }, align 4
@zynqmp_gpio_def = internal constant %struct.zynq_platform_data { ptr @.str.10, i32 2, i16 174, i32 6, [6 x i32] [i32 0, i32 26, i32 52, i32 78, i32 110, i32 142], [6 x i32] [i32 25, i32 51, i32 77, i32 109, i32 141, i32 173] }, align 4
@versal_gpio_def = internal constant %struct.zynq_platform_data { ptr @.str.11, i32 4, i16 58, i32 4, [6 x i32] [i32 0, i32 0, i32 0, i32 26, i32 0, i32 0], [6 x i32] [i32 25, i32 0, i32 0, i32 57, i32 0, i32 0] }, align 4
@pmc_gpio_def = internal constant %struct.zynq_platform_data { ptr @.str.12, i32 0, i16 116, i32 5, [6 x i32] [i32 0, i32 26, i32 0, i32 52, i32 84, i32 0], [6 x i32] [i32 25, i32 51, i32 0, i32 83, i32 115, i32 0] }, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"zynq_gpio\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"zynqmp_gpio\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"versal_gpio\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"pmc_gpio\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"irq_get_irq_data() failed\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description213, ptr @__UNIQUE_ID_file214, ptr @__UNIQUE_ID_license215, ptr @__exitcall_zynq_gpio_driver_exit, ptr @__initcall__kmod_gpio_zynq__211_1032_zynq_gpio_driver_init6, ptr @zynq_gpio_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @zynq_gpio_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @zynq_gpio_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @zynq_gpio_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @zynq_gpio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_gpio_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 540, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %116, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @of_match_node(ptr noundef nonnull @zynq_gpio_of_match, ptr noundef %7) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  br label %116

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.of_device_id, ptr %8, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 4
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %15, align 8
  %16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %17 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = ptrtoint ptr %16 to i32
  br label %116

21:                                               ; preds = %11
  %22 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %23 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 3
  store i32 %22, ptr %23, align 4
  %24 = icmp slt i32 %22, 0
  br i1 %24, label %116, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %14, align 4
  %27 = load ptr, ptr %26, align 4
  store ptr %27, ptr %3, align 4
  %28 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 4
  store ptr null, ptr %28, align 4
  %29 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 2
  store ptr %2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 10
  store ptr @zynq_gpio_get_value, ptr %30, align 4
  %31 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 12
  store ptr @zynq_gpio_set_value, ptr %31, align 4
  %32 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 5
  store ptr @zynq_gpio_request, ptr %32, align 4
  %33 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 6
  store ptr @zynq_gpio_free, ptr %33, align 4
  %34 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 8
  store ptr @zynq_gpio_dir_in, ptr %34, align 4
  %35 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 9
  store ptr @zynq_gpio_dir_out, ptr %35, align 4
  %36 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 7
  store ptr @zynq_gpio_get_direction, ptr %36, align 4
  %37 = load ptr, ptr %6, align 8
  %38 = tail call i32 @of_alias_get_id(ptr noundef %37, ptr noundef nonnull @.str.2) #6
  %39 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 19
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %14, align 4
  %41 = getelementptr inbounds %struct.zynq_platform_data, ptr %40, i32 0, i32 2
  %42 = load i16, ptr %41, align 4
  %43 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 20
  store i16 %42, ptr %43, align 4
  %44 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #6
  %45 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 2
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %50

47:                                               ; preds = %25
  %48 = ptrtoint ptr %44 to i32
  %49 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %48, ptr noundef nonnull @.str.3) #6
  br label %116

50:                                               ; preds = %25
  %51 = tail call i32 @clk_prepare(ptr noundef %44) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = tail call i32 @clk_enable(ptr noundef %44) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  tail call void @clk_unprepare(ptr noundef %44) #6
  br label %57

57:                                               ; preds = %56, %50
  %58 = phi i32 [ %54, %56 ], [ %51, %50 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #7
  br label %116

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 6
  store i32 0, ptr %60, align 4
  %61 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #6
  tail call void @pm_runtime_enable(ptr noundef %2) #6
  %62 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #6
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %14, align 4
  %66 = getelementptr inbounds %struct.zynq_platform_data, ptr %65, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %75, label %92

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %70) #6, !srcloc !9
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %70, ptr %70, i32 0, i32 -1, ptr elementtype(i32) %70) #6, !srcloc !10
  %72 = extractvalue { i32, i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %113, label %74

74:                                               ; preds = %69
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  br label %113

75:                                               ; preds = %75, %64
  %76 = phi i32 [ %88, %75 ], [ 0, %64 ]
  %77 = load ptr, ptr %17, align 4
  %78 = shl i32 %76, 6
  %79 = add i32 %78, 532
  %80 = getelementptr i8, ptr %77, i32 %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 -1) #6, !srcloc !12
  %81 = load ptr, ptr %14, align 4
  %82 = getelementptr inbounds %struct.zynq_platform_data, ptr %81, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 4
  %85 = icmp eq i32 %84, 0
  %86 = add i32 %76, 2
  %87 = select i1 %85, i32 %76, i32 %86
  %88 = add i32 %87, 1
  %89 = getelementptr inbounds %struct.zynq_platform_data, ptr %81, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %75, label %92

92:                                               ; preds = %75, %64
  %93 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 37
  store ptr @zynq_gpio_edge_irqchip, ptr %93, align 4
  %94 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 37, i32 13
  store ptr @zynq_gpio_irqhandler, ptr %94, align 4
  %95 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 37, i32 15
  store i32 1, ptr %95, align 4
  %96 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 4, i32 noundef 3520) #6
  %97 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 37, i32 16
  store ptr %96, ptr %97, align 4
  %98 = icmp eq ptr %96, null
  br i1 %98, label %110, label %99

99:                                               ; preds = %92
  %100 = load i32, ptr %23, align 4
  store i32 %100, ptr %96, align 4
  %101 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 37, i32 10
  store i32 0, ptr %101, align 4
  %102 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 37, i32 9
  store ptr @handle_level_irq, ptr %102, align 4
  %103 = tail call i32 @gpiochip_add_data_with_key(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #6
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #7
  br label %110

106:                                              ; preds = %99
  %107 = load i32, ptr %23, align 4
  tail call void @irq_modify_status(i32 noundef %107, i32 noundef 0, i32 noundef 524288) #6
  %108 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext true) #6
  %109 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 5) #6
  br label %116

110:                                              ; preds = %105, %92
  %111 = phi i32 [ %103, %105 ], [ -12, %92 ]
  %112 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 5) #6
  br label %113

113:                                              ; preds = %110, %74, %69
  %114 = phi i32 [ %111, %110 ], [ %62, %69 ], [ %62, %74 ]
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #6
  %115 = load ptr, ptr %45, align 4
  tail call void @clk_disable(ptr noundef %115) #6
  tail call void @clk_unprepare(ptr noundef %115) #6
  br label %116

116:                                              ; preds = %113, %106, %57, %47, %21, %19, %10, %1
  %117 = phi i32 [ %20, %19 ], [ %49, %47 ], [ %58, %57 ], [ %114, %113 ], [ 0, %106 ], [ -22, %10 ], [ -12, %1 ], [ %22, %21 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_gpio_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #6
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.8) #7
  br label %8

8:                                                ; preds = %7, %1
  tail call void @gpiochip_remove(ptr noundef %3) #6
  %9 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #6
  tail call void @clk_unprepare(ptr noundef %10) #6
  tail call void @device_set_wakeup_capable(ptr noundef %4, i1 noundef zeroext false) #6
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_gpio_get_value(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.zynq_platform_data, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.zynq_platform_data, ptr %5, i32 0, i32 1
  br label %11

11:                                               ; preds = %22, %9
  %12 = phi i32 [ 0, %9 ], [ %28, %22 ]
  %13 = getelementptr %struct.zynq_platform_data, ptr %5, i32 0, i32 4, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, %1
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = getelementptr %struct.zynq_platform_data, ptr %5, i32 0, i32 5, i32 %12
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, %1
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = sub i32 %1, %14
  br label %32

22:                                               ; preds = %16, %11
  %23 = load i32, ptr %10, align 4
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  %26 = add i32 %12, 2
  %27 = select i1 %25, i32 %12, i32 %26
  %28 = add i32 %27, 1
  %29 = icmp slt i32 %28, %7
  br i1 %29, label %11, label %30

30:                                               ; preds = %22, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %1) #6
  %31 = load ptr, ptr %4, align 4
  br label %32

32:                                               ; preds = %30, %20
  %33 = phi ptr [ %31, %30 ], [ %5, %20 ]
  %34 = phi i32 [ 0, %30 ], [ %12, %20 ]
  %35 = phi i32 [ 0, %30 ], [ %21, %20 ]
  %36 = getelementptr inbounds %struct.zynq_platform_data, ptr %33, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %69, label %40

40:                                               ; preds = %32
  %41 = and i32 %37, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %40
  %44 = icmp ult i32 %34, 2
  %45 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = shl i32 %34, 2
  br i1 %44, label %48, label %52

48:                                               ; preds = %43
  %49 = add nuw nsw i32 %47, 96
  %50 = getelementptr i8, ptr %46, i32 %49
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #6, !srcloc !13
  br label %76

52:                                               ; preds = %43
  %53 = add i32 %47, 64
  %54 = getelementptr i8, ptr %46, i32 %53
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #6, !srcloc !13
  br label %76

56:                                               ; preds = %40
  %57 = icmp ult i32 %34, 3
  %58 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = shl i32 %34, 2
  br i1 %57, label %61, label %65

61:                                               ; preds = %56
  %62 = add nuw nsw i32 %60, 96
  %63 = getelementptr i8, ptr %59, i32 %62
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #6, !srcloc !13
  br label %76

65:                                               ; preds = %56
  %66 = add i32 %60, 64
  %67 = getelementptr i8, ptr %59, i32 %66
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #6, !srcloc !13
  br label %76

69:                                               ; preds = %32
  %70 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = shl i32 %34, 2
  %73 = add i32 %72, 96
  %74 = getelementptr i8, ptr %71, i32 %73
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #6, !srcloc !13
  br label %76

76:                                               ; preds = %69, %65, %61, %52, %48
  %77 = phi i32 [ %51, %48 ], [ %55, %52 ], [ %64, %61 ], [ %68, %65 ], [ %75, %69 ]
  %78 = lshr i32 %77, %35
  %79 = and i32 %78, 1
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @zynq_gpio_set_value(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.zynq_gpio, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.zynq_platform_data, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.zynq_platform_data, ptr %6, i32 0, i32 1
  br label %12

12:                                               ; preds = %21, %10
  %13 = phi i32 [ 0, %10 ], [ %27, %21 ]
  %14 = getelementptr %struct.zynq_platform_data, ptr %6, i32 0, i32 4, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %1
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr %struct.zynq_platform_data, ptr %6, i32 0, i32 5, i32 %13
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, %1
  br i1 %20, label %21, label %30

21:                                               ; preds = %17, %12
  %22 = load i32, ptr %11, align 4
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  %25 = add i32 %13, 2
  %26 = select i1 %24, i32 %13, i32 %25
  %27 = add i32 %26, 1
  %28 = icmp slt i32 %27, %8
  br i1 %28, label %12, label %29

29:                                               ; preds = %21, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %1) #6
  br label %37

30:                                               ; preds = %17
  %31 = sub i32 %1, %15
  %32 = icmp ugt i32 %31, 15
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = add i32 %31, -16
  %35 = shl i32 %13, 3
  %36 = or i32 %35, 4
  br label %41

37:                                               ; preds = %30, %29
  %38 = phi i32 [ 0, %29 ], [ %31, %30 ]
  %39 = phi i32 [ 0, %29 ], [ %13, %30 ]
  %40 = shl i32 %39, 3
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i32 [ %34, %33 ], [ %38, %37 ]
  %43 = phi i32 [ %36, %33 ], [ %40, %37 ]
  %44 = icmp ne i32 %2, 0
  %45 = zext i1 %44 to i32
  %46 = shl i32 65536, %42
  %47 = xor i32 %46, -1
  %48 = shl nuw i32 %45, %42
  %49 = or i32 %48, -65536
  %50 = and i32 %49, %47
  %51 = getelementptr inbounds %struct.zynq_gpio, ptr %4, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %50) #6, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_gpio_request(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #6
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @zynq_gpio_free(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_gpio_dir_in(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.zynq_platform_data, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.zynq_platform_data, ptr %5, i32 0, i32 1
  br label %11

11:                                               ; preds = %22, %9
  %12 = phi i32 [ 0, %9 ], [ %28, %22 ]
  %13 = getelementptr %struct.zynq_platform_data, ptr %5, i32 0, i32 4, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, %1
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = getelementptr %struct.zynq_platform_data, ptr %5, i32 0, i32 5, i32 %12
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, %1
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = sub i32 %1, %14
  br label %32

22:                                               ; preds = %16, %11
  %23 = load i32, ptr %10, align 4
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  %26 = add i32 %12, 2
  %27 = select i1 %25, i32 %12, i32 %26
  %28 = add i32 %27, 1
  %29 = icmp slt i32 %28, %7
  br i1 %29, label %11, label %30

30:                                               ; preds = %22, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %1) #6
  %31 = load ptr, ptr %4, align 4
  br label %32

32:                                               ; preds = %30, %20
  %33 = phi ptr [ %31, %30 ], [ %5, %20 ]
  %34 = phi i32 [ 0, %30 ], [ %12, %20 ]
  %35 = phi i32 [ 0, %30 ], [ %21, %20 ]
  %36 = getelementptr inbounds %struct.zynq_platform_data, ptr %33, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  %40 = icmp eq i32 %34, 0
  %41 = select i1 %39, i1 %40, i1 false
  %42 = add i32 %35, -7
  %43 = icmp ult i32 %42, 2
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %59, label %45

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 6
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %46) #6
  %48 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = shl i32 %34, 6
  %51 = add i32 %50, 516
  %52 = getelementptr i8, ptr %49, i32 %51
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #6, !srcloc !13
  %54 = shl nuw i32 1, %35
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = load ptr, ptr %48, align 4
  %58 = getelementptr i8, ptr %57, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #6, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %47) #6
  br label %59

59:                                               ; preds = %45, %32
  %60 = phi i32 [ 0, %45 ], [ -22, %32 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_gpio_dir_out(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.zynq_gpio, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.zynq_platform_data, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.zynq_platform_data, ptr %6, i32 0, i32 1
  br label %12

12:                                               ; preds = %23, %10
  %13 = phi i32 [ 0, %10 ], [ %29, %23 ]
  %14 = getelementptr %struct.zynq_platform_data, ptr %6, i32 0, i32 4, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %1
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr %struct.zynq_platform_data, ptr %6, i32 0, i32 5, i32 %13
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, %1
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = sub i32 %1, %15
  br label %32

23:                                               ; preds = %17, %12
  %24 = load i32, ptr %11, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  %27 = add i32 %13, 2
  %28 = select i1 %26, i32 %13, i32 %27
  %29 = add i32 %28, 1
  %30 = icmp slt i32 %29, %8
  br i1 %30, label %12, label %31

31:                                               ; preds = %23, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %1) #6
  br label %32

32:                                               ; preds = %31, %21
  %33 = phi i32 [ 0, %31 ], [ %13, %21 ]
  %34 = phi i32 [ 0, %31 ], [ %22, %21 ]
  %35 = getelementptr inbounds %struct.zynq_gpio, ptr %4, i32 0, i32 6
  %36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %35) #6
  %37 = getelementptr inbounds %struct.zynq_gpio, ptr %4, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = shl i32 %33, 6
  %40 = add i32 %39, 516
  %41 = getelementptr i8, ptr %38, i32 %40
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #6, !srcloc !13
  %43 = shl nuw i32 1, %34
  %44 = or i32 %42, %43
  %45 = load ptr, ptr %37, align 4
  %46 = getelementptr i8, ptr %45, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #6, !srcloc !12
  %47 = load ptr, ptr %37, align 4
  %48 = add i32 %39, 520
  %49 = getelementptr i8, ptr %47, i32 %48
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #6, !srcloc !13
  %51 = or i32 %50, %43
  %52 = load ptr, ptr %37, align 4
  %53 = getelementptr i8, ptr %52, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #6, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %36) #6
  tail call void @zynq_gpio_set_value(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_gpio_get_direction(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.zynq_platform_data, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.zynq_platform_data, ptr %5, i32 0, i32 1
  br label %11

11:                                               ; preds = %22, %9
  %12 = phi i32 [ 0, %9 ], [ %28, %22 ]
  %13 = getelementptr %struct.zynq_platform_data, ptr %5, i32 0, i32 4, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, %1
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = getelementptr %struct.zynq_platform_data, ptr %5, i32 0, i32 5, i32 %12
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, %1
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = sub i32 %1, %14
  br label %31

22:                                               ; preds = %16, %11
  %23 = load i32, ptr %10, align 4
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  %26 = add i32 %12, 2
  %27 = select i1 %25, i32 %12, i32 %26
  %28 = add i32 %27, 1
  %29 = icmp slt i32 %28, %7
  br i1 %29, label %11, label %30

30:                                               ; preds = %22, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %1) #6
  br label %31

31:                                               ; preds = %30, %20
  %32 = phi i32 [ 0, %30 ], [ %12, %20 ]
  %33 = phi i32 [ 0, %30 ], [ %21, %20 ]
  %34 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = shl i32 %32, 6
  %37 = add i32 %36, 516
  %38 = getelementptr i8, ptr %35, i32 %37
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #6, !srcloc !13
  %40 = xor i32 %39, -1
  %41 = lshr i32 %40, %33
  %42 = and i32 %41, 1
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @zynq_gpio_irqhandler(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #6
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
  tail call void %13(ptr noundef %16) #6
  br label %25

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %19(ptr noundef %20) #6
  %21 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void %22(ptr noundef %20) #6
  br label %25

25:                                               ; preds = %24, %17, %15, %1
  %26 = getelementptr inbounds %struct.zynq_gpio, ptr %5, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.zynq_platform_data, ptr %27, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %74, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.zynq_gpio, ptr %5, i32 0, i32 1
  %33 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 1
  br label %34

34:                                               ; preds = %62, %31
  %35 = phi i32 [ 0, %31 ], [ %70, %62 ]
  %36 = load ptr, ptr %32, align 4
  %37 = shl i32 %35, 6
  %38 = add i32 %37, 536
  %39 = getelementptr i8, ptr %36, i32 %38
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #6, !srcloc !13
  %41 = load ptr, ptr %32, align 4
  %42 = add i32 %37, 524
  %43 = getelementptr i8, ptr %41, i32 %42
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #6, !srcloc !13
  %45 = xor i32 %44, -1
  %46 = and i32 %40, %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store i32 %46, ptr %2, align 4
  %47 = load ptr, ptr %26, align 4
  %48 = getelementptr %struct.zynq_platform_data, ptr %47, i32 0, i32 4, i32 %35
  %49 = load i32, ptr %48, align 4
  %50 = load ptr, ptr %33, align 4
  %51 = icmp eq i32 %46, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %34
  %53 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #6
  %54 = icmp slt i32 %53, 32
  br i1 %54, label %55, label %62

55:                                               ; preds = %55, %52
  %56 = phi i32 [ %60, %55 ], [ %53, %52 ]
  %57 = add i32 %56, %49
  %58 = call i32 @generic_handle_domain_irq(ptr noundef %50, i32 noundef %57) #6
  %59 = add nsw i32 %56, 1
  %60 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %59) #6
  %61 = icmp slt i32 %60, 32
  br i1 %61, label %55, label %62

62:                                               ; preds = %55, %52, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  %63 = load ptr, ptr %26, align 4
  %64 = getelementptr inbounds %struct.zynq_platform_data, ptr %63, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 4
  %67 = icmp eq i32 %66, 0
  %68 = add i32 %35, 2
  %69 = select i1 %67, i32 %35, i32 %68
  %70 = add i32 %69, 1
  %71 = getelementptr inbounds %struct.zynq_platform_data, ptr %63, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = icmp ult i32 %70, %72
  br i1 %73, label %34, label %74

74:                                               ; preds = %62, %25
  %75 = load ptr, ptr %8, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 9
  %79 = load ptr, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = phi ptr [ %79, %77 ], [ %75, %74 ]
  %82 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %81(ptr noundef %82) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @zynq_gpio_irq_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.zynq_gpio, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.zynq_platform_data, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.zynq_platform_data, ptr %8, i32 0, i32 1
  br label %14

14:                                               ; preds = %25, %12
  %15 = phi i32 [ 0, %12 ], [ %31, %25 ]
  %16 = getelementptr %struct.zynq_platform_data, ptr %8, i32 0, i32 4, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %6, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = getelementptr %struct.zynq_platform_data, ptr %8, i32 0, i32 5, i32 %15
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %21, %6
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = sub i32 %6, %17
  br label %34

25:                                               ; preds = %19, %14
  %26 = load i32, ptr %13, align 4
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  %29 = add i32 %15, 2
  %30 = select i1 %28, i32 %15, i32 %29
  %31 = add i32 %30, 1
  %32 = icmp slt i32 %31, %10
  br i1 %32, label %14, label %33

33:                                               ; preds = %25, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %6) #6
  br label %34

34:                                               ; preds = %33, %23
  %35 = phi i32 [ 0, %33 ], [ %15, %23 ]
  %36 = phi i32 [ 0, %33 ], [ %24, %23 ]
  %37 = shl nuw i32 1, %36
  %38 = getelementptr inbounds %struct.zynq_gpio, ptr %4, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = shl i32 %35, 6
  %41 = add i32 %40, 536
  %42 = getelementptr i8, ptr %39, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %37) #6, !srcloc !12
  %43 = load ptr, ptr %2, align 4
  %44 = tail call ptr @gpiochip_get_data(ptr noundef %43) #6
  %45 = load i32, ptr %5, align 4
  %46 = getelementptr inbounds %struct.zynq_gpio, ptr %44, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.zynq_platform_data, ptr %47, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %34
  %52 = getelementptr inbounds %struct.zynq_platform_data, ptr %47, i32 0, i32 1
  br label %53

53:                                               ; preds = %64, %51
  %54 = phi i32 [ 0, %51 ], [ %70, %64 ]
  %55 = getelementptr %struct.zynq_platform_data, ptr %47, i32 0, i32 4, i32 %54
  %56 = load i32, ptr %55, align 4
  %57 = icmp ult i32 %45, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = getelementptr %struct.zynq_platform_data, ptr %47, i32 0, i32 5, i32 %54
  %60 = load i32, ptr %59, align 4
  %61 = icmp ult i32 %60, %45
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = sub i32 %45, %56
  br label %73

64:                                               ; preds = %58, %53
  %65 = load i32, ptr %52, align 4
  %66 = and i32 %65, 4
  %67 = icmp eq i32 %66, 0
  %68 = add i32 %54, 2
  %69 = select i1 %67, i32 %54, i32 %68
  %70 = add i32 %69, 1
  %71 = icmp slt i32 %70, %49
  br i1 %71, label %53, label %72

72:                                               ; preds = %64, %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %45) #6
  br label %73

73:                                               ; preds = %72, %62
  %74 = phi i32 [ 0, %72 ], [ %54, %62 ]
  %75 = phi i32 [ 0, %72 ], [ %63, %62 ]
  %76 = shl nuw i32 1, %75
  %77 = getelementptr inbounds %struct.zynq_gpio, ptr %44, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = shl i32 %74, 6
  %80 = add i32 %79, 528
  %81 = getelementptr i8, ptr %78, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %76) #6, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @zynq_gpio_irq_ack(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.zynq_gpio, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.zynq_platform_data, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.zynq_platform_data, ptr %8, i32 0, i32 1
  br label %14

14:                                               ; preds = %25, %12
  %15 = phi i32 [ 0, %12 ], [ %31, %25 ]
  %16 = getelementptr %struct.zynq_platform_data, ptr %8, i32 0, i32 4, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %6, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = getelementptr %struct.zynq_platform_data, ptr %8, i32 0, i32 5, i32 %15
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %21, %6
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = sub i32 %6, %17
  br label %34

25:                                               ; preds = %19, %14
  %26 = load i32, ptr %13, align 4
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  %29 = add i32 %15, 2
  %30 = select i1 %28, i32 %15, i32 %29
  %31 = add i32 %30, 1
  %32 = icmp slt i32 %31, %10
  br i1 %32, label %14, label %33

33:                                               ; preds = %25, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %6) #6
  br label %34

34:                                               ; preds = %33, %23
  %35 = phi i32 [ 0, %33 ], [ %15, %23 ]
  %36 = phi i32 [ 0, %33 ], [ %24, %23 ]
  %37 = shl nuw i32 1, %36
  %38 = getelementptr inbounds %struct.zynq_gpio, ptr %4, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = shl i32 %35, 6
  %41 = add i32 %40, 536
  %42 = getelementptr i8, ptr %39, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %37) #6, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @zynq_gpio_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.zynq_gpio, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.zynq_platform_data, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.zynq_platform_data, ptr %8, i32 0, i32 1
  br label %14

14:                                               ; preds = %25, %12
  %15 = phi i32 [ 0, %12 ], [ %31, %25 ]
  %16 = getelementptr %struct.zynq_platform_data, ptr %8, i32 0, i32 4, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %6, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = getelementptr %struct.zynq_platform_data, ptr %8, i32 0, i32 5, i32 %15
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %21, %6
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = sub i32 %6, %17
  br label %34

25:                                               ; preds = %19, %14
  %26 = load i32, ptr %13, align 4
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  %29 = add i32 %15, 2
  %30 = select i1 %28, i32 %15, i32 %29
  %31 = add i32 %30, 1
  %32 = icmp slt i32 %31, %10
  br i1 %32, label %14, label %33

33:                                               ; preds = %25, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %6) #6
  br label %34

34:                                               ; preds = %33, %23
  %35 = phi i32 [ 0, %33 ], [ %15, %23 ]
  %36 = phi i32 [ 0, %33 ], [ %24, %23 ]
  %37 = shl nuw i32 1, %36
  %38 = getelementptr inbounds %struct.zynq_gpio, ptr %4, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = shl i32 %35, 6
  %41 = add i32 %40, 532
  %42 = getelementptr i8, ptr %39, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %37) #6, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @zynq_gpio_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.zynq_gpio, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.zynq_platform_data, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.zynq_platform_data, ptr %8, i32 0, i32 1
  br label %14

14:                                               ; preds = %25, %12
  %15 = phi i32 [ 0, %12 ], [ %31, %25 ]
  %16 = getelementptr %struct.zynq_platform_data, ptr %8, i32 0, i32 4, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %6, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = getelementptr %struct.zynq_platform_data, ptr %8, i32 0, i32 5, i32 %15
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %21, %6
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = sub i32 %6, %17
  br label %34

25:                                               ; preds = %19, %14
  %26 = load i32, ptr %13, align 4
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  %29 = add i32 %15, 2
  %30 = select i1 %28, i32 %15, i32 %29
  %31 = add i32 %30, 1
  %32 = icmp slt i32 %31, %10
  br i1 %32, label %14, label %33

33:                                               ; preds = %25, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %6) #6
  br label %34

34:                                               ; preds = %33, %23
  %35 = phi i32 [ 0, %33 ], [ %15, %23 ]
  %36 = phi i32 [ 0, %33 ], [ %24, %23 ]
  %37 = shl nuw i32 1, %36
  %38 = getelementptr inbounds %struct.zynq_gpio, ptr %4, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = shl i32 %35, 6
  %41 = add i32 %40, 528
  %42 = getelementptr i8, ptr %39, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %37) #6, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_gpio_set_irq_type(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #6
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.zynq_gpio, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.zynq_platform_data, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.zynq_platform_data, ptr %9, i32 0, i32 1
  br label %15

15:                                               ; preds = %26, %13
  %16 = phi i32 [ 0, %13 ], [ %32, %26 ]
  %17 = getelementptr %struct.zynq_platform_data, ptr %9, i32 0, i32 4, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %7, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = getelementptr %struct.zynq_platform_data, ptr %9, i32 0, i32 5, i32 %16
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %22, %7
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = sub i32 %7, %18
  br label %35

26:                                               ; preds = %20, %15
  %27 = load i32, ptr %14, align 4
  %28 = and i32 %27, 4
  %29 = icmp eq i32 %28, 0
  %30 = add i32 %16, 2
  %31 = select i1 %29, i32 %16, i32 %30
  %32 = add i32 %31, 1
  %33 = icmp slt i32 %32, %11
  br i1 %33, label %15, label %34

34:                                               ; preds = %26, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %7) #6
  br label %35

35:                                               ; preds = %34, %24
  %36 = phi i32 [ 0, %34 ], [ %16, %24 ]
  %37 = phi i32 [ 0, %34 ], [ %25, %24 ]
  %38 = getelementptr inbounds %struct.zynq_gpio, ptr %5, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = shl i32 %36, 6
  %41 = add i32 %40, 540
  %42 = getelementptr i8, ptr %39, i32 %41
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #6, !srcloc !13
  %44 = load ptr, ptr %38, align 4
  %45 = add i32 %40, 544
  %46 = getelementptr i8, ptr %44, i32 %45
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #6, !srcloc !13
  %48 = load ptr, ptr %38, align 4
  %49 = add i32 %40, 548
  %50 = getelementptr i8, ptr %48, i32 %49
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #6, !srcloc !13
  switch i32 %1, label %97 [
    i32 1, label %52
    i32 2, label %58
    i32 3, label %64
    i32 4, label %68
    i32 8, label %73
  ]

52:                                               ; preds = %35
  %53 = shl nuw i32 1, %37
  %54 = or i32 %43, %53
  %55 = or i32 %47, %53
  %56 = xor i32 %53, -1
  %57 = and i32 %51, %56
  br label %78

58:                                               ; preds = %35
  %59 = shl nuw i32 1, %37
  %60 = or i32 %43, %59
  %61 = xor i32 %59, -1
  %62 = and i32 %47, %61
  %63 = and i32 %51, %61
  br label %78

64:                                               ; preds = %35
  %65 = shl nuw i32 1, %37
  %66 = or i32 %43, %65
  %67 = or i32 %51, %65
  br label %78

68:                                               ; preds = %35
  %69 = shl nuw i32 1, %37
  %70 = xor i32 %69, -1
  %71 = and i32 %43, %70
  %72 = or i32 %47, %69
  br label %78

73:                                               ; preds = %35
  %74 = shl nuw i32 1, %37
  %75 = xor i32 %74, -1
  %76 = and i32 %43, %75
  %77 = and i32 %47, %75
  br label %78

78:                                               ; preds = %73, %68, %64, %58, %52
  %79 = phi i32 [ %51, %73 ], [ %51, %68 ], [ %67, %64 ], [ %63, %58 ], [ %57, %52 ]
  %80 = phi i32 [ %77, %73 ], [ %72, %68 ], [ %47, %64 ], [ %62, %58 ], [ %55, %52 ]
  %81 = phi i32 [ %76, %73 ], [ %71, %68 ], [ %66, %64 ], [ %60, %58 ], [ %54, %52 ]
  %82 = load ptr, ptr %38, align 4
  %83 = getelementptr i8, ptr %82, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #6, !srcloc !12
  %84 = load ptr, ptr %38, align 4
  %85 = getelementptr i8, ptr %84, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %80) #6, !srcloc !12
  %86 = load ptr, ptr %38, align 4
  %87 = getelementptr i8, ptr %86, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %79) #6, !srcloc !12
  %88 = and i32 %1, 12
  %89 = icmp eq i32 %88, 0
  %90 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.irq_desc, ptr %91, i32 0, i32 3
  %93 = select i1 %89, ptr @handle_level_irq, ptr @handle_fasteoi_irq
  %94 = select i1 %89, ptr @zynq_gpio_edge_irqchip, ptr @zynq_gpio_level_irqchip
  store ptr %93, ptr %92, align 4
  %95 = getelementptr inbounds %struct.irq_desc, ptr %91, i32 0, i32 33
  store ptr null, ptr %95, align 16
  %96 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  store ptr %94, ptr %96, align 4
  br label %97

97:                                               ; preds = %78, %35
  %98 = phi i32 [ -22, %35 ], [ 0, %78 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_gpio_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #6
  %6 = getelementptr inbounds %struct.zynq_gpio, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_gpio_irq_reqres(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #6
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #6, !srcloc !9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 0, i32 -1, ptr elementtype(i32) %9) #6, !srcloc !10
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  br label %18

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @gpiochip_reqres_irq(ptr noundef %3, i32 noundef %16) #6
  br label %18

18:                                               ; preds = %14, %13, %8
  %19 = phi i32 [ %17, %14 ], [ %6, %8 ], [ %6, %13 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @zynq_gpio_irq_relres(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  tail call void @gpiochip_relres_irq(ptr noundef %3, i32 noundef %5) #6
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_reqres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_relres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_gpio_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @irq_get_irq_data(i32 noundef %5) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13) #7
  br label %86

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %9
  %19 = load i32, ptr %4, align 4
  tail call void @disable_irq(i32 noundef %19) #6
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.irq_data, ptr %6, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 16384
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %86

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.zynq_platform_data, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %84, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 1
  %34 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 5
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i32 [ 0, %32 ], [ %80, %35 ]
  %37 = load ptr, ptr %33, align 4
  %38 = shl i32 %36, 3
  %39 = getelementptr i8, ptr %37, i32 %38
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #6, !srcloc !13
  %41 = getelementptr %struct.zynq_gpio, ptr %3, i32 0, i32 5, i32 1, i32 %36
  store i32 %40, ptr %41, align 4
  %42 = load ptr, ptr %33, align 4
  %43 = or i32 %38, 4
  %44 = getelementptr i8, ptr %42, i32 %43
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #6, !srcloc !13
  %46 = getelementptr [6 x i32], ptr %34, i32 0, i32 %36
  store i32 %45, ptr %46, align 4
  %47 = load ptr, ptr %33, align 4
  %48 = shl i32 %36, 6
  %49 = add i32 %48, 516
  %50 = getelementptr i8, ptr %47, i32 %49
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #6, !srcloc !13
  %52 = getelementptr %struct.zynq_gpio, ptr %3, i32 0, i32 5, i32 2, i32 %36
  store i32 %51, ptr %52, align 4
  %53 = load ptr, ptr %33, align 4
  %54 = add i32 %48, 524
  %55 = getelementptr i8, ptr %53, i32 %54
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #6, !srcloc !13
  %57 = getelementptr %struct.zynq_gpio, ptr %3, i32 0, i32 5, i32 4, i32 %36
  store i32 %56, ptr %57, align 4
  %58 = load ptr, ptr %33, align 4
  %59 = add i32 %48, 540
  %60 = getelementptr i8, ptr %58, i32 %59
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #6, !srcloc !13
  %62 = getelementptr %struct.zynq_gpio, ptr %3, i32 0, i32 5, i32 6, i32 %36
  store i32 %61, ptr %62, align 4
  %63 = load ptr, ptr %33, align 4
  %64 = add i32 %48, 544
  %65 = getelementptr i8, ptr %63, i32 %64
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #6, !srcloc !13
  %67 = getelementptr %struct.zynq_gpio, ptr %3, i32 0, i32 5, i32 7, i32 %36
  store i32 %66, ptr %67, align 4
  %68 = load ptr, ptr %33, align 4
  %69 = add i32 %48, 548
  %70 = getelementptr i8, ptr %68, i32 %69
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #6, !srcloc !13
  %72 = getelementptr %struct.zynq_gpio, ptr %3, i32 0, i32 5, i32 8, i32 %36
  store i32 %71, ptr %72, align 4
  %73 = load ptr, ptr %27, align 4
  %74 = getelementptr inbounds %struct.zynq_platform_data, ptr %73, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 4
  %77 = icmp eq i32 %76, 0
  %78 = add i32 %36, 2
  %79 = select i1 %77, i32 %36, i32 %78
  %80 = add i32 %79, 1
  %81 = getelementptr inbounds %struct.zynq_platform_data, ptr %73, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = icmp ult i32 %80, %82
  br i1 %83, label %35, label %84

84:                                               ; preds = %35, %26
  %85 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #6
  br label %86

86:                                               ; preds = %84, %20, %8
  %87 = phi i32 [ %85, %84 ], [ -22, %8 ], [ 0, %20 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_gpio_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @irq_get_irq_data(i32 noundef %5) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13) #7
  br label %89

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %9
  %19 = load i32, ptr %4, align 4
  tail call void @enable_irq(i32 noundef %19) #6
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.irq_data, ptr %6, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 16384
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %89

26:                                               ; preds = %20
  %27 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #6
  %28 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.zynq_platform_data, ptr %29, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %89, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 1
  %35 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 5
  br label %36

36:                                               ; preds = %36, %33
  %37 = phi i32 [ 0, %33 ], [ %85, %36 ]
  %38 = load ptr, ptr %34, align 4
  %39 = shl i32 %37, 6
  %40 = add i32 %39, 532
  %41 = getelementptr i8, ptr %38, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 -1) #6, !srcloc !12
  %42 = getelementptr %struct.zynq_gpio, ptr %3, i32 0, i32 5, i32 1, i32 %37
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %34, align 4
  %45 = shl i32 %37, 3
  %46 = getelementptr i8, ptr %44, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %43) #6, !srcloc !12
  %47 = getelementptr [6 x i32], ptr %35, i32 0, i32 %37
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %34, align 4
  %50 = or i32 %45, 4
  %51 = getelementptr i8, ptr %49, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %48) #6, !srcloc !12
  %52 = getelementptr %struct.zynq_gpio, ptr %3, i32 0, i32 5, i32 2, i32 %37
  %53 = load i32, ptr %52, align 4
  %54 = load ptr, ptr %34, align 4
  %55 = add i32 %39, 516
  %56 = getelementptr i8, ptr %54, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %53) #6, !srcloc !12
  %57 = getelementptr %struct.zynq_gpio, ptr %3, i32 0, i32 5, i32 6, i32 %37
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %34, align 4
  %60 = add i32 %39, 540
  %61 = getelementptr i8, ptr %59, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %58) #6, !srcloc !12
  %62 = getelementptr %struct.zynq_gpio, ptr %3, i32 0, i32 5, i32 7, i32 %37
  %63 = load i32, ptr %62, align 4
  %64 = load ptr, ptr %34, align 4
  %65 = add i32 %39, 544
  %66 = getelementptr i8, ptr %64, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %63) #6, !srcloc !12
  %67 = getelementptr %struct.zynq_gpio, ptr %3, i32 0, i32 5, i32 8, i32 %37
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr %34, align 4
  %70 = add i32 %39, 548
  %71 = getelementptr i8, ptr %69, i32 %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %68) #6, !srcloc !12
  %72 = getelementptr %struct.zynq_gpio, ptr %3, i32 0, i32 5, i32 4, i32 %37
  %73 = load i32, ptr %72, align 4
  %74 = xor i32 %73, -1
  %75 = load ptr, ptr %34, align 4
  %76 = add i32 %39, 528
  %77 = getelementptr i8, ptr %75, i32 %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %74) #6, !srcloc !12
  %78 = load ptr, ptr %28, align 4
  %79 = getelementptr inbounds %struct.zynq_platform_data, ptr %78, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 4
  %82 = icmp eq i32 %81, 0
  %83 = add i32 %37, 2
  %84 = select i1 %82, i32 %37, i32 %83
  %85 = add i32 %84, 1
  %86 = getelementptr inbounds %struct.zynq_platform_data, ptr %78, i32 0, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = icmp ult i32 %85, %87
  br i1 %88, label %36, label %89

89:                                               ; preds = %36, %26, %20, %8
  %90 = phi i32 [ -22, %8 ], [ 0, %20 ], [ %27, %26 ], [ %27, %36 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_gpio_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_gpio_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.zynq_gpio, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %12

12:                                               ; preds = %11, %8, %1
  %13 = phi i32 [ %6, %1 ], [ %9, %11 ], [ 0, %8 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2147894892}
!9 = !{i64 393202, i64 2147883173, i64 2147883199, i64 2147883246, i64 2147883268, i64 2147883296, i64 2147883316}
!10 = !{i64 379771, i64 379796, i64 379818, i64 379834, i64 379846, i64 379866, i64 379890, i64 379906, i64 379918}
!11 = !{i64 2147895018}
!12 = !{i64 3736196}
!13 = !{i64 3736614}
