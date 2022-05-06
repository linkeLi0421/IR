; ModuleID = '/llk/IR/drivers/gpio/gpio-xilinx.c_pt.bc'
source_filename = "../drivers/gpio/gpio-xilinx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.xgpio_instance = type { %struct.gpio_chip, ptr, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], %struct.spinlock, i32, %struct.irq_chip, [2 x i32], [2 x i32], [2 x i32], ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_xilinx__211_733_xgpio_init4 = internal global ptr @xgpio_init, section ".initcall4.init", align 4
@xgpio_plat_driver = internal global %struct.platform_driver { ptr @xgpio_probe, ptr @xgpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xgpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgpio_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_xgpio_exit = internal global ptr @xgpio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author212 = internal constant [32 x i8] c"gpio_xilinx.author=Xilinx, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description213 = internal constant [43 x i8] c"gpio_xilinx.description=Xilinx GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file214 = internal constant [42 x i8] c"gpio_xilinx.file=drivers/gpio/gpio-xilinx\00", section ".modinfo", align 1
@__UNIQUE_ID_license215 = internal constant [24 x i8] c"gpio_xilinx.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"gpio-xilinx\00", align 1
@xgpio_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-gpio-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@xgpio_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @xgpio_suspend, ptr @xgpio_resume, ptr @xgpio_suspend, ptr @xgpio_resume, ptr @xgpio_suspend, ptr @xgpio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgpio_runtime_suspend, ptr @xgpio_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"xlnx,is-dual\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"xlnx,dout-default\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"xlnx,dout-default-2\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"xlnx,tri-default\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"xlnx,tri-default-2\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"#gpio-cells\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"#gpio-cells mismatch\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"xlnx,gpio-width\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"xlnx,gpio2-width\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"failed to ioremap memory resource\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"input clock not found.\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Failed to prepare clk\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"failed to add GPIO chip\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description213, ptr @__UNIQUE_ID_file214, ptr @__UNIQUE_ID_license215, ptr @__exitcall_xgpio_exit, ptr @__initcall__kmod_gpio_xilinx__211_733_xgpio_init4, ptr @xgpio_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @xgpio_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @xgpio_plat_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @xgpio_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @xgpio_plat_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgpio_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 8
  %5 = alloca [2 x i32], align 8
  %6 = alloca [2 x i32], align 8
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 2, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store i64 0, ptr %5, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store i64 0, ptr %6, align 8, !annotation !8
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 520, i32 noundef 3520) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %192, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %13, align 8
  %14 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %15 = call ptr @__memset32(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 8) #7
  %16 = call ptr @__memset32(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 8) #7
  %17 = call ptr @__memset32(ptr noundef nonnull %6, i32 noundef -1, i32 noundef 8) #7
  %18 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #7
  %19 = getelementptr inbounds [2 x i32], ptr %5, i32 0, i32 1
  %20 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef %19, i32 noundef 1, i32 noundef 0) #7
  %21 = getelementptr inbounds %struct.xgpio_instance, ptr %10, i32 0, i32 4
  %22 = load i64, ptr %5, align 8
  store i64 %22, ptr %21, align 4
  %23 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.4, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #7
  %24 = getelementptr inbounds [2 x i32], ptr %6, i32 0, i32 1
  %25 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.5, ptr noundef %24, i32 noundef 1, i32 noundef 0) #7
  %26 = getelementptr inbounds %struct.xgpio_instance, ptr %10, i32 0, i32 6
  %27 = load i64, ptr %6, align 8
  store i64 %27, ptr %26, align 4
  %28 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %29 = load i32, ptr %3, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %32, label %31

31:                                               ; preds = %12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.7) #8
  br label %192

32:                                               ; preds = %12
  %33 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #7
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  store i32 32, ptr %4, align 8
  br label %39

36:                                               ; preds = %32
  %37 = load i32, ptr %4, align 8
  %38 = icmp ugt i32 %37, 32
  br i1 %38, label %192, label %39

39:                                               ; preds = %36, %35
  %40 = load i32, ptr %2, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  %44 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef %43, i32 noundef 1, i32 noundef 0) #7
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 32, ptr %43, align 4
  br label %47

47:                                               ; preds = %46, %42, %39
  %48 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %49, 32
  br i1 %50, label %192, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.xgpio_instance, ptr %10, i32 0, i32 3
  %53 = load i32, ptr %4, align 8
  %54 = add i32 %53, %49
  call void @__bitmap_set(ptr noundef %52, i32 noundef 0, i32 noundef %54) #7
  %55 = load i32, ptr %4, align 8
  %56 = getelementptr inbounds %struct.xgpio_instance, ptr %10, i32 0, i32 2
  call void @__bitmap_set(ptr noundef %56, i32 noundef 0, i32 noundef %55) #7
  %57 = load i32, ptr %48, align 4
  call void @__bitmap_set(ptr noundef %56, i32 noundef 32, i32 noundef %57) #7
  %58 = getelementptr inbounds %struct.xgpio_instance, ptr %10, i32 0, i32 7
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 19
  store i32 -1, ptr %59, align 4
  %60 = call i32 @__bitmap_weight(ptr noundef %56, i32 noundef 64) #7
  %61 = trunc i32 %60 to i16
  %62 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 20
  store i16 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 2
  store ptr %7, ptr %63, align 4
  %64 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 8
  store ptr @xgpio_dir_in, ptr %64, align 4
  %65 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 9
  store ptr @xgpio_dir_out, ptr %65, align 4
  %66 = load i32, ptr %3, align 4
  %67 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 40
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 10
  store ptr @xgpio_get, ptr %68, align 4
  %69 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 12
  store ptr @xgpio_set, ptr %69, align 4
  %70 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 5
  store ptr @xgpio_request, ptr %70, align 4
  %71 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 6
  store ptr @xgpio_free, ptr %71, align 4
  %72 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 13
  store ptr @xgpio_set_multiple, ptr %72, align 4
  %73 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %51
  %77 = load ptr, ptr %7, align 4
  br label %78

78:                                               ; preds = %76, %51
  %79 = phi ptr [ %77, %76 ], [ %74, %51 ]
  store ptr %79, ptr %10, align 4
  %80 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %81 = getelementptr inbounds %struct.xgpio_instance, ptr %10, i32 0, i32 1
  store ptr %80, ptr %81, align 4
  %82 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10) #8
  %84 = load ptr, ptr %81, align 4
  %85 = ptrtoint ptr %84 to i32
  br label %192

86:                                               ; preds = %78
  %87 = call ptr @devm_clk_get_optional(ptr noundef %7, ptr noundef null) #7
  %88 = getelementptr inbounds %struct.xgpio_instance, ptr %10, i32 0, i32 13
  store ptr %87, ptr %88, align 4
  %89 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = ptrtoint ptr %87 to i32
  %92 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %7, i32 noundef %91, ptr noundef nonnull @.str.11) #7
  br label %192

93:                                               ; preds = %86
  %94 = call i32 @clk_prepare(ptr noundef %87) #7
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = call i32 @clk_enable(ptr noundef %87) #7
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %96
  call void @clk_unprepare(ptr noundef %87) #7
  br label %100

100:                                              ; preds = %99, %93
  %101 = phi i32 [ %94, %93 ], [ %97, %99 ]
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.12) #8
  br label %192

104:                                              ; preds = %100, %96
  %105 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %105) #7, !srcloc !9
  %106 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %105, ptr %105, i32 1, ptr elementtype(i32) %105) #7, !srcloc !10
  %107 = call i32 @__pm_runtime_set_status(ptr noundef %7, i32 noundef 0) #7
  call void @pm_runtime_enable(ptr noundef %7) #7
  %108 = load i16, ptr %62, align 4
  %109 = zext i16 %108 to i32
  %110 = add nsw i32 %109, -1
  %111 = call i32 @bitmap_bitremap(i32 noundef %110, ptr noundef %52, ptr noundef %56, i32 noundef 64) #7
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %113, %104
  %114 = phi i32 [ %125, %113 ], [ 0, %104 ]
  %115 = load ptr, ptr %81, align 4
  %116 = sdiv i32 %114, 32
  %117 = icmp eq i32 %114, 32
  %118 = select i1 %117, i32 8, i32 -22
  %119 = or i32 %114, 31
  %120 = icmp ult i32 %119, 63
  %121 = select i1 %120, i32 0, i32 %118
  %122 = getelementptr i8, ptr %115, i32 %121
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  call void @arm_heavy_mb() #7
  %123 = getelementptr i32, ptr %21, i32 %116
  %124 = load i32, ptr %123, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %124) #7, !srcloc !12
  %125 = add i32 %114, 32
  %126 = icmp sgt i32 %125, %111
  br i1 %126, label %127, label %113

127:                                              ; preds = %113, %104
  %128 = load i16, ptr %62, align 4
  %129 = zext i16 %128 to i32
  %130 = add nsw i32 %129, -1
  %131 = call i32 @bitmap_bitremap(i32 noundef %130, ptr noundef %52, ptr noundef %56, i32 noundef 64) #7
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %148, label %133

133:                                              ; preds = %133, %127
  %134 = phi i32 [ %146, %133 ], [ 0, %127 ]
  %135 = load ptr, ptr %81, align 4
  %136 = getelementptr i8, ptr %135, i32 4
  %137 = sdiv i32 %134, 32
  %138 = icmp eq i32 %134, 32
  %139 = select i1 %138, i32 8, i32 -22
  %140 = or i32 %134, 31
  %141 = icmp ult i32 %140, 63
  %142 = select i1 %141, i32 0, i32 %139
  %143 = getelementptr i8, ptr %136, i32 %142
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  call void @arm_heavy_mb() #7
  %144 = getelementptr i32, ptr %26, i32 %137
  %145 = load i32, ptr %144, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %145) #7, !srcloc !12
  %146 = add i32 %134, 32
  %147 = icmp sgt i32 %146, %131
  br i1 %147, label %148, label %133

148:                                              ; preds = %133, %127
  %149 = call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 0) #7
  %150 = getelementptr inbounds %struct.xgpio_instance, ptr %10, i32 0, i32 8
  store i32 %149, ptr %150, align 4
  %151 = icmp slt i32 %149, 1
  br i1 %151, label %178, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.xgpio_instance, ptr %10, i32 0, i32 9
  %154 = getelementptr inbounds %struct.xgpio_instance, ptr %10, i32 0, i32 9, i32 1
  store ptr @.str, ptr %154, align 4
  %155 = getelementptr inbounds %struct.xgpio_instance, ptr %10, i32 0, i32 9, i32 6
  store ptr @xgpio_irq_ack, ptr %155, align 4
  %156 = getelementptr inbounds %struct.xgpio_instance, ptr %10, i32 0, i32 9, i32 7
  store ptr @xgpio_irq_mask, ptr %156, align 4
  %157 = getelementptr inbounds %struct.xgpio_instance, ptr %10, i32 0, i32 9, i32 9
  store ptr @xgpio_irq_unmask, ptr %157, align 4
  %158 = getelementptr inbounds %struct.xgpio_instance, ptr %10, i32 0, i32 9, i32 13
  store ptr @xgpio_set_irq_type, ptr %158, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  call void @arm_heavy_mb() #7
  %159 = load ptr, ptr %81, align 4
  %160 = getelementptr i8, ptr %159, i32 296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 0) #7, !srcloc !12
  %161 = load ptr, ptr %81, align 4
  %162 = getelementptr i8, ptr %161, i32 288
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  call void @arm_heavy_mb() #7
  %164 = load ptr, ptr %81, align 4
  %165 = getelementptr i8, ptr %164, i32 288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %163) #7, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  call void @arm_heavy_mb() #7
  %166 = load ptr, ptr %81, align 4
  %167 = getelementptr i8, ptr %166, i32 284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 -2147483648) #7, !srcloc !12
  %168 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 37
  store ptr %153, ptr %168, align 4
  %169 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 37, i32 13
  store ptr @xgpio_irqhandler, ptr %169, align 4
  %170 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 37, i32 15
  store i32 1, ptr %170, align 4
  %171 = call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 4, i32 noundef 3520) #7
  %172 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 37, i32 16
  store ptr %171, ptr %172, align 4
  %173 = icmp eq ptr %171, null
  br i1 %173, label %184, label %174

174:                                              ; preds = %152
  %175 = load i32, ptr %150, align 4
  store i32 %175, ptr %171, align 4
  %176 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 37, i32 10
  store i32 0, ptr %176, align 4
  %177 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 37, i32 9
  store ptr @handle_bad_irq, ptr %177, align 4
  br label %178

178:                                              ; preds = %174, %148
  %179 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %7, ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef null, ptr noundef null) #7
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %178
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13) #8
  br label %184

182:                                              ; preds = %178
  %183 = call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 5) #7
  br label %192

184:                                              ; preds = %181, %152
  %185 = phi i32 [ %179, %181 ], [ -12, %152 ]
  call void @__pm_runtime_disable(ptr noundef %7, i1 noundef zeroext true) #7
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %105) #7, !srcloc !9
  %186 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %105, ptr %105, i32 0, i32 -1, ptr elementtype(i32) %105) #7, !srcloc !19
  %187 = extractvalue { i32, i32, i32 } %186, 0
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %184
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  br label %190

190:                                              ; preds = %189, %184
  %191 = load ptr, ptr %88, align 4
  call void @clk_disable(ptr noundef %191) #7
  call void @clk_unprepare(ptr noundef %191) #7
  br label %192

192:                                              ; preds = %190, %182, %103, %90, %83, %47, %36, %31, %1
  %193 = phi i32 [ -22, %31 ], [ %85, %83 ], [ %92, %90 ], [ %101, %103 ], [ %185, %190 ], [ 0, %182 ], [ -12, %1 ], [ -22, %36 ], [ -22, %47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %193
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgpio_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #7
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #7, !srcloc !9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 0, i32 -1, ptr elementtype(i32) %6) #7, !srcloc !19
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  br label %11

11:                                               ; preds = %10, %1
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #7
  %12 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 13
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgpio_dir_in(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 2
  %6 = tail call i32 @bitmap_bitremap(i32 noundef %1, ptr noundef %4, ptr noundef %5, i32 noundef 64) #7
  %7 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 7
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #7
  %9 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 6
  %10 = and i32 %6, 31
  %11 = shl nuw i32 1, %10
  %12 = lshr i32 %6, 5
  %13 = getelementptr i32, ptr %9, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 4
  %19 = sdiv i32 %6, 32
  %20 = and i32 %6, -32
  %21 = icmp eq i32 %20, 32
  %22 = select i1 %21, i32 8, i32 -22
  %23 = add i32 %6, 31
  %24 = icmp ult i32 %23, 63
  %25 = select i1 %24, i32 0, i32 %22
  %26 = getelementptr i8, ptr %18, i32 %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %27 = getelementptr i32, ptr %9, i32 %19
  %28 = load i32, ptr %27, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %28) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgpio_dir_out(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 2
  %7 = tail call i32 @bitmap_bitremap(i32 noundef %1, ptr noundef %5, ptr noundef %6, i32 noundef 64) #7
  %8 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 7
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #7
  %10 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 4
  %11 = icmp eq i32 %2, 0
  %12 = and i32 %7, 31
  %13 = shl nuw i32 1, %12
  %14 = lshr i32 %7, 5
  %15 = getelementptr i32, ptr %10, i32 %14
  br i1 %11, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, ptr %15, align 4
  %18 = or i32 %17, %13
  %19 = xor i32 %13, -1
  br label %24

20:                                               ; preds = %3
  %21 = xor i32 %13, -1
  %22 = load i32, ptr %15, align 4
  %23 = and i32 %22, %21
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %19, %16 ], [ %21, %20 ]
  %26 = phi i32 [ %18, %16 ], [ %23, %20 ]
  store i32 %26, ptr %15, align 4
  %27 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = sdiv i32 %7, 32
  %30 = and i32 %7, -32
  %31 = icmp eq i32 %30, 32
  %32 = select i1 %31, i32 8, i32 -22
  %33 = add i32 %7, 31
  %34 = icmp ult i32 %33, 63
  %35 = select i1 %34, i32 0, i32 %32
  %36 = getelementptr i8, ptr %28, i32 %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %37 = getelementptr i32, ptr %10, i32 %29
  %38 = load i32, ptr %37, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %38) #7, !srcloc !12
  %39 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 6
  %40 = getelementptr i32, ptr %39, i32 %14
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, %25
  store i32 %42, ptr %40, align 4
  %43 = load ptr, ptr %27, align 4
  %44 = getelementptr i8, ptr %43, i32 4
  %45 = getelementptr i8, ptr %44, i32 %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %46 = getelementptr i32, ptr %39, i32 %29
  %47 = load i32, ptr %46, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %47) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca [2 x i32], align 8
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 2
  %7 = tail call i32 @bitmap_bitremap(i32 noundef %1, ptr noundef %5, ptr noundef %6, i32 noundef 64) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !8
  %8 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = sdiv i32 %7, 32
  %11 = and i32 %7, -32
  %12 = icmp eq i32 %11, 32
  %13 = select i1 %12, i32 8, i32 -22
  %14 = add i32 %7, 31
  %15 = icmp ult i32 %14, 63
  %16 = select i1 %15, i32 0, i32 %13
  %17 = getelementptr i8, ptr %9, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  %19 = getelementptr i32, ptr %3, i32 %10
  store i32 %18, ptr %19, align 4
  %20 = lshr i32 %7, 5
  %21 = getelementptr i32, ptr %3, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %7, 31
  %24 = lshr i32 %22, %23
  %25 = and i32 %24, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xgpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 2
  %7 = tail call i32 @bitmap_bitremap(i32 noundef %1, ptr noundef %5, ptr noundef %6, i32 noundef 64) #7
  %8 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 7
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #7
  %10 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 4
  %11 = icmp eq i32 %2, 0
  %12 = and i32 %7, 31
  %13 = shl nuw i32 1, %12
  %14 = lshr i32 %7, 5
  %15 = getelementptr i32, ptr %10, i32 %14
  br i1 %11, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, ptr %15, align 4
  %18 = or i32 %17, %13
  br label %23

19:                                               ; preds = %3
  %20 = xor i32 %13, -1
  %21 = load i32, ptr %15, align 4
  %22 = and i32 %21, %20
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ %22, %19 ], [ %18, %16 ]
  store i32 %24, ptr %15, align 4
  %25 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = sdiv i32 %7, 32
  %28 = and i32 %7, -32
  %29 = icmp eq i32 %28, 32
  %30 = select i1 %29, i32 8, i32 -22
  %31 = add i32 %7, 31
  %32 = icmp ult i32 %31, 63
  %33 = select i1 %32, i32 0, i32 %30
  %34 = getelementptr i8, ptr %26, i32 %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %35 = getelementptr i32, ptr %10, i32 %27
  %36 = load i32, ptr %35, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %36) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgpio_request(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #7
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xgpio_free(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xgpio_set_multiple(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca [2 x i32], align 8
  %5 = alloca [2 x i32], align 8
  %6 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store i64 0, ptr %5, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store i64 0, ptr %6, align 8, !annotation !8
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.xgpio_instance, ptr %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.xgpio_instance, ptr %7, i32 0, i32 2
  call void @bitmap_remap(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %8, ptr noundef %9, i32 noundef 64) #7
  call void @bitmap_remap(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %8, ptr noundef %9, i32 noundef 64) #7
  %10 = getelementptr inbounds %struct.xgpio_instance, ptr %7, i32 0, i32 7
  %11 = call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #7
  %12 = getelementptr inbounds %struct.xgpio_instance, ptr %7, i32 0, i32 4
  call void @__bitmap_replace(ptr noundef nonnull %6, ptr noundef %12, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 64) #7
  %13 = getelementptr inbounds %struct.gpio_chip, ptr %7, i32 0, i32 20
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = add nsw i32 %15, -1
  %17 = call i32 @bitmap_bitremap(i32 noundef %16, ptr noundef %8, ptr noundef %9, i32 noundef 64) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.xgpio_instance, ptr %7, i32 0, i32 1
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i32 [ 0, %19 ], [ %33, %21 ]
  %23 = load ptr, ptr %20, align 4
  %24 = sdiv i32 %22, 32
  %25 = icmp eq i32 %22, 32
  %26 = select i1 %25, i32 8, i32 -22
  %27 = or i32 %22, 31
  %28 = icmp ult i32 %27, 63
  %29 = select i1 %28, i32 0, i32 %26
  %30 = getelementptr i8, ptr %23, i32 %29
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  call void @arm_heavy_mb() #7
  %31 = getelementptr i32, ptr %6, i32 %24
  %32 = load i32, ptr %31, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %32) #7, !srcloc !12
  %33 = add i32 %22, 32
  %34 = icmp sgt i32 %33, %17
  br i1 %34, label %35, label %21

35:                                               ; preds = %21, %3
  %36 = load i64, ptr %6, align 8
  store i64 %36, ptr %12, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @xgpio_irq_ack(ptr nocapture noundef %0) #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xgpio_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 3
  %7 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 2
  %8 = tail call i32 @bitmap_bitremap(i32 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef 64) #7
  %9 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 7
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #7
  %11 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 10
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = lshr i32 %8, 5
  %15 = getelementptr i32, ptr %11, i32 %14
  %16 = xor i32 %13, -1
  %17 = load i32, ptr %15, align 4
  %18 = and i32 %17, %16
  store i32 %18, ptr %15, align 4
  %19 = sdiv i32 %8, 32
  %20 = getelementptr i32, ptr %11, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = shl nuw i32 1, %19
  %25 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 296
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %29 = xor i32 %24, -1
  %30 = and i32 %28, %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %31 = load ptr, ptr %25, align 4
  %32 = getelementptr i8, ptr %31, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #7, !srcloc !12
  br label %33

33:                                               ; preds = %23, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xgpio_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 3
  %7 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 2
  %8 = tail call i32 @bitmap_bitremap(i32 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef 64) #7
  %9 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 10
  %10 = sdiv i32 %8, 32
  %11 = getelementptr i32, ptr %9, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 7
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #7
  %15 = and i32 %8, 31
  %16 = shl nuw i32 1, %15
  %17 = lshr i32 %8, 5
  %18 = getelementptr i32, ptr %9, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, ptr %18, align 4
  %21 = icmp eq i32 %12, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %1
  %23 = shl nuw i32 1, %10
  %24 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 288
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %28 = and i32 %27, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %29 = load ptr, ptr %24, align 4
  %30 = getelementptr i8, ptr %29, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #7, !srcloc !12
  %31 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 5
  %32 = load ptr, ptr %24, align 4
  %33 = and i32 %8, -32
  %34 = icmp eq i32 %33, 32
  %35 = select i1 %34, i32 8, i32 -22
  %36 = add i32 %8, 31
  %37 = icmp ult i32 %36, 63
  %38 = select i1 %37, i32 0, i32 %35
  %39 = getelementptr i8, ptr %32, i32 %38
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  %41 = getelementptr i32, ptr %31, i32 %10
  store i32 %40, ptr %41, align 4
  %42 = load ptr, ptr %24, align 4
  %43 = getelementptr i8, ptr %42, i32 296
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #7, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %45 = or i32 %44, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %46 = load ptr, ptr %24, align 4
  %47 = getelementptr i8, ptr %46, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #7, !srcloc !12
  br label %48

48:                                               ; preds = %22, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgpio_set_irq_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 3
  %8 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 2
  %9 = tail call i32 @bitmap_bitremap(i32 noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef 64) #7
  %10 = and i32 %1, 15
  switch i32 %10, label %53 [
    i32 3, label %11
    i32 1, label %23
    i32 2, label %36
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 11
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = lshr i32 %9, 5
  %16 = getelementptr i32, ptr %12, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 12
  %20 = getelementptr i32, ptr %19, i32 %15
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, %14
  store i32 %22, ptr %20, align 4
  br label %49

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 11
  %25 = and i32 %9, 31
  %26 = shl nuw i32 1, %25
  %27 = lshr i32 %9, 5
  %28 = getelementptr i32, ptr %24, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 12
  %32 = getelementptr i32, ptr %31, i32 %27
  %33 = xor i32 %26, -1
  %34 = load i32, ptr %32, align 4
  %35 = and i32 %34, %33
  store i32 %35, ptr %32, align 4
  br label %49

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 11
  %38 = and i32 %9, 31
  %39 = shl nuw i32 1, %38
  %40 = lshr i32 %9, 5
  %41 = getelementptr i32, ptr %37, i32 %40
  %42 = xor i32 %39, -1
  %43 = load i32, ptr %41, align 4
  %44 = and i32 %43, %42
  store i32 %44, ptr %41, align 4
  %45 = getelementptr inbounds %struct.xgpio_instance, ptr %4, i32 0, i32 12
  %46 = getelementptr i32, ptr %45, i32 %40
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, %39
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %36, %23, %11
  %50 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.irq_desc, ptr %51, i32 0, i32 3
  store ptr @handle_edge_irq, ptr %52, align 4
  br label %53

53:                                               ; preds = %49, %2
  %54 = phi i32 [ 0, %49 ], [ -22, %2 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xgpio_irqhandler(ptr noundef %0) #2 {
  %2 = alloca [2 x i32], align 8
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x i32], align 8
  %5 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store i64 0, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8, !annotation !8
  %9 = getelementptr inbounds %struct.xgpio_instance, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 288
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !28
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr i8, ptr %13, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #7, !srcloc !12
  %15 = getelementptr inbounds %struct.irq_chip, ptr %8, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.irq_chip, ptr %8, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %20(ptr noundef %23) #7
  br label %32

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.irq_chip, ptr %8, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %26(ptr noundef %27) #7
  %28 = getelementptr inbounds %struct.irq_chip, ptr %8, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  tail call void %29(ptr noundef %27) #7
  br label %32

32:                                               ; preds = %31, %24, %22, %1
  %33 = getelementptr inbounds %struct.xgpio_instance, ptr %6, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %33) #7
  %34 = getelementptr inbounds %struct.gpio_chip, ptr %6, i32 0, i32 20
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = add nsw i32 %36, -1
  %38 = getelementptr inbounds %struct.xgpio_instance, ptr %6, i32 0, i32 3
  %39 = getelementptr inbounds %struct.xgpio_instance, ptr %6, i32 0, i32 2
  %40 = tail call i32 @bitmap_bitremap(i32 noundef %37, ptr noundef %38, ptr noundef %39, i32 noundef 64) #7
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %42, %32
  %43 = phi i32 [ %54, %42 ], [ 0, %32 ]
  %44 = load ptr, ptr %9, align 4
  %45 = sdiv i32 %43, 32
  %46 = icmp eq i32 %43, 32
  %47 = select i1 %46, i32 8, i32 -22
  %48 = or i32 %43, 31
  %49 = icmp ult i32 %48, 63
  %50 = select i1 %49, i32 0, i32 %47
  %51 = getelementptr i8, ptr %44, i32 %50
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #7, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  %53 = getelementptr i32, ptr %4, i32 %45
  store i32 %52, ptr %53, align 4
  %54 = add i32 %43, 32
  %55 = icmp sgt i32 %54, %40
  br i1 %55, label %56, label %42

56:                                               ; preds = %42, %32
  %57 = getelementptr inbounds %struct.xgpio_instance, ptr %6, i32 0, i32 5
  call void @__bitmap_complement(ptr noundef nonnull %2, ptr noundef %57, i32 noundef 64) #7
  %58 = call i32 @__bitmap_and(ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull %4, i32 noundef 64) #7
  %59 = getelementptr inbounds %struct.xgpio_instance, ptr %6, i32 0, i32 10
  %60 = call i32 @__bitmap_and(ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef %59, i32 noundef 64) #7
  %61 = getelementptr inbounds %struct.xgpio_instance, ptr %6, i32 0, i32 11
  %62 = call i32 @__bitmap_and(ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef %61, i32 noundef 64) #7
  call void @__bitmap_complement(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 64) #7
  %63 = call i32 @__bitmap_and(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %57, i32 noundef 64) #7
  %64 = call i32 @__bitmap_and(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %59, i32 noundef 64) #7
  %65 = getelementptr inbounds %struct.xgpio_instance, ptr %6, i32 0, i32 12
  %66 = call i32 @__bitmap_and(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %65, i32 noundef 64) #7
  %67 = load i64, ptr %4, align 8
  store i64 %67, ptr %57, align 4
  call void @__bitmap_or(ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 64) #7
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !30
  %68 = load i16, ptr %33, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %33, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !31
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !32
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !33
  %70 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 64, i32 noundef 0) #7
  %71 = icmp ult i32 %70, 64
  br i1 %71, label %72, label %82

72:                                               ; preds = %56
  %73 = getelementptr inbounds %struct.gpio_chip, ptr %6, i32 0, i32 37, i32 1
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi i32 [ %70, %72 ], [ %80, %74 ]
  %76 = call i32 @bitmap_bitremap(i32 noundef %75, ptr noundef %39, ptr noundef %38, i32 noundef 64) #7
  %77 = load ptr, ptr %73, align 4
  %78 = call i32 @generic_handle_domain_irq(ptr noundef %77, i32 noundef %76) #7
  %79 = add nuw nsw i32 %75, 1
  %80 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 64, i32 noundef %79) #7
  %81 = icmp ult i32 %80, 64
  br i1 %81, label %74, label %82

82:                                               ; preds = %74, %56
  %83 = load ptr, ptr %15, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.irq_chip, ptr %8, i32 0, i32 9
  %87 = load ptr, ptr %86, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = phi ptr [ %87, %85 ], [ %83, %82 ]
  %90 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %89(ptr noundef %90) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_bitremap(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_remap(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_replace(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_complement(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgpio_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @irq_get_irq_data(i32 noundef %5) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.irq_data, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 16384
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8, %1
  %15 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #7
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi i32 [ 0, %8 ], [ %15, %14 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgpio_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @irq_get_irq_data(i32 noundef %5) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.irq_data, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 16384
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8, %1
  %15 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #7
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi i32 [ 0, %8 ], [ %15, %14 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgpio_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgpio_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.xgpio_instance, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #7
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i64 403412, i64 2147893383, i64 2147893409, i64 2147893456, i64 2147893478, i64 2147893506, i64 2147893526}
!10 = !{i64 2147905595, i64 2147905621, i64 2147905650, i64 2147905684, i64 2147905715, i64 2147905738}
!11 = !{i64 2152552428}
!12 = !{i64 3724924}
!13 = !{i64 2152570645}
!14 = !{i64 3725342}
!15 = !{i64 2152571147}
!16 = !{i64 2152571384}
!17 = !{i64 2152571885}
!18 = !{i64 2147905102}
!19 = !{i64 389981, i64 390006, i64 390028, i64 390044, i64 390056, i64 390076, i64 390100, i64 390116, i64 390128}
!20 = !{i64 2147905228}
!21 = !{i64 2152552183}
!22 = !{i64 2152561558}
!23 = !{i64 2152561795}
!24 = !{i64 2152562764}
!25 = !{i64 2152562999}
!26 = !{i64 2152563511}
!27 = !{i64 2152563746}
!28 = !{i64 2152564974}
!29 = !{i64 2152565215}
!30 = !{i64 2148897943}
!31 = !{i64 2148893767}
!32 = !{i64 2148893842, i64 2148893869, i64 2148893916, i64 2148893938, i64 2148893966, i64 2148893986}
!33 = !{i64 2148920946}
