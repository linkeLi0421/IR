; ModuleID = '/llk/IR/drivers/gpio/gpio-mxc.c_pt.bc'
source_filename = "../drivers/gpio/gpio-mxc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mxc_gpio_hwdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mxc_gpio_port = type { %struct.list_head, ptr, ptr, i32, i32, ptr, %struct.gpio_chip, ptr, i32, %struct.mxc_gpio_reg_saved, i8, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.mxc_gpio_reg_saved = type { i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_mxc__210_550_gpio_mxc_init4 = internal global ptr @gpio_mxc_init, section ".initcall4.init", align 4
@__UNIQUE_ID_author211 = internal constant [49 x i8] c"gpio_mxc.author=Shawn Guo <shawn.guo@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [38 x i8] c"gpio_mxc.description=i.MX GPIO Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [36 x i8] c"gpio_mxc.file=drivers/gpio/gpio-mxc\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [21 x i8] c"gpio_mxc.license=GPL\00", section ".modinfo", align 1
@mxc_gpio_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @mxc_gpio_syscore_suspend, ptr @mxc_gpio_syscore_resume, ptr null }, align 4
@mxc_gpio_driver = internal global %struct.platform_driver { ptr @mxc_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @mxc_gpio_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@mxc_gpio_ports = internal global %struct.list_head { ptr @mxc_gpio_ports, ptr @mxc_gpio_ports }, align 4
@.str = private unnamed_addr constant [39 x i8] c"\013mxc: failed to enable gpio clock %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"gpio-mxc\00", align 1
@mxc_gpio_dt_ids = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx1-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx1_imx21_gpio_hwdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx1_imx21_gpio_hwdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx31-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx31_gpio_hwdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx35-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx35_gpio_hwdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx35_gpio_hwdata }, %struct.of_device_id zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Unable to enable clock.\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fsl,imx7d-gpio\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"fsl,imx21-gpio\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"%s failed with errno %d\0A\00", align 1
@__func__.mxc_gpio_probe = private unnamed_addr constant [15 x i8] c"mxc_gpio_probe\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"\013mxc: invalid configuration for GPIO %d: %x\0A\00", align 1
@imx1_imx21_gpio_hwdata = internal global %struct.mxc_gpio_hwdata { i32 28, i32 0, i32 36, i32 40, i32 44, i32 48, i32 52, i32 -22, i32 3, i32 2, i32 0, i32 1 }, align 4
@imx31_gpio_hwdata = internal global %struct.mxc_gpio_hwdata { i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 -22, i32 0, i32 1, i32 2, i32 3 }, align 4
@imx35_gpio_hwdata = internal global %struct.mxc_gpio_hwdata { i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 0, i32 1, i32 2, i32 3 }, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__initcall__kmod_gpio_mxc__210_550_gpio_mxc_init4], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gpio_mxc_init() #0 section ".init.text" {
  tail call void @register_syscore_ops(ptr noundef nonnull @mxc_gpio_syscore_ops) #6
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxc_gpio_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxc_gpio_syscore_suspend() #2 {
  %1 = load ptr, ptr @mxc_gpio_ports, align 4
  %2 = icmp eq ptr %1, @mxc_gpio_ports
  br i1 %2, label %57, label %3

3:                                                ; preds = %52, %0
  %4 = phi ptr [ %55, %52 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 10
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %52, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %10, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %17 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 9
  store i32 %16, ptr %17, align 4
  %18 = load ptr, ptr %9, align 4
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %19, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %18, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %24 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 9, i32 1
  store i32 %23, ptr %24, align 4
  %25 = load ptr, ptr %9, align 4
  %26 = load ptr, ptr %11, align 4
  %27 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %26, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %25, i32 %28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %31 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 9, i32 2
  store i32 %30, ptr %31, align 4
  %32 = load ptr, ptr %9, align 4
  %33 = load ptr, ptr %11, align 4
  %34 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr i8, ptr %32, i32 %35
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %38 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 9, i32 3
  store i32 %37, ptr %38, align 4
  %39 = load ptr, ptr %9, align 4
  %40 = load ptr, ptr %11, align 4
  %41 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %40, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %39, i32 %42
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  %45 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 9, i32 4
  store i32 %44, ptr %45, align 4
  %46 = load ptr, ptr %9, align 4
  %47 = load ptr, ptr %11, align 4
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %46, i32 %48
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  %51 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 9, i32 5
  store i32 %50, ptr %51, align 4
  br label %52

52:                                               ; preds = %8, %3
  %53 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  tail call void @clk_disable(ptr noundef %54) #6
  tail call void @clk_unprepare(ptr noundef %54) #6
  %55 = load ptr, ptr %4, align 4
  %56 = icmp eq ptr %55, @mxc_gpio_ports
  br i1 %56, label %57, label %3

57:                                               ; preds = %52, %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mxc_gpio_syscore_resume() #2 {
  %1 = load ptr, ptr @mxc_gpio_ports, align 4
  %2 = icmp eq ptr %1, @mxc_gpio_ports
  br i1 %2, label %67, label %3

3:                                                ; preds = %64, %0
  %4 = phi ptr [ %65, %64 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = tail call i32 @clk_enable(ptr noundef %6) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #6
  br label %13

13:                                               ; preds = %12, %3
  %14 = phi i32 [ %10, %12 ], [ %7, %3 ]
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %14) #7
  br label %67

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 10
  %18 = load i8, ptr %17, align 4, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %64, label %20

20:                                               ; preds = %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %21 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 11
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %26, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %24, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %22) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %30 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 9, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %23, align 4
  %33 = load ptr, ptr %25, align 4
  %34 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %33, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr i8, ptr %32, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %31) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %37 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 9, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %23, align 4
  %40 = load ptr, ptr %25, align 4
  %41 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %40, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %39, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %38) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %44 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 9, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %23, align 4
  %47 = load ptr, ptr %25, align 4
  %48 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr i8, ptr %46, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %45) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %51 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 9, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = load ptr, ptr %23, align 4
  %54 = load ptr, ptr %25, align 4
  %55 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %54, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr i8, ptr %53, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %52) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %58 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 9, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = load ptr, ptr %23, align 4
  %61 = load ptr, ptr %25, align 4
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr i8, ptr %60, i32 %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %59) #6, !srcloc !17
  br label %64

64:                                               ; preds = %20, %16
  %65 = load ptr, ptr %4, align 4
  %66 = icmp eq ptr %65, @mxc_gpio_ports
  br i1 %66, label %67, label %3

67:                                               ; preds = %64, %13, %0
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxc_gpio_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 372, i32 noundef 3520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %139, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mxc_gpio_port, ptr %5, i32 0, i32 7
  store ptr %2, ptr %8, align 4
  %9 = tail call ptr @device_get_match_data(ptr noundef %2) #6
  %10 = getelementptr inbounds %struct.mxc_gpio_port, ptr %5, i32 0, i32 11
  store ptr %9, ptr %10, align 4
  %11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %12 = getelementptr inbounds %struct.mxc_gpio_port, ptr %5, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = ptrtoint ptr %11 to i32
  br label %139

16:                                               ; preds = %7
  %17 = tail call i32 @platform_irq_count(ptr noundef %0) #6
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %139, label %19

19:                                               ; preds = %16
  %20 = icmp ugt i32 %17, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #6
  %23 = getelementptr inbounds %struct.mxc_gpio_port, ptr %5, i32 0, i32 4
  %24 = tail call i32 @llvm.smax.i32(i32 %22, i32 0)
  store i32 %24, ptr %23, align 4
  br label %25

25:                                               ; preds = %21, %19
  %26 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %27 = getelementptr inbounds %struct.mxc_gpio_port, ptr %5, i32 0, i32 3
  store i32 %26, ptr %27, align 4
  %28 = icmp slt i32 %26, 0
  br i1 %28, label %139, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @devm_clk_get_optional(ptr noundef %2, ptr noundef null) #6
  %31 = getelementptr inbounds %struct.mxc_gpio_port, ptr %5, i32 0, i32 2
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = ptrtoint ptr %30 to i32
  br label %139

35:                                               ; preds = %29
  %36 = tail call i32 @clk_prepare(ptr noundef %30) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = tail call i32 @clk_enable(ptr noundef %30) #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  tail call void @clk_unprepare(ptr noundef %30) #6
  br label %42

42:                                               ; preds = %41, %35
  %43 = phi i32 [ %39, %41 ], [ %36, %35 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #7
  br label %139

44:                                               ; preds = %38
  %45 = tail call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.3) #6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.mxc_gpio_port, ptr %5, i32 0, i32 10
  store i8 1, ptr %48, align 4
  br label %49

49:                                               ; preds = %47, %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  %50 = load ptr, ptr %12, align 4
  %51 = load ptr, ptr %10, align 4
  %52 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %51, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr i8, ptr %50, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 0) #6, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %55 = load ptr, ptr %12, align 4
  %56 = load ptr, ptr %10, align 4
  %57 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %56, i32 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr i8, ptr %55, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 -1) #6, !srcloc !17
  %60 = tail call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.4) #6
  %61 = icmp eq i32 %60, 0
  %62 = load i32, ptr %27, align 4
  br i1 %61, label %64, label %63

63:                                               ; preds = %49
  tail call void @__irq_set_handler(i32 noundef %62, ptr noundef nonnull @mx2_gpio_irq_handler, i32 noundef 1, ptr noundef null) #6
  br label %69

64:                                               ; preds = %49
  tail call void @irq_set_chained_handler_and_data(i32 noundef %62, ptr noundef nonnull @mx3_gpio_irq_handler, ptr noundef nonnull %5) #6
  %65 = getelementptr inbounds %struct.mxc_gpio_port, ptr %5, i32 0, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @irq_set_chained_handler_and_data(i32 noundef %66, ptr noundef nonnull @mx3_gpio_irq_handler, ptr noundef nonnull %5) #6
  br label %69

69:                                               ; preds = %68, %64, %63
  %70 = getelementptr inbounds %struct.mxc_gpio_port, ptr %5, i32 0, i32 6
  %71 = load ptr, ptr %12, align 4
  %72 = load ptr, ptr %10, align 4
  %73 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %72, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr i8, ptr %71, i32 %74
  %76 = load i32, ptr %72, align 4
  %77 = getelementptr i8, ptr %71, i32 %76
  %78 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %72, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr i8, ptr %71, i32 %79
  %81 = tail call i32 @bgpio_init(ptr noundef %70, ptr noundef %2, i32 noundef 4, ptr noundef %75, ptr noundef %77, ptr noundef null, ptr noundef %80, ptr noundef null, i32 noundef 16) #6
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %136

83:                                               ; preds = %69
  %84 = getelementptr inbounds %struct.mxc_gpio_port, ptr %5, i32 0, i32 6, i32 5
  store ptr @gpiochip_generic_request, ptr %84, align 4
  %85 = getelementptr inbounds %struct.mxc_gpio_port, ptr %5, i32 0, i32 6, i32 6
  store ptr @gpiochip_generic_free, ptr %85, align 4
  %86 = getelementptr inbounds %struct.mxc_gpio_port, ptr %5, i32 0, i32 6, i32 15
  store ptr @mxc_gpio_to_irq, ptr %86, align 4
  %87 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = tail call i32 @of_alias_get_id(ptr noundef %4, ptr noundef nonnull @.str.5) #6
  br label %92

92:                                               ; preds = %90, %83
  %93 = phi i32 [ %91, %90 ], [ %88, %83 ]
  %94 = shl i32 %93, 5
  %95 = getelementptr inbounds %struct.mxc_gpio_port, ptr %5, i32 0, i32 6, i32 19
  store i32 %94, ptr %95, align 4
  %96 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %2, ptr noundef %70, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #6
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %136

98:                                               ; preds = %92
  %99 = tail call i32 @__devm_irq_alloc_descs(ptr noundef %2, i32 noundef -1, i32 noundef 0, i32 noundef 32, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %136, label %101

101:                                              ; preds = %98
  %102 = tail call ptr @irq_domain_add_legacy(ptr noundef %4, i32 noundef 32, i32 noundef %99, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef null) #6
  %103 = getelementptr inbounds %struct.mxc_gpio_port, ptr %5, i32 0, i32 5
  store ptr %102, ptr %103, align 4
  %104 = icmp eq ptr %102, null
  br i1 %104, label %136, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %8, align 4
  %107 = load ptr, ptr %12, align 4
  %108 = tail call ptr @devm_irq_alloc_generic_chip(ptr noundef %106, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %99, ptr noundef %107, ptr noundef nonnull @handle_level_irq) #6
  %109 = icmp eq ptr %108, null
  br i1 %109, label %133, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.irq_chip_generic, ptr %108, i32 0, i32 14
  store ptr %5, ptr %111, align 4
  %112 = getelementptr inbounds %struct.irq_chip_generic, ptr %108, i32 1, i32 6
  store ptr @irq_gc_ack_set_bit, ptr %112, align 4
  %113 = getelementptr inbounds %struct.irq_chip_generic, ptr %108, i32 1, i32 7
  store ptr @irq_gc_mask_clr_bit, ptr %113, align 4
  %114 = getelementptr inbounds %struct.irq_chip_generic, ptr %108, i32 1, i32 9
  store ptr @irq_gc_mask_set_bit, ptr %114, align 4
  %115 = getelementptr inbounds %struct.irq_chip_generic, ptr %108, i32 1, i32 13
  store ptr @gpio_set_irq_type, ptr %115, align 4
  %116 = getelementptr inbounds %struct.irq_chip_generic, ptr %108, i32 1, i32 14
  store ptr @gpio_set_wake_irq, ptr %116, align 4
  %117 = getelementptr inbounds %struct.irq_chip_generic, ptr %108, i32 2, i32 13
  store i32 516, ptr %117, align 4
  %118 = load ptr, ptr %10, align 4
  %119 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %118, i32 0, i32 6
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds %struct.irq_chip_generic, ptr %108, i32 2, i32 17
  store i32 %120, ptr %121, align 4
  %122 = load ptr, ptr %10, align 4
  %123 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %122, i32 0, i32 5
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr inbounds %struct.irq_chip_generic, ptr %108, i32 2, i32 16
  store i32 %124, ptr %125, align 4
  %126 = load ptr, ptr %8, align 4
  %127 = tail call i32 @devm_irq_setup_generic_chip(ptr noundef %126, ptr noundef nonnull %108, i32 noundef -1, i32 noundef 2, i32 noundef 2048, i32 noundef 0) #6
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %110
  %130 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mxc_gpio_ports, i32 0, i32 1), align 4
  store ptr %5, ptr getelementptr inbounds (%struct.list_head, ptr @mxc_gpio_ports, i32 0, i32 1), align 4
  store ptr @mxc_gpio_ports, ptr %5, align 4
  %131 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %130, ptr %131, align 4
  store volatile ptr %5, ptr %130, align 4
  %132 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %132, align 8
  br label %139

133:                                              ; preds = %110, %105
  %134 = phi i32 [ %127, %110 ], [ -12, %105 ]
  %135 = load ptr, ptr %103, align 4
  tail call void @irq_domain_remove(ptr noundef %135) #6
  br label %136

136:                                              ; preds = %133, %101, %98, %92, %69
  %137 = phi i32 [ %81, %69 ], [ %96, %92 ], [ %134, %133 ], [ %99, %98 ], [ -19, %101 ]
  %138 = load ptr, ptr %31, align 4
  tail call void @clk_disable(ptr noundef %138) #6
  tail call void @clk_unprepare(ptr noundef %138) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.mxc_gpio_probe, i32 noundef %137) #7
  br label %139

139:                                              ; preds = %136, %129, %42, %33, %25, %16, %14, %1
  %140 = phi i32 [ %15, %14 ], [ %34, %33 ], [ %43, %42 ], [ %137, %136 ], [ 0, %129 ], [ -12, %1 ], [ %17, %16 ], [ %26, %25 ]
  ret i32 %140
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mx2_gpio_irq_handler(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %9(ptr noundef %12) #6
  br label %21

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %15(ptr noundef %16) #6
  %17 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  tail call void %18(ptr noundef %16) #6
  br label %21

21:                                               ; preds = %20, %13, %11, %1
  %22 = load ptr, ptr @mxc_gpio_ports, align 4
  %23 = icmp eq ptr %22, @mxc_gpio_ports
  br i1 %23, label %48, label %24

24:                                               ; preds = %45, %21
  %25 = phi ptr [ %46, %45 ], [ %22, %21 ]
  %26 = getelementptr inbounds %struct.mxc_gpio_port, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.mxc_gpio_port, ptr %25, i32 0, i32 11
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %29, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %27, i32 %31
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !25
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %24
  %36 = load ptr, ptr %26, align 4
  %37 = load ptr, ptr %28, align 4
  %38 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %37, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %36, i32 %39
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !26
  %42 = and i32 %41, %33
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  tail call fastcc void @mxc_gpio_irq_handler(ptr noundef %25, i32 noundef %42)
  br label %45

45:                                               ; preds = %44, %35, %24
  %46 = load ptr, ptr %25, align 4
  %47 = icmp eq ptr %46, @mxc_gpio_ports
  br i1 %47, label %48, label %24

48:                                               ; preds = %45, %21
  %49 = load ptr, ptr %4, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %53 = load ptr, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi ptr [ %53, %51 ], [ %49, %48 ]
  %56 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %55(ptr noundef %56) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mx3_gpio_irq_handler(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %11(ptr noundef %14) #6
  br label %23

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %17(ptr noundef %18) #6
  %19 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  tail call void %20(ptr noundef %18) #6
  br label %23

23:                                               ; preds = %22, %15, %13, %1
  %24 = getelementptr inbounds %struct.mxc_gpio_port, ptr %3, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mxc_gpio_port, ptr %3, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %27, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i8, ptr %25, i32 %29
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %32 = load ptr, ptr %24, align 4
  %33 = load ptr, ptr %26, align 4
  %34 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %33, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr i8, ptr %32, i32 %35
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %38 = and i32 %37, %31
  tail call fastcc void @mxc_gpio_irq_handler(ptr noundef %3, i32 noundef %38)
  %39 = load ptr, ptr %6, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %23
  %45 = phi ptr [ %43, %41 ], [ %39, %23 ]
  %46 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %45(ptr noundef %46) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxc_gpio_to_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.mxc_gpio_port, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !29
  %7 = call ptr @__irq_resolve_mapping(ptr noundef %6, i32 noundef %1, ptr noundef nonnull %3) #6
  %8 = icmp eq ptr %7, null
  %9 = load i32, ptr %3, align 4
  %10 = select i1 %8, i32 0, i32 %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_irq_alloc_descs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mxc_gpio_irq_handler(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %54, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.mxc_gpio_port, ptr %0, i32 0, i32 8
  %6 = getelementptr inbounds %struct.mxc_gpio_port, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.mxc_gpio_port, ptr %0, i32 0, i32 11
  %8 = getelementptr inbounds %struct.mxc_gpio_port, ptr %0, i32 0, i32 5
  br label %9

9:                                                ; preds = %48, %4
  %10 = phi i32 [ %1, %4 ], [ %52, %48 ]
  %11 = tail call i32 @llvm.ctlz.i32(i32 %10, i1 true) #6, !range !30
  %12 = xor i32 %11, 31
  %13 = load i32, ptr %5, align 4
  %14 = shl nuw i32 1, %12
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %48, label %17

17:                                               ; preds = %9
  %18 = load ptr, ptr %6, align 4
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %12, 2
  %23 = and i32 %22, 4
  %24 = add i32 %21, %23
  %25 = getelementptr i8, ptr %18, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !31
  %27 = shl nuw nsw i32 %12, 1
  %28 = and i32 %27, 30
  %29 = lshr i32 %26, %28
  %30 = and i32 %29, 3
  %31 = shl nuw i32 3, %28
  %32 = xor i32 %31, -1
  %33 = and i32 %26, %32
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %34, i32 0, i32 9
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %30, %36
  %38 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %34, i32 0, i32 8
  %39 = load i32, ptr %38, align 4
  br i1 %37, label %44, label %40

40:                                               ; preds = %17
  %41 = icmp eq i32 %30, %39
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %12, i32 noundef %30) #7
  br label %48

44:                                               ; preds = %40, %17
  %45 = phi i32 [ %36, %40 ], [ %39, %17 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %46 = shl i32 %45, %28
  %47 = or i32 %46, %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %47) #6, !srcloc !17
  br label %48

48:                                               ; preds = %44, %42, %9
  %49 = load ptr, ptr %8, align 4
  %50 = tail call i32 @generic_handle_domain_irq(ptr noundef %49, i32 noundef %12) #6
  %51 = xor i32 %14, -1
  %52 = and i32 %10, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %9

54:                                               ; preds = %48, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_irq_alloc_generic_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_ack_set_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_set_irq_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mxc_gpio_port, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = shl nuw i32 1, %8
  %12 = xor i32 %11, -1
  %13 = getelementptr inbounds %struct.mxc_gpio_port, ptr %6, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %12
  store i32 %15, ptr %13, align 4
  switch i32 %1, label %114 [
    i32 1, label %16
    i32 2, label %21
    i32 3, label %26
    i32 8, label %45
    i32 4, label %50
  ]

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.mxc_gpio_port, ptr %6, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %18, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  br label %55

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.mxc_gpio_port, ptr %6, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %23, i32 0, i32 11
  %25 = load i32, ptr %24, align 4
  br label %55

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.mxc_gpio_port, ptr %6, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %28, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %64, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.mxc_gpio_port, ptr %6, i32 0, i32 6
  %34 = getelementptr inbounds %struct.mxc_gpio_port, ptr %6, i32 0, i32 6, i32 10
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %33, i32 noundef %8) #6
  %37 = icmp eq i32 %36, 0
  %38 = load ptr, ptr %27, align 4
  %39 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %38, i32 0, i32 9
  %41 = select i1 %37, ptr %40, ptr %39
  %42 = load i32, ptr %41, align 4
  %43 = load i32, ptr %13, align 4
  %44 = or i32 %43, %11
  store i32 %44, ptr %13, align 4
  br label %55

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.mxc_gpio_port, ptr %6, i32 0, i32 11
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %47, i32 0, i32 8
  %49 = load i32, ptr %48, align 4
  br label %55

50:                                               ; preds = %2
  %51 = getelementptr inbounds %struct.mxc_gpio_port, ptr %6, i32 0, i32 11
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %52, i32 0, i32 9
  %54 = load i32, ptr %53, align 4
  br label %55

55:                                               ; preds = %50, %45, %32, %21, %16
  %56 = phi ptr [ %52, %50 ], [ %47, %45 ], [ %38, %32 ], [ %23, %21 ], [ %18, %16 ]
  %57 = phi i32 [ %54, %50 ], [ %49, %45 ], [ %42, %32 ], [ %25, %21 ], [ %20, %16 ]
  %58 = getelementptr inbounds %struct.mxc_gpio_port, ptr %6, i32 0, i32 11
  %59 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %56, i32 0, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %87

62:                                               ; preds = %55
  %63 = load ptr, ptr %9, align 4
  br label %64

64:                                               ; preds = %62, %26
  %65 = phi ptr [ %63, %62 ], [ %10, %26 ]
  %66 = phi i32 [ %60, %62 ], [ %30, %26 ]
  %67 = phi ptr [ %58, %62 ], [ %27, %26 ]
  %68 = phi i32 [ %57, %62 ], [ 4, %26 ]
  %69 = getelementptr i8, ptr %65, i32 %66
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !33
  %71 = icmp eq i32 %68, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = or i32 %70, %11
  %74 = load ptr, ptr %9, align 4
  %75 = load ptr, ptr %67, align 4
  %76 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %75, i32 0, i32 7
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr i8, ptr %74, i32 %77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %73) #6, !srcloc !17
  br label %107

79:                                               ; preds = %64
  %80 = and i32 %70, %12
  %81 = load ptr, ptr %9, align 4
  %82 = load ptr, ptr %67, align 4
  %83 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %82, i32 0, i32 7
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr i8, ptr %81, i32 %84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %80) #6, !srcloc !17
  %86 = load ptr, ptr %67, align 4
  br label %89

87:                                               ; preds = %55
  %88 = icmp eq i32 %57, 4
  br i1 %88, label %107, label %89

89:                                               ; preds = %87, %79
  %90 = phi ptr [ %86, %79 ], [ %56, %87 ]
  %91 = phi ptr [ %67, %79 ], [ %58, %87 ]
  %92 = phi i32 [ %68, %79 ], [ %57, %87 ]
  %93 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %90, i32 0, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = lshr i32 %8, 2
  %96 = and i32 %95, 4
  %97 = add i32 %94, %96
  %98 = getelementptr i8, ptr %10, i32 %97
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %100 = shl i32 %8, 1
  %101 = and i32 %100, 30
  %102 = shl nuw i32 3, %101
  %103 = xor i32 %102, -1
  %104 = and i32 %99, %103
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %105 = shl i32 %92, %101
  %106 = or i32 %104, %105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %106) #6, !srcloc !17
  br label %107

107:                                              ; preds = %89, %87, %72
  %108 = phi ptr [ %67, %72 ], [ %58, %87 ], [ %91, %89 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %109 = load ptr, ptr %9, align 4
  %110 = load ptr, ptr %108, align 4
  %111 = getelementptr inbounds %struct.mxc_gpio_hwdata, ptr %110, i32 0, i32 6
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i8, ptr %109, i32 %112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %11) #6, !srcloc !17
  br label %114

114:                                              ; preds = %107, %2
  %115 = phi i32 [ 0, %107 ], [ -22, %2 ]
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_set_wake_irq(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %1, 0
  %10 = getelementptr inbounds %struct.mxc_gpio_port, ptr %6, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = icmp ugt i32 %8, 15
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %9, label %22, label %15

15:                                               ; preds = %2
  br i1 %14, label %16, label %18

16:                                               ; preds = %15
  %17 = tail call i32 @irq_set_irq_wake(i32 noundef %11, i32 noundef 1) #6
  br label %29

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.mxc_gpio_port, ptr %6, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @irq_set_irq_wake(i32 noundef %20, i32 noundef 1) #6
  br label %29

22:                                               ; preds = %2
  br i1 %14, label %23, label %25

23:                                               ; preds = %22
  %24 = tail call i32 @irq_set_irq_wake(i32 noundef %11, i32 noundef 0) #6
  br label %29

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.mxc_gpio_port, ptr %6, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @irq_set_irq_wake(i32 noundef %27, i32 noundef 0) #6
  br label %29

29:                                               ; preds = %25, %23, %18, %16
  %30 = phi i32 [ %17, %16 ], [ %21, %18 ], [ %24, %23 ], [ %28, %25 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_irq_setup_generic_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

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
!8 = !{i8 0, i8 2}
!9 = !{i64 3094501}
!10 = !{i64 2152529887}
!11 = !{i64 2152530306}
!12 = !{i64 2152530721}
!13 = !{i64 2152531140}
!14 = !{i64 2152531575}
!15 = !{i64 2152531986}
!16 = !{i64 2152532238}
!17 = !{i64 3094083}
!18 = !{i64 2152532683}
!19 = !{i64 2152533125}
!20 = !{i64 2152533567}
!21 = !{i64 2152534024}
!22 = !{i64 2152534475}
!23 = !{i64 2152527928}
!24 = !{i64 2152528299}
!25 = !{i64 2152526428}
!26 = !{i64 2152526843}
!27 = !{i64 2152522320}
!28 = !{i64 2152522735}
!29 = !{!"auto-init"}
!30 = !{i32 0, i32 33}
!31 = !{i64 2152519670}
!32 = !{i64 2152521744}
!33 = !{i64 2152517374}
!34 = !{i64 2152518592}
!35 = !{i64 2152518786}
!36 = !{i64 2152519185}
