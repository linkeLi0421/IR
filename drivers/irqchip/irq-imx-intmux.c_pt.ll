; ModuleID = '/llk/IR/drivers/irqchip/irq-imx-intmux.c_pt.bc'
source_filename = "../drivers/irqchip/irq-imx-intmux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.intmux_data = type { %struct.raw_spinlock, ptr, ptr, i32, [0 x %struct.intmux_irqchip_data] }
%struct.intmux_irqchip_data = type { %struct.irq_chip, i32, i32, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }

@__initcall__kmod_irq_imx_intmux__171_365_imx_intmux_driver_init6 = internal global ptr @imx_intmux_driver_init, section ".initcall6.init", align 4
@imx_intmux_driver = internal global %struct.platform_driver { ptr @imx_intmux_probe, ptr @imx_intmux_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_intmux_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_intmux_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"imx-intmux\00", align 1
@imx_intmux_id = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-intmux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@imx_intmux_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @imx_intmux_runtime_suspend, ptr @imx_intmux_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"supports up to %d multiplex channels\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to initialize reg\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to get ipg clk\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to enable ipg clk: %d\0A\00", align 1
@imx_intmux_irq_chip = internal unnamed_addr constant %struct.irq_chip { ptr null, ptr @.str.8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_intmux_irq_mask, ptr null, ptr @imx_intmux_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"failed to get irq\0A\00", align 1
@imx_intmux_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr @imx_intmux_irq_select, ptr @imx_intmux_irq_map, ptr null, ptr @imx_intmux_irq_xlate, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"failed to create IRQ domain\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"intmux\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"drivers/irqchip/irq-imx-intmux.c\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_irq_imx_intmux__171_365_imx_intmux_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx_intmux_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_intmux_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_intmux_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @platform_irq_count(ptr noundef %0) #8
  %6 = icmp eq i32 %5, -517
  br i1 %6, label %76, label %7

7:                                                ; preds = %1
  %8 = icmp sgt i32 %5, 8
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 8) #9
  br label %76

10:                                               ; preds = %7
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 152) #8
  %12 = extractvalue { i32, i1 } %11, 1
  %13 = extractvalue { i32, i1 } %11, 0
  %14 = add nuw i32 %13, 16
  %15 = select i1 %12, i32 -1, i32 %14
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %15, i32 noundef 3520) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %76, label %18

18:                                               ; preds = %10
  %19 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %20 = getelementptr inbounds %struct.intmux_data, ptr %16, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #9
  %23 = ptrtoint ptr %19 to i32
  br label %76

24:                                               ; preds = %18
  %25 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #8
  %26 = getelementptr inbounds %struct.intmux_data, ptr %16, i32 0, i32 2
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = ptrtoint ptr %25 to i32
  %30 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %29, ptr noundef nonnull @.str.4) #8
  br label %76

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.intmux_data, ptr %16, i32 0, i32 3
  store i32 %5, ptr %32, align 4
  store i32 0, ptr %16, align 4
  %33 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #8, !srcloc !8
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #8, !srcloc !9
  %35 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #8
  tail call void @pm_runtime_enable(ptr noundef %2) #8
  %36 = tail call i32 @clk_prepare(ptr noundef %25) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = tail call i32 @clk_enable(ptr noundef %25) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = icmp sgt i32 %5, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %41
  %44 = icmp eq ptr %4, null
  %45 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 3
  %46 = select i1 %44, ptr null, ptr %45
  br label %50

47:                                               ; preds = %38
  tail call void @clk_unprepare(ptr noundef %25) #8
  br label %48

48:                                               ; preds = %47, %31
  %49 = phi i32 [ %39, %47 ], [ %36, %31 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %49) #9
  br label %76

50:                                               ; preds = %60, %43
  %51 = phi i32 [ 0, %43 ], [ %67, %60 ]
  %52 = getelementptr %struct.intmux_data, ptr %16, i32 0, i32 4, i32 %51
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(136) %52, ptr noundef nonnull align 4 dereferenceable(136) @imx_intmux_irq_chip, i32 136, i1 false)
  store ptr %2, ptr %52, align 4
  %53 = getelementptr %struct.intmux_data, ptr %16, i32 0, i32 4, i32 %51, i32 2
  store i32 %51, ptr %53, align 4
  %54 = tail call i32 @irq_of_parse_and_map(ptr noundef %4, i32 noundef %51) #8
  %55 = getelementptr %struct.intmux_data, ptr %16, i32 0, i32 4, i32 %51, i32 3
  store i32 %54, ptr %55, align 4
  %56 = icmp slt i32 %54, 1
  br i1 %56, label %72, label %57

57:                                               ; preds = %50
  %58 = tail call ptr @__irq_domain_add(ptr noundef %46, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @imx_intmux_domain_ops, ptr noundef %52) #8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %57
  %61 = getelementptr %struct.intmux_data, ptr %16, i32 0, i32 4, i32 %51, i32 4
  store ptr %58, ptr %61, align 4
  %62 = load ptr, ptr %20, align 4
  %63 = shl i32 %51, 6
  %64 = or i32 %63, 16
  %65 = getelementptr i8, ptr %62, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 0) #8, !srcloc !10
  %66 = load i32, ptr %55, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %66, ptr noundef nonnull @imx_intmux_irq_handler, ptr noundef %52) #8
  %67 = add nuw nsw i32 %51, 1
  %68 = icmp eq i32 %67, %5
  br i1 %68, label %69, label %50

69:                                               ; preds = %60, %41
  %70 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %16, ptr %70, align 8
  %71 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 5) #8
  br label %76

72:                                               ; preds = %57, %50
  %73 = phi ptr [ @.str.6, %50 ], [ @.str.7, %57 ]
  %74 = phi i32 [ -22, %50 ], [ -12, %57 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull %73) #9
  %75 = load ptr, ptr %26, align 4
  tail call void @clk_disable(ptr noundef %75) #8
  tail call void @clk_unprepare(ptr noundef %75) #8
  br label %76

76:                                               ; preds = %72, %69, %48, %28, %22, %10, %9, %1
  %77 = phi i32 [ -22, %9 ], [ %23, %22 ], [ %30, %28 ], [ %49, %48 ], [ %74, %72 ], [ 0, %69 ], [ -517, %1 ], [ -12, %10 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_intmux_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.intmux_data, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.intmux_data, ptr %3, i32 0, i32 1
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 0, %7 ], [ %19, %9 ]
  %11 = load ptr, ptr %8, align 4
  %12 = shl i32 %10, 6
  %13 = or i32 %12, 16
  %14 = getelementptr i8, ptr %11, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #8, !srcloc !10
  %15 = getelementptr %struct.intmux_data, ptr %3, i32 0, i32 4, i32 %10, i32 3
  %16 = load i32, ptr %15, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %16, ptr noundef null, ptr noundef null) #8
  %17 = getelementptr %struct.intmux_data, ptr %3, i32 0, i32 4, i32 %10, i32 4
  %18 = load ptr, ptr %17, align 4
  tail call void @irq_domain_remove(ptr noundef %18) #8
  %19 = add nuw nsw i32 %10, 1
  %20 = load i32, ptr %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %9, label %22

22:                                               ; preds = %9, %1
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %23, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_intmux_irq_handler(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.intmux_irqchip_data, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = mul i32 %6, -152
  %8 = add i32 %7, -16
  %9 = getelementptr i8, ptr %4, i32 %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %10 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %17(ptr noundef %20) #8
  br label %29

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %23(ptr noundef %24) #8
  %25 = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  tail call void %26(ptr noundef %24) #8
  br label %29

29:                                               ; preds = %28, %21, %19, %1
  %30 = getelementptr inbounds %struct.intmux_data, ptr %9, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = shl i32 %6, 6
  %33 = or i32 %32, 32
  %34 = getelementptr i8, ptr %31, i32 %33
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !11
  store i32 %35, ptr %2, align 4
  %36 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #8
  %37 = icmp slt i32 %36, 32
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.intmux_irqchip_data, ptr %4, i32 0, i32 4
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi i32 [ %36, %38 ], [ %45, %40 ]
  %42 = load ptr, ptr %39, align 4
  %43 = call i32 @generic_handle_domain_irq(ptr noundef %42, i32 noundef %41) #8
  %44 = add nsw i32 %41, 1
  %45 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %44) #8
  %46 = icmp slt i32 %45, 32
  br i1 %46, label %40, label %47

47:                                               ; preds = %40, %29
  %48 = load ptr, ptr %10, align 8
  %49 = getelementptr inbounds %struct.irq_chip, ptr %48, i32 0, i32 10
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.irq_chip, ptr %48, i32 0, i32 9
  %54 = load ptr, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %47
  %56 = phi ptr [ %54, %52 ], [ %50, %47 ]
  %57 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %56(ptr noundef %57) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_intmux_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.intmux_irqchip_data, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, -152
  %7 = add i32 %6, -16
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #8
  %10 = getelementptr inbounds %struct.intmux_data, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = shl i32 %5, 6
  %13 = or i32 %12, 16
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !11
  %16 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = shl nuw i32 1, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %20) #8, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_intmux_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.intmux_irqchip_data, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, -152
  %7 = add i32 %6, -16
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #8
  %10 = getelementptr inbounds %struct.intmux_data, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = shl i32 %5, 6
  %13 = or i32 %12, 16
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !11
  %16 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = shl nuw i32 1, %17
  %19 = or i32 %18, %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %19) #8, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @imx_intmux_irq_select(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #7 {
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.intmux_irqchip_data, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %12, %14
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ 0, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_intmux_irq_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #8
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef %5, ptr noundef nonnull @handle_level_irq, ptr noundef null) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_intmux_irq_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #2 {
  %7 = icmp eq i32 %3, 2
  br i1 %7, label %9, label %8, !prof !12

8:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 148, i32 noundef 9, ptr noundef null) #8
  br label %25

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.intmux_irqchip_data, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, -152
  %15 = add i32 %14, -16
  %16 = getelementptr i8, ptr %11, i32 %15
  %17 = getelementptr i32, ptr %2, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.intmux_data, ptr %16, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %23, label %22, !prof !12

22:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 151, i32 noundef 9, ptr noundef null) #8
  br label %25

23:                                               ; preds = %9
  %24 = load i32, ptr %2, align 4
  store i32 %24, ptr %4, align 4
  store i32 4, ptr %5, align 4
  br label %25

25:                                               ; preds = %23, %22, %8
  %26 = phi i32 [ -22, %8 ], [ -22, %22 ], [ 0, %23 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_intmux_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.intmux_data, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.intmux_data, ptr %3, i32 0, i32 1
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 0, %7 ], [ %17, %9 ]
  %11 = load ptr, ptr %8, align 4
  %12 = shl i32 %10, 6
  %13 = or i32 %12, 16
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !11
  %16 = getelementptr %struct.intmux_data, ptr %3, i32 0, i32 4, i32 %10, i32 1
  store i32 %15, ptr %16, align 4
  %17 = add nuw nsw i32 %10, 1
  %18 = load i32, ptr %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %9, label %20

20:                                               ; preds = %9, %1
  %21 = getelementptr inbounds %struct.intmux_data, ptr %3, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void @clk_disable(ptr noundef %22) #8
  tail call void @clk_unprepare(ptr noundef %22) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_intmux_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.intmux_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.intmux_data, ptr %3, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.intmux_data, ptr %3, i32 0, i32 1
  br label %20

17:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %18

18:                                               ; preds = %17, %1
  %19 = phi i32 [ %9, %17 ], [ %6, %1 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %19) #9
  br label %31

20:                                               ; preds = %20, %15
  %21 = phi i32 [ 0, %15 ], [ %28, %20 ]
  %22 = getelementptr %struct.intmux_data, ptr %3, i32 0, i32 4, i32 %21, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %16, align 4
  %25 = shl i32 %21, 6
  %26 = or i32 %25, 16
  %27 = getelementptr i8, ptr %24, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %23) #8, !srcloc !10
  %28 = add nuw nsw i32 %21, 1
  %29 = load i32, ptr %12, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %20, label %31

31:                                               ; preds = %20, %18, %11
  %32 = phi i32 [ %19, %18 ], [ 0, %11 ], [ 0, %20 ]
  ret i32 %32
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 448802, i64 2147938773, i64 2147938799, i64 2147938846, i64 2147938868, i64 2147938896, i64 2147938916}
!9 = !{i64 2147950985, i64 2147951011, i64 2147951040, i64 2147951074, i64 2147951105, i64 2147951128}
!10 = !{i64 3089943}
!11 = !{i64 3090361}
!12 = !{!"branch_weights", i32 2000, i32 1}
