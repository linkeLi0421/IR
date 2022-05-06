; ModuleID = '/llk/IR/drivers/watchdog/orion_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/orion_wdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.orion_watchdog_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr }
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
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.orion_watchdog = type { %struct.watchdog_device, ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_orion_wdt__170_674_orion_wdt_driver_init6 = internal global ptr @orion_wdt_driver_init, section ".initcall6.init", align 4
@orion_wdt_driver = internal global %struct.platform_driver { ptr @orion_wdt_probe, ptr @orion_wdt_remove, ptr @orion_wdt_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @orion_wdt_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_orion_wdt_driver_exit = internal global ptr @orion_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [64 x i8] c"orion_wdt.author=Sylver Bruneau <sylver.bruneau@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [47 x i8] c"orion_wdt.description=Orion Processor Watchdog\00", section ".modinfo", align 1
@__param_str_heartbeat = internal constant [20 x i8] c"orion_wdt.heartbeat\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@heartbeat = internal global i32 0, align 4
@__param_heartbeat = internal constant %struct.kernel_param { ptr @__param_str_heartbeat, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @heartbeat } }, section "__param", align 4
@__UNIQUE_ID_heartbeattype173 = internal constant [33 x i8] c"orion_wdt.parmtype=heartbeat:int\00", section ".modinfo", align 1
@__UNIQUE_ID_heartbeat174 = internal constant [63 x i8] c"orion_wdt.parm=heartbeat:Initial watchdog heartbeat in seconds\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [19 x i8] c"orion_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global i8 0, align 1
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype175 = internal constant [33 x i8] c"orion_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout176 = internal constant [76 x i8] c"orion_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=0)\00", section ".modinfo", align 1
@__UNIQUE_ID_file177 = internal constant [42 x i8] c"orion_wdt.file=drivers/watchdog/orion_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [25 x i8] c"orion_wdt.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias179 = internal constant [35 x i8] c"orion_wdt.alias=platform:orion_wdt\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"orion_wdt\00", align 1
@orion_wdt_of_match_table = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @orion_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada370_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-xp-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armadaxp_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-375-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada375_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada380_data }, %struct.of_device_id zeroinitializer], align 4
@orion_wdt_info = internal global %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"Orion Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@orion_wdt_ops = internal constant %struct.watchdog_ops { ptr null, ptr @orion_wdt_start, ptr @orion_wdt_stop, ptr @orion_wdt_ping, ptr null, ptr null, ptr null, ptr @orion_wdt_get_timeleft, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot initialize clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"\016orion_wdt: Initial timeout %d sec%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c", nowayout\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"marvell,orion-wdt\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"marvell,armada-370-wdt\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"marvell,armada-xp-wdt\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"marvell,armada-375-wdt\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"marvell,armada-380-wdt\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"drivers/watchdog/orion_wdt.c\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"[Firmware Bug]: falling back to hardcoded RSTOUT reg %pa\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Watchdog Timeout\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"\011orion_wdt: watchdog%d: pretimeout event\0A\00", align 1
@orion_data = internal constant %struct.orion_watchdog_data { i32 36, i32 16, i32 2, i32 0, ptr @orion_wdt_clock_init, ptr @orion_enabled, ptr @orion_start, ptr @orion_stop }, align 4
@armada370_data = internal constant %struct.orion_watchdog_data { i32 52, i32 256, i32 256, i32 0, ptr @armada370_wdt_clock_init, ptr @orion_enabled, ptr @armada370_start, ptr @armada370_stop }, align 4
@armadaxp_data = internal constant %struct.orion_watchdog_data { i32 52, i32 256, i32 256, i32 0, ptr @armadaxp_wdt_clock_init, ptr @orion_enabled, ptr @armada370_start, ptr @armada370_stop }, align 4
@armada375_data = internal constant %struct.orion_watchdog_data { i32 52, i32 256, i32 256, i32 1024, ptr @armada375_wdt_clock_init, ptr @armada375_enabled, ptr @armada375_start, ptr @armada375_stop }, align 4
@armada380_data = internal constant %struct.orion_watchdog_data { i32 52, i32 256, i32 256, i32 1024, ptr @armadaxp_wdt_clock_init, ptr @armada375_enabled, ptr @armada375_start, ptr @armada375_stop }, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias179, ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_heartbeat174, ptr @__UNIQUE_ID_heartbeattype173, ptr @__UNIQUE_ID_license178, ptr @__UNIQUE_ID_nowayout176, ptr @__UNIQUE_ID_nowayouttype175, ptr @__exitcall_orion_wdt_driver_exit, ptr @__initcall__kmod_orion_wdt__170_674_orion_wdt_driver_init6, ptr @__param_heartbeat, ptr @__param_nowayout, ptr @orion_wdt_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @orion_wdt_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @orion_wdt_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @orion_wdt_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @orion_wdt_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_wdt_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 132, i32 noundef 3520) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %156, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @of_match_device(ptr noundef nonnull @orion_wdt_of_match_table, ptr noundef %3) #7
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @orion_wdt_of_match_table, ptr %7
  %10 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 3
  store ptr @orion_wdt_info, ptr %10, align 4
  %11 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 4
  store ptr @orion_wdt_ops, ptr %11, align 4
  %12 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 9
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.of_device_id, ptr %9, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.orion_watchdog, ptr %4, i32 0, i32 6
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %17 = load ptr, ptr %16, align 8
  %18 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %156, label %20

20:                                               ; preds = %6
  %21 = load i32, ptr %18, align 4
  %22 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 1, %21
  %25 = add i32 %24, %23
  %26 = tail call ptr @devm_ioremap(ptr noundef %3, i32 noundef %21, i32 noundef %25) #7
  %27 = getelementptr inbounds %struct.orion_watchdog, ptr %4, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  %28 = icmp eq ptr %26, null
  br i1 %28, label %156, label %29

29:                                               ; preds = %20
  %30 = tail call i32 @of_device_is_compatible(ptr noundef %17, ptr noundef nonnull @.str.6) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  %34 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 1) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %34, align 4
  %38 = getelementptr inbounds %struct.resource, ptr %34, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = sub i32 1, %37
  %41 = add i32 %40, %39
  %42 = tail call ptr @devm_ioremap(ptr noundef %3, i32 noundef %37, i32 noundef %41) #7
  br label %48

43:                                               ; preds = %32
  %44 = and i32 %33, -1048576
  %45 = or i32 %44, 131336
  store i32 %45, ptr %2, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 417, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull %2) #7
  %46 = load i32, ptr %2, align 4
  %47 = call ptr @devm_ioremap(ptr noundef %3, i32 noundef %46, i32 noundef 4) #7
  br label %48

48:                                               ; preds = %43, %36
  %49 = phi ptr [ %42, %36 ], [ %47, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %50 = getelementptr inbounds %struct.orion_watchdog, ptr %4, i32 0, i32 2
  store ptr %49, ptr %50, align 4
  %51 = icmp eq ptr %49, null
  br i1 %51, label %156, label %87

52:                                               ; preds = %29
  %53 = tail call i32 @of_device_is_compatible(ptr noundef %17, ptr noundef nonnull @.str.7) #7
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = tail call i32 @of_device_is_compatible(ptr noundef %17, ptr noundef nonnull @.str.8) #7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55, %52
  %59 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #7
  %60 = getelementptr inbounds %struct.orion_watchdog, ptr %4, i32 0, i32 2
  store ptr %59, ptr %60, align 4
  %61 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %84, label %87

62:                                               ; preds = %55
  %63 = tail call i32 @of_device_is_compatible(ptr noundef %17, ptr noundef nonnull @.str.9) #7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = tail call i32 @of_device_is_compatible(ptr noundef %17, ptr noundef nonnull @.str.10) #7
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %156, label %68

68:                                               ; preds = %65, %62
  %69 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #7
  %70 = getelementptr inbounds %struct.orion_watchdog, ptr %4, i32 0, i32 2
  store ptr %69, ptr %70, align 4
  %71 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %84, label %72

72:                                               ; preds = %68
  %73 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 2) #7
  %74 = icmp eq ptr %73, null
  br i1 %74, label %156, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr %73, align 4
  %77 = getelementptr inbounds %struct.resource, ptr %73, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = sub i32 1, %76
  %80 = add i32 %79, %78
  %81 = tail call ptr @devm_ioremap(ptr noundef %3, i32 noundef %76, i32 noundef %80) #7
  %82 = getelementptr inbounds %struct.orion_watchdog, ptr %4, i32 0, i32 3
  store ptr %81, ptr %82, align 4
  %83 = icmp eq ptr %81, null
  br i1 %83, label %156, label %87

84:                                               ; preds = %68, %58
  %85 = phi ptr [ %59, %58 ], [ %69, %68 ]
  %86 = ptrtoint ptr %85 to i32
  br label %156

87:                                               ; preds = %75, %58, %48
  %88 = load ptr, ptr %15, align 4
  %89 = getelementptr inbounds %struct.orion_watchdog_data, ptr %88, i32 0, i32 4
  %90 = load ptr, ptr %89, align 4
  %91 = call i32 %90(ptr noundef %0, ptr noundef nonnull %4) #7
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #8
  br label %156

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.orion_watchdog, ptr %4, i32 0, i32 4
  %96 = load i32, ptr %95, align 4
  %97 = udiv i32 -1, %96
  %98 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 7
  store i32 %97, ptr %98, align 4
  %99 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 10
  store i32 %97, ptr %99, align 4
  %100 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 1
  store ptr %3, ptr %100, align 4
  %101 = load i32, ptr @heartbeat, align 4
  %102 = call i32 @watchdog_init_timeout(ptr noundef nonnull %4, i32 noundef %101, ptr noundef %3) #7
  %103 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %103, align 8
  %104 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 16
  store ptr %4, ptr %104, align 4
  %105 = load ptr, ptr %15, align 4
  %106 = getelementptr inbounds %struct.orion_watchdog_data, ptr %105, i32 0, i32 5
  %107 = load ptr, ptr %106, align 4
  %108 = call i32 %107(ptr noundef nonnull %4) #7
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %94
  %111 = load ptr, ptr %104, align 4
  %112 = getelementptr inbounds %struct.orion_watchdog, ptr %111, i32 0, i32 6
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.orion_watchdog_data, ptr %113, i32 0, i32 7
  %115 = load ptr, ptr %114, align 4
  %116 = call i32 %115(ptr noundef nonnull %4) #7
  br label %119

117:                                              ; preds = %94
  %118 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 18
  call void @_set_bit(i32 noundef 3, ptr noundef %118) #7
  br label %119

119:                                              ; preds = %117, %110
  %120 = call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 0) #7
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load ptr, ptr %0, align 8
  %124 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %120, ptr noundef nonnull @orion_wdt_irq, ptr noundef null, i32 noundef 0, ptr noundef %123, ptr noundef nonnull %4) #7
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %149, label %126

126:                                              ; preds = %122, %119
  %127 = call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 1) #7
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load i32, ptr @orion_wdt_info, align 4
  %131 = or i32 %130, 512
  store i32 %131, ptr @orion_wdt_info, align 4
  %132 = load ptr, ptr %0, align 8
  %133 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %127, ptr noundef nonnull @orion_wdt_pre_irq, ptr noundef null, i32 noundef 0, ptr noundef %132, ptr noundef nonnull %4) #7
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %149, label %135

135:                                              ; preds = %129, %126
  %136 = load i8, ptr @nowayout, align 1, !range !8
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 18
  call void @_set_bit(i32 noundef 1, ptr noundef %139) #7
  br label %140

140:                                              ; preds = %138, %135
  %141 = call i32 @watchdog_register_device(ptr noundef nonnull %4) #7
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load i32, ptr %98, align 4
  %145 = load i8, ptr @nowayout, align 1, !range !8
  %146 = icmp eq i8 %145, 0
  %147 = select i1 %146, ptr @.str.5, ptr @.str.4
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %144, ptr noundef nonnull %147) #8
  br label %156

149:                                              ; preds = %129, %122
  %150 = phi i32 [ %124, %122 ], [ %133, %129 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  br label %151

151:                                              ; preds = %149, %140
  %152 = phi i32 [ %141, %140 ], [ %150, %149 ]
  %153 = getelementptr inbounds %struct.orion_watchdog, ptr %4, i32 0, i32 5
  %154 = load ptr, ptr %153, align 4
  call void @clk_disable(ptr noundef %154) #7
  call void @clk_unprepare(ptr noundef %154) #7
  %155 = load ptr, ptr %153, align 4
  call void @clk_put(ptr noundef %155) #7
  br label %156

156:                                              ; preds = %151, %143, %93, %84, %75, %72, %65, %48, %20, %6, %1
  %157 = phi i32 [ %91, %93 ], [ %152, %151 ], [ 0, %143 ], [ -12, %1 ], [ %86, %84 ], [ -19, %65 ], [ -12, %75 ], [ -19, %72 ], [ -19, %48 ], [ -12, %20 ], [ -19, %6 ]
  ret i32 %157
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_wdt_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  tail call void @watchdog_unregister_device(ptr noundef %3) #7
  %6 = getelementptr inbounds %struct.orion_watchdog, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %8 = load ptr, ptr %6, align 4
  tail call void @clk_put(ptr noundef %8) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @orion_wdt_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.orion_watchdog, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.orion_watchdog_data, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %3) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_wdt_stop(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.orion_watchdog_data, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #7
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_wdt_irq(i32 noundef %0, ptr nocapture noundef readnone %1) #5 {
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.13) #9
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_wdt_pre_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  tail call void @atomic_io_modify(ptr noundef %5, i32 noundef 256, i32 noundef 0) #7
  %6 = load i32, ptr %1, align 4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %6) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_wdt_start(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.orion_watchdog_data, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_wdt_ping(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  %4 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, %5
  %9 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %10, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %8) #7, !srcloc !10
  %15 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 512
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %21 = load i32, ptr %4, align 4
  %22 = load i32, ptr %6, align 4
  %23 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %22, %24
  %26 = mul i32 %25, %21
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr i8, ptr %27, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #7, !srcloc !10
  br label %29

29:                                               ; preds = %20, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_wdt_get_timeleft(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %11 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = udiv i32 %10, %12
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @atomic_io_modify(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_wdt_clock_init(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @clk_get(ptr noundef %3, ptr noundef null) #7
  %5 = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 5
  store ptr %4, ptr %5, align 4
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = ptrtoint ptr %4 to i32
  br label %23

9:                                                ; preds = %2
  %10 = tail call i32 @clk_prepare(ptr noundef %4) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = tail call i32 @clk_enable(ptr noundef %4) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %4) #7
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi i32 [ %13, %15 ], [ %10, %9 ]
  %18 = load ptr, ptr %5, align 4
  tail call void @clk_put(ptr noundef %18) #7
  br label %23

19:                                               ; preds = %12
  %20 = load ptr, ptr %5, align 4
  %21 = tail call i32 @clk_get_rate(ptr noundef %20) #7
  %22 = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 4
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %19, %16, %7
  %24 = phi i32 [ %8, %7 ], [ %17, %16 ], [ 0, %19 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_enabled(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.orion_watchdog, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %5 = getelementptr inbounds %struct.orion_watchdog, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.orion_watchdog_data, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %4
  %10 = icmp ne i32 %9, 0
  %11 = getelementptr inbounds %struct.orion_watchdog, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.orion_watchdog_data, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %13
  %18 = icmp ne i32 %17, 0
  %19 = select i1 %10, i1 %18, i1 false
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_start(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %4 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, %5
  %9 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %10, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %8) #7, !srcloc !10
  %15 = load ptr, ptr %9, align 4
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr inbounds %struct.orion_watchdog_data, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  tail call void @atomic_io_modify(ptr noundef %15, i32 noundef %18, i32 noundef %18) #7
  %19 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %11, align 4
  %22 = getelementptr inbounds %struct.orion_watchdog_data, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  tail call void @atomic_io_modify(ptr noundef %20, i32 noundef %23, i32 noundef %23) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.orion_watchdog_data, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  tail call void @atomic_io_modify(ptr noundef %5, i32 noundef %9, i32 noundef 0) #7
  %10 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.orion_watchdog_data, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  tail call void @atomic_io_modify(ptr noundef %11, i32 noundef %14, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada370_wdt_clock_init(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @clk_get(ptr noundef %3, ptr noundef null) #7
  %5 = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 5
  store ptr %4, ptr %5, align 4
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = ptrtoint ptr %4 to i32
  br label %26

9:                                                ; preds = %2
  %10 = tail call i32 @clk_prepare(ptr noundef %4) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = tail call i32 @clk_enable(ptr noundef %4) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %4) #7
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi i32 [ %13, %15 ], [ %10, %9 ]
  %18 = load ptr, ptr %5, align 4
  tail call void @clk_put(ptr noundef %18) #7
  br label %26

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void @atomic_io_modify(ptr noundef %21, i32 noundef 327680, i32 noundef 327680) #7
  %22 = load ptr, ptr %5, align 4
  %23 = tail call i32 @clk_get_rate(ptr noundef %22) #7
  %24 = lshr i32 %23, 5
  %25 = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 4
  store i32 %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %19, %16, %7
  %27 = phi i32 [ %8, %7 ], [ %17, %16 ], [ 0, %19 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada370_start(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %4 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, %5
  %9 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %10, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %8) #7, !srcloc !10
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr i8, ptr %15, i32 4
  tail call void @atomic_io_modify(ptr noundef %16, i32 noundef -2147483648, i32 noundef 0) #7
  %17 = load ptr, ptr %9, align 4
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr inbounds %struct.orion_watchdog_data, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  tail call void @atomic_io_modify(ptr noundef %17, i32 noundef %20, i32 noundef %20) #7
  %21 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %24 = load ptr, ptr %11, align 4
  %25 = getelementptr inbounds %struct.orion_watchdog_data, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %28 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %27) #7, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada370_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %7 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.orion_watchdog_data, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %6, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %13 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #7, !srcloc !10
  %14 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr inbounds %struct.orion_watchdog_data, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  tail call void @atomic_io_modify(ptr noundef %15, i32 noundef %18, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armadaxp_wdt_clock_init(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_clk_get_by_name(ptr noundef %4, ptr noundef nonnull @.str.15) #7
  %6 = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 5
  store ptr %5, ptr %6, align 4
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = ptrtoint ptr %5 to i32
  br label %26

10:                                               ; preds = %2
  %11 = tail call i32 @clk_prepare(ptr noundef %5) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = tail call i32 @clk_enable(ptr noundef %5) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %17

17:                                               ; preds = %16, %10
  %18 = phi i32 [ %14, %16 ], [ %11, %10 ]
  %19 = load ptr, ptr %6, align 4
  tail call void @clk_put(ptr noundef %19) #7
  br label %26

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void @atomic_io_modify(ptr noundef %22, i32 noundef 5120, i32 noundef 5120) #7
  %23 = load ptr, ptr %6, align 4
  %24 = tail call i32 @clk_get_rate(ptr noundef %23) #7
  %25 = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 4
  store i32 %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %20, %17, %8
  %27 = phi i32 [ %9, %8 ], [ %18, %17 ], [ 0, %20 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada375_wdt_clock_init(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_clk_get_by_name(ptr noundef %4, ptr noundef nonnull @.str.15) #7
  %6 = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 5
  store ptr %5, ptr %6, align 4
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @clk_prepare(ptr noundef %5) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = tail call i32 @clk_enable(ptr noundef %5) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %15

15:                                               ; preds = %14, %8
  %16 = phi i32 [ %12, %14 ], [ %9, %8 ]
  %17 = load ptr, ptr %6, align 4
  tail call void @clk_put(ptr noundef %17) #7
  br label %47

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void @atomic_io_modify(ptr noundef %20, i32 noundef 1024, i32 noundef 1024) #7
  %21 = load ptr, ptr %6, align 4
  %22 = tail call i32 @clk_get_rate(ptr noundef %21) #7
  %23 = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 4
  store i32 %22, ptr %23, align 4
  br label %47

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %26 = tail call ptr @clk_get(ptr noundef %25, ptr noundef null) #7
  store ptr %26, ptr %6, align 4
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = ptrtoint ptr %26 to i32
  br label %47

30:                                               ; preds = %24
  %31 = tail call i32 @clk_prepare(ptr noundef %26) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = tail call i32 @clk_enable(ptr noundef %26) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  tail call void @clk_unprepare(ptr noundef %26) #7
  br label %37

37:                                               ; preds = %36, %30
  %38 = phi i32 [ %34, %36 ], [ %31, %30 ]
  %39 = load ptr, ptr %6, align 4
  tail call void @clk_put(ptr noundef %39) #7
  br label %47

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void @atomic_io_modify(ptr noundef %42, i32 noundef 327680, i32 noundef 327680) #7
  %43 = load ptr, ptr %6, align 4
  %44 = tail call i32 @clk_get_rate(ptr noundef %43) #7
  %45 = lshr i32 %44, 5
  %46 = getelementptr inbounds %struct.orion_watchdog, ptr %1, i32 0, i32 4
  store i32 %45, ptr %46, align 4
  br label %47

47:                                               ; preds = %40, %37, %28, %18, %15
  %48 = phi i32 [ %29, %28 ], [ %38, %37 ], [ 0, %40 ], [ %16, %15 ], [ 0, %18 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada375_enabled(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.orion_watchdog, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %5 = getelementptr inbounds %struct.orion_watchdog, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.orion_watchdog_data, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %4
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.orion_watchdog, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.orion_watchdog_data, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.orion_watchdog, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr inbounds %struct.orion_watchdog_data, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %19
  %24 = icmp ne i32 %23, 0
  %25 = and i32 %16, %13
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %10, i1 %26, i1 false
  %28 = select i1 %27, i1 %24, i1 false
  %29 = zext i1 %28 to i32
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada375_start(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %4 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, %5
  %9 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %10, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %8) #7, !srcloc !10
  %15 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 512
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %21 = load i32, ptr %4, align 4
  %22 = load i32, ptr %6, align 4
  %23 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %22, %24
  %26 = mul i32 %25, %21
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr i8, ptr %27, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #7, !srcloc !10
  br label %29

29:                                               ; preds = %20, %1
  %30 = load ptr, ptr %9, align 4
  %31 = getelementptr i8, ptr %30, i32 4
  tail call void @atomic_io_modify(ptr noundef %31, i32 noundef -2147483648, i32 noundef 0) #7
  %32 = load ptr, ptr %11, align 4
  %33 = getelementptr inbounds %struct.orion_watchdog_data, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %15, align 4
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 7
  %38 = and i32 %37, 4
  %39 = or i32 %38, %34
  %40 = load ptr, ptr %9, align 4
  tail call void @atomic_io_modify(ptr noundef %40, i32 noundef %39, i32 noundef %39) #7
  %41 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  %44 = load ptr, ptr %11, align 4
  %45 = getelementptr inbounds %struct.orion_watchdog_data, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %48 = load ptr, ptr %41, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %47) #7, !srcloc !10
  %49 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %11, align 4
  %52 = getelementptr inbounds %struct.orion_watchdog_data, ptr %51, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  tail call void @atomic_io_modify(ptr noundef %50, i32 noundef %53, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada375_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.orion_watchdog_data, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  tail call void @atomic_io_modify(ptr noundef %5, i32 noundef %9, i32 noundef %9) #7
  %10 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !29
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.orion_watchdog_data, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %12, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %18 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #7, !srcloc !10
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr inbounds %struct.orion_watchdog_data, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %24, 7
  %26 = and i32 %25, 4
  %27 = or i32 %26, %21
  %28 = getelementptr inbounds %struct.orion_watchdog, ptr %3, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  tail call void @atomic_io_modify(ptr noundef %29, i32 noundef %27, i32 noundef 0) #7
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { cold noreturn nounwind }

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
!9 = !{i64 2151739880}
!10 = !{i64 3748594}
!11 = !{i64 2151740342}
!12 = !{i64 3749012}
!13 = !{i64 2151747327}
!14 = !{i64 2151745595}
!15 = !{i64 2151745936}
!16 = !{i64 2151743716}
!17 = !{i64 2151742553}
!18 = !{i64 2151743177}
!19 = !{i64 2151743356}
!20 = !{i64 2151744970}
!21 = !{i64 2151745149}
!22 = !{i64 2151746267}
!23 = !{i64 2151746583}
!24 = !{i64 2151746924}
!25 = !{i64 2151740814}
!26 = !{i64 2151741276}
!27 = !{i64 2151742014}
!28 = !{i64 2151742193}
!29 = !{i64 2151744256}
!30 = !{i64 2151744435}
