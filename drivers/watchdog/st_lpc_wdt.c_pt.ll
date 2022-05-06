; ModuleID = '/llk/IR/drivers/watchdog/st_lpc_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/st_lpc_wdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.st_wdog_syscfg = type { i32, i32, i32, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.st_wdog = type { ptr, ptr, ptr, ptr, ptr, i32, i8 }

@__initcall__kmod_st_lpc_wdt__162_303_st_wdog_driver_init6 = internal global ptr @st_wdog_driver_init, section ".initcall6.init", align 4
@st_wdog_driver = internal global %struct.platform_driver { ptr @st_wdog_probe, ptr @st_wdog_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_wdog_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_wdog_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_st_wdog_driver_exit = internal global ptr @st_wdog_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [51 x i8] c"st_lpc_wdt.author=David Paris <david.paris@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [46 x i8] c"st_lpc_wdt.description=ST LPC Watchdog Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [44 x i8] c"st_lpc_wdt.file=drivers/watchdog/st_lpc_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [23 x i8] c"st_lpc_wdt.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"st-lpc-wdt\00", align 1
@st_wdog_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-lpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih407_syscfg }, %struct.of_device_id zeroinitializer], align 4
@st_wdog_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @st_wdog_suspend, ptr @st_wdog_resume, ptr @st_wdog_suspend, ptr @st_wdog_resume, ptr @st_wdog_suspend, ptr @st_wdog_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"st,lpc-mode\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"An LPC mode must be provided\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Couldn't match device\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"No syscfg phandle specified\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Unable to request clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"st,warm_reset\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Unable to fetch clock rate\0A\00", align 1
@st_wdog_dev = internal global %struct.watchdog_device { i32 0, ptr null, ptr null, ptr @st_wdog_info, ptr @st_wdog_ops, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, i32 0, %struct.list_head zeroinitializer }, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"Unable to enable clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"LPC Watchdog driver registered, reset type is %s\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"warm\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"cold\00", align 1
@st_wdog_info = internal constant %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"ST LPC WDT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@st_wdog_ops = internal constant %struct.watchdog_ops { ptr null, ptr @st_wdog_start, ptr @st_wdog_stop, ptr @st_wdog_keepalive, ptr null, ptr @st_wdog_set_timeout, ptr null, ptr null, ptr null, ptr null }, align 4
@stih407_syscfg = internal global %struct.st_wdog_syscfg { i32 0, i32 0, i32 516, i32 524288 }, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"Unable to re-enable clock\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_st_wdog_driver_exit, ptr @__initcall__kmod_st_lpc_wdt__162_303_st_wdog_driver_init6, ptr @st_wdog_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @st_wdog_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_wdog_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @st_wdog_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @st_wdog_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_wdog_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %6 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #6
  br label %73

9:                                                ; preds = %1
  %10 = load i32, ptr %2, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %73

12:                                               ; preds = %9
  %13 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 28, i32 noundef 3520) #5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %73, label %15

15:                                               ; preds = %12
  %16 = call ptr @of_match_device(ptr noundef nonnull @st_wdog_match, ptr noundef %3) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #6
  br label %73

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.of_device_id, ptr %16, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.st_wdog, ptr %13, i32 0, i32 3
  store ptr %21, ptr %22, align 4
  %23 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = ptrtoint ptr %23 to i32
  br label %73

27:                                               ; preds = %19
  %28 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.4) #5
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #6
  %31 = ptrtoint ptr %28 to i32
  br label %73

32:                                               ; preds = %27
  %33 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #5
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #6
  %36 = ptrtoint ptr %33 to i32
  br label %73

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.st_wdog, ptr %13, i32 0, i32 1
  store ptr %3, ptr %38, align 4
  store ptr %23, ptr %13, align 4
  %39 = getelementptr inbounds %struct.st_wdog, ptr %13, i32 0, i32 4
  store ptr %33, ptr %39, align 4
  %40 = getelementptr inbounds %struct.st_wdog, ptr %13, i32 0, i32 2
  store ptr %28, ptr %40, align 4
  %41 = call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef null) #5
  %42 = icmp ne ptr %41, null
  %43 = getelementptr inbounds %struct.st_wdog, ptr %13, i32 0, i32 6
  %44 = zext i1 %42 to i8
  store i8 %44, ptr %43, align 4
  %45 = call i32 @clk_get_rate(ptr noundef %33) #5
  %46 = getelementptr inbounds %struct.st_wdog, ptr %13, i32 0, i32 5
  store i32 %45, ptr %46, align 4
  %47 = icmp eq i32 %45, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #6
  br label %73

49:                                               ; preds = %37
  %50 = udiv i32 -1, %45
  store i32 %50, ptr getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 10), align 4
  store ptr %3, ptr getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 1), align 4
  %51 = call i32 @clk_prepare(ptr noundef %33) #5
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = call i32 @clk_enable(ptr noundef %33) #5
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  call void @clk_unprepare(ptr noundef %33) #5
  br label %57

57:                                               ; preds = %56, %49
  %58 = phi i32 [ %54, %56 ], [ %51, %49 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #6
  br label %73

59:                                               ; preds = %53
  %60 = call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @st_clk_disable_unprepare, ptr noundef %33) #5
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  call void @clk_disable(ptr noundef %33) #5
  call void @clk_unprepare(ptr noundef %33) #5
  br label %73

63:                                               ; preds = %59
  store ptr %13, ptr getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 16), align 4
  %64 = call i32 @watchdog_init_timeout(ptr noundef nonnull @st_wdog_dev, i32 noundef 0, ptr noundef %3) #5
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = call i32 @devm_watchdog_register_device(ptr noundef %3, ptr noundef nonnull @st_wdog_dev) #5
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  call fastcc void @st_wdog_setup(ptr noundef nonnull %13, i1 noundef zeroext true)
  %70 = load i8, ptr %43, align 4, !range !9
  %71 = icmp eq i8 %70, 0
  %72 = select i1 %71, ptr @.str.12, ptr @.str.11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef nonnull %72) #6
  br label %73

73:                                               ; preds = %69, %66, %63, %62, %57, %48, %35, %30, %25, %18, %12, %9, %8
  %74 = phi i32 [ -22, %8 ], [ %26, %25 ], [ %31, %30 ], [ %36, %35 ], [ %58, %57 ], [ 0, %69 ], [ -22, %48 ], [ -19, %18 ], [ -19, %9 ], [ -12, %12 ], [ %60, %62 ], [ %64, %63 ], [ %67, %66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_wdog_remove(ptr nocapture noundef readnone %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 16), align 4
  %3 = getelementptr inbounds %struct.st_wdog, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.st_wdog, ptr %2, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.st_wdog_syscfg, ptr %4, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.st_wdog, ptr %2, i32 0, i32 6
  %13 = load i8, ptr %12, align 4, !range !9
  %14 = zext i8 %13 to i32
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %5, i32 noundef %11, i32 noundef %14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %16 = load ptr, ptr %3, align 4
  br label %17

17:                                               ; preds = %7, %1
  %18 = phi ptr [ %16, %7 ], [ %4, %1 ]
  %19 = getelementptr inbounds %struct.st_wdog, ptr %2, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.st_wdog_syscfg, ptr %18, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.st_wdog_syscfg, ptr %18, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @st_clk_disable_unprepare(ptr noundef %0) #2 {
  tail call void @clk_disable(ptr noundef %0) #5
  tail call void @clk_unprepare(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @st_wdog_setup(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.st_wdog, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.st_wdog, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.st_wdog_syscfg, ptr %4, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.st_wdog, ptr %0, i32 0, i32 6
  %13 = load i8, ptr %12, align 4, !range !9
  %14 = zext i8 %13 to i32
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %5, i32 noundef %11, i32 noundef %14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %16 = load ptr, ptr %3, align 4
  br label %17

17:                                               ; preds = %7, %2
  %18 = phi ptr [ %16, %7 ], [ %4, %2 ]
  %19 = getelementptr inbounds %struct.st_wdog, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.st_wdog_syscfg, ptr %18, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.st_wdog_syscfg, ptr %18, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = select i1 %1, i32 0, i32 %24
  %26 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_wdog_start(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1) #5, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_wdog_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #5, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_wdog_keepalive(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.st_wdog, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, %5
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #5, !srcloc !10
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1) #5, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_wdog_set_timeout(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.st_wdog, ptr %4, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, %1
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #5, !srcloc !10
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1) #5, !srcloc !10
  ret i32 0
}

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
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_wdog_suspend(ptr nocapture noundef readnone %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 16), align 4
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 18), align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #5, !srcloc !10
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.st_wdog, ptr %2, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.st_wdog, ptr %2, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.st_wdog_syscfg, ptr %11, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.st_wdog, ptr %2, i32 0, i32 6
  %20 = load i8, ptr %19, align 4, !range !9
  %21 = zext i8 %20 to i32
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %12, i32 noundef %18, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %23 = load ptr, ptr %10, align 4
  br label %24

24:                                               ; preds = %14, %9
  %25 = phi ptr [ %23, %14 ], [ %11, %9 ]
  %26 = getelementptr inbounds %struct.st_wdog, ptr %2, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.st_wdog_syscfg, ptr %25, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.st_wdog_syscfg, ptr %25, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %33 = getelementptr inbounds %struct.st_wdog, ptr %2, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  tail call void @clk_disable(ptr noundef %34) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_wdog_resume(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 16), align 4
  %3 = getelementptr inbounds %struct.st_wdog, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_enable(ptr noundef %4) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13) #6
  tail call void @watchdog_unregister_device(ptr noundef nonnull @st_wdog_dev) #5
  %8 = load ptr, ptr %3, align 4
  tail call void @clk_unprepare(ptr noundef %8) #5
  br label %48

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.st_wdog, ptr %2, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.st_wdog, ptr %2, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.st_wdog_syscfg, ptr %11, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.st_wdog, ptr %2, i32 0, i32 6
  %20 = load i8, ptr %19, align 4, !range !9
  %21 = zext i8 %20 to i32
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %12, i32 noundef %18, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %23 = load ptr, ptr %10, align 4
  br label %24

24:                                               ; preds = %14, %9
  %25 = phi ptr [ %23, %14 ], [ %11, %9 ]
  %26 = getelementptr inbounds %struct.st_wdog, ptr %2, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.st_wdog_syscfg, ptr %25, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.st_wdog_syscfg, ptr %25, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 18), align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %24
  %37 = load i32, ptr getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 7), align 4
  %38 = getelementptr inbounds %struct.st_wdog, ptr %2, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = mul i32 %39, %37
  %41 = load ptr, ptr %2, align 4
  %42 = getelementptr i8, ptr %41, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #5, !srcloc !10
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr i8, ptr %43, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 1) #5, !srcloc !10
  %45 = load ptr, ptr getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 16), align 4
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 1) #5, !srcloc !10
  br label %48

48:                                               ; preds = %36, %24, %7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{i64 1724104}
