; ModuleID = '/llk/IR/drivers/watchdog/at91sam9_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/at91sam9_wdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.at91wdt = type { %struct.watchdog_device, ptr, i32, %struct.timer_list, i32, i32, i32, i8, i32, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__param_str_heartbeat = internal constant [23 x i8] c"at91sam9_wdt.heartbeat\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@heartbeat = internal global i32 0, align 4
@__param_heartbeat = internal constant %struct.kernel_param { ptr @__param_str_heartbeat, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @heartbeat } }, section "__param", align 4
@__UNIQUE_ID_heartbeattype174 = internal constant [36 x i8] c"at91sam9_wdt.parmtype=heartbeat:int\00", section ".modinfo", align 1
@__UNIQUE_ID_heartbeat175 = internal constant [75 x i8] c"at91sam9_wdt.parm=heartbeat:Watchdog heartbeats in seconds. (default = 15)\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [22 x i8] c"at91sam9_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global i8 0, align 1
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype176 = internal constant [36 x i8] c"at91sam9_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout177 = internal constant [79 x i8] c"at91sam9_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=0)\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [60 x i8] c"\014at91sam9_wdt: I quit now, hardware will probably reboot!\0A\00", align 1
@__initcall__kmod_at91sam9_wdt__178_414_at91wdt_driver_init6 = internal global ptr @at91wdt_driver_init, section ".initcall6.init", align 4
@at91wdt_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.20, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_wdt_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_at91wdt_driver_exit = internal global ptr @at91wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author179 = internal constant [67 x i8] c"at91sam9_wdt.author=Renaud CERRATO <r.cerrato@til-technologies.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description180 = internal constant [72 x i8] c"at91sam9_wdt.description=Watchdog driver for Atmel AT91SAM9x processors\00", section ".modinfo", align 1
@__UNIQUE_ID_file181 = internal constant [48 x i8] c"at91sam9_wdt.file=drivers/watchdog/at91sam9_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license182 = internal constant [25 x i8] c"at91sam9_wdt.license=GPL\00", section ".modinfo", align 1
@at91_wdt_info = internal constant %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"AT91SAM9 Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@at91_wdt_ops = internal constant %struct.watchdog_ops { ptr null, ptr @at91_wdt_start, ptr @at91_wdt_stop, ptr null, ptr null, ptr @at91_wdt_set_timeout, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not enable slow clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"\016at91sam9_wdt: enabled (heartbeat=%d sec, nowayout=%d)\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to get IRQ from DT\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"atmel,max-heartbeat-sec\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"atmel,min-heartbeat-sec\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"atmel,watchdog-type\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"software\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"atmel,reset-type\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"atmel,disable\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"atmel,idle-halt\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"atmel,dbg-halt\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"watchdog is disabled\0A\00", align 1
@.str.14 = private unnamed_addr constant [62 x i8] c"heartbeat is too small for the system to handle it correctly\0A\00", align 1
@.str.15 = private unnamed_addr constant [90 x i8] c"min heartbeat and max heartbeat might be too close for the system to handle it correctly\0A\00", align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"watchdog already configured differently (mr = %x expecting %x)\0A\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"\012at91sam9_wdt: at91sam9 WDT software reset\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"\012at91sam9_wdt: Reboot didn't ?????\0A\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"\012at91sam9_wdt: I will reset your machine !\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"at91_wdt\00", align 1
@at91_wdt_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author179, ptr @__UNIQUE_ID_description180, ptr @__UNIQUE_ID_file181, ptr @__UNIQUE_ID_heartbeat175, ptr @__UNIQUE_ID_heartbeattype174, ptr @__UNIQUE_ID_license182, ptr @__UNIQUE_ID_nowayout177, ptr @__UNIQUE_ID_nowayouttype176, ptr @__exitcall_at91wdt_driver_exit, ptr @__initcall__kmod_at91sam9_wdt__178_414_at91wdt_driver_init6, ptr @__param_heartbeat, ptr @__param_nowayout, ptr @at91wdt_driver_exit, ptr @at91wdt_remove], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at91wdt_remove(ptr nocapture noundef readonly %0) #0 section ".exit.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @watchdog_unregister_device(ptr noundef %3) #8
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  %5 = getelementptr inbounds %struct.at91wdt, ptr %3, i32 0, i32 3
  %6 = tail call i32 @del_timer(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.at91wdt, ptr %3, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %8) #8
  tail call void @clk_unprepare(ptr noundef %8) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at91wdt_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @at91wdt_driver, ptr noundef nonnull @at91wdt_probe, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @at91wdt_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91wdt_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at91wdt_probe(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 160, i32 noundef 3520) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %239, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.at91wdt, ptr %6, i32 0, i32 4
  store i32 1073684992, ptr %9, align 4
  %10 = getelementptr inbounds %struct.at91wdt, ptr %6, i32 0, i32 5
  store i32 1073741823, ptr %10, align 4
  %11 = load i8, ptr @nowayout, align 1, !range !8
  %12 = getelementptr inbounds %struct.at91wdt, ptr %6, i32 0, i32 7
  store i8 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.watchdog_device, ptr %6, i32 0, i32 1
  store ptr %5, ptr %13, align 4
  %14 = getelementptr inbounds %struct.watchdog_device, ptr %6, i32 0, i32 3
  store ptr @at91_wdt_info, ptr %14, align 4
  %15 = getelementptr inbounds %struct.watchdog_device, ptr %6, i32 0, i32 4
  store ptr @at91_wdt_ops, ptr %15, align 4
  %16 = getelementptr inbounds %struct.watchdog_device, ptr %6, i32 0, i32 7
  store i32 15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.watchdog_device, ptr %6, i32 0, i32 9
  store i32 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.watchdog_device, ptr %6, i32 0, i32 10
  store i32 65535, ptr %18, align 4
  %19 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %20 = getelementptr inbounds %struct.at91wdt, ptr %6, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %8
  %23 = ptrtoint ptr %19 to i32
  br label %239

24:                                               ; preds = %8
  %25 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef null) #8
  %26 = getelementptr inbounds %struct.at91wdt, ptr %6, i32 0, i32 9
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = ptrtoint ptr %25 to i32
  br label %239

30:                                               ; preds = %24
  %31 = tail call i32 @clk_prepare(ptr noundef %25) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = tail call i32 @clk_enable(ptr noundef %25) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  tail call void @clk_unprepare(ptr noundef %25) #8
  br label %37

37:                                               ; preds = %36, %30
  %38 = phi i32 [ %34, %36 ], [ %31, %30 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #9
  br label %239

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %128, label %43

43:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 16, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !9
  %44 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %41, i32 noundef 0) #8
  %45 = getelementptr inbounds %struct.at91wdt, ptr %6, i32 0, i32 8
  store i32 %44, ptr %45, align 4
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.3) #9
  br label %49

49:                                               ; preds = %47, %43
  %50 = call i32 @of_property_read_u32_index(ptr noundef nonnull %41, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef nonnull %3) #8
  %51 = icmp eq i32 %50, 0
  %52 = load i32, ptr %3, align 4
  br i1 %51, label %53, label %69

53:                                               ; preds = %49
  %54 = add i32 %52, -17
  %55 = icmp ult i32 %54, -16
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 16, ptr %3, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = call i32 @of_property_read_u32_index(ptr noundef nonnull %41, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef nonnull %2) #8
  %59 = icmp eq i32 %58, 0
  %60 = load i32, ptr %2, align 4
  %61 = load i32, ptr %3, align 4
  %62 = icmp ult i32 %60, %61
  %63 = add i32 %61, -1
  %64 = select i1 %62, i32 %60, i32 %63
  %65 = select i1 %59, i32 %64, i32 %60
  %66 = icmp eq i32 %65, 0
  %67 = shl i32 %65, 8
  %68 = add i32 %67, -1
  br i1 %66, label %69, label %71

69:                                               ; preds = %57, %49
  %70 = phi i32 [ %61, %57 ], [ %52, %49 ]
  br label %71

71:                                               ; preds = %69, %57
  %72 = phi i32 [ %70, %69 ], [ %61, %57 ]
  %73 = phi i32 [ 0, %69 ], [ %68, %57 ]
  store i32 %73, ptr %2, align 4
  %74 = icmp eq i32 %72, 0
  %75 = shl i32 %72, 8
  %76 = add i32 %75, -1
  %77 = select i1 %74, i32 0, i32 %76
  store i32 %77, ptr %3, align 4
  store i32 1073741823, ptr %10, align 4
  store i32 0, ptr %9, align 4
  %78 = call i32 @of_property_read_string(ptr noundef nonnull %41, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %71
  %81 = load ptr, ptr %4, align 4
  %82 = call i32 @strcmp(ptr noundef %81, ptr noundef nonnull dereferenceable(9) @.str.7) #8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32, ptr %9, align 4
  %86 = or i32 %85, 4096
  store i32 %86, ptr %9, align 4
  %87 = load i32, ptr %10, align 4
  %88 = and i32 %87, -16385
  store i32 %88, ptr %10, align 4
  br label %92

89:                                               ; preds = %80, %71
  %90 = load i32, ptr %9, align 4
  %91 = or i32 %90, 8192
  store i32 %91, ptr %9, align 4
  br label %92

92:                                               ; preds = %89, %84
  %93 = call i32 @of_property_read_string(ptr noundef nonnull %41, ptr noundef nonnull @.str.8, ptr noundef nonnull %4) #8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load ptr, ptr %4, align 4
  %97 = call i32 @strcmp(ptr noundef %96, ptr noundef nonnull dereferenceable(5) @.str.9) #8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, ptr %9, align 4
  %101 = or i32 %100, 16384
  store i32 %101, ptr %9, align 4
  br label %102

102:                                              ; preds = %99, %95, %92
  %103 = call ptr @of_find_property(ptr noundef nonnull %41, ptr noundef nonnull @.str.10, ptr noundef null) #8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %9, align 4
  %107 = or i32 %106, 32768
  store i32 %107, ptr %9, align 4
  %108 = load i32, ptr %10, align 4
  %109 = and i32 %108, 32768
  store i32 %109, ptr %10, align 4
  br label %110

110:                                              ; preds = %105, %102
  %111 = call ptr @of_find_property(ptr noundef nonnull %41, ptr noundef nonnull @.str.11, ptr noundef null) #8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %9, align 4
  %115 = or i32 %114, 536870912
  store i32 %115, ptr %9, align 4
  br label %116

116:                                              ; preds = %113, %110
  %117 = call ptr @of_find_property(ptr noundef nonnull %41, ptr noundef nonnull @.str.12, ptr noundef null) #8
  %118 = icmp eq ptr %117, null
  %119 = load i32, ptr %9, align 4
  %120 = or i32 %119, 268435456
  %121 = select i1 %118, i32 %119, i32 %120
  %122 = load i32, ptr %3, align 4
  %123 = load i32, ptr %2, align 4
  %124 = sub i32 %122, %123
  %125 = shl i32 %124, 16
  %126 = or i32 %121, %122
  %127 = or i32 %126, %125
  store i32 %127, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %128

128:                                              ; preds = %116, %39
  %129 = load i32, ptr %10, align 4
  %130 = load ptr, ptr %20, align 4
  %131 = getelementptr i8, ptr %130, i32 4
  %132 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #8, !srcloc !10
  %133 = load i32, ptr %9, align 4
  %134 = xor i32 %133, %132
  %135 = and i32 %134, %129
  %136 = icmp ne i32 %135, 0
  %137 = icmp eq i32 %132, 1073688575
  %138 = select i1 %136, i1 %137, i1 false
  br i1 %138, label %139, label %145

139:                                              ; preds = %128
  %140 = load ptr, ptr %20, align 4
  %141 = getelementptr i8, ptr %140, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %133) #8, !srcloc !11
  %142 = load ptr, ptr %20, align 4
  %143 = getelementptr i8, ptr %142, i32 4
  %144 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #8, !srcloc !10
  br label %145

145:                                              ; preds = %139, %128
  %146 = phi i32 [ %144, %139 ], [ %132, %128 ]
  %147 = and i32 %146, 32768
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %145
  %150 = load i32, ptr %9, align 4
  %151 = and i32 %150, 32768
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = load i32, ptr %16, align 4
  br label %230

155:                                              ; preds = %149
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.13) #9
  br label %236

156:                                              ; preds = %145
  %157 = and i32 %146, 4095
  %158 = lshr i32 %146, 16
  %159 = and i32 %158, 4095
  %160 = icmp ugt i32 %157, %159
  %161 = sub nsw i32 %157, %159
  %162 = mul nsw i32 %161, 100
  %163 = add nsw i32 %162, 355
  %164 = lshr i32 %163, 8
  %165 = select i1 %160, i32 %164, i32 1
  %166 = mul nuw nsw i32 %157, 100
  %167 = add nuw nsw i32 %166, 100
  %168 = lshr i32 %167, 8
  %169 = icmp ult i32 %166, 156
  br i1 %169, label %170, label %171

170:                                              ; preds = %156
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14) #9
  br label %236

171:                                              ; preds = %156
  %172 = lshr i32 %167, 10
  %173 = icmp ult i32 %172, %165
  br i1 %173, label %176, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.at91wdt, ptr %6, i32 0, i32 6
  store i32 %172, ptr %175, align 4
  br label %182

176:                                              ; preds = %171
  %177 = lshr i32 %167, 9
  %178 = icmp ult i32 %177, %165
  %179 = getelementptr inbounds %struct.at91wdt, ptr %6, i32 0, i32 6
  br i1 %178, label %181, label %180

180:                                              ; preds = %176
  store i32 %177, ptr %179, align 4
  br label %182

181:                                              ; preds = %176
  store i32 %165, ptr %179, align 4
  br label %182

182:                                              ; preds = %181, %180, %174
  %183 = add nuw nsw i32 %165, 4
  %184 = icmp ult i32 %168, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.15) #9
  br label %186

186:                                              ; preds = %185, %182
  %187 = and i32 %146, 4096
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %197, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.at91wdt, ptr %6, i32 0, i32 8
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = load ptr, ptr %0, align 8
  %195 = call i32 @request_threaded_irq(i32 noundef %191, ptr noundef nonnull @wdt_interrupt, ptr noundef null, i32 noundef 20608, ptr noundef %194, ptr noundef nonnull %6) #8
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %236

197:                                              ; preds = %193, %189, %186
  %198 = load i32, ptr %10, align 4
  %199 = and i32 %198, %146
  %200 = load i32, ptr %9, align 4
  %201 = and i32 %200, %198
  %202 = icmp eq i32 %199, %201
  br i1 %202, label %204, label %203

203:                                              ; preds = %197
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.16, i32 noundef %199, i32 noundef %201) #9
  br label %204

204:                                              ; preds = %203, %197
  %205 = getelementptr inbounds %struct.at91wdt, ptr %6, i32 0, i32 3
  call void @init_timer_key(ptr noundef %205, ptr noundef nonnull @at91_ping, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  %206 = load volatile i32, ptr @jiffies, align 64
  %207 = add i32 %206, %165
  %208 = call i32 @mod_timer(ptr noundef %205, i32 noundef %207) #8
  %209 = call i32 @watchdog_init_timeout(ptr noundef nonnull %6, i32 noundef 0, ptr noundef %5) #8
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %204
  %212 = load i32, ptr @heartbeat, align 4
  %213 = call i32 @watchdog_init_timeout(ptr noundef nonnull %6, i32 noundef %212, ptr noundef %5) #8
  br label %214

214:                                              ; preds = %211, %204
  %215 = load i8, ptr %12, align 4, !range !8
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.watchdog_device, ptr %6, i32 0, i32 18
  call void @_set_bit(i32 noundef 1, ptr noundef %218) #8
  br label %219

219:                                              ; preds = %217, %214
  %220 = call i32 @watchdog_register_device(ptr noundef nonnull %6) #8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %219
  %223 = load volatile i32, ptr @jiffies, align 64
  %224 = load i32, ptr %16, align 4
  %225 = mul i32 %224, 100
  %226 = add i32 %225, %223
  %227 = getelementptr inbounds %struct.at91wdt, ptr %6, i32 0, i32 2
  store i32 %226, ptr %227, align 4
  br label %230

228:                                              ; preds = %219
  %229 = call i32 @del_timer(ptr noundef %205) #8
  br label %236

230:                                              ; preds = %222, %153
  %231 = phi i32 [ %154, %153 ], [ %224, %222 ]
  %232 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %232, align 8
  %233 = load i8, ptr %12, align 4, !range !8
  %234 = zext i8 %233 to i32
  %235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %231, i32 noundef %234) #9
  br label %239

236:                                              ; preds = %228, %193, %170, %155
  %237 = phi i32 [ %195, %193 ], [ -22, %170 ], [ %220, %228 ], [ -22, %155 ]
  %238 = load ptr, ptr %26, align 4
  call void @clk_disable(ptr noundef %238) #8
  call void @clk_unprepare(ptr noundef %238) #8
  br label %239

239:                                              ; preds = %236, %230, %37, %28, %22, %1
  %240 = phi i32 [ %23, %22 ], [ %29, %28 ], [ %38, %37 ], [ %237, %236 ], [ 0, %230 ], [ -12, %1 ]
  ret i32 %240
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @at91_wdt_start(ptr nocapture noundef %0) #4 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = mul i32 %4, 100
  %6 = add i32 %5, %2
  %7 = getelementptr inbounds %struct.at91wdt, ptr %0, i32 0, i32 2
  store i32 %6, ptr %7, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @at91_wdt_stop(ptr nocapture noundef readnone %0) #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @at91_wdt_set_timeout(ptr nocapture noundef %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %1, ptr %3, align 4
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = mul i32 %1, 100
  %6 = add i32 %4, %5
  %7 = getelementptr inbounds %struct.at91wdt, ptr %0, i32 0, i32 2
  store i32 %6, ptr %7, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wdt_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.at91wdt, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #9
  tail call void @emergency_restart() #8
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #9
  br label %11

11:                                               ; preds = %8, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_ping(ptr noundef %0) #7 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load i32, ptr %3, align 4
  %5 = sub i32 %2, %4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -20
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7, %1
  %13 = getelementptr i8, ptr %0, i32 -8
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -1526726655) #8, !srcloc !11
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = getelementptr i8, ptr %0, i32 28
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %15
  %19 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %18) #8
  br label %22

20:                                               ; preds = %7
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  br label %22

22:                                               ; preds = %20, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_restart() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{!"auto-init"}
!10 = !{i64 3090925}
!11 = !{i64 3090507}
