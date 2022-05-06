; ModuleID = '/llk/IR/drivers/watchdog/renesas_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/renesas_wdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.rwdt_priv = type { ptr, %struct.watchdog_device, i32, i8, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_nowayout = internal constant [9 x i8] c"nowayout\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global i8 0, align 1
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr @__this_module, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype163 = internal constant [23 x i8] c"parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout164 = internal constant [66 x i8] c"parm=nowayout:Watchdog cannot be stopped once started (default=0)\00", section ".modinfo", align 1
@rwdt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description167 = internal constant [40 x i8] c"description=Renesas WDT Watchdog Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license168 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author169 = internal constant [47 x i8] c"author=Wolfram Sang <wsa@sang-engineering.com>\00", section ".modinfo", align 1
@rwdt_driver = internal global %struct.platform_driver { ptr @rwdt_probe, ptr @rwdt_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rwdt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rwdt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"renesas_wdt\00", align 1
@rwdt_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @rwdt_suspend, ptr @rwdt_resume, ptr @rwdt_suspend, ptr @rwdt_resume, ptr @rwdt_suspend, ptr @rwdt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_divs = internal unnamed_addr constant [8 x i32] [i32 1, i32 4, i32 16, i32 32, i32 64, i32 128, i32 1024, i32 4096], align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Can't find suitable clock divider\0A\00", align 1
@rwdt_ident = internal constant %struct.watchdog_info { i32 33184, i32 0, [32 x i8] c"Renesas WDT Watchdog\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@rwdt_ops = internal constant %struct.watchdog_ops { ptr @__this_module, ptr @rwdt_start, ptr @rwdt_stop, ptr @rwdt_init_timeout, ptr null, ptr null, ptr null, ptr @rwdt_get_timeleft, ptr @rwdt_restart, ptr null }, align 4
@rwdt_quirks_match = internal constant [4 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.3, ptr null, ptr @.str.4, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr @.str.3, ptr null, ptr @.str.5, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr null, ptr null, ptr @.str.6, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@setup_max_cpus = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Watchdog blacklisted on %s %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ES1.*\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"r8a7790\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"r8a7791\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"r8a7792\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author169, ptr @__UNIQUE_ID_description167, ptr @__UNIQUE_ID_license168, ptr @__UNIQUE_ID_nowayout164, ptr @__UNIQUE_ID_nowayouttype163, ptr @__param_nowayout], section "llvm.metadata"

@__mod_of__rwdt_ids_device_table = dso_local alias [3 x %struct.of_device_id], ptr @rwdt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rwdt_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rwdt_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rwdt_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @soc_device_match(ptr noundef nonnull @rwdt_quirks_match) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr @setup_max_cpus, align 4
  %7 = getelementptr inbounds %struct.soc_device_attribute, ptr %3, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = icmp ugt i32 %6, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.soc_device_attribute, ptr %3, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.soc_device_attribute, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef %13, ptr noundef %15) #6
  br label %103

16:                                               ; preds = %5, %1
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 124, i32 noundef 3520) #5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %103, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  store ptr %20, ptr %17, align 4
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = ptrtoint ptr %20 to i32
  br label %103

24:                                               ; preds = %19
  %25 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #5
  %26 = getelementptr inbounds %struct.rwdt_priv, ptr %17, i32 0, i32 4
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = ptrtoint ptr %25 to i32
  br label %103

30:                                               ; preds = %24
  tail call void @pm_runtime_enable(ptr noundef %2) #5
  %31 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #5
  %32 = load ptr, ptr %26, align 4
  %33 = tail call i32 @clk_get_rate(ptr noundef %32) #5
  %34 = getelementptr inbounds %struct.rwdt_priv, ptr %17, i32 0, i32 2
  store i32 %33, ptr %34, align 4
  %35 = load ptr, ptr %17, align 4
  %36 = getelementptr i8, ptr %35, i32 4
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %36) #5, !srcloc !8
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 1
  %40 = and i32 %39, 32
  %41 = getelementptr inbounds %struct.rwdt_priv, ptr %17, i32 0, i32 1
  %42 = getelementptr inbounds %struct.rwdt_priv, ptr %17, i32 0, i32 1, i32 6
  store i32 %40, ptr %42, align 4
  %43 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 5) #5
  %44 = load i32, ptr %34, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %101, label %46

46:                                               ; preds = %30
  %47 = add i32 %44, -4096
  %48 = icmp ult i32 %47, 268431360
  br i1 %48, label %70, label %49

49:                                               ; preds = %46
  %50 = add i32 %44, -1024
  %51 = icmp ult i32 %50, 67107840
  br i1 %51, label %70, label %52

52:                                               ; preds = %49
  %53 = add i32 %44, -128
  %54 = icmp ult i32 %53, 8388480
  br i1 %54, label %70, label %55

55:                                               ; preds = %52
  %56 = add i32 %44, -64
  %57 = icmp ult i32 %56, 4194240
  br i1 %57, label %70, label %58

58:                                               ; preds = %55
  %59 = add i32 %44, -32
  %60 = icmp ult i32 %59, 2097120
  br i1 %60, label %70, label %61

61:                                               ; preds = %58
  %62 = add i32 %44, -16
  %63 = icmp ult i32 %62, 1048560
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = add i32 %44, -4
  %66 = icmp ult i32 %65, 262140
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = icmp ult i32 %44, 65536
  br i1 %68, label %70, label %69

69:                                               ; preds = %67
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %101

70:                                               ; preds = %67, %64, %61, %58, %55, %52, %49, %46
  %71 = phi i8 [ 7, %46 ], [ 6, %49 ], [ 5, %52 ], [ 4, %55 ], [ 3, %58 ], [ 2, %61 ], [ 1, %64 ], [ 0, %67 ]
  %72 = getelementptr inbounds %struct.rwdt_priv, ptr %17, i32 0, i32 3
  store i8 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.rwdt_priv, ptr %17, i32 0, i32 1, i32 3
  store ptr @rwdt_ident, ptr %73, align 4
  %74 = getelementptr inbounds %struct.rwdt_priv, ptr %17, i32 0, i32 1, i32 4
  store ptr @rwdt_ops, ptr %74, align 4
  %75 = getelementptr inbounds %struct.rwdt_priv, ptr %17, i32 0, i32 1, i32 1
  store ptr %2, ptr %75, align 4
  %76 = getelementptr inbounds %struct.rwdt_priv, ptr %17, i32 0, i32 1, i32 9
  store i32 1, ptr %76, align 4
  %77 = zext i8 %71 to i32
  %78 = getelementptr [8 x i32], ptr @clk_divs, i32 0, i32 %77
  %79 = load i32, ptr %78, align 4
  %80 = shl i32 %79, 16
  %81 = udiv i32 %80, %44
  %82 = getelementptr inbounds %struct.rwdt_priv, ptr %17, i32 0, i32 1, i32 10
  store i32 %81, ptr %82, align 4
  %83 = tail call i32 @llvm.umin.i32(i32 %81, i32 60)
  %84 = getelementptr inbounds %struct.rwdt_priv, ptr %17, i32 0, i32 1, i32 7
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %17, ptr %85, align 8
  %86 = getelementptr inbounds %struct.rwdt_priv, ptr %17, i32 0, i32 1, i32 16
  store ptr %17, ptr %86, align 4
  %87 = load i8, ptr @nowayout, align 1, !range !9
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %70
  %90 = getelementptr inbounds %struct.rwdt_priv, ptr %17, i32 0, i32 1, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %90) #5
  br label %91

91:                                               ; preds = %89, %70
  tail call void @watchdog_set_restart_priority(ptr noundef %41, i32 noundef 0) #5
  %92 = getelementptr inbounds %struct.rwdt_priv, ptr %17, i32 0, i32 1, i32 18
  tail call void @_set_bit(i32 noundef 4, ptr noundef %92) #5
  %93 = tail call i32 @watchdog_init_timeout(ptr noundef %41, i32 noundef 0, ptr noundef %2) #5
  %94 = and i32 %38, 128
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %91
  %97 = tail call i32 @rwdt_start(ptr noundef %41)
  tail call void @_set_bit(i32 noundef 3, ptr noundef %92) #5
  br label %98

98:                                               ; preds = %96, %91
  %99 = tail call i32 @watchdog_register_device(ptr noundef %41) #5
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98, %69, %30
  %102 = phi i32 [ -34, %69 ], [ %99, %98 ], [ -2, %30 ]
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #5
  br label %103

103:                                              ; preds = %101, %98, %28, %22, %16, %11
  %104 = phi i32 [ %23, %22 ], [ %29, %28 ], [ %102, %101 ], [ -19, %11 ], [ -12, %16 ], [ 0, %98 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rwdt_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rwdt_priv, ptr %3, i32 0, i32 1
  tail call void @watchdog_unregister_device(ptr noundef %4) #5
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rwdt_start(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #5
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #5, !srcloc !8
  %10 = and i8 %9, 127
  %11 = zext i8 %10 to i32
  %12 = or i32 %11, -1515870976
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #5, !srcloc !10
  %15 = getelementptr inbounds %struct.rwdt_priv, ptr %3, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1999999
  %18 = udiv i32 %17, %16
  %19 = shl i32 %18, 1
  tail call void @usleep_range_state(i32 noundef %18, i32 noundef %19, i32 noundef 2) #5
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rwdt_priv, ptr %20, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = mul i32 %24, %22
  %26 = getelementptr inbounds %struct.rwdt_priv, ptr %20, i32 0, i32 3
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = getelementptr [8 x i32], ptr @clk_divs, i32 0, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %25, -1
  %32 = add i32 %31, %30
  %33 = udiv i32 %32, %30
  %34 = sub i32 65536, %33
  %35 = or i32 %34, 1515847680
  %36 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #5, !srcloc !10
  %37 = getelementptr inbounds %struct.rwdt_priv, ptr %3, i32 0, i32 3
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i32
  %40 = or i32 %39, -1515870976
  %41 = load ptr, ptr %3, align 4
  %42 = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #5, !srcloc !10
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr i8, ptr %43, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 -1515870976) #5, !srcloc !10
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr i8, ptr %45, i32 4
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %46) #5, !srcloc !8
  %48 = and i8 %47, 32
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %50, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !12
  %51 = load ptr, ptr %3, align 4
  %52 = getelementptr i8, ptr %51, i32 4
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %52) #5, !srcloc !8
  %54 = and i8 %53, 32
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %50

56:                                               ; preds = %50, %1
  %57 = load i8, ptr %37, align 4
  %58 = zext i8 %57 to i32
  %59 = or i32 %58, -1515870848
  %60 = load ptr, ptr %3, align 4
  %61 = getelementptr i8, ptr %60, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #5, !srcloc !10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rwdt_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rwdt_priv, ptr %3, i32 0, i32 3
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = or i32 %6, -1515870976
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #5, !srcloc !10
  %10 = getelementptr inbounds %struct.rwdt_priv, ptr %3, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 2999999
  %13 = udiv i32 %12, %11
  %14 = shl i32 %13, 1
  tail call void @usleep_range_state(i32 noundef %13, i32 noundef %14, i32 noundef 2) #5
  %15 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @__pm_runtime_idle(ptr noundef %16, i32 noundef 5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rwdt_init_timeout(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rwdt_priv, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, %5
  %9 = getelementptr inbounds %struct.rwdt_priv, ptr %3, i32 0, i32 3
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = getelementptr [8 x i32], ptr @clk_divs, i32 0, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %8, -1
  %15 = add i32 %14, %13
  %16 = udiv i32 %15, %13
  %17 = sub i32 65536, %16
  %18 = or i32 %17, 1515847680
  %19 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #5, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rwdt_get_timeleft(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #5, !srcloc !13
  %6 = zext i16 %5 to i32
  %7 = sub nuw nsw i32 65536, %6
  %8 = getelementptr inbounds %struct.rwdt_priv, ptr %3, i32 0, i32 3
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = getelementptr [8 x i32], ptr @clk_divs, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = mul i32 %7, %12
  %14 = getelementptr inbounds %struct.rwdt_priv, ptr %3, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = udiv i32 %13, %15
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rwdt_restart(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rwdt_priv, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = tail call i32 @clk_enable(ptr noundef %7) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %14

14:                                               ; preds = %13, %10, %3
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr i8, ptr %15, i32 4
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #5, !srcloc !8
  %18 = and i8 %17, 127
  %19 = zext i8 %18 to i32
  %20 = or i32 %19, -1515870976
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #5, !srcloc !10
  %23 = getelementptr inbounds %struct.rwdt_priv, ptr %5, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1999999
  %26 = udiv i32 %25, %24
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %27(i32 noundef %26) #5
  %28 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 1515913215) #5, !srcloc !10
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 -1515870976) #5, !srcloc !10
  %31 = tail call i64 @ktime_get() #5
  %32 = add i64 %31, 100000
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %34) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %36 = and i8 %35, 32
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %45, %14
  %39 = tail call i64 @ktime_get() #5
  %40 = icmp sgt i64 %39, %32
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load ptr, ptr %5, align 4
  %43 = getelementptr i8, ptr %42, i32 4
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %43) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  br label %52

45:                                               ; preds = %38
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #5
  %47 = load ptr, ptr %5, align 4
  %48 = getelementptr i8, ptr %47, i32 4
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %48) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %50 = and i8 %49, 32
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %38

52:                                               ; preds = %45, %41, %14
  %53 = load ptr, ptr %5, align 4
  %54 = getelementptr i8, ptr %53, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 -1515870848) #5, !srcloc !10
  %55 = load i32, ptr %23, align 4
  %56 = add i32 %55, 1999999
  %57 = udiv i32 %56, %55
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %58(i32 noundef %57) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rwdt_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rwdt_priv, ptr %3, i32 0, i32 1, i32 18
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rwdt_priv, ptr %3, i32 0, i32 1, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rwdt_priv, ptr %10, i32 0, i32 3
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = or i32 %13, -1515870976
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #5, !srcloc !10
  %17 = getelementptr inbounds %struct.rwdt_priv, ptr %10, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 2999999
  %20 = udiv i32 %19, %18
  %21 = shl i32 %20, 1
  tail call void @usleep_range_state(i32 noundef %20, i32 noundef %21, i32 noundef 2) #5
  %22 = getelementptr inbounds %struct.rwdt_priv, ptr %3, i32 0, i32 1, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @__pm_runtime_idle(ptr noundef %23, i32 noundef 5) #5
  br label %25

25:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rwdt_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rwdt_priv, ptr %3, i32 0, i32 1, i32 18
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rwdt_priv, ptr %3, i32 0, i32 1
  %10 = tail call i32 @rwdt_start(ptr noundef %9)
  br label %11

11:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 2483180}
!9 = !{i8 0, i8 2}
!10 = !{i64 2482982}
!11 = !{i64 2151396419}
!12 = !{i64 2151396261}
!13 = !{i64 2482562}
!14 = !{i64 2151399691}
!15 = !{i64 2151399888}
