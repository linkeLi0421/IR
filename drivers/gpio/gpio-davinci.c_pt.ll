; ModuleID = '/llk/IR/drivers/gpio/gpio-davinci.c_pt.bc'
source_filename = "../drivers/gpio/gpio-davinci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.davinci_gpio_platform_data = type { i8, i32, i32, i32 }
%struct.davinci_gpio_controller = type { %struct.gpio_chip, ptr, %struct.spinlock, [5 x ptr], i32, [32 x i32] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.davinci_gpio_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.davinci_gpio_irq_data = type { ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_gpio_davinci__206_649_davinci_gpio_drv_reg2 = internal global ptr @davinci_gpio_drv_reg, section ".initcall2.init", align 4
@davinci_gpio_driver = internal global %struct.platform_driver { ptr @davinci_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @davinci_gpio_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [13 x i8] c"davinci_gpio\00", align 1
@davinci_gpio_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @keystone_gpio_get_irq_chip }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @keystone_gpio_get_irq_chip }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm6441-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @davinci_gpio_get_irq_chip }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"No platform data found\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"How many GPIOs?\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"drivers/gpio/gpio-davinci.c\00", align 1
@gpio_base = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"IRQ not populated\0A\00", align 1
@offset_array = internal unnamed_addr constant [5 x i32] [i32 16, i32 56, i32 96, i32 136, i32 176], align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"ti,ngpio\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"ti,davinci-gpio-unbanked\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Populating pdata from DT failed: err %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Error %ld getting gpio clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Couldn't allocate IRQ numbers\0A\00", align 1
@davinci_gpio_irq_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @davinci_gpio_irq_map, ptr null, ptr @irq_domain_xlate_onetwocell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"Couldn't register an IRQ domain\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"GPIO-AINTC\00", align 1
@davinci_gpio_get_irq_chip.gpio_unbanked = internal global %struct.irq_chip_type zeroinitializer, align 4
@gpio_irqchip = internal global %struct.irq_chip { ptr null, ptr @.str.13, ptr null, ptr null, ptr @gpio_irq_enable, ptr @gpio_irq_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpio_irq_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1 }, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"GPIO\00", align 1
@keystone_gpio_get_irq_chip.gpio_unbanked = internal global %struct.irq_chip zeroinitializer, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_gpio_davinci__206_649_davinci_gpio_drv_reg2], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @davinci_gpio_drv_reg() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @davinci_gpio_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_gpio_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 16, i32 noundef 3520) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.5, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %12 = call i32 @llvm.smin.i32(i32 %11, i32 0) #8
  %13 = icmp sgt i32 %11, -1
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load i32, ptr %2, align 4
  %16 = getelementptr inbounds %struct.davinci_gpio_platform_data, ptr %8, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  %17 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.6, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %18 = call i32 @llvm.smin.i32(i32 %17, i32 0) #8
  %19 = icmp sgt i32 %17, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, ptr %2, align 4
  %22 = getelementptr inbounds %struct.davinci_gpio_platform_data, ptr %8, i32 0, i32 3
  store i32 %21, ptr %22, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %31

23:                                               ; preds = %14, %10
  %24 = phi i32 [ %12, %10 ], [ %18, %14 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %24) #9
  br label %25

25:                                               ; preds = %23, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %30

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %28 = load ptr, ptr %27, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %25
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #9
  br label %208

31:                                               ; preds = %26, %20
  %32 = phi ptr [ %8, %20 ], [ %28, %26 ]
  %33 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.davinci_gpio_platform_data, ptr %32, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #9
  br label %208

38:                                               ; preds = %31
  %39 = icmp ugt i32 %35, 2048
  br i1 %39, label %40, label %41, !prof !9

40:                                               ; preds = %38
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 217, i32 noundef 9, ptr noundef null) #8
  br label %41

41:                                               ; preds = %40, %38
  %42 = call i32 @llvm.umin.i32(i32 %35, i32 2048)
  %43 = getelementptr inbounds %struct.davinci_gpio_platform_data, ptr %32, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  %46 = add nuw nsw i32 %42, 15
  %47 = lshr i32 %46, 4
  %48 = select i1 %45, i32 %47, i32 %44
  %49 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 464, i32 noundef 3520) #8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %208, label %51

51:                                               ; preds = %41
  %52 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  store ptr %52, ptr @gpio_base, align 4
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = ptrtoint ptr %52 to i32
  br label %208

56:                                               ; preds = %59
  %57 = add nuw i32 %60, 1
  %58 = icmp eq i32 %57, %48
  br i1 %58, label %66, label %59

59:                                               ; preds = %56, %51
  %60 = phi i32 [ %57, %56 ], [ 0, %51 ]
  %61 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef %60) #8
  %62 = getelementptr %struct.davinci_gpio_controller, ptr %49, i32 0, i32 5, i32 %60
  store i32 %61, ptr %62, align 4
  %63 = icmp slt i32 %61, 0
  br i1 %63, label %64, label %56

64:                                               ; preds = %59
  %65 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %61, ptr noundef nonnull @.str.4) #8
  br label %208

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load ptr, ptr %3, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = phi ptr [ %71, %70 ], [ %68, %66 ]
  store ptr %73, ptr %49, align 4
  %74 = getelementptr inbounds %struct.gpio_chip, ptr %49, i32 0, i32 8
  store ptr @davinci_direction_in, ptr %74, align 4
  %75 = getelementptr inbounds %struct.gpio_chip, ptr %49, i32 0, i32 10
  store ptr @davinci_gpio_get, ptr %75, align 4
  %76 = getelementptr inbounds %struct.gpio_chip, ptr %49, i32 0, i32 9
  store ptr @davinci_direction_out, ptr %76, align 4
  %77 = getelementptr inbounds %struct.gpio_chip, ptr %49, i32 0, i32 12
  store ptr @davinci_gpio_set, ptr %77, align 4
  %78 = trunc i32 %42 to i16
  %79 = getelementptr inbounds %struct.gpio_chip, ptr %49, i32 0, i32 20
  store i16 %78, ptr %79, align 4
  %80 = load i8, ptr %32, align 4, !range !10
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.davinci_gpio_platform_data, ptr %32, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  br label %85

85:                                               ; preds = %82, %72
  %86 = phi i32 [ %84, %82 ], [ -1, %72 ]
  %87 = getelementptr inbounds %struct.gpio_chip, ptr %49, i32 0, i32 19
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.gpio_chip, ptr %49, i32 0, i32 40
  store i32 2, ptr %88, align 4
  %89 = getelementptr inbounds %struct.gpio_chip, ptr %49, i32 0, i32 2
  store ptr %3, ptr %89, align 4
  %90 = getelementptr inbounds %struct.gpio_chip, ptr %49, i32 0, i32 5
  store ptr @gpiochip_generic_request, ptr %90, align 4
  %91 = getelementptr inbounds %struct.gpio_chip, ptr %49, i32 0, i32 6
  store ptr @gpiochip_generic_free, ptr %91, align 4
  %92 = getelementptr inbounds %struct.davinci_gpio_controller, ptr %49, i32 0, i32 2
  store i32 0, ptr %92, align 4
  %93 = icmp eq i32 %42, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %85
  %95 = add nuw nsw i32 %42, 31
  %96 = lshr i32 %95, 5
  %97 = load ptr, ptr @gpio_base, align 4
  br label %98

98:                                               ; preds = %98, %94
  %99 = phi i32 [ 0, %94 ], [ %104, %98 ]
  %100 = getelementptr [5 x i32], ptr @offset_array, i32 0, i32 %99
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr i8, ptr %97, i32 %101
  %103 = getelementptr %struct.davinci_gpio_controller, ptr %49, i32 0, i32 3, i32 %99
  store ptr %102, ptr %103, align 4
  %104 = add nuw nsw i32 %99, 1
  %105 = icmp eq i32 %104, %96
  br i1 %105, label %106, label %98

106:                                              ; preds = %98, %85
  %107 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %3, ptr noundef nonnull %49, ptr noundef nonnull %49, ptr noundef null, ptr noundef null) #8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %208

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %49, ptr %110, align 8
  %111 = load ptr, ptr %33, align 4
  %112 = call ptr @of_match_device(ptr noundef nonnull @davinci_gpio_ids, ptr noundef %3) #8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.of_device_id, ptr %112, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  br label %117

117:                                              ; preds = %114, %109
  %118 = phi ptr [ %116, %114 ], [ @davinci_gpio_get_irq_chip, %109 ]
  %119 = getelementptr inbounds %struct.davinci_gpio_platform_data, ptr %111, i32 0, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.8) #8
  %122 = icmp ugt ptr %121, inttoptr (i32 -4096 to ptr)
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = ptrtoint ptr %121 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %124) #9
  br label %208

125:                                              ; preds = %117
  %126 = call i32 @clk_prepare(ptr noundef %121) #8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %208

128:                                              ; preds = %125
  %129 = call i32 @clk_enable(ptr noundef %121) #8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  call void @clk_unprepare(ptr noundef %121) #8
  br label %208

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.davinci_gpio_platform_data, ptr %111, i32 0, i32 3
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = call i32 @__devm_irq_alloc_descs(ptr noundef %3, i32 noundef -1, i32 noundef 0, i32 noundef %120, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #9
  call void @clk_disable(ptr noundef %121) #8
  call void @clk_unprepare(ptr noundef %121) #8
  br label %208

140:                                              ; preds = %136
  %141 = load ptr, ptr %4, align 8
  %142 = call ptr @irq_domain_add_legacy(ptr noundef %141, i32 noundef %120, i32 noundef %137, i32 noundef 0, ptr noundef nonnull @davinci_gpio_irq_ops, ptr noundef %49) #8
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11) #9
  call void @clk_disable(ptr noundef %121) #8
  call void @clk_unprepare(ptr noundef %121) #8
  br label %208

145:                                              ; preds = %140, %132
  %146 = phi ptr [ null, %132 ], [ %142, %140 ]
  %147 = getelementptr inbounds %struct.gpio_chip, ptr %49, i32 0, i32 15
  store ptr @gpio_to_irq_banked, ptr %147, align 4
  %148 = getelementptr inbounds %struct.davinci_gpio_controller, ptr %49, i32 0, i32 1
  store ptr %146, ptr %148, align 4
  %149 = load i32, ptr %133, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = icmp eq i32 %120, 0
  br i1 %152, label %204, label %182

153:                                              ; preds = %145
  store ptr @gpio_to_irq_unbanked, ptr %147, align 4
  %154 = load i32, ptr %133, align 4
  %155 = getelementptr inbounds %struct.davinci_gpio_controller, ptr %49, i32 0, i32 4
  store i32 %154, ptr %155, align 4
  %156 = load i32, ptr %133, align 4
  %157 = lshr i32 %156, 4
  %158 = sub nsw i32 31, %157
  %159 = lshr i32 -1, %158
  %160 = getelementptr inbounds %struct.davinci_gpio_controller, ptr %49, i32 0, i32 5
  %161 = load i32, ptr %160, align 4
  %162 = call ptr %118(i32 noundef %161) #8
  %163 = getelementptr inbounds %struct.irq_chip, ptr %162, i32 0, i32 1
  store ptr @.str.12, ptr %163, align 4
  %164 = getelementptr inbounds %struct.irq_chip, ptr %162, i32 0, i32 13
  store ptr @gpio_irq_type_unbanked, ptr %164, align 4
  %165 = getelementptr inbounds %struct.davinci_gpio_controller, ptr %49, i32 0, i32 3
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.davinci_gpio_regs, ptr %166, i32 0, i32 7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 -1) #8, !srcloc !11
  %168 = getelementptr inbounds %struct.davinci_gpio_regs, ptr %166, i32 0, i32 5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 -1) #8, !srcloc !11
  %169 = load i32, ptr %133, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %204, label %171

171:                                              ; preds = %171, %153
  %172 = phi i32 [ %179, %171 ], [ 0, %153 ]
  %173 = getelementptr %struct.davinci_gpio_controller, ptr %49, i32 0, i32 5, i32 %172
  %174 = load i32, ptr %173, align 4
  %175 = call i32 @irq_set_chip(i32 noundef %174, ptr noundef %162) #8
  %176 = load i32, ptr %173, align 4
  %177 = call i32 @irq_set_handler_data(i32 noundef %176, ptr noundef %49) #8
  %178 = load i32, ptr %173, align 4
  call void @irq_modify_status(i32 noundef %178, i32 noundef 0, i32 noundef 3) #8
  %179 = add nuw i32 %172, 1
  %180 = load i32, ptr %133, align 4
  %181 = icmp ult i32 %179, %180
  br i1 %181, label %171, label %204

182:                                              ; preds = %194, %151
  %183 = phi i32 [ %200, %194 ], [ 0, %151 ]
  %184 = phi i32 [ %201, %194 ], [ 0, %151 ]
  %185 = phi i32 [ %202, %194 ], [ 0, %151 ]
  %186 = lshr i32 %184, 1
  %187 = getelementptr %struct.davinci_gpio_controller, ptr %49, i32 0, i32 3, i32 %186
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.davinci_gpio_regs, ptr %188, i32 0, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 -1) #8, !srcloc !11
  %190 = getelementptr inbounds %struct.davinci_gpio_regs, ptr %188, i32 0, i32 6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 -1) #8, !srcloc !11
  %191 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3520) #8
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %194

193:                                              ; preds = %182
  call void @clk_disable(ptr noundef %121) #8
  call void @clk_unprepare(ptr noundef %121) #8
  br label %208

194:                                              ; preds = %182
  store ptr %188, ptr %191, align 4
  %195 = getelementptr inbounds %struct.davinci_gpio_irq_data, ptr %191, i32 0, i32 2
  store i32 %184, ptr %195, align 4
  %196 = getelementptr inbounds %struct.davinci_gpio_irq_data, ptr %191, i32 0, i32 1
  store ptr %49, ptr %196, align 4
  %197 = getelementptr %struct.davinci_gpio_controller, ptr %49, i32 0, i32 5, i32 %184
  %198 = load i32, ptr %197, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %198, ptr noundef nonnull @gpio_irq_handler, ptr noundef nonnull %191) #8
  %199 = shl nuw i32 1, %184
  %200 = or i32 %199, %183
  %201 = add i32 %184, 1
  %202 = add i32 %185, 16
  %203 = icmp ult i32 %202, %120
  br i1 %203, label %182, label %204

204:                                              ; preds = %194, %171, %153, %151
  %205 = phi i32 [ 0, %151 ], [ %159, %153 ], [ %200, %194 ], [ %159, %171 ]
  %206 = load ptr, ptr @gpio_base, align 4
  %207 = getelementptr i8, ptr %206, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 %205) #8, !srcloc !11
  br label %208

208:                                              ; preds = %204, %193, %144, %139, %131, %125, %123, %106, %64, %54, %41, %37, %30
  %209 = phi i32 [ -22, %37 ], [ %55, %54 ], [ %65, %64 ], [ -22, %30 ], [ -12, %41 ], [ %107, %106 ], [ %124, %123 ], [ 0, %204 ], [ -12, %193 ], [ %137, %139 ], [ -19, %144 ], [ %129, %131 ], [ %126, %125 ]
  ret i32 %209
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_direction_in(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = lshr i32 %1, 5
  %5 = and i32 %1, 31
  %6 = shl nuw i32 1, %5
  %7 = getelementptr %struct.davinci_gpio_controller, ptr %3, i32 0, i32 3, i32 %4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.davinci_gpio_controller, ptr %3, i32 0, i32 2
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !12
  %12 = or i32 %11, %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %12) #8, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = lshr i32 %1, 5
  %5 = getelementptr %struct.davinci_gpio_controller, ptr %3, i32 0, i32 3, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = and i32 %1, 31
  %8 = getelementptr inbounds %struct.davinci_gpio_regs, ptr %6, i32 0, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !12
  %10 = lshr i32 %9, %7
  %11 = and i32 %10, 1
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_direction_out(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = lshr i32 %1, 5
  %6 = and i32 %1, 31
  %7 = shl nuw i32 1, %6
  %8 = getelementptr %struct.davinci_gpio_controller, ptr %4, i32 0, i32 3, i32 %5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.davinci_gpio_controller, ptr %4, i32 0, i32 2
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !12
  %13 = xor i32 %7, -1
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %2, 0
  %16 = getelementptr inbounds %struct.davinci_gpio_regs, ptr %9, i32 0, i32 2
  %17 = getelementptr inbounds %struct.davinci_gpio_regs, ptr %9, i32 0, i32 3
  %18 = select i1 %15, ptr %17, ptr %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %7) #8, !srcloc !11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %14) #8, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @davinci_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = lshr i32 %1, 5
  %6 = getelementptr %struct.davinci_gpio_controller, ptr %4, i32 0, i32 3, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = and i32 %1, 31
  %9 = shl nuw i32 1, %8
  %10 = icmp eq i32 %2, 0
  %11 = getelementptr inbounds %struct.davinci_gpio_regs, ptr %7, i32 0, i32 2
  %12 = getelementptr inbounds %struct.davinci_gpio_regs, ptr %7, i32 0, i32 3
  %13 = select i1 %10, ptr %12, ptr %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %9) #8, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal nonnull ptr @davinci_gpio_get_irq_chip(i32 noundef %0) #2 {
  %2 = tail call ptr @irq_get_irq_data(i32 noundef %0) #8
  %3 = getelementptr inbounds %struct.irq_data, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(180) @davinci_gpio_get_irq_chip.gpio_unbanked, ptr noundef align 4 dereferenceable(180) %4, i32 180, i1 false)
  ret ptr @davinci_gpio_get_irq_chip.gpio_unbanked
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_irq_alloc_descs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_to_irq_banked(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.davinci_gpio_controller, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @irq_create_mapping_affinity(ptr noundef nonnull %5, i32 noundef %1, ptr noundef null) #8
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ -6, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_to_irq_unbanked(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.davinci_gpio_controller, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr %struct.davinci_gpio_controller, ptr %3, i32 0, i32 5, i32 %1
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %9, %7 ], [ -19, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_irq_type_unbanked(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_common_data, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.davinci_gpio_controller, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %16, %2
  %12 = phi i32 [ 0, %2 ], [ %17, %16 ]
  %13 = getelementptr %struct.davinci_gpio_controller, ptr %6, i32 0, i32 5, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %10, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = add nuw nsw i32 %12, 1
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %34, label %11

19:                                               ; preds = %11
  %20 = icmp ult i32 %1, 4
  br i1 %20, label %21, label %34

21:                                               ; preds = %19
  %22 = and i32 %12, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %1, 2
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.davinci_gpio_regs, ptr %8, i32 0, i32 7
  %27 = getelementptr inbounds %struct.davinci_gpio_regs, ptr %8, i32 0, i32 8
  %28 = select i1 %25, ptr %27, ptr %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %23) #8, !srcloc !11
  %29 = and i32 %1, 1
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.davinci_gpio_regs, ptr %8, i32 0, i32 5
  %32 = getelementptr inbounds %struct.davinci_gpio_regs, ptr %8, i32 0, i32 6
  %33 = select i1 %30, ptr %32, ptr %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %23) #8, !srcloc !11
  br label %34

34:                                               ; preds = %21, %19, %16
  %35 = phi i32 [ 0, %21 ], [ -22, %19 ], [ -22, %16 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_handler_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_irq_handler(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.davinci_gpio_irq_data, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.davinci_gpio_irq_data, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = and i32 %5, -2147483647
  %10 = icmp eq i32 %9, 1
  %11 = select i1 %10, i32 -65536, i32 65535
  %12 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.irq_chip, ptr %13, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.irq_chip, ptr %13, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %19(ptr noundef %22) #8
  br label %31

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.irq_chip, ptr %13, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %25(ptr noundef %26) #8
  %27 = getelementptr inbounds %struct.irq_chip, ptr %13, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  tail call void %28(ptr noundef %26) #8
  br label %31

31:                                               ; preds = %30, %23, %21, %1
  %32 = getelementptr inbounds %struct.davinci_gpio_regs, ptr %6, i32 0, i32 9
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !12
  %34 = and i32 %33, %11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %31
  %37 = sdiv i32 %5, 2
  %38 = shl i32 %37, 5
  %39 = getelementptr inbounds %struct.davinci_gpio_controller, ptr %8, i32 0, i32 1
  br label %44

40:                                               ; preds = %46
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !12
  %42 = and i32 %41, %11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %42, %40 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %45) #8, !srcloc !11
  br label %46

46:                                               ; preds = %46, %44
  %47 = phi i32 [ %45, %44 ], [ %51, %46 ]
  %48 = tail call i32 @llvm.cttz.i32(i32 %47, i1 true) #8, !range !13
  %49 = shl nuw i32 1, %48
  %50 = xor i32 %49, -1
  %51 = and i32 %47, %50
  %52 = or i32 %48, %38
  %53 = load ptr, ptr %39, align 4
  %54 = tail call i32 @generic_handle_domain_irq(ptr noundef %53, i32 noundef %52) #8
  %55 = icmp eq i32 %51, 0
  br i1 %55, label %40, label %46

56:                                               ; preds = %40, %31
  %57 = load ptr, ptr %12, align 8
  %58 = getelementptr inbounds %struct.irq_chip, ptr %57, i32 0, i32 10
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.irq_chip, ptr %57, i32 0, i32 9
  %63 = load ptr, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = phi ptr [ %63, %61 ], [ %59, %56 ]
  %66 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %65(ptr noundef %66) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_gpio_irq_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = lshr i32 %2, 5
  %7 = getelementptr %struct.davinci_gpio_controller, ptr %5, i32 0, i32 3, i32 %6
  %8 = load ptr, ptr %7, align 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @gpio_irqchip, ptr noundef nonnull @handle_simple_irq, ptr noundef nonnull @.str) #8
  %9 = tail call i32 @irq_set_irq_type(i32 noundef %1, i32 noundef 0) #8
  %10 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %8) #8
  %11 = and i32 %2, 31
  %12 = shl nuw i32 1, %11
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 @irq_set_handler_data(i32 noundef %1, ptr noundef nonnull %13) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onetwocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_irq_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_common_data, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = load i32, ptr %5, align 4
  %10 = and i32 %9, 3
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 3, i32 %10
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.davinci_gpio_regs, ptr %3, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %8) #8, !srcloc !11
  br label %17

17:                                               ; preds = %15, %1
  %18 = and i32 %12, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.davinci_gpio_regs, ptr %3, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %8) #8, !srcloc !11
  br label %22

22:                                               ; preds = %20, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_irq_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_common_data, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = getelementptr inbounds %struct.davinci_gpio_regs, ptr %3, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #8, !srcloc !11
  %10 = getelementptr inbounds %struct.davinci_gpio_regs, ptr %3, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @gpio_irq_type(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = icmp ult i32 %1, 4
  %4 = select i1 %3, i32 0, i32 -22
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal nonnull ptr @keystone_gpio_get_irq_chip(i32 noundef %0) #2 {
  %2 = tail call ptr @irq_get_irq_data(i32 noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.irq_data, ptr %2, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(136) @keystone_gpio_get_irq_chip.gpio_unbanked, ptr noundef align 4 dereferenceable(136) %8, i32 136, i1 false)
  ret ptr @keystone_gpio_get_irq_chip.gpio_unbanked
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!10 = !{i8 0, i8 2}
!11 = !{i64 3689829}
!12 = !{i64 3690247}
!13 = !{i32 0, i32 33}
