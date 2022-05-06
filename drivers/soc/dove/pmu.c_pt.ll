; ModuleID = '/llk/IR/drivers/soc/dove/pmu.c_pt.bc'
source_filename = "../drivers/soc/dove/pmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmu_data = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.reset_controller_dev }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.dove_pmu_initdata = type { ptr, ptr, i32, i32, ptr }
%struct.dove_pmu_domain_initdata = type { i32, i32, i32, ptr }
%struct.pmu_domain = type { ptr, i32, i32, i32, %struct.generic_pm_domain }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.5 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.5 = type { %struct.mutex }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }

@.str = private unnamed_addr constant [34 x i8] c"\013dove_init_pmu_irq() failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"marvell,dove-pmu\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"domains\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"\013%pOFn: failed to find domains sub-node\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"\013%pOFn: failed to map PMU\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%pOFn\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"marvell,pmu_pwr_mask\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"marvell,pmu_iso_mask\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"resets\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"#reset-cells\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\013%pOFn: no interrupt specified\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@pmu_reset = internal unnamed_addr constant %struct.reset_controller_dev { ptr @pmu_reset_ops, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, i32 0, ptr null, i32 32 }, section ".init.data", align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"\013pmu: %s failed: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"reset_controller_register\00", align 1
@pmu_reset_ops = internal constant %struct.reset_control_ops { ptr @pmu_reset_reset, ptr @pmu_reset_assert, ptr @pmu_reset_deassert, ptr null }, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"pmu_irq\00", align 1
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@.str.14 = private unnamed_addr constant [32 x i8] c"\013%s: unable to add irq domain\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"\013%s: unable to alloc irq domain gc: %d\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @dove_init_pmu_legacy(ptr nocapture noundef readonly %0) local_unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 68) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %62, label %5

5:                                                ; preds = %1
  store i32 0, ptr %3, align 8
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.pmu_data, ptr %3, i32 0, i32 2
  store ptr %6, ptr %7, align 8
  %8 = getelementptr inbounds %struct.dove_pmu_initdata, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pmu_data, ptr %3, i32 0, i32 3
  store ptr %9, ptr %10, align 4
  tail call fastcc void @pmu_reset_init(ptr noundef nonnull %3) #10
  %11 = getelementptr inbounds %struct.dove_pmu_initdata, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dove_pmu_domain_initdata, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %48, label %16

16:                                               ; preds = %43, %5
  %17 = phi ptr [ %45, %43 ], [ %13, %5 ]
  %18 = phi ptr [ %44, %43 ], [ %12, %5 ]
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 816) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %16
  store ptr %3, ptr %20, align 8
  %23 = load i32, ptr %18, align 4
  %24 = getelementptr inbounds %struct.pmu_domain, ptr %20, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.dove_pmu_domain_initdata, ptr %18, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.pmu_domain, ptr %20, i32 0, i32 2
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.dove_pmu_domain_initdata, ptr %18, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.pmu_domain, ptr %20, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = load ptr, ptr %17, align 4
  %32 = getelementptr inbounds %struct.pmu_domain, ptr %20, i32 0, i32 4, i32 10
  store ptr %31, ptr %32, align 4
  %33 = load ptr, ptr %10, align 4
  %34 = getelementptr i8, ptr %33, i32 16
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #11, !srcloc !8
  %36 = getelementptr inbounds %struct.pmu_domain, ptr %20, i32 0, i32 4
  %37 = getelementptr inbounds %struct.pmu_domain, ptr %20, i32 0, i32 4, i32 18
  store ptr @pmu_domain_power_off, ptr %37, align 4
  %38 = getelementptr inbounds %struct.pmu_domain, ptr %20, i32 0, i32 4, i32 19
  store ptr @pmu_domain_power_on, ptr %38, align 8
  %39 = load i32, ptr %24, align 4
  %40 = and i32 %39, %35
  %41 = icmp eq i32 %40, 0
  %42 = tail call i32 @pm_genpd_init(ptr noundef %36, ptr noundef null, i1 noundef zeroext %41) #11
  br label %43

43:                                               ; preds = %22, %16
  %44 = getelementptr %struct.dove_pmu_domain_initdata, ptr %18, i32 1
  %45 = getelementptr %struct.dove_pmu_domain_initdata, ptr %18, i32 1, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %16

48:                                               ; preds = %43, %5
  %49 = getelementptr inbounds %struct.dove_pmu_initdata, ptr %0, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = tail call fastcc i32 @dove_init_pmu_irq(ptr noundef nonnull %3, i32 noundef %50) #10
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %51) #12
  br label %55

55:                                               ; preds = %53, %48
  %56 = getelementptr inbounds %struct.pmu_data, ptr %3, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.dove_pmu_initdata, ptr %0, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  tail call void @irq_domain_associate_many(ptr noundef nonnull %57, i32 noundef %61, i32 noundef 0, i32 noundef 7) #11
  br label %62

62:                                               ; preds = %59, %55, %1
  %63 = phi i32 [ -12, %1 ], [ 0, %59 ], [ 0, %55 ]
  ret i32 %63
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @pmu_reset_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.pmu_data, ptr %0, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %2, ptr noundef nonnull align 4 dereferenceable(44) @pmu_reset, i32 44, i1 false)
  %3 = getelementptr inbounds %struct.pmu_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pmu_data, ptr %0, i32 0, i32 6, i32 5
  store ptr %4, ptr %5, align 4
  %6 = tail call i32 @reset_controller_register(ptr noundef %2) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %6) #12
  br label %10

10:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @dove_init_pmu_irq(ptr noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  %3 = getelementptr inbounds %struct.pmu_data, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #11, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #11, !srcloc !10
  %8 = getelementptr inbounds %struct.pmu_data, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.device_node, ptr %9, i32 0, i32 3
  %12 = select i1 %10, ptr null, ptr %11
  %13 = tail call ptr @__irq_domain_add(ptr noundef %12, i32 noundef 7, i32 noundef 7, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13) #12
  br label %32

17:                                               ; preds = %2
  %18 = tail call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %13, i32 noundef 7, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @handle_level_irq, i32 noundef 3072, i32 noundef 0, i32 noundef 1) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef %18) #12
  tail call void @irq_domain_remove(ptr noundef nonnull %13) #11
  br label %32

22:                                               ; preds = %17
  %23 = tail call ptr @irq_get_domain_generic_chip(ptr noundef nonnull %13, i32 noundef 0) #11
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr inbounds %struct.irq_chip_generic, ptr %23, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.irq_chip_generic, ptr %23, i32 2, i32 16
  store i32 84, ptr %26, align 4
  %27 = getelementptr inbounds %struct.irq_chip_generic, ptr %23, i32 1, i32 7
  store ptr @irq_gc_mask_clr_bit, ptr %27, align 4
  %28 = getelementptr inbounds %struct.irq_chip_generic, ptr %23, i32 1, i32 9
  store ptr @irq_gc_mask_set_bit, ptr %28, align 4
  %29 = getelementptr inbounds %struct.pmu_data, ptr %0, i32 0, i32 5
  store ptr %13, ptr %29, align 4
  %30 = getelementptr inbounds %struct.pmu_data, ptr %0, i32 0, i32 4
  store ptr %23, ptr %30, align 4
  %31 = tail call i32 @irq_set_handler_data(i32 noundef %1, ptr noundef %0) #11
  tail call void @__irq_set_handler(i32 noundef %1, ptr noundef nonnull @pmu_irq_handler, i32 noundef 1, ptr noundef null) #11
  br label %32

32:                                               ; preds = %22, %20, %15
  %33 = phi i32 [ %18, %20 ], [ 0, %22 ], [ -12, %15 ]
  ret i32 %33
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_associate_many(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @dove_init_pmu() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca %struct.of_phandle_args, align 4
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %83, label %4

4:                                                ; preds = %0
  %5 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %2, ptr noundef nonnull @.str.2) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %2) #12
  br label %83

9:                                                ; preds = %4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 68) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %83, label %13

13:                                               ; preds = %9
  store i32 0, ptr %11, align 8
  %14 = getelementptr inbounds %struct.pmu_data, ptr %11, i32 0, i32 1
  store ptr %2, ptr %14, align 4
  %15 = tail call ptr @of_iomap(ptr noundef nonnull %2, i32 noundef 0) #11
  %16 = getelementptr inbounds %struct.pmu_data, ptr %11, i32 0, i32 2
  store ptr %15, ptr %16, align 8
  %17 = tail call ptr @of_iomap(ptr noundef nonnull %2, i32 noundef 1) #11
  %18 = getelementptr inbounds %struct.pmu_data, ptr %11, i32 0, i32 3
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %15, null
  %20 = icmp eq ptr %17, null
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %2) #12
  tail call void @iounmap(ptr noundef %17) #11
  tail call void @iounmap(ptr noundef %15) #11
  tail call void @kfree(ptr noundef nonnull %11) #11
  br label %83

24:                                               ; preds = %13
  tail call fastcc void @pmu_reset_init(ptr noundef nonnull %11) #10
  %25 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %5, ptr noundef null) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %72, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  br label %29

29:                                               ; preds = %56, %27
  %30 = phi ptr [ %25, %27 ], [ %70, %56 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %1) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %1, i8 0, i32 72, i1 false), !annotation !12
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %32 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 816) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %55, label %34

34:                                               ; preds = %29
  store ptr %11, ptr %32, align 8
  %35 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.5, ptr noundef nonnull %30) #11
  %36 = getelementptr inbounds %struct.pmu_domain, ptr %32, i32 0, i32 4, i32 10
  store ptr %35, ptr %36, align 4
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  call void @kfree(ptr noundef nonnull %32) #11
  br label %55

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.pmu_domain, ptr %32, i32 0, i32 1
  %41 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %30, ptr noundef nonnull @.str.6, ptr noundef %40, i32 noundef 1, i32 noundef 0) #11
  %42 = getelementptr inbounds %struct.pmu_domain, ptr %32, i32 0, i32 3
  %43 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %30, ptr noundef nonnull @.str.7, ptr noundef %42, i32 noundef 1, i32 noundef 0) #11
  %44 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %30, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %1) #11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load ptr, ptr %1, align 4
  %48 = load ptr, ptr %14, align 4
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, ptr %28, align 4
  %52 = shl nuw i32 1, %51
  %53 = getelementptr inbounds %struct.pmu_domain, ptr %32, i32 0, i32 2
  store i32 %52, ptr %53, align 8
  br label %54

54:                                               ; preds = %50, %46
  call void @of_node_put(ptr noundef %47) #11
  br label %56

55:                                               ; preds = %38, %29
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1) #11
  br label %72

56:                                               ; preds = %54, %39
  %57 = load ptr, ptr %32, align 8
  %58 = getelementptr inbounds %struct.pmu_data, ptr %57, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 16
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #11, !srcloc !8
  %62 = getelementptr inbounds %struct.pmu_domain, ptr %32, i32 0, i32 4
  %63 = getelementptr inbounds %struct.pmu_domain, ptr %32, i32 0, i32 4, i32 18
  store ptr @pmu_domain_power_off, ptr %63, align 4
  %64 = getelementptr inbounds %struct.pmu_domain, ptr %32, i32 0, i32 4, i32 19
  store ptr @pmu_domain_power_on, ptr %64, align 8
  %65 = load i32, ptr %40, align 4
  %66 = and i32 %65, %61
  %67 = icmp eq i32 %66, 0
  %68 = call i32 @pm_genpd_init(ptr noundef %62, ptr noundef null, i1 noundef zeroext %67) #11
  %69 = call i32 @of_genpd_add_provider_simple(ptr noundef nonnull %30, ptr noundef %62) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1) #11
  %70 = call ptr @of_get_next_available_child(ptr noundef nonnull %5, ptr noundef nonnull %30) #11
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %29

72:                                               ; preds = %56, %55, %24
  %73 = load ptr, ptr %14, align 4
  %74 = call i32 @irq_of_parse_and_map(ptr noundef %73, i32 noundef 0) #11
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %2) #12
  br label %83

78:                                               ; preds = %72
  %79 = call fastcc i32 @dove_init_pmu_irq(ptr noundef nonnull %11, i32 noundef %74) #10
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %79) #12
  br label %83

83:                                               ; preds = %81, %78, %76, %22, %9, %7, %0
  %84 = phi i32 [ -12, %22 ], [ 0, %7 ], [ 0, %0 ], [ -12, %9 ], [ 0, %78 ], [ 0, %81 ], [ 0, %76 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmu_reset_reset(ptr noundef %0, i32 noundef %1) #8 {
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !8
  %9 = shl nuw i32 1, %1
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #11, !srcloc !10
  %14 = or i32 %8, %9
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr i8, ptr %15, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #11, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmu_reset_assert(ptr noundef %0, i32 noundef %1) #8 {
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = shl nuw i32 1, %1
  %5 = xor i32 %4, -1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %7 = getelementptr i8, ptr %0, i32 -16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 48
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !8
  %11 = and i32 %10, %5
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #11, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %6) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmu_reset_deassert(ptr noundef %0, i32 noundef %1) #8 {
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = shl nuw i32 1, %1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 48
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !8
  %10 = or i32 %9, %4
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #11, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %5) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmu_domain_power_off(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pmu_data, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pmu_data, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %9 = getelementptr i8, ptr %0, i32 -4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = xor i32 %10, -1
  %14 = getelementptr i8, ptr %5, i32 88
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !8
  %16 = and i32 %15, %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %16) #11, !srcloc !10
  br label %17

17:                                               ; preds = %12, %1
  %18 = getelementptr i8, ptr %0, i32 -8
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = xor i32 %19, -1
  %23 = getelementptr i8, ptr %7, i32 48
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !8
  %25 = and i32 %24, %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %25) #11, !srcloc !10
  br label %26

26:                                               ; preds = %21, %17
  %27 = getelementptr i8, ptr %5, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !8
  %29 = getelementptr i8, ptr %0, i32 -12
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %31) #11, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %8) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmu_domain_power_on(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pmu_data, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pmu_data, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %9 = getelementptr i8, ptr %0, i32 -12
  %10 = load i32, ptr %9, align 4
  %11 = xor i32 %10, -1
  %12 = getelementptr i8, ptr %5, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  %14 = and i32 %13, %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %14) #11, !srcloc !10
  %15 = getelementptr i8, ptr %0, i32 -8
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = getelementptr i8, ptr %7, i32 48
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !8
  %21 = or i32 %20, %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %21) #11, !srcloc !10
  br label %22

22:                                               ; preds = %18, %1
  %23 = getelementptr i8, ptr %0, i32 -4
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %5, i32 88
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !8
  %29 = or i32 %28, %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %29) #11, !srcloc !10
  br label %30

30:                                               ; preds = %26, %22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %8) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_handler_data(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pmu_irq_handler(ptr noundef %0) #8 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pmu_data, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pmu_data, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 80
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !8
  %13 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  tail call void @handle_bad_irq(ptr noundef %0) #11
  br label %38

18:                                               ; preds = %18, %1
  %19 = phi i32 [ %26, %18 ], [ -1, %1 ]
  %20 = phi i32 [ %25, %18 ], [ %15, %1 ]
  %21 = call i32 @llvm.ctlz.i32(i32 %20, i1 true) #11, !range !13
  %22 = xor i32 %21, 31
  %23 = shl nuw i32 1, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %20, %24
  %26 = and i32 %19, %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !12
  %27 = call ptr @__irq_resolve_mapping(ptr noundef %8, i32 noundef %22, ptr noundef nonnull %2) #11
  %28 = icmp eq ptr %27, null
  %29 = load i32, ptr %2, align 4
  %30 = select i1 %28, i32 0, i32 %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %31 = call i32 @generic_handle_irq(i32 noundef %30) #11
  %32 = icmp eq i32 %25, 0
  br i1 %32, label %33, label %18

33:                                               ; preds = %18
  call void @_raw_spin_lock(ptr noundef %6) #11
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !8
  %35 = and i32 %34, %26
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %35) #11, !srcloc !10
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %36 = load i16, ptr %6, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %6, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %38

38:                                               ; preds = %33, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
!8 = !{i64 370986}
!9 = !{i64 2151613340}
!10 = !{i64 370568}
!11 = !{i64 2151613659}
!12 = !{!"auto-init"}
!13 = !{i32 0, i32 33}
!14 = !{i64 2148907194}
!15 = !{i64 2148903018}
!16 = !{i64 2148903093, i64 2148903120, i64 2148903167, i64 2148903189, i64 2148903217, i64 2148903237}
!17 = !{i64 2148930197}
