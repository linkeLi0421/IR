; ModuleID = '/llk/IR/drivers/watchdog/mtk_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/mtk_wdt.c"
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.mtk_wdt_data = type { i32 }
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
%struct.mtk_wdt_dev = type { %struct.watchdog_device, ptr, %struct.spinlock, %struct.reset_controller_dev, i8 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }

@__initcall__kmod_mtk_wdt__170_442_mtk_wdt_driver_init6 = internal global ptr @mtk_wdt_driver_init, section ".initcall6.init", align 4
@mtk_wdt_driver = internal global %struct.platform_driver { ptr @mtk_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_wdt_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_wdt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_mtk_wdt_driver_exit = internal global ptr @mtk_wdt_driver_exit, section ".exitcall.exit", align 4
@__param_str_timeout = internal constant [16 x i8] c"mtk_wdt.timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global i32 0, align 4
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype171 = internal constant [30 x i8] c"mtk_wdt.parmtype=timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout172 = internal constant [51 x i8] c"mtk_wdt.parm=timeout:Watchdog heartbeat in seconds\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [17 x i8] c"mtk_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global i8 0, align 1
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype173 = internal constant [31 x i8] c"mtk_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout174 = internal constant [74 x i8] c"mtk_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=0)\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [38 x i8] c"mtk_wdt.file=drivers/watchdog/mtk_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [20 x i8] c"mtk_wdt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author177 = internal constant [57 x i8] c"mtk_wdt.author=Matthias Brugger <matthias.bgg@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description178 = internal constant [51 x i8] c"mtk_wdt.description=Mediatek WatchDog Timer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version179 = internal constant [20 x i8] c"mtk_wdt.version=1.0\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"mtk_wdt\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"mtk-wdt\00", align 1
@mtk_wdt_dt_ids = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2712_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6589-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8192_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8195-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8195_data }, %struct.of_device_id zeroinitializer], align 4
@mtk_wdt_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @mtk_wdt_suspend, ptr @mtk_wdt_resume, ptr @mtk_wdt_suspend, ptr @mtk_wdt_resume, ptr @mtk_wdt_suspend, ptr @mtk_wdt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"wdt_bark\00", align 1
@mtk_wdt_pt_info = internal constant %struct.watchdog_info { i32 33664, i32 0, [32 x i8] c"mtk-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@mtk_wdt_info = internal constant %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"mtk-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@mtk_wdt_ops = internal constant %struct.watchdog_ops { ptr null, ptr @mtk_wdt_start, ptr @mtk_wdt_stop, ptr @mtk_wdt_ping, ptr null, ptr @mtk_wdt_set_timeout, ptr @mtk_wdt_set_pretimeout, ptr null, ptr @mtk_wdt_restart, ptr null }, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"Watchdog enabled (timeout=%d sec, nowayout=%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"mediatek,disable-extrst\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"\011watchdog%d: pretimeout event\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@toprgu_reset_ops = internal constant %struct.reset_control_ops { ptr @toprgu_reset, ptr @toprgu_reset_assert, ptr @toprgu_reset_deassert, ptr null }, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"couldn't register wdt reset controller: %d\0A\00", align 1
@mt2712_data = internal constant %struct.mtk_wdt_data { i32 11 }, align 4
@mt8183_data = internal constant %struct.mtk_wdt_data { i32 19 }, align 4
@mt8192_data = internal constant %struct.mtk_wdt_data { i32 23 }, align 4
@mt8195_data = internal constant %struct.mtk_wdt_data { i32 16 }, align 4
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description178, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__UNIQUE_ID_nowayout174, ptr @__UNIQUE_ID_nowayouttype173, ptr @__UNIQUE_ID_timeout172, ptr @__UNIQUE_ID_timeouttype171, ptr @__UNIQUE_ID_version179, ptr @__exitcall_mtk_wdt_driver_exit, ptr @__initcall__kmod_mtk_wdt__170_442_mtk_wdt_driver_init6, ptr @__modver_attr, ptr @__param_nowayout, ptr @__param_timeout, ptr @mtk_wdt_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mtk_wdt_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_wdt_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_wdt_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_wdt_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_wdt_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 164, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %94, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %6, align 8
  %7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %8 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %3, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = ptrtoint ptr %7 to i32
  br label %94

12:                                               ; preds = %5
  %13 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 0) #5
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %13, ptr noundef nonnull @mtk_wdt_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %94

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 3
  store ptr @mtk_wdt_pt_info, ptr %19, align 4
  %20 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 8
  store i32 15, ptr %20, align 4
  br label %25

21:                                               ; preds = %12
  %22 = icmp eq i32 %13, -517
  br i1 %22, label %94, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 3
  store ptr @mtk_wdt_info, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %18
  %26 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 4
  store ptr @mtk_wdt_ops, ptr %26, align 4
  %27 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 7
  store i32 31, ptr %27, align 4
  %28 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 12
  store i32 31000, ptr %28, align 4
  %29 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 9
  store i32 2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 1
  store ptr %2, ptr %30, align 4
  %31 = load i32, ptr @timeout, align 4
  %32 = tail call i32 @watchdog_init_timeout(ptr noundef nonnull %3, i32 noundef %31, ptr noundef %2) #5
  %33 = load i8, ptr @nowayout, align 1, !range !8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %36) #5
  br label %37

37:                                               ; preds = %35, %25
  tail call void @watchdog_set_restart_priority(ptr noundef nonnull %3, i32 noundef 128) #5
  %38 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 16
  store ptr %3, ptr %38, align 4
  %39 = load ptr, ptr %8, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %44) #5
  %45 = load i32, ptr %27, align 4
  %46 = load ptr, ptr %38, align 4
  %47 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 8
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %43
  %53 = lshr i32 %45, 1
  store i32 %53, ptr %49, align 4
  br label %54

54:                                               ; preds = %52, %43
  %55 = phi i32 [ %53, %52 ], [ 0, %43 ]
  %56 = sub i32 %45, %55
  %57 = shl i32 %56, 11
  %58 = or i32 %57, 8
  %59 = getelementptr i8, ptr %48, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %58) #5, !srcloc !12
  %60 = load ptr, ptr %38, align 4
  %61 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %62, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 6513) #5, !srcloc !12
  br label %64

64:                                               ; preds = %54, %37
  %65 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %65) #5
  %66 = tail call i32 @devm_watchdog_register_device(ptr noundef %2, ptr noundef nonnull %3) #5
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %94, !prof !13

68:                                               ; preds = %64
  %69 = load i32, ptr %27, align 4
  %70 = load i8, ptr @nowayout, align 1, !range !8
  %71 = zext i8 %70 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %69, i32 noundef %71) #6
  %72 = tail call ptr @of_device_get_match_data(ptr noundef %2) #5
  %73 = icmp eq ptr %72, null
  br i1 %73, label %87, label %74

74:                                               ; preds = %68
  %75 = load i32, ptr %72, align 4
  %76 = load ptr, ptr %6, align 8
  %77 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %76, i32 0, i32 2
  store i32 0, ptr %77, align 4
  %78 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %76, i32 0, i32 3
  %79 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %76, i32 0, i32 3, i32 1
  store ptr null, ptr %79, align 4
  %80 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %76, i32 0, i32 3, i32 8
  store i32 %75, ptr %80, align 4
  store ptr @toprgu_reset_ops, ptr %78, align 4
  %81 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %76, i32 0, i32 3, i32 5
  store ptr %82, ptr %83, align 4
  %84 = tail call i32 @devm_reset_controller_register(ptr noundef %2, ptr noundef %78) #5
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %74
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %84) #6
  br label %94

87:                                               ; preds = %74, %68
  %88 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %89 = load ptr, ptr %88, align 8
  %90 = tail call ptr @of_find_property(ptr noundef %89, ptr noundef nonnull @.str.6, ptr noundef null) #5
  %91 = icmp ne ptr %90, null
  %92 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %3, i32 0, i32 4
  %93 = zext i1 %91 to i8
  store i8 %93, ptr %92, align 4
  br label %94

94:                                               ; preds = %87, %86, %64, %21, %15, %10, %1
  %95 = phi i32 [ %11, %10 ], [ 0, %87 ], [ -12, %1 ], [ %16, %15 ], [ -517, %21 ], [ %66, %64 ], [ %84, %86 ]
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_wdt_isr(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load i32, ptr %1, align 4
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %3) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_wdt_start(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = lshr i32 %7, 1
  store i32 %12, ptr %8, align 4
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi i32 [ %12, %11 ], [ 0, %1 ]
  %15 = sub i32 %7, %14
  %16 = shl i32 %15, 11
  %17 = or i32 %16, 8
  %18 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #5, !srcloc !12
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 6513) #5, !srcloc !12
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %24 = load i32, ptr %8, align 4
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %23, -73
  %27 = select i1 %25, i32 0, i32 72
  %28 = or i32 %27, %26
  %29 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %3, i32 0, i32 4
  %30 = load i8, ptr %29, align 4, !range !8
  %31 = icmp eq i8 %30, 0
  %32 = and i32 %28, -570425350
  %33 = select i1 %31, i32 %28, i32 %32
  %34 = or i32 %33, 570425345
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %34) #5, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_wdt_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %7 = and i32 %6, -570425346
  %8 = or i32 %7, 570425344
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %8) #5, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_wdt_ping(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 6513) #5, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_wdt_set_timeout(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = lshr i32 %1, 1
  store i32 %12, ptr %8, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi i32 [ %12, %11 ], [ 0, %2 ]
  %15 = sub i32 %1, %14
  %16 = shl i32 %15, 11
  %17 = or i32 %16, 8
  %18 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #5, !srcloc !12
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 6513) #5, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_wdt_set_pretimeout(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %8 = icmp eq i32 %1, 0
  %9 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %8, label %18, label %12

12:                                               ; preds = %2
  br i1 %11, label %13, label %44

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 1
  store i32 %16, ptr %9, align 4
  %17 = or i32 %7, 72
  br label %21

18:                                               ; preds = %2
  br i1 %11, label %44, label %19

19:                                               ; preds = %18
  store i32 0, ptr %9, align 4
  %20 = and i32 %7, -73
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi i32 [ %20, %19 ], [ %17, %13 ]
  %23 = or i32 %22, 570425344
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %23) #5, !srcloc !12
  %24 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  %33 = lshr i32 %25, 1
  store i32 %33, ptr %29, align 4
  br label %34

34:                                               ; preds = %32, %21
  %35 = phi i32 [ %33, %32 ], [ 0, %21 ]
  %36 = sub i32 %25, %35
  %37 = shl i32 %36, 11
  %38 = or i32 %37, 8
  %39 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %38) #5, !srcloc !12
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 6513) #5, !srcloc !12
  br label %44

44:                                               ; preds = %34, %18, %12
  ret i32 0
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_wdt_restart(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #4 {
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 20
  br label %9

9:                                                ; preds = %9, %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 4617) #5, !srcloc !12
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #5
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #5
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #5
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #5
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #5
  br label %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @toprgu_reset(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %9 = shl nuw i32 1, %1
  %10 = or i32 %9, %8
  %11 = or i32 %10, -2013265920
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #5, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #5
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr i8, ptr %15, i32 24
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %18 = xor i32 %9, -1
  %19 = and i32 %17, %18
  %20 = or i32 %19, -2013265920
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr i8, ptr %21, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #5, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %14) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @toprgu_reset_assert(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %9 = shl nuw i32 1, %1
  %10 = or i32 %9, %8
  %11 = or i32 %10, -2013265920
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #5, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @toprgu_reset_deassert(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %9 = shl nuw i32 1, %1
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = or i32 %11, -2013265920
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr i8, ptr %13, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #5, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_wdt_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 18
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %14 = and i32 %13, -570425346
  %15 = or i32 %14, 570425344
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %15) #5, !srcloc !12
  br label %16

16:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_wdt_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 18
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @mtk_wdt_start(ptr noundef %3)
  %10 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mtk_wdt_dev, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 6513) #5, !srcloc !12
  br label %15

15:                                               ; preds = %8, %1
  ret i32 0
}

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
!9 = !{i64 2399865}
!10 = !{i64 2151724904}
!11 = !{i64 2149940540}
!12 = !{i64 2399447}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149939318}
!15 = !{i64 2151725344}
!16 = !{i64 2151723061}
!17 = !{i64 2151721251}
!18 = !{i64 2151721610}
