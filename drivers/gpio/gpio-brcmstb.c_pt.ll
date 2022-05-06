; ModuleID = '/llk/IR/drivers/gpio/gpio-brcmstb.c_pt.bc'
source_filename = "../drivers/gpio/gpio-brcmstb.c"
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
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.brcmstb_gpio_priv = type { %struct.list_head, ptr, ptr, ptr, %struct.irq_chip, i32, i32, i32, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.brcmstb_gpio_bank = type { %struct.list_head, i32, %struct.gpio_chip, ptr, i32, i32, [7 x i32] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_gpio_brcmstb__210_779_brcmstb_gpio_driver_init6 = internal global ptr @brcmstb_gpio_driver_init, section ".initcall6.init", align 4
@brcmstb_gpio_driver = internal global %struct.platform_driver { ptr @brcmstb_gpio_probe, ptr @brcmstb_gpio_remove, ptr @brcmstb_gpio_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcmstb_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcmstb_gpio_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_brcmstb_gpio_driver_exit = internal global ptr @brcmstb_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [33 x i8] c"gpio_brcmstb.author=Gregory Fong\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [66 x i8] c"gpio_brcmstb.description=Driver for Broadcom BRCMSTB SoC UPG GPIO\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [44 x i8] c"gpio_brcmstb.file=drivers/gpio/gpio-brcmstb\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [28 x i8] c"gpio_brcmstb.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"brcmstb-gpio\00", align 1
@brcmstb_gpio_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@brcmstb_gpio_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcmstb_gpio_suspend, ptr @brcmstb_gpio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@brcmstb_gpio_probe.gpio_base = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"brcm,gpio-bank-widths\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Invalid bank width %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"bgpio_init() failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%pOF\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Could not add gpiochip for bank %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Mismatch in banks: res had %d, bank-widths had %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"drivers/gpio/gpio-brcmstb.c\00", align 1
@brcmstb_gpio_of_xlate._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.brcmstb_gpio_of_xlate = private unnamed_addr constant [22 x i8] c"brcmstb_gpio_of_xlate\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Received request for invalid GPIO offset %d\0A\00", align 1
@brcmstb_gpio_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @brcmstb_gpio_irq_map, ptr @brcmstb_gpio_irq_unmap, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"Couldn't allocate IRQ domain\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.12 = private unnamed_addr constant [66 x i8] c"Couldn't get wake IRQ - GPIOs will not be able to wake from sleep\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"brcmstb-gpio-wake\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Couldn't request wake IRQ\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"failed to %s wake-up interrupt\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"IRQ for invalid GPIO (bank=%d, offset=%d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"called %s without drvdata!\0A\00", align 1
@__func__.brcmstb_gpio_remove = private unnamed_addr constant [20 x i8] c"brcmstb_gpio_remove\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_brcmstb_gpio_driver_exit, ptr @__initcall__kmod_gpio_brcmstb__210_779_brcmstb_gpio_driver_init6, ptr @brcmstb_gpio_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcmstb_gpio_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcmstb_gpio_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @brcmstb_gpio_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcmstb_gpio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_gpio_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 172, i32 noundef 3520) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %200, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %9, align 8
  store volatile ptr %6, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %10, align 4
  %11 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %12 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %11) #6
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = ptrtoint ptr %12 to i32
  br label %200

16:                                               ; preds = %8
  %17 = load i32, ptr @brcmstb_gpio_probe.gpio_base, align 4
  %18 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 6
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 1
  store ptr %12, ptr %19, align 4
  %20 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 2
  store ptr %0, ptr %20, align 4
  %21 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef null) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %25 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 5
  store i32 %24, ptr %25, align 4
  %26 = icmp slt i32 %24, 1
  br i1 %26, label %200, label %29

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 5
  store i32 -2, ptr %28, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %11, align 4
  %33 = add i32 %31, 1
  %34 = sub i32 %33, %32
  %35 = lshr i32 %34, 5
  %36 = tail call i32 @of_property_count_elems_of_size(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef 4) #6
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %35, i32 noundef %36) #7
  br label %200

39:                                               ; preds = %29
  %40 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef null) #6
  %41 = call ptr @of_prop_next_u32(ptr noundef %40, ptr noundef null, ptr noundef nonnull %2) #6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %135, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 5
  br label %45

45:                                               ; preds = %130, %43
  %46 = phi i1 [ false, %43 ], [ %131, %130 ]
  %47 = phi i32 [ 0, %43 ], [ %132, %130 ]
  %48 = phi ptr [ %41, %43 ], [ %133, %130 ]
  %49 = load i32, ptr %2, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, ptr @brcmstb_gpio_probe.gpio_base, align 4
  %53 = add i32 %52, 32
  store i32 %53, ptr @brcmstb_gpio_probe.gpio_base, align 4
  br label %130

54:                                               ; preds = %45
  %55 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 356, i32 noundef 3520) #6
  %56 = icmp eq ptr %55, null
  br i1 %56, label %197, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %55, i32 0, i32 3
  store ptr %6, ptr %58, align 4
  %59 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %55, i32 0, i32 1
  store i32 %47, ptr %59, align 4
  %60 = load i32, ptr %2, align 4
  %61 = add i32 %60, -33
  %62 = icmp ult i32 %61, -32
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %60) #7
  br label %197

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %55, i32 0, i32 4
  store i32 %60, ptr %65, align 4
  %66 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %55, i32 0, i32 2
  %67 = shl i32 %47, 5
  %68 = or i32 %67, 4
  %69 = getelementptr i8, ptr %12, i32 %68
  %70 = or i32 %67, 8
  %71 = getelementptr i8, ptr %12, i32 %70
  %72 = call i32 @bgpio_init(ptr noundef %66, ptr noundef %3, i32 noundef 4, ptr noundef %69, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %71, i32 noundef 0) #6
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %64
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #7
  br label %197

75:                                               ; preds = %64
  %76 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %55, i32 0, i32 2, i32 4
  store ptr null, ptr %76, align 4
  %77 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %3, i32 noundef 3264, ptr noundef nonnull @.str.5, ptr noundef %5) #6
  store ptr %77, ptr %66, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %197, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr @brcmstb_gpio_probe.gpio_base, align 4
  %81 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %55, i32 0, i32 2, i32 19
  store i32 %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %55, i32 0, i32 2, i32 40
  store i32 2, ptr %82, align 4
  %83 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %55, i32 0, i32 2, i32 41
  store ptr @brcmstb_gpio_of_xlate, ptr %83, align 4
  %84 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %55, i32 0, i32 2, i32 20
  store i16 32, ptr %84, align 4
  %85 = load i32, ptr %59, align 4
  %86 = trunc i32 %85 to i16
  %87 = shl i16 %86, 5
  %88 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %55, i32 0, i32 2, i32 21
  store i16 %87, ptr %88, align 2
  %89 = load i32, ptr %44, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %55, i32 0, i32 2, i32 15
  store ptr @brcmstb_gpio_to_irq, ptr %92, align 4
  br label %93

93:                                               ; preds = %91, %79
  %94 = load ptr, ptr %58, align 4
  %95 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %55, i32 0, i32 2, i32 24
  %98 = load ptr, ptr %97, align 4
  %99 = shl i32 %85, 5
  %100 = or i32 %99, 28
  %101 = getelementptr i8, ptr %96, i32 %100
  %102 = call i32 %98(ptr noundef %101) #6
  %103 = load ptr, ptr %97, align 4
  %104 = load i32, ptr %59, align 4
  %105 = shl i32 %104, 5
  %106 = or i32 %105, 20
  %107 = getelementptr i8, ptr %96, i32 %106
  %108 = call i32 %103(ptr noundef %107) #6
  %109 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %55, i32 0, i32 2, i32 25
  %110 = load ptr, ptr %109, align 4
  %111 = load i32, ptr %59, align 4
  %112 = shl i32 %111, 5
  %113 = or i32 %112, 20
  %114 = getelementptr i8, ptr %12, i32 %113
  call void %110(ptr noundef %114, i32 noundef 0) #6
  %115 = call i32 @gpiochip_add_data_with_key(ptr noundef %66, ptr noundef nonnull %55, ptr noundef null, ptr noundef null) #6
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %93
  %118 = load i32, ptr %59, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %118) #7
  br label %197

119:                                              ; preds = %93
  %120 = and i32 %108, %102
  %121 = icmp ne i32 %120, 0
  %122 = or i1 %46, %121
  %123 = load i16, ptr %84, align 4
  %124 = zext i16 %123 to i32
  %125 = load i32, ptr @brcmstb_gpio_probe.gpio_base, align 4
  %126 = add i32 %125, %124
  store i32 %126, ptr @brcmstb_gpio_probe.gpio_base, align 4
  %127 = load ptr, ptr %6, align 4
  %128 = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  store ptr %55, ptr %128, align 4
  store ptr %127, ptr %55, align 4
  %129 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %6, ptr %129, align 4
  store volatile ptr %55, ptr %6, align 4
  br label %130

130:                                              ; preds = %119, %51
  %131 = phi i1 [ %46, %51 ], [ %122, %119 ]
  %132 = add i32 %47, 1
  %133 = call ptr @of_prop_next_u32(ptr noundef %40, ptr noundef nonnull %48, ptr noundef nonnull %2) #6
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %45

135:                                              ; preds = %130, %39
  %136 = phi i1 [ false, %39 ], [ %131, %130 ]
  %137 = load i32, ptr @brcmstb_gpio_probe.gpio_base, align 4
  %138 = load i32, ptr %18, align 4
  %139 = sub i32 %137, %138
  %140 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 7
  store i32 %139, ptr %140, align 4
  %141 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 5
  %142 = load i32, ptr %141, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %190

144:                                              ; preds = %135
  %145 = load ptr, ptr %4, align 8
  %146 = icmp eq ptr %145, null
  %147 = getelementptr inbounds %struct.device_node, ptr %145, i32 0, i32 3
  %148 = select i1 %146, ptr null, ptr %147
  %149 = call ptr @__irq_domain_add(ptr noundef %148, i32 noundef %139, i32 noundef %139, i32 noundef 0, ptr noundef nonnull @brcmstb_gpio_irq_domain_ops, ptr noundef %6) #6
  %150 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 3
  store ptr %149, ptr %150, align 4
  %151 = icmp eq ptr %149, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #7
  br label %197

153:                                              ; preds = %144
  %154 = call ptr @of_find_property(ptr noundef %145, ptr noundef nonnull @.str.11, ptr noundef null) #6
  %155 = icmp eq ptr %154, null
  br i1 %155, label %168, label %156

156:                                              ; preds = %153
  %157 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #6
  %158 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 8
  store i32 %157, ptr %158, align 4
  %159 = icmp slt i32 %157, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  store i32 0, ptr %158, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.12) #7
  br label %168

161:                                              ; preds = %156
  call void @device_set_wakeup_capable(ptr noundef %3, i1 noundef zeroext true) #6
  %162 = call i32 @device_wakeup_enable(ptr noundef %3) #6
  %163 = load i32, ptr %158, align 4
  %164 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %163, ptr noundef nonnull @brcmstb_gpio_wake_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.13, ptr noundef %6) #6
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14) #7
  %167 = load ptr, ptr %150, align 4
  call void @irq_domain_remove(ptr noundef %167) #6
  br label %197

168:                                              ; preds = %161, %160, %153
  %169 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = load ptr, ptr %3, align 4
  br label %174

174:                                              ; preds = %172, %168
  %175 = phi ptr [ %173, %172 ], [ %170, %168 ]
  %176 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 4, i32 1
  store ptr %175, ptr %176, align 4
  %177 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 4, i32 5
  store ptr @brcmstb_gpio_irq_mask, ptr %177, align 4
  %178 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 4, i32 7
  store ptr @brcmstb_gpio_irq_mask, ptr %178, align 4
  %179 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 4, i32 9
  store ptr @brcmstb_gpio_irq_unmask, ptr %179, align 4
  %180 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 4, i32 6
  store ptr @brcmstb_gpio_irq_ack, ptr %180, align 4
  %181 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 4, i32 13
  store ptr @brcmstb_gpio_irq_set_type, ptr %181, align 4
  %182 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 8
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %174
  %186 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 4, i32 14
  store ptr @brcmstb_gpio_irq_set_wake, ptr %186, align 4
  br label %187

187:                                              ; preds = %185, %174
  %188 = load i32, ptr %141, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %188, ptr noundef nonnull @brcmstb_gpio_irq_handler, ptr noundef %6) #6
  %189 = load i32, ptr %141, align 4
  call void @irq_modify_status(i32 noundef %189, i32 noundef 0, i32 noundef 524288) #6
  br label %190

190:                                              ; preds = %187, %135
  %191 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 8
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  %194 = xor i1 %136, true
  %195 = select i1 %193, i1 true, i1 %194
  br i1 %195, label %200, label %196

196:                                              ; preds = %190
  call void @pm_wakeup_dev_event(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #6
  br label %200

197:                                              ; preds = %166, %152, %117, %75, %74, %63, %54
  %198 = phi i32 [ %115, %117 ], [ %72, %74 ], [ -22, %63 ], [ -6, %152 ], [ %164, %166 ], [ -12, %54 ], [ -12, %75 ]
  %199 = call i32 @brcmstb_gpio_remove(ptr noundef %0)
  br label %200

200:                                              ; preds = %197, %196, %190, %38, %23, %14, %1
  %201 = phi i32 [ %15, %14 ], [ %198, %197 ], [ -12, %1 ], [ -2, %23 ], [ -22, %38 ], [ 0, %190 ], [ 0, %196 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %201
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_gpio_remove(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.brcmstb_gpio_remove) #7
  br label %42

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %4, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @irq_set_chained_handler_and_data(i32 noundef %10, ptr noundef null, ptr noundef null) #6
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %4, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %4, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %21, %17
  %22 = phi ptr [ %31, %21 ], [ %15, %17 ]
  %23 = phi i32 [ %28, %21 ], [ 0, %17 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %24 = call ptr @__irq_resolve_mapping(ptr noundef %22, i32 noundef %23, ptr noundef nonnull %2) #6
  %25 = icmp eq ptr %24, null
  %26 = load i32, ptr %2, align 4
  %27 = select i1 %25, i32 0, i32 %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  call void @irq_dispose_mapping(i32 noundef %27) #6
  %28 = add nuw nsw i32 %23, 1
  %29 = load i32, ptr %18, align 4
  %30 = icmp slt i32 %28, %29
  %31 = load ptr, ptr %14, align 4
  br i1 %30, label %21, label %32

32:                                               ; preds = %21, %17
  %33 = phi ptr [ %15, %17 ], [ %31, %21 ]
  call void @irq_domain_remove(ptr noundef %33) #6
  br label %34

34:                                               ; preds = %32, %13
  %35 = load ptr, ptr %4, align 4
  %36 = icmp eq ptr %35, %4
  br i1 %36, label %42, label %37

37:                                               ; preds = %37, %34
  %38 = phi ptr [ %40, %37 ], [ %35, %34 ]
  %39 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %38, i32 0, i32 2
  call void @gpiochip_remove(ptr noundef %39) #6
  %40 = load ptr, ptr %38, align 4
  %41 = icmp eq ptr %40, %4
  br i1 %41, label %42, label %37

42:                                               ; preds = %37, %34, %6
  %43 = phi i32 [ -14, %6 ], [ 0, %34 ], [ 0, %37 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmstb_gpio_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @disable_irq(i32 noundef %5) #6
  br label %8

8:                                                ; preds = %7, %1
  %9 = load ptr, ptr %3, align 4
  %10 = icmp eq ptr %9, %3
  br i1 %10, label %33, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %3, i32 0, i32 1
  %13 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %3, i32 0, i32 8
  br label %14

14:                                               ; preds = %21, %11
  %15 = phi ptr [ %9, %11 ], [ %31, %21 ]
  %16 = load i32, ptr %13, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %15, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi i32 [ %20, %18 ], [ 0, %14 ]
  %23 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %15, i32 0, i32 2, i32 25
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %12, align 4
  %26 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %15, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = shl i32 %27, 5
  %29 = or i32 %28, 20
  %30 = getelementptr i8, ptr %25, i32 %29
  tail call void %24(ptr noundef %30, i32 noundef %22) #6
  %31 = load ptr, ptr %15, align 4
  %32 = icmp eq ptr %31, %3
  br i1 %32, label %33, label %14

33:                                               ; preds = %21, %8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_gpio_of_xlate(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 40
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 425, i32 noundef 9, ptr noundef null) #6
  br label %47

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %17, !prof !9

16:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 429, i32 noundef 9, ptr noundef null) #6
  br label %47

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %23, %21
  %25 = add i32 %24, %19
  %26 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %7, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp ult i32 %25, %32
  br i1 %33, label %42, label %34, !prof !10

34:                                               ; preds = %30
  %35 = tail call i32 @___ratelimit(ptr noundef nonnull @brcmstb_gpio_of_xlate._rs, ptr noundef nonnull @__func__.brcmstb_gpio_of_xlate) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.9, i32 noundef %41) #7
  br label %42

42:                                               ; preds = %37, %34, %30
  %43 = icmp eq ptr %2, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  %45 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 1
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr %2, align 4
  br label %47

47:                                               ; preds = %44, %42, %17, %16, %11
  %48 = phi i32 [ -22, %11 ], [ -22, %16 ], [ -22, %17 ], [ %25, %44 ], [ %25, %42 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_gpio_to_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %5, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  %11 = add i32 %10, %1
  %12 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %5, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %5, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @irq_create_mapping_affinity(ptr noundef %17, i32 noundef %11, ptr noundef null) #6
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i32 [ %18, %15 ], [ -6, %2 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @brcmstb_gpio_wake_irq_handler(i32 noundef %0, ptr noundef readonly %1) #5 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %1, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, %0
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i32 [ 0, %2 ], [ %8, %4 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmstb_gpio_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %4, i32 0, i32 2, i32 19
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %8, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %6, %10
  %14 = add i32 %13, %12
  %15 = shl nuw i32 1, %14
  %16 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %4, i32 0, i32 2, i32 34
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #6
  %18 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %4, i32 0, i32 2, i32 24
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %8, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %4, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 %23, 5
  %25 = or i32 %24, 20
  %26 = getelementptr i8, ptr %21, i32 %25
  %27 = tail call i32 %19(ptr noundef %26) #6
  %28 = xor i32 %15, -1
  %29 = and i32 %27, %28
  %30 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %4, i32 0, i32 2, i32 25
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %20, align 4
  %33 = load i32, ptr %22, align 4
  %34 = shl i32 %33, 5
  %35 = or i32 %34, 20
  %36 = getelementptr i8, ptr %32, i32 %35
  tail call void %31(ptr noundef %36, i32 noundef %29) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmstb_gpio_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %4, i32 0, i32 2, i32 19
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %8, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %6, %10
  %14 = add i32 %13, %12
  %15 = shl nuw i32 1, %14
  %16 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %4, i32 0, i32 2, i32 34
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #6
  %18 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %4, i32 0, i32 2, i32 24
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %8, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %4, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 %23, 5
  %25 = or i32 %24, 20
  %26 = getelementptr i8, ptr %21, i32 %25
  %27 = tail call i32 %19(ptr noundef %26) #6
  %28 = or i32 %27, %15
  %29 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %4, i32 0, i32 2, i32 25
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %20, align 4
  %32 = load i32, ptr %22, align 4
  %33 = shl i32 %32, 5
  %34 = or i32 %33, 20
  %35 = getelementptr i8, ptr %31, i32 %34
  tail call void %30(ptr noundef %35, i32 noundef %28) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmstb_gpio_irq_ack(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %4, i32 0, i32 2, i32 19
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %8, %10
  %14 = add i32 %13, %12
  %15 = shl nuw i32 1, %14
  %16 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 25
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %6, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %4, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %21, 5
  %23 = or i32 %22, 28
  %24 = getelementptr i8, ptr %19, i32 %23
  tail call void %17(ptr noundef %24, i32 noundef %15) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_gpio_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #6
  %6 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %5, i32 0, i32 2, i32 19
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %7, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %9, %11
  %15 = add i32 %14, %13
  %16 = shl nuw i32 1, %15
  switch i32 %1, label %77 [
    i32 8, label %21
    i32 4, label %17
    i32 2, label %18
    i32 1, label %19
    i32 3, label %20
  ]

17:                                               ; preds = %2
  br label %21

18:                                               ; preds = %2
  br label %21

19:                                               ; preds = %2
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %19, %18, %17, %2
  %22 = phi i32 [ %16, %20 ], [ 0, %19 ], [ 0, %18 ], [ 0, %17 ], [ 0, %2 ]
  %23 = phi i32 [ 0, %20 ], [ %16, %19 ], [ 0, %18 ], [ %16, %17 ], [ 0, %2 ]
  %24 = phi i32 [ 0, %20 ], [ 0, %19 ], [ 0, %18 ], [ %16, %17 ], [ %16, %2 ]
  %25 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %5, i32 0, i32 2, i32 34
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #6
  %27 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %5, i32 0, i32 2, i32 24
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %7, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %5, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = shl i32 %32, 5
  %34 = or i32 %33, 12
  %35 = getelementptr i8, ptr %30, i32 %34
  %36 = tail call i32 %28(ptr noundef %35) #6
  %37 = xor i32 %16, -1
  %38 = and i32 %36, %37
  %39 = load ptr, ptr %27, align 4
  %40 = load ptr, ptr %29, align 4
  %41 = load i32, ptr %31, align 4
  %42 = shl i32 %41, 5
  %43 = or i32 %42, 16
  %44 = getelementptr i8, ptr %40, i32 %43
  %45 = tail call i32 %39(ptr noundef %44) #6
  %46 = and i32 %45, %37
  %47 = load ptr, ptr %27, align 4
  %48 = load ptr, ptr %29, align 4
  %49 = load i32, ptr %31, align 4
  %50 = shl i32 %49, 5
  %51 = or i32 %50, 24
  %52 = getelementptr i8, ptr %48, i32 %51
  %53 = tail call i32 %47(ptr noundef %52) #6
  %54 = and i32 %53, %37
  %55 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %5, i32 0, i32 2, i32 25
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %29, align 4
  %58 = load i32, ptr %31, align 4
  %59 = shl i32 %58, 5
  %60 = or i32 %59, 12
  %61 = getelementptr i8, ptr %57, i32 %60
  %62 = or i32 %38, %23
  tail call void %56(ptr noundef %61, i32 noundef %62) #6
  %63 = load ptr, ptr %55, align 4
  %64 = load ptr, ptr %29, align 4
  %65 = load i32, ptr %31, align 4
  %66 = shl i32 %65, 5
  %67 = or i32 %66, 16
  %68 = getelementptr i8, ptr %64, i32 %67
  %69 = or i32 %46, %22
  tail call void %63(ptr noundef %68, i32 noundef %69) #6
  %70 = load ptr, ptr %55, align 4
  %71 = load ptr, ptr %29, align 4
  %72 = load i32, ptr %31, align 4
  %73 = shl i32 %72, 5
  %74 = or i32 %73, 24
  %75 = getelementptr i8, ptr %71, i32 %74
  %76 = or i32 %54, %24
  tail call void %70(ptr noundef %75, i32 noundef %76) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #6
  br label %77

77:                                               ; preds = %21, %2
  %78 = phi i32 [ 0, %21 ], [ -22, %2 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_gpio_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #6
  %6 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %5, i32 0, i32 2, i32 19
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %7, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %9, %11
  %15 = add i32 %14, %13
  %16 = shl nuw i32 1, %15
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %5, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, %16
  store i32 %21, ptr %19, align 4
  br label %27

22:                                               ; preds = %2
  %23 = xor i32 %16, -1
  %24 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %5, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %23
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %7, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = xor i1 %17, true
  %31 = zext i1 %30 to i32
  %32 = tail call i32 @irq_set_irq_wake(i32 noundef %29, i32 noundef %31) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %7, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  %38 = select i1 %17, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.15, ptr noundef nonnull %38) #7
  br label %39

39:                                               ; preds = %34, %27
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmstb_gpio_irq_handler(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %4, null
  %8 = icmp eq ptr %6, null
  %9 = select i1 %7, i1 true, i1 %8, !prof !9
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpio/gpio-brcmstb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 300, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %17(ptr noundef %20) #6
  br label %29

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %23(ptr noundef %24) #6
  %25 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  tail call void %26(ptr noundef %24) #6
  br label %29

29:                                               ; preds = %28, %21, %19, %11
  %30 = load ptr, ptr %4, align 4
  %31 = icmp eq ptr %30, %4
  br i1 %31, label %88, label %32

32:                                               ; preds = %85, %29
  %33 = phi ptr [ %86, %85 ], [ %30, %29 ]
  %34 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %33, i32 0, i32 2, i32 19
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %35, i32 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = sub i32 %39, %41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %43 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %33, i32 0, i32 2, i32 34
  %44 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %33, i32 0, i32 2, i32 24
  %45 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %33, i32 0, i32 1
  %46 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %33, i32 0, i32 4
  %47 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %35, i32 0, i32 2
  br label %48

48:                                               ; preds = %70, %32
  %49 = call i32 @_raw_spin_lock_irqsave(ptr noundef %43) #6
  %50 = load ptr, ptr %34, align 4
  %51 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %44, align 4
  %54 = load i32, ptr %45, align 4
  %55 = shl i32 %54, 5
  %56 = or i32 %55, 28
  %57 = getelementptr i8, ptr %52, i32 %56
  %58 = call i32 %53(ptr noundef %57) #6
  %59 = load ptr, ptr %44, align 4
  %60 = load i32, ptr %45, align 4
  %61 = shl i32 %60, 5
  %62 = or i32 %61, 20
  %63 = getelementptr i8, ptr %52, i32 %62
  %64 = call i32 %59(ptr noundef %63) #6
  %65 = and i32 %64, %58
  call void @_raw_spin_unlock_irqrestore(ptr noundef %43, i32 noundef %49) #6
  store i32 %65, ptr %2, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %48
  %68 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #6
  %69 = icmp ult i32 %68, 32
  br i1 %69, label %71, label %70

70:                                               ; preds = %79, %67
  br label %48

71:                                               ; preds = %79, %67
  %72 = phi i32 [ %83, %79 ], [ %68, %67 ]
  %73 = load i32, ptr %46, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %47, align 4
  %77 = getelementptr inbounds %struct.platform_device, ptr %76, i32 0, i32 3
  %78 = load i32, ptr %45, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %77, ptr noundef nonnull @.str.18, i32 noundef %78, i32 noundef %72) #7
  br label %79

79:                                               ; preds = %75, %71
  %80 = add i32 %42, %72
  %81 = call i32 @generic_handle_domain_irq(ptr noundef %37, i32 noundef %80) #6
  %82 = add nuw nsw i32 %72, 1
  %83 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %82) #6
  %84 = icmp ult i32 %83, 32
  br i1 %84, label %71, label %70

85:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %86 = load ptr, ptr %33, align 4
  %87 = icmp eq ptr %86, %4
  br i1 %87, label %88, label %32

88:                                               ; preds = %85, %29
  %89 = load ptr, ptr %12, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 9
  %93 = load ptr, ptr %92, align 4
  br label %94

94:                                               ; preds = %91, %88
  %95 = phi ptr [ %93, %91 ], [ %89, %88 ]
  %96 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %95(ptr noundef %96) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_gpio_irq_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %12, %3
  %7 = phi i32 [ 0, %3 ], [ %16, %12 ]
  %8 = phi ptr [ %5, %3 ], [ %10, %12 ]
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %5
  br i1 %11, label %26, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %10, i32 0, i32 2, i32 20
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = add i32 %7, %15
  %17 = icmp ugt i32 %16, %2
  br i1 %17, label %18, label %6

18:                                               ; preds = %12
  %19 = icmp eq ptr %10, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %10, i32 0, i32 2
  %22 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %21) #6
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %5, i32 0, i32 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef %25, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 1024) #6
  br label %26

26:                                               ; preds = %24, %20, %18, %6
  %27 = phi i32 [ 0, %24 ], [ -22, %18 ], [ %22, %20 ], [ -22, %6 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmstb_gpio_irq_unmap(ptr nocapture noundef readnone %0, i32 noundef %1) #2 {
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #6
  %3 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef null) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmstb_gpio_quiesce(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @disable_irq(i32 noundef %6) #6
  br label %9

9:                                                ; preds = %8, %2
  %10 = load ptr, ptr %4, align 4
  %11 = icmp eq ptr %10, %4
  br i1 %11, label %93, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %4, i32 0, i32 1
  %14 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %4, i32 0, i32 8
  br label %15

15:                                               ; preds = %81, %12
  %16 = phi ptr [ %10, %12 ], [ %91, %81 ]
  br i1 %1, label %17, label %75

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %16, i32 0, i32 2, i32 24
  %19 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %18, align 4
  %21 = load ptr, ptr %13, align 4
  %22 = load i32, ptr %19, align 4
  %23 = shl i32 %22, 5
  %24 = getelementptr i8, ptr %21, i32 %23
  %25 = tail call i32 %20(ptr noundef %24) #6
  %26 = getelementptr %struct.brcmstb_gpio_bank, ptr %16, i32 0, i32 6, i32 0
  store i32 %25, ptr %26, align 4
  %27 = load ptr, ptr %18, align 4
  %28 = load ptr, ptr %13, align 4
  %29 = load i32, ptr %19, align 4
  %30 = shl i32 %29, 5
  %31 = or i32 %30, 4
  %32 = getelementptr i8, ptr %28, i32 %31
  %33 = tail call i32 %27(ptr noundef %32) #6
  %34 = getelementptr %struct.brcmstb_gpio_bank, ptr %16, i32 0, i32 6, i32 1
  store i32 %33, ptr %34, align 4
  %35 = load ptr, ptr %18, align 4
  %36 = load ptr, ptr %13, align 4
  %37 = load i32, ptr %19, align 4
  %38 = shl i32 %37, 5
  %39 = or i32 %38, 8
  %40 = getelementptr i8, ptr %36, i32 %39
  %41 = tail call i32 %35(ptr noundef %40) #6
  %42 = getelementptr %struct.brcmstb_gpio_bank, ptr %16, i32 0, i32 6, i32 2
  store i32 %41, ptr %42, align 4
  %43 = load ptr, ptr %18, align 4
  %44 = load ptr, ptr %13, align 4
  %45 = load i32, ptr %19, align 4
  %46 = shl i32 %45, 5
  %47 = or i32 %46, 12
  %48 = getelementptr i8, ptr %44, i32 %47
  %49 = tail call i32 %43(ptr noundef %48) #6
  %50 = getelementptr %struct.brcmstb_gpio_bank, ptr %16, i32 0, i32 6, i32 3
  store i32 %49, ptr %50, align 4
  %51 = load ptr, ptr %18, align 4
  %52 = load ptr, ptr %13, align 4
  %53 = load i32, ptr %19, align 4
  %54 = shl i32 %53, 5
  %55 = or i32 %54, 16
  %56 = getelementptr i8, ptr %52, i32 %55
  %57 = tail call i32 %51(ptr noundef %56) #6
  %58 = getelementptr %struct.brcmstb_gpio_bank, ptr %16, i32 0, i32 6, i32 4
  store i32 %57, ptr %58, align 4
  %59 = load ptr, ptr %18, align 4
  %60 = load ptr, ptr %13, align 4
  %61 = load i32, ptr %19, align 4
  %62 = shl i32 %61, 5
  %63 = or i32 %62, 20
  %64 = getelementptr i8, ptr %60, i32 %63
  %65 = tail call i32 %59(ptr noundef %64) #6
  %66 = getelementptr %struct.brcmstb_gpio_bank, ptr %16, i32 0, i32 6, i32 5
  store i32 %65, ptr %66, align 4
  %67 = load ptr, ptr %18, align 4
  %68 = load ptr, ptr %13, align 4
  %69 = load i32, ptr %19, align 4
  %70 = shl i32 %69, 5
  %71 = or i32 %70, 24
  %72 = getelementptr i8, ptr %68, i32 %71
  %73 = tail call i32 %67(ptr noundef %72) #6
  %74 = getelementptr %struct.brcmstb_gpio_bank, ptr %16, i32 0, i32 6, i32 6
  store i32 %73, ptr %74, align 4
  br label %75

75:                                               ; preds = %17, %15
  %76 = load i32, ptr %14, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %16, i32 0, i32 5
  %80 = load i32, ptr %79, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi i32 [ %80, %78 ], [ 0, %75 ]
  %83 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %16, i32 0, i32 2, i32 25
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %13, align 4
  %86 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %16, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = shl i32 %87, 5
  %89 = or i32 %88, 20
  %90 = getelementptr i8, ptr %85, i32 %89
  tail call void %84(ptr noundef %90, i32 noundef %82) #6
  %91 = load ptr, ptr %16, align 4
  %92 = icmp eq ptr %91, %4
  br i1 %92, label %93, label %15

93:                                               ; preds = %81, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_gpio_suspend(ptr nocapture noundef readonly %0) #2 {
  tail call fastcc void @brcmstb_gpio_quiesce(ptr noundef %0, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_gpio_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %97, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %3, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %4, %6 ], [ %88, %8 ]
  %10 = phi i1 [ false, %6 ], [ %31, %8 ]
  %11 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %9, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %9, i32 0, i32 2, i32 24
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %9, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 5
  %20 = or i32 %19, 28
  %21 = getelementptr i8, ptr %14, i32 %20
  %22 = tail call i32 %16(ptr noundef %21) #6
  %23 = load ptr, ptr %15, align 4
  %24 = load i32, ptr %17, align 4
  %25 = shl i32 %24, 5
  %26 = or i32 %25, 20
  %27 = getelementptr i8, ptr %14, i32 %26
  %28 = tail call i32 %23(ptr noundef %27) #6
  %29 = and i32 %28, %22
  %30 = icmp ne i32 %29, 0
  %31 = or i1 %10, %30
  %32 = getelementptr inbounds %struct.brcmstb_gpio_bank, ptr %9, i32 0, i32 2, i32 25
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %7, align 4
  %35 = load i32, ptr %17, align 4
  %36 = shl i32 %35, 5
  %37 = getelementptr i8, ptr %34, i32 %36
  %38 = getelementptr %struct.brcmstb_gpio_bank, ptr %9, i32 0, i32 6, i32 0
  %39 = load i32, ptr %38, align 4
  tail call void %33(ptr noundef %37, i32 noundef %39) #6
  %40 = load ptr, ptr %32, align 4
  %41 = load ptr, ptr %7, align 4
  %42 = load i32, ptr %17, align 4
  %43 = shl i32 %42, 5
  %44 = or i32 %43, 4
  %45 = getelementptr i8, ptr %41, i32 %44
  %46 = getelementptr %struct.brcmstb_gpio_bank, ptr %9, i32 0, i32 6, i32 1
  %47 = load i32, ptr %46, align 4
  tail call void %40(ptr noundef %45, i32 noundef %47) #6
  %48 = load ptr, ptr %32, align 4
  %49 = load ptr, ptr %7, align 4
  %50 = load i32, ptr %17, align 4
  %51 = shl i32 %50, 5
  %52 = or i32 %51, 8
  %53 = getelementptr i8, ptr %49, i32 %52
  %54 = getelementptr %struct.brcmstb_gpio_bank, ptr %9, i32 0, i32 6, i32 2
  %55 = load i32, ptr %54, align 4
  tail call void %48(ptr noundef %53, i32 noundef %55) #6
  %56 = load ptr, ptr %32, align 4
  %57 = load ptr, ptr %7, align 4
  %58 = load i32, ptr %17, align 4
  %59 = shl i32 %58, 5
  %60 = or i32 %59, 12
  %61 = getelementptr i8, ptr %57, i32 %60
  %62 = getelementptr %struct.brcmstb_gpio_bank, ptr %9, i32 0, i32 6, i32 3
  %63 = load i32, ptr %62, align 4
  tail call void %56(ptr noundef %61, i32 noundef %63) #6
  %64 = load ptr, ptr %32, align 4
  %65 = load ptr, ptr %7, align 4
  %66 = load i32, ptr %17, align 4
  %67 = shl i32 %66, 5
  %68 = or i32 %67, 16
  %69 = getelementptr i8, ptr %65, i32 %68
  %70 = getelementptr %struct.brcmstb_gpio_bank, ptr %9, i32 0, i32 6, i32 4
  %71 = load i32, ptr %70, align 4
  tail call void %64(ptr noundef %69, i32 noundef %71) #6
  %72 = load ptr, ptr %32, align 4
  %73 = load ptr, ptr %7, align 4
  %74 = load i32, ptr %17, align 4
  %75 = shl i32 %74, 5
  %76 = or i32 %75, 20
  %77 = getelementptr i8, ptr %73, i32 %76
  %78 = getelementptr %struct.brcmstb_gpio_bank, ptr %9, i32 0, i32 6, i32 5
  %79 = load i32, ptr %78, align 4
  tail call void %72(ptr noundef %77, i32 noundef %79) #6
  %80 = load ptr, ptr %32, align 4
  %81 = load ptr, ptr %7, align 4
  %82 = load i32, ptr %17, align 4
  %83 = shl i32 %82, 5
  %84 = or i32 %83, 24
  %85 = getelementptr i8, ptr %81, i32 %84
  %86 = getelementptr %struct.brcmstb_gpio_bank, ptr %9, i32 0, i32 6, i32 6
  %87 = load i32, ptr %86, align 4
  tail call void %80(ptr noundef %85, i32 noundef %87) #6
  %88 = load ptr, ptr %9, align 4
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %90, label %8

90:                                               ; preds = %8
  %91 = xor i1 %31, true
  %92 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %3, i32 0, i32 8
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i1 true, i1 %91
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  tail call void @pm_wakeup_dev_event(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false) #6
  br label %97

97:                                               ; preds = %96, %90, %1
  %98 = getelementptr inbounds %struct.brcmstb_gpio_priv, ptr %3, i32 0, i32 5
  %99 = load i32, ptr %98, align 4
  %100 = icmp sgt i32 %99, -1
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  tail call void @enable_irq(i32 noundef %99) #6
  br label %102

102:                                              ; preds = %101, %97
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2152499455, i64 2152499947, i64 2152499492, i64 2152499548, i64 2152499582, i64 2152499606, i64 2152499647, i64 2152499668, i64 2152499696, i64 2152499730}
