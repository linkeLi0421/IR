; ModuleID = '/llk/IR/drivers/soc/samsung/exynos-pmu.c_pt.bc'
source_filename = "../drivers/soc/samsung/exynos-pmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_exynos_get_pmu_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22exynos_get_pmu_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_exynos_get_pmu_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.exynos_pmu_data = type { ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.exynos_pmu_context = type { ptr, ptr }
%struct.exynos_pmu_conf = type { i32, [3 x i8] }
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

@pmu_base_addr = dso_local local_unnamed_addr global ptr null, align 4
@pmu_context = internal unnamed_addr global ptr null, align 4
@exynos_pmu_of_device_ids = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos3250_pmu_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_pmu_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4412-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4412_pmu_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_pmu_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5410-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_pmu_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos850-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__kstrtab_exynos_get_pmu_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_exynos_get_pmu_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_exynos_get_pmu_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @exynos_get_pmu_regmap to i32), ptr @__kstrtab_exynos_get_pmu_regmap, ptr @__kstrtabns_exynos_get_pmu_regmap }, section "___ksymtab_gpl+exynos_get_pmu_regmap", align 4
@__initcall__kmod_exynos_pmu__162_164_exynos_pmu_init2 = internal global ptr @exynos_pmu_init, section ".initcall2.init", align 4
@exynos3250_pmu_data = external dso_local constant %struct.exynos_pmu_data, align 4
@exynos4210_pmu_data = external dso_local constant %struct.exynos_pmu_data, align 4
@exynos4412_pmu_data = external dso_local constant %struct.exynos_pmu_data, align 4
@exynos5250_pmu_data = external dso_local constant %struct.exynos_pmu_data, align 4
@exynos5420_pmu_data = external dso_local constant %struct.exynos_pmu_data, align 4
@exynos_pmu_driver = internal global %struct.platform_driver { ptr @exynos_pmu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_pmu_of_device_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"exynos-pmu\00", align 1
@exynos_pmu_devs = internal constant [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.2, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"Error populating children, reboot and poweroff might not work properly\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"exynos-clkout\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_exynos_pmu__162_164_exynos_pmu_init2, ptr @__ksymtab_exynos_get_pmu_regmap], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pmu_raw_writel(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @pmu_base_addr, align 4
  %4 = getelementptr i8, ptr %3, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %0) #4, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pmu_raw_readl(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @pmu_base_addr, align 4
  %3 = getelementptr i8, ptr %2, i32 %0
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !9
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos_sys_powerdown_conf(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @pmu_context, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.exynos_pmu_context, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.exynos_pmu_data, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(i32 noundef %0) #4
  br label %13

13:                                               ; preds = %12, %8
  %14 = load ptr, ptr %6, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %14, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %33, label %19

19:                                               ; preds = %19, %16
  %20 = phi i32 [ %31, %19 ], [ %17, %16 ]
  %21 = phi ptr [ %29, %19 ], [ %14, %16 ]
  %22 = phi i32 [ %28, %19 ], [ 0, %16 ]
  %23 = getelementptr %struct.exynos_pmu_conf, ptr %21, i32 %22, i32 1, i32 %0
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = load ptr, ptr @pmu_base_addr, align 4
  %27 = getelementptr i8, ptr %26, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #4, !srcloc !8
  %28 = add i32 %22, 1
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr %struct.exynos_pmu_conf, ptr %29, i32 %28
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %19

33:                                               ; preds = %19, %16, %13
  %34 = getelementptr inbounds %struct.exynos_pmu_data, ptr %6, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void %35(i32 noundef %0) #4
  br label %38

38:                                               ; preds = %37, %33, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @exynos_get_pmu_regmap() #0 {
  %1 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @exynos_pmu_of_device_ids, ptr noundef null) #4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %1) #4
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ inttoptr (i32 -19 to ptr), %0 ]
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exynos_pmu_init() #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_pmu_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_pmu_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  store ptr %3, ptr @pmu_base_addr, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = ptrtoint ptr %3 to i32
  br label %30

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 8, i32 noundef 3520) #4
  store ptr %8, ptr @pmu_context, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %7
  store ptr %2, ptr %8, align 4
  %11 = tail call ptr @of_device_get_match_data(ptr noundef %2) #4
  %12 = load ptr, ptr @pmu_context, align 4
  %13 = getelementptr inbounds %struct.exynos_pmu_context, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  %14 = icmp eq ptr %11, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.exynos_pmu_data, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  tail call void %17() #4
  %20 = load ptr, ptr @pmu_context, align 4
  br label %21

21:                                               ; preds = %19, %15, %10
  %22 = phi ptr [ %20, %19 ], [ %12, %15 ], [ %12, %10 ]
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %22, ptr %23, align 8
  %24 = tail call i32 @devm_mfd_add_devices(ptr noundef %2, i32 noundef -1, ptr noundef nonnull @exynos_pmu_devs, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = tail call i32 @devm_of_platform_populate(ptr noundef %2) #4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  br label %30

30:                                               ; preds = %29, %26, %21, %7, %5
  %31 = phi i32 [ %6, %5 ], [ -12, %7 ], [ %24, %21 ], [ 0, %29 ], [ 0, %26 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 2807769}
!9 = !{i64 2808187}
