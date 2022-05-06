; ModuleID = '/llk/IR/drivers/pinctrl/spear/pinctrl-plgpio.c_pt.bc'
source_filename = "../drivers/pinctrl/spear/pinctrl-plgpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.plgpio = type { %struct.spinlock, ptr, ptr, %struct.gpio_chip, ptr, ptr, i32, %struct.plgpio_regs, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.plgpio_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_pinctrl_plgpio__206_737_plgpio_init4 = internal global ptr @plgpio_init, section ".initcall4.init", align 4
@plgpio_driver = internal global %struct.platform_driver { ptr @plgpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @plgpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @plgpio_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [13 x i8] c"spear-plgpio\00", align 1
@plgpio_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,spear-plgpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@plgpio_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @plgpio_suspend, ptr @plgpio_resume, ptr @plgpio_suspend, ptr @plgpio_resume, ptr @plgpio_suspend, ptr @plgpio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"regmap\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Retrieve regmap failed (%pe)\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Init regmap failed (%pe)\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"DT probe failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"clk_get() failed, work without it\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"clk prepare failed\0A\00", align 1
@plgpio_irqchip = internal global %struct.irq_chip { ptr null, ptr @.str.25, ptr null, ptr null, ptr @plgpio_irq_enable, ptr @plgpio_irq_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @plgpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"PLGPIO registering with IRQs\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"PLGPIO registering without IRQs\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"unable to add gpio chip\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"st,spear310\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"st-plgpio,ngpio\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"DT: Invalid ngpio field\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"st-plgpio,enb-reg\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"st-plgpio,wdata-reg\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"DT: Invalid wdata reg\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"st-plgpio,dir-reg\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"DT: Invalid dir reg\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"st-plgpio,ie-reg\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"DT: Invalid ie reg\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"st-plgpio,rdata-reg\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"DT: Invalid rdata reg\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"st-plgpio,mis-reg\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"DT: Invalid mis reg\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"st-plgpio,eit-reg\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"PLGPIO\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_plgpio__206_737_plgpio_init4], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @plgpio_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @plgpio_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @plgpio_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 360, i32 noundef 3520) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %142, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #8, !annotation !8
  %10 = call i32 @__of_parse_phandle_with_args(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #8
  %11 = icmp ne i32 %10, 0
  %12 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  %13 = icmp eq ptr %12, null
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %7
  %16 = call ptr @device_node_to_regmap(ptr noundef nonnull %12) #8
  %17 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  call void @of_node_put(ptr noundef nonnull %12) #8
  %18 = load ptr, ptr %17, align 4
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef nonnull %18) #9
  %21 = load ptr, ptr %17, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %142

23:                                               ; preds = %7
  %24 = load ptr, ptr %8, align 8
  %25 = call ptr @device_node_to_regmap(ptr noundef %24) #8
  %26 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull %25) #9
  %29 = load ptr, ptr %26, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %142

31:                                               ; preds = %23, %15
  %32 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %33 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.10) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 4
  store ptr @spear310_p2o, ptr %36, align 4
  %37 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 5
  store ptr @spear310_o2p, ptr %37, align 4
  %38 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 6
  store i32 62, ptr %38, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = call i32 @of_property_read_variable_u32_array(ptr noundef %32, ptr noundef nonnull @.str.11, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %42, label %84

42:                                               ; preds = %39
  %43 = load i32, ptr %2, align 4
  %44 = trunc i32 %43 to i16
  %45 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 3, i32 20
  store i16 %44, ptr %45, align 4
  %46 = call i32 @of_property_read_variable_u32_array(ptr noundef %32, ptr noundef nonnull @.str.13, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %47 = icmp sgt i32 %46, -1
  %48 = load i32, ptr %2, align 4
  %49 = select i1 %47, i32 %48, i32 -1
  %50 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 7
  store i32 %49, ptr %50, align 4
  %51 = call i32 @of_property_read_variable_u32_array(ptr noundef %32, ptr noundef nonnull @.str.14, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %84

53:                                               ; preds = %42
  %54 = load i32, ptr %2, align 4
  %55 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 7, i32 1
  store i32 %54, ptr %55, align 4
  %56 = call i32 @of_property_read_variable_u32_array(ptr noundef %32, ptr noundef nonnull @.str.16, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %84

58:                                               ; preds = %53
  %59 = load i32, ptr %2, align 4
  %60 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 7, i32 2
  store i32 %59, ptr %60, align 4
  %61 = call i32 @of_property_read_variable_u32_array(ptr noundef %32, ptr noundef nonnull @.str.18, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %63, label %84

63:                                               ; preds = %58
  %64 = load i32, ptr %2, align 4
  %65 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 7, i32 4
  store i32 %64, ptr %65, align 4
  %66 = call i32 @of_property_read_variable_u32_array(ptr noundef %32, ptr noundef nonnull @.str.20, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %68, label %84

68:                                               ; preds = %63
  %69 = load i32, ptr %2, align 4
  %70 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 7, i32 3
  store i32 %69, ptr %70, align 4
  %71 = call i32 @of_property_read_variable_u32_array(ptr noundef %32, ptr noundef nonnull @.str.22, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i32, ptr %2, align 4
  %75 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 7, i32 5
  store i32 %74, ptr %75, align 4
  %76 = call i32 @of_property_read_variable_u32_array(ptr noundef %32, ptr noundef nonnull @.str.24, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %77 = icmp sgt i32 %76, -1
  %78 = load i32, ptr %2, align 4
  %79 = select i1 %77, i32 %78, i32 -1
  %80 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 7, i32 6
  store i32 %79, ptr %80, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %81 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #8
  %82 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 2
  store ptr %81, ptr %82, align 4
  %83 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %86, label %87

84:                                               ; preds = %68, %63, %58, %53, %42, %39
  %85 = phi ptr [ @.str.12, %39 ], [ @.str.15, %42 ], [ @.str.17, %53 ], [ @.str.19, %58 ], [ @.str.21, %63 ], [ @.str.23, %68 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull %85) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #9
  br label %142

86:                                               ; preds = %73
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.5) #9
  br label %87

87:                                               ; preds = %86, %73
  %88 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 3
  %89 = load i16, ptr %45, align 4
  %90 = zext i16 %89 to i32
  %91 = add nuw nsw i32 %90, 31
  %92 = lshr i32 %91, 5
  %93 = mul nuw nsw i32 %92, 28
  %94 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %93, i32 noundef 3520) #8
  %95 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 8
  store ptr %94, ptr %95, align 4
  %96 = icmp eq ptr %94, null
  br i1 %96, label %142, label %97

97:                                               ; preds = %87
  %98 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %98, align 8
  store i32 0, ptr %5, align 4
  %99 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 3, i32 19
  store i32 -1, ptr %99, align 4
  %100 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 3, i32 5
  store ptr @plgpio_request, ptr %100, align 4
  %101 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 3, i32 6
  store ptr @plgpio_free, ptr %101, align 4
  %102 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 3, i32 8
  store ptr @plgpio_direction_input, ptr %102, align 4
  %103 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 3, i32 9
  store ptr @plgpio_direction_output, ptr %103, align 4
  %104 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 3, i32 10
  store ptr @plgpio_get_value, ptr %104, align 4
  %105 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 3, i32 12
  store ptr @plgpio_set_value, ptr %105, align 4
  %106 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %97
  %110 = load ptr, ptr %4, align 4
  br label %111

111:                                              ; preds = %109, %97
  %112 = phi ptr [ %110, %109 ], [ %107, %97 ]
  store ptr %112, ptr %88, align 4
  %113 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 3, i32 2
  store ptr %4, ptr %113, align 4
  %114 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 3, i32 4
  store ptr null, ptr %114, align 4
  %115 = load ptr, ptr %82, align 4
  %116 = icmp ugt ptr %115, inttoptr (i32 -4096 to ptr)
  br i1 %116, label %121, label %117

117:                                              ; preds = %111
  %118 = call i32 @clk_prepare(ptr noundef %115) #8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #9
  br label %142

121:                                              ; preds = %117, %111
  %122 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 3, i32 37
  store ptr @plgpio_irqchip, ptr %125, align 4
  %126 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 3, i32 37, i32 13
  store ptr @plgpio_irq_handler, ptr %126, align 4
  %127 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 3, i32 37, i32 15
  store i32 1, ptr %127, align 4
  %128 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 4, i32 noundef 3520) #8
  %129 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 3, i32 37, i32 16
  store ptr %128, ptr %129, align 4
  %130 = icmp eq ptr %128, null
  br i1 %130, label %142, label %131

131:                                              ; preds = %124
  store i32 %122, ptr %128, align 4
  %132 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 3, i32 37, i32 10
  store i32 0, ptr %132, align 4
  %133 = getelementptr inbounds %struct.plgpio, ptr %5, i32 0, i32 3, i32 37, i32 9
  store ptr @handle_simple_irq, ptr %133, align 4
  br label %134

134:                                              ; preds = %131, %121
  %135 = phi ptr [ @.str.7, %131 ], [ @.str.8, %121 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull %135) #9
  %136 = call i32 @gpiochip_add_data_with_key(ptr noundef %88, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #8
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #9
  %139 = load ptr, ptr %82, align 4
  %140 = icmp ugt ptr %139, inttoptr (i32 -4096 to ptr)
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  call void @clk_unprepare(ptr noundef %139) #8
  br label %142

142:                                              ; preds = %141, %138, %134, %124, %120, %87, %84, %28, %20, %1
  %143 = phi i32 [ %22, %20 ], [ -22, %84 ], [ %118, %120 ], [ %30, %28 ], [ -12, %1 ], [ -12, %87 ], [ 0, %134 ], [ %136, %141 ], [ %136, %138 ], [ -12, %124 ]
  ret i32 %143
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @plgpio_request(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %1
  %7 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %11, label %59

11:                                               ; preds = %2
  %12 = tail call i32 @pinctrl_gpio_request(i32 noundef %6) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %59

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @clk_enable(ptr noundef %16) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %59, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @plgpio_direction_input(ptr noundef %0, i32 noundef %1)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = tail call i32 %30(i32 noundef %1) #8
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %52, label %40

40:                                               ; preds = %37, %32, %28
  %41 = phi i32 [ %38, %37 ], [ %1, %32 ], [ %1, %28 ]
  %42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %43 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %22, align 4
  %46 = and i32 %41, 31
  %47 = lshr i32 %41, 3
  %48 = and i32 %47, 536870908
  %49 = add i32 %45, %48
  %50 = shl nuw i32 1, %46
  %51 = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef %49, i32 noundef %50, i32 noundef %50, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %42) #8
  br label %59

52:                                               ; preds = %37, %25
  %53 = phi i32 [ %26, %25 ], [ -22, %37 ]
  %54 = load ptr, ptr %15, align 4
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @clk_disable(ptr noundef %54) #8
  br label %57

57:                                               ; preds = %56, %52, %18
  %58 = phi i32 [ %53, %52 ], [ %53, %56 ], [ %19, %18 ]
  tail call void @pinctrl_gpio_free(i32 noundef %6) #8
  br label %59

59:                                               ; preds = %57, %40, %21, %11, %2
  %60 = phi i32 [ %58, %57 ], [ 0, %40 ], [ -22, %2 ], [ %12, %11 ], [ 0, %21 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @plgpio_free(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %1
  %7 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %11, label %45

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %39, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = tail call i32 %17(i32 noundef %1) #8
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %45, label %27

27:                                               ; preds = %24, %19, %15
  %28 = phi i32 [ %25, %24 ], [ %1, %19 ], [ %1, %15 ]
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %30 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %12, align 4
  %33 = and i32 %28, 31
  %34 = lshr i32 %28, 3
  %35 = and i32 %34, 536870908
  %36 = add i32 %32, %35
  %37 = shl nuw i32 1, %33
  %38 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef %36, i32 noundef %37, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %29) #8
  br label %39

39:                                               ; preds = %27, %11
  %40 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @clk_disable(ptr noundef %41) #8
  br label %44

44:                                               ; preds = %43, %39
  tail call void @pinctrl_gpio_free(i32 noundef %6) #8
  br label %45

45:                                               ; preds = %44, %24, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @plgpio_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = tail call i32 %5(i32 noundef %1) #8
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %28, label %15

15:                                               ; preds = %12, %7, %2
  %16 = phi i32 [ %13, %12 ], [ %1, %7 ], [ %1, %2 ]
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %18 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 7, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %16, 31
  %23 = lshr i32 %16, 3
  %24 = and i32 %23, 536870908
  %25 = add i32 %21, %24
  %26 = shl nuw i32 1, %22
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %25, i32 noundef %26, i32 noundef %26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %17) #8
  br label %28

28:                                               ; preds = %15, %12
  %29 = phi i32 [ 0, %15 ], [ -22, %12 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @plgpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %8
  %14 = tail call i32 %6(i32 noundef %1) #8
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %50, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %9, align 4
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 %1, i32 %14
  %21 = and i32 %17, 2
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 %1, i32 %14
  br label %24

24:                                               ; preds = %16, %8, %3
  %25 = phi i32 [ %1, %8 ], [ %1, %3 ], [ %20, %16 ]
  %26 = phi i32 [ %1, %8 ], [ %1, %3 ], [ %23, %16 ]
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %28 = icmp eq i32 %2, 0
  %29 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 7, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %26, 31
  %34 = lshr i32 %26, 3
  %35 = and i32 %34, 536870908
  %36 = add i32 %32, %35
  %37 = shl nuw i32 1, %33
  %38 = select i1 %28, i32 0, i32 %37
  %39 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %36, i32 noundef %37, i32 noundef %38, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %40 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 7, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %25, 31
  %45 = lshr i32 %25, 3
  %46 = and i32 %45, 536870908
  %47 = add i32 %43, %46
  %48 = shl nuw i32 1, %44
  %49 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef %47, i32 noundef %48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %27) #8
  br label %50

50:                                               ; preds = %24, %13
  %51 = phi i32 [ 0, %24 ], [ -22, %13 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @plgpio_get_value(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = tail call i32 %11(i32 noundef %1) #8
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %35, label %21

21:                                               ; preds = %18, %13, %9
  %22 = phi i32 [ %19, %18 ], [ %1, %13 ], [ %1, %9 ]
  %23 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 7, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %22, 31
  %28 = lshr i32 %22, 3
  %29 = and i32 %28, 536870908
  %30 = add i32 %29, %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %31 = call i32 @regmap_read(ptr noundef %24, i32 noundef %30, ptr noundef nonnull %3) #8
  %32 = load i32, ptr %3, align 4
  %33 = lshr i32 %32, %27
  %34 = and i32 %33, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %35

35:                                               ; preds = %21, %18, %2
  %36 = phi i32 [ %34, %21 ], [ -22, %2 ], [ -22, %18 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @plgpio_set_value(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %35

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = tail call i32 %11(i32 noundef %1) #8
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %35, label %21

21:                                               ; preds = %18, %13, %9
  %22 = phi i32 [ %19, %18 ], [ %1, %13 ], [ %1, %9 ]
  %23 = icmp eq i32 %2, 0
  %24 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 7, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %22, 31
  %29 = lshr i32 %22, 3
  %30 = and i32 %29, 536870908
  %31 = add i32 %27, %30
  %32 = shl nuw i32 1, %28
  %33 = select i1 %23, i32 0, i32 %32
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %31, i32 noundef %32, i32 noundef %33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %35

35:                                               ; preds = %21, %18, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @plgpio_irq_handler(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.plgpio, ptr %6, i32 0, i32 3, i32 20
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = add nuw nsw i32 %11, 31
  %13 = lshr i32 %12, 5
  %14 = getelementptr inbounds %struct.irq_chip, ptr %8, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.irq_chip, ptr %8, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %19(ptr noundef %22) #8
  br label %31

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.irq_chip, ptr %8, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %25(ptr noundef %26) #8
  %27 = getelementptr inbounds %struct.irq_chip, ptr %8, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  tail call void %28(ptr noundef %26) #8
  br label %31

31:                                               ; preds = %30, %23, %21, %1
  %32 = icmp eq i16 %10, 0
  br i1 %32, label %94, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.plgpio, ptr %6, i32 0, i32 1
  %35 = getelementptr inbounds %struct.plgpio, ptr %6, i32 0, i32 7, i32 5
  %36 = getelementptr inbounds %struct.plgpio, ptr %6, i32 0, i32 5
  %37 = getelementptr inbounds %struct.plgpio, ptr %6, i32 0, i32 6
  %38 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 1
  %39 = call i32 @llvm.smax.i32(i32 %13, i32 1)
  br label %40

40:                                               ; preds = %90, %33
  %41 = phi i32 [ 0, %33 ], [ %92, %90 ]
  %42 = phi i32 [ %11, %33 ], [ %91, %90 ]
  %43 = load ptr, ptr %34, align 4
  %44 = load i32, ptr %35, align 4
  %45 = shl i32 %41, 2
  %46 = add i32 %44, %45
  %47 = call i32 @regmap_read(ptr noundef %43, i32 noundef %46, ptr noundef nonnull %2) #8
  %48 = load i32, ptr %2, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %90, label %50

50:                                               ; preds = %40
  %51 = load ptr, ptr %34, align 4
  %52 = load i32, ptr %35, align 4
  %53 = add i32 %52, %45
  %54 = xor i32 %48, -1
  %55 = call i32 @regmap_write(ptr noundef %51, i32 noundef %53, i32 noundef %54) #8
  %56 = shl i32 %41, 5
  %57 = sub i32 %42, %56
  %58 = icmp slt i32 %57, 32
  br i1 %58, label %61, label %59

59:                                               ; preds = %50
  %60 = load i32, ptr %2, align 4
  br label %66

61:                                               ; preds = %50
  %62 = shl nsw i32 -1, %57
  %63 = xor i32 %62, -1
  %64 = load i32, ptr %2, align 4
  %65 = and i32 %64, %63
  store i32 %65, ptr %2, align 4
  br label %66

66:                                               ; preds = %61, %59
  %67 = phi i32 [ %60, %59 ], [ %65, %61 ]
  store i32 %67, ptr %3, align 4
  %68 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef 0) #8
  %69 = icmp slt i32 %68, 32
  br i1 %69, label %70, label %90

70:                                               ; preds = %86, %66
  %71 = phi i32 [ %88, %86 ], [ %68, %66 ]
  %72 = load ptr, ptr %36, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = load i32, ptr %37, align 4
  %76 = and i32 %75, 32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = call i32 %72(i32 noundef %71) #8
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %86, label %81

81:                                               ; preds = %78, %74, %70
  %82 = phi i32 [ %79, %78 ], [ %71, %74 ], [ %71, %70 ]
  %83 = add i32 %82, %56
  %84 = load ptr, ptr %38, align 4
  %85 = call i32 @generic_handle_domain_irq(ptr noundef %84, i32 noundef %83) #8
  br label %86

86:                                               ; preds = %81, %78
  %87 = add nsw i32 %71, 1
  %88 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef %87) #8
  %89 = icmp slt i32 %88, 32
  br i1 %89, label %70, label %90

90:                                               ; preds = %86, %66, %40
  %91 = phi i32 [ %42, %40 ], [ %57, %66 ], [ %57, %86 ]
  %92 = add nuw nsw i32 %41, 1
  %93 = icmp eq i32 %92, %39
  br i1 %93, label %94, label %40

94:                                               ; preds = %90, %31
  %95 = load ptr, ptr %14, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.irq_chip, ptr %8, i32 0, i32 9
  %99 = load ptr, ptr %98, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi ptr [ %99, %97 ], [ %95, %94 ]
  %102 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %101(ptr noundef %102) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @spear310_p2o(i32 noundef %0) #6 {
  %2 = icmp slt i32 %0, 28
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = add nsw i32 %0, 4
  br label %15

5:                                                ; preds = %1
  %6 = icmp ult i32 %0, 34
  br i1 %6, label %15, label %7

7:                                                ; preds = %5
  %8 = icmp ult i32 %0, 98
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = add nsw i32 %0, -2
  br label %15

11:                                               ; preds = %7
  %12 = icmp ult i32 %0, 102
  %13 = sub nsw i32 101, %0
  %14 = select i1 %12, i32 %13, i32 -1
  br label %15

15:                                               ; preds = %11, %9, %5, %3
  %16 = phi i32 [ %4, %3 ], [ %10, %9 ], [ -1, %5 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @spear310_o2p(i32 noundef %0) #6 {
  %2 = icmp slt i32 %0, 4
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = sub i32 101, %0
  br label %11

5:                                                ; preds = %1
  %6 = icmp ult i32 %0, 32
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = add nsw i32 %0, -4
  br label %11

9:                                                ; preds = %5
  %10 = add nuw i32 %0, 2
  br label %11

11:                                               ; preds = %9, %7, %3
  %12 = phi i32 [ %4, %3 ], [ %8, %7 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_request(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @plgpio_irq_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = tail call i32 %8(i32 noundef %6) #8
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %31, label %18

18:                                               ; preds = %15, %10, %1
  %19 = phi i32 [ %16, %15 ], [ %6, %10 ], [ %6, %1 ]
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %21 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 7, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %19, 31
  %26 = lshr i32 %19, 3
  %27 = and i32 %26, 536870908
  %28 = add i32 %24, %27
  %29 = shl nuw i32 1, %25
  %30 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %28, i32 noundef %29, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %20) #8
  br label %31

31:                                               ; preds = %18, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @plgpio_irq_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = tail call i32 %8(i32 noundef %6) #8
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %31, label %18

18:                                               ; preds = %15, %10, %1
  %19 = phi i32 [ %16, %15 ], [ %6, %10 ], [ %6, %1 ]
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %21 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 7, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %19, 31
  %26 = lshr i32 %19, 3
  %27 = and i32 %26, 536870908
  %28 = add i32 %24, %27
  %29 = shl nuw i32 1, %25
  %30 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %28, i32 noundef %29, i32 noundef %29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %20) #8
  br label %31

31:                                               ; preds = %18, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @plgpio_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.plgpio, ptr %6, i32 0, i32 3, i32 20
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.plgpio, ptr %6, i32 0, i32 7, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, -1
  %17 = select i1 %16, i32 4, i32 3
  %18 = and i32 %17, %1
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i1 true, i1 %16
  %21 = select i1 %19, i32 -22, i32 0
  br i1 %20, label %40, label %22

22:                                               ; preds = %13
  %23 = sdiv i32 %8, 32
  %24 = shl nsw i32 %23, 2
  %25 = add i32 %15, %24
  %26 = getelementptr inbounds %struct.plgpio, ptr %6, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 @regmap_read(ptr noundef %27, i32 noundef %25, ptr noundef nonnull %3) #8
  %29 = and i32 %1, 1
  %30 = icmp eq i32 %29, 0
  %31 = load ptr, ptr %26, align 4
  %32 = load i32, ptr %3, align 4
  %33 = and i32 %8, 31
  %34 = shl nuw i32 1, %33
  %35 = or i32 %32, %34
  %36 = xor i32 %34, -1
  %37 = and i32 %32, %36
  %38 = select i1 %30, i32 %37, i32 %35
  %39 = call i32 @regmap_write(ptr noundef %31, i32 noundef %25, i32 noundef %38) #8
  br label %40

40:                                               ; preds = %22, %13, %2
  %41 = phi i32 [ -22, %2 ], [ %21, %13 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @plgpio_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 3, i32 20
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %59, label %7

7:                                                ; preds = %1
  %8 = zext i16 %5 to i32
  %9 = add nuw nsw i32 %8, 31
  %10 = lshr i32 %9, 5
  %11 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 7
  %12 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 1
  %13 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 8
  %14 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 7, i32 6
  %15 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 7, i32 1
  %16 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 7, i32 2
  %17 = getelementptr inbounds %struct.plgpio, ptr %3, i32 0, i32 7, i32 4
  br label %18

18:                                               ; preds = %38, %7
  %19 = phi i32 [ 0, %7 ], [ %57, %38 ]
  %20 = shl i32 %19, 2
  %21 = load i32, ptr %11, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %12, align 4
  %25 = add i32 %21, %20
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr %struct.plgpio_regs, ptr %26, i32 %19
  %28 = tail call i32 @regmap_read(ptr noundef %24, i32 noundef %25, ptr noundef %27) #8
  br label %29

29:                                               ; preds = %23, %18
  %30 = load i32, ptr %14, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %12, align 4
  %34 = add i32 %30, %20
  %35 = load ptr, ptr %13, align 4
  %36 = getelementptr %struct.plgpio_regs, ptr %35, i32 %19, i32 6
  %37 = tail call i32 @regmap_read(ptr noundef %33, i32 noundef %34, ptr noundef %36) #8
  br label %38

38:                                               ; preds = %32, %29
  %39 = load ptr, ptr %12, align 4
  %40 = load i32, ptr %15, align 4
  %41 = add i32 %40, %20
  %42 = load ptr, ptr %13, align 4
  %43 = getelementptr %struct.plgpio_regs, ptr %42, i32 %19, i32 1
  %44 = tail call i32 @regmap_read(ptr noundef %39, i32 noundef %41, ptr noundef %43) #8
  %45 = load ptr, ptr %12, align 4
  %46 = load i32, ptr %16, align 4
  %47 = add i32 %46, %20
  %48 = load ptr, ptr %13, align 4
  %49 = getelementptr %struct.plgpio_regs, ptr %48, i32 %19, i32 2
  %50 = tail call i32 @regmap_read(ptr noundef %45, i32 noundef %47, ptr noundef %49) #8
  %51 = load ptr, ptr %12, align 4
  %52 = load i32, ptr %17, align 4
  %53 = add i32 %52, %20
  %54 = load ptr, ptr %13, align 4
  %55 = getelementptr %struct.plgpio_regs, ptr %54, i32 %19, i32 4
  %56 = tail call i32 @regmap_read(ptr noundef %51, i32 noundef %53, ptr noundef %55) #8
  %57 = add nuw nsw i32 %19, 1
  %58 = icmp eq i32 %57, %10
  br i1 %58, label %59, label %18

59:                                               ; preds = %38, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @plgpio_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 3, i32 20
  %6 = load i16, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %136, label %8

8:                                                ; preds = %1
  %9 = zext i16 %6 to i32
  %10 = add nuw nsw i32 %9, 31
  %11 = lshr i32 %10, 5
  %12 = add nsw i32 %11, -1
  %13 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 7
  %14 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 1
  %15 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 8
  %16 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 7, i32 6
  %17 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 7, i32 1
  %18 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 7, i32 2
  %19 = getelementptr inbounds %struct.plgpio, ptr %4, i32 0, i32 7, i32 4
  %20 = mul nsw i32 %12, -32
  br label %21

21:                                               ; preds = %133, %8
  %22 = phi i32 [ 0, %8 ], [ %134, %133 ]
  %23 = shl i32 %22, 2
  %24 = icmp eq i32 %22, %12
  br i1 %24, label %25, label %92

25:                                               ; preds = %21
  %26 = load i16, ptr %5, align 4
  %27 = zext i16 %26 to i32
  %28 = add nsw i32 %20, %27
  %29 = shl nsw i32 -1, %28
  %30 = xor i32 %29, -1
  %31 = load i32, ptr %13, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %44, label %33

33:                                               ; preds = %25
  %34 = load ptr, ptr %14, align 4
  %35 = add i32 %31, %23
  %36 = call i32 @regmap_read(ptr noundef %34, i32 noundef %35, ptr noundef nonnull %2) #8
  %37 = load i32, ptr %2, align 4
  %38 = and i32 %37, %29
  store i32 %38, ptr %2, align 4
  %39 = load ptr, ptr %15, align 4
  %40 = getelementptr %struct.plgpio_regs, ptr %39, i32 %12
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, %30
  %43 = or i32 %42, %38
  store i32 %43, ptr %40, align 4
  br label %44

44:                                               ; preds = %33, %25
  %45 = load i32, ptr %16, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %58, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %14, align 4
  %49 = add i32 %45, %23
  %50 = call i32 @regmap_read(ptr noundef %48, i32 noundef %49, ptr noundef nonnull %2) #8
  %51 = load i32, ptr %2, align 4
  %52 = and i32 %51, %29
  store i32 %52, ptr %2, align 4
  %53 = load ptr, ptr %15, align 4
  %54 = getelementptr %struct.plgpio_regs, ptr %53, i32 %12, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, %30
  %57 = or i32 %56, %52
  store i32 %57, ptr %54, align 4
  br label %58

58:                                               ; preds = %47, %44
  %59 = load ptr, ptr %14, align 4
  %60 = load i32, ptr %17, align 4
  %61 = add i32 %60, %23
  %62 = call i32 @regmap_read(ptr noundef %59, i32 noundef %61, ptr noundef nonnull %2) #8
  %63 = load i32, ptr %2, align 4
  %64 = and i32 %63, %29
  store i32 %64, ptr %2, align 4
  %65 = load ptr, ptr %15, align 4
  %66 = getelementptr %struct.plgpio_regs, ptr %65, i32 %12, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, %30
  %69 = or i32 %68, %64
  store i32 %69, ptr %66, align 4
  %70 = load ptr, ptr %14, align 4
  %71 = load i32, ptr %18, align 4
  %72 = add i32 %71, %23
  %73 = call i32 @regmap_read(ptr noundef %70, i32 noundef %72, ptr noundef nonnull %2) #8
  %74 = load i32, ptr %2, align 4
  %75 = and i32 %74, %29
  store i32 %75, ptr %2, align 4
  %76 = load ptr, ptr %15, align 4
  %77 = getelementptr %struct.plgpio_regs, ptr %76, i32 %12, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, %30
  %80 = or i32 %79, %75
  store i32 %80, ptr %77, align 4
  %81 = load ptr, ptr %14, align 4
  %82 = load i32, ptr %19, align 4
  %83 = add i32 %82, %23
  %84 = call i32 @regmap_read(ptr noundef %81, i32 noundef %83, ptr noundef nonnull %2) #8
  %85 = load i32, ptr %2, align 4
  %86 = and i32 %85, %29
  store i32 %86, ptr %2, align 4
  %87 = load ptr, ptr %15, align 4
  %88 = getelementptr %struct.plgpio_regs, ptr %87, i32 %12, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, %30
  %91 = or i32 %90, %86
  store i32 %91, ptr %88, align 4
  br label %92

92:                                               ; preds = %58, %21
  %93 = load ptr, ptr %14, align 4
  %94 = load i32, ptr %17, align 4
  %95 = add i32 %94, %23
  %96 = load ptr, ptr %15, align 4
  %97 = getelementptr %struct.plgpio_regs, ptr %96, i32 %22, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = call i32 @regmap_write(ptr noundef %93, i32 noundef %95, i32 noundef %98) #8
  %100 = load ptr, ptr %14, align 4
  %101 = load i32, ptr %18, align 4
  %102 = add i32 %101, %23
  %103 = load ptr, ptr %15, align 4
  %104 = getelementptr %struct.plgpio_regs, ptr %103, i32 %22, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = call i32 @regmap_write(ptr noundef %100, i32 noundef %102, i32 noundef %105) #8
  %107 = load i32, ptr %16, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %116, label %109

109:                                              ; preds = %92
  %110 = load ptr, ptr %14, align 4
  %111 = add i32 %107, %23
  %112 = load ptr, ptr %15, align 4
  %113 = getelementptr %struct.plgpio_regs, ptr %112, i32 %22, i32 6
  %114 = load i32, ptr %113, align 4
  %115 = call i32 @regmap_write(ptr noundef %110, i32 noundef %111, i32 noundef %114) #8
  br label %116

116:                                              ; preds = %109, %92
  %117 = load ptr, ptr %14, align 4
  %118 = load i32, ptr %19, align 4
  %119 = add i32 %118, %23
  %120 = load ptr, ptr %15, align 4
  %121 = getelementptr %struct.plgpio_regs, ptr %120, i32 %22, i32 4
  %122 = load i32, ptr %121, align 4
  %123 = call i32 @regmap_write(ptr noundef %117, i32 noundef %119, i32 noundef %122) #8
  %124 = load i32, ptr %13, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %133, label %126

126:                                              ; preds = %116
  %127 = load ptr, ptr %14, align 4
  %128 = add i32 %124, %23
  %129 = load ptr, ptr %15, align 4
  %130 = getelementptr %struct.plgpio_regs, ptr %129, i32 %22
  %131 = load i32, ptr %130, align 4
  %132 = call i32 @regmap_write(ptr noundef %127, i32 noundef %128, i32 noundef %131) #8
  br label %133

133:                                              ; preds = %126, %116
  %134 = add nuw nsw i32 %22, 1
  %135 = icmp eq i32 %134, %11
  br i1 %135, label %136, label %21

136:                                              ; preds = %133, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
