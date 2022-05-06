; ModuleID = '/llk/IR/drivers/irqchip/irq-bcm7120-l2.c_pt.bc'
source_filename = "../drivers/irqchip/irq-bcm7120-l2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcm7120_l2_intc_data = type { i32, [8 x ptr], [4 x ptr], [4 x i32], [4 x i32], ptr, i8, [4 x i32], ptr, i32, ptr }
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
%struct.bcm7120_l1_intc_data = type { ptr, [4 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_irq_bcm7120_l2__173_362_bcm7120_l2_driver_init6 = internal global ptr @bcm7120_l2_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_description174 = internal constant [82 x i8] c"irq_bcm7120_l2.description=Broadcom STB 7120-style L2 interrupt controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [51 x i8] c"irq_bcm7120_l2.file=drivers/irqchip/irq-bcm7120-l2\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [30 x i8] c"irq_bcm7120_l2.license=GPL v2\00", section ".modinfo", align 1
@bcm7120_l2_driver = internal global %struct.platform_driver { ptr @platform_irqchip_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @bcm7120_l2_irqchip_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"bcm7120_l2\00", align 1
@bcm7120_l2_irqchip_match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7120-l2-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm7120_l2_intc_probe_7120 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm3380-l2-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm7120_l2_intc_probe_3380 }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"BCM7120 L2\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"\013irq_bcm7120_l2: invalid number of parent interrupts\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"brcm,irq-can-wake\00", align 1
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"\013irq_bcm7120_l2: failed to allocate generic irq chip\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"\016irq_bcm7120_l2: registered %s intc (%pOF, parent IRQ(s): %d)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"\013irq_bcm7120_l2: failed to map interrupt %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"\013irq_bcm7120_l2: unable to map registers\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"brcm,int-fwd-mask\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"\013irq_bcm7120_l2: invalid brcm,int-fwd-mask property\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"brcm,int-map-mask\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"\013irq_bcm7120_l2: invalid brcm,int-map-mask property\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"BCM3380 L2\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__initcall__kmod_irq_bcm7120_l2__173_362_bcm7120_l2_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm7120_l2_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm7120_l2_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irqchip_probe(ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm7120_l2_intc_probe_7120(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @bcm7120_l2_intc_probe(ptr noundef %0, ptr noundef nonnull @bcm7120_l2_intc_iomap_7120, ptr noundef nonnull @.str.1) #10
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm7120_l2_intc_probe_3380(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @bcm7120_l2_intc_probe(ptr noundef %0, ptr noundef nonnull @bcm7120_l2_intc_iomap_3380, ptr noundef nonnull @.str.12) #10
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @bcm7120_l2_intc_probe(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = alloca [4 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false)
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 120) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %182, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @of_find_device_by_node(ptr noundef %0) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %180, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @platform_irq_count(ptr noundef nonnull %9) #9
  %13 = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %6, i32 0, i32 9
  store i32 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void @put_device(ptr noundef %14) #9
  %15 = load i32, ptr %13, align 8
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %169

19:                                               ; preds = %11
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 20) #9
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %22, label %24, !prof !8

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %6, i32 0, i32 8
  store ptr null, ptr %23, align 4
  br label %165

24:                                               ; preds = %19
  %25 = extractvalue { i32, i1 } %20, 0
  %26 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #13
  %27 = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %6, i32 0, i32 8
  store ptr %26, ptr %27, align 4
  %28 = icmp eq ptr %26, null
  br i1 %28, label %165, label %29

29:                                               ; preds = %24
  %30 = tail call i32 %1(ptr noundef %0, ptr noundef nonnull %6) #9, !callees !9
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %165, label %32

32:                                               ; preds = %29
  %33 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef null) #9
  %34 = icmp ne ptr %33, null
  %35 = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %6, i32 0, i32 6
  %36 = zext i1 %34 to i8
  store i8 %36, ptr %35, align 8
  %37 = load i32, ptr %13, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %85, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %6, i32 0, i32 10
  br label %41

41:                                               ; preds = %81, %39
  %42 = phi i32 [ 0, %39 ], [ %82, %81 ]
  %43 = load ptr, ptr %27, align 4
  %44 = getelementptr %struct.bcm7120_l1_intc_data, ptr %43, i32 %42
  %45 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef %42) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %79, label %47

47:                                               ; preds = %41
  %48 = load i32, ptr %6, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %74, label %50

50:                                               ; preds = %66, %47
  %51 = phi i32 [ %72, %66 ], [ %48, %47 ]
  %52 = phi i32 [ %71, %66 ], [ 0, %47 ]
  %53 = load ptr, ptr %40, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = mul i32 %51, %42
  %57 = getelementptr i32, ptr %53, i32 %56
  %58 = getelementptr i32, ptr %57, i32 %52
  %59 = load i32, ptr %58, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #9
  %61 = getelementptr %struct.bcm7120_l1_intc_data, ptr %43, i32 %42, i32 1, i32 %52
  %62 = load i32, ptr %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, ptr %61, align 4
  br label %66

64:                                               ; preds = %50
  %65 = getelementptr %struct.bcm7120_l1_intc_data, ptr %43, i32 %42, i32 1, i32 %52
  store i32 -1, ptr %65, align 4
  br label %66

66:                                               ; preds = %64, %55
  %67 = phi i32 [ -1, %64 ], [ %63, %55 ]
  %68 = getelementptr i32, ptr %4, i32 %52
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, ptr %68, align 4
  %71 = add nuw i32 %52, 1
  %72 = load i32, ptr %6, align 8
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %50, label %74

74:                                               ; preds = %66, %47
  store ptr %6, ptr %44, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %45, ptr noundef nonnull @bcm7120_l2_intc_irq_handle, ptr noundef %44) #9
  %75 = load i8, ptr %35, align 8, !range !10
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = tail call i32 @irq_set_irq_wake(i32 noundef %45, i32 noundef 1) #9
  br label %81

79:                                               ; preds = %41
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %42) #12
  br label %165

81:                                               ; preds = %77, %74
  %82 = add nuw i32 %42, 1
  %83 = load i32, ptr %13, align 8
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %41, label %85

85:                                               ; preds = %81, %32
  %86 = load i32, ptr %6, align 8
  %87 = shl i32 %86, 5
  %88 = icmp eq ptr %0, null
  %89 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %90 = select i1 %88, ptr null, ptr %89
  %91 = tail call ptr @__irq_domain_add(ptr noundef %90, i32 noundef %87, i32 noundef %87, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #9
  %92 = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %6, i32 0, i32 5
  store ptr %91, ptr %92, align 4
  %93 = icmp eq ptr %91, null
  br i1 %93, label %165, label %94

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = tail call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %91, i32 noundef 32, i32 noundef 1, ptr noundef %96, ptr noundef nonnull @handle_level_irq, i32 noundef 7168, i32 noundef 0, i32 noundef 1) #9
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, ptr %6, align 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %162, label %105

102:                                              ; preds = %94
  %103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  %104 = load ptr, ptr %92, align 4
  tail call void @irq_domain_remove(ptr noundef %104) #9
  br label %165

105:                                              ; preds = %158, %99
  %106 = phi i32 [ %159, %158 ], [ 0, %99 ]
  %107 = shl i32 %106, 5
  %108 = load ptr, ptr %92, align 4
  %109 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %108, i32 noundef %107) #9
  %110 = getelementptr [4 x i32], ptr %4, i32 0, i32 %106
  %111 = load i32, ptr %110, align 4
  %112 = xor i32 %111, -1
  %113 = getelementptr inbounds %struct.irq_chip_generic, ptr %109, i32 0, i32 16
  store i32 %112, ptr %113, align 4
  %114 = getelementptr inbounds %struct.irq_chip_generic, ptr %109, i32 0, i32 14
  store ptr %6, ptr %114, align 4
  %115 = getelementptr %struct.bcm7120_l2_intc_data, ptr %6, i32 0, i32 2, i32 %106
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.irq_chip_generic, ptr %109, i32 0, i32 1
  store ptr %116, ptr %117, align 4
  %118 = getelementptr %struct.bcm7120_l2_intc_data, ptr %6, i32 0, i32 3, i32 %106
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.irq_chip_generic, ptr %109, i32 2, i32 16
  store i32 %119, ptr %120, align 4
  %121 = getelementptr %struct.bcm7120_l2_intc_data, ptr %6, i32 0, i32 7, i32 %106
  %122 = load i32, ptr %121, align 4
  %123 = load i32, ptr %118, align 4
  %124 = getelementptr inbounds %struct.irq_chip_generic, ptr %109, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %105
  %128 = getelementptr i8, ptr %116, i32 %123
  tail call void %125(i32 noundef %122, ptr noundef %128) #9
  br label %132

129:                                              ; preds = %105
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %130 = load ptr, ptr %117, align 4
  %131 = getelementptr i8, ptr %130, i32 %123
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %122) #9, !srcloc !12
  br label %132

132:                                              ; preds = %129, %127
  %133 = getelementptr inbounds %struct.irq_chip_generic, ptr %109, i32 1, i32 7
  store ptr @irq_gc_mask_clr_bit, ptr %133, align 4
  %134 = getelementptr inbounds %struct.irq_chip_generic, ptr %109, i32 1, i32 9
  store ptr @irq_gc_mask_set_bit, ptr %134, align 4
  %135 = getelementptr inbounds %struct.irq_chip_generic, ptr %109, i32 1, i32 6
  store ptr @irq_gc_noop, ptr %135, align 4
  %136 = getelementptr inbounds %struct.irq_chip_generic, ptr %109, i32 0, i32 4
  store ptr @bcm7120_l2_intc_suspend, ptr %136, align 4
  %137 = getelementptr inbounds %struct.irq_chip_generic, ptr %109, i32 0, i32 5
  store ptr @bcm7120_l2_intc_resume, ptr %137, align 4
  %138 = load i32, ptr %120, align 4
  %139 = getelementptr inbounds %struct.irq_chip_generic, ptr %109, i32 0, i32 2
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  %142 = load ptr, ptr %117, align 4
  %143 = getelementptr i8, ptr %142, i32 %138
  br i1 %141, label %146, label %144

144:                                              ; preds = %132
  %145 = tail call i32 %140(ptr noundef %143) #9
  br label %148

146:                                              ; preds = %132
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #9, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  %150 = getelementptr inbounds %struct.irq_chip_generic, ptr %109, i32 0, i32 8
  store i32 %149, ptr %150, align 4
  %151 = load i8, ptr %35, align 8, !range !10
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.irq_chip_generic, ptr %109, i32 0, i32 11
  %155 = load i32, ptr %113, align 4
  %156 = xor i32 %155, -1
  store i32 %156, ptr %154, align 4
  %157 = getelementptr inbounds %struct.irq_chip_generic, ptr %109, i32 1, i32 14
  store ptr @irq_gc_set_wake, ptr %157, align 4
  br label %158

158:                                              ; preds = %153, %148
  %159 = add nuw i32 %106, 1
  %160 = load i32, ptr %6, align 8
  %161 = icmp ult i32 %159, %160
  br i1 %161, label %105, label %162

162:                                              ; preds = %158, %99
  %163 = load i32, ptr %13, align 8
  %164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %2, ptr noundef %0, i32 noundef %163) #12
  br label %182

165:                                              ; preds = %102, %85, %79, %29, %24, %22
  %166 = phi ptr [ %27, %29 ], [ %27, %79 ], [ %27, %102 ], [ %27, %24 ], [ %27, %85 ], [ %23, %22 ]
  %167 = phi i32 [ %30, %29 ], [ -22, %79 ], [ %97, %102 ], [ -12, %24 ], [ -12, %85 ], [ -12, %22 ]
  %168 = load ptr, ptr %166, align 4
  tail call void @kfree(ptr noundef %168) #9
  br label %169

169:                                              ; preds = %165, %17
  %170 = phi i32 [ -12, %17 ], [ %167, %165 ]
  br label %171

171:                                              ; preds = %177, %169
  %172 = phi i32 [ 0, %169 ], [ %178, %177 ]
  %173 = getelementptr %struct.bcm7120_l2_intc_data, ptr %6, i32 0, i32 1, i32 %172
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %171
  tail call void @iounmap(ptr noundef nonnull %174) #9
  br label %177

177:                                              ; preds = %176, %171
  %178 = add nuw nsw i32 %172, 1
  %179 = icmp eq i32 %178, 8
  br i1 %179, label %180, label %171

180:                                              ; preds = %177, %8
  %181 = phi i32 [ -19, %8 ], [ %170, %177 ]
  tail call void @kfree(ptr noundef nonnull %6) #9
  br label %182

182:                                              ; preds = %180, %162, %3
  %183 = phi i32 [ %181, %180 ], [ 0, %162 ], [ -12, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret i32 %183
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm7120_l2_intc_iomap_7120(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %4 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #9
  %5 = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %1, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %32

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %1, i32 0, i32 2
  store ptr %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %1, i32 0, i32 3
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %1, i32 0, i32 4
  store i32 4, ptr %12, align 4
  store i32 1, ptr %1, align 4
  %13 = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %1, i32 0, i32 7
  %14 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %13, i32 noundef 1, i32 noundef 0) #9
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 0) #9
  store i32 %15, ptr %3, align 4
  switch i32 %15, label %16 [
    i32 -22, label %18
    i32 0, label %18
  ]

16:                                               ; preds = %9
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #12
  br label %32

18:                                               ; preds = %9, %9
  %19 = call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %3) #9
  %20 = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %1, i32 0, i32 10
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %3, align 4
  %24 = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %1, i32 0, i32 9
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %25, 2
  %27 = load i32, ptr %1, align 4
  %28 = mul i32 %26, %27
  %29 = icmp eq i32 %23, %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %22, %18
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  br label %32

32:                                               ; preds = %30, %22, %16, %7
  %33 = phi i32 [ -22, %16 ], [ -22, %30 ], [ -12, %7 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_noop(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm7120_l2_intc_suspend(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_lock(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %3, i32 0, i32 6
  %5 = load i8, ptr %4, align 4, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 12
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, %9
  %13 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 2, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %14
  tail call void %16(i32 noundef %12, ptr noundef %21) #9
  br label %26

22:                                               ; preds = %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %23 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %12) #9, !srcloc !12
  br label %26

26:                                               ; preds = %22, %18, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %27 = load i16, ptr %0, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm7120_l2_intc_resume(ptr noundef %0) #5 {
  tail call void @_raw_spin_lock(ptr noundef %0) #9
  %2 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 2, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %5
  tail call void %7(i32 noundef %3, ptr noundef %12) #9
  br label %17

13:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %14 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %3) #9, !srcloc !12
  br label %17

17:                                               ; preds = %13, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %18 = load i16, ptr %0, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_gc_set_wake(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm7120_l2_intc_irq_handle(ptr noundef %0) #5 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %7 = load ptr, ptr %6, align 8
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
  tail call void %13(ptr noundef %16) #9
  br label %25

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %19(ptr noundef %20) #9
  %21 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void %22(ptr noundef %20) #9
  br label %25

25:                                               ; preds = %24, %17, %15, %1
  %26 = load i32, ptr %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %71, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %5, i32 0, i32 5
  br label %30

30:                                               ; preds = %67, %28
  %31 = phi i32 [ 0, %28 ], [ %68, %67 ]
  %32 = shl i32 %31, 5
  %33 = load ptr, ptr %29, align 4
  %34 = call ptr @irq_get_domain_generic_chip(ptr noundef %33, i32 noundef %32) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !19
  call void @_raw_spin_lock(ptr noundef %34) #9
  %35 = getelementptr %struct.bcm7120_l2_intc_data, ptr %5, i32 0, i32 4, i32 %31
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.irq_chip_generic, ptr %34, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  %40 = getelementptr inbounds %struct.irq_chip_generic, ptr %34, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 %36
  br i1 %39, label %45, label %43

43:                                               ; preds = %30
  %44 = call i32 %38(ptr noundef %42) #9
  br label %47

45:                                               ; preds = %30
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = getelementptr inbounds %struct.irq_chip_generic, ptr %34, i32 0, i32 8
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, %48
  %52 = getelementptr %struct.bcm7120_l1_intc_data, ptr %4, i32 0, i32 1, i32 %31
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %51, %53
  store i32 %54, ptr %2, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %55 = load i16, ptr %34, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr %34, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  %57 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #9
  %58 = icmp slt i32 %57, 32
  br i1 %58, label %59, label %67

59:                                               ; preds = %59, %47
  %60 = phi i32 [ %65, %59 ], [ %57, %47 ]
  %61 = load ptr, ptr %29, align 4
  %62 = add i32 %60, %32
  %63 = call i32 @generic_handle_domain_irq(ptr noundef %61, i32 noundef %62) #9
  %64 = add nsw i32 %60, 1
  %65 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %64) #9
  %66 = icmp slt i32 %65, 32
  br i1 %66, label %59, label %67

67:                                               ; preds = %59, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %68 = add nuw i32 %31, 1
  %69 = load i32, ptr %5, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %30, label %71

71:                                               ; preds = %67, %25
  %72 = load ptr, ptr %8, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 9
  %76 = load ptr, ptr %75, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi ptr [ %76, %74 ], [ %72, %71 ]
  %79 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %78(ptr noundef %79) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm7120_l2_intc_iomap_3380(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 section ".init.text" {
  br label %3

3:                                                ; preds = %14, %2
  %4 = phi i32 [ 0, %2 ], [ %23, %14 ]
  %5 = shl nuw nsw i32 %4, 1
  %6 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef %5) #9
  %7 = or i32 %5, 1
  %8 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef %7) #9
  %9 = icmp ult ptr %6, %8
  %10 = select i1 %9, ptr %6, ptr %8
  %11 = getelementptr %struct.bcm7120_l2_intc_data, ptr %1, i32 0, i32 1, i32 %5
  store ptr %6, ptr %11, align 4
  %12 = getelementptr %struct.bcm7120_l2_intc_data, ptr %1, i32 0, i32 1, i32 %7
  store ptr %8, ptr %12, align 4
  %13 = icmp eq ptr %10, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %3
  %15 = getelementptr %struct.bcm7120_l2_intc_data, ptr %1, i32 0, i32 2, i32 %4
  store ptr %10, ptr %15, align 4
  %16 = ptrtoint ptr %6 to i32
  %17 = ptrtoint ptr %10 to i32
  %18 = sub i32 %16, %17
  %19 = getelementptr %struct.bcm7120_l2_intc_data, ptr %1, i32 0, i32 3, i32 %4
  store i32 %18, ptr %19, align 4
  %20 = ptrtoint ptr %8 to i32
  %21 = sub i32 %20, %17
  %22 = getelementptr %struct.bcm7120_l2_intc_data, ptr %1, i32 0, i32 4, i32 %4
  store i32 %21, ptr %22, align 4
  %23 = add nuw nsw i32 %4, 1
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %29, label %3

25:                                               ; preds = %3
  %26 = icmp eq i32 %4, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %31

29:                                               ; preds = %25, %14
  %30 = phi i32 [ %4, %25 ], [ 4, %14 ]
  store i32 %30, ptr %1, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ 0, %29 ], [ -22, %27 ]
  ret i32 %32
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

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
!9 = !{ptr @bcm7120_l2_intc_iomap_3380, ptr @bcm7120_l2_intc_iomap_7120}
!10 = !{i8 0, i8 2}
!11 = !{i64 2151500437}
!12 = !{i64 3903314}
!13 = !{i64 3903732}
!14 = !{i64 2151501101}
!15 = !{i64 2148931933}
!16 = !{i64 2148927757}
!17 = !{i64 2148927832, i64 2148927859, i64 2148927906, i64 2148927928, i64 2148927956, i64 2148927976}
!18 = !{i64 2148954936}
!19 = !{!"auto-init"}
