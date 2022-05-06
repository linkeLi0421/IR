; ModuleID = '/llk/IR/drivers/gpio/gpio-mvebu.c_pt.bc'
source_filename = "../drivers/gpio/gpio-mvebu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mvebu_gpio_chip = type { %struct.gpio_chip, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, i32, i32, [4 x i32], [4 x i32] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.mvebu_pwm = type { ptr, i32, i32, ptr, %struct.pwm_chip, %struct.spinlock, ptr, i32, i32, i32 }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_gpio_mvebu__207_1321_mvebu_gpio_driver_init6 = internal global ptr @mvebu_gpio_driver_init, section ".initcall6.init", align 4
@mvebu_gpio_driver = internal global %struct.platform_driver { ptr @mvebu_gpio_probe, ptr null, ptr null, ptr @mvebu_gpio_suspend, ptr @mvebu_gpio_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mvebu_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"mvebu-gpio\00", align 1
@mvebu_gpio_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv78200-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armadaxp-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-8k-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Missing ngpios OF property\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Couldn't get OF id\0A\00", align 1
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"couldn't allocate irq domain %s (DT).\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"couldn't allocate irq chips %s (DT).\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c" gpio-%-3d (%-20.20s)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c" out %s %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"(blink )\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [23 x i8] c" in  %s (act %s) - IRQ\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c" disabled\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c" edge \00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c" level\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c" (%s)\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"pending\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"clear  \00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@mvebu_gpio_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.21 = private unnamed_addr constant [24 x i8] c"marvell,armada-370-gpio\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"marvell,pwm-offset\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"failed to get clock rate\0A\00", align 1
@mvebu_pwm_ops = internal constant %struct.pwm_ops { ptr @mvebu_pwm_request, ptr @mvebu_pwm_free, ptr null, ptr @mvebu_pwm_apply, ptr @mvebu_pwm_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.25 = private unnamed_addr constant [10 x i8] c"mvebu-pwm\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_gpio_mvebu__207_1321_mvebu_gpio_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mvebu_gpio_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mvebu_gpio_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_gpio_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = tail call ptr @of_match_device(ptr noundef nonnull @mvebu_gpio_of_match, ptr noundef %4) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.of_device_id, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i32 [ %12, %9 ], [ 1, %1 ]
  %15 = tail call i32 @platform_irq_count(ptr noundef %0) #6
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %306, label %17

17:                                               ; preds = %13
  %18 = icmp eq i32 %15, 0
  %19 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 384, i32 noundef 3520) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %306, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %19, ptr %22, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = call i32 @of_property_read_variable_u32_array(ptr noundef %23, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #7
  br label %306

27:                                               ; preds = %21
  %28 = load ptr, ptr %5, align 8
  %29 = call i32 @of_alias_get_id(ptr noundef %28, ptr noundef nonnull @.str.3) #6
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #7
  br label %306

32:                                               ; preds = %27
  %33 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #6
  %34 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 7
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = call i32 @clk_prepare(ptr noundef %33) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = call i32 @clk_enable(ptr noundef %33) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  call void @clk_unprepare(ptr noundef %33) #6
  br label %43

43:                                               ; preds = %42, %39, %36, %32
  %44 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 6
  store i32 %14, ptr %44, align 4
  %45 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load ptr, ptr %4, align 4
  br label %50

50:                                               ; preds = %48, %43
  %51 = phi ptr [ %49, %48 ], [ %46, %43 ]
  store ptr %51, ptr %19, align 4
  %52 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 2
  store ptr %4, ptr %52, align 4
  %53 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 5
  store ptr @gpiochip_generic_request, ptr %53, align 4
  %54 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 6
  store ptr @gpiochip_generic_free, ptr %54, align 4
  %55 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 7
  store ptr @mvebu_gpio_get_direction, ptr %55, align 4
  %56 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 8
  store ptr @mvebu_gpio_direction_input, ptr %56, align 4
  %57 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 10
  store ptr @mvebu_gpio_get, ptr %57, align 4
  %58 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 9
  store ptr @mvebu_gpio_direction_output, ptr %58, align 4
  %59 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 12
  store ptr @mvebu_gpio_set, ptr %59, align 4
  br i1 %18, label %62, label %60

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 15
  store ptr @mvebu_gpio_to_irq, ptr %61, align 4
  br label %62

62:                                               ; preds = %60, %50
  %63 = shl i32 %29, 5
  %64 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 19
  store i32 %63, ptr %64, align 4
  %65 = load i32, ptr %3, align 4
  %66 = trunc i32 %65 to i16
  %67 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 20
  store i16 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 23
  store i8 0, ptr %68, align 4
  %69 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 16
  store ptr @mvebu_gpio_dbg_show, ptr %69, align 4
  %70 = icmp eq i32 %14, 4
  br i1 %70, label %71, label %84

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.device, ptr %73, i32 0, i32 25
  %75 = load ptr, ptr %74, align 8
  %76 = call ptr @syscon_node_to_regmap(ptr noundef %75) #6
  %77 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 1
  store ptr %76, ptr %77, align 4
  %78 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %102, label %79

79:                                               ; preds = %71
  %80 = load ptr, ptr %5, align 8
  %81 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 2
  %82 = call i32 @of_property_read_variable_u32_array(ptr noundef %80, ptr noundef nonnull @.str.20, ptr noundef %81, i32 noundef 1, i32 noundef 0) #6
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %306, label %107

84:                                               ; preds = %62
  %85 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %86 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %102, label %87

87:                                               ; preds = %84
  %88 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %4, ptr noundef null, ptr noundef %85, ptr noundef nonnull @mvebu_gpio_regmap_config, ptr noundef null, ptr noundef null) #6
  %89 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 1
  store ptr %88, ptr %89, align 4
  %90 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %102, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 2
  store i32 0, ptr %92, align 4
  %93 = load i32, ptr %44, align 4
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #6
  %97 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %4, ptr noundef null, ptr noundef %96, ptr noundef nonnull @mvebu_gpio_regmap_config, ptr noundef null, ptr noundef null) #6
  %100 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 3
  store ptr %99, ptr %100, align 4
  %101 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %101, label %102, label %106

102:                                              ; preds = %98, %95, %87, %84, %71
  %103 = phi ptr [ %99, %98 ], [ %76, %71 ], [ %85, %84 ], [ %88, %87 ], [ %96, %95 ]
  %104 = ptrtoint ptr %103 to i32
  %105 = icmp eq ptr %103, null
  br i1 %105, label %106, label %306

106:                                              ; preds = %102, %98, %91
  switch i32 %14, label %167 [
    i32 1, label %107
    i32 4, label %107
    i32 2, label %122
    i32 3, label %134
  ]

107:                                              ; preds = %106, %106, %79
  %108 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 2
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %111, 20
  %113 = call i32 @regmap_write(ptr noundef %109, i32 noundef %112, i32 noundef 0) #6
  %114 = load ptr, ptr %108, align 4
  %115 = load i32, ptr %110, align 4
  %116 = add i32 %115, 24
  %117 = call i32 @regmap_write(ptr noundef %114, i32 noundef %116, i32 noundef 0) #6
  %118 = load ptr, ptr %108, align 4
  %119 = load i32, ptr %110, align 4
  %120 = add i32 %119, 28
  %121 = call i32 @regmap_write(ptr noundef %118, i32 noundef %120, i32 noundef 0) #6
  br label %168

122:                                              ; preds = %106
  %123 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = call i32 @regmap_write(ptr noundef %124, i32 noundef 20, i32 noundef 0) #6
  %126 = load ptr, ptr %123, align 4
  %127 = call i32 @regmap_write(ptr noundef %126, i32 noundef 24, i32 noundef 0) #6
  %128 = load ptr, ptr %123, align 4
  %129 = call i32 @regmap_write(ptr noundef %128, i32 noundef 28, i32 noundef 0) #6
  %130 = load ptr, ptr %123, align 4
  %131 = call i32 @regmap_write(ptr noundef %130, i32 noundef 48, i32 noundef 0) #6
  %132 = load ptr, ptr %123, align 4
  %133 = call i32 @regmap_write(ptr noundef %132, i32 noundef 52, i32 noundef 0) #6
  br label %168

134:                                              ; preds = %106
  %135 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = call i32 @regmap_write(ptr noundef %136, i32 noundef 20, i32 noundef 0) #6
  %138 = load ptr, ptr %135, align 4
  %139 = call i32 @regmap_write(ptr noundef %138, i32 noundef 24, i32 noundef 0) #6
  %140 = load ptr, ptr %135, align 4
  %141 = call i32 @regmap_write(ptr noundef %140, i32 noundef 28, i32 noundef 0) #6
  %142 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 3
  %143 = load ptr, ptr %142, align 4
  %144 = call i32 @regmap_write(ptr noundef %143, i32 noundef 0, i32 noundef 0) #6
  %145 = load ptr, ptr %142, align 4
  %146 = call i32 @regmap_write(ptr noundef %145, i32 noundef 16, i32 noundef 0) #6
  %147 = load ptr, ptr %142, align 4
  %148 = call i32 @regmap_write(ptr noundef %147, i32 noundef 32, i32 noundef 0) #6
  %149 = load ptr, ptr %142, align 4
  %150 = call i32 @regmap_write(ptr noundef %149, i32 noundef 4, i32 noundef 0) #6
  %151 = load ptr, ptr %142, align 4
  %152 = call i32 @regmap_write(ptr noundef %151, i32 noundef 20, i32 noundef 0) #6
  %153 = load ptr, ptr %142, align 4
  %154 = call i32 @regmap_write(ptr noundef %153, i32 noundef 36, i32 noundef 0) #6
  %155 = load ptr, ptr %142, align 4
  %156 = call i32 @regmap_write(ptr noundef %155, i32 noundef 8, i32 noundef 0) #6
  %157 = load ptr, ptr %142, align 4
  %158 = call i32 @regmap_write(ptr noundef %157, i32 noundef 24, i32 noundef 0) #6
  %159 = load ptr, ptr %142, align 4
  %160 = call i32 @regmap_write(ptr noundef %159, i32 noundef 40, i32 noundef 0) #6
  %161 = load ptr, ptr %142, align 4
  %162 = call i32 @regmap_write(ptr noundef %161, i32 noundef 12, i32 noundef 0) #6
  %163 = load ptr, ptr %142, align 4
  %164 = call i32 @regmap_write(ptr noundef %163, i32 noundef 28, i32 noundef 0) #6
  %165 = load ptr, ptr %142, align 4
  %166 = call i32 @regmap_write(ptr noundef %165, i32 noundef 44, i32 noundef 0) #6
  br label %168

167:                                              ; preds = %106
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1232, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

168:                                              ; preds = %134, %122, %107
  %169 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %4, ptr noundef nonnull %19, ptr noundef nonnull %19, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %170 = getelementptr inbounds %struct.gpio_chip, ptr %19, i32 0, i32 39
  %171 = load ptr, ptr %170, align 4
  %172 = call i32 @of_device_is_compatible(ptr noundef %171, ptr noundef nonnull @.str.21) #6
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %168
  %175 = call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.22) #6
  %176 = icmp eq ptr %175, null
  br i1 %176, label %243, label %177

177:                                              ; preds = %174
  store i32 0, ptr %2, align 4
  br label %185

178:                                              ; preds = %168
  %179 = load i32, ptr %44, align 4
  %180 = icmp eq i32 %179, 4
  br i1 %180, label %181, label %243

181:                                              ; preds = %178
  %182 = load ptr, ptr %5, align 8
  %183 = call i32 @of_property_read_variable_u32_array(ptr noundef %182, ptr noundef nonnull @.str.23, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %243, label %185

185:                                              ; preds = %181, %177
  %186 = load ptr, ptr %34, align 4
  %187 = icmp ugt ptr %186, inttoptr (i32 -4096 to ptr)
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = ptrtoint ptr %186 to i32
  br label %243

190:                                              ; preds = %185
  %191 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 72, i32 noundef 3520) #6
  %192 = icmp eq ptr %191, null
  br i1 %192, label %241, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 8
  store ptr %191, ptr %194, align 4
  %195 = getelementptr inbounds %struct.mvebu_pwm, ptr %191, i32 0, i32 6
  store ptr %19, ptr %195, align 4
  %196 = load i32, ptr %2, align 4
  %197 = getelementptr inbounds %struct.mvebu_pwm, ptr %191, i32 0, i32 1
  store i32 %196, ptr %197, align 4
  %198 = load i32, ptr %44, align 4
  %199 = icmp eq i32 %198, 4
  br i1 %199, label %200, label %207

200:                                              ; preds = %193
  %201 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 1
  %202 = load ptr, ptr %201, align 4
  store ptr %202, ptr %191, align 4
  %203 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 2
  %204 = load i32, ptr %203, align 4
  switch i32 %204, label %241 [
    i32 4160, label %219
    i32 256, label %219
    i32 320, label %205
  ]

205:                                              ; preds = %200
  %206 = add i32 %196, 8
  store i32 %206, ptr %197, align 4
  br label %219

207:                                              ; preds = %193
  %208 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.22) #6
  %209 = icmp ugt ptr %208, inttoptr (i32 -4096 to ptr)
  br i1 %209, label %210, label %212

210:                                              ; preds = %207
  %211 = ptrtoint ptr %208 to i32
  br label %243

212:                                              ; preds = %207
  %213 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %4, ptr noundef null, ptr noundef %208, ptr noundef nonnull @mvebu_gpio_regmap_config, ptr noundef null, ptr noundef null) #6
  store ptr %213, ptr %191, align 4
  %214 = icmp ugt ptr %213, inttoptr (i32 -4096 to ptr)
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = ptrtoint ptr %213 to i32
  br label %243

217:                                              ; preds = %212
  switch i32 %29, label %241 [
    i32 0, label %219
    i32 1, label %218
  ]

218:                                              ; preds = %217
  br label %219

219:                                              ; preds = %218, %217, %205, %200, %200
  %220 = phi i32 [ -1, %205 ], [ -1, %218 ], [ 0, %200 ], [ 0, %200 ], [ %29, %217 ]
  %221 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 1
  %222 = load ptr, ptr %221, align 4
  %223 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 2
  %224 = load i32, ptr %223, align 4
  %225 = add i32 %224, 32
  %226 = call i32 @regmap_write(ptr noundef %222, i32 noundef %225, i32 noundef %220) #6
  %227 = load ptr, ptr %34, align 4
  %228 = call i32 @clk_get_rate(ptr noundef %227) #6
  %229 = getelementptr inbounds %struct.mvebu_pwm, ptr %191, i32 0, i32 2
  store i32 %228, ptr %229, align 4
  %230 = icmp eq i32 %228, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %219
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.24) #7
  br label %241

232:                                              ; preds = %219
  %233 = getelementptr inbounds %struct.mvebu_pwm, ptr %191, i32 0, i32 4
  store ptr %4, ptr %233, align 4
  %234 = getelementptr inbounds %struct.mvebu_pwm, ptr %191, i32 0, i32 4, i32 1
  store ptr @mvebu_pwm_ops, ptr %234, align 4
  %235 = load i16, ptr %67, align 4
  %236 = zext i16 %235 to i32
  %237 = getelementptr inbounds %struct.mvebu_pwm, ptr %191, i32 0, i32 4, i32 3
  store i32 %236, ptr %237, align 4
  %238 = getelementptr inbounds %struct.mvebu_pwm, ptr %191, i32 0, i32 4, i32 2
  store i32 -1, ptr %238, align 4
  %239 = getelementptr inbounds %struct.mvebu_pwm, ptr %191, i32 0, i32 5
  store i32 0, ptr %239, align 4
  %240 = call i32 @pwmchip_add(ptr noundef %233) #6
  br label %243

241:                                              ; preds = %231, %217, %200, %190
  %242 = phi i32 [ -22, %217 ], [ -22, %200 ], [ -12, %190 ], [ -22, %231 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %306

243:                                              ; preds = %232, %215, %210, %188, %181, %178, %174
  %244 = phi i32 [ %189, %188 ], [ %240, %232 ], [ %211, %210 ], [ %216, %215 ], [ 0, %181 ], [ 0, %174 ], [ 0, %178 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %245 = icmp ne i32 %244, 0
  %246 = select i1 %245, i1 true, i1 %18
  br i1 %246, label %306, label %247

247:                                              ; preds = %243
  %248 = load i32, ptr %3, align 4
  %249 = icmp eq ptr %6, null
  %250 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 3
  %251 = select i1 %249, ptr null, ptr %250
  %252 = call ptr @__irq_domain_add(ptr noundef %251, i32 noundef %248, i32 noundef %248, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #6
  %253 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 5
  store ptr %252, ptr %253, align 4
  %254 = icmp eq ptr %252, null
  br i1 %254, label %255, label %257

255:                                              ; preds = %247
  %256 = load ptr, ptr %19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef %256) #7
  br label %301

257:                                              ; preds = %247
  %258 = load i32, ptr %3, align 4
  %259 = icmp ugt i32 %258, 32
  br i1 %259, label %260, label %261, !prof !10

260:                                              ; preds = %257
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1259, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

261:                                              ; preds = %257
  %262 = load ptr, ptr %6, align 4
  %263 = call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %252, i32 noundef %258, i32 noundef 2, ptr noundef %262, ptr noundef nonnull @handle_level_irq, i32 noundef 3328, i32 noundef 0, i32 noundef 0) #6
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %261
  %266 = load ptr, ptr %19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef %266) #7
  %267 = load ptr, ptr %253, align 4
  call void @irq_domain_remove(ptr noundef %267) #6
  br label %301

268:                                              ; preds = %261
  %269 = load ptr, ptr %253, align 4
  %270 = call ptr @irq_get_domain_generic_chip(ptr noundef %269, i32 noundef 0) #6
  %271 = getelementptr inbounds %struct.irq_chip_generic, ptr %270, i32 0, i32 14
  store ptr %19, ptr %271, align 4
  %272 = getelementptr inbounds %struct.irq_chip_generic, ptr %270, i32 3, i32 2
  store i32 12, ptr %272, align 4
  %273 = getelementptr inbounds %struct.irq_chip_generic, ptr %270, i32 1, i32 7
  store ptr @mvebu_gpio_level_irq_mask, ptr %273, align 4
  %274 = getelementptr inbounds %struct.irq_chip_generic, ptr %270, i32 1, i32 9
  store ptr @mvebu_gpio_level_irq_unmask, ptr %274, align 4
  %275 = getelementptr inbounds %struct.irq_chip_generic, ptr %270, i32 1, i32 13
  store ptr @mvebu_gpio_irq_set_type, ptr %275, align 4
  %276 = load ptr, ptr %19, align 4
  %277 = getelementptr inbounds %struct.irq_chip_generic, ptr %270, i32 1, i32 1
  store ptr %276, ptr %277, align 4
  %278 = getelementptr %struct.irq_chip_generic, ptr %270, i32 5, i32 7
  store i32 3, ptr %278, align 4
  %279 = getelementptr %struct.irq_chip_generic, ptr %270, i32 3, i32 11
  store ptr @mvebu_gpio_irq_ack, ptr %279, align 4
  %280 = getelementptr %struct.irq_chip_generic, ptr %270, i32 3, i32 12
  store ptr @mvebu_gpio_edge_irq_mask, ptr %280, align 4
  %281 = getelementptr %struct.irq_chip_generic, ptr %270, i32 3, i32 14
  store ptr @mvebu_gpio_edge_irq_unmask, ptr %281, align 4
  %282 = getelementptr %struct.irq_chip_generic, ptr %270, i32 3, i32 18
  store ptr @mvebu_gpio_irq_set_type, ptr %282, align 4
  %283 = getelementptr %struct.irq_chip_generic, ptr %270, i32 5, i32 6
  store ptr @handle_edge_irq, ptr %283, align 4
  %284 = load ptr, ptr %19, align 4
  %285 = getelementptr %struct.irq_chip_generic, ptr %270, i32 3, i32 6
  store ptr %284, ptr %285, align 4
  %286 = call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 0) #6
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %268
  call void @irq_set_chained_handler_and_data(i32 noundef %286, ptr noundef nonnull @mvebu_gpio_irq_handler, ptr noundef nonnull %19) #6
  br label %289

289:                                              ; preds = %288, %268
  %290 = call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 1) #6
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %293, label %292

292:                                              ; preds = %289
  call void @irq_set_chained_handler_and_data(i32 noundef %290, ptr noundef nonnull @mvebu_gpio_irq_handler, ptr noundef nonnull %19) #6
  br label %293

293:                                              ; preds = %292, %289
  %294 = call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 2) #6
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %297, label %296

296:                                              ; preds = %293
  call void @irq_set_chained_handler_and_data(i32 noundef %294, ptr noundef nonnull @mvebu_gpio_irq_handler, ptr noundef nonnull %19) #6
  br label %297

297:                                              ; preds = %296, %293
  %298 = call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 3) #6
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %306, label %300

300:                                              ; preds = %297
  call void @irq_set_chained_handler_and_data(i32 noundef %298, ptr noundef nonnull @mvebu_gpio_irq_handler, ptr noundef nonnull %19) #6
  br label %306

301:                                              ; preds = %265, %255
  %302 = phi i32 [ %263, %265 ], [ -19, %255 ]
  %303 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 8
  %304 = load ptr, ptr %303, align 4
  %305 = getelementptr inbounds %struct.mvebu_pwm, ptr %304, i32 0, i32 4
  call void @pwmchip_remove(ptr noundef %305) #6
  br label %306

306:                                              ; preds = %301, %300, %297, %243, %241, %102, %79, %31, %26, %17, %13
  %307 = phi i32 [ -19, %26 ], [ %29, %31 ], [ %302, %301 ], [ %15, %13 ], [ -12, %17 ], [ %104, %102 ], [ %244, %243 ], [ %242, %241 ], [ -22, %79 ], [ 0, %300 ], [ 0, %297 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %307
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_gpio_suspend(ptr nocapture noundef readonly %0, [1 x i32] %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 9
  %10 = tail call i32 @regmap_read(ptr noundef %6, i32 noundef %8, ptr noundef %9) #6
  %11 = load ptr, ptr %5, align 4
  %12 = load i32, ptr %7, align 4
  %13 = add i32 %12, 4
  %14 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 10
  %15 = tail call i32 @regmap_read(ptr noundef %11, i32 noundef %13, ptr noundef %14) #6
  %16 = load ptr, ptr %5, align 4
  %17 = load i32, ptr %7, align 4
  %18 = add i32 %17, 8
  %19 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 11
  %20 = tail call i32 @regmap_read(ptr noundef %16, i32 noundef %18, ptr noundef %19) #6
  %21 = load ptr, ptr %5, align 4
  %22 = load i32, ptr %7, align 4
  %23 = add i32 %22, 12
  %24 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 12
  %25 = tail call i32 @regmap_read(ptr noundef %21, i32 noundef %23, ptr noundef %24) #6
  %26 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %77 [
    i32 1, label %66
    i32 4, label %66
    i32 2, label %53
    i32 3, label %28
  ]

28:                                               ; preds = %2
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 13, i32 0
  %31 = tail call i32 @regmap_read(ptr noundef %29, i32 noundef 16, ptr noundef %30) #6
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 14, i32 0
  %34 = tail call i32 @regmap_read(ptr noundef %32, i32 noundef 32, ptr noundef %33) #6
  %35 = load ptr, ptr %5, align 4
  %36 = getelementptr %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 13, i32 1
  %37 = tail call i32 @regmap_read(ptr noundef %35, i32 noundef 20, ptr noundef %36) #6
  %38 = load ptr, ptr %5, align 4
  %39 = getelementptr %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 14, i32 1
  %40 = tail call i32 @regmap_read(ptr noundef %38, i32 noundef 36, ptr noundef %39) #6
  %41 = load ptr, ptr %5, align 4
  %42 = getelementptr %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 13, i32 2
  %43 = tail call i32 @regmap_read(ptr noundef %41, i32 noundef 24, ptr noundef %42) #6
  %44 = load ptr, ptr %5, align 4
  %45 = getelementptr %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 14, i32 2
  %46 = tail call i32 @regmap_read(ptr noundef %44, i32 noundef 40, ptr noundef %45) #6
  %47 = load ptr, ptr %5, align 4
  %48 = getelementptr %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 13, i32 3
  %49 = tail call i32 @regmap_read(ptr noundef %47, i32 noundef 28, ptr noundef %48) #6
  %50 = load ptr, ptr %5, align 4
  %51 = getelementptr %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 14, i32 3
  %52 = tail call i32 @regmap_read(ptr noundef %50, i32 noundef 44, ptr noundef %51) #6
  br label %78

53:                                               ; preds = %2
  %54 = load ptr, ptr %5, align 4
  %55 = getelementptr %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 13, i32 0
  %56 = tail call i32 @regmap_read(ptr noundef %54, i32 noundef 24, ptr noundef %55) #6
  %57 = load ptr, ptr %5, align 4
  %58 = getelementptr %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 14, i32 0
  %59 = tail call i32 @regmap_read(ptr noundef %57, i32 noundef 28, ptr noundef %58) #6
  %60 = load ptr, ptr %5, align 4
  %61 = getelementptr %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 13, i32 1
  %62 = tail call i32 @regmap_read(ptr noundef %60, i32 noundef 48, ptr noundef %61) #6
  %63 = load ptr, ptr %5, align 4
  %64 = getelementptr %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 14, i32 1
  %65 = tail call i32 @regmap_read(ptr noundef %63, i32 noundef 52, ptr noundef %64) #6
  br label %78

66:                                               ; preds = %2, %2
  %67 = load ptr, ptr %5, align 4
  %68 = load i32, ptr %7, align 4
  %69 = add i32 %68, 24
  %70 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 13
  %71 = tail call i32 @regmap_read(ptr noundef %67, i32 noundef %69, ptr noundef %70) #6
  %72 = load ptr, ptr %5, align 4
  %73 = load i32, ptr %7, align 4
  %74 = add i32 %73, 28
  %75 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 14
  %76 = tail call i32 @regmap_read(ptr noundef %72, i32 noundef %74, ptr noundef %75) #6
  br label %78

77:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1009, 0\0A.popsection", ""() #6, !srcloc !12
  unreachable

78:                                               ; preds = %66, %53, %28
  %79 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 8
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %5, align 4
  %82 = load i32, ptr %7, align 4
  %83 = add i32 %82, 32
  %84 = getelementptr inbounds %struct.mvebu_pwm, ptr %80, i32 0, i32 7
  %85 = tail call i32 @regmap_read(ptr noundef %81, i32 noundef %83, ptr noundef %84) #6
  %86 = load ptr, ptr %80, align 4
  %87 = getelementptr inbounds %struct.mvebu_pwm, ptr %80, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.mvebu_pwm, ptr %80, i32 0, i32 8
  %90 = tail call i32 @regmap_read(ptr noundef %86, i32 noundef %88, ptr noundef %89) #6
  %91 = load ptr, ptr %80, align 4
  %92 = load i32, ptr %87, align 4
  %93 = add i32 %92, 4
  %94 = getelementptr inbounds %struct.mvebu_pwm, ptr %80, i32 0, i32 9
  %95 = tail call i32 @regmap_read(ptr noundef %91, i32 noundef %93, ptr noundef %94) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_gpio_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %7, i32 noundef %9) #6
  %11 = load ptr, ptr %4, align 4
  %12 = load i32, ptr %6, align 4
  %13 = add i32 %12, 4
  %14 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %13, i32 noundef %15) #6
  %17 = load ptr, ptr %4, align 4
  %18 = load i32, ptr %6, align 4
  %19 = add i32 %18, 8
  %20 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef %19, i32 noundef %21) #6
  %23 = load ptr, ptr %4, align 4
  %24 = load i32, ptr %6, align 4
  %25 = add i32 %24, 12
  %26 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 12
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef %25, i32 noundef %27) #6
  %29 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  switch i32 %30, label %94 [
    i32 1, label %81
    i32 4, label %81
    i32 2, label %64
    i32 3, label %31
  ]

31:                                               ; preds = %1
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 13, i32 0
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 16, i32 noundef %34) #6
  %36 = load ptr, ptr %4, align 4
  %37 = getelementptr %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 14, i32 0
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 32, i32 noundef %38) #6
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 13, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 20, i32 noundef %42) #6
  %44 = load ptr, ptr %4, align 4
  %45 = getelementptr %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 14, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 36, i32 noundef %46) #6
  %48 = load ptr, ptr %4, align 4
  %49 = getelementptr %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 13, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 24, i32 noundef %50) #6
  %52 = load ptr, ptr %4, align 4
  %53 = getelementptr %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 14, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 40, i32 noundef %54) #6
  %56 = load ptr, ptr %4, align 4
  %57 = getelementptr %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 13, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 28, i32 noundef %58) #6
  %60 = load ptr, ptr %4, align 4
  %61 = getelementptr %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 14, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = tail call i32 @regmap_write(ptr noundef %60, i32 noundef 44, i32 noundef %62) #6
  br label %95

64:                                               ; preds = %1
  %65 = load ptr, ptr %4, align 4
  %66 = getelementptr %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 13, i32 0
  %67 = load i32, ptr %66, align 4
  %68 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 24, i32 noundef %67) #6
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 14, i32 0
  %71 = load i32, ptr %70, align 4
  %72 = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 28, i32 noundef %71) #6
  %73 = load ptr, ptr %4, align 4
  %74 = getelementptr %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 13, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = tail call i32 @regmap_write(ptr noundef %73, i32 noundef 48, i32 noundef %75) #6
  %77 = load ptr, ptr %4, align 4
  %78 = getelementptr %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 14, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef 52, i32 noundef %79) #6
  br label %95

81:                                               ; preds = %1, %1
  %82 = load ptr, ptr %4, align 4
  %83 = load i32, ptr %6, align 4
  %84 = add i32 %83, 24
  %85 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 13
  %86 = load i32, ptr %85, align 4
  %87 = tail call i32 @regmap_write(ptr noundef %82, i32 noundef %84, i32 noundef %86) #6
  %88 = load ptr, ptr %4, align 4
  %89 = load i32, ptr %6, align 4
  %90 = add i32 %89, 28
  %91 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 14
  %92 = load i32, ptr %91, align 4
  %93 = tail call i32 @regmap_write(ptr noundef %88, i32 noundef %90, i32 noundef %92) #6
  br label %95

94:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1061, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

95:                                               ; preds = %81, %64, %31
  %96 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 8
  %97 = load ptr, ptr %96, align 4
  %98 = load ptr, ptr %4, align 4
  %99 = load i32, ptr %6, align 4
  %100 = add i32 %99, 32
  %101 = getelementptr inbounds %struct.mvebu_pwm, ptr %97, i32 0, i32 7
  %102 = load i32, ptr %101, align 4
  %103 = tail call i32 @regmap_write(ptr noundef %98, i32 noundef %100, i32 noundef %102) #6
  %104 = load ptr, ptr %97, align 4
  %105 = getelementptr inbounds %struct.mvebu_pwm, ptr %97, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr inbounds %struct.mvebu_pwm, ptr %97, i32 0, i32 8
  %108 = load i32, ptr %107, align 4
  %109 = tail call i32 @regmap_write(ptr noundef %104, i32 noundef %106, i32 noundef %108) #6
  %110 = load ptr, ptr %97, align 4
  %111 = load i32, ptr %105, align 4
  %112 = add i32 %111, 4
  %113 = getelementptr inbounds %struct.mvebu_pwm, ptr %97, i32 0, i32 9
  %114 = load i32, ptr %113, align 4
  %115 = tail call i32 @regmap_write(ptr noundef %110, i32 noundef %112, i32 noundef %114) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_gpio_get_direction(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 4
  %10 = call i32 @regmap_read(ptr noundef %6, i32 noundef %9, ptr noundef nonnull %3) #6
  %11 = load i32, ptr %3, align 4
  %12 = lshr i32 %11, %1
  %13 = and i32 %12, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_gpio_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %1
  %7 = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %6) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 4
  %15 = shl nuw i32 1, %1
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %14, i32 noundef %15, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %17

17:                                               ; preds = %9, %2
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %6, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 4
  %12 = call i32 @regmap_read(ptr noundef %8, i32 noundef %11, ptr noundef nonnull %3) #6
  %13 = load i32, ptr %3, align 4
  %14 = shl nuw i32 1, %1
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %18 = load ptr, ptr %7, align 4
  %19 = load i32, ptr %9, align 4
  %20 = add i32 %19, 16
  %21 = call i32 @regmap_read(ptr noundef %18, i32 noundef %20, ptr noundef nonnull %4) #6
  %22 = load ptr, ptr %7, align 4
  %23 = load i32, ptr %9, align 4
  %24 = add i32 %23, 12
  %25 = call i32 @regmap_read(ptr noundef %22, i32 noundef %24, ptr noundef nonnull %5) #6
  %26 = load i32, ptr %4, align 4
  %27 = load i32, ptr %5, align 4
  %28 = xor i32 %27, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %34

29:                                               ; preds = %2
  %30 = load ptr, ptr %7, align 4
  %31 = load i32, ptr %9, align 4
  %32 = call i32 @regmap_read(ptr noundef %30, i32 noundef %31, ptr noundef nonnull %3) #6
  %33 = load i32, ptr %3, align 4
  br label %34

34:                                               ; preds = %29, %17
  %35 = phi i32 [ %33, %29 ], [ %28, %17 ]
  %36 = lshr i32 %35, %1
  %37 = and i32 %36, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, %1
  %8 = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %7) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %3
  %11 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %12 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %11, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 8
  %17 = shl nuw i32 1, %1
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %16, i32 noundef %17, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %19 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %20 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %19, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %2, 0
  %25 = select i1 %24, i32 0, i32 %17
  %26 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %23, i32 noundef %17, i32 noundef %25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %27 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 4
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %31, i32 noundef %17, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %33

33:                                               ; preds = %10, %3
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvebu_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = shl nuw i32 1, %1
  %10 = icmp eq i32 %2, 0
  %11 = select i1 %10, i32 0, i32 %9
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %8, i32 noundef %9, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_gpio_to_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_create_mapping_affinity(ptr noundef %5, i32 noundef %1, ptr noundef null) #6
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvebu_gpio_dbg_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  store i32 0, ptr %9, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  store i32 0, ptr %10, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %11, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = call i32 @regmap_read(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %6) #6
  %17 = load ptr, ptr %12, align 4
  %18 = load i32, ptr %14, align 4
  %19 = add i32 %18, 4
  %20 = call i32 @regmap_read(ptr noundef %17, i32 noundef %19, ptr noundef nonnull %7) #6
  %21 = load ptr, ptr %12, align 4
  %22 = load i32, ptr %14, align 4
  %23 = add i32 %22, 8
  %24 = call i32 @regmap_read(ptr noundef %21, i32 noundef %23, ptr noundef nonnull %8) #6
  %25 = load ptr, ptr %12, align 4
  %26 = load i32, ptr %14, align 4
  %27 = add i32 %26, 12
  %28 = call i32 @regmap_read(ptr noundef %25, i32 noundef %27, ptr noundef nonnull %9) #6
  %29 = load ptr, ptr %12, align 4
  %30 = load i32, ptr %14, align 4
  %31 = add i32 %30, 16
  %32 = call i32 @regmap_read(ptr noundef %29, i32 noundef %31, ptr noundef nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %33 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %11, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  switch i32 %34, label %44 [
    i32 1, label %35
    i32 2, label %35
    i32 4, label %35
    i32 3, label %38
  ]

35:                                               ; preds = %2, %2, %2
  %36 = load i32, ptr %14, align 4
  %37 = add i32 %36, 20
  br label %45

38:                                               ; preds = %2
  %39 = tail call ptr @llvm.thread.pointer() #6
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %11, i32 0, i32 3
  %43 = shl i32 %41, 2
  br label %45

44:                                               ; preds = %2
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 159, 0\0A.popsection", ""() #6, !srcloc !14
  unreachable

45:                                               ; preds = %38, %35
  %46 = phi ptr [ %42, %38 ], [ %12, %35 ]
  %47 = phi i32 [ %43, %38 ], [ %37, %35 ]
  %48 = load ptr, ptr %46, align 4
  %49 = call i32 @regmap_read(ptr noundef %48, i32 noundef %47, ptr noundef nonnull %5) #6
  %50 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %51 = load i32, ptr %33, align 4
  switch i32 %51, label %68 [
    i32 1, label %52
    i32 4, label %52
    i32 2, label %55
    i32 3, label %61
  ]

52:                                               ; preds = %45, %45
  %53 = load i32, ptr %14, align 4
  %54 = add i32 %53, 24
  br label %69

55:                                               ; preds = %45
  %56 = tail call ptr @llvm.thread.pointer() #6
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 24, i32 48
  br label %69

61:                                               ; preds = %45
  %62 = tail call ptr @llvm.thread.pointer() #6
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %11, i32 0, i32 3
  %66 = shl i32 %64, 2
  %67 = add i32 %66, 16
  br label %69

68:                                               ; preds = %45
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 209, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

69:                                               ; preds = %61, %55, %52
  %70 = phi ptr [ %65, %61 ], [ %12, %55 ], [ %12, %52 ]
  %71 = phi i32 [ %67, %61 ], [ %60, %55 ], [ %54, %52 ]
  %72 = load ptr, ptr %70, align 4
  %73 = call i32 @regmap_read(ptr noundef %72, i32 noundef %71, ptr noundef nonnull %4) #6
  %74 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %75 = load i32, ptr %33, align 4
  switch i32 %75, label %92 [
    i32 1, label %76
    i32 4, label %76
    i32 2, label %79
    i32 3, label %85
  ]

76:                                               ; preds = %69, %69
  %77 = load i32, ptr %14, align 4
  %78 = add i32 %77, 28
  br label %93

79:                                               ; preds = %69
  %80 = tail call ptr @llvm.thread.pointer() #6
  %81 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 8
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 28, i32 52
  br label %93

85:                                               ; preds = %69
  %86 = tail call ptr @llvm.thread.pointer() #6
  %87 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %88 = load i32, ptr %87, align 8
  %89 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %11, i32 0, i32 3
  %90 = shl i32 %88, 2
  %91 = add i32 %90, 32
  br label %93

92:                                               ; preds = %69
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 259, 0\0A.popsection", ""() #6, !srcloc !16
  unreachable

93:                                               ; preds = %85, %79, %76
  %94 = phi ptr [ %89, %85 ], [ %12, %79 ], [ %12, %76 ]
  %95 = phi i32 [ %91, %85 ], [ %84, %79 ], [ %78, %76 ]
  %96 = load ptr, ptr %94, align 4
  %97 = call i32 @regmap_read(ptr noundef %96, i32 noundef %95, ptr noundef nonnull %3) #6
  %98 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %99 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %100 = load i16, ptr %99, align 4
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %155, label %102

102:                                              ; preds = %93
  %103 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 19
  %104 = or i32 %98, %74
  br label %105

105:                                              ; preds = %150, %102
  %106 = phi i32 [ 0, %102 ], [ %151, %150 ]
  %107 = call ptr @gpiochip_is_requested(ptr noundef %1, i32 noundef %106) #6
  %108 = icmp eq ptr %107, null
  br i1 %108, label %150, label %109

109:                                              ; preds = %105
  %110 = shl nuw i32 1, %106
  %111 = load i32, ptr %7, align 4
  %112 = and i32 %111, %110
  %113 = icmp eq i32 %112, 0
  %114 = load i32, ptr %103, align 4
  %115 = add i32 %114, %106
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %115, ptr noundef nonnull %107) #6
  br i1 %113, label %116, label %125

116:                                              ; preds = %109
  %117 = load i32, ptr %6, align 4
  %118 = and i32 %117, %110
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, ptr @.str.10, ptr @.str.9
  %121 = load i32, ptr %8, align 4
  %122 = and i32 %121, %110
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %123, ptr @.str.12, ptr @.str.11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %120, ptr noundef nonnull %124) #6
  br label %150

125:                                              ; preds = %109
  %126 = load i32, ptr %10, align 4
  %127 = load i32, ptr %9, align 4
  %128 = xor i32 %127, %126
  %129 = and i32 %128, %110
  %130 = icmp eq i32 %129, 0
  %131 = select i1 %130, ptr @.str.10, ptr @.str.9
  %132 = and i32 %127, %110
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %133, ptr @.str.9, ptr @.str.10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull %131, ptr noundef nonnull %134) #6
  %135 = and i32 %110, %104
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.14) #6
  br label %150

138:                                              ; preds = %125
  %139 = and i32 %110, %74
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.15) #6
  br label %142

142:                                              ; preds = %141, %138
  %143 = and i32 %110, %98
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %142
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.16) #6
  br label %146

146:                                              ; preds = %145, %142
  %147 = and i32 %110, %50
  %148 = icmp eq i32 %147, 0
  %149 = select i1 %148, ptr @.str.19, ptr @.str.18
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull %149) #6
  br label %150

150:                                              ; preds = %146, %137, %116, %105
  %151 = add nuw nsw i32 %106, 1
  %152 = load i16, ptr %99, align 4
  %153 = zext i16 %152 to i32
  %154 = icmp ult i32 %151, %153
  br i1 %154, label %105, label %155

155:                                              ; preds = %150, %93
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvebu_gpio_level_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #6
  %9 = xor i32 %8, -1
  %10 = getelementptr inbounds %struct.irq_chip_type, ptr %7, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, %9
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %34 [
    i32 1, label %15
    i32 4, label %15
    i32 2, label %20
    i32 3, label %27
  ]

15:                                               ; preds = %1, %1
  %16 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 1
  %17 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 28
  br label %35

20:                                               ; preds = %1
  %21 = tail call ptr @llvm.thread.pointer() #6
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 1
  %25 = icmp eq i32 %23, 0
  %26 = select i1 %25, i32 28, i32 52
  br label %35

27:                                               ; preds = %1
  %28 = tail call ptr @llvm.thread.pointer() #6
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 3
  %32 = shl i32 %30, 2
  %33 = add i32 %32, 32
  br label %35

34:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 259, 0\0A.popsection", ""() #6, !srcloc !16
  unreachable

35:                                               ; preds = %27, %20, %15
  %36 = phi ptr [ %31, %27 ], [ %24, %20 ], [ %16, %15 ]
  %37 = phi i32 [ %33, %27 ], [ %26, %20 ], [ %19, %15 ]
  %38 = load ptr, ptr %36, align 4
  %39 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef %37, i32 noundef %12) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  %40 = load i16, ptr %3, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvebu_gpio_level_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #6
  %9 = getelementptr inbounds %struct.irq_chip_type, ptr %7, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, %8
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %33 [
    i32 1, label %14
    i32 4, label %14
    i32 2, label %19
    i32 3, label %26
  ]

14:                                               ; preds = %1, %1
  %15 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 1
  %16 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 28
  br label %34

19:                                               ; preds = %1
  %20 = tail call ptr @llvm.thread.pointer() #6
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 1
  %24 = icmp eq i32 %22, 0
  %25 = select i1 %24, i32 28, i32 52
  br label %34

26:                                               ; preds = %1
  %27 = tail call ptr @llvm.thread.pointer() #6
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 3
  %31 = shl i32 %29, 2
  %32 = add i32 %31, 32
  br label %34

33:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 259, 0\0A.popsection", ""() #6, !srcloc !16
  unreachable

34:                                               ; preds = %26, %19, %14
  %35 = phi ptr [ %30, %26 ], [ %23, %19 ], [ %15, %14 ]
  %36 = phi i32 [ %32, %26 ], [ %25, %19 ], [ %18, %14 ]
  %37 = load ptr, ptr %35, align 4
  %38 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef %36, i32 noundef %11) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  %39 = load i16, ptr %3, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_gpio_irq_set_type(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.irq_chip_generic, ptr %7, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %11, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 4
  %19 = call i32 @regmap_read(ptr noundef %15, i32 noundef %18, ptr noundef nonnull %3) #6
  %20 = load i32, ptr %3, align 4
  %21 = shl nuw i32 1, %13
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %65, label %24

24:                                               ; preds = %2
  %25 = and i32 %1, 15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %65, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.irq_chip_type, ptr %9, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, %25
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = call i32 @irq_setup_alt_chip(ptr noundef %0, i32 noundef %25) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %32, %27
  switch i32 %25, label %65 [
    i32 1, label %36
    i32 4, label %36
    i32 2, label %41
    i32 8, label %41
    i32 3, label %46
  ]

36:                                               ; preds = %35, %35
  %37 = load ptr, ptr %14, align 4
  %38 = load i32, ptr %16, align 4
  %39 = add i32 %38, 12
  %40 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef %39, i32 noundef %21, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %65

41:                                               ; preds = %35, %35
  %42 = load ptr, ptr %14, align 4
  %43 = load i32, ptr %16, align 4
  %44 = add i32 %43, 12
  %45 = call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef %44, i32 noundef %21, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %65

46:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %47 = load ptr, ptr %14, align 4
  %48 = load i32, ptr %16, align 4
  %49 = add i32 %48, 12
  %50 = call i32 @regmap_read(ptr noundef %47, i32 noundef %49, ptr noundef nonnull %5) #6
  %51 = load ptr, ptr %14, align 4
  %52 = load i32, ptr %16, align 4
  %53 = add i32 %52, 16
  %54 = call i32 @regmap_read(ptr noundef %51, i32 noundef %53, ptr noundef nonnull %4) #6
  %55 = load i32, ptr %4, align 4
  %56 = load i32, ptr %5, align 4
  %57 = xor i32 %56, %55
  %58 = and i32 %57, %21
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 0, i32 %21
  %61 = load ptr, ptr %14, align 4
  %62 = load i32, ptr %16, align 4
  %63 = add i32 %62, 12
  %64 = call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef %63, i32 noundef %21, i32 noundef %60, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %65

65:                                               ; preds = %46, %41, %36, %35, %32, %24, %2
  %66 = phi i32 [ -22, %2 ], [ -22, %24 ], [ -22, %32 ], [ 0, %35 ], [ 0, %46 ], [ 0, %41 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvebu_gpio_irq_ack(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %0, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #6
  %7 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %20 [
    i32 1, label %9
    i32 2, label %9
    i32 4, label %9
    i32 3, label %14
  ]

9:                                                ; preds = %1, %1, %1
  %10 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 20
  br label %21

14:                                               ; preds = %1
  %15 = tail call ptr @llvm.thread.pointer() #6
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 3
  %19 = shl i32 %17, 2
  br label %21

20:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 159, 0\0A.popsection", ""() #6, !srcloc !14
  unreachable

21:                                               ; preds = %14, %9
  %22 = phi ptr [ %18, %14 ], [ %10, %9 ]
  %23 = phi i32 [ %19, %14 ], [ %13, %9 ]
  %24 = xor i32 %6, -1
  %25 = load ptr, ptr %22, align 4
  %26 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef %23, i32 noundef %24) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  %27 = load i16, ptr %3, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvebu_gpio_edge_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #6
  %9 = xor i32 %8, -1
  %10 = getelementptr inbounds %struct.irq_chip_type, ptr %7, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, %9
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %34 [
    i32 1, label %15
    i32 4, label %15
    i32 2, label %20
    i32 3, label %27
  ]

15:                                               ; preds = %1, %1
  %16 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 1
  %17 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 24
  br label %35

20:                                               ; preds = %1
  %21 = tail call ptr @llvm.thread.pointer() #6
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 1
  %25 = icmp eq i32 %23, 0
  %26 = select i1 %25, i32 24, i32 48
  br label %35

27:                                               ; preds = %1
  %28 = tail call ptr @llvm.thread.pointer() #6
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 3
  %32 = shl i32 %30, 2
  %33 = add i32 %32, 16
  br label %35

34:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 209, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

35:                                               ; preds = %27, %20, %15
  %36 = phi ptr [ %31, %27 ], [ %24, %20 ], [ %16, %15 ]
  %37 = phi i32 [ %33, %27 ], [ %26, %20 ], [ %19, %15 ]
  %38 = load ptr, ptr %36, align 4
  %39 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef %37, i32 noundef %12) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  %40 = load i16, ptr %3, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvebu_gpio_edge_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #6
  %9 = xor i32 %8, -1
  %10 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %23 [
    i32 1, label %12
    i32 2, label %12
    i32 4, label %12
    i32 3, label %17
  ]

12:                                               ; preds = %1, %1, %1
  %13 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 1
  %14 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 20
  br label %24

17:                                               ; preds = %1
  %18 = tail call ptr @llvm.thread.pointer() #6
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 3
  %22 = shl i32 %20, 2
  br label %24

23:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 159, 0\0A.popsection", ""() #6, !srcloc !14
  unreachable

24:                                               ; preds = %17, %12
  %25 = phi ptr [ %21, %17 ], [ %13, %12 ]
  %26 = phi i32 [ %22, %17 ], [ %16, %12 ]
  %27 = load ptr, ptr %25, align 4
  %28 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef %26, i32 noundef %9) #6
  %29 = getelementptr inbounds %struct.irq_chip_type, ptr %7, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, %8
  store i32 %31, ptr %29, align 4
  %32 = load i32, ptr %10, align 4
  switch i32 %32, label %52 [
    i32 1, label %33
    i32 4, label %33
    i32 2, label %38
    i32 3, label %45
  ]

33:                                               ; preds = %24, %24
  %34 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 1
  %35 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 24
  br label %53

38:                                               ; preds = %24
  %39 = tail call ptr @llvm.thread.pointer() #6
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 1
  %43 = icmp eq i32 %41, 0
  %44 = select i1 %43, i32 24, i32 48
  br label %53

45:                                               ; preds = %24
  %46 = tail call ptr @llvm.thread.pointer() #6
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %5, i32 0, i32 3
  %50 = shl i32 %48, 2
  %51 = add i32 %50, 16
  br label %53

52:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 209, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

53:                                               ; preds = %45, %38, %33
  %54 = phi ptr [ %49, %45 ], [ %42, %38 ], [ %34, %33 ]
  %55 = phi i32 [ %51, %45 ], [ %44, %38 ], [ %37, %33 ]
  %56 = load ptr, ptr %54, align 4
  %57 = tail call i32 @regmap_write(ptr noundef %56, i32 noundef %55, i32 noundef %31) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  %58 = load i16, ptr %3, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvebu_gpio_irq_handler(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !8
  %12 = icmp eq ptr %9, null
  br i1 %12, label %159, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %19(ptr noundef %22) #6
  br label %31

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %25(ptr noundef %26) #6
  %27 = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  tail call void %28(ptr noundef %26) #6
  br label %31

31:                                               ; preds = %30, %23, %21, %13
  %32 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %9, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %9, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 16
  %37 = call i32 @regmap_read(ptr noundef %33, i32 noundef %36, ptr noundef nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %38 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %9, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  switch i32 %39, label %56 [
    i32 1, label %40
    i32 4, label %40
    i32 2, label %43
    i32 3, label %49
  ]

40:                                               ; preds = %31, %31
  %41 = load i32, ptr %34, align 4
  %42 = add i32 %41, 28
  br label %57

43:                                               ; preds = %31
  %44 = tail call ptr @llvm.thread.pointer() #6
  %45 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 28, i32 52
  br label %57

49:                                               ; preds = %31
  %50 = tail call ptr @llvm.thread.pointer() #6
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %9, i32 0, i32 3
  %54 = shl i32 %52, 2
  %55 = add i32 %54, 32
  br label %57

56:                                               ; preds = %31
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 259, 0\0A.popsection", ""() #6, !srcloc !16
  unreachable

57:                                               ; preds = %49, %43, %40
  %58 = phi ptr [ %53, %49 ], [ %32, %43 ], [ %32, %40 ]
  %59 = phi i32 [ %55, %49 ], [ %48, %43 ], [ %42, %40 ]
  %60 = load ptr, ptr %58, align 4
  %61 = call i32 @regmap_read(ptr noundef %60, i32 noundef %59, ptr noundef nonnull %5) #6
  %62 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %63 = load i32, ptr %38, align 4
  switch i32 %63, label %73 [
    i32 1, label %64
    i32 2, label %64
    i32 4, label %64
    i32 3, label %67
  ]

64:                                               ; preds = %57, %57, %57
  %65 = load i32, ptr %34, align 4
  %66 = add i32 %65, 20
  br label %74

67:                                               ; preds = %57
  %68 = tail call ptr @llvm.thread.pointer() #6
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %70 = load i32, ptr %69, align 8
  %71 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %9, i32 0, i32 3
  %72 = shl i32 %70, 2
  br label %74

73:                                               ; preds = %57
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 159, 0\0A.popsection", ""() #6, !srcloc !14
  unreachable

74:                                               ; preds = %67, %64
  %75 = phi ptr [ %71, %67 ], [ %32, %64 ]
  %76 = phi i32 [ %72, %67 ], [ %66, %64 ]
  %77 = load ptr, ptr %75, align 4
  %78 = call i32 @regmap_read(ptr noundef %77, i32 noundef %76, ptr noundef nonnull %4) #6
  %79 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %80 = load i32, ptr %38, align 4
  switch i32 %80, label %97 [
    i32 1, label %81
    i32 4, label %81
    i32 2, label %84
    i32 3, label %90
  ]

81:                                               ; preds = %74, %74
  %82 = load i32, ptr %34, align 4
  %83 = add i32 %82, 24
  br label %98

84:                                               ; preds = %74
  %85 = tail call ptr @llvm.thread.pointer() #6
  %86 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %87 = load i32, ptr %86, align 8
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i32 24, i32 48
  br label %98

90:                                               ; preds = %74
  %91 = tail call ptr @llvm.thread.pointer() #6
  %92 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %93 = load i32, ptr %92, align 8
  %94 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %9, i32 0, i32 3
  %95 = shl i32 %93, 2
  %96 = add i32 %95, 16
  br label %98

97:                                               ; preds = %74
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-mvebu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 209, 0\0A.popsection", ""() #6, !srcloc !15
  unreachable

98:                                               ; preds = %90, %84, %81
  %99 = phi ptr [ %94, %90 ], [ %32, %84 ], [ %32, %81 ]
  %100 = phi i32 [ %96, %90 ], [ %89, %84 ], [ %83, %81 ]
  %101 = load ptr, ptr %99, align 4
  %102 = call i32 @regmap_read(ptr noundef %101, i32 noundef %100, ptr noundef nonnull %3) #6
  %103 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %104 = load i32, ptr %6, align 4
  %105 = and i32 %104, %62
  %106 = and i32 %103, %79
  %107 = or i32 %105, %106
  %108 = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 20
  %109 = load i16, ptr %108, align 4
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %150, label %111

111:                                              ; preds = %98
  %112 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %9, i32 0, i32 5
  br label %113

113:                                              ; preds = %145, %111
  %114 = phi i32 [ 0, %111 ], [ %146, %145 ]
  %115 = load ptr, ptr %112, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %116 = call ptr @__irq_resolve_mapping(ptr noundef %115, i32 noundef %114, ptr noundef nonnull %2) #6
  %117 = icmp eq ptr %116, null
  %118 = load i32, ptr %2, align 4
  %119 = select i1 %117, i32 0, i32 %118
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %120 = shl nuw i32 1, %114
  %121 = and i32 %120, %107
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %145, label %123

123:                                              ; preds = %113
  %124 = call ptr @irq_get_irq_data(i32 noundef %119) #6
  %125 = icmp eq ptr %124, null
  br i1 %125, label %143, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.irq_data, ptr %124, i32 0, i32 3
  %128 = load ptr, ptr %127, align 4
  %129 = load i32, ptr %128, align 4
  %130 = and i32 %129, 15
  %131 = icmp eq i32 %130, 3
  br i1 %131, label %132, label %143

132:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !annotation !8
  %133 = load ptr, ptr %32, align 4
  %134 = load i32, ptr %34, align 4
  %135 = add i32 %134, 12
  %136 = call i32 @regmap_read(ptr noundef %133, i32 noundef %135, ptr noundef nonnull %7) #6
  %137 = load i32, ptr %7, align 4
  %138 = xor i32 %137, %120
  store i32 %138, ptr %7, align 4
  %139 = load ptr, ptr %32, align 4
  %140 = load i32, ptr %34, align 4
  %141 = add i32 %140, 12
  %142 = call i32 @regmap_write(ptr noundef %139, i32 noundef %141, i32 noundef %138) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  br label %143

143:                                              ; preds = %132, %126, %123
  %144 = call i32 @generic_handle_irq(i32 noundef %119) #6
  br label %145

145:                                              ; preds = %143, %113
  %146 = add nuw nsw i32 %114, 1
  %147 = load i16, ptr %108, align 4
  %148 = zext i16 %147 to i32
  %149 = icmp ult i32 %146, %148
  br i1 %149, label %113, label %150

150:                                              ; preds = %145, %98
  %151 = load ptr, ptr %14, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 9
  %155 = load ptr, ptr %154, align 4
  br label %156

156:                                              ; preds = %153, %150
  %157 = phi ptr [ %155, %153 ], [ %151, %150 ]
  %158 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %157(ptr noundef %158) #6
  br label %159

159:                                              ; preds = %156, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_is_requested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pwm_request(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 40
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 36
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #6
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = tail call ptr @gpiochip_request_own_desc(ptr noundef %4, i32 noundef %12, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef 3) #6
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = ptrtoint ptr %13 to i32
  br label %18

17:                                               ; preds = %10
  store ptr %13, ptr %7, align 4
  br label %18

18:                                               ; preds = %17, %15, %2
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ], [ -16, %2 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #6
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvebu_pwm_free(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 36
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  tail call void @gpiochip_free_own_desc(ptr noundef %6) #6
  store ptr null, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pwm_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr i8, ptr %0, i32 40
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = load i32, ptr %7, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = mul i64 %11, %9
  %13 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %12, i32 0) #8, !srcloc !21
  %14 = extractvalue { i64, i32 } %13, 0
  %15 = extractvalue { i64, i32 } %13, 1
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %12, i64 %14, i32 %15) #8, !srcloc !22
  %17 = extractvalue { i64, i32 } %16, 0
  %18 = icmp ugt i64 %17, 2305843009750564863
  br i1 %18, label %67, label %19

19:                                               ; preds = %3
  %20 = lshr i64 %17, 29
  %21 = icmp eq i64 %20, 4294967296
  %22 = icmp ult i64 %17, 536870912
  %23 = trunc i64 %20 to i32
  %24 = select i1 %22, i32 1, i32 %23
  %25 = select i1 %21, i32 0, i32 %24
  %26 = load i64, ptr %2, align 8
  %27 = mul i64 %26, %9
  %28 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %27, i32 0) #8, !srcloc !21
  %29 = extractvalue { i64, i32 } %28, 0
  %30 = extractvalue { i64, i32 } %28, 1
  %31 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %27, i64 %29, i32 %30) #8, !srcloc !22
  %32 = extractvalue { i64, i32 } %31, 0
  %33 = lshr i64 %32, 29
  %34 = zext i32 %25 to i64
  %35 = sub nsw i64 %33, %34
  %36 = icmp ugt i64 %35, 4294967296
  br i1 %36, label %67, label %37

37:                                               ; preds = %19
  %38 = icmp eq i64 %35, 4294967296
  %39 = icmp eq i64 %33, %34
  %40 = trunc i64 %35 to i32
  %41 = select i1 %39, i32 1, i32 %40
  %42 = select i1 %38, i32 0, i32 %41
  %43 = getelementptr i8, ptr %0, i32 36
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %43) #6
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr i8, ptr %0, i32 -12
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef %47, i32 noundef %25) #6
  %49 = load ptr, ptr %4, align 4
  %50 = load i32, ptr %46, align 4
  %51 = add i32 %50, 4
  %52 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef %51, i32 noundef %42) #6
  %53 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %54 = load i8, ptr %53, align 4, !range !23
  %55 = icmp eq i8 %54, 0
  %56 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = tail call ptr @gpiochip_get_data(ptr noundef %6) #6
  %59 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %58, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, 8
  %64 = shl nuw i32 1, %57
  %65 = select i1 %55, i32 0, i32 %64
  %66 = tail call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef %63, i32 noundef %64, i32 noundef %65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %43, i32 noundef %44) #6
  br label %67

67:                                               ; preds = %37, %19, %3
  %68 = phi i32 [ 0, %37 ], [ -22, %3 ], [ -22, %19 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvebu_pwm_get_state(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = getelementptr i8, ptr %0, i32 40
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %8 = getelementptr i8, ptr %0, i32 36
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #6
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %0, i32 -12
  %12 = load i32, ptr %11, align 4
  %13 = call i32 @regmap_read(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %4) #6
  %14 = load i32, ptr %4, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i32 %14 to i64
  %17 = select i1 %15, i64 4294967296, i64 %16
  %18 = mul nuw nsw i64 %17, 1000000000
  %19 = getelementptr i8, ptr %0, i32 -8
  %20 = load i32, ptr %19, align 4
  %21 = zext i32 %20 to i64
  %22 = add nsw i64 %21, -1
  %23 = add nsw i64 %22, %18
  %24 = icmp ult i64 %23, 4294967296
  br i1 %24, label %25, label %29, !prof !24

25:                                               ; preds = %3
  %26 = trunc i64 %23 to i32
  %27 = udiv i32 %26, %20
  %28 = zext i32 %27 to i64
  br label %32

29:                                               ; preds = %3
  %30 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %20, i64 %23) #8, !srcloc !25
  %31 = extractvalue { i64, i64 } %30, 1
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i64 [ %28, %25 ], [ %31, %29 ]
  %34 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  store i64 %33, ptr %34, align 8
  %35 = load ptr, ptr %5, align 4
  %36 = load i32, ptr %11, align 4
  %37 = add i32 %36, 4
  %38 = call i32 @regmap_read(ptr noundef %35, i32 noundef %37, ptr noundef nonnull %4) #6
  %39 = load i32, ptr %4, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i32 %39 to i64
  %42 = select i1 %40, i64 4294967296, i64 %41
  %43 = add nuw nsw i64 %42, %17
  %44 = mul nuw nsw i64 %43, 1000000000
  %45 = load i32, ptr %19, align 4
  %46 = zext i32 %45 to i64
  %47 = add nsw i64 %46, -1
  %48 = add nsw i64 %47, %44
  %49 = icmp ult i64 %48, 4294967296
  br i1 %49, label %50, label %54, !prof !24

50:                                               ; preds = %32
  %51 = trunc i64 %48 to i32
  %52 = udiv i32 %51, %45
  %53 = zext i32 %52 to i64
  br label %57

54:                                               ; preds = %32
  %55 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %45, i64 %48) #8, !srcloc !25
  %56 = extractvalue { i64, i64 } %55, 1
  br label %57

57:                                               ; preds = %54, %50
  %58 = phi i64 [ %53, %50 ], [ %56, %54 ]
  store i64 %58, ptr %2, align 8
  %59 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %7, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.mvebu_gpio_chip, ptr %7, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, 8
  %64 = call i32 @regmap_read(ptr noundef %60, i32 noundef %63, ptr noundef nonnull %4) #6
  %65 = load i32, ptr %4, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  store i8 %67, ptr %68, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_request_own_desc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_free_own_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_setup_alt_chip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

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
!9 = !{i64 2152593530, i64 2152594021, i64 2152593567, i64 2152593623, i64 2152593657, i64 2152593681, i64 2152593722, i64 2152593743, i64 2152593771, i64 2152593805}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2152597455, i64 2152597946, i64 2152597492, i64 2152597548, i64 2152597582, i64 2152597606, i64 2152597647, i64 2152597668, i64 2152597696, i64 2152597730}
!12 = !{i64 2152588084, i64 2152588575, i64 2152588121, i64 2152588177, i64 2152588211, i64 2152588235, i64 2152588276, i64 2152588297, i64 2152588325, i64 2152588359}
!13 = !{i64 2152589711, i64 2152590202, i64 2152589748, i64 2152589804, i64 2152589838, i64 2152589862, i64 2152589903, i64 2152589924, i64 2152589952, i64 2152589986}
!14 = !{i64 2152557193, i64 2152557683, i64 2152557230, i64 2152557286, i64 2152557320, i64 2152557344, i64 2152557385, i64 2152557406, i64 2152557434, i64 2152557468}
!15 = !{i64 2152558608, i64 2152559098, i64 2152558645, i64 2152558701, i64 2152558735, i64 2152558759, i64 2152558800, i64 2152558821, i64 2152558849, i64 2152558883}
!16 = !{i64 2152559854, i64 2152560344, i64 2152559891, i64 2152559947, i64 2152559981, i64 2152560005, i64 2152560046, i64 2152560067, i64 2152560095, i64 2152560129}
!17 = !{i64 2148912380}
!18 = !{i64 2148908204}
!19 = !{i64 2148908279, i64 2148908306, i64 2148908353, i64 2148908375, i64 2148908403, i64 2148908423}
!20 = !{i64 2148935383}
!21 = !{i64 903647, i64 903674, i64 903696, i64 903724}
!22 = !{i64 904055, i64 904082, i64 904115, i64 904136, i64 904163, i64 904189}
!23 = !{i8 0, i8 2}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2148389191, i64 2148389471, i64 2148389805, i64 2148390139}
