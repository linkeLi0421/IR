; ModuleID = '/llk/IR/drivers/watchdog/davinci_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/davinci_wdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.davinci_wdt_device = type { ptr, ptr, %struct.watchdog_device }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@davinci_wdt_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,davinci-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author162 = internal constant [25 x i8] c"author=Texas Instruments\00", section ".modinfo", align 1
@__UNIQUE_ID_description163 = internal constant [36 x i8] c"description=DaVinci Watchdog Driver\00", section ".modinfo", align 1
@__param_str_heartbeat = internal constant [10 x i8] c"heartbeat\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@heartbeat = internal global i32 0, align 4
@__param_heartbeat = internal constant %struct.kernel_param { ptr @__param_str_heartbeat, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @heartbeat } }, section "__param", align 4
@__UNIQUE_ID_heartbeattype164 = internal constant [23 x i8] c"parmtype=heartbeat:int\00", section ".modinfo", align 1
@__UNIQUE_ID_heartbeat165 = internal constant [78 x i8] c"parm=heartbeat:Watchdog heartbeat period in seconds from 1 to 600, default 60\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias167 = internal constant [27 x i8] c"alias=platform:davinci-wdt\00", section ".modinfo", align 1
@platform_wdt_driver = internal global %struct.platform_driver { ptr @davinci_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @davinci_wdt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"davinci-wdt\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get clock node\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to prepare clock\0A\00", align 1
@davinci_wdt_info = internal constant %struct.watchdog_info { i32 32768, i32 0, [32 x i8] c"DaVinci/Keystone Watchdog\00\00\00\00\00\00\00" }, align 4
@davinci_wdt_ops = internal constant %struct.watchdog_ops { ptr @__this_module, ptr @davinci_wdt_start, ptr @davinci_wdt_ping, ptr @davinci_wdt_ping, ptr null, ptr null, ptr null, ptr @davinci_wdt_get_timeleft, ptr @davinci_wdt_restart, ptr null }, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"heartbeat %d sec\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias167, ptr @__UNIQUE_ID_author162, ptr @__UNIQUE_ID_description163, ptr @__UNIQUE_ID_heartbeat165, ptr @__UNIQUE_ID_heartbeattype164, ptr @__UNIQUE_ID_license166, ptr @__param_heartbeat], section "llvm.metadata"

@__mod_of__davinci_wdt_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @davinci_wdt_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @platform_wdt_driver, ptr noundef nonnull @__this_module) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @platform_wdt_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_wdt_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 116, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #4
  %7 = getelementptr inbounds %struct.davinci_wdt_device, ptr %3, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = ptrtoint ptr %6 to i32
  %11 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %10, ptr noundef nonnull @.str.1) #4
  br label %45

12:                                               ; preds = %5
  %13 = tail call i32 @clk_prepare(ptr noundef %6) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call i32 @clk_enable(ptr noundef %6) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %6) #4
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi i32 [ %16, %18 ], [ %13, %12 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  br label %45

21:                                               ; preds = %15
  %22 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @davinci_clk_disable_unprepare, ptr noundef %6) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @clk_disable(ptr noundef %6) #4
  tail call void @clk_unprepare(ptr noundef %6) #4
  br label %45

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %26, align 8
  %27 = getelementptr inbounds %struct.davinci_wdt_device, ptr %3, i32 0, i32 2
  %28 = getelementptr inbounds %struct.davinci_wdt_device, ptr %3, i32 0, i32 2, i32 3
  store ptr @davinci_wdt_info, ptr %28, align 4
  %29 = getelementptr inbounds %struct.davinci_wdt_device, ptr %3, i32 0, i32 2, i32 4
  store ptr @davinci_wdt_ops, ptr %29, align 4
  %30 = getelementptr inbounds %struct.davinci_wdt_device, ptr %3, i32 0, i32 2, i32 9
  store i32 1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.davinci_wdt_device, ptr %3, i32 0, i32 2, i32 10
  store i32 600, ptr %31, align 4
  %32 = getelementptr inbounds %struct.davinci_wdt_device, ptr %3, i32 0, i32 2, i32 7
  store i32 60, ptr %32, align 4
  %33 = getelementptr inbounds %struct.davinci_wdt_device, ptr %3, i32 0, i32 2, i32 1
  store ptr %2, ptr %33, align 4
  %34 = load i32, ptr @heartbeat, align 4
  %35 = tail call i32 @watchdog_init_timeout(ptr noundef %27, i32 noundef %34, ptr noundef %2) #4
  %36 = load i32, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %36) #5
  %37 = getelementptr inbounds %struct.davinci_wdt_device, ptr %3, i32 0, i32 2, i32 16
  store ptr %3, ptr %37, align 4
  %38 = getelementptr inbounds %struct.davinci_wdt_device, ptr %3, i32 0, i32 2, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %38) #4
  tail call void @watchdog_set_restart_priority(ptr noundef %27, i32 noundef 128) #4
  %39 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  store ptr %39, ptr %3, align 4
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %25
  %42 = ptrtoint ptr %39 to i32
  br label %45

43:                                               ; preds = %25
  %44 = tail call i32 @devm_watchdog_register_device(ptr noundef %2, ptr noundef %27) #4
  br label %45

45:                                               ; preds = %43, %41, %24, %19, %9, %1
  %46 = phi i32 [ %11, %9 ], [ %20, %19 ], [ %42, %41 ], [ %44, %43 ], [ -12, %1 ], [ %22, %24 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @davinci_clk_disable_unprepare(ptr noundef %0) #2 {
  tail call void @clk_disable(ptr noundef %0) #4
  tail call void @clk_unprepare(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

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
define internal i32 @davinci_wdt_start(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.davinci_wdt_device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_get_rate(ptr noundef %5) #4
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #4, !srcloc !9
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #4, !srcloc !9
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 11) #4, !srcloc !9
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #4, !srcloc !9
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #4, !srcloc !9
  %17 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = zext i32 %6 to i64
  %20 = mul i32 %18, %6
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr i8, ptr %21, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #4, !srcloc !9
  %23 = load i32, ptr %17, align 4
  %24 = zext i32 %23 to i64
  %25 = mul nuw i64 %24, %19
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr i8, ptr %28, i32 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #4, !srcloc !9
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr i8, ptr %30, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 128) #4, !srcloc !9
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr i8, ptr %32, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 -1513734144) #4, !srcloc !9
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr i8, ptr %34, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 -629260288) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_wdt_ping(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 -1513750528) #4, !srcloc !9
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 -629276672) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_wdt_get_timeleft(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %7 = and i32 %6, 32768
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.davinci_wdt_device, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_get_rate(ptr noundef %11) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %18 = zext i32 %17 to i64
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %22 = zext i32 %21 to i64
  %23 = shl nuw i64 %22, 32
  %24 = or i64 %23, %18
  %25 = icmp ult i64 %24, 4294967296
  br i1 %25, label %26, label %28, !prof !12

26:                                               ; preds = %14
  %27 = udiv i32 %17, %12
  br label %32

28:                                               ; preds = %14
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %24) #6, !srcloc !13
  %30 = extractvalue { i64, i64 } %29, 1
  %31 = trunc i64 %30 to i32
  br label %32

32:                                               ; preds = %28, %26
  %33 = phi i32 [ %27, %26 ], [ %31, %28 ]
  %34 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = sub i32 %35, %33
  br label %37

37:                                               ; preds = %32, %9, %1
  %38 = phi i32 [ %36, %32 ], [ 0, %1 ], [ 0, %9 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_wdt_restart(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #4, !srcloc !9
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 36
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #4, !srcloc !9
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 36
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 11) #4, !srcloc !9
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #4, !srcloc !9
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr i8, ptr %14, i32 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #4, !srcloc !9
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #4, !srcloc !9
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #4, !srcloc !9
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr i8, ptr %20, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 -1513734144) #4, !srcloc !9
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %22, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 -629260288) #4, !srcloc !9
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr i8, ptr %24, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 16384) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind readnone }

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
!8 = !{i64 2151220459}
!9 = !{i64 3679366}
!10 = !{i64 3679784}
!11 = !{i64 2151219237}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2147895628, i64 2147895908, i64 2147896242, i64 2147896576}
