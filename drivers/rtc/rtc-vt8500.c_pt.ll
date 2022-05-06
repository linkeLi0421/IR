; ModuleID = '/llk/IR/drivers/rtc/rtc-vt8500.c_pt.bc'
source_filename = "../drivers/rtc/rtc-vt8500.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.vt8500_rtc = type { ptr, i32, ptr, %struct.spinlock }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_vt8500__210_263_vt8500_rtc_driver_init6 = internal global ptr @vt8500_rtc_driver_init, section ".initcall6.init", align 4
@vt8500_rtc_driver = internal global %struct.platform_driver { ptr @vt8500_rtc_probe, ptr @vt8500_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wmt_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_vt8500_rtc_driver_exit = internal global ptr @vt8500_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [53 x i8] c"rtc_vt8500.author=Alexey Charkov <alchark@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [66 x i8] c"rtc_vt8500.description=VIA VT8500 SoC Realtime Clock Driver (RTC)\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [39 x i8] c"rtc_vt8500.file=drivers/rtc/rtc-vt8500\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [26 x i8] c"rtc_vt8500.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias215 = internal constant [37 x i8] c"rtc_vt8500.alias=platform:vt8500-rtc\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"vt8500-rtc\00", align 1
@wmt_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"via,vt8500-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@vt8500_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @vt8500_rtc_read_time, ptr @vt8500_rtc_set_time, ptr @vt8500_rtc_read_alarm, ptr @vt8500_rtc_set_alarm, ptr null, ptr @vt8500_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"rtc alarm\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"can't get irq %i, err %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias215, ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_vt8500_rtc_driver_exit, ptr @__initcall__kmod_rtc_vt8500__210_263_vt8500_rtc_driver_init6, ptr @vt8500_rtc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @vt8500_rtc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vt8500_rtc_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @vt8500_rtc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @vt8500_rtc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_rtc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 16, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.vt8500_rtc, ptr %3, i32 0, i32 3
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %7, align 8
  %8 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %9 = getelementptr inbounds %struct.vt8500_rtc, ptr %3, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = icmp slt i32 %8, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %5
  %12 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  store ptr %12, ptr %3, align 4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = ptrtoint ptr %12 to i32
  br label %38

16:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 1) #5, !srcloc !9
  %19 = tail call ptr @devm_rtc_allocate_device(ptr noundef %2) #5
  %20 = getelementptr inbounds %struct.vt8500_rtc, ptr %3, i32 0, i32 2
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = ptrtoint ptr %19 to i32
  br label %38

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.rtc_device, ptr %19, i32 0, i32 3
  store ptr @vt8500_rtc_ops, ptr %25, align 8
  %26 = load ptr, ptr %20, align 4
  %27 = getelementptr inbounds %struct.rtc_device, ptr %26, i32 0, i32 22
  store i64 946684800, ptr %27, align 8
  %28 = load ptr, ptr %20, align 4
  %29 = getelementptr inbounds %struct.rtc_device, ptr %28, i32 0, i32 23
  store i64 7258118399, ptr %29, align 8
  %30 = load i32, ptr %9, align 4
  %31 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %30, ptr noundef nonnull @vt8500_rtc_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #5
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %34, i32 noundef %31) #6
  br label %38

35:                                               ; preds = %24
  %36 = load ptr, ptr %20, align 4
  %37 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %36) #5
  br label %38

38:                                               ; preds = %35, %33, %22, %14, %5, %1
  %39 = phi i32 [ %15, %14 ], [ %23, %22 ], [ %31, %33 ], [ %37, %35 ], [ -12, %1 ], [ %8, %5 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_rtc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_rtc_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.vt8500_rtc, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %3) #5
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr i8, ptr %4, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #5, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  %9 = load i16, ptr %3, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !17
  %11 = and i32 %6, 1
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 0, i32 160
  %14 = getelementptr inbounds %struct.vt8500_rtc, ptr %1, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void @rtc_update_irq(ptr noundef %15, i32 noundef 1, i32 noundef %13) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_rtc_read_time(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 127
  %13 = tail call i32 @_bcd2bin(i8 noundef zeroext %12) #7
  store i32 %13, ptr %1, align 4
  %14 = lshr i32 %10, 7
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 127
  %17 = tail call i32 @_bcd2bin(i8 noundef zeroext %16) #7
  %18 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = lshr i32 %10, 14
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 63
  %22 = tail call i32 @_bcd2bin(i8 noundef zeroext %21) #7
  %23 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = trunc i32 %7 to i8
  %25 = and i8 %24, 63
  %26 = tail call i32 @_bcd2bin(i8 noundef zeroext %25) #7
  %27 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %26, ptr %27, align 4
  %28 = lshr i32 %7, 6
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 31
  %31 = tail call i32 @_bcd2bin(i8 noundef zeroext %30) #7
  %32 = add i32 %31, -1
  %33 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %32, ptr %33, align 4
  %34 = lshr i32 %7, 11
  %35 = trunc i32 %34 to i8
  %36 = tail call i32 @_bcd2bin(i8 noundef zeroext %35) #7
  %37 = and i32 %7, 524288
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 100, i32 200
  %40 = add i32 %36, %39
  %41 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %40, ptr %41, align 4
  %42 = lshr i32 %10, 20
  %43 = and i32 %42, 7
  %44 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %43, ptr %44, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_rtc_set_time(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %5 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = srem i32 %6, 100
  %8 = tail call zeroext i8 @_bin2bcd(i32 noundef %7) #7
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 11
  %11 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  %14 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #7
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 6
  %17 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = tail call zeroext i8 @_bin2bcd(i32 noundef %18) #7
  %20 = zext i8 %19 to i32
  %21 = icmp sgt i32 %6, 199
  %22 = select i1 %21, i32 524288, i32 0
  %23 = or i32 %10, %22
  %24 = or i32 %23, %16
  %25 = or i32 %24, %20
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %28 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %1, align 4
  %35 = tail call zeroext i8 @_bin2bcd(i32 noundef %34) #7
  %36 = zext i8 %35 to i32
  %37 = tail call zeroext i8 @_bin2bcd(i32 noundef %33) #7
  %38 = zext i8 %37 to i32
  %39 = tail call zeroext i8 @_bin2bcd(i32 noundef %31) #7
  %40 = zext i8 %39 to i32
  %41 = tail call zeroext i8 @_bin2bcd(i32 noundef %29) #7
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 20
  %44 = shl nuw nsw i32 %40, 14
  %45 = or i32 %44, %43
  %46 = shl nuw nsw i32 %38, 7
  %47 = or i32 %45, %46
  %48 = or i32 %47, %36
  %49 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %48) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_rtc_read_alarm(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !22
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 36
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !23
  %11 = lshr i32 %7, 20
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 63
  %14 = tail call i32 @_bcd2bin(i8 noundef zeroext %13) #7
  %15 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %14, ptr %15, align 4
  %16 = lshr i32 %7, 14
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 63
  %19 = tail call i32 @_bcd2bin(i8 noundef zeroext %18) #7
  %20 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %19, ptr %20, align 4
  %21 = lshr i32 %7, 7
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 127
  %24 = tail call i32 @_bcd2bin(i8 noundef zeroext %23) #7
  %25 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %24, ptr %25, align 4
  %26 = trunc i32 %7 to i8
  %27 = and i8 %26, 127
  %28 = tail call i32 @_bcd2bin(i8 noundef zeroext %27) #7
  %29 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = and i32 %7, 1006632960
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i8
  store i8 %32, ptr %1, align 4
  %33 = trunc i32 %10 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 1
  store i8 %34, ptr %35, align 1
  %36 = tail call i32 @rtc_valid_tm(ptr noundef %29) #5
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_rtc_set_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %5 = load i8, ptr %1, align 4
  %6 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #7
  %15 = zext i8 %14 to i32
  %16 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #7
  %17 = zext i8 %16 to i32
  %18 = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #7
  %19 = zext i8 %18 to i32
  %20 = tail call zeroext i8 @_bin2bcd(i32 noundef %7) #7
  %21 = zext i8 %20 to i32
  %22 = icmp eq i8 %5, 0
  %23 = select i1 %22, i32 0, i32 1006632960
  %24 = shl nuw nsw i32 %21, 20
  %25 = or i32 %24, %23
  %26 = shl nuw nsw i32 %19, 14
  %27 = or i32 %25, %26
  %28 = shl nuw nsw i32 %17, 7
  %29 = or i32 %27, %28
  %30 = or i32 %29, %15
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !25
  %8 = icmp eq i32 %1, 0
  %9 = and i32 %7, -1006632961
  %10 = select i1 %8, i32 0, i32 1006632960
  %11 = or i32 %9, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_valid_tm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone willreturn }

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
!8 = !{i64 2152427493}
!9 = !{i64 3473192}
!10 = !{i64 2152428562}
!11 = !{i64 3473610}
!12 = !{i64 2152412558}
!13 = !{i64 2152412757}
!14 = !{i64 2148931897}
!15 = !{i64 2148927721}
!16 = !{i64 2148927796, i64 2148927823, i64 2148927870, i64 2148927892, i64 2148927920, i64 2148927940}
!17 = !{i64 2148954900}
!18 = !{i64 2152413280}
!19 = !{i64 2152413646}
!20 = !{i64 2152416400}
!21 = !{i64 2152418970}
!22 = !{i64 2152420612}
!23 = !{i64 2152420978}
!24 = !{i64 2152424052}
!25 = !{i64 2152426070}
!26 = !{i64 2152426515}
