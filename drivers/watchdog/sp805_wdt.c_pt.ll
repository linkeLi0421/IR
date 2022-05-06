; ModuleID = '/llk/IR/drivers/watchdog/sp805_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/sp805_wdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.sp805_wdt = type { %struct.watchdog_device, %struct.spinlock, ptr, ptr, i64, ptr, i32 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_nowayout = internal constant [19 x i8] c"sp805_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global i8 0, align 1
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.64 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype247 = internal constant [33 x i8] c"sp805_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout248 = internal constant [79 x i8] c"sp805_wdt.parm=nowayout:Set to 1 to keep watchdog running after device release\00", section ".modinfo", align 1
@__initcall__kmod_sp805_wdt__249_358_sp805_wdt_driver_init6 = internal global ptr @sp805_wdt_driver_init, section ".initcall6.init", align 4
@sp805_wdt_driver = internal global %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sp805_wdt_dev_pm_ops, ptr null, ptr null }, ptr @sp805_wdt_probe, ptr @sp805_wdt_remove, ptr null, ptr @sp805_wdt_ids }, align 4
@__exitcall_sp805_wdt_driver_exit = internal global ptr @sp805_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author250 = internal constant [51 x i8] c"sp805_wdt.author=Viresh Kumar <vireshk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [48 x i8] c"sp805_wdt.description=ARM SP805 Watchdog Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [42 x i8] c"sp805_wdt.file=drivers/watchdog/sp805_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [22 x i8] c"sp805_wdt.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"sp805-wdt\00", align 1
@sp805_wdt_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sp805_wdt_suspend, ptr @sp805_wdt_resume, ptr @sp805_wdt_suspend, ptr @sp805_wdt_resume, ptr @sp805_wdt_suspend, ptr @sp805_wdt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sp805_wdt_ids = internal constant [2 x %struct.amba_id] [%struct.amba_id { i32 1316869, i32 16777215, ptr null }, %struct.amba_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"clock enable fail\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Clock not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"no clock-frequency property\0A\00", align 1
@wdt_info = internal constant %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"sp805-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@wdt_ops = internal constant %struct.watchdog_ops { ptr null, ptr @wdt_enable, ptr @wdt_disable, ptr @wdt_ping, ptr null, ptr @wdt_setload, ptr null, ptr @wdt_timeleft, ptr @wdt_restart, ptr null }, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"registration successful\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Probe Failed!!!\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_nowayout248, ptr @__UNIQUE_ID_nowayouttype247, ptr @__exitcall_sp805_wdt_driver_exit, ptr @__initcall__kmod_sp805_wdt__249_358_sp805_wdt_driver_init6, ptr @__param_nowayout, ptr @sp805_wdt_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sp805_wdt_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @amba_driver_register(ptr noundef nonnull @sp805_wdt_driver) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sp805_wdt_driver_exit() #0 section ".exit.text" {
  tail call void @amba_driver_unregister(ptr noundef nonnull @sp805_wdt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sp805_wdt_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 0, ptr %3, align 8
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 136, i32 noundef 3520) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %64, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1
  %8 = tail call ptr @devm_ioremap_resource(ptr noundef %0, ptr noundef %7) #6
  %9 = getelementptr inbounds %struct.sp805_wdt, ptr %4, i32 0, i32 2
  store ptr %8, ptr %9, align 8
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i32
  br label %66

13:                                               ; preds = %6
  %14 = call i32 @device_property_read_u64_array(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %3, i32 noundef 1) #6
  %15 = call ptr @devm_clk_get_optional(ptr noundef %0, ptr noundef null) #6
  %16 = getelementptr inbounds %struct.sp805_wdt, ptr %4, i32 0, i32 3
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = ptrtoint ptr %15 to i32
  %20 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %0, i32 noundef %19, ptr noundef nonnull @.str.3) #6
  br label %66

21:                                               ; preds = %13
  %22 = call i32 @clk_get_rate(ptr noundef %15) #6
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.sp805_wdt, ptr %4, i32 0, i32 4
  store i64 %23, ptr %24, align 8
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i64, ptr %3, align 8
  store i64 %27, ptr %24, align 8
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi i64 [ %27, %26 ], [ %23, %21 ]
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4) #7
  br label %66

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.sp805_wdt, ptr %4, i32 0, i32 5
  store ptr %0, ptr %33, align 8
  %34 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 3
  store ptr @wdt_info, ptr %34, align 4
  %35 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 4
  store ptr @wdt_ops, ptr %35, align 8
  %36 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 1
  store ptr %0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.sp805_wdt, ptr %4, i32 0, i32 1
  store i32 0, ptr %37, align 4
  %38 = load i8, ptr @nowayout, align 1, !range !8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 18
  call void @_set_bit(i32 noundef 1, ptr noundef %41) #6
  br label %42

42:                                               ; preds = %40, %32
  %43 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 16
  store ptr %4, ptr %43, align 4
  call void @watchdog_set_restart_priority(ptr noundef nonnull %4, i32 noundef 128) #6
  %44 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 7
  store i32 60, ptr %44, align 4
  %45 = call i32 @watchdog_init_timeout(ptr noundef nonnull %4, i32 noundef 0, ptr noundef %0) #6
  %46 = load i32, ptr %44, align 4
  %47 = call i32 @wdt_setload(ptr noundef nonnull %4, i32 noundef %46)
  %48 = load ptr, ptr %43, align 4
  %49 = getelementptr inbounds %struct.sp805_wdt, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr i8, ptr %50, i32 8
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #6, !srcloc !9
  %53 = and i32 %52, 3
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = call i32 @wdt_enable(ptr noundef nonnull %4)
  %57 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 18
  call void @_set_bit(i32 noundef 3, ptr noundef %57) #6
  br label %58

58:                                               ; preds = %55, %42
  %59 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 18
  call void @_set_bit(i32 noundef 2, ptr noundef %59) #6
  %60 = call i32 @watchdog_register_device(ptr noundef nonnull %4) #6
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %4, ptr %63, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.5) #7
  br label %66

64:                                               ; preds = %58, %2
  %65 = phi i32 [ %60, %58 ], [ -12, %2 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6) #7
  br label %66

66:                                               ; preds = %64, %62, %31, %18, %11
  %67 = phi i32 [ %12, %11 ], [ %20, %18 ], [ %65, %64 ], [ 0, %62 ], [ -19, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sp805_wdt_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @watchdog_unregister_device(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 16
  store ptr null, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sp805_wdt_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 18
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sp805_wdt, ptr %10, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %11) #6
  %12 = getelementptr inbounds %struct.sp805_wdt, ptr %10, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %13, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 449635665) #6, !srcloc !10
  %15 = load ptr, ptr %12, align 8
  %16 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #6, !srcloc !10
  %17 = load ptr, ptr %12, align 8
  %18 = getelementptr i8, ptr %17, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 1) #6, !srcloc !10
  %19 = load ptr, ptr %12, align 8
  %20 = getelementptr i8, ptr %19, i32 3072
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  %22 = load i16, ptr %11, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %24 = getelementptr inbounds %struct.sp805_wdt, ptr %10, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %25) #6
  tail call void @clk_unprepare(ptr noundef %25) #6
  br label %26

26:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sp805_wdt_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 18
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @wdt_enable(ptr noundef %3)
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ %9, %8 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wdt_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sp805_wdt, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.sp805_wdt, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 449635665) #6, !srcloc !10
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #6, !srcloc !10
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr i8, ptr %10, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 1) #6, !srcloc !10
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr i8, ptr %12, i32 3072
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  %15 = load i16, ptr %4, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %17 = getelementptr inbounds %struct.sp805_wdt, ptr %3, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #6
  tail call void @clk_unprepare(ptr noundef %18) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wdt_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sp805_wdt, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %9, %11 ], [ %6, %1 ]
  %14 = getelementptr inbounds %struct.sp805_wdt, ptr %3, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.1) #7
  br label %35

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.sp805_wdt, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %17) #6
  %18 = getelementptr inbounds %struct.sp805_wdt, ptr %3, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 449635665) #6, !srcloc !10
  %21 = getelementptr inbounds %struct.sp805_wdt, ptr %3, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %18, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #6, !srcloc !10
  %24 = load ptr, ptr %18, align 8
  %25 = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 1) #6, !srcloc !10
  %26 = load ptr, ptr %18, align 8
  %27 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 3) #6, !srcloc !10
  %28 = load ptr, ptr %18, align 8
  %29 = getelementptr i8, ptr %28, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 1) #6, !srcloc !10
  %30 = load ptr, ptr %18, align 8
  %31 = getelementptr i8, ptr %30, i32 3072
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  %33 = load i16, ptr %17, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  br label %35

35:                                               ; preds = %16, %12
  %36 = phi i32 [ 0, %16 ], [ %13, %12 ]
  ret i32 %36
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wdt_setload(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sp805_wdt, ptr %4, i32 0, i32 4
  %6 = load i64, ptr %5, align 8
  %7 = lshr i64 %6, 1
  %8 = zext i32 %1 to i64
  %9 = mul i64 %7, %8
  %10 = add i64 %9, -1
  %11 = tail call i64 @llvm.umin.i64(i64 %10, i64 4294967295)
  %12 = tail call i64 @llvm.umax.i64(i64 %11, i64 1)
  %13 = getelementptr inbounds %struct.sp805_wdt, ptr %4, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %13) #6
  %14 = trunc i64 %12 to i32
  %15 = getelementptr inbounds %struct.sp805_wdt, ptr %4, i32 0, i32 6
  store i32 %14, ptr %15, align 4
  %16 = shl nuw nsw i64 %12, 1
  %17 = add nuw i64 %7, 2
  %18 = add nuw i64 %17, %16
  %19 = trunc i64 %6 to i32
  %20 = icmp ult i64 %18, 4294967296
  br i1 %20, label %21, label %24, !prof !15

21:                                               ; preds = %2
  %22 = trunc i64 %18 to i32
  %23 = udiv i32 %22, %19
  br label %28

24:                                               ; preds = %2
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %18) #8, !srcloc !16
  %26 = extractvalue { i64, i64 } %25, 1
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i32 [ %23, %21 ], [ %27, %24 ]
  %30 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %29, ptr %30, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  %31 = load i16, ptr %13, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u64_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wdt_ping(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sp805_wdt, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.sp805_wdt, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 449635665) #6, !srcloc !10
  %8 = getelementptr inbounds %struct.sp805_wdt, ptr %3, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #6, !srcloc !10
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1) #6, !srcloc !10
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr i8, ptr %13, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 1) #6, !srcloc !10
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr i8, ptr %15, i32 3072
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  %18 = load i16, ptr %4, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wdt_timeleft(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sp805_wdt, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.sp805_wdt, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !9
  %9 = zext i32 %8 to i64
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr i8, ptr %10, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !9
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.sp805_wdt, ptr %3, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = add nuw nsw i64 %19, %9
  br label %21

21:                                               ; preds = %15, %1
  %22 = phi i64 [ %9, %1 ], [ %20, %15 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  %23 = load i16, ptr %4, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %25 = getelementptr inbounds %struct.sp805_wdt, ptr %3, i32 0, i32 4
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = icmp ult i64 %22, 4294967296
  br i1 %28, label %29, label %32, !prof !15

29:                                               ; preds = %21
  %30 = trunc i64 %22 to i32
  %31 = udiv i32 %30, %27
  br label %36

32:                                               ; preds = %21
  %33 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %27, i64 %22) #8, !srcloc !16
  %34 = extractvalue { i64, i64 } %33, 1
  %35 = trunc i64 %34 to i32
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i32 [ %31, %29 ], [ %35, %32 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wdt_restart(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sp805_wdt, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 449635665) #6, !srcloc !10
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #6, !srcloc !10
  %11 = load ptr, ptr %6, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #6, !srcloc !10
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 3) #6, !srcloc !10
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr i8, ptr %14, i32 3072
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

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
!9 = !{i64 4653933}
!10 = !{i64 4653515}
!11 = !{i64 2149216790}
!12 = !{i64 2149212614}
!13 = !{i64 2149212689, i64 2149212716, i64 2149212763, i64 2149212785, i64 2149212813, i64 2149212833}
!14 = !{i64 2149239793}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2148624900, i64 2148625180, i64 2148625514, i64 2148625848}
