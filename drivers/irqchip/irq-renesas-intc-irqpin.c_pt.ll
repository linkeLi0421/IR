; ModuleID = '/llk/IR/drivers/irqchip/irq-renesas-intc-irqpin.c_pt.bc'
source_filename = "../drivers/irqchip/irq-renesas-intc-irqpin.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.intc_irqpin_config = type { i32 }
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
%struct.intc_irqpin_priv = type { [6 x %struct.intc_irqpin_iomem], [8 x %struct.intc_irqpin_irq], i32, ptr, %struct.irq_chip, ptr, %struct.atomic_t, i8, i8 }
%struct.intc_irqpin_iomem = type { ptr, ptr, ptr, i32 }
%struct.intc_irqpin_irq = type { i32, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_irq_renesas_intc_irqpin__171_600_intc_irqpin_init2 = internal global ptr @intc_irqpin_init, section ".initcall2.init", align 4
@intc_irqpin_device_driver = internal global %struct.platform_driver { ptr @intc_irqpin_probe, ptr @intc_irqpin_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @intc_irqpin_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @intc_irqpin_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_intc_irqpin_exit = internal global ptr @intc_irqpin_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author172 = internal constant [43 x i8] c"irq_renesas_intc_irqpin.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [73 x i8] c"irq_renesas_intc_irqpin.description=Renesas INTC External IRQ Pin Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [69 x i8] c"irq_renesas_intc_irqpin.file=drivers/irqchip/irq-renesas-intc-irqpin\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [39 x i8] c"irq_renesas_intc_irqpin.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [20 x i8] c"renesas_intc_irqpin\00", align 1
@intc_irqpin_dt_ids = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,intc-irqpin\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,intc-irqpin-r8a7778\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intc_irqpin_irlm_r8a777x }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,intc-irqpin-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intc_irqpin_irlm_r8a777x }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,intc-irqpin-r8a7740\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intc_irqpin_rmobile }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,intc-irqpin-sh73a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intc_irqpin_rmobile }, %struct.of_device_id zeroinitializer], align 4
@intc_irqpin_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @intc_irqpin_suspend, ptr null, ptr @intc_irqpin_suspend, ptr null, ptr @intc_irqpin_suspend, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"sense-bitfield-width\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"control-parent\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"not enough IOMEM resources\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"not enough IRQ resources\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"IOMEM size mismatch\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"failed to remap IOMEM\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"unable to select IRLM mode\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"intc-irqpin\00", align 1
@intc_irqpin_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @intc_irqpin_irq_domain_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"cannot initialize irq domain\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"failed to request low IRQ\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"driving %d irqs\0A\00", align 1
@intc_irqpin_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@intc_irqpin_sense = internal unnamed_addr constant [16 x i8] c"\00\11\10\14\13\00\00\00\12\00\00\00\00\00\00\00", align 1
@intc_irqpin_irlm_r8a777x = internal constant %struct.intc_irqpin_config { i32 23 }, align 4
@intc_irqpin_rmobile = internal constant %struct.intc_irqpin_config { i32 -1 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_intc_irqpin_exit, ptr @__initcall__kmod_irq_renesas_intc_irqpin__171_600_intc_irqpin_init2, ptr @intc_irqpin_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @intc_irqpin_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @intc_irqpin_device_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @intc_irqpin_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @intc_irqpin_device_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @intc_irqpin_probe(ptr noundef %0) #2 {
  %2 = alloca [6 x ptr], align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ %5, %1 ]
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 380, i32 noundef 3520) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %307, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %11, i32 0, i32 2
  %17 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.1, ptr noundef %16, i32 noundef 1, i32 noundef 0) #6
  %18 = load ptr, ptr %14, align 8
  %19 = tail call ptr @of_find_property(ptr noundef %18, ptr noundef nonnull @.str.2, ptr noundef null) #6
  %20 = icmp eq ptr %19, null
  %21 = load i32, ptr %16, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store i32 4, ptr %16, align 4
  br label %24

24:                                               ; preds = %23, %13
  %25 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %11, i32 0, i32 3
  store ptr %0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %26, align 8
  %27 = tail call ptr @of_device_get_match_data(ptr noundef %3) #6
  tail call void @pm_runtime_enable(ptr noundef %3) #6
  %28 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #6
  %29 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  store ptr %29, ptr %2, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %52, label %31

31:                                               ; preds = %24
  %32 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 1) #6
  %33 = getelementptr inbounds [6 x ptr], ptr %2, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  %34 = icmp eq ptr %32, null
  br i1 %34, label %52, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 2) #6
  %37 = getelementptr inbounds [6 x ptr], ptr %2, i32 0, i32 2
  store ptr %36, ptr %37, align 4
  %38 = icmp eq ptr %36, null
  br i1 %38, label %52, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 3) #6
  %41 = getelementptr inbounds [6 x ptr], ptr %2, i32 0, i32 3
  store ptr %40, ptr %41, align 4
  %42 = icmp eq ptr %40, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 4) #6
  %45 = getelementptr inbounds [6 x ptr], ptr %2, i32 0, i32 4
  store ptr %44, ptr %45, align 4
  %46 = icmp eq ptr %44, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 5) #6
  %49 = getelementptr inbounds [6 x ptr], ptr %2, i32 0, i32 5
  store ptr %48, ptr %49, align 4
  %50 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 0) #6
  %51 = icmp eq i32 %50, -6
  br i1 %51, label %115, label %53

52:                                               ; preds = %43, %39, %35, %31, %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #7
  br label %304

53:                                               ; preds = %47
  %54 = icmp slt i32 %50, 0
  br i1 %54, label %304, label %55

55:                                               ; preds = %53
  %56 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 0, i32 3
  store ptr %11, ptr %56, align 4
  %57 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 0, i32 1
  store i32 %50, ptr %57, align 4
  %58 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 1) #6
  %59 = icmp eq i32 %58, -6
  br i1 %59, label %107, label %60

60:                                               ; preds = %55
  %61 = icmp slt i32 %58, 0
  br i1 %61, label %304, label %62

62:                                               ; preds = %60
  %63 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 1, i32 3
  store ptr %11, ptr %63, align 4
  %64 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 1, i32 1
  store i32 %58, ptr %64, align 4
  %65 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 2) #6
  %66 = icmp eq i32 %65, -6
  br i1 %66, label %107, label %67

67:                                               ; preds = %62
  %68 = icmp slt i32 %65, 0
  br i1 %68, label %304, label %69

69:                                               ; preds = %67
  %70 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 2, i32 3
  store ptr %11, ptr %70, align 4
  %71 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 2, i32 1
  store i32 %65, ptr %71, align 4
  %72 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 3) #6
  %73 = icmp eq i32 %72, -6
  br i1 %73, label %107, label %74

74:                                               ; preds = %69
  %75 = icmp slt i32 %72, 0
  br i1 %75, label %304, label %76

76:                                               ; preds = %74
  %77 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 3, i32 3
  store ptr %11, ptr %77, align 4
  %78 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 3, i32 1
  store i32 %72, ptr %78, align 4
  %79 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 4) #6
  %80 = icmp eq i32 %79, -6
  br i1 %80, label %107, label %81

81:                                               ; preds = %76
  %82 = icmp slt i32 %79, 0
  br i1 %82, label %304, label %83

83:                                               ; preds = %81
  %84 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 4, i32 3
  store ptr %11, ptr %84, align 4
  %85 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 4, i32 1
  store i32 %79, ptr %85, align 4
  %86 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 5) #6
  %87 = icmp eq i32 %86, -6
  br i1 %87, label %107, label %88

88:                                               ; preds = %83
  %89 = icmp slt i32 %86, 0
  br i1 %89, label %304, label %90

90:                                               ; preds = %88
  %91 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 5, i32 3
  store ptr %11, ptr %91, align 4
  %92 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 5, i32 1
  store i32 %86, ptr %92, align 4
  %93 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 6) #6
  %94 = icmp eq i32 %93, -6
  br i1 %94, label %107, label %95

95:                                               ; preds = %90
  %96 = icmp slt i32 %93, 0
  br i1 %96, label %304, label %97

97:                                               ; preds = %95
  %98 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 6, i32 3
  store ptr %11, ptr %98, align 4
  %99 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 6, i32 1
  store i32 %93, ptr %99, align 4
  %100 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 7) #6
  %101 = icmp eq i32 %100, -6
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = icmp slt i32 %100, 0
  br i1 %103, label %304, label %104

104:                                              ; preds = %102
  %105 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 7, i32 3
  store ptr %11, ptr %105, align 4
  %106 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 7, i32 1
  store i32 %100, ptr %106, align 4
  br label %107

107:                                              ; preds = %104, %97, %90, %83, %76, %69, %62, %55
  %108 = phi i1 [ false, %104 ], [ false, %97 ], [ false, %90 ], [ false, %83 ], [ false, %76 ], [ false, %69 ], [ true, %62 ], [ false, %55 ]
  %109 = phi i1 [ false, %104 ], [ false, %97 ], [ false, %90 ], [ false, %83 ], [ false, %76 ], [ true, %69 ], [ false, %62 ], [ false, %55 ]
  %110 = phi i1 [ false, %104 ], [ false, %97 ], [ false, %90 ], [ false, %83 ], [ true, %76 ], [ false, %69 ], [ false, %62 ], [ false, %55 ]
  %111 = phi i1 [ false, %104 ], [ false, %97 ], [ false, %90 ], [ true, %83 ], [ false, %76 ], [ false, %69 ], [ false, %62 ], [ false, %55 ]
  %112 = phi i1 [ false, %104 ], [ false, %97 ], [ true, %90 ], [ false, %83 ], [ false, %76 ], [ false, %69 ], [ false, %62 ], [ false, %55 ]
  %113 = phi i1 [ false, %104 ], [ true, %97 ], [ false, %90 ], [ false, %83 ], [ false, %76 ], [ false, %69 ], [ false, %62 ], [ false, %55 ]
  %114 = phi i32 [ 8, %104 ], [ 7, %97 ], [ 6, %90 ], [ 5, %83 ], [ 4, %76 ], [ 3, %69 ], [ 2, %62 ], [ 1, %55 ]
  br label %116

115:                                              ; preds = %47
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #7
  br label %304

116:                                              ; preds = %146, %107
  %117 = phi ptr [ %148, %146 ], [ %29, %107 ]
  %118 = phi i32 [ %144, %146 ], [ 0, %107 ]
  %119 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %11, i32 0, i32 %118
  %120 = icmp eq ptr %117, null
  br i1 %120, label %143, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.resource, ptr %117, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = load i32, ptr %117, align 4
  %125 = add i32 %123, 1
  %126 = sub i32 %125, %124
  switch i32 %126, label %128 [
    i32 1, label %129
    i32 4, label %127
  ]

127:                                              ; preds = %121
  br label %129

128:                                              ; preds = %121
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #7
  br label %304

129:                                              ; preds = %127, %121
  %130 = phi i32 [ 32, %127 ], [ 8, %121 ]
  %131 = phi ptr [ @intc_irqpin_read32, %127 ], [ @intc_irqpin_read8, %121 ]
  %132 = phi ptr [ @intc_irqpin_write32, %127 ], [ @intc_irqpin_write8, %121 ]
  %133 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %11, i32 0, i32 %118, i32 3
  store i32 %130, ptr %133, align 4
  %134 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %11, i32 0, i32 %118, i32 1
  store ptr %131, ptr %134, align 4
  %135 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %11, i32 0, i32 %118, i32 2
  store ptr %132, ptr %135, align 4
  %136 = load i32, ptr %117, align 4
  %137 = load i32, ptr %122, align 4
  %138 = sub i32 1, %136
  %139 = add i32 %138, %137
  %140 = tail call ptr @devm_ioremap(ptr noundef %3, i32 noundef %136, i32 noundef %139) #6
  store ptr %140, ptr %119, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %129
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #7
  br label %304

143:                                              ; preds = %129, %116
  %144 = add nuw nsw i32 %118, 1
  %145 = icmp eq i32 %144, 6
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = getelementptr [6 x ptr], ptr %2, i32 0, i32 %144
  %148 = load ptr, ptr %147, align 4
  br label %116

149:                                              ; preds = %143
  %150 = icmp eq ptr %27, null
  br i1 %150, label %158, label %151

151:                                              ; preds = %149
  %152 = load i32, ptr %27, align 4
  %153 = icmp sgt i32 %152, -1
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = icmp eq ptr %48, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %154
  tail call fastcc void @intc_irqpin_read_modify_write(ptr noundef nonnull %11, i32 noundef 5, i32 noundef %152, i32 noundef 1, i32 noundef 1)
  br label %158

157:                                              ; preds = %154
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.7) #7
  br label %158

158:                                              ; preds = %157, %156, %151, %149
  %159 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %11, i32 0, i32 1
  %160 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %11, i32 0, i32 1, i32 1
  %161 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %11, i32 0, i32 1, i32 2
  br label %162

162:                                              ; preds = %162, %158
  %163 = phi i32 [ 0, %158 ], [ %175, %162 ]
  %164 = mul nsw i32 %163, -4
  %165 = add nsw i32 %164, 28
  %166 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @intc_irqpin_lock) #6
  %167 = load ptr, ptr %160, align 4
  %168 = load ptr, ptr %159, align 4
  %169 = tail call i32 %167(ptr noundef %168) #6
  %170 = shl i32 15, %165
  %171 = xor i32 %170, -1
  %172 = and i32 %169, %171
  %173 = load ptr, ptr %161, align 4
  %174 = load ptr, ptr %159, align 4
  tail call void %173(ptr noundef %174, i32 noundef %172) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @intc_irqpin_lock, i32 noundef %166) #6
  %175 = add nuw nsw i32 %163, 1
  %176 = icmp eq i32 %175, %114
  br i1 %176, label %177, label %162

177:                                              ; preds = %162
  %178 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %11, i32 0, i32 2
  %179 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %11, i32 0, i32 2, i32 2
  %180 = load ptr, ptr %179, align 4
  %181 = load ptr, ptr %178, align 4
  tail call void %180(ptr noundef %181, i32 noundef 0) #6
  %182 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 0, i32 1
  %183 = load i32, ptr %182, align 4
  %184 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %11, i32 0, i32 7
  %185 = load i8, ptr %184, align 4
  %186 = or i8 %185, 1
  store i8 %186, ptr %184, align 4
  br i1 %59, label %197, label %190

187:                                              ; preds = %190
  %188 = add nuw nsw i32 %191, 1
  %189 = icmp eq i32 %188, %114
  br i1 %189, label %197, label %190

190:                                              ; preds = %187, %177
  %191 = phi i32 [ %188, %187 ], [ 1, %177 ]
  %192 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 %191, i32 1
  %193 = load i32, ptr %192, align 4
  %194 = icmp eq i32 %183, %193
  br i1 %194, label %187, label %195

195:                                              ; preds = %190
  %196 = and i8 %185, -2
  store i8 %196, ptr %184, align 4
  br label %197

197:                                              ; preds = %195, %187, %177
  %198 = phi i8 [ %186, %177 ], [ %196, %195 ], [ %186, %187 ]
  %199 = and i8 %198, 1
  %200 = icmp eq i8 %199, 0
  %201 = select i1 %200, ptr @intc_irqpin_irq_enable, ptr @intc_irqpin_shared_irq_enable
  %202 = select i1 %200, ptr @intc_irqpin_irq_disable, ptr @intc_irqpin_shared_irq_disable
  %203 = select i1 %20, ptr %201, ptr @intc_irqpin_irq_enable_force
  %204 = select i1 %20, ptr %202, ptr @intc_irqpin_irq_disable_force
  %205 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %11, i32 0, i32 4
  %206 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %11, i32 0, i32 4, i32 1
  store ptr @.str.8, ptr %206, align 4
  store ptr %3, ptr %205, align 4
  %207 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %11, i32 0, i32 4, i32 7
  store ptr %204, ptr %207, align 4
  %208 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %11, i32 0, i32 4, i32 9
  store ptr %203, ptr %208, align 4
  %209 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %11, i32 0, i32 4, i32 13
  store ptr @intc_irqpin_irq_set_type, ptr %209, align 4
  %210 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %11, i32 0, i32 4, i32 14
  store ptr @intc_irqpin_irq_set_wake, ptr %210, align 4
  %211 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %11, i32 0, i32 4, i32 33
  store i32 4, ptr %211, align 4
  %212 = load ptr, ptr %14, align 8
  %213 = icmp eq ptr %212, null
  %214 = getelementptr inbounds %struct.device_node, ptr %212, i32 0, i32 3
  %215 = select i1 %213, ptr null, ptr %214
  %216 = tail call ptr @irq_domain_create_simple(ptr noundef %215, i32 noundef %114, i32 noundef 0, ptr noundef nonnull @intc_irqpin_irq_domain_ops, ptr noundef nonnull %11) #6
  %217 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %11, i32 0, i32 5
  store ptr %216, ptr %217, align 4
  %218 = icmp eq ptr %216, null
  br i1 %218, label %219, label %220

219:                                              ; preds = %197
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #7
  br label %304

220:                                              ; preds = %197
  %221 = load i8, ptr %184, align 4
  %222 = and i8 %221, 1
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %277, label %224

224:                                              ; preds = %220
  %225 = load i32, ptr %182, align 4
  %226 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %225, ptr noundef nonnull @intc_irqpin_shared_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %10, ptr noundef nonnull %11) #6
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %283, label %302

228:                                              ; preds = %277
  br i1 %59, label %283, label %229

229:                                              ; preds = %228
  %230 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 1
  %231 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 1, i32 1
  %232 = load i32, ptr %231, align 4
  %233 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %232, ptr noundef nonnull @intc_irqpin_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %10, ptr noundef %230) #6
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %302

235:                                              ; preds = %229
  br i1 %108, label %283, label %236

236:                                              ; preds = %235
  %237 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 2
  %238 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 2, i32 1
  %239 = load i32, ptr %238, align 4
  %240 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %239, ptr noundef nonnull @intc_irqpin_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %10, ptr noundef %237) #6
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %302

242:                                              ; preds = %236
  br i1 %109, label %283, label %243

243:                                              ; preds = %242
  %244 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 3
  %245 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 3, i32 1
  %246 = load i32, ptr %245, align 4
  %247 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %246, ptr noundef nonnull @intc_irqpin_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %10, ptr noundef %244) #6
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %302

249:                                              ; preds = %243
  br i1 %110, label %283, label %250

250:                                              ; preds = %249
  %251 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 4
  %252 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 4, i32 1
  %253 = load i32, ptr %252, align 4
  %254 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %253, ptr noundef nonnull @intc_irqpin_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %10, ptr noundef %251) #6
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %302

256:                                              ; preds = %250
  br i1 %111, label %283, label %257

257:                                              ; preds = %256
  %258 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 5
  %259 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 5, i32 1
  %260 = load i32, ptr %259, align 4
  %261 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %260, ptr noundef nonnull @intc_irqpin_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %10, ptr noundef %258) #6
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %302

263:                                              ; preds = %257
  br i1 %112, label %283, label %264

264:                                              ; preds = %263
  %265 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 6
  %266 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 6, i32 1
  %267 = load i32, ptr %266, align 4
  %268 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %267, ptr noundef nonnull @intc_irqpin_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %10, ptr noundef %265) #6
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %302

270:                                              ; preds = %264
  br i1 %113, label %283, label %271

271:                                              ; preds = %270
  %272 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 7
  %273 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 7, i32 1
  %274 = load i32, ptr %273, align 4
  %275 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %274, ptr noundef nonnull @intc_irqpin_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %10, ptr noundef %272) #6
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %283, label %302

277:                                              ; preds = %220
  %278 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 0
  %279 = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 0, i32 1
  %280 = load i32, ptr %279, align 4
  %281 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %280, ptr noundef nonnull @intc_irqpin_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %10, ptr noundef %278) #6
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %228, label %302

283:                                              ; preds = %271, %270, %263, %256, %249, %242, %235, %228, %224
  %284 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %11, i32 0, i32 1
  %285 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %11, i32 0, i32 1, i32 1
  %286 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %11, i32 0, i32 1, i32 2
  br label %287

287:                                              ; preds = %287, %283
  %288 = phi i32 [ 0, %283 ], [ %299, %287 ]
  %289 = mul nsw i32 %288, -4
  %290 = add nsw i32 %289, 28
  %291 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @intc_irqpin_lock) #6
  %292 = load ptr, ptr %285, align 4
  %293 = load ptr, ptr %284, align 4
  %294 = tail call i32 %292(ptr noundef %293) #6
  %295 = shl i32 15, %290
  %296 = or i32 %294, %295
  %297 = load ptr, ptr %286, align 4
  %298 = load ptr, ptr %284, align 4
  tail call void %297(ptr noundef %298, i32 noundef %296) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @intc_irqpin_lock, i32 noundef %291) #6
  %299 = add nuw nsw i32 %288, 1
  %300 = icmp eq i32 %299, %114
  br i1 %300, label %301, label %287

301:                                              ; preds = %287
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef %114) #7
  br label %307

302:                                              ; preds = %277, %271, %264, %257, %250, %243, %236, %229, %224
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #7
  %303 = load ptr, ptr %217, align 4
  tail call void @irq_domain_remove(ptr noundef %303) #6
  br label %304

304:                                              ; preds = %302, %219, %142, %128, %115, %102, %95, %88, %81, %74, %67, %60, %53, %52
  %305 = phi i32 [ -22, %52 ], [ -22, %115 ], [ -22, %128 ], [ -6, %142 ], [ -2, %302 ], [ -6, %219 ], [ %50, %53 ], [ %58, %60 ], [ %65, %67 ], [ %72, %74 ], [ %79, %81 ], [ %86, %88 ], [ %93, %95 ], [ %100, %102 ]
  %306 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #6
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #6
  br label %307

307:                                              ; preds = %304, %301, %9
  %308 = phi i32 [ %305, %304 ], [ 0, %301 ], [ -12, %9 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %308
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @intc_irqpin_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @irq_domain_remove(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call i32 @__pm_runtime_idle(ptr noundef %6, i32 noundef 5) #6
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @intc_irqpin_read8(ptr noundef %0) #2 {
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %0) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %3 = zext i8 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @intc_irqpin_write8(ptr noundef %0, i32 noundef %1) #2 {
  %3 = trunc i32 %1 to i8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %0, i8 %3) #6, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @intc_irqpin_read32(ptr noundef %0) #2 {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @intc_irqpin_write32(ptr noundef %0, i32 noundef %1) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %1) #6, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @intc_irqpin_read_modify_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @intc_irqpin_lock) #6
  %7 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %0, i32 0, i32 %1
  %8 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %0, i32 0, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = tail call i32 %9(ptr noundef %10) #6
  %12 = shl nsw i32 -1, %3
  %13 = xor i32 %12, -1
  %14 = shl i32 %13, %2
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  %17 = shl i32 %4, %2
  %18 = or i32 %16, %17
  %19 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %0, i32 0, i32 %1, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %7, align 4
  tail call void %20(ptr noundef %21, i32 noundef %18) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @intc_irqpin_lock, i32 noundef %6) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @intc_irqpin_irq_enable_force(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr %struct.intc_irqpin_priv, ptr %3, i32 0, i32 1, i32 %5, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %3, i32 0, i32 4, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %5, -1
  %11 = add i32 %9, %10
  %12 = shl nuw i32 1, %11
  %13 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %3, i32 0, i32 4
  %14 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %3, i32 0, i32 4, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %13, align 4
  tail call void %15(ptr noundef %16, i32 noundef %12) #6
  %17 = tail call ptr @irq_get_irq_data(i32 noundef %7) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.irq_data, ptr %17, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = phi ptr [ %21, %19 ], [ null, %1 ]
  %24 = getelementptr inbounds %struct.irq_chip, ptr %23, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = tail call ptr @irq_get_irq_data(i32 noundef %7) #6
  tail call void %25(ptr noundef %26) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @intc_irqpin_irq_disable_force(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr %struct.intc_irqpin_priv, ptr %3, i32 0, i32 1, i32 %5, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @irq_get_irq_data(i32 noundef %7) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.irq_data, ptr %8, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = phi ptr [ %12, %10 ], [ null, %1 ]
  %15 = getelementptr inbounds %struct.irq_chip, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @irq_get_irq_data(i32 noundef %7) #6
  tail call void %16(ptr noundef %17) #6
  %18 = load ptr, ptr %2, align 4
  %19 = load i32, ptr %4, align 4
  %20 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %18, i32 0, i32 3, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = xor i32 %19, -1
  %23 = add i32 %21, %22
  %24 = shl nuw i32 1, %23
  %25 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %18, i32 0, i32 3
  %26 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %18, i32 0, i32 3, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %25, align 4
  tail call void %27(ptr noundef %28, i32 noundef %24) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @intc_irqpin_irq_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %3, i32 0, i32 4, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = xor i32 %5, -1
  %9 = add i32 %7, %8
  %10 = shl nuw i32 1, %9
  %11 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %3, i32 0, i32 4
  %12 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %3, i32 0, i32 4, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %11, align 4
  tail call void %13(ptr noundef %14, i32 noundef %10) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @intc_irqpin_irq_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %3, i32 0, i32 3, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = xor i32 %5, -1
  %9 = add i32 %7, %8
  %10 = shl nuw i32 1, %9
  %11 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %3, i32 0, i32 3
  %12 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %3, i32 0, i32 3, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %11, align 4
  tail call void %13(ptr noundef %14, i32 noundef %10) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @intc_irqpin_shared_irq_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %3, i32 0, i32 4, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = xor i32 %5, -1
  %9 = add i32 %7, %8
  %10 = shl nuw i32 1, %9
  %11 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %3, i32 0, i32 4
  %12 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %3, i32 0, i32 4, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %11, align 4
  tail call void %13(ptr noundef %14, i32 noundef %10) #6
  %15 = shl nuw i32 1, %5
  %16 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %3, i32 0, i32 8
  %17 = load i8, ptr %16, align 1
  %18 = trunc i32 %15 to i8
  %19 = xor i8 %18, -1
  %20 = and i8 %17, %19
  store i8 %20, ptr %16, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @intc_irqpin_shared_irq_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %3, i32 0, i32 3, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = xor i32 %5, -1
  %9 = add i32 %7, %8
  %10 = shl nuw i32 1, %9
  %11 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %3, i32 0, i32 3
  %12 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %3, i32 0, i32 3, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %11, align 4
  tail call void %13(ptr noundef %14, i32 noundef %10) #6
  %15 = shl nuw i32 1, %5
  %16 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %3, i32 0, i32 8
  %17 = load i8, ptr %16, align 1
  %18 = trunc i32 %15 to i8
  %19 = or i8 %17, %18
  store i8 %19, ptr %16, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @intc_irqpin_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 15
  %4 = getelementptr [16 x i8], ptr @intc_irqpin_sense, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = zext i8 %5 to i32
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %2
  %12 = xor i32 %8, 16
  %13 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %7, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = shl nuw i32 1, %14
  %16 = icmp sgt i32 %15, %12
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = xor i32 %19, -1
  %21 = mul i32 %14, %20
  %22 = add i32 %21, 32
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @intc_irqpin_lock) #6
  %24 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %7, i32 0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %7, align 4
  %27 = tail call i32 %25(ptr noundef %26) #6
  %28 = shl nsw i32 -1, %14
  %29 = xor i32 %28, -1
  %30 = shl i32 %29, %22
  %31 = xor i32 %30, -1
  %32 = and i32 %27, %31
  %33 = shl i32 %12, %22
  %34 = or i32 %32, %33
  %35 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %7, i32 0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %7, align 4
  tail call void %36(ptr noundef %37, i32 noundef %34) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @intc_irqpin_lock, i32 noundef %23) #6
  br label %38

38:                                               ; preds = %17, %11, %2
  %39 = phi i32 [ -22, %2 ], [ 0, %17 ], [ -22, %11 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @intc_irqpin_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.intc_irqpin_priv, ptr %4, i32 0, i32 1, i32 %6, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef %1) #6
  %10 = icmp eq i32 %1, 0
  %11 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %4, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #6
  br i1 %10, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #6, !srcloc !16
  br label %16

14:                                               ; preds = %2
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #6, !srcloc !17
  br label %16

16:                                               ; preds = %14, %12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @intc_irqpin_shared_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 2
  %4 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 %5(ptr noundef %6) #6
  %8 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %1, i32 0, i32 8
  br label %9

9:                                                ; preds = %50, %2
  %10 = phi i32 [ 0, %2 ], [ %52, %50 ]
  %11 = phi i32 [ 0, %2 ], [ %51, %50 ]
  %12 = sub nuw nsw i32 7, %10
  %13 = shl nuw nsw i32 1, %12
  %14 = and i32 %13, %7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %50, label %16

16:                                               ; preds = %9
  %17 = shl nuw nsw i32 1, %10
  %18 = load i8, ptr %8, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %17, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %16
  %23 = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %10
  %24 = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %10, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %23, align 4
  %27 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %25, i32 0, i32 2, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = xor i32 %26, -1
  %30 = add i32 %28, %29
  %31 = shl nuw i32 1, %30
  %32 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %25, i32 0, i32 2
  %33 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %25, i32 0, i32 2, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %32, align 4
  %36 = tail call i32 %34(ptr noundef %35) #6
  %37 = and i32 %36, %31
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %22
  %40 = xor i32 %31, -1
  %41 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %25, i32 0, i32 2, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %32, align 4
  tail call void %42(ptr noundef %43, i32 noundef %40) #6
  %44 = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %10, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 @generic_handle_irq(i32 noundef %45) #6
  br label %47

47:                                               ; preds = %39, %22
  %48 = phi i32 [ 1, %39 ], [ 0, %22 ]
  %49 = or i32 %48, %11
  br label %50

50:                                               ; preds = %47, %16, %9
  %51 = phi i32 [ %11, %16 ], [ %49, %47 ], [ %11, %9 ]
  %52 = add nuw nsw i32 %10, 1
  %53 = icmp eq i32 %52, 8
  br i1 %53, label %54, label %9

54:                                               ; preds = %50
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @intc_irqpin_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.intc_irqpin_irq, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %4, i32 0, i32 2, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = xor i32 %5, -1
  %9 = add i32 %7, %8
  %10 = shl nuw i32 1, %9
  %11 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %4, i32 0, i32 2
  %12 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %4, i32 0, i32 2, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = tail call i32 %13(ptr noundef %14) #6
  %16 = and i32 %15, %10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = xor i32 %10, -1
  %20 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %4, i32 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %11, align 4
  tail call void %21(ptr noundef %22, i32 noundef %19) #6
  %23 = getelementptr inbounds %struct.intc_irqpin_irq, ptr %1, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @generic_handle_irq(i32 noundef %24) #6
  br label %26

26:                                               ; preds = %18, %2
  %27 = phi i32 [ 1, %18 ], [ 0, %2 ]
  ret i32 %27
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @intc_irqpin_irq_domain_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.intc_irqpin_priv, ptr %5, i32 0, i32 1, i32 %2
  %7 = getelementptr %struct.intc_irqpin_priv, ptr %5, i32 0, i32 1, i32 %2, i32 2
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %6, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %8) #6
  %10 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %5, i32 0, i32 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef %10, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  ret i32 0
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
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @intc_irqpin_suspend(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 7
  %9 = load i8, ptr %8, align 4
  %10 = or i8 %9, 1
  store i8 %10, ptr %8, align 4
  br label %11

11:                                               ; preds = %7, %1
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 3836584}
!9 = !{i64 2151367821}
!10 = !{i64 2151369119}
!11 = !{i64 3836189}
!12 = !{i64 3836804}
!13 = !{i64 2151368767}
!14 = !{i64 2151369989}
!15 = !{i64 3836386}
!16 = !{i64 2147938721, i64 2147938747, i64 2147938776, i64 2147938810, i64 2147938841, i64 2147938864}
!17 = !{i64 2147941078, i64 2147941104, i64 2147941133, i64 2147941167, i64 2147941198, i64 2147941221}
