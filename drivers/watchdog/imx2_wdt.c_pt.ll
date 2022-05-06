; ModuleID = '/llk/IR/drivers/watchdog/imx2_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/imx2_wdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.imx2_wdt_device = type { ptr, ptr, %struct.watchdog_device, i8, i8 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_nowayout = internal constant [18 x i8] c"imx2_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global i8 0, align 1
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype170 = internal constant [32 x i8] c"imx2_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout171 = internal constant [75 x i8] c"imx2_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=0)\00", section ".modinfo", align 1
@__param_str_timeout = internal constant [17 x i8] c"imx2_wdt.timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global i32 0, align 4
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype172 = internal constant [31 x i8] c"imx2_wdt.parmtype=timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout173 = internal constant [63 x i8] c"imx2_wdt.parm=timeout:Watchdog timeout in seconds (default=60)\00", section ".modinfo", align 1
@__initcall__kmod_imx2_wdt__176_423_imx2_wdt_driver_init6 = internal global ptr @imx2_wdt_driver_init, section ".initcall6.init", align 4
@imx2_wdt_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr @imx2_wdt_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx2_wdt_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx2_wdt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_imx2_wdt_driver_exit = internal global ptr @imx2_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author177 = internal constant [29 x i8] c"imx2_wdt.author=Wolfram Sang\00", section ".modinfo", align 1
@__UNIQUE_ID_description178 = internal constant [56 x i8] c"imx2_wdt.description=Watchdog driver for IMX2 and later\00", section ".modinfo", align 1
@__UNIQUE_ID_file179 = internal constant [40 x i8] c"imx2_wdt.file=drivers/watchdog/imx2_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license180 = internal constant [24 x i8] c"imx2_wdt.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias181 = internal constant [33 x i8] c"imx2_wdt.alias=platform:imx2-wdt\00", section ".modinfo", align 1
@imx2_wdt_regmap_config = internal constant %struct.regmap_config { ptr null, i32 16, i32 2, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str = private unnamed_addr constant [20 x i8] c"regmap init failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"can't get Watchdog clock\0A\00", align 1
@imx2_wdt_info = internal constant %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"imx2+ watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@imx2_wdt_ops = internal constant %struct.watchdog_ops { ptr null, ptr @imx2_wdt_start, ptr null, ptr @imx2_wdt_ping, ptr null, ptr @imx2_wdt_set_timeout, ptr @imx2_wdt_set_pretimeout, ptr null, ptr @imx2_wdt_restart, ptr null }, align 4
@imx2_wdt_pretimeout_info = internal constant %struct.watchdog_info { i32 33664, i32 0, [32 x i8] c"imx2+ watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"fsl,ext-reset-output\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"\011watchdog%d: pretimeout event\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"imx2-wdt\00", align 1
@imx2_wdt_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@imx2_wdt_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @imx2_wdt_suspend, ptr @imx2_wdt_resume, ptr @imx2_wdt_suspend, ptr @imx2_wdt_resume, ptr @imx2_wdt_suspend, ptr @imx2_wdt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Device shutdown: Expect reboot!\0A\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias181, ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description178, ptr @__UNIQUE_ID_file179, ptr @__UNIQUE_ID_license180, ptr @__UNIQUE_ID_nowayout171, ptr @__UNIQUE_ID_nowayouttype170, ptr @__UNIQUE_ID_timeout173, ptr @__UNIQUE_ID_timeouttype172, ptr @__exitcall_imx2_wdt_driver_exit, ptr @__initcall__kmod_imx2_wdt__176_423_imx2_wdt_driver_init6, ptr @__param_nowayout, ptr @__param_timeout, ptr @imx2_wdt_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx2_wdt_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @imx2_wdt_driver, ptr noundef nonnull @imx2_wdt_probe, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx2_wdt_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx2_wdt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx2_wdt_probe(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 120, i32 noundef 3520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %99, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = ptrtoint ptr %8 to i32
  br label %99

12:                                               ; preds = %7
  %13 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %4, ptr noundef null, ptr noundef %8, ptr noundef nonnull @imx2_wdt_regmap_config, ptr noundef null, ptr noundef null) #6
  %14 = getelementptr inbounds %struct.imx2_wdt_device, ptr %5, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str) #7
  %17 = ptrtoint ptr %13 to i32
  br label %99

18:                                               ; preds = %12
  %19 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #6
  store ptr %19, ptr %5, align 4
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #7
  %22 = ptrtoint ptr %19 to i32
  br label %99

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.imx2_wdt_device, ptr %5, i32 0, i32 2
  %25 = getelementptr inbounds %struct.imx2_wdt_device, ptr %5, i32 0, i32 2, i32 3
  store ptr @imx2_wdt_info, ptr %25, align 4
  %26 = getelementptr inbounds %struct.imx2_wdt_device, ptr %5, i32 0, i32 2, i32 4
  store ptr @imx2_wdt_ops, ptr %26, align 4
  %27 = getelementptr inbounds %struct.imx2_wdt_device, ptr %5, i32 0, i32 2, i32 9
  store i32 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.imx2_wdt_device, ptr %5, i32 0, i32 2, i32 7
  store i32 60, ptr %28, align 4
  %29 = getelementptr inbounds %struct.imx2_wdt_device, ptr %5, i32 0, i32 2, i32 12
  store i32 128000, ptr %29, align 4
  %30 = getelementptr inbounds %struct.imx2_wdt_device, ptr %5, i32 0, i32 2, i32 1
  store ptr %4, ptr %30, align 4
  %31 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load ptr, ptr %4, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi ptr [ %38, %37 ], [ %35, %33 ]
  %41 = tail call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %31, ptr noundef nonnull @imx2_wdt_isr, ptr noundef null, i32 noundef 0, ptr noundef %40, ptr noundef %24) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store ptr @imx2_wdt_pretimeout_info, ptr %25, align 4
  br label %44

44:                                               ; preds = %43, %39, %23
  %45 = load ptr, ptr %5, align 4
  %46 = tail call i32 @clk_prepare(ptr noundef %45) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %99

48:                                               ; preds = %44
  %49 = tail call i32 @clk_enable(ptr noundef %45) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void @clk_unprepare(ptr noundef %45) #6
  br label %99

52:                                               ; preds = %48
  %53 = load ptr, ptr %5, align 4
  %54 = tail call i32 @devm_add_action(ptr noundef %4, ptr noundef nonnull @imx2_wdt_action, ptr noundef %53) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @clk_disable(ptr noundef %53) #6
  tail call void @clk_unprepare(ptr noundef %53) #6
  br label %99

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.imx2_wdt_device, ptr %5, i32 0, i32 4
  store i8 1, ptr %58, align 1
  %59 = load ptr, ptr %14, align 4
  %60 = call i32 @regmap_read(ptr noundef %59, i32 noundef 4, ptr noundef nonnull %3) #6
  %61 = load i32, ptr %3, align 4
  %62 = shl i32 %61, 4
  %63 = and i32 %62, 32
  %64 = getelementptr inbounds %struct.imx2_wdt_device, ptr %5, i32 0, i32 2, i32 6
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %66 = load ptr, ptr %65, align 8
  %67 = call ptr @of_find_property(ptr noundef %66, ptr noundef nonnull @.str.2, ptr noundef null) #6
  %68 = icmp ne ptr %67, null
  %69 = getelementptr inbounds %struct.imx2_wdt_device, ptr %5, i32 0, i32 3
  %70 = zext i1 %68 to i8
  store i8 %70, ptr %69, align 4
  %71 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %24, ptr %71, align 8
  %72 = getelementptr inbounds %struct.imx2_wdt_device, ptr %5, i32 0, i32 2, i32 16
  store ptr %5, ptr %72, align 4
  %73 = load i8, ptr @nowayout, align 1, !range !9
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %57
  %76 = getelementptr inbounds %struct.imx2_wdt_device, ptr %5, i32 0, i32 2, i32 18
  call void @_set_bit(i32 noundef 1, ptr noundef %76) #6
  br label %77

77:                                               ; preds = %75, %57
  call void @watchdog_set_restart_priority(ptr noundef %24, i32 noundef 128) #6
  %78 = load i32, ptr @timeout, align 4
  %79 = call i32 @watchdog_init_timeout(ptr noundef %24, i32 noundef %78, ptr noundef %4) #6
  %80 = getelementptr inbounds %struct.imx2_wdt_device, ptr %5, i32 0, i32 2, i32 18
  call void @_set_bit(i32 noundef 5, ptr noundef %80) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %81 = load ptr, ptr %14, align 4
  %82 = call i32 @regmap_read(ptr noundef %81, i32 noundef 0, ptr noundef nonnull %2) #6
  %83 = load i32, ptr %2, align 4
  %84 = and i32 %83, 4
  %85 = icmp eq i32 %84, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br i1 %85, label %95, label %86

86:                                               ; preds = %77
  %87 = load i32, ptr %28, align 4
  %88 = call i32 @llvm.umin.i32(i32 %87, i32 128) #6
  %89 = load ptr, ptr %72, align 4
  %90 = getelementptr inbounds %struct.imx2_wdt_device, ptr %89, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = shl nuw nsw i32 %88, 9
  %93 = add nsw i32 %92, -256
  %94 = call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef 0, i32 noundef 65280, i32 noundef %93, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  store i32 %87, ptr %28, align 4
  call void @_set_bit(i32 noundef 3, ptr noundef %80) #6
  br label %95

95:                                               ; preds = %86, %77
  %96 = load ptr, ptr %14, align 4
  %97 = call i32 @regmap_write(ptr noundef %96, i32 noundef 8, i32 noundef 0) #6
  %98 = call i32 @devm_watchdog_register_device(ptr noundef %4, ptr noundef %24) #6
  br label %99

99:                                               ; preds = %95, %56, %51, %44, %21, %16, %10, %1
  %100 = phi i32 [ %11, %10 ], [ %17, %16 ], [ %22, %21 ], [ %98, %95 ], [ -12, %1 ], [ %54, %56 ], [ %49, %51 ], [ %46, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %100
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx2_wdt_isr(i32 noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.imx2_wdt_device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 6, i32 noundef 16384, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %8 = load i32, ptr %1, align 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %8) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx2_wdt_action(ptr noundef %0) #4 {
  tail call void @clk_disable(ptr noundef %0) #6
  tail call void @clk_unprepare(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx2_wdt_set_timeout(ptr nocapture noundef %0, i32 noundef %1) #4 {
  %3 = tail call i32 @llvm.umin.i32(i32 %1, i32 128)
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.imx2_wdt_device, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = shl nuw nsw i32 %3, 9
  %9 = add nsw i32 %8, -256
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 65280, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %11 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %1, ptr %11, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx2_wdt_start(ptr noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.imx2_wdt_device, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %3) #6
  %9 = load i32, ptr %3, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = call i32 @llvm.umin.i32(i32 %14, i32 128) #6
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.imx2_wdt_device, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = shl nuw nsw i32 %15, 9
  %20 = add nsw i32 %19, -256
  %21 = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 0, i32 noundef 65280, i32 noundef %20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  store i32 %14, ptr %13, align 4
  br label %47

22:                                               ; preds = %1
  %23 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %24 = getelementptr inbounds %struct.imx2_wdt_device, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @regmap_read(ptr noundef %25, i32 noundef 0, ptr noundef nonnull %2) #6
  %27 = load i32, ptr %2, align 4
  %28 = getelementptr inbounds %struct.imx2_wdt_device, ptr %23, i32 0, i32 3
  %29 = load i8, ptr %28, align 4, !range !9
  %30 = icmp eq i8 %29, 0
  %31 = and i32 %27, -65294
  %32 = or i32 %31, 1
  %33 = or i32 %27, 9
  %34 = select i1 %30, i32 %32, i32 %33
  %35 = and i32 %34, -65285
  %36 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = shl i32 %37, 9
  %39 = add i32 %38, -256
  %40 = or i32 %39, %35
  store i32 %40, ptr %2, align 4
  %41 = load ptr, ptr %24, align 4
  %42 = call i32 @regmap_write(ptr noundef %41, i32 noundef 0, i32 noundef %40) #6
  %43 = load i32, ptr %2, align 4
  %44 = or i32 %43, 4
  store i32 %44, ptr %2, align 4
  %45 = load ptr, ptr %24, align 4
  %46 = call i32 @regmap_write(ptr noundef %45, i32 noundef 0, i32 noundef %44) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %47

47:                                               ; preds = %22, %12
  %48 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  call void @_set_bit(i32 noundef 3, ptr noundef %48) #6
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr inbounds %struct.imx2_wdt_device, ptr %49, i32 0, i32 4
  %51 = load i8, ptr %50, align 1, !range !9
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.imx2_wdt_device, ptr %49, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 @regmap_write(ptr noundef %55, i32 noundef 2, i32 noundef 21845) #6
  %57 = load ptr, ptr %54, align 4
  %58 = call i32 @regmap_write(ptr noundef %57, i32 noundef 2, i32 noundef 43690) #6
  br label %59

59:                                               ; preds = %53, %47
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx2_wdt_ping(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.imx2_wdt_device, ptr %3, i32 0, i32 4
  %5 = load i8, ptr %4, align 1, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.imx2_wdt_device, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 2, i32 noundef 21845) #6
  %11 = load ptr, ptr %8, align 4
  %12 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 2, i32 noundef 43690) #6
  br label %13

13:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx2_wdt_set_pretimeout(ptr nocapture noundef %0, i32 noundef %1) #4 {
  %3 = icmp ugt i32 %1, 127
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 8
  store i32 %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.imx2_wdt_device, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = shl nuw nsw i32 %1, 1
  %11 = or i32 %10, 32768
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 6, i32 noundef 33023, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx2_wdt_restart(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #4 {
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.imx2_wdt_device, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, i32 36, i32 20
  %10 = getelementptr inbounds %struct.imx2_wdt_device, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 0, i32 noundef %9) #6
  %13 = load ptr, ptr %10, align 4
  %14 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 0, i32 noundef %9) #6
  %15 = load ptr, ptr %10, align 4
  %16 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 0, i32 noundef %9) #6
  br label %17

17:                                               ; preds = %17, %3
  %18 = phi i32 [ 500, %3 ], [ %19, %17 ]
  %19 = add nsw i32 %18, -1
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #6
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %22, label %17

22:                                               ; preds = %17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx2_wdt_shutdown(ptr noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.imx2_wdt_device, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %2) #6
  %10 = load i32, ptr %2, align 4
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br i1 %12, label %31, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.imx2_wdt_device, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 0, i32 noundef 65280, i32 noundef 65280, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %18 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 7
  store i32 128, ptr %18, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.imx2_wdt_device, ptr %19, i32 0, i32 4
  %21 = load i8, ptr %20, align 1, !range !9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.imx2_wdt_device, ptr %19, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @regmap_write(ptr noundef %25, i32 noundef 2, i32 noundef 21845) #6
  %27 = load ptr, ptr %24, align 4
  %28 = call i32 @regmap_write(ptr noundef %27, i32 noundef 2, i32 noundef 43690) #6
  br label %29

29:                                               ; preds = %23, %13
  %30 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %30, ptr noundef nonnull @.str.5) #7
  br label %31

31:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx2_wdt_suspend(ptr nocapture noundef readonly %0) #4 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.imx2_wdt_device, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %2) #6
  %10 = load i32, ptr %2, align 4
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br i1 %12, label %28, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.imx2_wdt_device, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 0, i32 noundef 65280, i32 noundef 65280, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.imx2_wdt_device, ptr %18, i32 0, i32 4
  %20 = load i8, ptr %19, align 1, !range !9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.imx2_wdt_device, ptr %18, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @regmap_write(ptr noundef %24, i32 noundef 2, i32 noundef 21845) #6
  %26 = load ptr, ptr %23, align 4
  %27 = call i32 @regmap_write(ptr noundef %26, i32 noundef 2, i32 noundef 43690) #6
  br label %28

28:                                               ; preds = %22, %13, %1
  %29 = load ptr, ptr %6, align 4
  call void @clk_disable(ptr noundef %29) #6
  call void @clk_unprepare(ptr noundef %29) #6
  %30 = getelementptr inbounds %struct.imx2_wdt_device, ptr %6, i32 0, i32 4
  store i8 0, ptr %30, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx2_wdt_resume(ptr nocapture noundef readonly %0) #4 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.watchdog_device, ptr %6, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_prepare(ptr noundef %9) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %81

12:                                               ; preds = %1
  %13 = tail call i32 @clk_enable(ptr noundef %9) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %81

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.imx2_wdt_device, ptr %8, i32 0, i32 4
  store i8 1, ptr %17, align 1
  %18 = getelementptr inbounds %struct.watchdog_device, ptr %6, i32 0, i32 18
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %54, label %22

22:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %23 = getelementptr inbounds %struct.imx2_wdt_device, ptr %8, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @regmap_read(ptr noundef %24, i32 noundef 0, ptr noundef nonnull %4) #6
  %26 = load i32, ptr %4, align 4
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br i1 %28, label %29, label %54

29:                                               ; preds = %22
  %30 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %31 = getelementptr inbounds %struct.imx2_wdt_device, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 @regmap_read(ptr noundef %32, i32 noundef 0, ptr noundef nonnull %3) #6
  %34 = load i32, ptr %3, align 4
  %35 = getelementptr inbounds %struct.imx2_wdt_device, ptr %30, i32 0, i32 3
  %36 = load i8, ptr %35, align 4, !range !9
  %37 = icmp eq i8 %36, 0
  %38 = and i32 %34, -65294
  %39 = or i32 %38, 1
  %40 = or i32 %34, 9
  %41 = select i1 %37, i32 %39, i32 %40
  %42 = and i32 %41, -65285
  %43 = getelementptr inbounds %struct.watchdog_device, ptr %6, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = shl i32 %44, 9
  %46 = add i32 %45, -256
  %47 = or i32 %46, %42
  store i32 %47, ptr %3, align 4
  %48 = load ptr, ptr %31, align 4
  %49 = call i32 @regmap_write(ptr noundef %48, i32 noundef 0, i32 noundef %47) #6
  %50 = load i32, ptr %3, align 4
  %51 = or i32 %50, 4
  store i32 %51, ptr %3, align 4
  %52 = load ptr, ptr %31, align 4
  %53 = call i32 @regmap_write(ptr noundef %52, i32 noundef 0, i32 noundef %51) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %54

54:                                               ; preds = %29, %22, %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %55 = getelementptr inbounds %struct.imx2_wdt_device, ptr %8, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = call i32 @regmap_read(ptr noundef %56, i32 noundef 0, ptr noundef nonnull %2) #6
  %58 = load i32, ptr %2, align 4
  %59 = and i32 %58, 4
  %60 = icmp eq i32 %59, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br i1 %60, label %81, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.watchdog_device, ptr %6, i32 0, i32 7
  %63 = load i32, ptr %62, align 4
  %64 = call i32 @llvm.umin.i32(i32 %63, i32 128) #6
  %65 = load ptr, ptr %7, align 4
  %66 = getelementptr inbounds %struct.imx2_wdt_device, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = shl nuw nsw i32 %64, 9
  %69 = add nsw i32 %68, -256
  %70 = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 0, i32 noundef 65280, i32 noundef %69, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  store i32 %63, ptr %62, align 4
  %71 = load ptr, ptr %7, align 4
  %72 = getelementptr inbounds %struct.imx2_wdt_device, ptr %71, i32 0, i32 4
  %73 = load i8, ptr %72, align 1, !range !9
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %61
  %76 = getelementptr inbounds %struct.imx2_wdt_device, ptr %71, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = call i32 @regmap_write(ptr noundef %77, i32 noundef 2, i32 noundef 21845) #6
  %79 = load ptr, ptr %76, align 4
  %80 = call i32 @regmap_write(ptr noundef %79, i32 noundef 2, i32 noundef 43690) #6
  br label %81

81:                                               ; preds = %75, %61, %54, %15, %1
  %82 = phi i32 [ 0, %54 ], [ 0, %61 ], [ 0, %75 ], [ %13, %15 ], [ %10, %1 ]
  ret i32 %82
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i8 0, i8 2}
