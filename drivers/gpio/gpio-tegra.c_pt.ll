; ModuleID = '/llk/IR/drivers/gpio/gpio-tegra.c_pt.bc'
source_filename = "../drivers/gpio/gpio-tegra.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.tegra_gpio_soc_config = type { i8, i32, i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_gpio_info = type { ptr, ptr, ptr, ptr, %struct.gpio_chip, %struct.irq_chip, i32, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tegra_gpio_bank = type { i32, [4 x %struct.raw_spinlock], [4 x %struct.spinlock], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_gpio_tegra__212_815_tegra_gpio_driver_init6 = internal global ptr @tegra_gpio_driver_init, section ".initcall6.init", align 4
@tegra_gpio_driver = internal global %struct.platform_driver { ptr @tegra_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_gpio_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tegra_gpio_driver_exit = internal global ptr @tegra_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description213 = internal constant [59 x i8] c"gpio_tegra.description=NVIDIA Tegra GPIO controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author214 = internal constant [57 x i8] c"gpio_tegra.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author215 = internal constant [54 x i8] c"gpio_tegra.author=Stephen Warren <swarren@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author216 = internal constant [54 x i8] c"gpio_tegra.author=Thierry Reding <treding@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author217 = internal constant [52 x i8] c"gpio_tegra.author=Erik Gilling <konkers@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file218 = internal constant [40 x i8] c"gpio_tegra.file=drivers/gpio/gpio-tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_license219 = internal constant [26 x i8] c"gpio_tegra.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"tegra-gpio\00", align 1
@tegra_gpio_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_gpio_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_gpio_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_gpio_config }, %struct.of_device_id zeroinitializer], align 4
@tegra_gpio_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_gpio_suspend, ptr @tegra_gpio_resume, ptr @tegra_gpio_suspend, ptr @tegra_gpio_resume, ptr @tegra_gpio_suspend, ptr @tegra_gpio_resume, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Missing IRQ resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"GPIO\00", align 1
@tegra_pmc_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Failed to set pinctrl input direction of GPIO %d: %d\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Failed to set pinctrl output direction of GPIO %d: %d\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"unable to lock Tegra GPIO %u as IRQ\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"drivers/gpio/gpio-tegra.c\00", align 1
@tegra_gpio_irq_handler._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.tegra_gpio_irq_handler = private unnamed_addr constant [23 x i8] c"tegra_gpio_irq_handler\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"hwirq = %d\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"tegra_gpio\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"%u:%u %02x %02x %02x %02x %02x %02x %06x\0A\00", align 1
@tegra210_gpio_config = internal constant %struct.tegra_gpio_soc_config { i8 1, i32 256, i32 128 }, align 4
@tegra30_gpio_config = internal constant %struct.tegra_gpio_soc_config { i8 0, i32 256, i32 128 }, align 4
@tegra20_gpio_config = internal constant %struct.tegra_gpio_soc_config { i8 0, i32 128, i32 2048 }, align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author214, ptr @__UNIQUE_ID_author215, ptr @__UNIQUE_ID_author216, ptr @__UNIQUE_ID_author217, ptr @__UNIQUE_ID_description213, ptr @__UNIQUE_ID_file218, ptr @__UNIQUE_ID_license219, ptr @__exitcall_tegra_gpio_driver_exit, ptr @__initcall__kmod_gpio_tegra__212_815_tegra_gpio_driver_init6, ptr @tegra_gpio_driver_exit], section "llvm.metadata"
@switch.table.tegra_gpio_irq_set_type = private unnamed_addr constant [8 x i32] [i32 257, i32 256, i32 65792, i32 1, i32 257, i32 257, i32 257, i32 0], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_gpio_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_gpio_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_gpio_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_gpio_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_gpio_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.irq_fwspec, align 4
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 464, i32 noundef 3520) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %173, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %4) #8
  %9 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 3
  store ptr %8, ptr %9, align 4
  store ptr %4, ptr %5, align 4
  %10 = tail call i32 @platform_irq_count(ptr noundef %0) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %173, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 6
  store i32 %10, ptr %13, align 4
  %14 = icmp eq i32 %10, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #9
  br label %173

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4
  store ptr @.str, ptr %17, align 4
  %18 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 5
  store ptr @tegra_gpio_request, ptr %18, align 4
  %19 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 6
  store ptr @tegra_gpio_free, ptr %19, align 4
  %20 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 8
  store ptr @tegra_gpio_direction_input, ptr %20, align 4
  %21 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 10
  store ptr @tegra_gpio_get, ptr %21, align 4
  %22 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 9
  store ptr @tegra_gpio_direction_output, ptr %22, align 4
  %23 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 12
  store ptr @tegra_gpio_set, ptr %23, align 4
  %24 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 7
  store ptr @tegra_gpio_get_direction, ptr %24, align 4
  %25 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 19
  store i32 0, ptr %25, align 4
  %26 = trunc i32 %10 to i16
  %27 = shl i16 %26, 5
  %28 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 20
  store i16 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 2
  store ptr %4, ptr %29, align 4
  %30 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 39
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 5
  %34 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 5, i32 1
  store ptr @.str.2, ptr %34, align 4
  %35 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 5, i32 6
  store ptr @tegra_gpio_irq_ack, ptr %35, align 4
  %36 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 5, i32 7
  store ptr @tegra_gpio_irq_mask, ptr %36, align 4
  %37 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 5, i32 9
  store ptr @tegra_gpio_irq_unmask, ptr %37, align 4
  %38 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 5, i32 13
  store ptr @tegra_gpio_irq_set_type, ptr %38, align 4
  %39 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 5, i32 3
  store ptr @tegra_gpio_irq_shutdown, ptr %39, align 4
  %40 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 5, i32 14
  store ptr @tegra_gpio_irq_set_wake, ptr %40, align 4
  %41 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 5, i32 22
  store ptr @tegra_gpio_irq_request_resources, ptr %41, align 4
  %42 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 5, i32 23
  store ptr @tegra_gpio_irq_release_resources, ptr %42, align 4
  %43 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %43, align 8
  %44 = load ptr, ptr %9, align 4
  %45 = load i8, ptr %44, align 4, !range !8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %16
  %48 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 14
  store ptr @tegra_gpio_set_config, ptr %48, align 4
  br label %49

49:                                               ; preds = %47, %16
  %50 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 164) #8
  %51 = extractvalue { i32, i1 } %50, 1
  br i1 %51, label %52, label %54, !prof !9

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 2
  store ptr null, ptr %53, align 4
  br label %173

54:                                               ; preds = %49
  %55 = extractvalue { i32, i1 } %50, 0
  %56 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %55, i32 noundef 3520) #8
  %57 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 2
  store ptr %56, ptr %57, align 4
  %58 = icmp eq ptr %56, null
  br i1 %58, label %173, label %59

59:                                               ; preds = %54
  %60 = load i32, ptr %13, align 4
  %61 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %60, i32 4) #8
  %62 = extractvalue { i32, i1 } %61, 1
  br i1 %62, label %63, label %65, !prof !9

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 7
  store ptr null, ptr %64, align 4
  br label %173

65:                                               ; preds = %59
  %66 = extractvalue { i32, i1 } %61, 0
  %67 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %66, i32 noundef 3520) #8
  %68 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 7
  store ptr %67, ptr %68, align 4
  %69 = icmp eq ptr %67, null
  br i1 %69, label %173, label %70

70:                                               ; preds = %65
  %71 = load i32, ptr %13, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %77, %70
  %74 = phi i32 [ %83, %77 ], [ 0, %70 ]
  %75 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef %74) #8
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %173, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %57, align 4
  %79 = getelementptr %struct.tegra_gpio_bank, ptr %78, i32 %74
  store i32 %74, ptr %79, align 4
  %80 = load ptr, ptr %68, align 4
  %81 = getelementptr i32, ptr %80, i32 %74
  store i32 %75, ptr %81, align 4
  %82 = getelementptr %struct.tegra_gpio_bank, ptr %78, i32 %74, i32 1, i32 0
  %83 = add nuw i32 %74, 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %82, i8 0, i64 32, i1 false)
  %84 = load i32, ptr %13, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %73, label %86

86:                                               ; preds = %77
  %87 = load ptr, ptr %68, align 4
  br label %88

88:                                               ; preds = %86, %70
  %89 = phi ptr [ %67, %70 ], [ %87, %86 ]
  %90 = phi i32 [ 0, %70 ], [ %84, %86 ]
  %91 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 37
  store ptr %33, ptr %91, align 4
  %92 = load ptr, ptr %30, align 8
  %93 = icmp eq ptr %92, null
  %94 = getelementptr inbounds %struct.device_node, ptr %92, i32 0, i32 3
  %95 = select i1 %93, ptr null, ptr %94
  %96 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 37, i32 3
  store ptr %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 37, i32 5
  store ptr @tegra_gpio_child_to_parent_hwirq, ptr %97, align 4
  %98 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 37, i32 6
  store ptr @tegra_gpio_populate_parent_fwspec, ptr %98, align 4
  %99 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 37, i32 9
  store ptr @handle_simple_irq, ptr %99, align 4
  %100 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 37, i32 10
  store i32 0, ptr %100, align 4
  %101 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 37, i32 13
  store ptr @tegra_gpio_irq_handler, ptr %101, align 4
  %102 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 37, i32 14
  store ptr %5, ptr %102, align 4
  %103 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 37, i32 15
  store i32 %90, ptr %103, align 4
  %104 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 37, i32 16
  store ptr %89, ptr %104, align 4
  %105 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @tegra_pmc_of_match, ptr noundef null) #8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %122, label %107

107:                                              ; preds = %88
  %108 = getelementptr inbounds %struct.device_node, ptr %105, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  %109 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %109, i8 0, i64 68, i1 false) #8
  store ptr %108, ptr %3, align 4
  %110 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  %113 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %113, i8 0, i64 68, i1 false) #8
  store ptr %108, ptr %2, align 4
  %114 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %2, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  br label %115

115:                                              ; preds = %112, %107
  %116 = phi ptr [ %110, %107 ], [ %114, %112 ]
  %117 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 4, i32 37, i32 4
  store ptr %116, ptr %117, align 4
  call void @of_node_put(ptr noundef nonnull %105) #8
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %173, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 5, i32 11
  store ptr @tegra_gpio_irq_set_affinity, ptr %121, align 4
  br label %122

122:                                              ; preds = %120, %88
  %123 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %124 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 1
  store ptr %123, ptr %124, align 4
  %125 = icmp ugt ptr %123, inttoptr (i32 -4096 to ptr)
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = load i32, ptr %13, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %168, label %131

129:                                              ; preds = %122
  %130 = ptrtoint ptr %123 to i32
  br label %173

131:                                              ; preds = %166, %126
  %132 = phi ptr [ %167, %166 ], [ %123, %126 ]
  %133 = phi i32 [ %163, %166 ], [ 0, %126 ]
  %134 = shl i32 %133, 5
  %135 = ashr exact i32 %134, 5
  %136 = load ptr, ptr %9, align 4
  %137 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %136, i32 0, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = mul i32 %138, %135
  %140 = add i32 %139, 80
  %141 = getelementptr i8, ptr %132, i32 %140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 0) #8, !srcloc !10
  %142 = load ptr, ptr %9, align 4
  %143 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %142, i32 0, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = mul i32 %144, %135
  %146 = add i32 %145, 84
  %147 = load ptr, ptr %124, align 4
  %148 = getelementptr i8, ptr %147, i32 %146
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 0) #8, !srcloc !10
  %149 = load ptr, ptr %9, align 4
  %150 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %149, i32 0, i32 1
  %151 = load i32, ptr %150, align 4
  %152 = mul i32 %151, %135
  %153 = add i32 %152, 88
  %154 = load ptr, ptr %124, align 4
  %155 = getelementptr i8, ptr %154, i32 %153
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 0) #8, !srcloc !10
  %156 = load ptr, ptr %9, align 4
  %157 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %156, i32 0, i32 1
  %158 = load i32, ptr %157, align 4
  %159 = mul i32 %158, %135
  %160 = add i32 %159, 92
  %161 = load ptr, ptr %124, align 4
  %162 = getelementptr i8, ptr %161, i32 %160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 0) #8, !srcloc !10
  %163 = add nuw i32 %133, 1
  %164 = load i32, ptr %13, align 4
  %165 = icmp ult i32 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %131
  %167 = load ptr, ptr %124, align 4
  br label %131

168:                                              ; preds = %131, %126
  %169 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %4, ptr noundef %17, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #8
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %168
  %172 = load ptr, ptr %5, align 4
  call void @debugfs_create_devm_seqfile(ptr noundef %172, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef nonnull @tegra_dbg_gpio_show) #8
  br label %173

173:                                              ; preds = %171, %168, %129, %115, %73, %65, %63, %54, %52, %15, %7, %1
  %174 = phi i32 [ %130, %129 ], [ 0, %171 ], [ -19, %15 ], [ -19, %1 ], [ %10, %7 ], [ -12, %54 ], [ -12, %65 ], [ -517, %115 ], [ %169, %168 ], [ -12, %52 ], [ -12, %63 ], [ %75, %73 ]
  ret i32 %174
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_gpio_request(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, %1
  %6 = tail call i32 @pinctrl_gpio_request(i32 noundef %5) #8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_gpio_free(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %1
  tail call void @pinctrl_gpio_free(i32 noundef %6) #8
  %7 = lshr i32 %1, 5
  %8 = getelementptr inbounds %struct.tegra_gpio_info, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, %7
  %13 = lshr i32 %1, 1
  %14 = and i32 %13, 12
  %15 = add i32 %12, %14
  %16 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %9, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %15, %17
  %19 = and i32 %1, 7
  %20 = shl nuw nsw i32 256, %19
  %21 = getelementptr inbounds %struct.tegra_gpio_info, ptr %3, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %20) #8, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_gpio_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = lshr i32 %1, 5
  %5 = getelementptr inbounds %struct.tegra_gpio_info, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = mul i32 %8, %4
  %10 = lshr i32 %1, 1
  %11 = and i32 %10, 12
  %12 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %6, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %11, 16
  %15 = add i32 %14, %9
  %16 = add i32 %15, %13
  %17 = and i32 %1, 7
  %18 = shl nuw nsw i32 256, %17
  %19 = getelementptr inbounds %struct.tegra_gpio_info, ptr %3, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %18) #8, !srcloc !10
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = mul i32 %24, %4
  %26 = add i32 %25, %11
  %27 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %22, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %26, %28
  %30 = shl nuw nsw i32 257, %17
  %31 = load ptr, ptr %19, align 4
  %32 = getelementptr i8, ptr %31, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #8, !srcloc !10
  %33 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %1
  %36 = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %35) #8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = load ptr, ptr %3, align 4
  %40 = load i32, ptr %33, align 4
  %41 = add i32 %40, %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.3, i32 noundef %41, i32 noundef %36) #9
  br label %42

42:                                               ; preds = %38, %2
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = and i32 %1, 7
  %5 = shl nuw nsw i32 1, %4
  %6 = lshr i32 %1, 5
  %7 = getelementptr inbounds %struct.tegra_gpio_info, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, %6
  %12 = lshr i32 %1, 1
  %13 = and i32 %12, 12
  %14 = or i32 %13, 16
  %15 = add i32 %14, %11
  %16 = getelementptr inbounds %struct.tegra_gpio_info, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 %15
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !11
  %20 = and i32 %19, %5
  %21 = icmp eq i32 %20, 0
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = mul i32 %24, %6
  br i1 %21, label %32, label %26

26:                                               ; preds = %2
  %27 = or i32 %13, 32
  %28 = add i32 %27, %25
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr i8, ptr %29, i32 %28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !11
  br label %38

32:                                               ; preds = %2
  %33 = or i32 %13, 48
  %34 = add i32 %33, %25
  %35 = load ptr, ptr %16, align 4
  %36 = getelementptr i8, ptr %35, i32 %34
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !11
  br label %38

38:                                               ; preds = %32, %26
  %39 = phi i32 [ %31, %26 ], [ %37, %32 ]
  %40 = lshr i32 %39, %4
  %41 = and i32 %40, 1
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %6 = lshr i32 %1, 5
  %7 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, %6
  %12 = lshr i32 %1, 1
  %13 = and i32 %12, 12
  %14 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %8, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %13, 32
  %17 = add i32 %16, %11
  %18 = add i32 %17, %15
  %19 = icmp eq i32 %2, 0
  %20 = select i1 %19, i32 256, i32 257
  %21 = and i32 %1, 7
  %22 = shl nuw nsw i32 %20, %21
  %23 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %22) #8, !srcloc !10
  %26 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = mul i32 %29, %6
  %31 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %27, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %13, 16
  %34 = add i32 %33, %30
  %35 = add i32 %34, %32
  %36 = shl nuw nsw i32 257, %21
  %37 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %36) #8, !srcloc !10
  %40 = load ptr, ptr %26, align 4
  %41 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = mul i32 %42, %6
  %44 = add i32 %43, %13
  %45 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %40, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %44, %46
  %48 = load ptr, ptr %37, align 4
  %49 = getelementptr i8, ptr %48, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %36) #8, !srcloc !10
  %50 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %1
  %53 = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %52) #8
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %3
  %56 = load ptr, ptr %4, align 4
  %57 = load i32, ptr %50, align 4
  %58 = add i32 %57, %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.4, i32 noundef %58, i32 noundef %53) #9
  br label %59

59:                                               ; preds = %55, %3
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = lshr i32 %1, 5
  %6 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = mul i32 %9, %5
  %11 = lshr i32 %1, 1
  %12 = and i32 %11, 12
  %13 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %7, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %12, 32
  %16 = add i32 %15, %10
  %17 = add i32 %16, %14
  %18 = icmp eq i32 %2, 0
  %19 = select i1 %18, i32 256, i32 257
  %20 = and i32 %1, 7
  %21 = shl nuw nsw i32 %19, %20
  %22 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #8, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_gpio_get_direction(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = and i32 %1, 7
  %5 = shl nuw nsw i32 1, %4
  %6 = lshr i32 %1, 5
  %7 = getelementptr inbounds %struct.tegra_gpio_info, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, %6
  %12 = lshr i32 %1, 1
  %13 = and i32 %12, 12
  %14 = add i32 %11, %13
  %15 = getelementptr inbounds %struct.tegra_gpio_info, ptr %3, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %14
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !11
  %19 = and i32 %18, %5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %2
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = mul i32 %24, %6
  %26 = or i32 %13, 16
  %27 = add i32 %26, %25
  %28 = load ptr, ptr %15, align 4
  %29 = getelementptr i8, ptr %28, i32 %27
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !11
  %31 = xor i32 %30, -1
  %32 = lshr i32 %31, %4
  %33 = and i32 %32, 1
  br label %34

34:                                               ; preds = %21, %2
  %35 = phi i32 [ -22, %2 ], [ %33, %21 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_gpio_irq_ack(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 7
  %8 = shl nuw nsw i32 1, %7
  %9 = lshr i32 %6, 5
  %10 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, %9
  %15 = lshr i32 %6, 1
  %16 = and i32 %15, 12
  %17 = or i32 %16, 112
  %18 = add i32 %17, %14
  %19 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %8) #8, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_gpio_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 5
  %8 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, %7
  %13 = lshr i32 %6, 1
  %14 = and i32 %13, 12
  %15 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %9, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %14, 80
  %18 = add i32 %17, %12
  %19 = add i32 %18, %16
  %20 = and i32 %6, 7
  %21 = shl nuw nsw i32 256, %20
  %22 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #8, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_gpio_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 5
  %8 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, %7
  %13 = lshr i32 %6, 1
  %14 = and i32 %13, 12
  %15 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %9, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %14, 80
  %18 = add i32 %17, %12
  %19 = add i32 %18, %16
  %20 = and i32 %6, 7
  %21 = shl nuw nsw i32 257, %20
  %22 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #8, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_gpio_irq_set_type(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 3
  %6 = and i32 %5, 3
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @gpiochip_get_data(ptr noundef %8) #8
  %10 = getelementptr inbounds %struct.tegra_gpio_info, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %3, align 4
  %13 = lshr i32 %12, 5
  %14 = and i32 %1, 15
  %15 = add nsw i32 %14, -1
  %16 = icmp ult i32 %15, 8
  br i1 %16, label %17, label %110

17:                                               ; preds = %2
  %18 = trunc i32 %15 to i8
  %19 = lshr i8 -113, %18
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %110, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds [8 x i32], ptr @switch.table.tegra_gpio_irq_set_type, i32 0, i32 %15
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.tegra_gpio_bank, ptr %11, i32 %13, i32 1, i32 %6
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #8
  %27 = lshr i32 %4, 5
  %28 = getelementptr inbounds %struct.tegra_gpio_info, ptr %9, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = mul i32 %31, %27
  %33 = shl nuw nsw i32 %6, 2
  %34 = or i32 %33, 96
  %35 = add i32 %34, %32
  %36 = getelementptr inbounds %struct.tegra_gpio_info, ptr %9, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 %35
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #8, !srcloc !11
  %40 = and i32 %4, 7
  %41 = shl nuw nsw i32 65793, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %39, %42
  %44 = shl nuw nsw i32 %24, %40
  %45 = or i32 %43, %44
  %46 = load ptr, ptr %28, align 4
  %47 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %46, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = mul i32 %48, %27
  %50 = add i32 %34, %49
  %51 = load ptr, ptr %36, align 4
  %52 = getelementptr i8, ptr %51, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %45) #8, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #8
  %53 = load ptr, ptr %28, align 4
  %54 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %53, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = mul i32 %55, %27
  %57 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %53, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = or i32 %33, 16
  %60 = add i32 %59, %56
  %61 = add i32 %60, %58
  %62 = shl nuw nsw i32 256, %40
  %63 = load ptr, ptr %36, align 4
  %64 = getelementptr i8, ptr %63, i32 %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #8, !srcloc !10
  %65 = load ptr, ptr %28, align 4
  %66 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %65, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = mul i32 %67, %27
  %69 = lshr i32 %4, 1
  %70 = and i32 %69, 12
  %71 = add i32 %68, %70
  %72 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %65, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %71, %73
  %75 = shl nuw nsw i32 257, %40
  %76 = load ptr, ptr %36, align 4
  %77 = getelementptr i8, ptr %76, i32 %74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #8, !srcloc !10
  %78 = getelementptr inbounds %struct.tegra_gpio_info, ptr %9, i32 0, i32 4
  %79 = tail call i32 @gpiochip_lock_as_irq(ptr noundef %78, i32 noundef %4) #8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %22
  %82 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.5, i32 noundef %4) #9
  %83 = load ptr, ptr %28, align 4
  %84 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %83, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = mul i32 %85, %27
  %87 = add i32 %86, %70
  %88 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %83, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %87, %89
  %91 = load ptr, ptr %36, align 4
  %92 = getelementptr i8, ptr %91, i32 %90
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %62) #8, !srcloc !10
  br label %110

93:                                               ; preds = %22
  %94 = and i32 %1, 12
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = and i32 %1, 3
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %96, %93
  %100 = phi ptr [ @handle_level_irq, %93 ], [ @handle_edge_irq, %96 ]
  %101 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.irq_desc, ptr %102, i32 0, i32 3
  store ptr %100, ptr %103, align 4
  br label %104

104:                                              ; preds = %99, %96
  %105 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = tail call i32 @irq_chip_set_type_parent(ptr noundef %0, i32 noundef %1) #8
  br label %110

110:                                              ; preds = %108, %104, %81, %17, %2
  %111 = phi i32 [ %79, %81 ], [ -22, %2 ], [ %109, %108 ], [ 0, %104 ], [ -22, %17 ]
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_gpio_irq_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %2, align 4
  %8 = tail call ptr @gpiochip_get_data(ptr noundef %7) #8
  %9 = load i32, ptr %5, align 4
  %10 = lshr i32 %9, 5
  %11 = getelementptr inbounds %struct.tegra_gpio_info, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %14, %10
  %16 = lshr i32 %9, 1
  %17 = and i32 %16, 12
  %18 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %12, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %17, 80
  %21 = add i32 %20, %15
  %22 = add i32 %21, %19
  %23 = and i32 %9, 7
  %24 = shl nuw nsw i32 256, %23
  %25 = getelementptr inbounds %struct.tegra_gpio_info, ptr %8, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %24) #8, !srcloc !10
  %28 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 4
  tail call void @gpiochip_unlock_as_irq(ptr noundef %28, i32 noundef %6) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_gpio_irq_set_wake(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = lshr i32 %7, 5
  %11 = getelementptr %struct.tegra_gpio_bank, ptr %9, i32 %10
  %12 = lshr i32 %7, 3
  %13 = and i32 %12, 3
  %14 = and i32 %7, 7
  %15 = shl nuw nsw i32 1, %14
  %16 = getelementptr inbounds %struct.tegra_gpio_info, ptr %5, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %11, align 4
  %19 = getelementptr i32, ptr %17, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @irq_set_irq_wake(i32 noundef %20, i32 noundef %1) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @irq_chip_set_wake_parent(ptr noundef %0, i32 noundef %1) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %16, align 4
  %32 = load i32, ptr %11, align 4
  %33 = getelementptr i32, ptr %31, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %1, 0
  %36 = zext i1 %35 to i32
  %37 = tail call i32 @irq_set_irq_wake(i32 noundef %34, i32 noundef %36) #8
  br label %49

38:                                               ; preds = %27, %23
  %39 = icmp eq i32 %1, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %38
  %41 = getelementptr %struct.tegra_gpio_bank, ptr %9, i32 %10, i32 8, i32 %13
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, %15
  store i32 %43, ptr %41, align 4
  br label %49

44:                                               ; preds = %38
  %45 = xor i32 %15, -1
  %46 = getelementptr %struct.tegra_gpio_bank, ptr %9, i32 %10, i32 8, i32 %13
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, %45
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %44, %40, %30, %2
  %50 = phi i32 [ %28, %30 ], [ %21, %2 ], [ 0, %44 ], [ 0, %40 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_gpio_irq_request_resources(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 5
  %8 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, %7
  %13 = lshr i32 %6, 1
  %14 = and i32 %13, 12
  %15 = add i32 %12, %14
  %16 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %9, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %15, %17
  %19 = and i32 %6, 7
  %20 = shl nuw nsw i32 257, %19
  %21 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %20) #8, !srcloc !10
  %24 = load i32, ptr %5, align 4
  %25 = tail call i32 @gpiochip_reqres_irq(ptr noundef %3, i32 noundef %24) #8
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_gpio_irq_release_resources(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  tail call void @gpiochip_relres_irq(ptr noundef %3, i32 noundef %6) #8
  %7 = load i32, ptr %5, align 4
  %8 = lshr i32 %7, 5
  %9 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = mul i32 %12, %8
  %14 = lshr i32 %7, 1
  %15 = and i32 %14, 12
  %16 = add i32 %13, %15
  %17 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %10, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %16, %18
  %20 = and i32 %7, 7
  %21 = shl nuw nsw i32 257, %20
  %22 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #8, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_gpio_set_config(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = and i32 %2, 255
  %5 = icmp eq i32 %4, 11
  br i1 %5, label %6, label %73

6:                                                ; preds = %3
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %8 = lshr i32 %1, 5
  %9 = icmp ult i32 %2, 256
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tegra_gpio_info, ptr %7, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %14, %8
  %16 = lshr i32 %1, 1
  %17 = and i32 %16, 12
  %18 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %12, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %17, 48
  %21 = add i32 %20, %15
  %22 = add i32 %21, %19
  %23 = and i32 %1, 7
  %24 = shl nuw nsw i32 256, %23
  %25 = getelementptr inbounds %struct.tegra_gpio_info, ptr %7, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %24) #8, !srcloc !10
  br label %73

28:                                               ; preds = %6
  %29 = lshr i32 %2, 8
  %30 = add nuw nsw i32 %29, 999
  %31 = udiv i32 %30, 1000
  %32 = getelementptr inbounds %struct.tegra_gpio_info, ptr %7, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @llvm.umin.i32(i32 %31, i32 255) #8
  %35 = lshr i32 %1, 3
  %36 = and i32 %35, 3
  %37 = getelementptr %struct.tegra_gpio_bank, ptr %33, i32 %8, i32 2, i32 %36
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #8
  %39 = getelementptr %struct.tegra_gpio_bank, ptr %33, i32 %8, i32 10, i32 %36
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %40, %34
  br i1 %41, label %44, label %42

42:                                               ; preds = %28
  %43 = shl nuw nsw i32 %36, 2
  br label %56

44:                                               ; preds = %28
  %45 = getelementptr inbounds %struct.tegra_gpio_info, ptr %7, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %46, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = mul i32 %48, %8
  %50 = shl nuw nsw i32 %36, 2
  %51 = or i32 %50, 240
  %52 = add i32 %51, %49
  %53 = getelementptr inbounds %struct.tegra_gpio_info, ptr %7, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %34) #8, !srcloc !10
  store i32 %34, ptr %39, align 4
  br label %56

56:                                               ; preds = %44, %42
  %57 = phi i32 [ %43, %42 ], [ %50, %44 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %38) #8
  %58 = getelementptr inbounds %struct.tegra_gpio_info, ptr %7, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %59, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = mul i32 %61, %8
  %63 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %59, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = or i32 %57, 48
  %66 = add i32 %62, %65
  %67 = add i32 %66, %64
  %68 = and i32 %1, 7
  %69 = shl nuw nsw i32 257, %68
  %70 = getelementptr inbounds %struct.tegra_gpio_info, ptr %7, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i8, ptr %71, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %69) #8, !srcloc !10
  br label %73

73:                                               ; preds = %56, %10, %3
  %74 = phi i32 [ -524, %3 ], [ 0, %10 ], [ 0, %56 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_gpio_child_to_parent_hwirq(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #2 {
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef %1) #8
  store i32 %8, ptr %3, align 4
  store i32 %2, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @tegra_gpio_populate_parent_fwspec(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 72) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.irq_domain, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %5, align 8
  %12 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 1
  store i32 3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2
  store i32 0, ptr %13, align 8
  %14 = getelementptr %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 1
  store i32 %1, ptr %14, align 4
  %15 = getelementptr %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 2
  store i32 %2, ptr %15, align 8
  br label %16

16:                                               ; preds = %7, %3
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_gpio_irq_handler(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 4, i32 37, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %10 = load i32, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !12
  %11 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %22, %14
  %18 = phi i32 [ 0, %14 ], [ %23, %22 ]
  %19 = getelementptr i32, ptr %16, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %10
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = add nuw i32 %18, 1
  %24 = icmp eq i32 %23, %12
  br i1 %24, label %30, label %17

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr %struct.tegra_gpio_bank, ptr %27, i32 %18
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !9

30:                                               ; preds = %25, %22, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 399, i32 noundef 9, ptr noundef null) #8
  br label %142

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 10
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %37(ptr noundef %40) #8
  br label %49

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %43(ptr noundef %44) #8
  %45 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  tail call void %46(ptr noundef %44) #8
  br label %49

49:                                               ; preds = %48, %41, %39, %31
  %50 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 3
  %51 = getelementptr inbounds %struct.tegra_gpio_info, ptr %4, i32 0, i32 1
  %52 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 9
  %53 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  br label %54

54:                                               ; preds = %130, %49
  %55 = phi i1 [ false, %49 ], [ %131, %130 ]
  %56 = phi i32 [ 0, %49 ], [ %132, %130 ]
  %57 = load i32, ptr %28, align 4
  %58 = shl i32 %57, 5
  %59 = shl nuw nsw i32 %56, 3
  %60 = or i32 %58, %59
  %61 = and i32 %57, 134217727
  %62 = load ptr, ptr %50, align 4
  %63 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %62, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = mul i32 %64, %61
  %66 = shl nuw i32 %56, 2
  %67 = or i32 %66, 64
  %68 = add i32 %67, %65
  %69 = load ptr, ptr %51, align 4
  %70 = getelementptr i8, ptr %69, i32 %68
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #8, !srcloc !11
  %72 = load ptr, ptr %50, align 4
  %73 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = mul i32 %74, %61
  %76 = or i32 %66, 80
  %77 = add i32 %76, %75
  %78 = load ptr, ptr %51, align 4
  %79 = getelementptr i8, ptr %78, i32 %77
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #8, !srcloc !11
  %81 = and i32 %80, %71
  store i32 %81, ptr %2, align 4
  %82 = load ptr, ptr %50, align 4
  %83 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %82, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = mul i32 %84, %61
  %86 = or i32 %66, 96
  %87 = add i32 %86, %85
  %88 = load ptr, ptr %51, align 4
  %89 = getelementptr i8, ptr %88, i32 %87
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #8, !srcloc !11
  %91 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 8, i32 noundef 0) #8
  %92 = icmp ult i32 %91, 8
  br i1 %92, label %93, label %130

93:                                               ; preds = %54
  %94 = or i32 %66, 112
  br label %95

95:                                               ; preds = %126, %93
  %96 = phi i1 [ %55, %93 ], [ %118, %126 ]
  %97 = phi i32 [ %91, %93 ], [ %128, %126 ]
  %98 = shl nuw nsw i32 1, %97
  %99 = load ptr, ptr %50, align 4
  %100 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %99, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = mul i32 %101, %61
  %103 = add i32 %94, %102
  %104 = load ptr, ptr %51, align 4
  %105 = getelementptr i8, ptr %104, i32 %103
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %98) #8, !srcloc !10
  br i1 %96, label %117, label %106

106:                                              ; preds = %95
  %107 = shl nuw nsw i32 256, %97
  %108 = and i32 %107, %90
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr %32, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load ptr, ptr %52, align 4
  br label %115

115:                                              ; preds = %113, %110
  %116 = phi ptr [ %114, %113 ], [ %111, %110 ]
  call void %116(ptr noundef %53) #8
  br label %117

117:                                              ; preds = %115, %106, %95
  %118 = phi i1 [ true, %95 ], [ true, %115 ], [ false, %106 ]
  %119 = add i32 %60, %97
  %120 = call i32 @generic_handle_domain_irq(ptr noundef %8, i32 noundef %119) #8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %117
  %123 = call i32 @___ratelimit(ptr noundef nonnull @tegra_gpio_irq_handler._rs, ptr noundef nonnull @__func__.tegra_gpio_irq_handler) #8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %126, label %125, !prof !13

125:                                              ; preds = %122
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 426, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %119) #8
  br label %126

126:                                              ; preds = %125, %122, %117
  %127 = add nuw nsw i32 %97, 1
  %128 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 8, i32 noundef %127) #8
  %129 = icmp ult i32 %128, 8
  br i1 %129, label %95, label %130

130:                                              ; preds = %126, %54
  %131 = phi i1 [ %55, %54 ], [ %118, %126 ]
  %132 = add nuw nsw i32 %56, 1
  %133 = icmp eq i32 %132, 4
  br i1 %133, label %134, label %54

134:                                              ; preds = %130
  br i1 %131, label %142, label %135

135:                                              ; preds = %134
  %136 = load ptr, ptr %32, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load ptr, ptr %52, align 4
  br label %140

140:                                              ; preds = %138, %135
  %141 = phi ptr [ %139, %138 ], [ %136, %135 ]
  call void %141(ptr noundef %53) #8
  br label %142

142:                                              ; preds = %140, %134, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_gpio_irq_set_affinity(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #2 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @irq_chip_set_affinity_parent(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #8
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ -22, %3 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_request(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_lock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_unlock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_wake_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_reqres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_relres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_devm_seqfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dbg_gpio_show(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.tegra_gpio_info, ptr %6, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %87, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tegra_gpio_info, ptr %6, i32 0, i32 3
  %12 = getelementptr inbounds %struct.tegra_gpio_info, ptr %6, i32 0, i32 1
  br label %13

13:                                               ; preds = %83, %10
  %14 = phi i32 [ 0, %10 ], [ %84, %83 ]
  %15 = and i32 %14, 134217727
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi i32 [ 0, %13 ], [ %81, %16 ]
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = mul i32 %20, %15
  %22 = shl nuw i32 %17, 2
  %23 = add i32 %21, %22
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr i8, ptr %24, i32 %23
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !11
  %27 = load ptr, ptr %11, align 4
  %28 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = mul i32 %29, %15
  %31 = or i32 %22, 16
  %32 = add i32 %31, %30
  %33 = load ptr, ptr %12, align 4
  %34 = getelementptr i8, ptr %33, i32 %32
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !11
  %36 = load ptr, ptr %11, align 4
  %37 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = mul i32 %38, %15
  %40 = or i32 %22, 32
  %41 = add i32 %40, %39
  %42 = load ptr, ptr %12, align 4
  %43 = getelementptr i8, ptr %42, i32 %41
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #8, !srcloc !11
  %45 = load ptr, ptr %11, align 4
  %46 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = mul i32 %47, %15
  %49 = or i32 %22, 48
  %50 = add i32 %49, %48
  %51 = load ptr, ptr %12, align 4
  %52 = getelementptr i8, ptr %51, i32 %50
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #8, !srcloc !11
  %54 = load ptr, ptr %11, align 4
  %55 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %54, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = mul i32 %56, %15
  %58 = or i32 %22, 64
  %59 = add i32 %58, %57
  %60 = load ptr, ptr %12, align 4
  %61 = getelementptr i8, ptr %60, i32 %59
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #8, !srcloc !11
  %63 = load ptr, ptr %11, align 4
  %64 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %63, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = mul i32 %65, %15
  %67 = or i32 %22, 80
  %68 = add i32 %67, %66
  %69 = load ptr, ptr %12, align 4
  %70 = getelementptr i8, ptr %69, i32 %68
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #8, !srcloc !11
  %72 = load ptr, ptr %11, align 4
  %73 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = mul i32 %74, %15
  %76 = or i32 %22, 96
  %77 = add i32 %76, %75
  %78 = load ptr, ptr %12, align 4
  %79 = getelementptr i8, ptr %78, i32 %77
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #8, !srcloc !11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %14, i32 noundef %17, i32 noundef %26, i32 noundef %35, i32 noundef %44, i32 noundef %53, i32 noundef %62, i32 noundef %71, i32 noundef %80) #8
  %81 = add nuw nsw i32 %17, 1
  %82 = icmp eq i32 %81, 4
  br i1 %82, label %83, label %16

83:                                               ; preds = %16
  %84 = add nuw i32 %14, 1
  %85 = load i32, ptr %7, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %13, label %87

87:                                               ; preds = %83, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_gpio_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_gpio_info, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %105, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tegra_gpio_info, ptr %3, i32 0, i32 2
  %9 = getelementptr inbounds %struct.tegra_gpio_info, ptr %3, i32 0, i32 3
  %10 = getelementptr inbounds %struct.tegra_gpio_info, ptr %3, i32 0, i32 1
  br label %11

11:                                               ; preds = %101, %7
  %12 = phi i32 [ 0, %7 ], [ %102, %101 ]
  %13 = load ptr, ptr %8, align 4
  %14 = shl i32 %12, 5
  br label %15

15:                                               ; preds = %69, %11
  %16 = phi i32 [ 0, %11 ], [ %99, %69 ]
  %17 = shl nuw nsw i32 %16, 3
  %18 = or i32 %17, %14
  %19 = lshr i32 %18, 5
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = mul i32 %22, %19
  %24 = shl nuw nsw i32 %16, 2
  %25 = add i32 %23, %24
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr i8, ptr %26, i32 %25
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #8, !srcloc !11
  %29 = getelementptr %struct.tegra_gpio_bank, ptr %13, i32 %12, i32 3, i32 %16
  store i32 %28, ptr %29, align 4
  %30 = load ptr, ptr %9, align 4
  %31 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = mul i32 %32, %19
  %34 = or i32 %24, 32
  %35 = add i32 %34, %33
  %36 = load ptr, ptr %10, align 4
  %37 = getelementptr i8, ptr %36, i32 %35
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !11
  %39 = getelementptr %struct.tegra_gpio_bank, ptr %13, i32 %12, i32 4, i32 %16
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %9, align 4
  %41 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = mul i32 %42, %19
  %44 = or i32 %24, 16
  %45 = add i32 %44, %43
  %46 = load ptr, ptr %10, align 4
  %47 = getelementptr i8, ptr %46, i32 %45
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #8, !srcloc !11
  %49 = getelementptr %struct.tegra_gpio_bank, ptr %13, i32 %12, i32 5, i32 %16
  store i32 %48, ptr %49, align 4
  %50 = load ptr, ptr %9, align 4
  %51 = load i8, ptr %50, align 4, !range !8
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %15
  %54 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %50, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = mul i32 %55, %19
  %57 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %50, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = or i32 %24, 48
  %60 = add i32 %59, %56
  %61 = add i32 %60, %58
  %62 = load ptr, ptr %10, align 4
  %63 = getelementptr i8, ptr %62, i32 %61
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #8, !srcloc !11
  %65 = getelementptr %struct.tegra_gpio_bank, ptr %13, i32 %12, i32 9, i32 %16
  %66 = shl i32 %64, 8
  %67 = or i32 %66, %64
  store i32 %67, ptr %65, align 4
  %68 = load ptr, ptr %9, align 4
  br label %69

69:                                               ; preds = %53, %15
  %70 = phi ptr [ %68, %53 ], [ %50, %15 ]
  %71 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %70, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = mul i32 %72, %19
  %74 = or i32 %24, 80
  %75 = add i32 %74, %73
  %76 = load ptr, ptr %10, align 4
  %77 = getelementptr i8, ptr %76, i32 %75
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #8, !srcloc !11
  %79 = getelementptr %struct.tegra_gpio_bank, ptr %13, i32 %12, i32 6, i32 %16
  store i32 %78, ptr %79, align 4
  %80 = load ptr, ptr %9, align 4
  %81 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %80, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = mul i32 %82, %19
  %84 = or i32 %24, 96
  %85 = add i32 %84, %83
  %86 = load ptr, ptr %10, align 4
  %87 = getelementptr i8, ptr %86, i32 %85
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #8, !srcloc !11
  %89 = getelementptr %struct.tegra_gpio_bank, ptr %13, i32 %12, i32 7, i32 %16
  store i32 %88, ptr %89, align 4
  %90 = getelementptr %struct.tegra_gpio_bank, ptr %13, i32 %12, i32 8, i32 %16
  %91 = load i32, ptr %90, align 4
  %92 = load ptr, ptr %9, align 4
  %93 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %92, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = mul i32 %94, %19
  %96 = add i32 %74, %95
  %97 = load ptr, ptr %10, align 4
  %98 = getelementptr i8, ptr %97, i32 %96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %91) #8, !srcloc !10
  %99 = add nuw nsw i32 %16, 1
  %100 = icmp eq i32 %99, 4
  br i1 %100, label %101, label %15

101:                                              ; preds = %69
  %102 = add nuw i32 %12, 1
  %103 = load i32, ptr %4, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %11, label %105

105:                                              ; preds = %101, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_gpio_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_gpio_info, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %104, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tegra_gpio_info, ptr %3, i32 0, i32 2
  %9 = getelementptr inbounds %struct.tegra_gpio_info, ptr %3, i32 0, i32 3
  %10 = getelementptr inbounds %struct.tegra_gpio_info, ptr %3, i32 0, i32 1
  br label %11

11:                                               ; preds = %100, %7
  %12 = phi i32 [ 0, %7 ], [ %101, %100 ]
  %13 = load ptr, ptr %8, align 4
  %14 = shl i32 %12, 5
  br label %15

15:                                               ; preds = %57, %11
  %16 = phi i32 [ 0, %11 ], [ %98, %57 ]
  %17 = shl nuw nsw i32 %16, 3
  %18 = or i32 %17, %14
  %19 = getelementptr %struct.tegra_gpio_bank, ptr %13, i32 %12, i32 3, i32 %16
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %18, 5
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = mul i32 %24, %21
  %26 = shl nuw nsw i32 %16, 2
  %27 = add i32 %25, %26
  %28 = load ptr, ptr %10, align 4
  %29 = getelementptr i8, ptr %28, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %20) #8, !srcloc !10
  %30 = load ptr, ptr %9, align 4
  %31 = load i8, ptr %30, align 4, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %15
  %34 = getelementptr %struct.tegra_gpio_bank, ptr %13, i32 %12, i32 10, i32 %16
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %30, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = mul i32 %37, %21
  %39 = or i32 %26, 240
  %40 = add i32 %39, %38
  %41 = load ptr, ptr %10, align 4
  %42 = getelementptr i8, ptr %41, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %35) #8, !srcloc !10
  %43 = getelementptr %struct.tegra_gpio_bank, ptr %13, i32 %12, i32 9, i32 %16
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %9, align 4
  %46 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = mul i32 %47, %21
  %49 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %45, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %26, 48
  %52 = add i32 %51, %48
  %53 = add i32 %52, %50
  %54 = load ptr, ptr %10, align 4
  %55 = getelementptr i8, ptr %54, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %44) #8, !srcloc !10
  %56 = load ptr, ptr %9, align 4
  br label %57

57:                                               ; preds = %33, %15
  %58 = phi ptr [ %56, %33 ], [ %30, %15 ]
  %59 = getelementptr %struct.tegra_gpio_bank, ptr %13, i32 %12, i32 4, i32 %16
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %58, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = mul i32 %62, %21
  %64 = or i32 %26, 32
  %65 = add i32 %64, %63
  %66 = load ptr, ptr %10, align 4
  %67 = getelementptr i8, ptr %66, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %60) #8, !srcloc !10
  %68 = getelementptr %struct.tegra_gpio_bank, ptr %13, i32 %12, i32 5, i32 %16
  %69 = load i32, ptr %68, align 4
  %70 = load ptr, ptr %9, align 4
  %71 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %70, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = mul i32 %72, %21
  %74 = or i32 %26, 16
  %75 = add i32 %74, %73
  %76 = load ptr, ptr %10, align 4
  %77 = getelementptr i8, ptr %76, i32 %75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %69) #8, !srcloc !10
  %78 = getelementptr %struct.tegra_gpio_bank, ptr %13, i32 %12, i32 7, i32 %16
  %79 = load i32, ptr %78, align 4
  %80 = load ptr, ptr %9, align 4
  %81 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %80, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = mul i32 %82, %21
  %84 = or i32 %26, 96
  %85 = add i32 %84, %83
  %86 = load ptr, ptr %10, align 4
  %87 = getelementptr i8, ptr %86, i32 %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %79) #8, !srcloc !10
  %88 = getelementptr %struct.tegra_gpio_bank, ptr %13, i32 %12, i32 6, i32 %16
  %89 = load i32, ptr %88, align 4
  %90 = load ptr, ptr %9, align 4
  %91 = getelementptr inbounds %struct.tegra_gpio_soc_config, ptr %90, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = mul i32 %92, %21
  %94 = or i32 %26, 80
  %95 = add i32 %94, %93
  %96 = load ptr, ptr %10, align 4
  %97 = getelementptr i8, ptr %96, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %89) #8, !srcloc !10
  %98 = add nuw nsw i32 %16, 1
  %99 = icmp eq i32 %98, 4
  br i1 %99, label %100, label %15

100:                                              ; preds = %57
  %101 = add nuw i32 %12, 1
  %102 = load i32, ptr %4, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %11, label %104

104:                                              ; preds = %100, %1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2477292}
!11 = !{i64 2477710}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", i32 2000, i32 1}
