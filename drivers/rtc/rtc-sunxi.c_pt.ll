; ModuleID = '/llk/IR/drivers/rtc/rtc-sunxi.c_pt.bc'
source_filename = "../drivers/rtc/rtc-sunxi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sunxi_rtc_data_year = type { i32, i32, i32, i8 }
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
%struct.sunxi_rtc_dev = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_sunxi__210_484_sunxi_rtc_driver_init6 = internal global ptr @sunxi_rtc_driver_init, section ".initcall6.init", align 4
@sunxi_rtc_driver = internal global %struct.platform_driver { ptr @sunxi_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sunxi_rtc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sunxi_rtc_driver_exit = internal global ptr @sunxi_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description211 = internal constant [39 x i8] c"rtc_sunxi.description=sunxi RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author212 = internal constant [55 x i8] c"rtc_sunxi.author=Carlo Caione <carlo.caione@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [37 x i8] c"rtc_sunxi.file=drivers/rtc/rtc-sunxi\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [22 x i8] c"rtc_sunxi.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"sunxi-rtc\00", align 1
@sunxi_rtc_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @data_year_param }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @data_year_param, i64 16) }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Could not request IRQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unable to setup RTC data\0A\00", align 1
@sunxi_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @sunxi_rtc_gettime, ptr @sunxi_rtc_settime, ptr @sunxi_rtc_getalarm, ptr @sunxi_rtc_setalarm, ptr null, ptr @sunxi_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"rtc only supports year in range %u - %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to set rtc time.\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.6 = private unnamed_addr constant [25 x i8] c"Date to set in the past\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Day must be in the range 0 - 255\0A\00", align 1
@data_year_param = internal constant [2 x %struct.sunxi_rtc_data_year] [%struct.sunxi_rtc_data_year { i32 2010, i32 2073, i32 63, i8 22 }, %struct.sunxi_rtc_data_year { i32 1970, i32 2225, i32 255, i8 24 }], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_sunxi_rtc_driver_exit, ptr @__initcall__kmod_rtc_sunxi__210_484_sunxi_rtc_driver_init6, ptr @sunxi_rtc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sunxi_rtc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sunxi_rtc_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sunxi_rtc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sunxi_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_rtc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 20, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %6, align 8
  %7 = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %3, i32 0, i32 1
  store ptr %2, ptr %7, align 4
  %8 = tail call ptr @devm_rtc_allocate_device(ptr noundef %2) #6
  store ptr %8, ptr %3, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = ptrtoint ptr %8 to i32
  br label %51

12:                                               ; preds = %5
  %13 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %14 = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %3, i32 0, i32 3
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = ptrtoint ptr %13 to i32
  br label %51

18:                                               ; preds = %12
  %19 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %20 = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %3, i32 0, i32 4
  store i32 %19, ptr %20, align 4
  %21 = icmp slt i32 %19, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load ptr, ptr %2, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi ptr [ %27, %26 ], [ %24, %22 ]
  %30 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %19, ptr noundef nonnull @sunxi_rtc_alarmirq, ptr noundef null, i32 noundef 0, ptr noundef %29, ptr noundef nonnull %3) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  br label %51

33:                                               ; preds = %28
  %34 = tail call ptr @of_device_get_match_data(ptr noundef %2) #6
  %35 = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %3, i32 0, i32 2
  store ptr %34, ptr %35, align 4
  %36 = icmp eq ptr %34, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #7
  br label %51

38:                                               ; preds = %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %39 = load ptr, ptr %14, align 4
  %40 = getelementptr i8, ptr %39, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %41 = load ptr, ptr %14, align 4
  %42 = getelementptr i8, ptr %41, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %43 = load ptr, ptr %14, align 4
  %44 = getelementptr i8, ptr %43, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %45 = load ptr, ptr %14, align 4
  %46 = getelementptr i8, ptr %45, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 1) #6, !srcloc !9
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr inbounds %struct.rtc_device, ptr %47, i32 0, i32 3
  store ptr @sunxi_rtc_ops, ptr %48, align 8
  %49 = load ptr, ptr %3, align 4
  %50 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %49) #6
  br label %51

51:                                               ; preds = %38, %37, %32, %18, %16, %10, %1
  %52 = phi i32 [ %11, %10 ], [ %17, %16 ], [ %30, %32 ], [ %50, %38 ], [ -19, %37 ], [ -12, %1 ], [ %19, %18 ]
  ret i32 %52
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_rtc_alarmirq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = or i32 %6, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #6, !srcloc !9
  %13 = load ptr, ptr %1, align 4
  tail call void @rtc_update_irq(ptr noundef %13, i32 noundef 1, i32 noundef 160) #6
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i32 [ 1, %9 ], [ 0, %2 ]
  ret i32 %15
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_rtc_gettime(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %4, i32 0, i32 3
  br label %6

6:                                                ; preds = %22, %2
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !16
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %16 = icmp eq i32 %9, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %6
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %21 = icmp eq i32 %12, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %6
  br label %6

23:                                               ; preds = %17
  %24 = and i32 %12, 63
  store i32 %24, ptr %1, align 4
  %25 = lshr i32 %12, 8
  %26 = and i32 %25, 63
  %27 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  %28 = lshr i32 %12, 16
  %29 = and i32 %28, 31
  %30 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  %31 = and i32 %9, 31
  %32 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %31, ptr %32, align 4
  %33 = lshr i32 %9, 8
  %34 = and i32 %33, 15
  %35 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %4, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.sunxi_rtc_data_year, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = shl i32 %39, 16
  %41 = and i32 %40, %9
  %42 = lshr exact i32 %41, 16
  %43 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %42, ptr %43, align 4
  %44 = add nsw i32 %34, -1
  store i32 %44, ptr %35, align 4
  %45 = load ptr, ptr %36, align 4
  %46 = load i32, ptr %45, align 4
  %47 = add nsw i32 %42, -1900
  %48 = add i32 %47, %46
  store i32 %48, ptr %43, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_rtc_settime(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1900
  %8 = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %7, %10
  %12 = getelementptr inbounds %struct.sunxi_rtc_data_year, ptr %9, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %7, %13
  %15 = select i1 %11, i1 true, i1 %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %10, i32 noundef %13) #7
  br label %96

17:                                               ; preds = %2
  %18 = sub i32 %7, %10
  store i32 %18, ptr %5, align 4
  %19 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 31
  %25 = shl i32 %21, 8
  %26 = and i32 %25, 3840
  %27 = or i32 %24, %26
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr inbounds %struct.sunxi_rtc_data_year, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, %18
  %32 = shl i32 %31, 16
  %33 = or i32 %32, %27
  %34 = and i32 %6, 3
  %35 = icmp eq i32 %34, 0
  %36 = urem i32 %7, 100
  %37 = icmp ne i32 %36, 0
  %38 = and i1 %35, %37
  %39 = urem i32 %7, 400
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %17
  %43 = getelementptr inbounds %struct.sunxi_rtc_data_year, ptr %28, i32 0, i32 3
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  %46 = shl nuw i32 1, %45
  %47 = or i32 %46, %33
  br label %48

48:                                               ; preds = %42, %17
  %49 = phi i32 [ %47, %42 ], [ %33, %17 ]
  %50 = load i32, ptr %1, align 4
  %51 = and i32 %50, 63
  %52 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = shl i32 %53, 8
  %55 = and i32 %54, 16128
  %56 = or i32 %55, %51
  %57 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = shl i32 %58, 16
  %60 = and i32 %59, 2031616
  %61 = or i32 %56, %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %62 = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %4, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %65 = load ptr, ptr %62, align 4
  %66 = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %67 = load ptr, ptr %62, align 4
  %68 = getelementptr i8, ptr %67, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %61) #6, !srcloc !9
  %69 = load volatile i32, ptr @jiffies, align 64
  %70 = sub i32 -5, %69
  br label %71

71:                                               ; preds = %76, %48
  %72 = load ptr, ptr %62, align 4
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #6, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !23
  %74 = and i32 %73, 256
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load volatile i32, ptr @jiffies, align 64
  %78 = add i32 %70, %77
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %71, label %80

80:                                               ; preds = %76
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4) #7
  br label %96

81:                                               ; preds = %71
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %82 = load ptr, ptr %62, align 4
  %83 = getelementptr i8, ptr %82, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %49) #6, !srcloc !9
  %84 = load volatile i32, ptr @jiffies, align 64
  %85 = sub i32 -5, %84
  br label %86

86:                                               ; preds = %91, %81
  %87 = load ptr, ptr %62, align 4
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #6, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !23
  %89 = and i32 %88, 128
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load volatile i32, ptr @jiffies, align 64
  %93 = add i32 %85, %92
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %86, label %95

95:                                               ; preds = %91
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4) #7
  br label %96

96:                                               ; preds = %95, %86, %80, %16
  %97 = phi i32 [ -22, %16 ], [ -1, %80 ], [ -1, %95 ], [ 0, %86 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_rtc_getalarm(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %6 = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %4, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !25
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !26
  %13 = and i32 %9, 63
  store i32 %13, ptr %5, align 4
  %14 = lshr i32 %9, 8
  %15 = and i32 %14, 63
  %16 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %15, ptr %16, align 4
  %17 = lshr i32 %9, 16
  %18 = and i32 %17, 31
  %19 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %18, ptr %19, align 4
  %20 = and i32 %12, 31
  %21 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %20, ptr %21, align 4
  %22 = lshr i32 %12, 8
  %23 = and i32 %22, 15
  %24 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %4, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.sunxi_rtc_data_year, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %28, 16
  %30 = and i32 %29, %12
  %31 = lshr exact i32 %30, 16
  %32 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  store i32 %31, ptr %32, align 4
  %33 = add nsw i32 %23, -1
  store i32 %33, ptr %24, align 4
  %34 = load ptr, ptr %25, align 4
  %35 = load i32, ptr %34, align 4
  %36 = add nsw i32 %31, -1900
  %37 = add i32 %36, %35
  store i32 %37, ptr %32, align 4
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr i8, ptr %38, i32 24
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #6, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %41 = and i32 %40, 256
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %2
  store i8 1, ptr %1, align 4
  br label %44

44:                                               ; preds = %43, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_rtc_setalarm(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.rtc_time, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #6
  %6 = getelementptr inbounds i8, ptr %3, i32 24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i32 12, i1 false), !annotation !28
  %7 = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %5, i32 0, i32 3
  br label %8

8:                                                ; preds = %24, %2
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !16
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr i8, ptr %15, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %18 = icmp eq i32 %11, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %8
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr i8, ptr %20, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %23 = icmp eq i32 %14, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %8
  br label %8

25:                                               ; preds = %19
  %26 = and i32 %14, 63
  store i32 %26, ptr %3, align 4
  %27 = lshr i32 %14, 8
  %28 = and i32 %27, 63
  %29 = getelementptr inbounds %struct.rtc_time, ptr %3, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = lshr i32 %14, 16
  %31 = and i32 %30, 31
  %32 = getelementptr inbounds %struct.rtc_time, ptr %3, i32 0, i32 2
  store i32 %31, ptr %32, align 4
  %33 = and i32 %11, 31
  %34 = getelementptr inbounds %struct.rtc_time, ptr %3, i32 0, i32 3
  store i32 %33, ptr %34, align 4
  %35 = lshr i32 %11, 8
  %36 = and i32 %35, 15
  %37 = getelementptr inbounds %struct.rtc_time, ptr %3, i32 0, i32 4
  %38 = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %5, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.sunxi_rtc_data_year, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = shl i32 %41, 16
  %43 = and i32 %42, %11
  %44 = lshr exact i32 %43, 16
  %45 = getelementptr inbounds %struct.rtc_time, ptr %3, i32 0, i32 5
  %46 = add nsw i32 %36, -1
  store i32 %46, ptr %37, align 4
  %47 = load ptr, ptr %38, align 4
  %48 = load i32, ptr %47, align 4
  %49 = add nsw i32 %44, -1900
  %50 = add i32 %49, %48
  store i32 %50, ptr %45, align 4
  %51 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %52 = tail call i64 @rtc_tm_to_time64(ptr noundef %51) #6
  %53 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %3) #6
  %54 = sub i64 %52, %53
  %55 = icmp slt i64 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %25
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6) #7
  br label %116

57:                                               ; preds = %25
  %58 = icmp ugt i64 %54, 22032000
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7) #7
  br label %116

60:                                               ; preds = %57
  %61 = trunc i64 %54 to i32
  %62 = udiv i32 %61, 86400
  %63 = mul nsw i32 %62, -86400
  %64 = add nsw i32 %63, %61
  %65 = udiv i32 %64, 3600
  %66 = mul i32 %65, -3600
  %67 = add i32 %66, %64
  %68 = udiv i32 %67, 60
  %69 = shl nuw nsw i32 %68, 2
  %70 = add i32 %69, %67
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !29
  call void @arm_heavy_mb() #6
  %71 = load ptr, ptr %7, align 4
  %72 = getelementptr i8, ptr %71, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 1) #6, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !30
  call void @arm_heavy_mb() #6
  %73 = load ptr, ptr %7, align 4
  %74 = getelementptr i8, ptr %73, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 0) #6, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !31
  call void @arm_heavy_mb() #6
  %75 = load ptr, ptr %7, align 4
  %76 = getelementptr i8, ptr %75, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 0) #6, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !32
  call void @arm_heavy_mb() #6
  %77 = load ptr, ptr %7, align 4
  %78 = getelementptr i8, ptr %77, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 0) #6, !srcloc !9
  call void @usleep_range_state(i32 noundef 100, i32 noundef 300, i32 noundef 2) #6
  %79 = and i32 %70, 63
  %80 = shl i32 %68, 8
  %81 = and i32 %80, 16128
  %82 = shl i32 %65, 16
  %83 = and i32 %82, 2031616
  %84 = shl nuw nsw i32 %62, 21
  %85 = and i32 %84, 2143289344
  %86 = or i32 %83, %85
  %87 = or i32 %86, %81
  %88 = or i32 %87, %79
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !33
  call void @arm_heavy_mb() #6
  %89 = load ptr, ptr %7, align 4
  %90 = getelementptr i8, ptr %89, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #6, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !34
  call void @arm_heavy_mb() #6
  %91 = load ptr, ptr %7, align 4
  %92 = getelementptr i8, ptr %91, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 0) #6, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !35
  call void @arm_heavy_mb() #6
  %93 = load ptr, ptr %7, align 4
  %94 = getelementptr i8, ptr %93, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 1) #6, !srcloc !9
  %95 = load i8, ptr %1, align 4
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %60
  %98 = load ptr, ptr %7, align 4
  %99 = getelementptr i8, ptr %98, i32 20
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #6, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !36
  %101 = or i32 %100, 256
  %102 = load ptr, ptr %7, align 4
  %103 = getelementptr i8, ptr %102, i32 24
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #6, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !37
  %105 = or i32 %104, 1
  br label %109

106:                                              ; preds = %60
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !29
  call void @arm_heavy_mb() #6
  %107 = load ptr, ptr %7, align 4
  %108 = getelementptr i8, ptr %107, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 1) #6, !srcloc !9
  br label %109

109:                                              ; preds = %106, %97
  %110 = phi i32 [ %105, %97 ], [ 0, %106 ]
  %111 = phi i32 [ %101, %97 ], [ 0, %106 ]
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !30
  call void @arm_heavy_mb() #6
  %112 = load ptr, ptr %7, align 4
  %113 = getelementptr i8, ptr %112, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %111) #6, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !31
  call void @arm_heavy_mb() #6
  %114 = load ptr, ptr %7, align 4
  %115 = getelementptr i8, ptr %114, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %110) #6, !srcloc !9
  br label %116

116:                                              ; preds = %109, %59, %56
  %117 = phi i32 [ -22, %56 ], [ -22, %59 ], [ 0, %109 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #6
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %7 = getelementptr inbounds %struct.sunxi_rtc_dev, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #6, !srcloc !9
  br label %14

14:                                               ; preds = %4, %2
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i64 2152492507}
!9 = !{i64 3978048}
!10 = !{i64 2152492826}
!11 = !{i64 2152493145}
!12 = !{i64 2152493572}
!13 = !{i64 3978466}
!14 = !{i64 2152475688}
!15 = !{i64 2152476046}
!16 = !{i64 2152480440}
!17 = !{i64 2152480787}
!18 = !{i64 2152481134}
!19 = !{i64 2152481481}
!20 = !{i64 2152488666}
!21 = !{i64 2152488985}
!22 = !{i64 2152489307}
!23 = !{i64 2152486353}
!24 = !{i64 2152490264}
!25 = !{i64 2152478563}
!26 = !{i64 2152478910}
!27 = !{i64 2152480011}
!28 = !{!"auto-init"}
!29 = !{i64 2152477345}
!30 = !{i64 2152477723}
!31 = !{i64 2152478067}
!32 = !{i64 2152484266}
!33 = !{i64 2152485082}
!34 = !{i64 2152485407}
!35 = !{i64 2152485834}
!36 = !{i64 2152476534}
!37 = !{i64 2152476963}
