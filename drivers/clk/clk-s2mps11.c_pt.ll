; ModuleID = '/llk/IR/drivers/clk/clk-s2mps11.c_pt.bc'
source_filename = "../drivers/clk/clk-s2mps11.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_device_id = type { [20 x i8], i32 }
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
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.s2mps11_clk = type { ptr, ptr, %struct.clk_hw, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.sec_pmic_dev = type { ptr, ptr, ptr, ptr, i32, i32, ptr }

@s2mps11_clk_id = internal constant [5 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s2mps11-clk\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.platform_device_id { [20 x i8] c"s2mps13-clk\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.platform_device_id { [20 x i8] c"s2mps14-clk\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.platform_device_id { [20 x i8] c"s5m8767-clk\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], align 4
@__mod_of__s2mps11_dt_match_device_table = dso_local constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s2mps11-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s2mps13-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s2mps14-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5m8767-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description166 = internal constant [33 x i8] c"description=S2MPS11 Clock Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author167 = internal constant [52 x i8] c"author=Yadwinder Singh Brar <yadi.brar@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license168 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@s2mps11_clk_driver = internal global %struct.platform_driver { ptr @s2mps11_clk_probe, ptr @s2mps11_clk_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s2mps11_clk_id, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"s2mps11-clk\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid device type\0A\00", align 1
@s2mps11_clks_init = internal global [3 x %struct.clk_init_data] [%struct.clk_init_data { ptr @.str.6, ptr @s2mps11_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, %struct.clk_init_data { ptr @.str.7, ptr @s2mps11_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, %struct.clk_init_data { ptr @.str.8, ptr @s2mps11_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }], align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Fail to register : %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"could not find clock sub-node\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"s2mps11_ap\00", align 1
@s2mps11_clk_ops = internal constant %struct.clk_ops { ptr @s2mps11_clk_prepare, ptr @s2mps11_clk_unprepare, ptr @s2mps11_clk_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_clk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"s2mps11_cp\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"s2mps11_bt\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description166, ptr @__UNIQUE_ID_license168, ptr @__mod_of__s2mps11_dt_match_device_table], section "llvm.metadata"
@switch.table.s2mps11_clk_probe = private unnamed_addr constant [5 x i32] [i32 10, i32 11, i32 11, i32 12, i32 12], align 4

@__mod_platform__s2mps11_clk_id_device_table = dso_local alias [5 x %struct.platform_device_id], ptr @s2mps11_clk_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @s2mps11_clk_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @s2mps11_clk_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s2mps11_clk_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.platform_device_id, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 108, i32 noundef 3520) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %125, label %13

13:                                               ; preds = %1
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 16, i32 noundef 3520) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %125, label %16

16:                                               ; preds = %13
  %17 = add i32 %10, -2
  %18 = icmp ult i32 %17, 5
  br i1 %18, label %20, label %19

19:                                               ; preds = %20, %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  br label %125

20:                                               ; preds = %16
  %21 = trunc i32 %17 to i8
  %22 = lshr i8 29, %21
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %19, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds [5 x i32], ptr @switch.table.s2mps11_clk_probe, i32 0, i32 %17
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 8
  %30 = load ptr, ptr %29, align 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 25
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %25
  %36 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %33, ptr noundef nonnull @.str.3) #6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #7
  br label %39

39:                                               ; preds = %38, %25
  %40 = getelementptr inbounds %struct.s2mps11_clk, ptr %11, i32 0, i32 1
  store ptr inttoptr (i32 -22 to ptr), ptr %40, align 4
  br label %47

41:                                               ; preds = %35
  %42 = tail call i32 @of_property_read_string_helper(ptr noundef nonnull %36, ptr noundef nonnull @.str.5, ptr noundef nonnull @s2mps11_clks_init, i32 noundef 1, i32 noundef 0) #6
  %43 = tail call i32 @of_property_read_string_helper(ptr noundef nonnull %36, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([3 x %struct.clk_init_data], ptr @s2mps11_clks_init, i32 0, i32 1), i32 noundef 1, i32 noundef 1) #6
  %44 = tail call i32 @of_property_read_string_helper(ptr noundef nonnull %36, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([3 x %struct.clk_init_data], ptr @s2mps11_clks_init, i32 0, i32 2), i32 noundef 1, i32 noundef 2) #6
  %45 = getelementptr inbounds %struct.s2mps11_clk, ptr %11, i32 0, i32 1
  store ptr %36, ptr %45, align 4
  %46 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %39
  %48 = phi ptr [ inttoptr (i32 -22 to ptr), %39 ], [ %36, %41 ]
  %49 = ptrtoint ptr %48 to i32
  br label %125

50:                                               ; preds = %41
  %51 = icmp eq i32 %10, 6
  store ptr %6, ptr %11, align 4
  %52 = getelementptr %struct.s2mps11_clk, ptr %11, i32 0, i32 2
  %53 = getelementptr %struct.s2mps11_clk, ptr %11, i32 0, i32 2, i32 2
  store ptr @s2mps11_clks_init, ptr %53, align 4
  %54 = getelementptr %struct.s2mps11_clk, ptr %11, i32 0, i32 5
  store i32 1, ptr %54, align 4
  %55 = getelementptr %struct.s2mps11_clk, ptr %11, i32 0, i32 6
  store i32 %27, ptr %55, align 4
  %56 = tail call ptr @devm_clk_register(ptr noundef %2, ptr noundef %52) #6
  %57 = getelementptr %struct.s2mps11_clk, ptr %11, i32 0, i32 3
  store ptr %56, ptr %57, align 4
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %106, label %59

59:                                               ; preds = %50
  %60 = load ptr, ptr @s2mps11_clks_init, align 4
  %61 = tail call ptr (ptr, ptr, ptr, ...) @clkdev_hw_create(ptr noundef %52, ptr noundef %60, ptr noundef null) #6
  %62 = getelementptr %struct.s2mps11_clk, ptr %11, i32 0, i32 4
  store ptr %61, ptr %62, align 4
  %63 = icmp eq ptr %61, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load ptr, ptr %45, align 4
  tail call void @of_node_put(ptr noundef %65) #6
  br label %125

66:                                               ; preds = %59
  %67 = getelementptr %struct.clk_hw_onecell_data, ptr %14, i32 0, i32 1, i32 0
  store ptr %52, ptr %67, align 4
  br i1 %51, label %84, label %68

68:                                               ; preds = %66
  %69 = getelementptr %struct.s2mps11_clk, ptr %11, i32 1
  store ptr %6, ptr %69, align 4
  %70 = getelementptr %struct.s2mps11_clk, ptr %11, i32 1, i32 2
  %71 = getelementptr %struct.s2mps11_clk, ptr %11, i32 1, i32 2, i32 2
  store ptr getelementptr inbounds ([3 x %struct.clk_init_data], ptr @s2mps11_clks_init, i32 0, i32 1), ptr %71, align 4
  %72 = getelementptr %struct.s2mps11_clk, ptr %11, i32 1, i32 5
  store i32 2, ptr %72, align 4
  %73 = getelementptr %struct.s2mps11_clk, ptr %11, i32 1, i32 6
  store i32 %27, ptr %73, align 4
  %74 = tail call ptr @devm_clk_register(ptr noundef %2, ptr noundef %70) #6
  %75 = getelementptr %struct.s2mps11_clk, ptr %11, i32 1, i32 3
  store ptr %74, ptr %75, align 4
  %76 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %106, label %77

77:                                               ; preds = %68
  %78 = load ptr, ptr getelementptr inbounds ([3 x %struct.clk_init_data], ptr @s2mps11_clks_init, i32 0, i32 1), align 4
  %79 = tail call ptr (ptr, ptr, ptr, ...) @clkdev_hw_create(ptr noundef %70, ptr noundef %78, ptr noundef null) #6
  %80 = getelementptr %struct.s2mps11_clk, ptr %11, i32 1, i32 4
  store ptr %79, ptr %80, align 4
  %81 = icmp eq ptr %79, null
  br i1 %81, label %103, label %82

82:                                               ; preds = %77
  %83 = getelementptr %struct.clk_hw_onecell_data, ptr %14, i32 0, i32 1, i32 1
  store ptr %70, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %66
  %85 = getelementptr %struct.s2mps11_clk, ptr %11, i32 2
  store ptr %6, ptr %85, align 4
  %86 = getelementptr %struct.s2mps11_clk, ptr %11, i32 2, i32 2
  %87 = getelementptr %struct.s2mps11_clk, ptr %11, i32 2, i32 2, i32 2
  store ptr getelementptr inbounds ([3 x %struct.clk_init_data], ptr @s2mps11_clks_init, i32 0, i32 2), ptr %87, align 4
  %88 = getelementptr %struct.s2mps11_clk, ptr %11, i32 2, i32 5
  store i32 4, ptr %88, align 4
  %89 = getelementptr %struct.s2mps11_clk, ptr %11, i32 2, i32 6
  store i32 %27, ptr %89, align 4
  %90 = tail call ptr @devm_clk_register(ptr noundef %2, ptr noundef %86) #6
  %91 = getelementptr %struct.s2mps11_clk, ptr %11, i32 2, i32 3
  store ptr %90, ptr %91, align 4
  %92 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %106, label %93

93:                                               ; preds = %84
  %94 = load ptr, ptr getelementptr inbounds ([3 x %struct.clk_init_data], ptr @s2mps11_clks_init, i32 0, i32 2), align 4
  %95 = tail call ptr (ptr, ptr, ptr, ...) @clkdev_hw_create(ptr noundef %86, ptr noundef %94, ptr noundef null) #6
  %96 = getelementptr %struct.s2mps11_clk, ptr %11, i32 2, i32 4
  store ptr %95, ptr %96, align 4
  %97 = icmp eq ptr %95, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = getelementptr %struct.clk_hw_onecell_data, ptr %14, i32 0, i32 1, i32 2
  store ptr %86, ptr %99, align 4
  store i32 3, ptr %14, align 4
  %100 = load ptr, ptr %45, align 4
  %101 = tail call i32 @of_clk_add_hw_provider(ptr noundef %100, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %14) #6
  %102 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %102, align 8
  br label %125

103:                                              ; preds = %93, %77
  %104 = phi i32 [ 2, %93 ], [ 1, %77 ]
  %105 = load ptr, ptr %45, align 4
  tail call void @of_node_put(ptr noundef %105) #6
  br label %114

106:                                              ; preds = %84, %68, %50
  %107 = phi i32 [ 0, %50 ], [ 1, %68 ], [ 2, %84 ]
  %108 = phi ptr [ @s2mps11_clks_init, %50 ], [ getelementptr inbounds ([3 x %struct.clk_init_data], ptr @s2mps11_clks_init, i32 0, i32 1), %68 ], [ getelementptr inbounds ([3 x %struct.clk_init_data], ptr @s2mps11_clks_init, i32 0, i32 2), %84 ]
  %109 = phi ptr [ %57, %50 ], [ %75, %68 ], [ %91, %84 ]
  %110 = load ptr, ptr %108, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef %110) #7
  %111 = load ptr, ptr %109, align 4
  %112 = ptrtoint ptr %111 to i32
  %113 = load ptr, ptr %45, align 4
  tail call void @of_node_put(ptr noundef %113) #6
  br i1 %58, label %125, label %114

114:                                              ; preds = %106, %103
  %115 = phi i32 [ -12, %103 ], [ %112, %106 ]
  %116 = phi i32 [ %104, %103 ], [ %107, %106 ]
  %117 = add nsw i32 %116, -1
  %118 = getelementptr %struct.s2mps11_clk, ptr %11, i32 %117, i32 4
  %119 = load ptr, ptr %118, align 4
  tail call void @clkdev_drop(ptr noundef %119) #6
  %120 = icmp ugt i32 %116, 1
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = add nsw i32 %116, -2
  %123 = getelementptr %struct.s2mps11_clk, ptr %11, i32 %122, i32 4
  %124 = load ptr, ptr %123, align 4
  tail call void @clkdev_drop(ptr noundef %124) #6
  br label %125

125:                                              ; preds = %121, %114, %106, %98, %64, %47, %19, %13, %1
  %126 = phi i32 [ -22, %19 ], [ %49, %47 ], [ 0, %98 ], [ -12, %1 ], [ -12, %13 ], [ %112, %106 ], [ -12, %64 ], [ %115, %121 ], [ %115, %114 ]
  ret i32 %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s2mps11_clk_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.s2mps11_clk, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @of_clk_del_provider(ptr noundef %5) #6
  %6 = load ptr, ptr %4, align 4
  tail call void @of_node_put(ptr noundef %6) #6
  %7 = getelementptr %struct.s2mps11_clk, ptr %3, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void @clkdev_drop(ptr noundef nonnull %8) #6
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr %struct.s2mps11_clk, ptr %3, i32 1, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @clkdev_drop(ptr noundef nonnull %13) #6
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr %struct.s2mps11_clk, ptr %3, i32 2, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @clkdev_drop(ptr noundef nonnull %18) #6
  br label %21

21:                                               ; preds = %20, %16
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdev_hw_create(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdev_drop(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s2mps11_clk_prepare(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sec_pmic_dev, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s2mps11_clk_unprepare(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sec_pmic_dev, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %9, -1
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s2mps11_clk_is_prepared(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sec_pmic_dev, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %2) #6
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i32, ptr %2, align 4
  %13 = getelementptr i8, ptr %0, i32 20
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %12
  br label %16

16:                                               ; preds = %11, %1
  %17 = phi i32 [ %15, %11 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @s2mps11_clk_recalc_rate(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  ret i32 32768
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
