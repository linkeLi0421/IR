; ModuleID = '/llk/IR/drivers/watchdog/bcm47xx_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/bcm47xx_wdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
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
%struct.bcm47xx_wdt = type { ptr, ptr, i32, ptr, %struct.watchdog_device, %struct.timer_list, %struct.atomic_t }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__param_str_timeout = internal constant [20 x i8] c"bcm47xx_wdt.timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global i32 30, align 4
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype162 = internal constant [33 x i8] c"bcm47xx_wdt.parmtype=timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout163 = internal constant [64 x i8] c"bcm47xx_wdt.parm=timeout:Watchdog time in seconds. (default=30)\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [21 x i8] c"bcm47xx_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global i8 0, align 1
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype164 = internal constant [35 x i8] c"bcm47xx_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout165 = internal constant [78 x i8] c"bcm47xx_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=0)\00", section ".modinfo", align 1
@__initcall__kmod_bcm47xx_wdt__168_238_bcm47xx_wdt_driver_init6 = internal global ptr @bcm47xx_wdt_driver_init, section ".initcall6.init", align 4
@bcm47xx_wdt_driver = internal global %struct.platform_driver { ptr @bcm47xx_wdt_probe, ptr @bcm47xx_wdt_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bcm47xx_wdt_driver_exit = internal global ptr @bcm47xx_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author169 = internal constant [42 x i8] c"bcm47xx_wdt.author=Aleksandar Radovanovic\00", section ".modinfo", align 1
@__UNIQUE_ID_author170 = internal constant [53 x i8] c"bcm47xx_wdt.author=Hauke Mehrtens <hauke@hauke-m.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [61 x i8] c"bcm47xx_wdt.description=Watchdog driver for Broadcom BCM47xx\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [46 x i8] c"bcm47xx_wdt.file=drivers/watchdog/bcm47xx_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [24 x i8] c"bcm47xx_wdt.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"bcm47xx-wdt\00", align 1
@bcm47xx_wdt_soft_ops = internal constant %struct.watchdog_ops { ptr null, ptr @bcm47xx_wdt_soft_start, ptr @bcm47xx_wdt_soft_stop, ptr @bcm47xx_wdt_soft_keepalive, ptr null, ptr @bcm47xx_wdt_soft_set_timeout, ptr null, ptr null, ptr @bcm47xx_wdt_restart, ptr null }, align 4
@bcm47xx_wdt_hard_ops = internal constant %struct.watchdog_ops { ptr null, ptr @bcm47xx_wdt_hard_start, ptr @bcm47xx_wdt_hard_stop, ptr @bcm47xx_wdt_hard_keepalive, ptr null, ptr @bcm47xx_wdt_hard_set_timeout, ptr null, ptr null, ptr @bcm47xx_wdt_restart, ptr null }, align 4
@bcm47xx_wdt_info = internal constant %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"bcm47xx_wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"BCM47xx Watchdog Timer enabled (%d seconds%s%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c", nowayout\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [17 x i8] c", Software Timer\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"\014bcm47xx_wdt: timeout value must be 1<=x<=%d, using %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.6 = private unnamed_addr constant [43 x i8] c"\012bcm47xx_wdt: Watchdog will fire soon!!!\0A\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author169, ptr @__UNIQUE_ID_author170, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__UNIQUE_ID_nowayout165, ptr @__UNIQUE_ID_nowayouttype164, ptr @__UNIQUE_ID_timeout163, ptr @__UNIQUE_ID_timeouttype162, ptr @__exitcall_bcm47xx_wdt_driver_exit, ptr @__initcall__kmod_bcm47xx_wdt__168_238_bcm47xx_wdt_driver_init6, ptr @__param_nowayout, ptr @__param_timeout, ptr @bcm47xx_wdt_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm47xx_wdt_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm47xx_wdt_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm47xx_wdt_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %46, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bcm47xx_wdt, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 60000
  %10 = getelementptr inbounds %struct.bcm47xx_wdt, ptr %4, i32 0, i32 4, i32 4
  br i1 %9, label %11, label %14

11:                                               ; preds = %6
  store ptr @bcm47xx_wdt_soft_ops, ptr %10, align 4
  %12 = getelementptr inbounds %struct.bcm47xx_wdt, ptr %4, i32 0, i32 5
  tail call void @init_timer_key(ptr noundef %12, ptr noundef nonnull @bcm47xx_wdt_soft_timer_tick, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  %13 = load ptr, ptr %10, align 4
  br label %15

14:                                               ; preds = %6
  store ptr @bcm47xx_wdt_hard_ops, ptr %10, align 4
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi ptr [ @bcm47xx_wdt_hard_ops, %14 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.bcm47xx_wdt, ptr %4, i32 0, i32 4
  %18 = getelementptr inbounds %struct.bcm47xx_wdt, ptr %4, i32 0, i32 4, i32 3
  store ptr @bcm47xx_wdt_info, ptr %18, align 4
  %19 = getelementptr inbounds %struct.bcm47xx_wdt, ptr %4, i32 0, i32 4, i32 7
  store i32 30, ptr %19, align 4
  %20 = getelementptr inbounds %struct.bcm47xx_wdt, ptr %4, i32 0, i32 4, i32 1
  store ptr %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.watchdog_ops, ptr %16, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr @timeout, align 4
  %24 = tail call i32 %22(ptr noundef %17, i32 noundef %23) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %15
  %27 = load i8, ptr @nowayout, align 1, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.bcm47xx_wdt, ptr %4, i32 0, i32 4, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %30) #7
  br label %31

31:                                               ; preds = %29, %26
  tail call void @watchdog_set_restart_priority(ptr noundef %17, i32 noundef 64) #7
  %32 = getelementptr inbounds %struct.bcm47xx_wdt, ptr %4, i32 0, i32 4, i32 18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %32) #7
  %33 = tail call i32 @watchdog_register_device(ptr noundef %17) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, ptr @timeout, align 4
  %37 = load i8, ptr @nowayout, align 1, !range !8
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, ptr @.str.3, ptr @.str.2
  %40 = select i1 %9, ptr @.str.4, ptr @.str.3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %36, ptr noundef nonnull %39, ptr noundef nonnull %40) #8
  br label %46

41:                                               ; preds = %31, %15
  %42 = phi i32 [ %24, %15 ], [ %33, %31 ]
  br i1 %9, label %43, label %46

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.bcm47xx_wdt, ptr %4, i32 0, i32 5
  %45 = tail call i32 @del_timer_sync(ptr noundef %44) #7
  br label %46

46:                                               ; preds = %43, %41, %35, %1
  %47 = phi i32 [ 0, %35 ], [ -6, %1 ], [ %42, %43 ], [ %42, %41 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm47xx_wdt, ptr %3, i32 0, i32 4
  tail call void @watchdog_unregister_device(ptr noundef %4) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm47xx_wdt_soft_timer_tick(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -80
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -116
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #7, !srcloc !10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #7, !srcloc !11
  %8 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -124
  %12 = mul i32 %3, 1000
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %5)
  %14 = getelementptr i8, ptr %0, i32 -120
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %11, i32 noundef %13) #7
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = add i32 %17, 100
  %19 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %18) #7
  br label %22

20:                                               ; preds = %1
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %22

22:                                               ; preds = %20, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_soft_start(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 128
  %3 = getelementptr %struct.watchdog_device, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  store volatile i32 %4, ptr %2, align 4
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load i32, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #7, !srcloc !10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #7, !srcloc !11
  %8 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 108
  %12 = getelementptr i8, ptr %0, i32 -16
  %13 = mul i32 %4, 1000
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 %6) #7
  %15 = getelementptr i8, ptr %0, i32 -12
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %12, i32 noundef %14) #7
  %18 = load volatile i32, ptr @jiffies, align 64
  %19 = add i32 %18, 100
  %20 = tail call i32 @mod_timer(ptr noundef %11, i32 noundef %19) #7
  br label %23

21:                                               ; preds = %1
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %23

23:                                               ; preds = %21, %10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_soft_stop(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = getelementptr i8, ptr %0, i32 108
  %4 = tail call i32 @del_timer_sync(ptr noundef %3) #7
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 %5(ptr noundef %2, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_soft_keepalive(ptr noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 128
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  store volatile i32 %4, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_soft_set_timeout(ptr nocapture noundef writeonly %0, i32 noundef %1) #2 {
  %3 = add i32 %1, -256
  %4 = icmp ult i32 %3, -255
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 255, i32 noundef %1) #8
  br label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %1, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ -22, %5 ], [ 0, %7 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_restart(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %4, i32 noundef 1) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bcm47xx_wdt_hard_start(ptr nocapture noundef readnone %0) #5 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_hard_stop(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %2, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_hard_keepalive(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = mul i32 %6, 1000
  %8 = tail call i32 %4(ptr noundef %2, i32 noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm47xx_wdt_hard_set_timeout(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  %6 = udiv i32 %4, 1000
  %7 = icmp ult i32 %6, %1
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %6, i32 noundef %1) #8
  br label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %1, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ -22, %9 ], [ 0, %11 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i64 2148127002}
!10 = !{i64 524937, i64 2148014908, i64 2148014934, i64 2148014981, i64 2148015003, i64 2148015031, i64 2148015051}
!11 = !{i64 2148029364, i64 2148029396, i64 2148029425, i64 2148029459, i64 2148029490, i64 2148029513}
!12 = !{i64 2148127205}
