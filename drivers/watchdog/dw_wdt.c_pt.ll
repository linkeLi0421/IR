; ModuleID = '/llk/IR/drivers/watchdog/dw_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/dw_wdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.57 }
%union.anon.57 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.debugfs_reg32 = type { ptr, i32 }
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
%struct.dw_wdt = type { ptr, ptr, ptr, i32, i32, [16 x %struct.dw_wdt_timeout], %struct.watchdog_device, ptr, i32, i32, ptr }
%struct.dw_wdt_timeout = type { i32, i32, i32 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }

@__param_str_nowayout = internal constant [16 x i8] c"dw_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global i8 0, align 1
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.57 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype210 = internal constant [30 x i8] c"dw_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout211 = internal constant [73 x i8] c"dw_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=0)\00", section ".modinfo", align 1
@__initcall__kmod_dw_wdt__212_717_dw_wdt_driver_init6 = internal global ptr @dw_wdt_driver_init, section ".initcall6.init", align 4
@dw_wdt_driver = internal global %struct.platform_driver { ptr @dw_wdt_drv_probe, ptr @dw_wdt_drv_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw_wdt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_wdt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_dw_wdt_driver_exit = internal global ptr @dw_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author213 = internal constant [25 x i8] c"dw_wdt.author=Jamie Iles\00", section ".modinfo", align 1
@__UNIQUE_ID_description214 = internal constant [55 x i8] c"dw_wdt.description=Synopsys DesignWare Watchdog Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file215 = internal constant [36 x i8] c"dw_wdt.file=drivers/watchdog/dw_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license216 = internal constant [19 x i8] c"dw_wdt.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"dw_wdt\00", align 1
@dw_wdt_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dw-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@dw_wdt_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @dw_wdt_suspend, ptr @dw_wdt_resume, ptr @dw_wdt_suspend, ptr @dw_wdt_resume, ptr @dw_wdt_suspend, ptr @dw_wdt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"tclk\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@dw_wdt_pt_ident = internal constant %struct.watchdog_info { i32 33664, i32 0, [32 x i8] c"Synopsys DesignWare Watchdog\00\00\00\00" }, align 4
@dw_wdt_ident = internal constant %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"Synopsys DesignWare Watchdog\00\00\00\00" }, align 4
@dw_wdt_ops = internal constant %struct.watchdog_ops { ptr null, ptr @dw_wdt_start, ptr @dw_wdt_stop, ptr @dw_wdt_ping, ptr null, ptr @dw_wdt_set_timeout, ptr @dw_wdt_set_pretimeout, ptr @dw_wdt_get_timeleft, ptr @dw_wdt_restart, ptr null }, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"\011watchdog%d: pretimeout event\0A\00", align 1
@dw_wdt_fix_tops = internal unnamed_addr constant [16 x i32] [i32 65536, i32 131072, i32 262144, i32 524288, i32 1048576, i32 2097152, i32 4194304, i32 8388608, i32 16777216, i32 33554432, i32 67108864, i32 134217728, i32 268435456, i32 536870912, i32 1073741824, i32 -2147483648], align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"snps,watchdog-tops\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"No valid TOPs array specified\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"No any valid TOP detected\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dw_wdt_dbgfs_regs = internal constant [12 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.8, i32 0 }, %struct.debugfs_reg32 { ptr @.str.9, i32 4 }, %struct.debugfs_reg32 { ptr @.str.10, i32 8 }, %struct.debugfs_reg32 { ptr @.str.11, i32 12 }, %struct.debugfs_reg32 { ptr @.str.12, i32 16 }, %struct.debugfs_reg32 { ptr @.str.13, i32 228 }, %struct.debugfs_reg32 { ptr @.str.14, i32 232 }, %struct.debugfs_reg32 { ptr @.str.15, i32 236 }, %struct.debugfs_reg32 { ptr @.str.16, i32 240 }, %struct.debugfs_reg32 { ptr @.str.17, i32 244 }, %struct.debugfs_reg32 { ptr @.str.18, i32 248 }, %struct.debugfs_reg32 { ptr @.str.19, i32 252 }], align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"cr\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"torr\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ccvr\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"crr\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"param5\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"param4\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"param3\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"param2\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"param1\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_description214, ptr @__UNIQUE_ID_file215, ptr @__UNIQUE_ID_license216, ptr @__UNIQUE_ID_nowayout211, ptr @__UNIQUE_ID_nowayouttype210, ptr @__exitcall_dw_wdt_driver_exit, ptr @__initcall__kmod_dw_wdt__212_717_dw_wdt_driver_init6, ptr @__param_nowayout, ptr @dw_wdt_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dw_wdt_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw_wdt_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dw_wdt_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw_wdt_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_wdt_drv_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 336, i32 noundef 3520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %113, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  store ptr %6, ptr %3, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %113

10:                                               ; preds = %5
  %11 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.1) #8
  %12 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #8
  store ptr %15, ptr %12, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = ptrtoint ptr %15 to i32
  br label %113

19:                                               ; preds = %14, %10
  %20 = phi ptr [ %15, %14 ], [ %11, %10 ]
  %21 = tail call i32 @clk_prepare(ptr noundef %20) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %113

23:                                               ; preds = %19
  %24 = tail call i32 @clk_enable(ptr noundef %20) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %20) #8
  br label %113

27:                                               ; preds = %23
  %28 = load ptr, ptr %12, align 4
  %29 = tail call i32 @clk_get_rate(ptr noundef %28) #8
  %30 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %110, label %32

32:                                               ; preds = %27
  %33 = tail call ptr @devm_clk_get_optional(ptr noundef %2, ptr noundef nonnull @.str.2) #8
  %34 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 2
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = ptrtoint ptr %33 to i32
  br label %110

38:                                               ; preds = %32
  %39 = tail call i32 @clk_prepare(ptr noundef %33) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %110

41:                                               ; preds = %38
  %42 = tail call i32 @clk_enable(ptr noundef %33) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @clk_unprepare(ptr noundef %33) #8
  br label %110

45:                                               ; preds = %41
  %46 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #8
  %47 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 7
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = ptrtoint ptr %46 to i32
  br label %107

51:                                               ; preds = %45
  tail call fastcc void @dw_wdt_update_mode(ptr noundef nonnull %3, i32 noundef 1)
  %52 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 0) #8
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load ptr, ptr %0, align 8
  %56 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %52, ptr noundef nonnull @dw_wdt_irq, ptr noundef null, i32 noundef 129, ptr noundef %55, ptr noundef nonnull %3) #8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %107

58:                                               ; preds = %51
  %59 = icmp eq i32 %52, -517
  br i1 %59, label %107, label %60

60:                                               ; preds = %58, %54
  %61 = phi ptr [ @dw_wdt_pt_ident, %54 ], [ @dw_wdt_ident, %58 ]
  %62 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 6, i32 3
  store ptr %61, ptr %62, align 4
  %63 = load ptr, ptr %47, align 4
  %64 = tail call i32 @reset_control_deassert(ptr noundef %63) #8
  %65 = tail call fastcc i32 @dw_wdt_init_timeouts(ptr noundef nonnull %3, ptr noundef %2)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %110

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 6
  %69 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 6, i32 4
  store ptr @dw_wdt_ops, ptr %69, align 4
  %70 = tail call fastcc i32 @dw_wdt_get_min_timeout(ptr noundef nonnull %3)
  %71 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 6, i32 9
  store i32 %70, ptr %71, align 4
  %72 = getelementptr %struct.dw_wdt, ptr %3, i32 0, i32 5, i32 15, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = zext i32 %73 to i64
  %75 = mul nuw nsw i64 %74, 1000
  %76 = getelementptr %struct.dw_wdt, ptr %3, i32 0, i32 5, i32 15, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = zext i32 %77 to i64
  %79 = add nuw nsw i64 %75, %78
  %80 = tail call i64 @llvm.umin.i64(i64 %79, i64 4294967295) #8
  %81 = trunc i64 %80 to i32
  %82 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 6, i32 12
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 6, i32 1
  store ptr %2, ptr %83, align 4
  %84 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 6, i32 16
  store ptr %3, ptr %84, align 4
  %85 = load i8, ptr @nowayout, align 1, !range !8
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %67
  %88 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 6, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %88) #8
  br label %89

89:                                               ; preds = %87, %67
  %90 = tail call i32 @watchdog_init_timeout(ptr noundef %68, i32 noundef 0, ptr noundef %2) #8
  %91 = load ptr, ptr %3, align 4
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %89
  %96 = tail call fastcc i32 @dw_wdt_get_timeout(ptr noundef nonnull %3)
  %97 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 6, i32 7
  store i32 %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 6, i32 18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %98) #8
  br label %102

99:                                               ; preds = %89
  %100 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 6, i32 7
  store i32 30, ptr %100, align 4
  %101 = tail call i32 @watchdog_init_timeout(ptr noundef %68, i32 noundef 0, ptr noundef %2) #8
  br label %102

102:                                              ; preds = %99, %95
  %103 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %103, align 8
  tail call void @watchdog_set_restart_priority(ptr noundef %68, i32 noundef 128) #8
  %104 = tail call i32 @watchdog_register_device(ptr noundef %68) #8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  tail call fastcc void @dw_wdt_dbgfs_init(ptr noundef nonnull %3)
  br label %113

107:                                              ; preds = %102, %58, %54, %49
  %108 = phi i32 [ %50, %49 ], [ %56, %54 ], [ %104, %102 ], [ -517, %58 ]
  %109 = load ptr, ptr %34, align 4
  tail call void @clk_disable(ptr noundef %109) #8
  tail call void @clk_unprepare(ptr noundef %109) #8
  br label %110

110:                                              ; preds = %107, %60, %44, %38, %36, %27
  %111 = phi i32 [ %37, %36 ], [ %108, %107 ], [ %65, %60 ], [ -22, %27 ], [ %42, %44 ], [ %39, %38 ]
  %112 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %112) #8
  tail call void @clk_unprepare(ptr noundef %112) #8
  br label %113

113:                                              ; preds = %110, %106, %26, %19, %17, %8, %1
  %114 = phi i32 [ %9, %8 ], [ %18, %17 ], [ %111, %110 ], [ 0, %106 ], [ -12, %1 ], [ %24, %26 ], [ %21, %19 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_wdt_drv_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  tail call void @debugfs_remove(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 6
  tail call void @watchdog_unregister_device(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @reset_control_assert(ptr noundef %8) #8
  %10 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  %12 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #8
  tail call void @clk_unprepare(ptr noundef %13) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dw_wdt_update_mode(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %5 = icmp eq i32 %1, 2
  %6 = and i32 %4, -3
  %7 = select i1 %5, i32 2, i32 0
  %8 = or i32 %6, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %9 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #8, !srcloc !13
  %10 = getelementptr inbounds %struct.dw_wdt, ptr %0, i32 0, i32 4
  store i32 %1, ptr %10, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_wdt_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dw_wdt, ptr %1, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %9) #9
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ 1, %7 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dw_wdt_init_timeouts(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca [16 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false), !annotation !15
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr i8, ptr %4, i32 244
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  %13 = load ptr, ptr %12, align 8
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi ptr [ %13, %11 ], [ null, %9 ]
  %16 = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 16, i32 noundef 16) #8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.5) #9
  br label %19

19:                                               ; preds = %18, %14, %2
  %20 = phi ptr [ @dw_wdt_fix_tops, %18 ], [ @dw_wdt_fix_tops, %2 ], [ %3, %14 ]
  %21 = getelementptr inbounds %struct.dw_wdt, ptr %0, i32 0, i32 3
  br label %22

22:                                               ; preds = %74, %19
  %23 = phi i32 [ 0, %19 ], [ %81, %74 ]
  %24 = getelementptr i32, ptr %20, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %21, align 4
  %27 = udiv i32 %25, %26
  %28 = zext i32 %25 to i64
  %29 = mul nuw nsw i64 %28, 1000
  %30 = icmp ult i64 %29, 4294967296
  br i1 %30, label %31, label %35, !prof !17

31:                                               ; preds = %22
  %32 = trunc i64 %29 to i32
  %33 = udiv i32 %32, %26
  %34 = zext i32 %33 to i64
  br label %38

35:                                               ; preds = %22
  %36 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %26, i64 %29) #10, !srcloc !18
  %37 = extractvalue { i64, i64 } %36, 1
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi i64 [ %34, %31 ], [ %37, %35 ]
  %40 = zext i32 %27 to i64
  %41 = mul nuw i64 %40, 4294966296
  %42 = add i64 %39, %41
  %43 = trunc i64 %42 to i32
  %44 = icmp eq i32 %23, 0
  br i1 %44, label %74, label %45

45:                                               ; preds = %68, %38
  %46 = phi i32 [ %72, %68 ], [ 0, %38 ]
  %47 = phi i32 [ %71, %68 ], [ %43, %38 ]
  %48 = phi i32 [ %70, %68 ], [ %27, %38 ]
  %49 = phi i32 [ %69, %68 ], [ %23, %38 ]
  %50 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 %46
  %51 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 %46, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp ugt i32 %48, %52
  br i1 %53, label %68, label %54

54:                                               ; preds = %45
  %55 = icmp eq i32 %48, %52
  br i1 %55, label %59, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds i8, ptr %50, i32 8
  %58 = load i32, ptr %57, align 4
  br label %63

59:                                               ; preds = %54
  %60 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 %46, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = icmp ult i32 %47, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59, %56
  %64 = phi i32 [ %58, %56 ], [ %61, %59 ]
  %65 = load i32, ptr %50, align 4
  %66 = getelementptr inbounds i8, ptr %50, i32 4
  %67 = getelementptr inbounds i8, ptr %50, i32 8
  store i32 %49, ptr %50, align 4
  store i32 %48, ptr %66, align 4
  store i32 %47, ptr %67, align 4
  br label %68

68:                                               ; preds = %63, %59, %45
  %69 = phi i32 [ %49, %45 ], [ %49, %59 ], [ %65, %63 ]
  %70 = phi i32 [ %48, %45 ], [ %48, %59 ], [ %52, %63 ]
  %71 = phi i32 [ %47, %45 ], [ %47, %59 ], [ %64, %63 ]
  %72 = add nuw nsw i32 %46, 1
  %73 = icmp eq i32 %72, %23
  br i1 %73, label %74, label %45

74:                                               ; preds = %68, %38
  %75 = phi i32 [ 0, %38 ], [ %69, %68 ]
  %76 = phi i32 [ %27, %38 ], [ %70, %68 ]
  %77 = phi i32 [ %43, %38 ], [ %71, %68 ]
  %78 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 %23
  store i32 %75, ptr %78, align 4
  %79 = getelementptr inbounds i8, ptr %78, i32 4
  store i32 %76, ptr %79, align 4
  %80 = getelementptr inbounds i8, ptr %78, i32 8
  store i32 %77, ptr %80, align 4
  %81 = add nuw nsw i32 %23, 1
  %82 = icmp eq i32 %81, 16
  br i1 %82, label %83, label %22

83:                                               ; preds = %74
  %84 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 15, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6) #9
  br label %88

88:                                               ; preds = %87, %83
  %89 = phi i32 [ -22, %87 ], [ 0, %83 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #8
  ret i32 %89
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @dw_wdt_get_min_timeout(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %68

5:                                                ; preds = %1
  %6 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %68

9:                                                ; preds = %5
  %10 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 2, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %68

13:                                               ; preds = %9
  %14 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 3, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %68

17:                                               ; preds = %13
  %18 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 4, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %68

21:                                               ; preds = %17
  %22 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 5, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %68

25:                                               ; preds = %21
  %26 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 6, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %68

29:                                               ; preds = %25
  %30 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 7, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %29
  %34 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 8, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %33
  %38 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 9, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 10, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 11, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 12, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 13, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 14, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 15, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 16, i32 1
  %67 = load i32, ptr %66, align 4
  br label %68

68:                                               ; preds = %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17, %13, %9, %5, %1
  %69 = phi i32 [ %3, %1 ], [ %7, %5 ], [ %11, %9 ], [ %15, %13 ], [ %19, %17 ], [ %23, %21 ], [ %27, %25 ], [ %31, %29 ], [ %35, %33 ], [ %39, %37 ], [ %43, %41 ], [ %47, %45 ], [ %51, %49 ], [ %55, %53 ], [ %59, %57 ], [ %63, %61 ], [ %67, %65 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dw_wdt_get_timeout(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %5 = and i32 %4, 15
  %6 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 0
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, %5
  br i1 %8, label %70, label %9

9:                                                ; preds = %1
  %10 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %5
  br i1 %12, label %70, label %13

13:                                               ; preds = %9
  %14 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %5
  br i1 %16, label %70, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %5
  br i1 %20, label %70, label %21

21:                                               ; preds = %17
  %22 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %5
  br i1 %24, label %70, label %25

25:                                               ; preds = %21
  %26 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %5
  br i1 %28, label %70, label %29

29:                                               ; preds = %25
  %30 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %5
  br i1 %32, label %70, label %33

33:                                               ; preds = %29
  %34 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, %5
  br i1 %36, label %70, label %37

37:                                               ; preds = %33
  %38 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, %5
  br i1 %40, label %70, label %41

41:                                               ; preds = %37
  %42 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 9
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, %5
  br i1 %44, label %70, label %45

45:                                               ; preds = %41
  %46 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 10
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %5
  br i1 %48, label %70, label %49

49:                                               ; preds = %45
  %50 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 11
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, %5
  br i1 %52, label %70, label %53

53:                                               ; preds = %49
  %54 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 12
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, %5
  br i1 %56, label %70, label %57

57:                                               ; preds = %53
  %58 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 13
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, %5
  br i1 %60, label %70, label %61

61:                                               ; preds = %57
  %62 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 14
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, %5
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 15
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, %5
  %69 = select i1 %68, i32 15, i32 16
  br label %70

70:                                               ; preds = %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17, %13, %9, %1
  %71 = phi i32 [ 0, %1 ], [ 1, %9 ], [ 2, %13 ], [ 3, %17 ], [ 4, %21 ], [ 5, %25 ], [ 6, %29 ], [ 7, %33 ], [ 8, %37 ], [ 9, %41 ], [ 10, %45 ], [ 11, %49 ], [ 12, %53 ], [ 13, %57 ], [ 14, %61 ], [ %69, %65 ]
  %72 = getelementptr %struct.dw_wdt, ptr %0, i32 0, i32 5, i32 %71, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.dw_wdt, ptr %0, i32 0, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = mul i32 %75, %73
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dw_wdt_dbgfs_init(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.dw_wdt, ptr %0, i32 0, i32 6, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 16, i32 noundef 3520) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  store ptr @dw_wdt_dbgfs_regs, ptr %4, align 4
  %7 = getelementptr inbounds %struct.debugfs_regset32, ptr %4, i32 0, i32 1
  store i32 12, ptr %7, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.debugfs_regset32, ptr %4, i32 0, i32 2
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = load ptr, ptr %3, align 4
  br label %15

15:                                               ; preds = %13, %6
  %16 = phi ptr [ %14, %13 ], [ %11, %6 ]
  %17 = tail call ptr @debugfs_create_dir(ptr noundef %16, ptr noundef null) #8
  %18 = getelementptr inbounds %struct.dw_wdt, ptr %0, i32 0, i32 10
  store ptr %17, ptr %18, align 4
  tail call void @debugfs_create_regset32(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef %17, ptr noundef nonnull %4) #8
  br label %19

19:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_wdt_start(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -212
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @dw_wdt_set_timeout(ptr noundef %0, i32 noundef %4)
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 118) #8, !srcloc !13
  %8 = load ptr, ptr %2, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %10 = getelementptr i8, ptr %0, i32 -196
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 2
  %13 = and i32 %9, -4
  %14 = select i1 %12, i32 2, i32 0
  %15 = or i32 %13, %14
  %16 = or i32 %15, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %17 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #8, !srcloc !13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_wdt_stop(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 108
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %6) #8
  br label %11

7:                                                ; preds = %1
  %8 = tail call i32 @reset_control_assert(ptr noundef nonnull %3) #8
  %9 = load ptr, ptr %2, align 4
  %10 = tail call i32 @reset_control_deassert(ptr noundef %9) #8
  br label %11

11:                                               ; preds = %7, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_wdt_ping(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -212
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 118) #8, !srcloc !13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_wdt_set_timeout(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -212
  %4 = getelementptr i8, ptr %0, i32 -196
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %1, -1
  %7 = add i32 %6, %5
  %8 = udiv i32 %7, %5
  %9 = getelementptr i8, ptr %0, i32 -188
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %12, label %69

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %0, i32 -176
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, %8
  br i1 %15, label %16, label %69

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 -164
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, %8
  br i1 %19, label %20, label %69

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %0, i32 -152
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %22, %8
  br i1 %23, label %24, label %69

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %0, i32 -140
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %26, %8
  br i1 %27, label %28, label %69

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %0, i32 -128
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %30, %8
  br i1 %31, label %32, label %69

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %0, i32 -116
  %34 = load i32, ptr %33, align 4
  %35 = icmp ult i32 %34, %8
  br i1 %35, label %36, label %69

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %0, i32 -104
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %38, %8
  br i1 %39, label %40, label %69

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %0, i32 -92
  %42 = load i32, ptr %41, align 4
  %43 = icmp ult i32 %42, %8
  br i1 %43, label %44, label %69

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %0, i32 -80
  %46 = load i32, ptr %45, align 4
  %47 = icmp ult i32 %46, %8
  br i1 %47, label %48, label %69

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %0, i32 -68
  %50 = load i32, ptr %49, align 4
  %51 = icmp ult i32 %50, %8
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %0, i32 -56
  %54 = load i32, ptr %53, align 4
  %55 = icmp ult i32 %54, %8
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = getelementptr i8, ptr %0, i32 -44
  %58 = load i32, ptr %57, align 4
  %59 = icmp ult i32 %58, %8
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %0, i32 -32
  %62 = load i32, ptr %61, align 4
  %63 = icmp ult i32 %62, %8
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %0, i32 -20
  %66 = load i32, ptr %65, align 4
  %67 = icmp ult i32 %66, %8
  %68 = select i1 %67, i32 15, i32 14
  br label %69

69:                                               ; preds = %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16, %12, %2
  %70 = phi i32 [ 13, %60 ], [ 12, %56 ], [ 11, %52 ], [ 10, %48 ], [ 9, %44 ], [ 8, %40 ], [ 7, %36 ], [ 6, %32 ], [ 5, %28 ], [ 4, %24 ], [ 3, %20 ], [ 2, %16 ], [ 1, %12 ], [ 0, %2 ], [ %68, %64 ]
  %71 = getelementptr %struct.dw_wdt, ptr %3, i32 0, i32 5, i32 %70
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr %struct.dw_wdt, ptr %3, i32 0, i32 5, i32 %70, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %5, 2
  %76 = select i1 %75, i32 %74, i32 0
  %77 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 8
  store i32 %76, ptr %77, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %78 = shl i32 %72, 4
  %79 = or i32 %78, %72
  %80 = load ptr, ptr %3, align 4
  %81 = getelementptr i8, ptr %80, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #8, !srcloc !13
  %82 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %69
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %87 = load ptr, ptr %3, align 4
  %88 = getelementptr i8, ptr %87, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 118) #8, !srcloc !13
  br label %89

89:                                               ; preds = %86, %69
  %90 = mul i32 %1, 1000
  %91 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 12
  %92 = load i32, ptr %91, align 4
  %93 = icmp ugt i32 %90, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load i32, ptr %4, align 4
  %96 = mul i32 %95, %74
  br label %97

97:                                               ; preds = %94, %89
  %98 = phi i32 [ %96, %94 ], [ %1, %89 ]
  %99 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %98, ptr %99, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_wdt_set_pretimeout(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -212
  %4 = icmp eq i32 %1, 0
  %5 = select i1 %4, i32 1, i32 2
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %8 = and i32 %7, -3
  %9 = select i1 %4, i32 0, i32 2
  %10 = or i32 %8, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %11 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #8, !srcloc !13
  %12 = getelementptr i8, ptr %0, i32 -196
  store i32 %5, ptr %12, align 4
  %13 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @dw_wdt_set_timeout(ptr noundef %0, i32 noundef %14)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_wdt_get_timeleft(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -212
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !24
  %6 = getelementptr i8, ptr %0, i32 -200
  %7 = load i32, ptr %6, align 4
  %8 = udiv i32 %5, %7
  %9 = getelementptr i8, ptr %0, i32 -196
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %8
  br label %21

21:                                               ; preds = %17, %12, %1
  %22 = phi i32 [ %8, %12 ], [ %20, %17 ], [ %8, %1 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_wdt_restart(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -212
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !26
  tail call void @arm_heavy_mb() #8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #8, !srcloc !13
  %7 = load ptr, ptr %4, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %9 = and i32 %8, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %10 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #8, !srcloc !13
  %11 = getelementptr i8, ptr %0, i32 -196
  store i32 1, ptr %11, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 118) #8, !srcloc !13
  br label %29

19:                                               ; preds = %3
  %20 = load ptr, ptr %4, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %22 = load i32, ptr %11, align 4
  %23 = icmp eq i32 %22, 2
  %24 = and i32 %21, -4
  %25 = select i1 %23, i32 2, i32 0
  %26 = or i32 %24, %25
  %27 = or i32 %26, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %28 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %27) #8, !srcloc !13
  br label %29

29:                                               ; preds = %19, %16
  br label %30

30:                                               ; preds = %30, %29
  %31 = phi i32 [ %32, %30 ], [ 500, %29 ]
  %32 = add nsw i32 %31, -1
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #8
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %30

35:                                               ; preds = %30
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_regset32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_wdt_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !28
  %6 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 8
  store i32 %5, ptr %6, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !29
  %10 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 9
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %12) #8
  tail call void @clk_unprepare(ptr noundef %12) #8
  %13 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_wdt_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %34

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @clk_prepare(ptr noundef %14) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = tail call i32 @clk_enable(ptr noundef %14) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  tail call void @clk_unprepare(ptr noundef %14) #8
  br label %21

21:                                               ; preds = %20, %12
  %22 = phi i32 [ %18, %20 ], [ %15, %12 ]
  %23 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %23) #8
  tail call void @clk_unprepare(ptr noundef %23) #8
  br label %34

24:                                               ; preds = %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  %25 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #8, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %29 = getelementptr inbounds %struct.dw_wdt, ptr %3, i32 0, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #8, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 118) #8, !srcloc !13
  br label %34

34:                                               ; preds = %24, %21, %11, %1
  %35 = phi i32 [ %22, %21 ], [ 0, %24 ], [ %9, %11 ], [ %6, %1 ]
  ret i32 %35
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

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
!9 = !{i64 4049975}
!10 = !{i64 2152467771}
!11 = !{i64 2152468121}
!12 = !{i64 2152468323}
!13 = !{i64 4049557}
!14 = !{i64 2152481493}
!15 = !{!"auto-init"}
!16 = !{i64 2152492927}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2148373600, i64 2148373880, i64 2148374214, i64 2148374548}
!19 = !{i64 2152468829}
!20 = !{i64 2152470178}
!21 = !{i64 2152473412}
!22 = !{i64 2152473619}
!23 = !{i64 2152471750}
!24 = !{i64 2152480733}
!25 = !{i64 2152481078}
!26 = !{i64 2152477474}
!27 = !{i64 2152477799}
!28 = !{i64 2152481838}
!29 = !{i64 2152482183}
!30 = !{i64 2152482387}
!31 = !{i64 2152482746}
