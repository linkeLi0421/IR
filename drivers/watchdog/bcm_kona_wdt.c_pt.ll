; ModuleID = '/llk/IR/drivers/watchdog/bcm_kona_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/bcm_kona_wdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.bcm_kona_wdt = type { ptr, i32, %struct.spinlock }

@__initcall__kmod_bcm_kona_wdt__202_336_bcm_kona_wdt_driver_init6 = internal global ptr @bcm_kona_wdt_driver_init, section ".initcall6.init", align 4
@bcm_kona_wdt_driver = internal global %struct.platform_driver { ptr @bcm_kona_wdt_probe, ptr @bcm_kona_wdt_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_kona_wdt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bcm_kona_wdt_driver_exit = internal global ptr @bcm_kona_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias203 = internal constant [41 x i8] c"bcm_kona_wdt.alias=platform:bcm_kona_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_author204 = internal constant [55 x i8] c"bcm_kona_wdt.author=Markus Mayer <mmayer@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description205 = internal constant [55 x i8] c"bcm_kona_wdt.description=Broadcom Kona Watchdog Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file206 = internal constant [48 x i8] c"bcm_kona_wdt.file=drivers/watchdog/bcm_kona_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license207 = internal constant [28 x i8] c"bcm_kona_wdt.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"bcm_kona_wdt\00", align 1
@bcm_kona_wdt_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,kona-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to set resolution (error: %d)\00", align 1
@bcm_kona_wdt_wdd = internal global %struct.watchdog_device { i32 0, ptr null, ptr null, ptr @bcm_kona_wdt_info, ptr @bcm_kona_wdt_ops, ptr null, i32 0, i32 65535, i32 0, i32 1, i32 65535, i32 0, i32 0, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, i32 0, %struct.list_head zeroinitializer }, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed set watchdog timeout\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bcm_kona_wdt_info = internal constant %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"Broadcom Kona Watchdog Timer\00\00\00\00" }, align 4
@bcm_kona_wdt_ops = internal constant %struct.watchdog_ops { ptr null, ptr @bcm_kona_wdt_start, ptr @bcm_kona_wdt_stop, ptr null, ptr null, ptr @bcm_kona_wdt_set_timeout, ptr null, ptr @bcm_kona_wdt_get_timeleft, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias203, ptr @__UNIQUE_ID_author204, ptr @__UNIQUE_ID_description205, ptr @__UNIQUE_ID_file206, ptr @__UNIQUE_ID_license207, ptr @__exitcall_bcm_kona_wdt_driver_exit, ptr @__initcall__kmod_bcm_kona_wdt__202_336_bcm_kona_wdt_driver_init6, ptr @bcm_kona_wdt_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm_kona_wdt_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_kona_wdt_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm_kona_wdt_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_kona_wdt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kona_wdt_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 12, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %72, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bcm_kona_wdt, ptr %3, i32 0, i32 2
  store i32 0, ptr %6, align 4
  %7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  store ptr %7, ptr %3, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %7 to i32
  br label %72

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.bcm_kona_wdt, ptr %3, i32 0, i32 1
  store i32 4, ptr %12, align 4
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #6
  %14 = load ptr, ptr %3, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !8
  %16 = and i32 %15, 268435456
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %3, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !8
  %21 = and i32 %20, 268435456
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %23, %18
  %24 = phi i32 [ %28, %23 ], [ 2, %18 ]
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 1073740) #6
  %26 = load ptr, ptr %3, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !8
  %28 = add nuw nsw i32 %24, 1
  %29 = and i32 %27, 268435456
  %30 = icmp ne i32 %29, 0
  %31 = icmp ult i32 %24, 999
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %23, label %33, !llvm.loop !9

33:                                               ; preds = %23
  br i1 %30, label %34, label %35

34:                                               ; preds = %33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %13) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef -110) #7
  br label %72

35:                                               ; preds = %33, %18, %11
  %36 = phi i32 [ %27, %33 ], [ %20, %18 ], [ %15, %11 ]
  %37 = and i32 %36, 487587839
  %38 = or i32 %37, 4194304
  %39 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %38) #6, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %13) #6
  %40 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %40, align 8
  store ptr %3, ptr getelementptr inbounds (%struct.watchdog_device, ptr @bcm_kona_wdt_wdd, i32 0, i32 16), align 4
  store ptr %2, ptr getelementptr inbounds (%struct.watchdog_device, ptr @bcm_kona_wdt_wdd, i32 0, i32 1), align 4
  %41 = load i32, ptr getelementptr inbounds (%struct.watchdog_device, ptr @bcm_kona_wdt_wdd, i32 0, i32 7), align 4
  %42 = load i32, ptr %12, align 4
  %43 = shl i32 %41, %42
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #6
  %45 = load ptr, ptr %3, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #6, !srcloc !8
  %47 = and i32 %46, 268435456
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %35
  %50 = load ptr, ptr %3, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #6, !srcloc !8
  %52 = and i32 %51, 268435456
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %54, %49
  %55 = phi i32 [ %59, %54 ], [ 2, %49 ]
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 1073740) #6
  %57 = load ptr, ptr %3, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #6, !srcloc !8
  %59 = add nuw nsw i32 %55, 1
  %60 = and i32 %58, 268435456
  %61 = icmp ne i32 %60, 0
  %62 = icmp ult i32 %55, 999
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %54, label %64, !llvm.loop !9

64:                                               ; preds = %54
  br i1 %61, label %65, label %66

65:                                               ; preds = %64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %44) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #7
  br label %72

66:                                               ; preds = %64, %49, %35
  %67 = phi i32 [ %58, %64 ], [ %51, %49 ], [ %46, %35 ]
  %68 = and i32 %67, 502267904
  %69 = or i32 %68, %43
  %70 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %69) #6, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %44) #6
  tail call void @_set_bit(i32 noundef 2, ptr noundef getelementptr inbounds (%struct.watchdog_device, ptr @bcm_kona_wdt_wdd, i32 0, i32 18)) #6
  tail call void @_set_bit(i32 noundef 4, ptr noundef getelementptr inbounds (%struct.watchdog_device, ptr @bcm_kona_wdt_wdd, i32 0, i32 18)) #6
  %71 = tail call i32 @devm_watchdog_register_device(ptr noundef %2, ptr noundef nonnull @bcm_kona_wdt_wdd) #6
  br label %72

72:                                               ; preds = %66, %65, %34, %9, %1
  %73 = phi i32 [ %10, %9 ], [ -110, %34 ], [ -110, %65 ], [ -12, %1 ], [ %71, %66 ]
  ret i32 %73
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bcm_kona_wdt_remove(ptr nocapture noundef readnone %0) #3 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kona_wdt_start(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm_kona_wdt, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %5, %7
  %9 = getelementptr inbounds %struct.bcm_kona_wdt, ptr %3, i32 0, i32 2
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #6
  %11 = load ptr, ptr %3, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !8
  %13 = and i32 %12, 268435456
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %1
  %16 = load ptr, ptr %3, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !8
  %18 = and i32 %17, 268435456
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %20, %15
  %21 = phi i32 [ %25, %20 ], [ 2, %15 ]
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 1073740) #6
  %23 = load ptr, ptr %3, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !8
  %25 = add nuw nsw i32 %21, 1
  %26 = and i32 %24, 268435456
  %27 = icmp ne i32 %26, 0
  %28 = icmp ult i32 %21, 999
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %20, label %30, !llvm.loop !9

30:                                               ; preds = %20
  br i1 %27, label %37, label %31

31:                                               ; preds = %30, %15, %1
  %32 = phi i32 [ %24, %30 ], [ %17, %15 ], [ %12, %1 ]
  %33 = and i32 %32, 300941312
  %34 = or i32 %8, %33
  %35 = or i32 %34, 201326592
  %36 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #6, !srcloc !11
  br label %37

37:                                               ; preds = %31, %30
  %38 = phi i32 [ 0, %31 ], [ -110, %30 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #6
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kona_wdt_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm_kona_wdt, ptr %3, i32 0, i32 2
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #6
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !8
  %8 = and i32 %7, 268435456
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !8
  %13 = and i32 %12, 268435456
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %15, %10
  %16 = phi i32 [ %20, %15 ], [ 2, %10 ]
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 1073740) #6
  %18 = load ptr, ptr %3, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !8
  %20 = add nuw nsw i32 %16, 1
  %21 = and i32 %19, 268435456
  %22 = icmp ne i32 %21, 0
  %23 = icmp ult i32 %16, 999
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %15, label %25, !llvm.loop !9

25:                                               ; preds = %15
  br i1 %22, label %30, label %26

26:                                               ; preds = %25, %10, %1
  %27 = phi i32 [ %19, %25 ], [ %12, %10 ], [ %7, %1 ]
  %28 = and i32 %27, 301989887
  %29 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %28) #6, !srcloc !11
  br label %30

30:                                               ; preds = %26, %25
  %31 = phi i32 [ 0, %26 ], [ -110, %25 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #6
  ret i32 %31
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bcm_kona_wdt_set_timeout(ptr nocapture noundef writeonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %1, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kona_wdt_get_timeleft(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm_kona_wdt, ptr %3, i32 0, i32 2
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #6
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !8
  %9 = and i32 %8, 268435456
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !8
  %15 = and i32 %14, 268435456
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %17, %11
  %18 = phi i32 [ %23, %17 ], [ 2, %11 ]
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 1073740) #6
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr i8, ptr %20, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !8
  %23 = add nuw nsw i32 %18, 1
  %24 = and i32 %22, 268435456
  %25 = icmp ne i32 %24, 0
  %26 = icmp ult i32 %18, 999
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %17, label %28, !llvm.loop !9

28:                                               ; preds = %17
  br i1 %25, label %29, label %30

29:                                               ; preds = %28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #6
  br label %36

30:                                               ; preds = %28, %11, %1
  %31 = phi i32 [ %22, %28 ], [ %14, %11 ], [ %8, %1 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #6
  %32 = and i32 %31, 1048575
  %33 = getelementptr inbounds %struct.bcm_kona_wdt, ptr %3, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = lshr i32 %32, %34
  br label %36

36:                                               ; preds = %30, %29
  %37 = phi i32 [ %35, %30 ], [ -110, %29 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 3895569}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.peeled.count", i32 2}
!11 = !{i64 3895151}
