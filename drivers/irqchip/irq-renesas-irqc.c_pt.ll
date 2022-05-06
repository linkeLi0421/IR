; ModuleID = '/llk/IR/drivers/irqchip/irq-renesas-irqc.c_pt.bc'
source_filename = "../drivers/irqchip/irq-renesas-irqc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.irqc_priv = type { ptr, ptr, [32 x %struct.irqc_irq], i32, ptr, ptr, ptr, %struct.atomic_t }
%struct.irqc_irq = type { i32, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_irq_renesas_irqc__172_262_irqc_init2 = internal global ptr @irqc_init, section ".initcall2.init", align 4
@irqc_device_driver = internal global %struct.platform_driver { ptr @irqc_probe, ptr @irqc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @irqc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irqc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_irqc_exit = internal global ptr @irqc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author173 = internal constant [36 x i8] c"irq_renesas_irqc.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [49 x i8] c"irq_renesas_irqc.description=Renesas IRQC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [55 x i8] c"irq_renesas_irqc.file=drivers/irqchip/irq-renesas-irqc\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [32 x i8] c"irq_renesas_irqc.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"renesas_irqc\00", align 1
@irqc_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,irqc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@irqc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @irqc_suspend, ptr null, ptr @irqc_suspend, ptr null, ptr @irqc_suspend, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"not enough IRQ resources\0A\00", align 1
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot initialize irq domain\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"irqc\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"cannot allocate generic chip\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"driving %d irqs\0A\00", align 1
@irqc_sense = internal unnamed_addr constant [16 x i8] c"\00\08\04\0C\02\00\00\00\01\00\00\00\00\00\00\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_irqc_exit, ptr @__initcall__kmod_irq_renesas_irqc__172_262_irqc_init2, ptr @irqc_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @irqc_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @irqc_device_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @irqc_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @irqc_device_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irqc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ %4, %1 ]
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 412, i32 noundef 3520) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %103, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.irqc_priv, ptr %10, i32 0, i32 4
  store ptr %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %14, align 8
  tail call void @pm_runtime_enable(ptr noundef %2) #5
  %15 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #5
  br label %18

16:                                               ; preds = %24
  %17 = getelementptr inbounds %struct.irqc_priv, ptr %10, i32 0, i32 3
  store i32 32, ptr %17, align 4
  br label %34

18:                                               ; preds = %24, %12
  %19 = phi i32 [ 0, %12 ], [ %28, %24 ]
  %20 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef %19) #5
  %21 = icmp eq i32 %20, -6
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = icmp slt i32 %20, 0
  br i1 %23, label %100, label %24

24:                                               ; preds = %22
  %25 = getelementptr %struct.irqc_priv, ptr %10, i32 0, i32 2, i32 %19
  %26 = getelementptr %struct.irqc_priv, ptr %10, i32 0, i32 2, i32 %19, i32 2
  store ptr %10, ptr %26, align 4
  store i32 %19, ptr %25, align 4
  %27 = getelementptr %struct.irqc_priv, ptr %10, i32 0, i32 2, i32 %19, i32 1
  store i32 %20, ptr %27, align 4
  %28 = add nuw nsw i32 %19, 1
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %16, label %18

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.irqc_priv, ptr %10, i32 0, i32 3
  store i32 %19, ptr %31, align 4
  %32 = icmp eq i32 %19, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %100

34:                                               ; preds = %30, %16
  %35 = phi ptr [ %17, %16 ], [ %31, %30 ]
  %36 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  store ptr %36, ptr %10, align 4
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = ptrtoint ptr %36 to i32
  br label %100

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.irqc_priv, ptr %10, i32 0, i32 1
  store ptr %36, ptr %41, align 4
  %42 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %43 = load ptr, ptr %42, align 8
  %44 = load i32, ptr %35, align 4
  %45 = icmp eq ptr %43, null
  %46 = getelementptr inbounds %struct.device_node, ptr %43, i32 0, i32 3
  %47 = select i1 %45, ptr null, ptr %46
  %48 = tail call ptr @__irq_domain_add(ptr noundef %47, i32 noundef %44, i32 noundef %44, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef nonnull %10) #5
  %49 = getelementptr inbounds %struct.irqc_priv, ptr %10, i32 0, i32 6
  store ptr %48, ptr %49, align 4
  %50 = icmp eq ptr %48, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  br label %100

52:                                               ; preds = %40
  %53 = load i32, ptr %35, align 4
  %54 = icmp ugt i32 %53, 32
  br i1 %54, label %55, label %56, !prof !8

55:                                               ; preds = %52
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-renesas-irqc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 181, 0\0A.popsection", ""() #5, !srcloc !9
  unreachable

56:                                               ; preds = %52
  %57 = tail call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %48, i32 noundef %53, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @handle_level_irq, i32 noundef 0, i32 noundef 0, i32 noundef 2) #5
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %96

59:                                               ; preds = %56
  %60 = load ptr, ptr %49, align 4
  %61 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %60, i32 noundef 0) #5
  %62 = getelementptr inbounds %struct.irqc_priv, ptr %10, i32 0, i32 5
  store ptr %61, ptr %62, align 4
  %63 = load ptr, ptr %41, align 4
  %64 = getelementptr inbounds %struct.irq_chip_generic, ptr %61, i32 0, i32 1
  store ptr %63, ptr %64, align 4
  %65 = load ptr, ptr %62, align 4
  %66 = getelementptr inbounds %struct.irq_chip_generic, ptr %65, i32 2, i32 14
  store i32 8, ptr %66, align 4
  %67 = load ptr, ptr %62, align 4
  %68 = getelementptr inbounds %struct.irq_chip_generic, ptr %67, i32 2, i32 15
  store i32 4, ptr %68, align 4
  %69 = load ptr, ptr %62, align 4
  %70 = getelementptr inbounds %struct.irq_chip_generic, ptr %69, i32 0, i32 19
  store ptr %2, ptr %70, align 4
  %71 = load ptr, ptr %62, align 4
  %72 = getelementptr inbounds %struct.irq_chip_generic, ptr %71, i32 1, i32 7
  store ptr @irq_gc_mask_disable_reg, ptr %72, align 4
  %73 = load ptr, ptr %62, align 4
  %74 = getelementptr inbounds %struct.irq_chip_generic, ptr %73, i32 1, i32 9
  store ptr @irq_gc_unmask_enable_reg, ptr %74, align 4
  %75 = load ptr, ptr %62, align 4
  %76 = getelementptr inbounds %struct.irq_chip_generic, ptr %75, i32 1, i32 13
  store ptr @irqc_irq_set_type, ptr %76, align 4
  %77 = load ptr, ptr %62, align 4
  %78 = getelementptr inbounds %struct.irq_chip_generic, ptr %77, i32 1, i32 14
  store ptr @irqc_irq_set_wake, ptr %78, align 4
  %79 = load ptr, ptr %62, align 4
  %80 = getelementptr inbounds %struct.irq_chip_generic, ptr %79, i32 2, i32 13
  store i32 4, ptr %80, align 4
  %81 = load i32, ptr %35, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %94, label %87

83:                                               ; preds = %87
  %84 = add nuw i32 %88, 1
  %85 = load i32, ptr %35, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83, %59
  %88 = phi i32 [ %84, %83 ], [ 0, %59 ]
  %89 = getelementptr %struct.irqc_priv, ptr %10, i32 0, i32 2, i32 %88
  %90 = getelementptr %struct.irqc_priv, ptr %10, i32 0, i32 2, i32 %88, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %91, ptr noundef nonnull @irqc_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %9, ptr noundef %89) #5
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %83, label %96

94:                                               ; preds = %83, %59
  %95 = phi i32 [ 0, %59 ], [ %85, %83 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %95) #6
  br label %103

96:                                               ; preds = %87, %56
  %97 = phi ptr [ @.str.4, %56 ], [ @.str.5, %87 ]
  %98 = phi i32 [ %57, %56 ], [ -2, %87 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull %97) #6
  %99 = load ptr, ptr %49, align 4
  tail call void @irq_domain_remove(ptr noundef %99) #5
  br label %100

100:                                              ; preds = %96, %51, %38, %33, %22
  %101 = phi i32 [ -22, %33 ], [ %39, %38 ], [ %98, %96 ], [ -6, %51 ], [ %20, %22 ]
  %102 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 5) #5
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #5
  br label %103

103:                                              ; preds = %100, %94, %8
  %104 = phi i32 [ %101, %100 ], [ 0, %94 ], [ -12, %8 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irqc_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.irqc_priv, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void @irq_domain_remove(ptr noundef %5) #5
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call i32 @__pm_runtime_idle(ptr noundef %6, i32 noundef 5) #5
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_disable_reg(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_unmask_enable_reg(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irqc_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 15
  %4 = lshr i32 65249, %3
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = getelementptr [16 x i8], ptr @irqc_sense, i32 0, i32 %3
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.irq_domain, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = shl i32 %11, 2
  %18 = add i32 %17, 384
  %19 = getelementptr i8, ptr %16, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %21 = and i32 %20, -64
  %22 = zext i8 %9 to i32
  %23 = or i32 %21, %22
  %24 = load ptr, ptr %15, align 4
  %25 = getelementptr i8, ptr %24, i32 %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #5, !srcloc !13
  br label %26

26:                                               ; preds = %7, %2
  %27 = phi i32 [ 0, %7 ], [ -22, %2 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irqc_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_domain, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.irqc_priv, ptr %6, i32 0, i32 2, i32 %8, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @irq_set_irq_wake(i32 noundef %10, i32 noundef %1) #5
  %12 = icmp eq i32 %1, 0
  %13 = getelementptr inbounds %struct.irqc_priv, ptr %6, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #5
  br i1 %12, label %16, label %14

14:                                               ; preds = %2
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #5, !srcloc !14
  br label %18

16:                                               ; preds = %2
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #5, !srcloc !15
  br label %18

18:                                               ; preds = %16, %14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irqc_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.irqc_irq, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = shl nuw i32 1, %5
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 256
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %10 = and i32 %9, %6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %6) #5, !srcloc !13
  %15 = getelementptr inbounds %struct.irqc_priv, ptr %4, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %1, align 4
  %18 = tail call i32 @generic_handle_domain_irq(ptr noundef %16, i32 noundef %17) #5
  br label %19

19:                                               ; preds = %12, %2
  %20 = phi i32 [ 1, %12 ], [ 0, %2 ]
  ret i32 %20
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @irqc_suspend(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.irqc_priv, ptr %3, i32 0, i32 7
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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2151680125, i64 2151680624, i64 2151680162, i64 2151680218, i64 2151680252, i64 2151680276, i64 2151680317, i64 2151680338, i64 2151680366, i64 2151680400}
!10 = !{i64 3713247}
!11 = !{i64 2151252700}
!12 = !{i64 2151253922}
!13 = !{i64 3712829}
!14 = !{i64 2148167821, i64 2148167847, i64 2148167876, i64 2148167910, i64 2148167941, i64 2148167964}
!15 = !{i64 2148170178, i64 2148170204, i64 2148170233, i64 2148170267, i64 2148170298, i64 2148170321}
