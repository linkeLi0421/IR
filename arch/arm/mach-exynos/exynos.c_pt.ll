; ModuleID = '/llk/IR/arch/arm/mach-exynos/exynos.c_pt.bc'
source_filename = "../arch/arm/mach-exynos/exynos.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpuidle_exynos_data = type { ptr, ptr, ptr, ptr }
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
%struct.map_desc = type { i32, i32, i32, i32 }

@exynos_cpu_rev = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"samsung,exynos4210-sysram\00", align 1
@sysram_base_addr = dso_local local_unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@sysram_base_phys = dso_local local_unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"samsung,exynos4210-sysram-ns\00", align 1
@sysram_ns_base_addr = dso_local local_unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"samsung,exynos4\00", align 1
@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Samsung Exynos (Flattened Device Tree)\00", align 1
@exynos_dt_compat = internal constant [10 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr null], section ".init.rodata", align 4
@exynos_smp_ops = external dso_local constant %struct.smp_operations, align 4
@__mach_desc_EXYNOS_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.3, i32 0, ptr @exynos_dt_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 138412032, i32 -166723585, ptr null, ptr @exynos_smp_ops, ptr null, ptr null, ptr @exynos_dt_fixup, ptr null, ptr null, ptr @exynos_init_io, ptr @exynos_firmware_init, ptr @exynos_init_irq, ptr null, ptr @exynos_dt_machine_init, ptr @exynos_pm_init, ptr null, ptr null }, section ".arch.info.init", align 4
@exynos_cpu_id = dso_local local_unnamed_addr global i32 0, align 4
@pmu_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"samsung,exynos3\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"samsung,exynos3250\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"samsung,exynos4210\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"samsung,exynos4412\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"samsung,exynos5\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"samsung,exynos5250\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"samsung,exynos5260\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"samsung,exynos5420\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"\016Samsung CPU ID: 0x%08lx\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"samsung,exynos4210-chipid\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@exynos_dt_pmu_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5260-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5410-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@cpuidle_coupled_exynos_data = external dso_local global %struct.cpuidle_exynos_data, align 4
@exynos_cpuidle = internal global %struct.platform_device { ptr @.str.18, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_enter_aftr, ptr null, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"samsung,trats2\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"samsung,midas\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"samsung,p4note\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"exynos_cpuidle\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__mach_desc_EXYNOS_DT], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @exynos_rev() local_unnamed_addr #0 {
  %1 = load i32, ptr @exynos_cpu_rev, align 4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @exynos_sysram_init() local_unnamed_addr #1 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %11, %0
  %4 = phi ptr [ %12, %11 ], [ %1, %0 ]
  %5 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %4) #7
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call ptr @of_iomap(ptr noundef nonnull %4, i32 noundef 0) #7
  store ptr %7, ptr @sysram_base_addr, align 4
  %8 = tail call ptr @__of_get_address(ptr noundef nonnull %4, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #7
  %9 = tail call i64 @of_translate_address(ptr noundef nonnull %4, ptr noundef %8) #7
  %10 = trunc i64 %9 to i32
  store i32 %10, ptr @sysram_base_phys, align 4
  tail call void @of_node_put(ptr noundef nonnull %4) #7
  br label %14

11:                                               ; preds = %3
  %12 = tail call ptr @of_find_compatible_node(ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %3

14:                                               ; preds = %11, %6, %0
  %15 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %22, %14
  %18 = phi ptr [ %23, %22 ], [ %15, %14 ]
  %19 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %18) #7
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call ptr @of_iomap(ptr noundef nonnull %18, i32 noundef 0) #7
  store ptr %21, ptr @sysram_ns_base_addr, align 4
  tail call void @of_node_put(ptr noundef nonnull %18) #7
  br label %25

22:                                               ; preds = %17
  %23 = tail call ptr @of_find_compatible_node(ptr noundef nonnull %18, ptr noundef null, ptr noundef nonnull @.str.1) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %17

25:                                               ; preds = %22, %20, %14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos_set_delayed_reset_assertion(i1 noundef zeroext %0) local_unnamed_addr #4 {
  %2 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = select i1 %0, i32 4096, i32 0
  br label %6

6:                                                ; preds = %12, %4
  %7 = phi i32 [ %22, %12 ], [ 0, %4 ]
  %8 = load i32, ptr @__cpu_possible_mask, align 4
  %9 = and i32 %8, 65535
  %10 = tail call i32 @__sw_hweight32(i32 noundef %9) #7
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %6
  %13 = shl i32 %7, 7
  %14 = add i32 %13, 8200
  %15 = load ptr, ptr @pmu_base_addr, align 4
  %16 = getelementptr i8, ptr %15, i32 %14
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !8
  %18 = and i32 %17, -4097
  %19 = or i32 %18, %5
  %20 = load ptr, ptr @pmu_base_addr, align 4
  %21 = getelementptr i8, ptr %20, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #7, !srcloc !9
  %22 = add nuw i32 %7, 1
  br label %6

23:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos_dt_fixup() #1 section ".init.text" {
  tail call void @of_fdt_limit_memory(i32 noundef 8) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos_init_io() #1 section ".init.text" {
  %1 = tail call i32 @of_scan_flat_dt(ptr noundef nonnull @exynos_fdt_map_chipid, ptr noundef null) #7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -134217728 to ptr)) #7, !srcloc !8
  store i32 %2, ptr @exynos_cpu_id, align 4
  %3 = and i32 %2, 255
  store i32 %3, ptr @exynos_cpu_rev, align 4
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_firmware_init() #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos_init_irq() #1 section ".init.text" {
  tail call void @irqchip_init() #7
  %1 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @exynos_dt_pmu_match, ptr noundef null) #7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @of_iomap(ptr noundef nonnull %1, i32 noundef 0) #7
  store ptr %4, ptr @pmu_base_addr, align 4
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos_dt_machine_init() #1 section ".init.text" {
  %1 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.6) #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.5) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3, %0
  store ptr @cpuidle_coupled_exynos_data, ptr getelementptr inbounds (%struct.platform_device, ptr @exynos_cpuidle, i32 0, i32 3, i32 7), align 4
  br label %7

7:                                                ; preds = %6, %3
  %8 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.6) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.7) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.15) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.16) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.17) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19, %10
  %23 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.5) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.9) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25, %22, %19, %16, %13, %7
  %29 = tail call i32 @platform_device_register(ptr noundef nonnull @exynos_cpuidle) #7
  br label %30

30:                                               ; preds = %28, %25
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @exynos_pm_init() #5 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_fdt_limit_memory(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_scan_flat_dt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exynos_fdt_map_chipid(i32 noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef readnone %3) #1 section ".init.text" {
  %5 = alloca %struct.map_desc, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !10
  %7 = tail call i32 @of_flat_dt_is_compatible(i32 noundef %0, ptr noundef nonnull @.str.13) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %4
  %10 = call ptr @of_get_flat_dt_prop(i32 noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull %6) #7
  %11 = icmp eq ptr %10, null
  %12 = load i32, ptr %6, align 4
  %13 = icmp ne i32 %12, 8
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %26, label %15

15:                                               ; preds = %9
  %16 = load i32, ptr %10, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %18 = lshr i32 %17, 12
  %19 = getelementptr inbounds %struct.map_desc, ptr %5, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr i32, ptr %10, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %23 = add i32 %22, -1
  %24 = getelementptr inbounds %struct.map_desc, ptr %5, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  store i32 -134217728, ptr %5, align 4
  %25 = getelementptr inbounds %struct.map_desc, ptr %5, i32 0, i32 3
  store i32 0, ptr %25, align 4
  call void @iotable_init(ptr noundef nonnull %5, i32 noundef 1) #7
  br label %26

26:                                               ; preds = %15, %9, %4
  %27 = phi i32 [ 1, %15 ], [ 0, %4 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  ret i32 %27
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_flat_dt_is_compatible(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_flat_dt_prop(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irqchip_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_enter_aftr() #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 365369}
!9 = !{i64 364951}
!10 = !{!"auto-init"}
