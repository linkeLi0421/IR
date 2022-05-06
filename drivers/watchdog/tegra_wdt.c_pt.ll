; ModuleID = '/llk/IR/drivers/watchdog/tegra_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/tegra_wdt.c"
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
%struct.tegra_wdt = type { %struct.watchdog_device, ptr, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_heartbeat = internal constant [10 x i8] c"heartbeat\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@heartbeat = internal global i32 120, align 4
@__param_heartbeat = internal constant %struct.kernel_param { ptr @__param_str_heartbeat, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @heartbeat } }, section "__param", align 4
@__UNIQUE_ID_heartbeattype170 = internal constant [23 x i8] c"parmtype=heartbeat:int\00", section ".modinfo", align 1
@__UNIQUE_ID_heartbeat171 = internal constant [63 x i8] c"parm=heartbeat:Watchdog heartbeats in seconds. (default = 120)\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [9 x i8] c"nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global i8 0, align 1
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr @__this_module, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype172 = internal constant [23 x i8] c"parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout173 = internal constant [66 x i8] c"parm=nowayout:Watchdog cannot be stopped once started (default=0)\00", section ".modinfo", align 1
@tegra_wdt_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author174 = internal constant [26 x i8] c"author=NVIDIA Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description175 = internal constant [34 x i8] c"description=Tegra Watchdog Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@tegra_wdt_driver = internal global %struct.platform_driver { ptr @tegra_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_wdt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_wdt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [10 x i8] c"tegra-wdt\00", align 1
@tegra_wdt_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_wdt_runtime_suspend, ptr @tegra_wdt_runtime_resume, ptr @tegra_wdt_runtime_suspend, ptr @tegra_wdt_runtime_resume, ptr @tegra_wdt_runtime_suspend, ptr @tegra_wdt_runtime_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_wdt_info = internal constant %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"Tegra Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@tegra_wdt_ops = internal constant %struct.watchdog_ops { ptr @__this_module, ptr @tegra_wdt_start, ptr @tegra_wdt_stop, ptr @tegra_wdt_ping, ptr null, ptr @tegra_wdt_set_timeout, ptr null, ptr @tegra_wdt_get_timeleft, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"initialized (heartbeat = %d sec, nowayout = %d)\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_description175, ptr @__UNIQUE_ID_heartbeat171, ptr @__UNIQUE_ID_heartbeattype170, ptr @__UNIQUE_ID_license176, ptr @__UNIQUE_ID_nowayout173, ptr @__UNIQUE_ID_nowayouttype172, ptr @__param_heartbeat, ptr @__param_nowayout], section "llvm.metadata"

@__mod_of__tegra_wdt_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @tegra_wdt_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_wdt_driver, ptr noundef nonnull @__this_module) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_wdt_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_wdt_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = ptrtoint ptr %3 to i32
  br label %36

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 116, i32 noundef 3520) #4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %3, i32 256
  %12 = getelementptr inbounds %struct.tegra_wdt, ptr %8, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr i8, ptr %3, i32 96
  %14 = getelementptr inbounds %struct.tegra_wdt, ptr %8, i32 0, i32 2
  store ptr %13, ptr %14, align 4
  %15 = load i32, ptr @heartbeat, align 4
  %16 = getelementptr inbounds %struct.watchdog_device, ptr %8, i32 0, i32 7
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.watchdog_device, ptr %8, i32 0, i32 3
  store ptr @tegra_wdt_info, ptr %17, align 4
  %18 = getelementptr inbounds %struct.watchdog_device, ptr %8, i32 0, i32 4
  store ptr @tegra_wdt_ops, ptr %18, align 4
  %19 = getelementptr inbounds %struct.watchdog_device, ptr %8, i32 0, i32 9
  store i32 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.watchdog_device, ptr %8, i32 0, i32 10
  store i32 255, ptr %20, align 4
  %21 = getelementptr inbounds %struct.watchdog_device, ptr %8, i32 0, i32 1
  store ptr %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.watchdog_device, ptr %8, i32 0, i32 16
  store ptr %8, ptr %22, align 4
  %23 = load i8, ptr @nowayout, align 1, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.watchdog_device, ptr %8, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %26) #4
  br label %27

27:                                               ; preds = %25, %10
  %28 = getelementptr inbounds %struct.watchdog_device, ptr %8, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 4, ptr noundef %28) #4
  %29 = tail call i32 @devm_watchdog_register_device(ptr noundef %2, ptr noundef nonnull %8) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %32, align 8
  %33 = load i32, ptr @heartbeat, align 4
  %34 = load i8, ptr @nowayout, align 1, !range !8
  %35 = zext i8 %34 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %33, i32 noundef %35) #5
  br label %36

36:                                               ; preds = %31, %27, %7, %5
  %37 = phi i32 [ %6, %5 ], [ 0, %31 ], [ -12, %7 ], [ %29, %27 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_wdt_start(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  %4 = getelementptr inbounds %struct.tegra_wdt, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 -1073491824) #4, !srcloc !10
  %6 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 4
  %9 = or i32 %8, 32773
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %10 = getelementptr inbounds %struct.tegra_wdt, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 1) #4, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_wdt_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %4 = getelementptr inbounds %struct.tegra_wdt, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 50266) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 2) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %9 = getelementptr inbounds %struct.tegra_wdt, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #4, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_wdt_ping(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %4 = getelementptr inbounds %struct.tegra_wdt, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 1) #4, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_wdt_set_timeout(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %11 = getelementptr inbounds %struct.tegra_wdt, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 50266) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 2) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %16 = getelementptr inbounds %struct.tegra_wdt, ptr %10, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #4, !srcloc !10
  %18 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  %19 = getelementptr inbounds %struct.tegra_wdt, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 -1073491824) #4, !srcloc !10
  %21 = load i32, ptr %3, align 4
  %22 = shl i32 %21, 4
  %23 = or i32 %22, 32773
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %24 = getelementptr inbounds %struct.tegra_wdt, ptr %18, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %26 = load ptr, ptr %24, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 1) #4, !srcloc !10
  br label %28

28:                                               ; preds = %8, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_wdt_get_timeleft(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_wdt, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !18
  %8 = lshr i32 %7, 4
  %9 = and i32 %8, 255
  %10 = lshr i32 %7, 12
  %11 = and i32 %10, 3
  %12 = xor i32 %11, 3
  %13 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %12, %14
  %16 = add i32 %15, %9
  %17 = lshr i32 %16, 2
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_wdt_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 18
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %11 = getelementptr inbounds %struct.tegra_wdt, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 50266) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 2) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %16 = getelementptr inbounds %struct.tegra_wdt, ptr %10, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #4, !srcloc !10
  br label %18

18:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_wdt_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 18
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  %11 = getelementptr inbounds %struct.tegra_wdt, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 -1073491824) #4, !srcloc !10
  %13 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 4
  %16 = or i32 %15, 32773
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %17 = getelementptr inbounds %struct.tegra_wdt, ptr %10, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %19 = load ptr, ptr %17, align 4
  %20 = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 1) #4, !srcloc !10
  br label %21

21:                                               ; preds = %8, %1
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
!8 = !{i8 0, i8 2}
!9 = !{i64 2151658071}
!10 = !{i64 3463252}
!11 = !{i64 2151658407}
!12 = !{i64 2151658743}
!13 = !{i64 2151659103}
!14 = !{i64 2151659461}
!15 = !{i64 2151659791}
!16 = !{i64 2151660123}
!17 = !{i64 3463670}
!18 = !{i64 2151660608}
