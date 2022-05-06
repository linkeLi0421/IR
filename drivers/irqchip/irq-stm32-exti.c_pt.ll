; ModuleID = '/llk/IR/drivers/irqchip/irq-stm32-exti.c_pt.bc'
source_filename = "../drivers/irqchip/irq-stm32-exti.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.stm32_exti_drv_data = type { ptr, ptr, i32, i32 }
%struct.stm32_desc_irq = type { i32, i32, ptr }
%struct.stm32_exti_bank = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.stm32_exti_host_data = type { ptr, ptr, ptr, ptr }
%struct.stm32_exti_chip_data = type { ptr, ptr, %struct.raw_spinlock, i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x ptr] }

@stm32_exti_driver = internal global %struct.platform_driver { ptr @stm32_exti_probe, ptr @stm32_exti_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_exti_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__initcall__kmod_irq_stm32_exti__171_948_stm32_exti_arch_init3 = internal global ptr @stm32_exti_arch_init, section ".initcall3.init", align 4
@__exitcall_stm32_exti_arch_exit = internal global ptr @stm32_exti_arch_exit, section ".exitcall.exit", align 4
@__of_table_stm32f4_exti = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-exti\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32f4_exti_of_init }, section "__irqchip_of_table", align 4
@__of_table_stm32h7_exti = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-exti\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32h7_exti_of_init }, section "__irqchip_of_table", align 4
@.str = private unnamed_addr constant [11 x i8] c"stm32_exti\00", align 1
@stm32_exti_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-exti\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp1_drv_data }, %struct.of_device_id zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"no of match data\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"GIC interrupt-parent not found\0A\00", align 1
@stm32_exti_h_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr @irq_domain_xlate_twocell, ptr @stm32_exti_h_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Could not register exti domain\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"\016%pOF: bank%d\0A\00", align 1
@stm32_host_data = internal unnamed_addr global ptr null, align 4
@stm32_exti_h_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @stm32_exti_h_suspend, ptr @stm32_exti_h_resume, ptr null }, align 4
@stm32mp1_drv_data = internal constant %struct.stm32_exti_drv_data { ptr @stm32mp1_exti_banks, ptr @stm32mp1_desc_irq, i32 3, i32 42 }, align 4
@stm32mp1_exti_banks = internal global [3 x ptr] [ptr @stm32mp1_exti_b1, ptr @stm32mp1_exti_b2, ptr @stm32mp1_exti_b3], align 4
@stm32mp1_desc_irq = internal constant [42 x %struct.stm32_desc_irq] [%struct.stm32_desc_irq { i32 0, i32 6, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 1, i32 7, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 2, i32 8, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 3, i32 9, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 4, i32 10, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 5, i32 23, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 6, i32 64, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 7, i32 65, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 8, i32 66, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 9, i32 67, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 10, i32 40, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 11, i32 42, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 12, i32 76, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 13, i32 77, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 14, i32 121, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 15, i32 127, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 16, i32 1, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 19, i32 3, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 21, i32 31, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 22, i32 33, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 23, i32 72, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 24, i32 95, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 25, i32 107, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 26, i32 37, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 27, i32 38, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 28, i32 39, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 29, i32 71, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 30, i32 52, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 31, i32 53, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 32, i32 82, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 33, i32 83, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 47, i32 93, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 48, i32 138, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 50, i32 139, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 52, i32 140, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 53, i32 141, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 54, i32 135, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 61, i32 100, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 65, i32 144, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 68, i32 143, ptr @stm32_exti_h_chip }, %struct.stm32_desc_irq { i32 70, i32 62, ptr @stm32_exti_h_chip_direct }, %struct.stm32_desc_irq { i32 73, i32 129, ptr @stm32_exti_h_chip }], align 4
@stm32mp1_exti_b1 = internal constant %struct.stm32_exti_bank { i32 128, i32 132, i32 0, i32 4, i32 8, i32 12, i32 16 }, align 4
@stm32mp1_exti_b2 = internal constant %struct.stm32_exti_bank { i32 144, i32 148, i32 32, i32 36, i32 40, i32 44, i32 48 }, align 4
@stm32mp1_exti_b3 = internal constant %struct.stm32_exti_bank { i32 160, i32 164, i32 64, i32 68, i32 72, i32 76, i32 80 }, align 4
@stm32_exti_h_chip = internal global %struct.irq_chip { ptr null, ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_exti_h_mask, ptr null, ptr @stm32_exti_h_unmask, ptr @stm32_exti_h_eoi, ptr @stm32_exti_h_set_affinity, ptr @stm32_exti_h_retrigger, ptr @stm32_exti_h_set_type, ptr @stm32_exti_h_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4 }, align 4
@stm32_exti_h_chip_direct = internal global %struct.irq_chip { ptr null, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_ack_parent, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @irq_chip_set_type_parent, ptr @stm32_exti_h_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4 }, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"stm32-exti-h\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"stm32-exti-h-direct\00", align 1
@stm32f4xx_drv_data = internal constant %struct.stm32_exti_drv_data { ptr @stm32f4xx_exti_banks, ptr null, i32 1, i32 0 }, align 4
@irq_exti_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @irq_map_generic_chip, ptr null, ptr null, ptr @stm32_exti_alloc, ptr @stm32_exti_free, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [47 x i8] c"\013%pOFn: Could not register interrupt domain.\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"exti\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"\013%pOF: Could not allocate generic interrupt chip.\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"\013%pOF: Unable to map registers\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@stm32f4xx_exti_banks = internal global [1 x ptr] [ptr @stm32f4xx_exti_b1], align 4
@stm32f4xx_exti_b1 = internal constant %struct.stm32_exti_bank { i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 -1 }, align 4
@stm32h7xx_drv_data = internal constant %struct.stm32_exti_drv_data { ptr @stm32h7xx_exti_banks, ptr null, i32 3, i32 0 }, align 4
@stm32h7xx_exti_banks = internal global [3 x ptr] [ptr @stm32h7xx_exti_b1, ptr @stm32h7xx_exti_b2, ptr @stm32h7xx_exti_b3], align 4
@stm32h7xx_exti_b1 = internal constant %struct.stm32_exti_bank { i32 128, i32 132, i32 0, i32 4, i32 8, i32 136, i32 -1 }, align 4
@stm32h7xx_exti_b2 = internal constant %struct.stm32_exti_bank { i32 144, i32 148, i32 32, i32 36, i32 40, i32 152, i32 -1 }, align 4
@stm32h7xx_exti_b3 = internal constant %struct.stm32_exti_bank { i32 160, i32 164, i32 64, i32 68, i32 72, i32 168, i32 -1 }, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__exitcall_stm32_exti_arch_exit, ptr @__initcall__kmod_irq_stm32_exti__171_948_stm32_exti_arch_init3, ptr @__of_table_stm32f4_exti, ptr @__of_table_stm32h7_exti, ptr @stm32_exti_arch_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @stm32_exti_arch_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_exti_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stm32_exti_arch_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_exti_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stm32f4_exti_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @stm32_exti_init(ptr noundef nonnull @stm32f4xx_drv_data, ptr noundef %0) #10
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stm32h7_exti_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @stm32_exti_init(ptr noundef nonnull @stm32h7xx_drv_data, ptr noundef %0) #10
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_exti_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.irq_fwspec, align 4
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 16, i32 noundef 3520) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %87, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %7, i32 0, i32 3
  store ptr inttoptr (i32 -19 to ptr), ptr %10, align 4
  %11 = tail call ptr @of_device_get_match_data(ptr noundef %4) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #11
  br label %87

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %7, i32 0, i32 2
  store ptr %11, ptr %15, align 4
  %16 = getelementptr inbounds %struct.stm32_exti_drv_data, ptr %11, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 28) #9
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %20, label %22, !prof !8

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %7, i32 0, i32 1
  store ptr null, ptr %21, align 4
  br label %87

22:                                               ; preds = %14
  %23 = extractvalue { i32, i1 } %18, 0
  %24 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %23, i32 noundef 3520) #9
  %25 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %7, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %87, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  store ptr %28, ptr %7, align 4
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %16, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %59, label %35

33:                                               ; preds = %27
  %34 = ptrtoint ptr %28 to i32
  br label %87

35:                                               ; preds = %55, %30
  %36 = phi ptr [ %58, %55 ], [ %24, %30 ]
  %37 = phi ptr [ %57, %55 ], [ %11, %30 ]
  %38 = phi ptr [ %56, %55 ], [ %28, %30 ]
  %39 = phi i32 [ %52, %55 ], [ 0, %30 ]
  %40 = load ptr, ptr %37, align 4
  %41 = getelementptr ptr, ptr %40, i32 %39
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr %struct.stm32_exti_chip_data, ptr %36, i32 %39
  store ptr %7, ptr %43, align 4
  %44 = getelementptr %struct.stm32_exti_chip_data, ptr %36, i32 %39, i32 1
  store ptr %42, ptr %44, align 4
  %45 = getelementptr %struct.stm32_exti_chip_data, ptr %36, i32 %39, i32 2
  store i32 0, ptr %45, align 4
  %46 = load i32, ptr %42, align 4
  %47 = getelementptr i8, ptr %38, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 0) #9, !srcloc !9
  %48 = getelementptr inbounds %struct.stm32_exti_bank, ptr %42, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr i8, ptr %38, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #9, !srcloc !9
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %6, i32 noundef %39) #11
  %52 = add nuw i32 %39, 1
  %53 = load i32, ptr %16, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %35
  %56 = load ptr, ptr %7, align 4
  %57 = load ptr, ptr %15, align 4
  %58 = load ptr, ptr %25, align 4
  br label %35

59:                                               ; preds = %35, %30
  %60 = tail call ptr @of_irq_find_parent(ptr noundef %6) #9
  %61 = icmp eq ptr %60, null
  %62 = getelementptr inbounds %struct.device_node, ptr %60, i32 0, i32 3
  %63 = select i1 %61, ptr null, ptr %62
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  %64 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %64, i8 0, i64 68, i1 false) #9
  store ptr %63, ptr %3, align 4
  %65 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  %68 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %68, i8 0, i64 68, i1 false) #9
  store ptr %63, ptr %2, align 4
  %69 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %2, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #11
  br label %87

72:                                               ; preds = %67, %59
  %73 = phi ptr [ %69, %67 ], [ %65, %59 ]
  %74 = load i32, ptr %16, align 4
  %75 = shl i32 %74, 5
  %76 = icmp eq ptr %6, null
  %77 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 3
  %78 = select i1 %76, ptr null, ptr %77
  %79 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %73, i32 noundef 0, i32 noundef %75, ptr noundef %78, ptr noundef nonnull @stm32_exti_h_domain_ops, ptr noundef nonnull %7) #9
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #11
  br label %87

82:                                               ; preds = %72
  %83 = call i32 @devm_add_action(ptr noundef %4, ptr noundef nonnull @stm32_exti_remove_irq, ptr noundef nonnull %79) #9
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  call void @irq_domain_remove(ptr noundef nonnull %79) #9
  br label %87

86:                                               ; preds = %82
  store ptr %7, ptr @stm32_host_data, align 4
  call void @register_syscore_ops(ptr noundef nonnull @stm32_exti_h_syscore_ops) #9
  br label %87

87:                                               ; preds = %86, %85, %81, %71, %33, %22, %20, %13, %1
  %88 = phi i32 [ %34, %33 ], [ 0, %86 ], [ -12, %81 ], [ -22, %71 ], [ -19, %13 ], [ -12, %1 ], [ -12, %22 ], [ %83, %85 ], [ -12, %20 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_exti_remove(ptr nocapture noundef readnone %0) #2 {
  tail call void @unregister_syscore_ops(ptr noundef nonnull @stm32_exti_h_syscore_ops) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @stm32_exti_chip_init(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr ptr, ptr %7, i32 %1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.stm32_exti_chip_data, ptr %11, i32 %1
  store ptr %0, ptr %12, align 4
  %13 = getelementptr %struct.stm32_exti_chip_data, ptr %11, i32 %1, i32 1
  store ptr %9, ptr %13, align 4
  %14 = getelementptr %struct.stm32_exti_chip_data, ptr %11, i32 %1, i32 2
  store i32 0, ptr %14, align 4
  %15 = load i32, ptr %9, align 4
  %16 = getelementptr i8, ptr %4, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #9, !srcloc !9
  %17 = getelementptr inbounds %struct.stm32_exti_bank, ptr %9, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %4, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #9, !srcloc !9
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %2, i32 noundef %1) #11
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_irq_find_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_exti_remove_irq(ptr noundef %0) #2 {
  tail call void @irq_domain_remove(ptr noundef %0) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_exti_h_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = alloca %struct.irq_fwspec, align 4
  %6 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #9
  %8 = getelementptr inbounds i8, ptr %5, i32 20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %8, i8 0, i32 52, i1 false), !annotation !10
  %9 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %7, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.stm32_exti_drv_data, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %57, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.stm32_exti_drv_data, ptr %14, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %57, label %22

22:                                               ; preds = %18
  %23 = mul i32 %20, 12
  %24 = add i32 %23, -12
  %25 = getelementptr i8, ptr %16, i32 %24
  br label %29

26:                                               ; preds = %29
  %27 = add nuw i32 %30, 1
  %28 = icmp eq i32 %27, %20
  br i1 %28, label %34, label %29

29:                                               ; preds = %26, %22
  %30 = phi i32 [ %27, %26 ], [ 0, %22 ]
  %31 = getelementptr %struct.stm32_desc_irq, ptr %16, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %10
  br i1 %33, label %34, label %26

34:                                               ; preds = %29, %26
  %35 = phi ptr [ %31, %29 ], [ %25, %26 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %57, label %37

37:                                               ; preds = %34
  %38 = lshr i32 %10, 5
  %39 = getelementptr %struct.stm32_exti_chip_data, ptr %12, i32 %38
  %40 = getelementptr inbounds %struct.stm32_desc_irq, ptr %35, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %1, i32 noundef %10, ptr noundef %41, ptr noundef %39) #9
  %43 = getelementptr inbounds %struct.stm32_desc_irq, ptr %35, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.irq_domain, ptr %48, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  store ptr %50, ptr %5, align 4
  %51 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 1
  store i32 3, ptr %51, align 4
  %52 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2
  store i32 0, ptr %52, align 4
  %53 = load i32, ptr %43, align 4
  %54 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 1
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 2
  store i32 4, ptr %55, align 4
  %56 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef 1, ptr noundef nonnull %5) #9
  br label %57

57:                                               ; preds = %46, %37, %34, %18, %4
  %58 = phi i32 [ %56, %46 ], [ -22, %34 ], [ 0, %37 ], [ -22, %4 ], [ -22, %18 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #9
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_exti_h_suspend() #2 {
  %1 = load ptr, ptr @stm32_host_data, align 4
  %2 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %1, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_exti_drv_data, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %7, %0
  %8 = phi ptr [ %35, %7 ], [ %1, %0 ]
  %9 = phi i32 [ %34, %7 ], [ 0, %0 ]
  %10 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.stm32_exti_chip_data, ptr %11, i32 %9
  %13 = getelementptr %struct.stm32_exti_chip_data, ptr %11, i32 %9, i32 2
  tail call void @_raw_spin_lock(ptr noundef %13) #9
  %14 = getelementptr %struct.stm32_exti_chip_data, ptr %11, i32 %9, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.stm32_exti_chip_data, ptr %11, i32 %9, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %12, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.stm32_exti_bank, ptr %17, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %19, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !11
  %24 = getelementptr %struct.stm32_exti_chip_data, ptr %11, i32 %9, i32 5
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.stm32_exti_bank, ptr %17, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %19, i32 %26
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !11
  %29 = getelementptr %struct.stm32_exti_chip_data, ptr %11, i32 %9, i32 6
  store i32 %28, ptr %29, align 4
  %30 = load i32, ptr %17, align 4
  %31 = getelementptr i8, ptr %19, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %15) #9, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %32 = load i16, ptr %13, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %34 = add nuw i32 %9, 1
  %35 = load ptr, ptr @stm32_host_data, align 4
  %36 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.stm32_exti_drv_data, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %34, %39
  br i1 %40, label %7, label %41

41:                                               ; preds = %7, %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_exti_h_resume() #2 {
  %1 = load ptr, ptr @stm32_host_data, align 4
  %2 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %1, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_exti_drv_data, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %7, %0
  %8 = phi ptr [ %35, %7 ], [ %1, %0 ]
  %9 = phi i32 [ %34, %7 ], [ 0, %0 ]
  %10 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.stm32_exti_chip_data, ptr %11, i32 %9
  %13 = getelementptr %struct.stm32_exti_chip_data, ptr %11, i32 %9, i32 2
  tail call void @_raw_spin_lock(ptr noundef %13) #9
  %14 = getelementptr %struct.stm32_exti_chip_data, ptr %11, i32 %9, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.stm32_exti_chip_data, ptr %11, i32 %9, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %12, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.stm32_exti_chip_data, ptr %11, i32 %9, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.stm32_exti_bank, ptr %17, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %19, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #9, !srcloc !9
  %25 = getelementptr %struct.stm32_exti_chip_data, ptr %11, i32 %9, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.stm32_exti_bank, ptr %17, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %19, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #9, !srcloc !9
  %30 = load i32, ptr %17, align 4
  %31 = getelementptr i8, ptr %19, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %15) #9, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %32 = load i16, ptr %13, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %34 = add nuw i32 %9, 1
  %35 = load ptr, ptr @stm32_host_data, align 4
  %36 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.stm32_exti_drv_data, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %34, %39
  br i1 %40, label %7, label %41

41:                                               ; preds = %7, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_exti_h_mask(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %6) #9
  %7 = load i32, ptr %5, align 4
  %8 = load ptr, ptr %2, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %7
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !11
  %13 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 31
  %16 = shl nuw i32 1, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %12, %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %18) #9, !srcloc !9
  %19 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %3, i32 0, i32 4
  store i32 %18, ptr %19, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %20 = load i16, ptr %6, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %22 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.irq_data, ptr %23, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  tail call void @irq_chip_mask_parent(ptr noundef %0) #9
  br label %28

28:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_exti_h_unmask(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %6) #9
  %7 = load i32, ptr %5, align 4
  %8 = load ptr, ptr %2, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %7
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !11
  %13 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 31
  %16 = shl nuw i32 1, %15
  %17 = or i32 %16, %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %17) #9, !srcloc !9
  %18 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %3, i32 0, i32 4
  store i32 %17, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %19 = load i16, ptr %6, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %21 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.irq_data, ptr %22, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  tail call void @irq_chip_unmask_parent(ptr noundef %0) #9
  br label %27

27:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_exti_h_eoi(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.stm32_exti_bank, ptr %5, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 31
  %15 = shl nuw i32 1, %14
  %16 = getelementptr i8, ptr %11, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #9, !srcloc !9
  %17 = getelementptr inbounds %struct.stm32_exti_bank, ptr %5, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = load ptr, ptr %2, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %12, align 4
  %25 = and i32 %24, 31
  %26 = shl nuw i32 1, %25
  %27 = getelementptr i8, ptr %23, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %26) #9, !srcloc !9
  br label %28

28:                                               ; preds = %20, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %29 = load i16, ptr %6, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %31 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.irq_data, ptr %32, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  tail call void @irq_chip_eoi_parent(ptr noundef %0) #9
  br label %37

37:                                               ; preds = %36, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_exti_h_set_affinity(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #2 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @irq_chip_set_affinity_parent(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #9
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %10, %9 ], [ -22, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_exti_h_retrigger(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 31
  %11 = shl nuw i32 1, %10
  %12 = getelementptr inbounds %struct.stm32_exti_bank, ptr %5, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %7, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #9, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_exti_h_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %4, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %9) #9
  %10 = getelementptr inbounds %struct.stm32_exti_bank, ptr %6, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !11
  %14 = getelementptr inbounds %struct.stm32_exti_bank, ptr %6, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %8, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !11
  %18 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 31
  %21 = shl nuw i32 1, %20
  switch i32 %1, label %40 [
    i32 1, label %22
    i32 2, label %26
    i32 3, label %30
  ]

22:                                               ; preds = %2
  %23 = or i32 %21, %13
  %24 = xor i32 %21, -1
  %25 = and i32 %17, %24
  br label %33

26:                                               ; preds = %2
  %27 = xor i32 %21, -1
  %28 = and i32 %13, %27
  %29 = or i32 %21, %17
  br label %33

30:                                               ; preds = %2
  %31 = or i32 %21, %13
  %32 = or i32 %21, %17
  br label %33

33:                                               ; preds = %30, %26, %22
  %34 = phi i32 [ %23, %22 ], [ %28, %26 ], [ %31, %30 ]
  %35 = phi i32 [ %25, %22 ], [ %29, %26 ], [ %32, %30 ]
  %36 = load i32, ptr %10, align 4
  %37 = getelementptr i8, ptr %8, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %34) #9, !srcloc !9
  %38 = load i32, ptr %14, align 4
  %39 = getelementptr i8, ptr %8, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %35) #9, !srcloc !9
  br label %40

40:                                               ; preds = %33, %2
  %41 = phi i32 [ 0, %33 ], [ -22, %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %42 = load i16, ptr %9, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_exti_h_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 31
  %8 = shl nuw i32 1, %7
  %9 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %4, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %9) #9
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %4, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, %8
  store i32 %14, ptr %12, align 4
  br label %20

15:                                               ; preds = %2
  %16 = xor i32 %8, -1
  %17 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %4, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %16
  store i32 %19, ptr %17, align 4
  br label %20

20:                                               ; preds = %15, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %21 = load i16, ptr %9, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @stm32_exti_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %84, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %4, i32 0, i32 2
  store ptr %0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.stm32_exti_drv_data, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 28) #9
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %12, label %14, !prof !8

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %4, i32 0, i32 1
  store ptr null, ptr %13, align 4
  br label %82

14:                                               ; preds = %6
  %15 = extractvalue { i32, i1 } %10, 0
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #13
  %17 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %4, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %82, label %19

19:                                               ; preds = %14
  %20 = tail call ptr @of_iomap(ptr noundef %1, i32 noundef 0) #9
  store ptr %20, ptr %4, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %1) #11
  %24 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %24) #9
  br label %82

25:                                               ; preds = %19
  store ptr %4, ptr @stm32_host_data, align 4
  %26 = load i32, ptr %8, align 4
  %27 = shl i32 %26, 5
  %28 = icmp eq ptr %1, null
  %29 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %30 = select i1 %28, ptr null, ptr %29
  %31 = tail call ptr @__irq_domain_add(ptr noundef %30, i32 noundef %27, i32 noundef %27, i32 noundef 0, ptr noundef nonnull @irq_exti_domain_ops, ptr noundef null) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %1) #11
  br label %77

35:                                               ; preds = %25
  %36 = tail call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %31, i32 noundef 32, i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @handle_edge_irq, i32 noundef 7168, i32 noundef 0, i32 noundef 0) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, ptr %8, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %68, label %43

41:                                               ; preds = %35
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %1) #11
  tail call void @irq_domain_remove(ptr noundef nonnull %31) #9
  br label %77

43:                                               ; preds = %43, %38
  %44 = phi i32 [ %65, %43 ], [ 0, %38 ]
  %45 = load ptr, ptr %0, align 4
  %46 = getelementptr ptr, ptr %45, i32 %44
  %47 = load ptr, ptr %46, align 4
  %48 = tail call fastcc ptr @stm32_exti_chip_init(ptr noundef nonnull %4, i32 noundef %44, ptr noundef %1)
  %49 = shl i32 %44, 5
  %50 = tail call ptr @irq_get_domain_generic_chip(ptr noundef nonnull %31, i32 noundef %49) #9
  %51 = load ptr, ptr %4, align 8
  %52 = getelementptr inbounds %struct.irq_chip_generic, ptr %50, i32 0, i32 1
  store ptr %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.irq_chip_generic, ptr %50, i32 3, i32 2
  store i32 3, ptr %53, align 4
  %54 = getelementptr inbounds %struct.irq_chip_generic, ptr %50, i32 1, i32 6
  store ptr @stm32_irq_ack, ptr %54, align 4
  %55 = getelementptr inbounds %struct.irq_chip_generic, ptr %50, i32 1, i32 7
  store ptr @irq_gc_mask_clr_bit, ptr %55, align 4
  %56 = getelementptr inbounds %struct.irq_chip_generic, ptr %50, i32 1, i32 9
  store ptr @irq_gc_mask_set_bit, ptr %56, align 4
  %57 = getelementptr inbounds %struct.irq_chip_generic, ptr %50, i32 1, i32 13
  store ptr @stm32_irq_set_type, ptr %57, align 4
  %58 = getelementptr inbounds %struct.irq_chip_generic, ptr %50, i32 1, i32 14
  store ptr @irq_gc_set_wake, ptr %58, align 4
  %59 = getelementptr inbounds %struct.irq_chip_generic, ptr %50, i32 0, i32 4
  store ptr @stm32_irq_suspend, ptr %59, align 4
  %60 = getelementptr inbounds %struct.irq_chip_generic, ptr %50, i32 0, i32 5
  store ptr @stm32_irq_resume, ptr %60, align 4
  %61 = getelementptr inbounds %struct.irq_chip_generic, ptr %50, i32 0, i32 11
  store i32 -1, ptr %61, align 4
  %62 = load i32, ptr %47, align 4
  %63 = getelementptr inbounds %struct.irq_chip_generic, ptr %50, i32 2, i32 16
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.irq_chip_generic, ptr %50, i32 0, i32 14
  store ptr %48, ptr %64, align 4
  %65 = add nuw i32 %44, 1
  %66 = load i32, ptr %8, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %43, label %68

68:                                               ; preds = %43, %38
  %69 = tail call i32 @of_irq_count(ptr noundef %1) #9
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %71, %68
  %72 = phi i32 [ %75, %71 ], [ 0, %68 ]
  %73 = tail call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef %72) #9
  %74 = tail call i32 @irq_set_handler_data(i32 noundef %73, ptr noundef nonnull %31) #9
  tail call void @__irq_set_handler(i32 noundef %73, ptr noundef nonnull @stm32_irq_handler, i32 noundef 1, ptr noundef null) #9
  %75 = add nuw nsw i32 %72, 1
  %76 = icmp eq i32 %75, %69
  br i1 %76, label %84, label %71

77:                                               ; preds = %41, %33
  %78 = phi i32 [ %36, %41 ], [ -12, %33 ]
  %79 = load ptr, ptr %4, align 8
  tail call void @iounmap(ptr noundef %79) #9
  %80 = getelementptr inbounds %struct.stm32_exti_host_data, ptr %4, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  tail call void @kfree(ptr noundef %81) #9
  br label %82

82:                                               ; preds = %77, %22, %14, %12
  %83 = phi i32 [ %78, %77 ], [ -12, %22 ], [ -12, %14 ], [ -12, %12 ]
  tail call void @kfree(ptr noundef nonnull %4) #9
  br label %84

84:                                               ; preds = %82, %71, %68, %2
  %85 = phi i32 [ -12, %2 ], [ 0, %68 ], [ %83, %82 ], [ 0, %71 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_irq_ack(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #9
  %8 = load i32, ptr %0, align 4
  %9 = getelementptr inbounds %struct.stm32_exti_bank, ptr %7, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %10
  tail call void %12(i32 noundef %8, ptr noundef %17) #9
  br label %22

18:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %19 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %8) #9, !srcloc !9
  br label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %struct.stm32_exti_bank, ptr %7, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %0, align 4
  %28 = load ptr, ptr %11, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %24
  tail call void %28(i32 noundef %27, ptr noundef %33) #9
  br label %38

34:                                               ; preds = %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %35 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %27) #9, !srcloc !9
  br label %38

38:                                               ; preds = %34, %30, %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %39 = load i16, ptr %3, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @_raw_spin_lock(ptr noundef %4) #9
  %9 = getelementptr inbounds %struct.stm32_exti_bank, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %10
  br i1 %13, label %19, label %17

17:                                               ; preds = %2
  %18 = tail call i32 %12(ptr noundef %16) #9
  br label %21

19:                                               ; preds = %2
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.stm32_exti_bank, ptr %8, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %11, align 4
  %26 = icmp eq ptr %25, null
  %27 = load ptr, ptr %14, align 4
  %28 = getelementptr i8, ptr %27, i32 %24
  br i1 %26, label %31, label %29

29:                                               ; preds = %21
  %30 = tail call i32 %25(ptr noundef %28) #9
  br label %33

31:                                               ; preds = %21
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 31
  %38 = shl nuw i32 1, %37
  switch i32 %1, label %73 [
    i32 1, label %39
    i32 2, label %43
    i32 3, label %47
  ]

39:                                               ; preds = %33
  %40 = or i32 %38, %22
  %41 = xor i32 %38, -1
  %42 = and i32 %34, %41
  br label %50

43:                                               ; preds = %33
  %44 = xor i32 %38, -1
  %45 = and i32 %22, %44
  %46 = or i32 %38, %34
  br label %50

47:                                               ; preds = %33
  %48 = or i32 %38, %22
  %49 = or i32 %38, %34
  br label %50

50:                                               ; preds = %47, %43, %39
  %51 = phi i32 [ %40, %39 ], [ %45, %43 ], [ %48, %47 ]
  %52 = phi i32 [ %42, %39 ], [ %46, %43 ], [ %49, %47 ]
  %53 = load i32, ptr %9, align 4
  %54 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr %14, align 4
  %59 = getelementptr i8, ptr %58, i32 %53
  tail call void %55(i32 noundef %51, ptr noundef %59) #9
  br label %63

60:                                               ; preds = %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %61 = load ptr, ptr %14, align 4
  %62 = getelementptr i8, ptr %61, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %51) #9, !srcloc !9
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, ptr %23, align 4
  %65 = load ptr, ptr %54, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %14, align 4
  %69 = getelementptr i8, ptr %68, i32 %64
  tail call void %65(i32 noundef %52, ptr noundef %69) #9
  br label %73

70:                                               ; preds = %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %71 = load ptr, ptr %14, align 4
  %72 = getelementptr i8, ptr %71, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %52) #9, !srcloc !9
  br label %73

73:                                               ; preds = %70, %67, %33
  %74 = phi i32 [ -22, %33 ], [ 0, %67 ], [ 0, %70 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %75 = load i16, ptr %4, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_gc_set_wake(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_irq_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_lock(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %3, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stm32_exti_bank, ptr %7, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !11
  %14 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %3, i32 0, i32 5
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.stm32_exti_bank, ptr %7, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %9, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !11
  %19 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %3, i32 0, i32 6
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr %7, align 4
  %21 = getelementptr i8, ptr %9, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %5) #9, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %22 = load i16, ptr %0, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_irq_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_lock(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.irq_chip_generic, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %3, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %3, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.stm32_exti_bank, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %9, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #9, !srcloc !9
  %15 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %3, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.stm32_exti_bank, ptr %7, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %9, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #9, !srcloc !9
  %20 = load i32, ptr %7, align 4
  %21 = getelementptr i8, ptr %9, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %5) #9, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %22 = load i16, ptr %0, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_handler_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_irq_handler(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.irq_domain, ptr %4, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !10
  %11 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %16(ptr noundef %19) #9
  br label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %22(ptr noundef %23) #9
  %24 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void %25(ptr noundef %23) #9
  br label %28

28:                                               ; preds = %27, %20, %18, %1
  %29 = icmp eq i32 %10, 0
  br i1 %29, label %86, label %30

30:                                               ; preds = %82, %28
  %31 = phi i32 [ %84, %82 ], [ 0, %28 ]
  %32 = phi i32 [ %83, %82 ], [ 0, %28 ]
  %33 = call ptr @irq_get_domain_generic_chip(ptr noundef %4, i32 noundef %31) #9
  %34 = getelementptr inbounds %struct.irq_chip_generic, ptr %33, i32 0, i32 14
  %35 = getelementptr inbounds %struct.irq_chip_generic, ptr %33, i32 0, i32 2
  %36 = getelementptr inbounds %struct.irq_chip_generic, ptr %33, i32 0, i32 1
  br label %37

37:                                               ; preds = %74, %30
  %38 = load ptr, ptr %34, align 4
  %39 = getelementptr inbounds %struct.stm32_exti_chip_data, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.stm32_exti_bank, ptr %40, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %35, align 4
  %44 = icmp eq ptr %43, null
  %45 = load ptr, ptr %36, align 4
  %46 = getelementptr i8, ptr %45, i32 %42
  br i1 %44, label %49, label %47

47:                                               ; preds = %37
  %48 = call i32 %43(ptr noundef %46) #9
  br label %51

49:                                               ; preds = %37
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = getelementptr inbounds %struct.stm32_exti_bank, ptr %40, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %68, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %35, align 4
  %58 = icmp eq ptr %57, null
  %59 = load ptr, ptr %36, align 4
  %60 = getelementptr i8, ptr %59, i32 %54
  br i1 %58, label %63, label %61

61:                                               ; preds = %56
  %62 = call i32 %57(ptr noundef %60) #9
  br label %65

63:                                               ; preds = %56
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = or i32 %66, %52
  br label %68

68:                                               ; preds = %65, %51
  %69 = phi i32 [ %67, %65 ], [ %52, %51 ]
  store i32 %69, ptr %2, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %68
  %72 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #9
  %73 = icmp slt i32 %72, 32
  br i1 %73, label %75, label %74

74:                                               ; preds = %75, %71
  br label %37

75:                                               ; preds = %75, %71
  %76 = phi i32 [ %80, %75 ], [ %72, %71 ]
  %77 = add i32 %76, %31
  %78 = call i32 @generic_handle_domain_irq(ptr noundef %4, i32 noundef %77) #9
  %79 = add nsw i32 %76, 1
  %80 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %79) #9
  %81 = icmp slt i32 %80, 32
  br i1 %81, label %75, label %74

82:                                               ; preds = %68
  %83 = add nuw i32 %32, 1
  %84 = add i32 %31, 32
  %85 = icmp eq i32 %83, %10
  br i1 %85, label %86, label %30

86:                                               ; preds = %82, %28
  %87 = load ptr, ptr %11, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 9
  %91 = load ptr, ptr %90, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi ptr [ %91, %89 ], [ %87, %86 ]
  %94 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %93(ptr noundef %94) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_map_generic_chip(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_exti_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @irq_map_generic_chip(ptr noundef %0, i32 noundef %1, i32 noundef %6) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_exti_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %1) #9
  tail call void @irq_domain_reset_irq_data(ptr noundef %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_reset_irq_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
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
!9 = !{i64 3102948}
!10 = !{!"auto-init"}
!11 = !{i64 3103366}
!12 = !{i64 2149191594}
!13 = !{i64 2149187418}
!14 = !{i64 2149187493, i64 2149187520, i64 2149187567, i64 2149187589, i64 2149187617, i64 2149187637}
!15 = !{i64 2149214597}
!16 = !{i64 2151075694}
!17 = !{i64 2151076358}
