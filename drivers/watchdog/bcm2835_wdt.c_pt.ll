; ModuleID = '/llk/IR/drivers/watchdog/bcm2835_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/bcm2835_wdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bcm2835_wdt = type { ptr, %struct.spinlock }
%struct.bcm2835_pm = type { ptr, ptr, ptr }

@__initcall__kmod_bcm2835_wdt__162_236_bcm2835_wdt_driver_init6 = internal global ptr @bcm2835_wdt_driver_init, section ".initcall6.init", align 4
@bcm2835_wdt_driver = internal global %struct.platform_driver { ptr @bcm2835_wdt_probe, ptr @bcm2835_wdt_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bcm2835_wdt_driver_exit = internal global ptr @bcm2835_wdt_driver_exit, section ".exitcall.exit", align 4
@__param_str_heartbeat = internal constant [22 x i8] c"bcm2835_wdt.heartbeat\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@heartbeat = internal global i32 0, align 4
@__param_heartbeat = internal constant %struct.kernel_param { ptr @__param_str_heartbeat, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @heartbeat } }, section "__param", align 4
@__UNIQUE_ID_heartbeattype163 = internal constant [36 x i8] c"bcm2835_wdt.parmtype=heartbeat:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_heartbeat164 = internal constant [65 x i8] c"bcm2835_wdt.parm=heartbeat:Initial watchdog heartbeat in seconds\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [21 x i8] c"bcm2835_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global i8 0, align 1
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype165 = internal constant [35 x i8] c"bcm2835_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout166 = internal constant [78 x i8] c"bcm2835_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=0)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias167 = internal constant [39 x i8] c"bcm2835_wdt.alias=platform:bcm2835-wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_author168 = internal constant [51 x i8] c"bcm2835_wdt.author=Lubomir Rintel <lkundrak@v3.sk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description169 = internal constant [67 x i8] c"bcm2835_wdt.description=Driver for Broadcom BCM2835 watchdog timer\00", section ".modinfo", align 1
@__UNIQUE_ID_file170 = internal constant [46 x i8] c"bcm2835_wdt.file=drivers/watchdog/bcm2835_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [24 x i8] c"bcm2835_wdt.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"bcm2835-wdt\00", align 1
@bcm2835_wdt_wdd = internal global %struct.watchdog_device { i32 0, ptr null, ptr null, ptr @bcm2835_wdt_info, ptr @bcm2835_wdt_ops, ptr null, i32 0, i32 15, i32 0, i32 1, i32 15, i32 0, i32 0, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, i32 0, %struct.list_head zeroinitializer }, align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@bcm2835_power_off_wdt = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Poweroff handler already present!\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Broadcom BCM2835 watchdog timer\00", align 1
@bcm2835_wdt_info = internal constant %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"Broadcom BCM2835 Watchdog timer\00" }, align 4
@bcm2835_wdt_ops = internal constant %struct.watchdog_ops { ptr null, ptr @bcm2835_wdt_start, ptr @bcm2835_wdt_stop, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_wdt_get_timeleft, ptr @bcm2835_restart, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"system-power-controller\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias167, ptr @__UNIQUE_ID_author168, ptr @__UNIQUE_ID_description169, ptr @__UNIQUE_ID_file170, ptr @__UNIQUE_ID_heartbeat164, ptr @__UNIQUE_ID_heartbeattype163, ptr @__UNIQUE_ID_license171, ptr @__UNIQUE_ID_nowayout166, ptr @__UNIQUE_ID_nowayouttype165, ptr @__exitcall_bcm2835_wdt_driver_exit, ptr @__initcall__kmod_bcm2835_wdt__162_236_bcm2835_wdt_driver_init6, ptr @__param_heartbeat, ptr @__param_nowayout, ptr @bcm2835_wdt_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm2835_wdt_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_wdt_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm2835_wdt_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835_wdt_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_wdt_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 8, i32 noundef 3520) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bcm2835_wdt, ptr %7, i32 0, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.bcm2835_pm, ptr %6, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  store ptr %12, ptr %7, align 4
  store ptr %7, ptr getelementptr inbounds (%struct.watchdog_device, ptr @bcm2835_wdt_wdd, i32 0, i32 16), align 4
  %13 = load i32, ptr @heartbeat, align 4
  %14 = tail call i32 @watchdog_init_timeout(ptr noundef nonnull @bcm2835_wdt_wdd, i32 noundef %13, ptr noundef %2) #5
  %15 = load i8, ptr @nowayout, align 1, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  tail call void @_set_bit(i32 noundef 1, ptr noundef getelementptr inbounds (%struct.watchdog_device, ptr @bcm2835_wdt_wdd, i32 0, i32 18)) #5
  br label %18

18:                                               ; preds = %17, %9
  store ptr %2, ptr getelementptr inbounds (%struct.watchdog_device, ptr @bcm2835_wdt_wdd, i32 0, i32 1), align 4
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr i8, ptr %19, i32 28
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void @_set_bit(i32 noundef 3, ptr noundef getelementptr inbounds (%struct.watchdog_device, ptr @bcm2835_wdt_wdd, i32 0, i32 18)) #5
  br label %25

25:                                               ; preds = %24, %18
  tail call void @watchdog_set_restart_priority(ptr noundef nonnull @bcm2835_wdt_wdd, i32 noundef 128) #5
  tail call void @_set_bit(i32 noundef 2, ptr noundef getelementptr inbounds (%struct.watchdog_device, ptr @bcm2835_wdt_wdd, i32 0, i32 18)) #5
  %26 = tail call i32 @devm_watchdog_register_device(ptr noundef %2, ptr noundef nonnull @bcm2835_wdt_wdd) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 25
  %31 = load ptr, ptr %30, align 8
  %32 = tail call ptr @of_find_property(ptr noundef %31, ptr noundef nonnull @.str.3, ptr noundef null) #5
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr @pm_power_off, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store ptr @bcm2835_power_off, ptr @pm_power_off, align 4
  store ptr %7, ptr @bcm2835_power_off_wdt, align 4
  br label %39

38:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %39

39:                                               ; preds = %38, %37, %28
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  br label %40

40:                                               ; preds = %39, %25, %1
  %41 = phi i32 [ 0, %39 ], [ -12, %1 ], [ %26, %25 ]
  ret i32 %41
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_wdt_remove(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr @pm_power_off, align 4
  %3 = icmp eq ptr %2, @bcm2835_power_off
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store ptr null, ptr @pm_power_off, align 4
  br label %5

5:                                                ; preds = %4, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_power_off() #2 {
  %1 = load ptr, ptr @bcm2835_power_off_wdt, align 4
  %2 = load ptr, ptr %1, align 4
  %3 = getelementptr i8, ptr %2, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !9
  %5 = or i32 %4, 1509950805
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #5, !srcloc !11
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr i8, ptr %8, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1509949450) #5, !srcloc !11
  %10 = load ptr, ptr %1, align 4
  %11 = getelementptr i8, ptr %10, i32 28
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !9
  %13 = and i32 %12, -1509949489
  %14 = or i32 %13, 1509949472
  %15 = load ptr, ptr %1, align 4
  %16 = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #5, !srcloc !11
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_wdt_start(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm2835_wdt, ptr %3, i32 0, i32 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 16
  %9 = and i32 %8, 983040
  %10 = or i32 %9, 1509949440
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !11
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 28
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !9
  %16 = and i32 %15, -1509949489
  %17 = or i32 %16, 1509949472
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr i8, ptr %18, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_wdt_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1509949698) #5, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_wdt_get_timeleft(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !9
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 15
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_restart(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1509949450) #5, !srcloc !11
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 28
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !9
  %11 = and i32 %10, -1509949489
  %12 = or i32 %11, 1509949472
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr i8, ptr %13, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #5, !srcloc !11
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 2461454}
!10 = !{i64 2151448906}
!11 = !{i64 2461036}
