; ModuleID = '/llk/IR/drivers/watchdog/bcm7038_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/bcm7038_wdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
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
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.bcm7038_watchdog = type { ptr, %struct.watchdog_device, i32, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@bcm7038_wdt_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7038-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@bcm7038_wdt_devtype = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"bcm63xx-wdt\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@__param_str_nowayout = internal constant [9 x i8] c"nowayout\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global i8 0, align 1
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr @__this_module, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype162 = internal constant [23 x i8] c"parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout163 = internal constant [66 x i8] c"parm=nowayout:Watchdog cannot be stopped once started (default=0)\00", section ".modinfo", align 1
@__UNIQUE_ID_license164 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description165 = internal constant [51 x i8] c"description=Driver for Broadcom 7038 SoCs Watchdog\00", section ".modinfo", align 1
@__UNIQUE_ID_author166 = internal constant [19 x i8] c"author=Justin Chen\00", section ".modinfo", align 1
@bcm7038_wdt_driver = internal global %struct.platform_driver { ptr @bcm7038_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm7038_wdt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7038_wdt_pm_ops, ptr null, ptr null }, ptr @bcm7038_wdt_devtype, i8 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"bcm7038-wdt\00", align 1
@bcm7038_wdt_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @bcm7038_wdt_suspend, ptr @bcm7038_wdt_resume, ptr @bcm7038_wdt_suspend, ptr @bcm7038_wdt_resume, ptr @bcm7038_wdt_suspend, ptr @bcm7038_wdt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@bcm7038_wdt_info = internal constant %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"Broadcom BCM7038 Watchdog Timer\00" }, align 4
@bcm7038_wdt_ops = internal constant %struct.watchdog_ops { ptr @__this_module, ptr @bcm7038_wdt_start, ptr @bcm7038_wdt_stop, ptr null, ptr null, ptr @bcm7038_wdt_set_timeout, ptr null, ptr @bcm7038_wdt_get_timeleft, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Registered BCM7038 Watchdog\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author166, ptr @__UNIQUE_ID_description165, ptr @__UNIQUE_ID_license164, ptr @__UNIQUE_ID_nowayout163, ptr @__UNIQUE_ID_nowayouttype162, ptr @__param_nowayout], section "llvm.metadata"

@__mod_of__bcm7038_wdt_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @bcm7038_wdt_match
@__mod_platform__bcm7038_wdt_devtype_device_table = dso_local alias [2 x %struct.platform_device_id], ptr @bcm7038_wdt_devtype

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm7038_wdt_driver, ptr noundef nonnull @__this_module) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm7038_wdt_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7038_wdt_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 120, i32 noundef 3520) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %57, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %8, align 8
  %9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  store ptr %9, ptr %5, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = ptrtoint ptr %9 to i32
  br label %57

13:                                               ; preds = %7
  %14 = icmp eq ptr %4, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %4, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ null, %13 ], [ %16, %15 ]
  %19 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef %18) #4
  %20 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %5, i32 0, i32 3
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %40, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @clk_prepare(ptr noundef %19) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %22
  %26 = tail call i32 @clk_enable(ptr noundef %19) #4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @clk_unprepare(ptr noundef %19) #4
  br label %57

29:                                               ; preds = %25
  %30 = load ptr, ptr %20, align 4
  %31 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @bcm7038_clk_disable_unprepare, ptr noundef %30) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @clk_disable(ptr noundef %30) #4
  tail call void @clk_unprepare(ptr noundef %30) #4
  br label %57

34:                                               ; preds = %29
  %35 = load ptr, ptr %20, align 4
  %36 = tail call i32 @clk_get_rate(ptr noundef %35) #4
  %37 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %5, i32 0, i32 2
  %38 = icmp eq i32 %36, 0
  %39 = select i1 %38, i32 27000000, i32 %36
  store i32 %39, ptr %37, align 4
  br label %42

40:                                               ; preds = %17
  %41 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %5, i32 0, i32 2
  store i32 27000000, ptr %41, align 4
  store ptr null, ptr %20, align 4
  br label %42

42:                                               ; preds = %40, %34
  %43 = phi i32 [ %39, %34 ], [ 27000000, %40 ]
  %44 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %5, i32 0, i32 1
  %45 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %5, i32 0, i32 1, i32 3
  store ptr @bcm7038_wdt_info, ptr %45, align 4
  %46 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %5, i32 0, i32 1, i32 4
  store ptr @bcm7038_wdt_ops, ptr %46, align 4
  %47 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %5, i32 0, i32 1, i32 9
  store i32 1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %5, i32 0, i32 1, i32 7
  store i32 30, ptr %48, align 4
  %49 = udiv i32 -1, %43
  %50 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %5, i32 0, i32 1, i32 10
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %5, i32 0, i32 1, i32 1
  store ptr %2, ptr %51, align 4
  %52 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %5, i32 0, i32 1, i32 16
  store ptr %5, ptr %52, align 4
  %53 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %5, i32 0, i32 1, i32 18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %53) #4
  tail call void @_set_bit(i32 noundef 4, ptr noundef %53) #4
  %54 = tail call i32 @devm_watchdog_register_device(ptr noundef %2, ptr noundef %44) #4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  br label %57

57:                                               ; preds = %56, %42, %33, %28, %22, %11, %1
  %58 = phi i32 [ %12, %11 ], [ 0, %56 ], [ -12, %1 ], [ %31, %33 ], [ %54, %42 ], [ %26, %28 ], [ %23, %22 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm7038_clk_disable_unprepare(ptr noundef %0) #2 {
  tail call void @clk_disable(ptr noundef %0) #4
  tail call void @clk_unprepare(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7038_wdt_start(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, %5
  %9 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #4, !srcloc !8
  %10 = load ptr, ptr %2, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 65280) #4, !srcloc !8
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 255) #4, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7038_wdt_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 60928) #4, !srcloc !8
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 238) #4, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7038_wdt_set_timeout(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 60928) #4, !srcloc !8
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 238) #4, !srcloc !8
  %9 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %1, ptr %9, align 4
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = mul i32 %12, %1
  %14 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #4, !srcloc !8
  %15 = load ptr, ptr %3, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 65280) #4, !srcloc !8
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 255) #4, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7038_wdt_get_timeleft(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !9
  %7 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = udiv i32 %6, %8
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7038_wdt_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %3, i32 0, i32 1, i32 18
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %3, i32 0, i32 1, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 60928) #4, !srcloc !8
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 238) #4, !srcloc !8
  br label %15

15:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7038_wdt_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %3, i32 0, i32 1, i32 18
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %3, i32 0, i32 1, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.bcm7038_watchdog, ptr %3, i32 0, i32 1, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %14, %12
  %16 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #4, !srcloc !8
  %17 = load ptr, ptr %9, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 65280) #4, !srcloc !8
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 255) #4, !srcloc !8
  br label %22

22:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 1722713}
!9 = !{i64 1723131}
