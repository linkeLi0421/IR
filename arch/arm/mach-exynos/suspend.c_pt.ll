; ModuleID = '/llk/IR/arch/arm/mach-exynos/suspend.c_pt.bc'
source_filename = "../arch/arm/mach-exynos/suspend.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.exynos_pm_data = type { ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.exynos_wkup_irq = type { i32, i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.firmware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__of_table_exynos3250_pmu_irq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_pmu_irq_init }, section "__irqchip_of_table", align 4
@__of_table_exynos4210_pmu_irq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_pmu_irq_init }, section "__irqchip_of_table", align 4
@__of_table_exynos4412_pmu_irq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4412-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_pmu_irq_init }, section "__irqchip_of_table", align 4
@__of_table_exynos5250_pmu_irq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_pmu_irq_init }, section "__irqchip_of_table", align 4
@__of_table_exynos5420_pmu_irq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_pmu_irq_init }, section "__irqchip_of_table", align 4
@exynos_pmu_of_device_ids = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos3250_pm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4_pm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4412-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4_pm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_pm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_pm_data }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str = private unnamed_addr constant [27 x i8] c"\013Failed to find PMU node\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"arch/arm/mach-exynos/suspend.c\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"\014Outdated DT detected, suspend/resume will NOT work\0A\00", align 1
@pm_data = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@exynos_pm_syscore_ops = internal global %struct.syscore_ops zeroinitializer, align 4
@exynos_suspend_ops = internal constant %struct.platform_suspend_ops { ptr @suspend_valid_only_mem, ptr null, ptr @exynos_suspend_prepare, ptr null, ptr @exynos_suspend_enter, ptr null, ptr @exynos_suspend_finish, ptr null, ptr null, ptr null }, align 4
@sysram_base_phys = external dso_local local_unnamed_addr global i32, align 4
@pm_state.0 = internal unnamed_addr global i32 0, align 4
@pm_state.1 = internal unnamed_addr global i32 0, align 4
@pm_state.2 = internal unnamed_addr global ptr null, align 4
@pm_state.3 = internal unnamed_addr global i32 0, align 4
@pm_state.4 = internal unnamed_addr global i1 false, align 4
@sysram_ns_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@sysram_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"\013%pOF: no parent, giving up\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"\013%pOF: unable to obtain parent domain\0A\00", align 1
@pmu_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"\013%pOF: failed to find exynos pmu register\0A\00", align 1
@exynos_pmu_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_pmu_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @exynos_pmu_domain_translate }, align 4
@exynos_pmu_chip = internal global %struct.irq_chip { ptr null, ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr null, ptr @exynos_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"PMU\00", align 1
@exynos_irqwake_intmask = internal unnamed_addr global i32 -1, align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@exynos3250_pm_data = internal constant %struct.exynos_pm_data { ptr @exynos3250_wkup_irq, i32 65342, ptr @exynos3250_pm_prepare, ptr null, ptr @exynos3250_pm_resume, ptr @exynos_pm_suspend, ptr @exynos3250_cpu_suspend }, align 4
@exynos4_pm_data = internal constant %struct.exynos_pm_data { ptr @exynos4_wkup_irq, i32 65342, ptr @exynos_pm_prepare, ptr null, ptr @exynos_pm_resume, ptr @exynos_pm_suspend, ptr @exynos_cpu_suspend }, align 4
@exynos5250_pm_data = internal constant %struct.exynos_pm_data { ptr @exynos5250_wkup_irq, i32 65342, ptr @exynos_pm_prepare, ptr null, ptr @exynos_pm_resume, ptr @exynos_pm_suspend, ptr @exynos_cpu_suspend }, align 4
@exynos5420_pm_data = internal constant %struct.exynos_pm_data { ptr @exynos5250_wkup_irq, i32 16318, ptr @exynos5420_pm_prepare, ptr @exynos5420_prepare_pm_resume, ptr @exynos5420_pm_resume, ptr @exynos5420_pm_suspend, ptr @exynos5420_cpu_suspend }, align 4
@exynos3250_wkup_irq = internal constant [3 x %struct.exynos_wkup_irq] [%struct.exynos_wkup_irq { i32 73, i32 2 }, %struct.exynos_wkup_irq { i32 74, i32 4 }, %struct.exynos_wkup_irq zeroinitializer], align 4
@firmware_ops = external dso_local local_unnamed_addr global ptr, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"\016Failed to suspend the system\0A\00", align 1
@exynos4_wkup_irq = internal constant [3 x %struct.exynos_wkup_irq] [%struct.exynos_wkup_irq { i32 44, i32 2 }, %struct.exynos_wkup_irq { i32 45, i32 4 }, %struct.exynos_wkup_irq zeroinitializer], align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@exynos5250_wkup_irq = internal constant [3 x %struct.exynos_wkup_irq] [%struct.exynos_wkup_irq { i32 43, i32 2 }, %struct.exynos_wkup_irq { i32 44, i32 4 }, %struct.exynos_wkup_irq zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"\013%s: No wake-up sources!\0A\00", align 1
@__func__.exynos_suspend_enter = private unnamed_addr constant [21 x i8] c"exynos_suspend_enter\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"\013%s: Aborting sleep\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__of_table_exynos3250_pmu_irq, ptr @__of_table_exynos4210_pmu_irq, ptr @__of_table_exynos4412_pmu_irq, ptr @__of_table_exynos5250_pmu_irq, ptr @__of_table_exynos5420_pmu_irq], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exynos_pmu_irq_init(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %0) #10
  br label %35

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  %10 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %10, i8 0, i64 68, i1 false) #11
  store ptr %9, ptr %4, align 4
  %11 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #11
  %14 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %14, i8 0, i64 68, i1 false) #11
  store ptr %9, ptr %3, align 4
  %15 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %0) #10
  br label %35

19:                                               ; preds = %13, %8
  %20 = phi ptr [ %15, %13 ], [ %11, %8 ]
  %21 = call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #11
  store ptr %21, ptr @pmu_base_addr, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %0) #10
  br label %35

25:                                               ; preds = %19
  %26 = icmp eq ptr %0, null
  %27 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %28 = select i1 %26, ptr null, ptr %27
  %29 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %20, i32 noundef 0, i32 noundef 0, ptr noundef %28, ptr noundef nonnull @exynos_pmu_domain_ops, ptr noundef null) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load ptr, ptr @pmu_base_addr, align 4
  call void @iounmap(ptr noundef %32) #11
  store ptr null, ptr @pmu_base_addr, align 4
  br label %35

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  call void @_clear_bit(i32 noundef 3, ptr noundef %34) #11
  br label %35

35:                                               ; preds = %33, %31, %23, %17, %6
  %36 = phi i32 [ 0, %33 ], [ -12, %31 ], [ -12, %23 ], [ -6, %17 ], [ -19, %6 ]
  ret i32 %36
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @exynos_pm_init() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #11
  store ptr null, ptr %1, align 4, !annotation !8
  %2 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @exynos_pmu_of_device_ids, ptr noundef nonnull %1) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %35

6:                                                ; preds = %0
  %7 = call ptr @of_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef null) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11, !prof !9

9:                                                ; preds = %6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 670, i32 noundef 9, ptr noundef null) #11
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  call void @of_node_put(ptr noundef nonnull %2) #11
  br label %35

11:                                               ; preds = %6
  call void @of_node_put(ptr noundef nonnull %2) #11
  %12 = load ptr, ptr %1, align 4
  %13 = getelementptr inbounds %struct.of_device_id, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  store ptr %14, ptr @pm_data, align 4
  %15 = load ptr, ptr @pmu_base_addr, align 4
  %16 = getelementptr i8, ptr %15, i32 1544
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !10
  %18 = load ptr, ptr @pm_data, align 4
  %19 = getelementptr inbounds %struct.exynos_pm_data, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, %17
  %22 = load ptr, ptr @pmu_base_addr, align 4
  %23 = getelementptr i8, ptr %22, i32 1544
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #11, !srcloc !11
  %24 = load ptr, ptr @pm_data, align 4
  %25 = getelementptr inbounds %struct.exynos_pm_data, ptr %24, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  store ptr %26, ptr getelementptr inbounds (%struct.syscore_ops, ptr @exynos_pm_syscore_ops, i32 0, i32 1), align 4
  %27 = getelementptr inbounds %struct.exynos_pm_data, ptr %24, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  store ptr %28, ptr getelementptr inbounds (%struct.syscore_ops, ptr @exynos_pm_syscore_ops, i32 0, i32 2), align 4
  call void @register_syscore_ops(ptr noundef nonnull @exynos_pm_syscore_ops) #11
  call void @suspend_set_ops(ptr noundef nonnull @exynos_suspend_ops) #11
  %29 = call zeroext i1 @exynos_secure_firmware_available() #10
  br i1 %29, label %30, label %33

30:                                               ; preds = %11
  %31 = load i32, ptr @sysram_base_phys, align 4
  store i32 %31, ptr @pm_state.3, align 4
  %32 = load ptr, ptr @sysram_ns_base_addr, align 4
  store ptr %32, ptr @pm_state.2, align 4
  store i1 true, ptr @pm_state.4, align 4
  br label %35

33:                                               ; preds = %11
  %34 = load ptr, ptr @sysram_base_addr, align 4
  store ptr %34, ptr @pm_state.2, align 4
  br label %35

35:                                               ; preds = %33, %30, %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local zeroext i1 @exynos_secure_firmware_available() local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_pmu_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #5 {
  %5 = alloca %struct.irq_fwspec, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %30

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = getelementptr %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %17, %13
  %18 = phi i32 [ %22, %17 ], [ 0, %13 ]
  %19 = add i32 %18, %1
  %20 = add i32 %18, %15
  %21 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %19, i32 noundef %20, ptr noundef nonnull @exynos_pmu_chip, ptr noundef null) #11
  %22 = add nuw i32 %18, 1
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %17

24:                                               ; preds = %17, %13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, ptr noundef align 4 dereferenceable(72) %3, i32 72, i1 false)
  %25 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.irq_domain, ptr %26, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  store ptr %28, ptr %5, align 4
  %29 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5) #11
  br label %30

30:                                               ; preds = %24, %9, %4
  %31 = phi i32 [ %29, %24 ], [ -22, %4 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #11
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @exynos_pmu_domain_translate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #6 {
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %26, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.fwnode_handle, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @of_fwnode_ops
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %2, align 4
  %24 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 2
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %3, align 4
  br label %26

26:                                               ; preds = %21, %17, %13, %9, %4
  %27 = phi i32 [ 0, %21 ], [ -22, %13 ], [ -22, %17 ], [ -22, %9 ], [ -22, %4 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = load ptr, ptr @pm_data, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.exynos_wkup_irq, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %4, align 4
  %14 = icmp eq i32 %13, %12
  br i1 %14, label %24, label %15

15:                                               ; preds = %20, %10
  %16 = phi ptr [ %21, %20 ], [ %4, %10 ]
  %17 = getelementptr %struct.exynos_wkup_irq, ptr %16, i32 1, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %15
  %21 = getelementptr %struct.exynos_wkup_irq, ptr %16, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %12
  br i1 %23, label %24, label %15

24:                                               ; preds = %20, %10
  %25 = phi i32 [ %8, %10 ], [ %18, %20 ]
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, ptr @exynos_irqwake_intmask, align 4
  %29 = or i32 %28, %25
  br label %34

30:                                               ; preds = %24
  %31 = xor i32 %25, -1
  %32 = load i32, ptr @exynos_irqwake_intmask, align 4
  %33 = and i32 %32, %31
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i32 [ %29, %27 ], [ %33, %30 ]
  store i32 %35, ptr @exynos_irqwake_intmask, align 4
  br label %36

36:                                               ; preds = %34, %15, %6, %2
  %37 = phi i32 [ 0, %34 ], [ -2, %2 ], [ -2, %6 ], [ -2, %15 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos3250_pm_prepare() #5 {
  %1 = load i32, ptr @exynos_irqwake_intmask, align 4
  %2 = and i32 %1, 2147483647
  %3 = load ptr, ptr @pmu_base_addr, align 4
  %4 = getelementptr i8, ptr %3, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #11, !srcloc !11
  %5 = load ptr, ptr @pmu_base_addr, align 4
  %6 = getelementptr i8, ptr %5, i32 9736
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !10
  %8 = and i32 %7, -17
  %9 = load ptr, ptr @pmu_base_addr, align 4
  %10 = getelementptr i8, ptr %9, i32 9736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #11, !srcloc !11
  tail call void @exynos_sys_powerdown_conf(i32 noundef 2) #11
  %11 = load ptr, ptr @pmu_base_addr, align 4
  %12 = getelementptr i8, ptr %11, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 2989) #11, !srcloc !11
  %13 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @exynos_cpu_resume to i32), i32 -2130706432, i32 8454144) #12, !srcloc !12
  %14 = load ptr, ptr @pmu_base_addr, align 4
  %15 = getelementptr i8, ptr %14, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #11, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos3250_pm_resume() #5 {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #12, !srcloc !13
  %2 = and i32 %1, -16711696
  %3 = tail call i32 @exynos_pm_central_resume() #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %0
  %6 = load ptr, ptr @pmu_base_addr, align 4
  %7 = getelementptr i8, ptr %6, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 454754304) #11, !srcloc !11
  %8 = load ptr, ptr @firmware_ops, align 4
  %9 = getelementptr inbounds %struct.firmware_ops, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = tail call i32 %10() #11
  %14 = icmp eq i32 %13, -38
  br label %15

15:                                               ; preds = %12, %5
  %16 = phi i1 [ %14, %12 ], [ true, %5 ]
  %17 = icmp eq i32 %2, 1090568336
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @exynos_cpu_restore_register() #11
  br label %20

20:                                               ; preds = %19, %15, %0
  %21 = load ptr, ptr @pmu_base_addr, align 4
  %22 = getelementptr i8, ptr %21, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #11, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_pm_suspend() #5 {
  tail call void @exynos_pm_central_suspend() #11
  %1 = load ptr, ptr @pmu_base_addr, align 4
  %2 = getelementptr i8, ptr %1, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 16842752) #11, !srcloc !11
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #12, !srcloc !13
  %4 = and i32 %3, -16711696
  %5 = icmp eq i32 %4, 1090568336
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  tail call void @exynos_cpu_save_register() #11
  br label %7

7:                                                ; preds = %6, %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos3250_cpu_suspend(i32 noundef %0) #5 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %2() #11
  %3 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %4 = tail call i32 %3() #11
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cpu_resume() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_sys_powerdown_conf(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_pm_central_resume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cpu_restore_register() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_pm_central_suspend() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cpu_save_register() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_pm_prepare() #5 {
  tail call void @exynos_set_delayed_reset_assertion(i1 noundef zeroext false) #11
  %1 = load i32, ptr @exynos_irqwake_intmask, align 4
  %2 = and i32 %1, 2147483647
  %3 = load ptr, ptr @pmu_base_addr, align 4
  %4 = getelementptr i8, ptr %3, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #11, !srcloc !11
  tail call void @exynos_sys_powerdown_conf(i32 noundef 2) #11
  %5 = load ptr, ptr @pmu_base_addr, align 4
  %6 = getelementptr i8, ptr %5, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 2989) #11, !srcloc !11
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @exynos_cpu_resume to i32), i32 -2130706432, i32 8454144) #12, !srcloc !12
  %8 = load ptr, ptr @pmu_base_addr, align 4
  %9 = getelementptr i8, ptr %8, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #11, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_pm_resume() #5 {
  %1 = tail call i32 @exynos_pm_central_resume() #11
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %24

3:                                                ; preds = %0
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #12, !srcloc !13
  %5 = and i32 %4, -16711696
  %6 = icmp eq i32 %5, 1090568336
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  tail call void @exynos_scu_enable() #11
  %8 = load ptr, ptr @firmware_ops, align 4
  %9 = getelementptr inbounds %struct.firmware_ops, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %19

12:                                               ; preds = %3
  %13 = load ptr, ptr @firmware_ops, align 4
  %14 = getelementptr inbounds %struct.firmware_ops, ptr %13, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = tail call i32 %15() #11
  br label %24

19:                                               ; preds = %7
  %20 = tail call i32 %10() #11
  %21 = icmp eq i32 %20, -38
  %22 = select i1 %21, i1 %6, i1 false
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %7
  tail call void @exynos_cpu_restore_register() #11
  br label %24

24:                                               ; preds = %23, %19, %17, %12, %0
  %25 = load ptr, ptr @pmu_base_addr, align 4
  %26 = getelementptr i8, ptr %25, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #11, !srcloc !11
  tail call void @exynos_set_delayed_reset_assertion(i1 noundef zeroext true) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_cpu_suspend(i32 noundef %0) #5 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %2() #11
  %3 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 3), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void %3() #11
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %8 = tail call i32 %7() #11
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_set_delayed_reset_assertion(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_scu_enable() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos5420_pm_prepare() #5 {
  %1 = load i32, ptr @exynos_irqwake_intmask, align 4
  %2 = and i32 %1, 2147483647
  %3 = load ptr, ptr @pmu_base_addr, align 4
  %4 = getelementptr i8, ptr %3, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #11, !srcloc !11
  %5 = load ptr, ptr @pmu_base_addr, align 4
  %6 = getelementptr i8, ptr %5, i32 2316
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !10
  store i32 %7, ptr @pm_state.1, align 4
  %8 = load ptr, ptr @pm_state.2, align 4
  %9 = getelementptr i8, ptr %8, i32 40
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !10
  store i32 %10, ptr @pm_state.0, align 4
  %11 = load ptr, ptr @pm_state.2, align 4
  %12 = getelementptr i8, ptr %11, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #11, !srcloc !11
  %13 = load i1, ptr @pm_state.4, align 4
  br i1 %13, label %14, label %19

14:                                               ; preds = %0
  %15 = load i32, ptr @pm_state.3, align 4
  %16 = add i32 %15, 40
  %17 = lshr i32 %16, 2
  %18 = or i32 %17, 1073741824
  tail call void @exynos_smc(i32 noundef -101, i32 noundef %18, i32 noundef 0, i32 noundef 0) #11
  br label %19

19:                                               ; preds = %14, %0
  tail call void @exynos_sys_powerdown_conf(i32 noundef 2) #11
  %20 = load ptr, ptr @pmu_base_addr, align 4
  %21 = getelementptr i8, ptr %20, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 2989) #11, !srcloc !11
  %22 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @mcpm_entry_point to i32), i32 -2130706432, i32 8454144) #12, !srcloc !12
  %23 = load ptr, ptr @pmu_base_addr, align 4
  %24 = getelementptr i8, ptr %23, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #11, !srcloc !11
  %25 = load ptr, ptr @pmu_base_addr, align 4
  %26 = getelementptr i8, ptr %25, i32 9736
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !10
  %28 = and i32 %27, -17
  %29 = load ptr, ptr @pmu_base_addr, align 4
  %30 = getelementptr i8, ptr %29, i32 9736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #11, !srcloc !11
  %31 = load ptr, ptr @pmu_base_addr, align 4
  %32 = getelementptr i8, ptr %31, i32 5604
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !10
  %34 = or i32 %33, 256
  %35 = load ptr, ptr @pmu_base_addr, align 4
  %36 = getelementptr i8, ptr %35, i32 5604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #11, !srcloc !11
  %37 = load ptr, ptr @pmu_base_addr, align 4
  %38 = getelementptr i8, ptr %37, i32 9480
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #11, !srcloc !10
  %40 = and i32 %39, -9
  %41 = load ptr, ptr @pmu_base_addr, align 4
  %42 = getelementptr i8, ptr %41, i32 9480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #11, !srcloc !11
  %43 = load ptr, ptr @pmu_base_addr, align 4
  %44 = getelementptr i8, ptr %43, i32 16744
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #11, !srcloc !10
  %46 = or i32 %45, -2147483648
  %47 = load ptr, ptr @pmu_base_addr, align 4
  %48 = getelementptr i8, ptr %47, i32 16744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #11, !srcloc !11
  %49 = load ptr, ptr @pmu_base_addr, align 4
  %50 = getelementptr i8, ptr %49, i32 16776
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #11, !srcloc !10
  %52 = or i32 %51, -2147483648
  %53 = load ptr, ptr @pmu_base_addr, align 4
  %54 = getelementptr i8, ptr %53, i32 16776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #11, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos5420_prepare_pm_resume() #5 {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #12, !srcloc !14
  %2 = tail call i32 @mcpm_cpu_powered_up() #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !15

4:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 459, i32 noundef 9, ptr noundef null) #11
  br label %5

5:                                                ; preds = %4, %0
  %6 = and i32 %1, 65280
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @pmu_base_addr, align 4
  %10 = getelementptr i8, ptr %9, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 3) #11, !srcloc !11
  %11 = load ptr, ptr @pmu_base_addr, align 4
  %12 = getelementptr i8, ptr %11, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #11, !srcloc !11
  br label %13

13:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos5420_pm_resume() #5 {
  %1 = load ptr, ptr @pmu_base_addr, align 4
  %2 = getelementptr i8, ptr %1, i32 4096
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #11, !srcloc !10
  %4 = or i32 %3, 3
  %5 = load ptr, ptr @pmu_base_addr, align 4
  %6 = getelementptr i8, ptr %5, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #11, !srcloc !11
  %7 = load i32, ptr @pm_state.0, align 4
  %8 = load ptr, ptr @pm_state.2, align 4
  %9 = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #11, !srcloc !11
  %10 = load i1, ptr @pm_state.4, align 4
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = load i32, ptr @pm_state.3, align 4
  %13 = add i32 %12, 40
  %14 = lshr i32 %13, 2
  %15 = or i32 %14, 1073741824
  tail call void @exynos_smc(i32 noundef -101, i32 noundef %15, i32 noundef -54915824, i32 noundef 0) #11
  br label %16

16:                                               ; preds = %11, %0
  %17 = load ptr, ptr @pmu_base_addr, align 4
  %18 = getelementptr i8, ptr %17, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 4080) #11, !srcloc !11
  %19 = tail call i32 @exynos_pm_central_resume() #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, ptr @pm_state.1, align 4
  %23 = load ptr, ptr @pmu_base_addr, align 4
  %24 = getelementptr i8, ptr %23, i32 2316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #11, !srcloc !11
  br label %25

25:                                               ; preds = %21, %16
  %26 = load ptr, ptr @pmu_base_addr, align 4
  %27 = getelementptr i8, ptr %26, i32 5604
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !10
  %29 = and i32 %28, -257
  %30 = load ptr, ptr @pmu_base_addr, align 4
  %31 = getelementptr i8, ptr %30, i32 5604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #11, !srcloc !11
  %32 = load ptr, ptr @pmu_base_addr, align 4
  %33 = getelementptr i8, ptr %32, i32 16744
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !10
  %35 = and i32 %34, 2147483647
  %36 = load ptr, ptr @pmu_base_addr, align 4
  %37 = getelementptr i8, ptr %36, i32 16744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #11, !srcloc !11
  %38 = load ptr, ptr @pmu_base_addr, align 4
  %39 = getelementptr i8, ptr %38, i32 16776
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #11, !srcloc !10
  %41 = and i32 %40, 2147483647
  %42 = load ptr, ptr @pmu_base_addr, align 4
  %43 = getelementptr i8, ptr %42, i32 16776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #11, !srcloc !11
  %44 = load ptr, ptr @pmu_base_addr, align 4
  %45 = getelementptr i8, ptr %44, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #11, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5420_pm_suspend() #5 {
  tail call void @exynos_pm_central_suspend() #11
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #12, !srcloc !14
  %2 = and i32 %1, 65280
  %3 = icmp eq i32 %2, 0
  %4 = load ptr, ptr @pmu_base_addr, align 4
  %5 = getelementptr i8, ptr %4, i32 520
  br i1 %3, label %6, label %7

6:                                                ; preds = %0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 16) #11, !srcloc !11
  br label %8

7:                                                ; preds = %0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 256) #11, !srcloc !11
  br label %8

8:                                                ; preds = %7, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5420_cpu_suspend(i32 noundef %0) #5 {
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #12, !srcloc !14
  %3 = lshr i32 %2, 8
  %4 = and i32 %3, 255
  %5 = and i32 %2, 255
  tail call void @mcpm_set_entry_vector(i32 noundef %5, i32 noundef %4, ptr noundef nonnull @exynos_cpu_resume) #11
  tail call void @mcpm_cpu_suspend() #11
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcpm_entry_point() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcpm_cpu_powered_up() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcpm_set_entry_vector(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcpm_cpu_suspend() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @suspend_valid_only_mem(i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @exynos_suspend_prepare() #9 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_suspend_enter(i32 noundef %0) #5 {
  %2 = load ptr, ptr @pmu_base_addr, align 4
  %3 = getelementptr i8, ptr %2, i32 1540
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !10
  %5 = load i32, ptr @exynos_irqwake_intmask, align 4
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %4, -1
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.exynos_suspend_enter) #10
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.exynos_suspend_enter) #10
  br label %41

12:                                               ; preds = %1
  %13 = load ptr, ptr @pm_data, align 4
  %14 = getelementptr inbounds %struct.exynos_pm_data, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void %15() #11
  br label %18

18:                                               ; preds = %17, %12
  %19 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %19() #11
  %20 = load ptr, ptr @firmware_ops, align 4
  %21 = getelementptr inbounds %struct.firmware_ops, ptr %20, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = tail call i32 %22() #11
  %26 = icmp eq i32 %25, -38
  br i1 %26, label %27, label %32

27:                                               ; preds = %24, %18
  %28 = load ptr, ptr @pm_data, align 4
  %29 = getelementptr inbounds %struct.exynos_pm_data, ptr %28, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef %30) #11
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi i32 [ %31, %27 ], [ %25, %24 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load ptr, ptr @pm_data, align 4
  %37 = getelementptr inbounds %struct.exynos_pm_data, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void %38() #11
  br label %41

41:                                               ; preds = %40, %35, %32, %9
  %42 = phi i32 [ -22, %9 ], [ %33, %32 ], [ 0, %40 ], [ 0, %35 ]
  ret i32 %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @exynos_suspend_finish() #9 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 4187548}
!11 = !{i64 4187130}
!12 = !{i64 2148651049, i64 2148651072, i64 2148651104, i64 2148651136, i64 2148651174, i64 2148651204}
!13 = !{i64 2154086288}
!14 = !{i64 2154088902}
!15 = !{!"branch_weights", i32 2000, i32 1}
