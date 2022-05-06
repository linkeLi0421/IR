; ModuleID = '/llk/IR/drivers/watchdog/sunxi_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/sunxi_wdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sunxi_wdt_reg = type { i8, i8, i8, i8, i8, i8, i32 }
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
%struct.sunxi_wdt_dev = type { %struct.watchdog_device, ptr, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_sunxi_wdt__162_300_sunxi_wdt_driver_init6 = internal global ptr @sunxi_wdt_driver_init, section ".initcall6.init", align 4
@sunxi_wdt_driver = internal global %struct.platform_driver { ptr @sunxi_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sunxi_wdt_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sunxi_wdt_driver_exit = internal global ptr @sunxi_wdt_driver_exit, section ".exitcall.exit", align 4
@__param_str_timeout = internal constant [18 x i8] c"sunxi_wdt.timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global i32 0, align 4
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype163 = internal constant [32 x i8] c"sunxi_wdt.parmtype=timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout164 = internal constant [53 x i8] c"sunxi_wdt.parm=timeout:Watchdog heartbeat in seconds\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [19 x i8] c"sunxi_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global i8 0, align 1
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype165 = internal constant [33 x i8] c"sunxi_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout166 = internal constant [76 x i8] c"sunxi_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=0)\00", section ".modinfo", align 1
@__UNIQUE_ID_file167 = internal constant [42 x i8] c"sunxi_wdt.file=drivers/watchdog/sunxi_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license168 = internal constant [22 x i8] c"sunxi_wdt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author169 = internal constant [55 x i8] c"sunxi_wdt.author=Carlo Caione <carlo.caione@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author170 = internal constant [63 x i8] c"sunxi_wdt.author=Henrik Nordstrom <henrik@henriknordstrom.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [50 x i8] c"sunxi_wdt.description=sunxi WatchDog Timer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version172 = internal constant [22 x i8] c"sunxi_wdt.version=1.0\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sunxi_wdt\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"sunxi-wdt\00", align 1
@sunxi_wdt_dt_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_wdt_reg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_wdt_reg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun20i-d1-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun20i_wdt_reg }, %struct.of_device_id zeroinitializer], align 4
@sunxi_wdt_info = internal constant %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"sunxi-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@sunxi_wdt_ops = internal constant %struct.watchdog_ops { ptr null, ptr @sunxi_wdt_start, ptr @sunxi_wdt_stop, ptr @sunxi_wdt_ping, ptr null, ptr @sunxi_wdt_set_timeout, ptr null, ptr null, ptr @sunxi_wdt_restart, ptr null }, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Watchdog enabled (timeout=%d sec, nowayout=%d)\00", align 1
@wdt_timeout_map = internal unnamed_addr constant [17 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0, i32 7, i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sun4i_wdt_reg = internal constant %struct.sunxi_wdt_reg { i8 0, i8 4, i8 4, i8 3, i8 2, i8 2, i32 0 }, align 4
@sun6i_wdt_reg = internal constant %struct.sunxi_wdt_reg { i8 16, i8 20, i8 24, i8 4, i8 3, i8 1, i32 0 }, align 4
@sun20i_wdt_reg = internal constant %struct.sunxi_wdt_reg { i8 16, i8 20, i8 24, i8 4, i8 3, i8 1, i32 380239872 }, align 4
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author169, ptr @__UNIQUE_ID_author170, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file167, ptr @__UNIQUE_ID_license168, ptr @__UNIQUE_ID_nowayout166, ptr @__UNIQUE_ID_nowayouttype165, ptr @__UNIQUE_ID_timeout164, ptr @__UNIQUE_ID_timeouttype163, ptr @__UNIQUE_ID_version172, ptr @__exitcall_sunxi_wdt_driver_exit, ptr @__initcall__kmod_sunxi_wdt__162_300_sunxi_wdt_driver_init6, ptr @__modver_attr, ptr @__param_nowayout, ptr @__param_timeout, ptr @sunxi_wdt_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sunxi_wdt_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sunxi_wdt_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sunxi_wdt_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sunxi_wdt_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_wdt_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 116, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #5
  %7 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %3, i32 0, i32 2
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %45, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %11 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %3, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = ptrtoint ptr %10 to i32
  br label %45

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 3
  store ptr @sunxi_wdt_info, ptr %16, align 4
  %17 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 4
  store ptr @sunxi_wdt_ops, ptr %17, align 4
  %18 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 7
  store i32 16, ptr %18, align 4
  %19 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 10
  store i32 16, ptr %19, align 4
  %20 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 9
  store i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 1
  store ptr %2, ptr %21, align 4
  %22 = load i32, ptr @timeout, align 4
  %23 = tail call i32 @watchdog_init_timeout(ptr noundef nonnull %3, i32 noundef %22, ptr noundef %2) #5
  %24 = load i8, ptr @nowayout, align 1, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %27) #5
  br label %28

28:                                               ; preds = %26, %15
  tail call void @watchdog_set_restart_priority(ptr noundef nonnull %3, i32 noundef 128) #5
  %29 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 16
  store ptr %3, ptr %29, align 4
  %30 = load ptr, ptr %11, align 4
  %31 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %32 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %31, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %31, i32 0, i32 2
  %35 = load i8, ptr %34, align 2
  %36 = zext i8 %35 to i32
  %37 = getelementptr i8, ptr %30, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %33) #5, !srcloc !10
  %38 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %38) #5
  %39 = tail call i32 @devm_watchdog_register_device(ptr noundef %2, ptr noundef nonnull %3) #5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45, !prof !11

41:                                               ; preds = %28
  %42 = load i32, ptr %18, align 4
  %43 = load i8, ptr @nowayout, align 1, !range !8
  %44 = zext i8 %43 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %42, i32 noundef %44) #6
  br label %45

45:                                               ; preds = %41, %28, %13, %5, %1
  %46 = phi i32 [ %14, %13 ], [ 0, %41 ], [ -12, %1 ], [ -19, %5 ], [ %39, %28 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_wdt_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %8 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %7, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %7, i32 0, i32 2
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  %13 = getelementptr i8, ptr %5, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %9) #5, !srcloc !10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_wdt_start(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %11, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = and i32 %9, 1073741823
  %17 = lshr i32 43649, %16
  %18 = and i32 %17, 1
  %19 = add i32 %18, %9
  %20 = getelementptr inbounds %struct.watchdog_device, ptr %11, i32 0, i32 7
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %15, i32 0, i32 2
  %22 = load i8, ptr %21, align 2
  %23 = zext i8 %22 to i32
  %24 = getelementptr i8, ptr %13, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %26 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %15, i32 0, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 15, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %25, %30
  %32 = getelementptr [17 x i32], ptr @wdt_timeout_map, i32 0, i32 %19
  %33 = load i32, ptr %32, align 4
  %34 = shl i32 %33, %28
  %35 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %15, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, %34
  %38 = or i32 %37, %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %39 = load i8, ptr %21, align 2
  %40 = zext i8 %39 to i32
  %41 = getelementptr i8, ptr %13, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %38) #5, !srcloc !10
  %42 = load ptr, ptr %10, align 4
  %43 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %42, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %47 = load i8, ptr %46, align 4
  %48 = zext i8 %47 to i32
  %49 = getelementptr i8, ptr %44, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 5295) #5, !srcloc !10
  %50 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %7, i32 0, i32 1
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = getelementptr i8, ptr %5, i32 %52
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %55 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %7, i32 0, i32 4
  %56 = load i8, ptr %55, align 4
  %57 = zext i8 %56 to i32
  %58 = xor i32 %57, -1
  %59 = and i32 %54, %58
  %60 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %7, i32 0, i32 5
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %59, %62
  %64 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %7, i32 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = or i32 %63, %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %67 = load i8, ptr %50, align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr i8, ptr %5, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %66) #5, !srcloc !10
  %70 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %7, i32 0, i32 2
  %71 = load i8, ptr %70, align 2
  %72 = zext i8 %71 to i32
  %73 = getelementptr i8, ptr %5, i32 %72
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %75 = load i32, ptr %64, align 4
  %76 = or i32 %74, %75
  %77 = or i32 %76, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %78 = load i8, ptr %70, align 2
  %79 = zext i8 %78 to i32
  %80 = getelementptr i8, ptr %5, i32 %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %77) #5, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_wdt_ping(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = getelementptr i8, ptr %5, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 5295) #5, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_wdt_set_timeout(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = and i32 %1, 1073741823
  %10 = lshr i32 43649, %9
  %11 = and i32 %10, 1
  %12 = add i32 %11, %1
  %13 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 7
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %8, i32 0, i32 2
  %15 = load i8, ptr %14, align 2
  %16 = zext i8 %15 to i32
  %17 = getelementptr i8, ptr %6, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %19 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %8, i32 0, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 15, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %18, %23
  %25 = getelementptr [17 x i32], ptr @wdt_timeout_map, i32 0, i32 %12
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %26, %21
  %28 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %8, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, %27
  %31 = or i32 %30, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %32 = load i8, ptr %14, align 2
  %33 = zext i8 %32 to i32
  %34 = getelementptr i8, ptr %6, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #5, !srcloc !10
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %35, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i32
  %42 = getelementptr i8, ptr %37, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 5295) #5, !srcloc !10
  ret i32 0
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_wdt_restart(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #4 {
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sunxi_wdt_dev, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %9, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr i8, ptr %7, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !20
  %15 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %9, i32 0, i32 4
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  %20 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %9, i32 0, i32 5
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %19, %22
  %24 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %9, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %23, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %27 = load i8, ptr %10, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr i8, ptr %7, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #5, !srcloc !10
  %30 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %9, i32 0, i32 2
  %31 = load i8, ptr %30, align 2
  %32 = zext i8 %31 to i32
  %33 = getelementptr i8, ptr %7, i32 %32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !22
  %35 = getelementptr inbounds %struct.sunxi_wdt_reg, ptr %9, i32 0, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 15, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %34, %39
  %41 = load i32, ptr %24, align 4
  %42 = or i32 %41, %40
  %43 = or i32 %42, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %44 = load i8, ptr %30, align 2
  %45 = zext i8 %44 to i32
  %46 = getelementptr i8, ptr %7, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %43) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %47 = load i8, ptr %9, align 4
  %48 = zext i8 %47 to i32
  %49 = getelementptr i8, ptr %7, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 5295) #5, !srcloc !10
  br label %50

50:                                               ; preds = %50, %3
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #5
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #5
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #5
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #5
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #5
  %56 = load i8, ptr %30, align 2
  %57 = zext i8 %56 to i32
  %58 = getelementptr i8, ptr %7, i32 %57
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !25
  %60 = load i32, ptr %24, align 4
  %61 = or i32 %59, %60
  %62 = or i32 %61, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %63 = load i8, ptr %30, align 2
  %64 = zext i8 %63 to i32
  %65 = getelementptr i8, ptr %7, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %62) #5, !srcloc !10
  br label %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 2151405272}
!10 = !{i64 2482700}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2483118}
!13 = !{i64 2151404730}
!14 = !{i64 2151404928}
!15 = !{i64 2151404189}
!16 = !{i64 2151405792}
!17 = !{i64 2151405984}
!18 = !{i64 2151406478}
!19 = !{i64 2151406680}
!20 = !{i64 2151400505}
!21 = !{i64 2151400697}
!22 = !{i64 2151401191}
!23 = !{i64 2151401398}
!24 = !{i64 2151401778}
!25 = !{i64 2151403607}
!26 = !{i64 2151403809}
