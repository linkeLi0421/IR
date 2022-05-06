; ModuleID = '/llk/IR/drivers/gpio/gpio-vf610.c_pt.bc'
source_filename = "../drivers/gpio/gpio-vf610.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fsl_gpio_soc_data = type { i8 }
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
%struct.vf610_gpio_port = type { %struct.gpio_chip, %struct.irq_chip, ptr, ptr, ptr, [32 x i8], ptr, ptr, i32 }
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

@__initcall__kmod_gpio_vf610__210_352_vf610_gpio_driver_init6 = internal global ptr @vf610_gpio_driver_init, section ".initcall6.init", align 4
@vf610_gpio_driver = internal global %struct.platform_driver { ptr @vf610_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vf610_gpio_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"gpio-vf610\00", align 1
@vf610_gpio_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"vf610-gpio\00", align 1
@imx_data = internal constant %struct.fsl_gpio_soc_data { i8 1 }, align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_gpio_vf610__210_352_vf610_gpio_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @vf610_gpio_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vf610_gpio_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_gpio_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 496, i32 noundef 3520) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %99, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %2) #5
  %9 = getelementptr inbounds %struct.vf610_gpio_port, ptr %5, i32 0, i32 4
  store ptr %8, ptr %9, align 4
  %10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %11 = getelementptr inbounds %struct.vf610_gpio_port, ptr %5, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = ptrtoint ptr %10 to i32
  br label %99

15:                                               ; preds = %7
  %16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #5
  %17 = getelementptr inbounds %struct.vf610_gpio_port, ptr %5, i32 0, i32 3
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = ptrtoint ptr %16 to i32
  br label %99

21:                                               ; preds = %15
  %22 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %23 = getelementptr inbounds %struct.vf610_gpio_port, ptr %5, i32 0, i32 8
  store i32 %22, ptr %23, align 4
  %24 = icmp slt i32 %22, 0
  br i1 %24, label %99, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  %27 = getelementptr inbounds %struct.vf610_gpio_port, ptr %5, i32 0, i32 6
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  %29 = ptrtoint ptr %26 to i32
  %30 = select i1 %28, i32 %29, i32 0
  switch i32 %30, label %42 [
    i32 0, label %31
    i32 -517, label %99
  ]

31:                                               ; preds = %25
  %32 = tail call i32 @clk_prepare(ptr noundef %26) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %99

34:                                               ; preds = %31
  %35 = tail call i32 @clk_enable(ptr noundef %26) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @clk_unprepare(ptr noundef %26) #5
  br label %99

38:                                               ; preds = %34
  %39 = load ptr, ptr %27, align 4
  %40 = tail call fastcc i32 @devm_add_action_or_reset(ptr noundef %2, ptr noundef %39)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %99

42:                                               ; preds = %38, %25
  %43 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  %44 = getelementptr inbounds %struct.vf610_gpio_port, ptr %5, i32 0, i32 7
  store ptr %43, ptr %44, align 4
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  %46 = ptrtoint ptr %43 to i32
  %47 = select i1 %45, i32 %46, i32 0
  switch i32 %47, label %55 [
    i32 0, label %48
    i32 -517, label %99
  ]

48:                                               ; preds = %42
  %49 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %43)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %99

51:                                               ; preds = %48
  %52 = load ptr, ptr %44, align 4
  %53 = tail call fastcc i32 @devm_add_action_or_reset(ptr noundef %2, ptr noundef %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %99

55:                                               ; preds = %51, %42
  %56 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 2
  store ptr %2, ptr %56, align 4
  store ptr @.str.3, ptr %5, align 4
  %57 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 20
  store i16 32, ptr %57, align 4
  %58 = tail call i32 @of_alias_get_id(ptr noundef %4, ptr noundef nonnull @.str.2) #5
  %59 = shl i32 %58, 5
  %60 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 19
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 5
  store ptr @gpiochip_generic_request, ptr %61, align 4
  %62 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 6
  store ptr @gpiochip_generic_free, ptr %62, align 4
  %63 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 8
  store ptr @vf610_gpio_direction_input, ptr %63, align 4
  %64 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 10
  store ptr @vf610_gpio_get, ptr %64, align 4
  %65 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 9
  store ptr @vf610_gpio_direction_output, ptr %65, align 4
  %66 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 12
  store ptr @vf610_gpio_set, ptr %66, align 4
  %67 = getelementptr inbounds %struct.vf610_gpio_port, ptr %5, i32 0, i32 1
  %68 = getelementptr inbounds %struct.vf610_gpio_port, ptr %5, i32 0, i32 1, i32 1
  store ptr @.str, ptr %68, align 4
  %69 = getelementptr inbounds %struct.vf610_gpio_port, ptr %5, i32 0, i32 1, i32 6
  store ptr @vf610_gpio_irq_ack, ptr %69, align 4
  %70 = getelementptr inbounds %struct.vf610_gpio_port, ptr %5, i32 0, i32 1, i32 7
  store ptr @vf610_gpio_irq_mask, ptr %70, align 4
  %71 = getelementptr inbounds %struct.vf610_gpio_port, ptr %5, i32 0, i32 1, i32 9
  store ptr @vf610_gpio_irq_unmask, ptr %71, align 4
  %72 = getelementptr inbounds %struct.vf610_gpio_port, ptr %5, i32 0, i32 1, i32 13
  store ptr @vf610_gpio_irq_set_type, ptr %72, align 4
  %73 = getelementptr inbounds %struct.vf610_gpio_port, ptr %5, i32 0, i32 1, i32 14
  store ptr @vf610_gpio_irq_set_wake, ptr %73, align 4
  %74 = load i16, ptr %57, align 4
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %76, %55
  %77 = phi i32 [ %81, %76 ], [ 0, %55 ]
  %78 = load ptr, ptr %11, align 4
  %79 = shl i32 %77, 2
  %80 = getelementptr i8, ptr %78, i32 %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 0) #5, !srcloc !8
  %81 = add nuw nsw i32 %77, 1
  %82 = load i16, ptr %57, align 4
  %83 = zext i16 %82 to i32
  %84 = icmp ult i32 %81, %83
  br i1 %84, label %76, label %85

85:                                               ; preds = %76, %55
  %86 = load ptr, ptr %11, align 4
  %87 = getelementptr i8, ptr %86, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 -1) #5, !srcloc !8
  %88 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37
  store ptr %67, ptr %88, align 4
  %89 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 13
  store ptr @vf610_gpio_irq_handler, ptr %89, align 4
  %90 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 15
  store i32 1, ptr %90, align 4
  %91 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 4, i32 noundef 3520) #5
  %92 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 16
  store ptr %91, ptr %92, align 4
  %93 = icmp eq ptr %91, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %85
  %95 = load i32, ptr %23, align 4
  store i32 %95, ptr %91, align 4
  %96 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 10
  store i32 0, ptr %96, align 4
  %97 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 9
  store ptr @handle_edge_irq, ptr %97, align 4
  %98 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #5
  br label %99

99:                                               ; preds = %94, %85, %51, %48, %42, %38, %37, %31, %25, %21, %19, %13, %1
  %100 = phi i32 [ %14, %13 ], [ %20, %19 ], [ %98, %94 ], [ -12, %1 ], [ %22, %21 ], [ %40, %38 ], [ %30, %25 ], [ %49, %48 ], [ %53, %51 ], [ %47, %42 ], [ -12, %85 ], [ %35, %37 ], [ %32, %31 ]
  ret i32 %100
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #5
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @devm_add_action_or_reset(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @vf610_gpio_disable_clk, ptr noundef %1) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @clk_disable(ptr noundef %1) #5
  tail call void @clk_unprepare(ptr noundef %1) #5
  br label %6

6:                                                ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vf610_gpio_disable_clk(ptr noundef %0) #2 {
  tail call void @clk_disable(ptr noundef %0) #5
  tail call void @clk_unprepare(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_gpio_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %4 = shl nuw i32 1, %1
  %5 = getelementptr inbounds %struct.vf610_gpio_port, ptr %3, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = load i8, ptr %6, align 1, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.vf610_gpio_port, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !10
  %16 = xor i32 %4, -1
  %17 = and i32 %15, %16
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #5, !srcloc !8
  br label %20

20:                                               ; preds = %11, %8, %2
  %21 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %1
  %24 = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %23) #5
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %4 = shl nuw i32 1, %1
  %5 = getelementptr inbounds %struct.vf610_gpio_port, ptr %3, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = load i8, ptr %6, align 1, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.vf610_gpio_port, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !10
  %16 = and i32 %15, %4
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 16, i32 0
  br label %19

19:                                               ; preds = %11, %8, %2
  %20 = phi i32 [ 16, %8 ], [ 16, %2 ], [ %18, %11 ]
  %21 = getelementptr inbounds %struct.vf610_gpio_port, ptr %3, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 %20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !10
  %25 = lshr i32 %24, %1
  %26 = and i32 %25, 1
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %5 = shl nuw i32 1, %1
  %6 = getelementptr inbounds %struct.vf610_gpio_port, ptr %4, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = load i8, ptr %7, align 1, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.vf610_gpio_port, ptr %4, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %5) #5, !srcloc !8
  br label %16

16:                                               ; preds = %12, %9, %3
  %17 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %18 = icmp eq i32 %2, 0
  %19 = select i1 %18, i32 8, i32 4
  %20 = getelementptr inbounds %struct.vf610_gpio_port, ptr %17, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %5) #5, !srcloc !8
  %23 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %1
  %26 = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %25) #5
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vf610_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #5
  %5 = shl nuw i32 1, %1
  %6 = icmp eq i32 %2, 0
  %7 = select i1 %6, i32 8, i32 4
  %8 = getelementptr inbounds %struct.vf610_gpio_port, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %5) #5, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vf610_gpio_irq_ack(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %6
  %8 = getelementptr inbounds %struct.vf610_gpio_port, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #5, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vf610_gpio_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.vf610_gpio_port, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 2
  %10 = getelementptr i8, ptr %6, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #5, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vf610_gpio_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.vf610_gpio_port, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 2
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = getelementptr %struct.vf610_gpio_port, ptr %4, i32 0, i32 5, i32 %8
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %14) #5, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_gpio_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #5
  switch i32 %1, label %20 [
    i32 1, label %9
    i32 2, label %6
    i32 3, label %7
    i32 8, label %11
    i32 4, label %8
  ]

6:                                                ; preds = %2
  br label %9

7:                                                ; preds = %2
  br label %9

8:                                                ; preds = %2
  br label %11

9:                                                ; preds = %7, %6, %2
  %10 = phi i8 [ 9, %2 ], [ 10, %6 ], [ 11, %7 ]
  br label %11

11:                                               ; preds = %9, %8, %2
  %12 = phi i8 [ %10, %9 ], [ 12, %8 ], [ 8, %2 ]
  %13 = phi ptr [ @handle_edge_irq, %9 ], [ @handle_level_irq, %8 ], [ @handle_level_irq, %2 ]
  %14 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.vf610_gpio_port, ptr %5, i32 0, i32 5, i32 %15
  store i8 %12, ptr %16, align 1
  %17 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.irq_desc, ptr %18, i32 0, i32 3
  store ptr %13, ptr %19, align 4
  br label %20

20:                                               ; preds = %11, %2
  %21 = phi i32 [ -22, %2 ], [ 0, %11 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_gpio_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #5
  %6 = icmp ne i32 %1, 0
  %7 = getelementptr inbounds %struct.vf610_gpio_port, ptr %5, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = zext i1 %6 to i32
  %10 = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef %9) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vf610_gpio_irq_handler(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
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
  tail call void %13(ptr noundef %16) #5
  br label %25

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %19(ptr noundef %20) #5
  %21 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void %22(ptr noundef %20) #5
  br label %25

25:                                               ; preds = %24, %17, %15, %1
  %26 = getelementptr inbounds %struct.vf610_gpio_port, ptr %5, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 160
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #5, !srcloc !10
  store i32 %29, ptr %2, align 4
  %30 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #5
  %31 = icmp slt i32 %30, 32
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 1
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi i32 [ %30, %32 ], [ %42, %34 ]
  %36 = shl nuw i32 1, %35
  %37 = load ptr, ptr %26, align 4
  %38 = getelementptr i8, ptr %37, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #5, !srcloc !8
  %39 = load ptr, ptr %33, align 4
  %40 = call i32 @generic_handle_domain_irq(ptr noundef %39, i32 noundef %35) #5
  %41 = add nsw i32 %35, 1
  %42 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %41) #5
  %43 = icmp slt i32 %42, 32
  br i1 %43, label %34, label %44

44:                                               ; preds = %34, %25
  %45 = load ptr, ptr %8, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 9
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi ptr [ %49, %47 ], [ %45, %44 ]
  %52 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %51(ptr noundef %52) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }

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
!8 = !{i64 3712841}
!9 = !{i8 0, i8 2}
!10 = !{i64 3713259}
