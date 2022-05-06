; ModuleID = '/llk/IR/drivers/irqchip/irq-bcm7038-l1.c_pt.bc'
source_filename = "../drivers/irqchip/irq-bcm7038-l1.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpumask = type { [1 x i32] }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bcm7038_l1_chip = type { %struct.raw_spinlock, i32, ptr, [16 x ptr], %struct.list_head, [8 x i32], [8 x i32], [256 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.bcm7038_l1_cpu = type { ptr, [0 x i32] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_irq_bcm7038_l1__170_460_bcm7038_l1_driver_init6 = internal global ptr @bcm7038_l1_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_description171 = internal constant [78 x i8] c"irq_bcm7038_l1.description=Broadcom STB 7038-style L1/L2 interrupt controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [51 x i8] c"irq_bcm7038_l1.file=drivers/irqchip/irq-bcm7038-l1\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [30 x i8] c"irq_bcm7038_l1.license=GPL v2\00", section ".modinfo", align 1
@bcm7038_l1_driver = internal global %struct.platform_driver { ptr @platform_irqchip_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @bcm7038_l1_irqchip_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"bcm7038_l1\00", align 1
@bcm7038_l1_irqchip_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7038-l1-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm7038_l1_of_init }, %struct.of_device_id zeroinitializer], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"\013irq_bcm7038_l1: failed to remap intc L1 registers\0A\00", align 1
@bcm7038_l1_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @bcm7038_l1_map, ptr null, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@bcm7038_l1_intcs_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@bcm7038_l1_intcs_list = internal global %struct.list_head { ptr @bcm7038_l1_intcs_list, ptr @bcm7038_l1_intcs_list }, align 4
@bcm7038_l1_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @bcm7038_l1_suspend, ptr @bcm7038_l1_resume, ptr null }, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"\016irq_bcm7038_l1: registered BCM7038 L1 intc (%pOF, IRQs: %d)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"brcm,int-fwd-mask\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"\013irq_bcm7038_l1: invalid brcm,int-fwd-mask property\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"\013irq_bcm7038_l1: failed to map parent interrupt %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"brcm,irq-can-wake\00", align 1
@bcm7038_l1_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7038_l1_mask, ptr null, ptr @bcm7038_l1_unmask, ptr null, ptr null, ptr null, ptr null, ptr @bcm7038_l1_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"bcm7038-l1\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__initcall__kmod_irq_bcm7038_l1__170_460_bcm7038_l1_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm7038_l1_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm7038_l1_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irqchip_probe(ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm7038_l1_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 404) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %67, label %6

6:                                                ; preds = %2
  store i32 0, ptr %4, align 8
  br label %7

7:                                                ; preds = %12, %6
  %8 = phi i32 [ -1, %6 ], [ %9, %12 ]
  %9 = tail call i32 @cpumask_next(i32 noundef %8, ptr noundef nonnull @__cpu_possible_mask) #12
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = tail call fastcc i32 @bcm7038_l1_init_one(ptr noundef %0, i32 noundef %9, ptr noundef nonnull %4) #13
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %7

15:                                               ; preds = %12
  %16 = icmp eq i32 %9, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  br label %65

19:                                               ; preds = %15, %7
  %20 = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %4, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %21, 5
  %23 = icmp eq ptr %0, null
  %24 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %25 = select i1 %23, ptr null, ptr %24
  %26 = tail call ptr @__irq_domain_add(ptr noundef %25, i32 noundef %22, i32 noundef %22, i32 noundef 0, ptr noundef nonnull @bcm7038_l1_domain_ops, ptr noundef nonnull %4) #10
  %27 = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %4, i32 0, i32 2
  store ptr %26, ptr %27, align 8
  %28 = icmp eq ptr %26, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  %31 = load i32, ptr @nr_cpu_ids, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %49, label %65

33:                                               ; preds = %19
  tail call void @_raw_spin_lock(ptr noundef nonnull @bcm7038_l1_intcs_lock) #10
  %34 = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %4, i32 0, i32 4
  %35 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @bcm7038_l1_intcs_list, i32 0, i32 1), align 4
  store ptr %34, ptr getelementptr inbounds (%struct.list_head, ptr @bcm7038_l1_intcs_list, i32 0, i32 1), align 4
  store ptr @bcm7038_l1_intcs_list, ptr %34, align 4
  %36 = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %4, i32 0, i32 4, i32 1
  store ptr %35, ptr %36, align 8
  store volatile ptr %34, ptr %35, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %37 = load i16, ptr @bcm7038_l1_intcs_lock, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr @bcm7038_l1_intcs_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %39 = load volatile ptr, ptr @bcm7038_l1_intcs_list, align 4
  %40 = icmp eq ptr %39, @bcm7038_l1_intcs_list
  %41 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @bcm7038_l1_intcs_list, i32 0, i32 1), align 4
  %42 = icmp ne ptr %39, %41
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  tail call void @register_syscore_ops(ptr noundef nonnull @bcm7038_l1_syscore_ops) #10
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i32, ptr %20, align 4
  %47 = shl i32 %46, 5
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0, i32 noundef %47) #14
  br label %67

49:                                               ; preds = %61, %29
  %50 = phi i32 [ %62, %61 ], [ %31, %29 ]
  %51 = phi i32 [ %63, %61 ], [ %30, %29 ]
  %52 = getelementptr %struct.bcm7038_l1_chip, ptr %4, i32 0, i32 3, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load ptr, ptr %53, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call void @iounmap(ptr noundef nonnull %56) #10
  br label %59

59:                                               ; preds = %58, %55
  tail call void @kfree(ptr noundef nonnull %53) #10
  %60 = load i32, ptr @nr_cpu_ids, align 4
  br label %61

61:                                               ; preds = %59, %49
  %62 = phi i32 [ %60, %59 ], [ %50, %49 ]
  %63 = tail call i32 @cpumask_next(i32 noundef %51, ptr noundef nonnull @__cpu_possible_mask) #12
  %64 = icmp ult i32 %63, %62
  br i1 %64, label %49, label %65

65:                                               ; preds = %61, %29, %17
  %66 = phi i32 [ %13, %17 ], [ -12, %29 ], [ -12, %61 ]
  tail call void @kfree(ptr noundef nonnull %4) #10
  br label %67

67:                                               ; preds = %65, %45, %2
  %68 = phi i32 [ 0, %45 ], [ %66, %65 ], [ -12, %2 ]
  ret i32 %68
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @bcm7038_l1_init_one(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !12
  %5 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %78

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %4, align 4
  %11 = add i32 %9, 1
  %12 = sub i32 %11, %10
  %13 = lshr i32 %12, 4
  %14 = icmp ugt i32 %12, 143
  br i1 %14, label %78, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %2, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 %13, ptr %16, align 4
  br label %22

20:                                               ; preds = %15
  %21 = icmp eq i32 %17, %13
  br i1 %21, label %22, label %78

22:                                               ; preds = %20, %19
  %23 = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %2, i32 0, i32 6
  %24 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %23, i32 noundef %13, i32 noundef 0) #10
  %25 = call i32 @llvm.smin.i32(i32 %24, i32 0) #10
  switch i32 %25, label %26 [
    i32 -22, label %28
    i32 0, label %28
  ]

26:                                               ; preds = %22
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  br label %78

28:                                               ; preds = %22, %22
  %29 = shl nuw nsw i32 %13, 2
  %30 = add nuw nsw i32 %29, 4
  %31 = call noalias align 64 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #15
  %32 = getelementptr %struct.bcm7038_l1_chip, ptr %2, i32 0, i32 3, i32 %1
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %78, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr %4, align 4
  %36 = call ptr @ioremap(i32 noundef %35, i32 noundef %12) #10
  store ptr %36, ptr %31, align 64
  %37 = icmp eq ptr %36, null
  br i1 %37, label %78, label %38

38:                                               ; preds = %34
  %39 = icmp ult i32 %12, 16
  br i1 %39, label %67, label %40

40:                                               ; preds = %38
  %41 = call i32 @llvm.umax.i32(i32 %13, i32 1)
  br label %42

42:                                               ; preds = %65, %40
  %43 = phi ptr [ %66, %65 ], [ %36, %40 ]
  %44 = phi i32 [ %63, %65 ], [ 0, %40 ]
  %45 = getelementptr %struct.bcm7038_l1_chip, ptr %2, i32 0, i32 6, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, ptr %16, align 4
  %49 = shl i32 %48, 1
  %50 = add i32 %49, %44
  %51 = shl i32 %50, 2
  %52 = getelementptr i8, ptr %43, i32 %51
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %47) #10, !srcloc !14
  %53 = load i32, ptr %45, align 4
  %54 = load ptr, ptr %31, align 64
  %55 = load i32, ptr %16, align 4
  %56 = mul i32 %55, 3
  %57 = add i32 %56, %44
  %58 = shl i32 %57, 2
  %59 = getelementptr i8, ptr %54, i32 %58
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %53) #10, !srcloc !14
  %60 = load i32, ptr %45, align 4
  %61 = xor i32 %60, -1
  %62 = getelementptr %struct.bcm7038_l1_cpu, ptr %31, i32 0, i32 1, i32 %44
  store i32 %61, ptr %62, align 4
  %63 = add nuw nsw i32 %44, 1
  %64 = icmp eq i32 %63, %41
  br i1 %64, label %67, label %65

65:                                               ; preds = %42
  %66 = load ptr, ptr %31, align 64
  br label %42

67:                                               ; preds = %42, %38
  %68 = call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef %1) #10
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0) #14
  br label %78

72:                                               ; preds = %67
  %73 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef null) #10
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = call i32 @irq_set_irq_wake(i32 noundef %68, i32 noundef 1) #10
  br label %77

77:                                               ; preds = %75, %72
  call void @irq_set_chained_handler_and_data(i32 noundef %68, ptr noundef nonnull @bcm7038_l1_irq_handle, ptr noundef %2) #10
  br label %78

78:                                               ; preds = %77, %70, %34, %28, %26, %20, %7, %3
  %79 = phi i32 [ -22, %26 ], [ 0, %77 ], [ -22, %70 ], [ -22, %3 ], [ -22, %7 ], [ -22, %20 ], [ -12, %28 ], [ -12, %34 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  ret i32 %79
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm7038_l1_irq_handle(ptr noundef %0) #8 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %14(ptr noundef %17) #10
  br label %26

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %20(ptr noundef %21) #10
  %22 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void %23(ptr noundef %21) #10
  br label %26

26:                                               ; preds = %25, %18, %16, %1
  %27 = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %58, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %4, i32 0, i32 2
  br label %32

32:                                               ; preds = %54, %30
  %33 = phi i32 [ 0, %30 ], [ %55, %54 ]
  %34 = shl i32 %33, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !12
  %35 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %36 = load ptr, ptr %8, align 4
  %37 = shl i32 %33, 2
  %38 = getelementptr i8, ptr %36, i32 %37
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #10, !srcloc !15
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !16
  %40 = getelementptr %struct.bcm7038_l1_cpu, ptr %8, i32 0, i32 1, i32 %33
  %41 = load i32, ptr %40, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %39, %42
  store i32 %43, ptr %2, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %35) #10
  %44 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #10
  %45 = icmp slt i32 %44, 32
  br i1 %45, label %46, label %54

46:                                               ; preds = %46, %32
  %47 = phi i32 [ %52, %46 ], [ %44, %32 ]
  %48 = load ptr, ptr %31, align 4
  %49 = add i32 %47, %34
  %50 = call i32 @generic_handle_domain_irq(ptr noundef %48, i32 noundef %49) #10
  %51 = add nsw i32 %47, 1
  %52 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %51) #10
  %53 = icmp slt i32 %52, 32
  br i1 %53, label %46, label %54

54:                                               ; preds = %46, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %55 = add nuw i32 %33, 1
  %56 = load i32, ptr %27, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %32, label %58

58:                                               ; preds = %54, %26
  %59 = load ptr, ptr %9, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 9
  %63 = load ptr, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi ptr [ %63, %61 ], [ %59, %58 ]
  %66 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %65(ptr noundef %66) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7038_l1_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = and i32 %2, 31
  %7 = shl nuw i32 1, %6
  %8 = lshr i32 %2, 5
  %9 = getelementptr %struct.bcm7038_l1_chip, ptr %5, i32 0, i32 6, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, %7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @bcm7038_l1_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #10
  %14 = load ptr, ptr %4, align 4
  %15 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %14) #10
  %16 = tail call ptr @irq_get_irq_data(i32 noundef %1) #10
  %17 = getelementptr inbounds %struct.irq_data, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, 16777216
  store i32 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %13, %3
  %22 = phi i32 [ 0, %13 ], [ -1, %3 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm7038_l1_mask(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.bcm7038_l1_chip, ptr %3, i32 0, i32 7, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = load ptr, ptr %2, align 4
  %11 = lshr i32 %6, 5
  %12 = and i32 %6, 31
  %13 = shl nuw i32 1, %12
  %14 = getelementptr %struct.bcm7038_l1_chip, ptr %10, i32 0, i32 3, i32 %9
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.bcm7038_l1_cpu, ptr %15, i32 0, i32 1, i32 %11
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, %13
  store i32 %18, ptr %16, align 4
  %19 = load ptr, ptr %14, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %10, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %22, 1
  %24 = add i32 %23, %11
  %25 = shl i32 %24, 2
  %26 = getelementptr i8, ptr %20, i32 %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %13) #10, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm7038_l1_unmask(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.bcm7038_l1_chip, ptr %3, i32 0, i32 7, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = load ptr, ptr %2, align 4
  %11 = lshr i32 %6, 5
  %12 = and i32 %6, 31
  %13 = shl nuw i32 1, %12
  %14 = xor i32 %13, -1
  %15 = getelementptr %struct.bcm7038_l1_chip, ptr %10, i32 0, i32 3, i32 %9
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.bcm7038_l1_cpu, ptr %16, i32 0, i32 1, i32 %11
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %14
  store i32 %19, ptr %17, align 4
  %20 = load ptr, ptr %15, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %10, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, 3
  %25 = add i32 %24, %11
  %26 = shl i32 %25, 2
  %27 = getelementptr i8, ptr %21, i32 %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %13) #10, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7038_l1_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 5
  %8 = and i32 %6, 31
  %9 = shl nuw i32 1, %8
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr %struct.bcm7038_l1_chip, ptr %4, i32 0, i32 5, i32 %7
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, %9
  store i32 %15, ptr %13, align 4
  br label %21

16:                                               ; preds = %2
  %17 = xor i32 %9, -1
  %18 = getelementptr %struct.bcm7038_l1_chip, ptr %4, i32 0, i32 5, i32 %7
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, %17
  store i32 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %16, %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %10) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7038_l1_suspend() #8 {
  %1 = load ptr, ptr @bcm7038_l1_intcs_list, align 4
  %2 = icmp eq ptr %1, @bcm7038_l1_intcs_list
  br i1 %2, label %40, label %6

3:                                                ; preds = %15, %6
  %4 = load ptr, ptr %7, align 4
  %5 = icmp eq ptr %4, @bcm7038_l1_intcs_list
  br i1 %5, label %40, label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %8 = getelementptr i8, ptr %7, i32 -72
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %3, label %11

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %7, i32 8
  %13 = getelementptr i8, ptr %7, i32 40
  %14 = getelementptr i8, ptr %7, i32 -64
  br label %15

15:                                               ; preds = %15, %11
  %16 = phi i32 [ %9, %11 ], [ %38, %15 ]
  %17 = phi i32 [ 0, %11 ], [ %37, %15 ]
  %18 = getelementptr [8 x i32], ptr %12, i32 0, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr [8 x i32], ptr %13, i32 0, i32 %17
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, %19
  %23 = xor i32 %22, -1
  %24 = load ptr, ptr %14, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = shl i32 %16, 1
  %27 = add i32 %26, %17
  %28 = shl i32 %27, 2
  %29 = getelementptr i8, ptr %25, i32 %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %23) #10, !srcloc !14
  %30 = load ptr, ptr %14, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %8, align 4
  %33 = mul i32 %32, 3
  %34 = add i32 %33, %17
  %35 = shl i32 %34, 2
  %36 = getelementptr i8, ptr %31, i32 %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %22) #10, !srcloc !14
  %37 = add nuw i32 %17, 1
  %38 = load i32, ptr %8, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %15, label %3

40:                                               ; preds = %3, %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm7038_l1_resume() #8 {
  %1 = load ptr, ptr @bcm7038_l1_intcs_list, align 4
  %2 = icmp eq ptr %1, @bcm7038_l1_intcs_list
  br i1 %2, label %37, label %6

3:                                                ; preds = %13, %6
  %4 = load ptr, ptr %7, align 4
  %5 = icmp eq ptr %4, @bcm7038_l1_intcs_list
  br i1 %5, label %37, label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %8 = getelementptr i8, ptr %7, i32 -72
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %3, label %11

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %7, i32 -64
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i32 [ %9, %11 ], [ %35, %13 ]
  %15 = phi i32 [ 0, %11 ], [ %34, %13 ]
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr %struct.bcm7038_l1_cpu, ptr %16, i32 0, i32 1, i32 %15
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %16, align 4
  %20 = shl i32 %14, 1
  %21 = add i32 %20, %15
  %22 = shl i32 %21, 2
  %23 = getelementptr i8, ptr %19, i32 %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %18) #10, !srcloc !14
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr %struct.bcm7038_l1_cpu, ptr %24, i32 0, i32 1, i32 %15
  %26 = load i32, ptr %25, align 4
  %27 = xor i32 %26, -1
  %28 = load ptr, ptr %24, align 4
  %29 = load i32, ptr %8, align 4
  %30 = mul i32 %29, 3
  %31 = add i32 %30, %15
  %32 = shl i32 %31, 2
  %33 = getelementptr i8, ptr %28, i32 %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %27) #10, !srcloc !14
  %34 = add nuw i32 %15, 1
  %35 = load i32, ptr %8, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %13, label %3

37:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { cold }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

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
!8 = !{i64 2149241913}
!9 = !{i64 2149237737}
!10 = !{i64 2149237812, i64 2149237839, i64 2149237886, i64 2149237908, i64 2149237936, i64 2149237956}
!11 = !{i64 2149264916}
!12 = !{!"auto-init"}
!13 = !{i64 2152199485}
!14 = !{i64 3060208}
!15 = !{i64 3060626}
!16 = !{i64 2152197315}
