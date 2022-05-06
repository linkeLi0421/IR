; ModuleID = '/llk/IR/drivers/irqchip/irq-imx-irqsteer.c_pt.bc'
source_filename = "../drivers/irqchip/irq-imx-irqsteer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.irqsteer_data = type { ptr, ptr, [8 x i32], i32, %struct.raw_spinlock, i32, i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_irq_imx_irqsteer__170_308_imx_irqsteer_driver_init6 = internal global ptr @imx_irqsteer_driver_init, section ".initcall6.init", align 4
@imx_irqsteer_driver = internal global %struct.platform_driver { ptr @imx_irqsteer_probe, ptr @imx_irqsteer_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_irqsteer_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_irqsteer_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [13 x i8] c"imx-irqsteer\00", align 1
@imx_irqsteer_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-irqsteer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@imx_irqsteer_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_irqsteer_suspend, ptr @imx_irqsteer_resume, ptr @imx_irqsteer_suspend, ptr @imx_irqsteer_resume, ptr @imx_irqsteer_suspend, ptr @imx_irqsteer_resume, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to initialize reg\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to get ipg clk\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"fsl,num-irqs\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"fsl,channel\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to enable ipg clk: %d\0A\00", align 1
@imx_irqsteer_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @imx_irqsteer_irq_map, ptr null, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"failed to create IRQ domain\0A\00", align 1
@imx_irqsteer_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_irqsteer_irq_mask, ptr null, ptr @imx_irqsteer_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"irqsteer\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"\014%s: unable to get hwirq base for irq %d\0A\00", align 1
@__func__.imx_irqsteer_irq_handler = private unnamed_addr constant [25 x i8] c"imx_irqsteer_irq_handler\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_irq_imx_irqsteer__170_308_imx_irqsteer_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx_irqsteer_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_irqsteer_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_irqsteer_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 64, i32 noundef 3520) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %85, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  store ptr %9, ptr %6, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  %12 = ptrtoint ptr %9 to i32
  br label %85

13:                                               ; preds = %8
  %14 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.2) #6
  %15 = getelementptr inbounds %struct.irqsteer_data, ptr %6, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = ptrtoint ptr %14 to i32
  %19 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %18, ptr noundef nonnull @.str.3) #6
  br label %85

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.irqsteer_data, ptr %6, i32 0, i32 4
  store i32 0, ptr %21, align 4
  %22 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %23 = call i32 @llvm.smin.i32(i32 %22, i32 0) #6
  %24 = icmp sgt i32 %22, -1
  br i1 %24, label %25, label %85

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.irqsteer_data, ptr %6, i32 0, i32 6
  %27 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef %26, i32 noundef 1, i32 noundef 0) #6
  %28 = call i32 @llvm.smin.i32(i32 %27, i32 0) #6
  %29 = icmp sgt i32 %27, -1
  br i1 %29, label %30, label %85

30:                                               ; preds = %25
  %31 = load i32, ptr %2, align 4
  %32 = add i32 %31, 63
  %33 = lshr i32 %32, 6
  %34 = getelementptr inbounds %struct.irqsteer_data, ptr %6, i32 0, i32 3
  store i32 %33, ptr %34, align 4
  %35 = lshr i32 %31, 5
  %36 = getelementptr inbounds %struct.irqsteer_data, ptr %6, i32 0, i32 5
  store i32 %35, ptr %36, align 4
  %37 = shl nuw nsw i32 %35, 2
  %38 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %37, i32 noundef 3520) #6
  %39 = getelementptr inbounds %struct.irqsteer_data, ptr %6, i32 0, i32 8
  store ptr %38, ptr %39, align 4
  %40 = icmp eq ptr %38, null
  br i1 %40, label %85, label %41

41:                                               ; preds = %30
  %42 = load ptr, ptr %15, align 4
  %43 = call i32 @clk_prepare(ptr noundef %42) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = call i32 @clk_enable(ptr noundef %42) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  call void @clk_unprepare(ptr noundef %42) #6
  br label %49

49:                                               ; preds = %48, %41
  %50 = phi i32 [ %46, %48 ], [ %43, %41 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %50) #7
  br label %85

51:                                               ; preds = %45
  %52 = load i32, ptr %26, align 4
  %53 = shl nuw i32 1, %52
  %54 = load ptr, ptr %6, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %53) #6, !srcloc !9
  %55 = load i32, ptr %36, align 4
  %56 = shl i32 %55, 5
  %57 = icmp eq ptr %5, null
  %58 = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 3
  %59 = select i1 %57, ptr null, ptr %58
  %60 = call ptr @__irq_domain_add(ptr noundef %59, i32 noundef %56, i32 noundef %56, i32 noundef 0, ptr noundef nonnull @imx_irqsteer_domain_ops, ptr noundef nonnull %6) #6
  %61 = getelementptr inbounds %struct.irqsteer_data, ptr %6, i32 0, i32 7
  store ptr %60, ptr %61, align 4
  %62 = icmp eq ptr %60, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #7
  br label %82

64:                                               ; preds = %51
  %65 = load i32, ptr %34, align 4
  %66 = icmp eq i32 %65, 0
  %67 = icmp sgt i32 %65, 8
  %68 = or i1 %66, %67
  br i1 %68, label %82, label %69

69:                                               ; preds = %64
  %70 = icmp sgt i32 %65, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %76, %69
  %72 = phi i32 [ %77, %76 ], [ 0, %69 ]
  %73 = call i32 @irq_of_parse_and_map(ptr noundef %5, i32 noundef %72) #6
  %74 = getelementptr %struct.irqsteer_data, ptr %6, i32 0, i32 2, i32 %72
  store i32 %73, ptr %74, align 4
  %75 = icmp eq i32 %73, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  call void @irq_set_chained_handler_and_data(i32 noundef %73, ptr noundef nonnull @imx_irqsteer_irq_handler, ptr noundef nonnull %6) #6
  %77 = add nuw nsw i32 %72, 1
  %78 = load i32, ptr %34, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %71, label %80

80:                                               ; preds = %76, %69
  %81 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %81, align 8
  br label %85

82:                                               ; preds = %71, %64, %63
  %83 = phi i32 [ -12, %63 ], [ -22, %64 ], [ -22, %71 ]
  %84 = load ptr, ptr %15, align 4
  call void @clk_disable(ptr noundef %84) #6
  call void @clk_unprepare(ptr noundef %84) #6
  br label %85

85:                                               ; preds = %82, %80, %49, %30, %25, %20, %17, %11, %1
  %86 = phi i32 [ %12, %11 ], [ %19, %17 ], [ %50, %49 ], [ %83, %82 ], [ 0, %80 ], [ -12, %1 ], [ %23, %20 ], [ %28, %25 ], [ -12, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_irqsteer_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.irqsteer_data, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %7, %1
  %8 = phi i32 [ %11, %7 ], [ 0, %1 ]
  %9 = getelementptr %struct.irqsteer_data, ptr %3, i32 0, i32 2, i32 %8
  %10 = load i32, ptr %9, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %10, ptr noundef null, ptr noundef null) #6
  %11 = add nuw nsw i32 %8, 1
  %12 = load i32, ptr %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %7, label %14

14:                                               ; preds = %7, %1
  %15 = getelementptr inbounds %struct.irqsteer_data, ptr %3, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  tail call void @irq_domain_remove(ptr noundef %16) #6
  %17 = getelementptr inbounds %struct.irqsteer_data, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #6
  tail call void @clk_unprepare(ptr noundef %18) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_irqsteer_irq_handler(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %12(ptr noundef %15) #6
  br label %24

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %18(ptr noundef %19) #6
  %20 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void %21(ptr noundef %19) #6
  br label %24

24:                                               ; preds = %23, %16, %14, %1
  %25 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.irqsteer_data, ptr %4, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %35, %24
  %31 = phi i32 [ %36, %35 ], [ 0, %24 ]
  %32 = getelementptr %struct.irqsteer_data, ptr %4, i32 0, i32 2, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %26
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = add nuw nsw i32 %31, 1
  %37 = icmp eq i32 %36, %28
  br i1 %37, label %47, label %30

38:                                               ; preds = %30
  %39 = shl i32 %31, 6
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.irqsteer_data, ptr %4, i32 0, i32 5
  %43 = getelementptr inbounds %struct.irqsteer_data, ptr %4, i32 0, i32 7
  %44 = load i32, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %45 = shl i32 %44, 5
  %46 = icmp slt i32 %39, %45
  br i1 %46, label %49, label %70

47:                                               ; preds = %38, %35, %24
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.imx_irqsteer_irq_handler, i32 noundef %26) #7
  br label %109

49:                                               ; preds = %41
  %50 = lshr exact i32 %39, 5
  %51 = xor i32 %50, -1
  %52 = add i32 %44, %51
  %53 = load ptr, ptr %4, align 4
  %54 = shl i32 %44, 3
  %55 = shl i32 %52, 2
  %56 = or i32 %54, 4
  %57 = add i32 %56, %55
  %58 = getelementptr i8, ptr %53, i32 %57
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #6, !srcloc !10
  store i32 %59, ptr %2, align 4
  %60 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #6
  %61 = icmp slt i32 %60, 32
  br i1 %61, label %62, label %71

62:                                               ; preds = %62, %49
  %63 = phi i32 [ %68, %62 ], [ %60, %49 ]
  %64 = load ptr, ptr %43, align 4
  %65 = add i32 %63, %39
  %66 = call i32 @generic_handle_domain_irq(ptr noundef %64, i32 noundef %65) #6
  %67 = add nsw i32 %63, 1
  %68 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %67) #6
  %69 = icmp slt i32 %68, 32
  br i1 %69, label %62, label %71

70:                                               ; preds = %71, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %98

71:                                               ; preds = %62, %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %72 = or i32 %39, 32
  %73 = load i32, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %74 = shl i32 %73, 5
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %70

76:                                               ; preds = %71
  %77 = lshr exact i32 %72, 5
  %78 = xor i32 %77, -1
  %79 = add i32 %73, %78
  %80 = load ptr, ptr %4, align 4
  %81 = shl i32 %73, 3
  %82 = shl i32 %79, 2
  %83 = or i32 %81, 4
  %84 = add i32 %83, %82
  %85 = getelementptr i8, ptr %80, i32 %84
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #6, !srcloc !10
  store i32 %86, ptr %2, align 4
  %87 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #6
  %88 = icmp slt i32 %87, 32
  br i1 %88, label %89, label %97

89:                                               ; preds = %89, %76
  %90 = phi i32 [ %95, %89 ], [ %87, %76 ]
  %91 = load ptr, ptr %43, align 4
  %92 = add i32 %90, %72
  %93 = call i32 @generic_handle_domain_irq(ptr noundef %91, i32 noundef %92) #6
  %94 = add nsw i32 %90, 1
  %95 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %94) #6
  %96 = icmp slt i32 %95, 32
  br i1 %96, label %89, label %97

97:                                               ; preds = %89, %76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %98

98:                                               ; preds = %97, %70
  %99 = load ptr, ptr %5, align 8
  %100 = getelementptr inbounds %struct.irq_chip, ptr %99, i32 0, i32 10
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.irq_chip, ptr %99, i32 0, i32 9
  %105 = load ptr, ptr %104, align 4
  br label %106

106:                                              ; preds = %103, %98
  %107 = phi ptr [ %105, %103 ], [ %101, %98 ]
  %108 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %107(ptr noundef %108) #6
  br label %109

109:                                              ; preds = %106, %47
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

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
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_irqsteer_irq_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 256) #6
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #6
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @imx_irqsteer_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_irqsteer_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irqsteer_data, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %5, 5
  %9 = xor i32 %8, -1
  %10 = add i32 %7, %9
  %11 = getelementptr inbounds %struct.irqsteer_data, ptr %3, i32 0, i32 4
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #6
  %13 = load ptr, ptr %3, align 4
  %14 = shl i32 %10, 2
  %15 = add i32 %14, 4
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !10
  %18 = load i32, ptr %4, align 4
  %19 = and i32 %18, 31
  %20 = shl nuw i32 1, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %17, %21
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr i8, ptr %23, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #6, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_irqsteer_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irqsteer_data, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %5, 5
  %9 = xor i32 %8, -1
  %10 = add i32 %7, %9
  %11 = getelementptr inbounds %struct.irqsteer_data, ptr %3, i32 0, i32 4
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #6
  %13 = load ptr, ptr %3, align 4
  %14 = shl i32 %10, 2
  %15 = add i32 %14, 4
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !10
  %18 = load i32, ptr %4, align 4
  %19 = and i32 %18, 31
  %20 = shl nuw i32 1, %19
  %21 = or i32 %20, %17
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #6, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_irqsteer_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.irqsteer_data, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.irqsteer_data, ptr %3, i32 0, i32 8
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 0, %7 ], [ %18, %9 ]
  %11 = load ptr, ptr %3, align 4
  %12 = shl i32 %10, 2
  %13 = add i32 %12, 4
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !10
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr i32, ptr %16, i32 %10
  store i32 %15, ptr %17, align 4
  %18 = add nuw nsw i32 %10, 1
  %19 = load i32, ptr %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %9, label %21

21:                                               ; preds = %9, %1
  %22 = getelementptr inbounds %struct.irqsteer_data, ptr %3, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void @clk_disable(ptr noundef %23) #6
  tail call void @clk_unprepare(ptr noundef %23) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_irqsteer_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.irqsteer_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %9, %11 ], [ %6, %1 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %13) #7
  br label %36

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.irqsteer_data, ptr %3, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = shl nuw i32 1, %16
  %18 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #6, !srcloc !9
  %19 = getelementptr inbounds %struct.irqsteer_data, ptr %3, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.irqsteer_data, ptr %3, i32 0, i32 8
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i32 [ 0, %22 ], [ %33, %24 ]
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr i32, ptr %26, i32 %25
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %3, align 4
  %30 = shl i32 %25, 2
  %31 = add i32 %30, 4
  %32 = getelementptr i8, ptr %29, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %28) #6, !srcloc !9
  %33 = add nuw nsw i32 %25, 1
  %34 = load i32, ptr %19, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %24, label %36

36:                                               ; preds = %24, %14, %12
  %37 = phi i32 [ %13, %12 ], [ 0, %14 ], [ 0, %24 ]
  ret i32 %37
}

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
!8 = !{!"auto-init"}
!9 = !{i64 3087500}
!10 = !{i64 3087918}
