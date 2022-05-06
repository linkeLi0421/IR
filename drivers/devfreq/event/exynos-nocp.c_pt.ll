; ModuleID = '/llk/IR/drivers/devfreq/event/exynos-nocp.c_pt.bc'
source_filename = "../drivers/devfreq/event/exynos-nocp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.devfreq_event_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.exynos_nocp = type { ptr, %struct.devfreq_event_desc, ptr, ptr, ptr }
%struct.devfreq_event_desc = type { ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.devfreq_event_dev = type { %struct.list_head, %struct.device, %struct.mutex, i32, ptr }
%struct.devfreq_event_data = type { i32, i32 }

@exynos_nocp_id_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-nocp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description162 = internal constant [54 x i8] c"description=Exynos NoC (Network on Chip) Probe driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author163 = internal constant [44 x i8] c"author=Chanwoo Choi <cw00.choi@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license164 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@exynos_nocp_driver = internal global %struct.platform_driver { ptr @exynos_nocp_probe, ptr @exynos_nocp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_nocp_id_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"exynos-nocp\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to parse devicetree for resource\0A\00", align 1
@exynos_nocp_ops = internal constant %struct.devfreq_event_ops { ptr null, ptr null, ptr null, ptr @exynos_nocp_set_event, ptr @exynos_nocp_get_event }, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to add devfreq-event device\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to prepare ppmu clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"\016exynos-nocp: new NoC Probe device registered: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to find devicetree node\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"nocp\00", align 1
@exynos_nocp_regmap_config = internal global %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 380, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"failed to initialize regmap\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"failed to disable the NoC probe device\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Failed to reset NoC probe device\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Failed to read the counter of NoC probe device\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description162, ptr @__UNIQUE_ID_license164], section "llvm.metadata"

@__mod_of__exynos_nocp_id_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @exynos_nocp_id_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_nocp_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_nocp_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_nocp_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 32, i32 noundef 3520) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %62, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.exynos_nocp, ptr %5, i32 0, i32 2
  store ptr %2, ptr %8, align 4
  %9 = load ptr, ptr %3, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #8
  br label %34

12:                                               ; preds = %7
  %13 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.6) #7
  %14 = getelementptr inbounds %struct.exynos_nocp, ptr %5, i32 0, i32 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %16 = select i1 %15, ptr null, ptr %13
  store ptr %16, ptr %14, align 4
  %17 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %18 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %17) #7
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %30, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %17, align 4
  %24 = add i32 %22, -3
  %25 = sub i32 %24, %23
  store i32 %25, ptr getelementptr inbounds (%struct.regmap_config, ptr @exynos_nocp_regmap_config, i32 0, i32 19), align 4
  %26 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %2, ptr noundef null, ptr noundef %18, ptr noundef nonnull @exynos_nocp_regmap_config, ptr noundef null, ptr noundef null) #7
  %27 = getelementptr inbounds %struct.exynos_nocp, ptr %5, i32 0, i32 3
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #8
  br label %30

30:                                               ; preds = %29, %12
  %31 = phi ptr [ %26, %29 ], [ %18, %12 ]
  %32 = ptrtoint ptr %31 to i32
  %33 = icmp slt ptr %31, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %11
  %35 = phi i32 [ -22, %11 ], [ %32, %30 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #8
  br label %62

36:                                               ; preds = %30, %20
  %37 = getelementptr inbounds %struct.exynos_nocp, ptr %5, i32 0, i32 1
  %38 = getelementptr inbounds %struct.exynos_nocp, ptr %5, i32 0, i32 1, i32 3
  store ptr @exynos_nocp_ops, ptr %38, align 4
  %39 = getelementptr inbounds %struct.exynos_nocp, ptr %5, i32 0, i32 1, i32 2
  store ptr %5, ptr %39, align 4
  %40 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  store ptr %41, ptr %37, align 4
  %42 = tail call ptr @devm_devfreq_event_add_edev(ptr noundef %2, ptr noundef %37) #7
  store ptr %42, ptr %5, align 4
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #8
  %45 = load ptr, ptr %5, align 4
  %46 = ptrtoint ptr %45 to i32
  br label %62

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %48, align 8
  %49 = load ptr, ptr %14, align 4
  %50 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #8
  br label %62

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load ptr, ptr %2, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi ptr [ %58, %57 ], [ %55, %53 ]
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %60) #8
  br label %62

62:                                               ; preds = %59, %52, %44, %34, %1
  %63 = phi i32 [ %35, %34 ], [ %46, %44 ], [ %50, %52 ], [ 0, %59 ], [ -12, %1 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_nocp_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_nocp, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_devfreq_event_add_edev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #7
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_nocp_set_event(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.devfreq_event_desc, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.exynos_nocp, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 8, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %71, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %6, align 4
  %12 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 36, i32 noundef 0) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %66, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %6, align 4
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 312, i32 noundef 31, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %66, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %6, align 4
  %20 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 332, i32 noundef 31, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %66, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %6, align 4
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 352, i32 noundef 31, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %66, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %6, align 4
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 372, i32 noundef 31, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %66, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %6, align 4
  %32 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 44, i32 noundef 0) #7
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %66, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %6, align 4
  %36 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 48, i32 noundef 0) #7
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %66, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %6, align 4
  %40 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 316, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %66, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %6, align 4
  %44 = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 336, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %6, align 4
  %48 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 356, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %66, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %6, align 4
  %52 = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 376, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %6, align 4
  %56 = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 8, i32 noundef 24, i32 noundef 24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %6, align 4
  %60 = tail call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 12, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %6, align 4
  %64 = tail call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 8, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %62, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22, %18, %14, %10
  %67 = phi i32 [ %12, %10 ], [ %16, %14 ], [ %20, %18 ], [ %24, %22 ], [ %28, %26 ], [ %32, %30 ], [ %36, %34 ], [ %40, %38 ], [ %44, %42 ], [ %48, %46 ], [ %52, %50 ], [ %56, %54 ], [ %60, %58 ], [ %64, %62 ]
  %68 = load ptr, ptr %6, align 4
  %69 = tail call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 8, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66, %1
  %72 = phi ptr [ @.str.8, %1 ], [ @.str.9, %66 ]
  %73 = phi i32 [ %8, %1 ], [ %67, %66 ]
  %74 = getelementptr inbounds %struct.exynos_nocp, ptr %5, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull %72) #8
  br label %76

76:                                               ; preds = %71, %66, %62
  %77 = phi i32 [ 0, %62 ], [ %67, %66 ], [ %73, %71 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_nocp_get_event(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [4 x i32], align 4
  %4 = getelementptr inbounds %struct.devfreq_event_dev, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.devfreq_event_desc, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.exynos_nocp, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef 320, ptr noundef nonnull %3) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 1
  %15 = call i32 @regmap_read(ptr noundef %13, i32 noundef 340, ptr noundef %14) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  %20 = call i32 @regmap_read(ptr noundef %18, i32 noundef 360, ptr noundef %19) #7
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %8, align 4
  %24 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  %25 = call i32 @regmap_read(ptr noundef %23, i32 noundef 380, ptr noundef %24) #7
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr %14, align 4
  %29 = shl i32 %28, 16
  %30 = load i32, ptr %3, align 4
  %31 = or i32 %29, %30
  store i32 %31, ptr %1, align 4
  %32 = load i32, ptr %24, align 4
  %33 = shl i32 %32, 16
  %34 = load i32, ptr %19, align 4
  %35 = or i32 %33, %34
  %36 = getelementptr inbounds %struct.devfreq_event_data, ptr %1, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  br label %41

37:                                               ; preds = %22, %17, %12, %2
  %38 = phi i32 [ %10, %2 ], [ %15, %12 ], [ %20, %17 ], [ %25, %22 ]
  %39 = getelementptr inbounds %struct.exynos_nocp, ptr %7, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.10) #8
  br label %41

41:                                               ; preds = %37, %27
  %42 = phi i32 [ %38, %37 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"auto-init"}
