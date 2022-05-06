; ModuleID = '/llk/IR/drivers/irqchip/irq-brcmstb-l2.c_pt.bc'
source_filename = "../drivers/irqchip/irq-brcmstb-l2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.brcmstb_intc_init_params = type { ptr, i32, i32, i32, i32, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmstb_l2_intc_data = type { ptr, ptr, i32, i32, i8, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__initcall__kmod_irq_brcmstb_l2__171_290_brcmstb_l2_driver_init6 = internal global ptr @brcmstb_l2_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_description172 = internal constant [72 x i8] c"irq_brcmstb_l2.description=Broadcom STB generic L2 interrupt controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [51 x i8] c"irq_brcmstb_l2.file=drivers/irqchip/irq-brcmstb-l2\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [30 x i8] c"irq_brcmstb_l2.license=GPL v2\00", section ".modinfo", align 1
@brcmstb_l2_driver = internal global %struct.platform_driver { ptr @platform_irqchip_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @brcmstb_l2_irqchip_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"brcmstb_l2\00", align 1
@brcmstb_l2_irqchip_match_table = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,l2-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @brcmstb_l2_edge_intc_of_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,hif-spi-l2-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @brcmstb_l2_edge_intc_of_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,upg-aux-aon-l2-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @brcmstb_l2_edge_intc_of_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7271-l2-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @brcmstb_l2_lvl_intc_of_init }, %struct.of_device_id zeroinitializer], align 4
@l2_edge_intc_init = internal constant %struct.brcmstb_intc_init_params { ptr @handle_edge_irq, i32 0, i32 8, i32 12, i32 16, i32 20 }, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"\013irq_brcmstb_l2: failed to remap intc L2 registers\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"brcm,irq-can-wake\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"\013irq_brcmstb_l2: failed to find parent interrupt\0A\00", align 1
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"\013irq_brcmstb_l2: failed to allocate generic irq chip\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"\016irq_brcmstb_l2: registered L2 intc (%pOF, parent irq: %d)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@l2_lvl_intc_init = internal constant %struct.brcmstb_intc_init_params { ptr @handle_level_irq, i32 0, i32 -1, i32 4, i32 8, i32 12 }, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__initcall__kmod_irq_brcmstb_l2__171_290_brcmstb_l2_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcmstb_l2_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcmstb_l2_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irqchip_probe(ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcmstb_l2_edge_intc_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @brcmstb_l2_intc_of_init(ptr noundef %0, ptr noundef nonnull @l2_edge_intc_init) #7
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcmstb_l2_lvl_intc_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @brcmstb_l2_intc_of_init(ptr noundef %0, ptr noundef nonnull @l2_lvl_intc_init) #7
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @brcmstb_l2_intc_of_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 section ".init.text" {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 24) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %93, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %91

11:                                               ; preds = %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %12 = getelementptr inbounds %struct.brcmstb_intc_init_params, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %7, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -1) #6, !srcloc !9
  %15 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef null) #6
  %16 = icmp ne ptr %15, null
  %17 = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %4, i32 0, i32 4
  %18 = zext i1 %16 to i8
  store i8 %18, ptr %17, align 8
  br i1 %16, label %26, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.brcmstb_intc_init_params, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %24 = load i32, ptr %20, align 4
  %25 = getelementptr i8, ptr %7, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 -1) #6, !srcloc !9
  br label %26

26:                                               ; preds = %23, %19, %11
  %27 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %89

31:                                               ; preds = %26
  %32 = icmp eq ptr %0, null
  %33 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %34 = select i1 %32, ptr null, ptr %33
  %35 = tail call ptr @__irq_domain_add(ptr noundef %34, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #6
  store ptr %35, ptr %4, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %89, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %1, align 4
  %41 = tail call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %35, i32 noundef 32, i32 noundef 1, ptr noundef %39, ptr noundef %40, i32 noundef 7168, i32 noundef 0, i32 noundef 0) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  tail call void @irq_domain_remove(ptr noundef nonnull %35) #6
  br label %89

45:                                               ; preds = %37
  tail call void @irq_set_chained_handler_and_data(i32 noundef %27, ptr noundef nonnull @brcmstb_l2_intc_irq_handle, ptr noundef nonnull %4) #6
  %46 = load ptr, ptr %4, align 8
  %47 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %46, i32 noundef 0) #6
  %48 = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %4, i32 0, i32 1
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.irq_chip_generic, ptr %47, i32 0, i32 1
  store ptr %7, ptr %49, align 4
  %50 = load ptr, ptr %48, align 4
  %51 = getelementptr inbounds %struct.irq_chip_generic, ptr %50, i32 0, i32 14
  store ptr %4, ptr %51, align 4
  %52 = getelementptr inbounds %struct.brcmstb_intc_init_params, ptr %1, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %4, i32 0, i32 2
  store i32 %53, ptr %54, align 8
  %55 = getelementptr inbounds %struct.brcmstb_intc_init_params, ptr %1, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %4, i32 0, i32 3
  store i32 %56, ptr %57, align 4
  %58 = load ptr, ptr %48, align 4
  %59 = getelementptr inbounds %struct.brcmstb_intc_init_params, ptr %1, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %45
  %63 = getelementptr inbounds %struct.irq_chip_generic, ptr %58, i32 2, i32 17
  store i32 %60, ptr %63, align 4
  %64 = getelementptr inbounds %struct.irq_chip_generic, ptr %58, i32 1, i32 6
  store ptr @irq_gc_ack_set_bit, ptr %64, align 4
  br label %65

65:                                               ; preds = %62, %45
  %66 = phi ptr [ @brcmstb_l2_mask_and_ack, %62 ], [ @irq_gc_mask_disable_reg, %45 ]
  %67 = getelementptr inbounds %struct.irq_chip_generic, ptr %58, i32 1, i32 8
  store ptr %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.irq_chip_generic, ptr %58, i32 1, i32 7
  store ptr @irq_gc_mask_disable_reg, ptr %68, align 4
  %69 = load i32, ptr %12, align 4
  %70 = getelementptr inbounds %struct.irq_chip_generic, ptr %58, i32 2, i32 14
  %71 = getelementptr inbounds %struct.irq_chip_generic, ptr %58, i32 2, i32 15
  store i32 %69, ptr %71, align 4
  %72 = load i32, ptr %55, align 4
  %73 = getelementptr inbounds %struct.irq_chip_generic, ptr %58, i32 2, i32 16
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.irq_chip_generic, ptr %58, i32 1, i32 9
  store ptr @irq_gc_unmask_enable_reg, ptr %74, align 4
  %75 = getelementptr inbounds %struct.brcmstb_intc_init_params, ptr %1, i32 0, i32 5
  %76 = load i32, ptr %75, align 4
  store i32 %76, ptr %70, align 4
  %77 = getelementptr inbounds %struct.irq_chip_generic, ptr %58, i32 1, i32 17
  store ptr @brcmstb_l2_intc_suspend, ptr %77, align 4
  %78 = getelementptr inbounds %struct.irq_chip_generic, ptr %58, i32 1, i32 18
  store ptr @brcmstb_l2_intc_resume, ptr %78, align 4
  %79 = getelementptr inbounds %struct.irq_chip_generic, ptr %58, i32 1, i32 18, i32 1
  store ptr @brcmstb_l2_intc_suspend, ptr %79, align 4
  %80 = load i8, ptr %17, align 8, !range !11
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %65
  %83 = load ptr, ptr %48, align 4
  %84 = getelementptr inbounds %struct.irq_chip_generic, ptr %83, i32 0, i32 11
  store i32 -1, ptr %84, align 4
  %85 = getelementptr inbounds %struct.irq_chip_generic, ptr %58, i32 1, i32 14
  store ptr @irq_gc_set_wake, ptr %85, align 4
  %86 = tail call i32 @irq_set_irq_wake(i32 noundef %27, i32 noundef 1) #6
  br label %87

87:                                               ; preds = %82, %65
  %88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %0, i32 noundef %27) #9
  br label %93

89:                                               ; preds = %43, %31, %29
  %90 = phi i32 [ %41, %43 ], [ -22, %29 ], [ -12, %31 ]
  tail call void @iounmap(ptr noundef nonnull %7) #6
  br label %91

91:                                               ; preds = %89, %9
  %92 = phi i32 [ %90, %89 ], [ -12, %9 ]
  tail call void @kfree(ptr noundef nonnull %4) #6
  br label %93

93:                                               ; preds = %91, %87, %2
  %94 = phi i32 [ %92, %91 ], [ 0, %87 ], [ -12, %2 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmstb_l2_intc_irq_handle(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %11(ptr noundef %14) #6
  br label %23

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %17(ptr noundef %18) #6
  %19 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  tail call void %20(ptr noundef %18) #6
  br label %23

23:                                               ; preds = %22, %15, %13, %1
  %24 = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %3, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %3, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.irq_chip_generic, ptr %25, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  %31 = getelementptr inbounds %struct.irq_chip_generic, ptr %25, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %27
  br i1 %30, label %36, label %34

34:                                               ; preds = %23
  %35 = tail call i32 %29(ptr noundef %33) #6
  br label %38

36:                                               ; preds = %23
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load ptr, ptr %24, align 4
  %41 = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %3, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.irq_chip_generic, ptr %40, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  %46 = getelementptr inbounds %struct.irq_chip_generic, ptr %40, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 %42
  br i1 %45, label %51, label %49

49:                                               ; preds = %38
  %50 = tail call i32 %44(ptr noundef %48) #6
  br label %53

51:                                               ; preds = %38
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = xor i32 %54, -1
  %56 = and i32 %39, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %59) #6
  tail call void @handle_bad_irq(ptr noundef %0) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  %60 = load i16, ptr %59, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %59, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  br label %71

62:                                               ; preds = %62, %53
  %63 = phi i32 [ %67, %62 ], [ %56, %53 ]
  %64 = tail call i32 @llvm.cttz.i32(i32 %63, i1 true), !range !18
  %65 = shl nuw i32 1, %64
  %66 = xor i32 %65, -1
  %67 = and i32 %63, %66
  %68 = load ptr, ptr %3, align 4
  %69 = tail call i32 @generic_handle_domain_irq(ptr noundef %68, i32 noundef %64) #6
  %70 = icmp eq i32 %67, 0
  br i1 %70, label %71, label %62

71:                                               ; preds = %62, %58
  %72 = load ptr, ptr %6, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %76 = load ptr, ptr %75, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi ptr [ %76, %74 ], [ %72, %71 ]
  %79 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %78(ptr noundef %79) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_ack_set_bit(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmstb_l2_mask_and_ack(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %0, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #6
  %7 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %8
  tail call void %10(i32 noundef %6, ptr noundef %15) #6
  br label %20

16:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %17 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %6) #6, !srcloc !9
  br label %20

20:                                               ; preds = %16, %12
  %21 = xor i32 %6, -1
  %22 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 1, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %9, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %27
  tail call void %28(i32 noundef %6, ptr noundef %33) #6
  br label %38

34:                                               ; preds = %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %35 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %6) #6, !srcloc !9
  br label %38

38:                                               ; preds = %34, %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  %39 = load i16, ptr %3, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_disable_reg(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_unmask_enable_reg(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmstb_l2_intc_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %9 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 1, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %10
  br i1 %13, label %19, label %17

17:                                               ; preds = %1
  %18 = tail call i32 %12(ptr noundef %16) #6
  br label %21

19:                                               ; preds = %1
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %7, i32 0, i32 5
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %7, i32 0, i32 4
  %25 = load i8, ptr %24, align 4, !range !11
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %54, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 1
  %29 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 12
  %30 = load i32, ptr %29, align 4
  %31 = xor i32 %30, -1
  %32 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 1, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load ptr, ptr %14, align 4
  %39 = getelementptr i8, ptr %38, i32 %33
  tail call void %35(i32 noundef %31, ptr noundef %39) #6
  br label %43

40:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %41 = load ptr, ptr %14, align 4
  %42 = getelementptr i8, ptr %41, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %31) #6, !srcloc !9
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, ptr %29, align 4
  %45 = load i32, ptr %28, align 4
  %46 = load ptr, ptr %34, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %14, align 4
  %50 = getelementptr i8, ptr %49, i32 %45
  tail call void %46(i32 noundef %44, ptr noundef %50) #6
  br label %54

51:                                               ; preds = %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %52 = load ptr, ptr %14, align 4
  %53 = getelementptr i8, ptr %52, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %44) #6, !srcloc !9
  br label %54

54:                                               ; preds = %51, %48, %21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %8) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmstb_l2_intc_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %9 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %7, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 12
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, %14
  %18 = xor i32 %17, -1
  %19 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 1, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %20
  tail call void %22(i32 noundef %18, ptr noundef %27) #6
  br label %32

28:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %29 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %18) #6, !srcloc !9
  br label %32

32:                                               ; preds = %28, %24, %1
  %33 = getelementptr inbounds %struct.brcmstb_l2_intc_data, ptr %7, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 1
  %36 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 1, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 %37
  tail call void %39(i32 noundef %34, ptr noundef %44) #6
  br label %49

45:                                               ; preds = %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %46 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %34) #6, !srcloc !9
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, ptr %33, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, ptr %35, align 4
  %53 = load ptr, ptr %38, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 %52
  tail call void %53(i32 noundef %51, ptr noundef %58) #6
  br label %63

59:                                               ; preds = %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %60 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %51) #6, !srcloc !9
  br label %63

63:                                               ; preds = %59, %55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %8) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_gc_set_wake(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold }
attributes #8 = { nounwind allocsize(2) }
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
!8 = !{i64 2152192369}
!9 = !{i64 3901923}
!10 = !{i64 2152192731}
!11 = !{i8 0, i8 2}
!12 = !{i64 3902341}
!13 = !{i64 2151499710}
!14 = !{i64 2148930542}
!15 = !{i64 2148926366}
!16 = !{i64 2148926441, i64 2148926468, i64 2148926515, i64 2148926537, i64 2148926565, i64 2148926585}
!17 = !{i64 2148953545}
!18 = !{i32 0, i32 33}
!19 = !{i64 2151499046}
