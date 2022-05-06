; ModuleID = '/llk/IR/drivers/watchdog/sama5d4_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/sama5d4_wdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.sama5d4_wdt = type { %struct.watchdog_device, ptr, i32, i32, i32, i8, i8 }

@__param_str_wdt_timeout = internal constant [24 x i8] c"sama5d4_wdt.wdt_timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@wdt_timeout = internal global i32 0, align 4
@__param_wdt_timeout = internal constant %struct.kernel_param { ptr @__param_str_wdt_timeout, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @wdt_timeout } }, section "__param", align 4
@__UNIQUE_ID_wdt_timeouttype170 = internal constant [37 x i8] c"sama5d4_wdt.parmtype=wdt_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_wdt_timeout171 = internal constant [73 x i8] c"sama5d4_wdt.parm=wdt_timeout:Watchdog timeout in seconds. (default = 16)\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [21 x i8] c"sama5d4_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global i8 0, align 1
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype172 = internal constant [35 x i8] c"sama5d4_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout173 = internal constant [78 x i8] c"sama5d4_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=0)\00", section ".modinfo", align 1
@__initcall__kmod_sama5d4_wdt__174_384_sama5d4_wdt_driver_init6 = internal global ptr @sama5d4_wdt_driver_init, section ".initcall6.init", align 4
@sama5d4_wdt_driver = internal global %struct.platform_driver { ptr @sama5d4_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sama5d4_wdt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sama5d4_wdt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sama5d4_wdt_driver_exit = internal global ptr @sama5d4_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author175 = internal constant [37 x i8] c"sama5d4_wdt.author=Atmel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [60 x i8] c"sama5d4_wdt.description=Atmel SAMA5D4 Watchdog Timer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file177 = internal constant [46 x i8] c"sama5d4_wdt.file=drivers/watchdog/sama5d4_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [27 x i8] c"sama5d4_wdt.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"sama5d4_wdt\00", align 1
@sama5d4_wdt_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sama5d4_wdt_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sama5d4_wdt_suspend_late, ptr @sama5d4_wdt_resume_early, ptr @sama5d4_wdt_suspend_late, ptr @sama5d4_wdt_resume_early, ptr @sama5d4_wdt_suspend_late, ptr @sama5d4_wdt_resume_early, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sama5d4_wdt_info = internal constant %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"Atmel SAMA5D4 Watchdog\00\00\00\00\00\00\00\00\00\00" }, align 4
@sama5d4_wdt_ops = internal constant %struct.watchdog_ops { ptr null, ptr @sama5d4_wdt_start, ptr @sama5d4_wdt_stop, ptr @sama5d4_wdt_ping, ptr null, ptr @sama5d4_wdt_set_timeout, ptr null, ptr null, ptr null, ptr null }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.1 = private unnamed_addr constant [22 x i8] c"microchip,sam9x60-wdt\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"microchip,sama7g5-wdt\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to get IRQ from DT\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"cannot register interrupt handler\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"initialized (timeout = %d sec, nowayout = %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"atmel,watchdog-type\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"software\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"atmel,idle-halt\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"atmel,dbg-halt\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\012Atmel Watchdog Software Reset\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"\012Reboot didn't succeed\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__UNIQUE_ID_nowayout173, ptr @__UNIQUE_ID_nowayouttype172, ptr @__UNIQUE_ID_wdt_timeout171, ptr @__UNIQUE_ID_wdt_timeouttype170, ptr @__exitcall_sama5d4_wdt_driver_exit, ptr @__initcall__kmod_sama5d4_wdt__174_384_sama5d4_wdt_driver_init6, ptr @__param_nowayout, ptr @__param_wdt_timeout, ptr @sama5d4_wdt_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sama5d4_wdt_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sama5d4_wdt_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sama5d4_wdt_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sama5d4_wdt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sama5d4_wdt_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 128, i32 noundef 3520) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %91, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 7
  store i32 16, ptr %7, align 4
  %8 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 3
  store ptr @sama5d4_wdt_info, ptr %8, align 4
  %9 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 4
  store ptr @sama5d4_wdt_ops, ptr %9, align 4
  %10 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 9
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 10
  store i32 16, ptr %11, align 4
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = getelementptr inbounds %struct.sama5d4_wdt, ptr %4, i32 0, i32 4
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @of_device_is_compatible(ptr noundef %15, ptr noundef nonnull @.str.1) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = load ptr, ptr %14, align 8
  %20 = tail call i32 @of_device_is_compatible(ptr noundef %19, ptr noundef nonnull @.str.2) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18, %6
  %23 = getelementptr inbounds %struct.sama5d4_wdt, ptr %4, i32 0, i32 6
  store i8 1, ptr %23, align 1
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 16
  store ptr %4, ptr %25, align 4
  %26 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = ptrtoint ptr %26 to i32
  br label %91

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.sama5d4_wdt, ptr %4, i32 0, i32 1
  store ptr %26, ptr %31, align 4
  %32 = load ptr, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store ptr null, ptr %2, align 4, !annotation !8
  %33 = getelementptr inbounds %struct.sama5d4_wdt, ptr %4, i32 0, i32 6
  %34 = load i8, ptr %33, align 1, !range !9
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i32 32768, i32 4096
  %37 = getelementptr inbounds %struct.sama5d4_wdt, ptr %4, i32 0, i32 2
  store i32 %36, ptr %37, align 4
  %38 = call i32 @of_property_read_string(ptr noundef %32, ptr noundef nonnull @.str.6, ptr noundef nonnull %2) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load ptr, ptr %2, align 4
  %42 = call i32 @strcmp(ptr noundef %41, ptr noundef nonnull dereferenceable(9) @.str.7) #6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.sama5d4_wdt, ptr %4, i32 0, i32 5
  store i8 1, ptr %45, align 4
  br label %46

46:                                               ; preds = %44, %40, %30
  %47 = call ptr @of_find_property(ptr noundef %32, ptr noundef nonnull @.str.8, ptr noundef null) #6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %37, align 4
  %51 = or i32 %50, 536870912
  store i32 %51, ptr %37, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = call ptr @of_find_property(ptr noundef %32, ptr noundef nonnull @.str.9, ptr noundef null) #6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %37, align 4
  %57 = or i32 %56, 268435456
  store i32 %57, ptr %37, align 4
  br label %58

58:                                               ; preds = %55, %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %59 = getelementptr inbounds %struct.sama5d4_wdt, ptr %4, i32 0, i32 5
  %60 = load i8, ptr %59, align 4, !range !9
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %14, align 8
  %64 = call i32 @irq_of_parse_and_map(ptr noundef %63, i32 noundef 0) #6
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.3) #7
  store i8 0, ptr %59, align 4
  br label %75

67:                                               ; preds = %62
  %68 = load i8, ptr %59, align 4
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr %0, align 8
  %72 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %64, ptr noundef nonnull @sama5d4_wdt_irq_handler, ptr noundef null, i32 noundef 20608, ptr noundef %71, ptr noundef %0) #6
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #7
  br label %91

75:                                               ; preds = %70, %67, %66, %58
  %76 = load i32, ptr @wdt_timeout, align 4
  %77 = call i32 @watchdog_init_timeout(ptr noundef nonnull %4, i32 noundef %76, ptr noundef %3) #6
  call fastcc void @sama5d4_wdt_init(ptr noundef nonnull %4)
  %78 = load i8, ptr @nowayout, align 1, !range !9
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 18
  call void @_set_bit(i32 noundef 1, ptr noundef %81) #6
  br label %82

82:                                               ; preds = %80, %75
  %83 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 18
  call void @_set_bit(i32 noundef 4, ptr noundef %83) #6
  %84 = call i32 @devm_watchdog_register_device(ptr noundef %3, ptr noundef nonnull %4) #6
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %87, align 8
  %88 = load i32, ptr %7, align 4
  %89 = load i8, ptr @nowayout, align 1, !range !9
  %90 = zext i8 %89 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %88, i32 noundef %90) #7
  br label %91

91:                                               ; preds = %86, %82, %74, %28, %1
  %92 = phi i32 [ %29, %28 ], [ %72, %74 ], [ 0, %86 ], [ -12, %1 ], [ %84, %82 ]
  ret i32 %92
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sama5d4_wdt_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sama5d4_wdt, ptr %4, i32 0, i32 6
  %6 = load i8, ptr %5, align 1, !range !9
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.sama5d4_wdt, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  br i1 %7, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %9, i32 28
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !10
  br label %16

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %9, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !10
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ %12, %10 ], [ %15, %13 ]
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #7
  tail call void @emergency_restart() #6
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #7
  br label %22

22:                                               ; preds = %19, %16
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sama5d4_wdt_init(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sama5d4_wdt, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 32768
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %57, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sama5d4_wdt, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !10
  %11 = getelementptr inbounds %struct.sama5d4_wdt, ptr %0, i32 0, i32 6
  %12 = load i8, ptr %11, align 1, !range !9
  %13 = icmp ne i8 %12, 0
  %14 = and i32 %10, 4096
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %33

17:                                               ; preds = %6
  %18 = or i32 %10, 4096
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = getelementptr inbounds %struct.sama5d4_wdt, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  %23 = icmp ult i32 %22, 123
  %24 = select i1 %23, i32 -1073741822, i32 -1
  %25 = sub i32 %19, %21
  %26 = add i32 %25, %24
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 26414004) #6
  br label %30

30:                                               ; preds = %28, %17
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %18) #6, !srcloc !11
  br label %54

33:                                               ; preds = %6
  %34 = icmp eq i8 %12, 0
  %35 = and i32 %10, 32768
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  %39 = or i32 %10, 32768
  %40 = load volatile i32, ptr @jiffies, align 64
  %41 = getelementptr inbounds %struct.sama5d4_wdt, ptr %0, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  %44 = icmp ult i32 %43, 123
  %45 = select i1 %44, i32 -1073741822, i32 -1
  %46 = sub i32 %40, %42
  %47 = add i32 %46, %45
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 26414004) #6
  br label %51

51:                                               ; preds = %49, %38
  %52 = load ptr, ptr %7, align 4
  %53 = getelementptr i8, ptr %52, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %39) #6, !srcloc !11
  br label %54

54:                                               ; preds = %51, %30
  %55 = phi ptr [ %20, %30 ], [ %41, %51 ]
  %56 = load volatile i32, ptr @jiffies, align 64
  store i32 %56, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %33, %1
  %58 = getelementptr inbounds %struct.sama5d4_wdt, ptr %0, i32 0, i32 6
  %59 = load i8, ptr %58, align 1, !range !9
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %118, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.sama5d4_wdt, ptr %0, i32 0, i32 5
  %63 = load i8, ptr %62, align 4, !range !9
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.sama5d4_wdt, ptr %0, i32 0, i32 3
  store i32 1, ptr %66, align 4
  br label %72

67:                                               ; preds = %61
  %68 = load i32, ptr %2, align 4
  %69 = or i32 %68, 16
  store i32 %69, ptr %2, align 4
  %70 = getelementptr inbounds %struct.sama5d4_wdt, ptr %0, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  br label %72

72:                                               ; preds = %67, %65
  %73 = phi i32 [ %71, %67 ], [ 1, %65 ]
  %74 = getelementptr inbounds %struct.sama5d4_wdt, ptr %0, i32 0, i32 4
  %75 = load volatile i32, ptr @jiffies, align 64
  %76 = load i32, ptr %74, align 4
  %77 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  %78 = icmp ult i32 %77, 123
  %79 = select i1 %78, i32 -1073741822, i32 -1
  %80 = sub i32 %75, %76
  %81 = add i32 %80, %79
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %83, %72
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 125, i32 noundef 2) #6
  %84 = load volatile i32, ptr @jiffies, align 64
  %85 = load i32, ptr %74, align 4
  %86 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  %87 = icmp ult i32 %86, 123
  %88 = select i1 %87, i32 -1073741822, i32 -1
  %89 = sub i32 %84, %85
  %90 = add i32 %89, %88
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %83, label %92

92:                                               ; preds = %83, %72
  %93 = getelementptr inbounds %struct.sama5d4_wdt, ptr %0, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr i8, ptr %94, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %73) #6, !srcloc !11
  %96 = load volatile i32, ptr @jiffies, align 64
  store i32 %96, ptr %74, align 4
  %97 = load volatile i32, ptr @jiffies, align 64
  %98 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  %99 = icmp ult i32 %98, 123
  %100 = select i1 %99, i32 -1073741822, i32 -1
  %101 = sub i32 %97, %96
  %102 = add i32 %101, %100
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %104, %92
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 125, i32 noundef 2) #6
  %105 = load volatile i32, ptr @jiffies, align 64
  %106 = load i32, ptr %74, align 4
  %107 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  %108 = icmp ult i32 %107, 123
  %109 = select i1 %108, i32 -1073741822, i32 -1
  %110 = sub i32 %105, %106
  %111 = add i32 %110, %109
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %104, label %113

113:                                              ; preds = %104, %92
  %114 = load ptr, ptr %93, align 4
  %115 = getelementptr i8, ptr %114, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 4095) #6, !srcloc !11
  %116 = load volatile i32, ptr @jiffies, align 64
  store i32 %116, ptr %74, align 4
  %117 = load i32, ptr %2, align 4
  br label %127

118:                                              ; preds = %57
  %119 = load i32, ptr %2, align 4
  %120 = getelementptr inbounds %struct.sama5d4_wdt, ptr %0, i32 0, i32 5
  %121 = load i8, ptr %120, align 4, !range !9
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = or i32 %119, 268378111
  store i32 %124, ptr %2, align 4
  br label %127

125:                                              ; preds = %118
  %126 = or i32 %119, 268382207
  store i32 %126, ptr %2, align 4
  br label %127

127:                                              ; preds = %125, %123, %113
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ], [ %117, %113 ]
  %129 = load volatile i32, ptr @jiffies, align 64
  %130 = getelementptr inbounds %struct.sama5d4_wdt, ptr %0, i32 0, i32 4
  %131 = load i32, ptr %130, align 4
  %132 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  %133 = icmp ult i32 %132, 123
  %134 = select i1 %133, i32 -1073741822, i32 -1
  %135 = sub i32 %129, %131
  %136 = add i32 %135, %134
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %127
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %139(i32 noundef 26414004) #6
  br label %140

140:                                              ; preds = %138, %127
  %141 = getelementptr inbounds %struct.sama5d4_wdt, ptr %0, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr i8, ptr %142, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %128) #6, !srcloc !11
  %144 = load volatile i32, ptr @jiffies, align 64
  store i32 %144, ptr %130, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sama5d4_wdt_start(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sama5d4_wdt, ptr %3, i32 0, i32 6
  %5 = load i8, ptr %4, align 1, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sama5d4_wdt, ptr %3, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sama5d4_wdt, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #6, !srcloc !11
  %13 = getelementptr inbounds %struct.sama5d4_wdt, ptr %3, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -4097
  store i32 %15, ptr %13, align 4
  br label %20

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.sama5d4_wdt, ptr %3, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, -32769
  store i32 %19, ptr %17, align 4
  br label %20

20:                                               ; preds = %16, %7
  %21 = phi i32 [ %19, %16 ], [ %15, %7 ]
  %22 = getelementptr inbounds %struct.sama5d4_wdt, ptr %3, i32 0, i32 4
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = load i32, ptr %22, align 4
  %25 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  %26 = icmp ult i32 %25, 123
  %27 = select i1 %26, i32 -1073741822, i32 -1
  %28 = sub i32 %23, %24
  %29 = add i32 %28, %27
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %31, %20
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 125, i32 noundef 2) #6
  %32 = load volatile i32, ptr @jiffies, align 64
  %33 = load i32, ptr %22, align 4
  %34 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  %35 = icmp ult i32 %34, 123
  %36 = select i1 %35, i32 -1073741822, i32 -1
  %37 = sub i32 %32, %33
  %38 = add i32 %37, %36
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %31, label %40

40:                                               ; preds = %31, %20
  %41 = getelementptr inbounds %struct.sama5d4_wdt, ptr %3, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %21) #6, !srcloc !11
  %44 = load volatile i32, ptr @jiffies, align 64
  store i32 %44, ptr %22, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sama5d4_wdt_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sama5d4_wdt, ptr %3, i32 0, i32 6
  %5 = load i8, ptr %4, align 1, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sama5d4_wdt, ptr %3, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sama5d4_wdt, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #6, !srcloc !11
  %13 = getelementptr inbounds %struct.sama5d4_wdt, ptr %3, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 4096
  store i32 %15, ptr %13, align 4
  br label %20

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.sama5d4_wdt, ptr %3, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 32768
  store i32 %19, ptr %17, align 4
  br label %20

20:                                               ; preds = %16, %7
  %21 = phi i32 [ %19, %16 ], [ %15, %7 ]
  %22 = getelementptr inbounds %struct.sama5d4_wdt, ptr %3, i32 0, i32 4
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = load i32, ptr %22, align 4
  %25 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  %26 = icmp ult i32 %25, 123
  %27 = select i1 %26, i32 -1073741822, i32 -1
  %28 = sub i32 %23, %24
  %29 = add i32 %28, %27
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %31, %20
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 125, i32 noundef 2) #6
  %32 = load volatile i32, ptr @jiffies, align 64
  %33 = load i32, ptr %22, align 4
  %34 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  %35 = icmp ult i32 %34, 123
  %36 = select i1 %35, i32 -1073741822, i32 -1
  %37 = sub i32 %32, %33
  %38 = add i32 %37, %36
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %31, label %40

40:                                               ; preds = %31, %20
  %41 = getelementptr inbounds %struct.sama5d4_wdt, ptr %3, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %21) #6, !srcloc !11
  %44 = load volatile i32, ptr @jiffies, align 64
  store i32 %44, ptr %22, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sama5d4_wdt_ping(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sama5d4_wdt, ptr %3, i32 0, i32 4
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = load i32, ptr %4, align 4
  %7 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  %8 = icmp ult i32 %7, 123
  %9 = select i1 %8, i32 -1073741822, i32 -1
  %10 = sub i32 %5, %6
  %11 = add i32 %10, %9
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %13, %1
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 125, i32 noundef 2) #6
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = load i32, ptr %4, align 4
  %16 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  %17 = icmp ult i32 %16, 123
  %18 = select i1 %17, i32 -1073741822, i32 -1
  %19 = sub i32 %14, %15
  %20 = add i32 %19, %18
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %13, label %22

22:                                               ; preds = %13, %1
  %23 = getelementptr inbounds %struct.sama5d4_wdt, ptr %3, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -1526726655) #6, !srcloc !11
  %25 = load volatile i32, ptr @jiffies, align 64
  store i32 %25, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sama5d4_wdt_set_timeout(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  %6 = shl i32 %1, 8
  %7 = add i32 %6, -1
  %8 = select i1 %5, i32 0, i32 %7
  %9 = getelementptr inbounds %struct.sama5d4_wdt, ptr %4, i32 0, i32 6
  %10 = load i8, ptr %9, align 1, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %2
  %13 = and i32 %8, 4095
  %14 = getelementptr inbounds %struct.sama5d4_wdt, ptr %4, i32 0, i32 4
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = load i32, ptr %14, align 4
  %17 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  %18 = icmp ult i32 %17, 123
  %19 = select i1 %18, i32 -1073741822, i32 -1
  %20 = sub i32 %15, %16
  %21 = add i32 %20, %19
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %23, %12
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 125, i32 noundef 2) #6
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = load i32, ptr %14, align 4
  %26 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  %27 = icmp ult i32 %26, 123
  %28 = select i1 %27, i32 -1073741822, i32 -1
  %29 = sub i32 %24, %25
  %30 = add i32 %29, %28
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %23, label %32

32:                                               ; preds = %23, %12
  %33 = getelementptr inbounds %struct.sama5d4_wdt, ptr %4, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %13) #6, !srcloc !11
  br label %68

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.sama5d4_wdt, ptr %4, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, -4096
  %40 = and i32 %8, 4095
  %41 = or i32 %39, %40
  store i32 %41, ptr %37, align 4
  %42 = and i32 %38, 32768
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %36
  %45 = and i32 %41, -32769
  %46 = getelementptr inbounds %struct.sama5d4_wdt, ptr %4, i32 0, i32 4
  %47 = load volatile i32, ptr @jiffies, align 64
  %48 = load i32, ptr %46, align 4
  %49 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  %50 = icmp ult i32 %49, 123
  %51 = select i1 %50, i32 -1073741822, i32 -1
  %52 = sub i32 %47, %48
  %53 = add i32 %52, %51
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %55, %44
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 125, i32 noundef 2) #6
  %56 = load volatile i32, ptr @jiffies, align 64
  %57 = load i32, ptr %46, align 4
  %58 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  %59 = icmp ult i32 %58, 123
  %60 = select i1 %59, i32 -1073741822, i32 -1
  %61 = sub i32 %56, %57
  %62 = add i32 %61, %60
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %55, label %64

64:                                               ; preds = %55, %44
  %65 = getelementptr inbounds %struct.sama5d4_wdt, ptr %4, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i8, ptr %66, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %45) #6, !srcloc !11
  br label %68

68:                                               ; preds = %64, %32
  %69 = phi ptr [ %46, %64 ], [ %14, %32 ]
  %70 = load volatile i32, ptr @jiffies, align 64
  store i32 %70, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %36
  %72 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %1, ptr %72, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_restart() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sama5d4_wdt_suspend_late(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 18
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @sama5d4_wdt_stop(ptr noundef %3)
  br label %10

10:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sama5d4_wdt_resume_early(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @sama5d4_wdt_init(ptr noundef %3)
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 18
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @sama5d4_wdt_start(ptr noundef %3)
  br label %10

10:                                               ; preds = %8, %1
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!10 = !{i64 3065777}
!11 = !{i64 3065359}
