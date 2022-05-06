; ModuleID = '/llk/IR/drivers/power/reset/at91-poweroff.c_pt.bc'
source_filename = "../drivers/power/reset/at91-poweroff.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@at91_shdwc.0 = internal unnamed_addr global ptr null, align 4
@at91_shdwc.1 = internal unnamed_addr global ptr null, align 4
@at91_shdwc.2 = internal unnamed_addr global ptr null, align 4
@__initcall__kmod_at91_poweroff__162_235_at91_poweroff_driver_init6 = internal global ptr @at91_poweroff_driver_init, section ".initcall6.init", align 4
@at91_poweroff_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.16, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_poweroff_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_at91_poweroff_driver_exit = internal global ptr @at91_poweroff_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [39 x i8] c"at91_poweroff.author=Atmel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [57 x i8] c"at91_poweroff.description=Shutdown driver for Atmel SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [53 x i8] c"at91_poweroff.file=drivers/power/reset/at91-poweroff\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [29 x i8] c"at91_poweroff.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [29 x i8] c"Could not enable slow clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"atmel,sama5d3-ddramc\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"RTT\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"RTC\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Wake-Up source: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"shdwc unknown wakeup mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"atmel,wakeup-counter\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"shdwc wakeup counter 0x%x > 0x%x reduce it to 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"atmel,wakeup-rtc-timer\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"atmel,wakeup-rtt-timer\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"atmel,wakeup-mode\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"at91-poweroff\00", align 1
@at91_poweroff_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-shdwc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9rl-shdwc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-shdwc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_at91_poweroff_driver_exit, ptr @__initcall__kmod_at91_poweroff__162_235_at91_poweroff_driver_init6, ptr @at91_poweroff_driver_exit, ptr @at91_poweroff_remove], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at91_poweroff_remove(ptr nocapture noundef readnone %0) #0 section ".exit.text" {
  %2 = load ptr, ptr @pm_power_off, align 4
  %3 = icmp eq ptr %2, @at91_poweroff
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store ptr null, ptr @pm_power_off, align 4
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr @at91_shdwc.2, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @iounmap(ptr noundef nonnull %6) #6
  br label %9

9:                                                ; preds = %8, %5
  %10 = load ptr, ptr @at91_shdwc.0, align 4
  tail call void @clk_disable(ptr noundef %10) #6
  tail call void @clk_unprepare(ptr noundef %10) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_poweroff() #1 {
  %1 = load ptr, ptr @at91_shdwc.2, align 4
  %2 = load ptr, ptr @at91_shdwc.1, align 4
  tail call void asm sideeffect ".balign 32\0A\09\09ldr\09r6, [$2, #0x00]\0A\09\09tst\09$0, #0\0A\09\09beq\091f\0A\09\09str\09$1, [$0, #0x1C]\0A\091:\09str\09$3, [$2, #0x00]\0A\09\09b\09.\0A\09", "r,r,r,r,~{r6}"(ptr %1, i32 8, ptr %2, i32 -1526726655) #6, !srcloc !8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at91_poweroff_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @at91_poweroff_driver, ptr noundef nonnull @at91_poweroff_probe, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @at91_poweroff_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91_poweroff_driver) #6
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
define internal i32 @at91_poweroff_probe(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %2) #6
  store ptr %4, ptr @at91_shdwc.1, align 4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = ptrtoint ptr %4 to i32
  br label %44

8:                                                ; preds = %1
  %9 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #6
  store ptr %9, ptr @at91_shdwc.0, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = ptrtoint ptr %9 to i32
  br label %44

13:                                               ; preds = %8
  %14 = tail call i32 @clk_prepare(ptr noundef %9) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = tail call i32 @clk_enable(ptr noundef %9) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi i32 [ %17, %19 ], [ %14, %13 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #7
  br label %44

22:                                               ; preds = %16
  tail call fastcc void @at91_wakeup_status(ptr noundef %0) #8
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call fastcc void @at91_poweroff_dt_set_wakeup_mode(ptr noundef %0)
  br label %27

27:                                               ; preds = %26, %22
  %28 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = tail call ptr @of_iomap(ptr noundef nonnull %28, i32 noundef 0) #6
  store ptr %31, ptr @at91_shdwc.2, align 4
  tail call void @of_node_put(ptr noundef nonnull %28) #6
  %32 = load ptr, ptr @at91_shdwc.2, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load ptr, ptr @at91_shdwc.0, align 4
  tail call void @clk_disable(ptr noundef %35) #6
  tail call void @clk_unprepare(ptr noundef %35) #6
  br label %44

36:                                               ; preds = %30
  %37 = getelementptr i8, ptr %32, i32 32
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %39 = and i32 %38, 5
  %40 = icmp eq i32 %39, 5
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr @at91_shdwc.2, align 4
  tail call void @iounmap(ptr noundef %42) #6
  store ptr null, ptr @at91_shdwc.2, align 4
  br label %43

43:                                               ; preds = %41, %36, %27
  store ptr @at91_poweroff, ptr @pm_power_off, align 4
  br label %44

44:                                               ; preds = %43, %34, %20, %11, %6
  %45 = phi i32 [ %7, %6 ], [ %12, %11 ], [ %21, %20 ], [ 0, %43 ], [ -12, %34 ]
  ret i32 %45
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @at91_wakeup_status(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr @at91_shdwc.1, align 4
  %3 = getelementptr i8, ptr %2, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = and i32 %4, 65536
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %4, 131072
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, ptr @.str.4, ptr @.str.3
  %12 = select i1 %8, ptr %11, ptr @.str.2
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.5, ptr noundef nonnull %12) #7
  br label %14

14:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @at91_poweroff_dt_set_wakeup_mode(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store ptr null, ptr %2, align 4, !annotation !12
  %7 = call i32 @of_property_read_string(ptr noundef %6, ptr noundef nonnull @.str.11, ptr noundef nonnull %2) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 4
  %11 = call i32 @strcasecmp(ptr noundef %10, ptr noundef nonnull @.str.12) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = call i32 @strcasecmp(ptr noundef %10, ptr noundef nonnull @.str.13) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = call i32 @strcasecmp(ptr noundef %10, ptr noundef nonnull @.str.14) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = call i32 @strcasecmp(ptr noundef %10, ptr noundef nonnull @.str.15) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.6) #7
  br label %47

23:                                               ; preds = %19, %16, %13, %9, %1
  %24 = phi i32 [ 2, %16 ], [ 1, %13 ], [ 0, %9 ], [ 3, %1 ], [ 3, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %25 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32, ptr %3, align 4
  %29 = icmp ugt i32 %28, 15
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %28, i32 noundef 15, i32 noundef 15) #7
  store i32 15, ptr %3, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ 15, %30 ], [ %28, %27 ]
  %33 = shl nuw nsw i32 %32, 4
  br label %34

34:                                               ; preds = %31, %23
  %35 = phi i32 [ 0, %23 ], [ %33, %31 ]
  %36 = call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef null) #6
  %37 = icmp eq ptr %36, null
  %38 = or i32 %35, 131072
  %39 = select i1 %37, i32 %35, i32 %38
  %40 = call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %41 = icmp eq ptr %40, null
  %42 = or i32 %39, 65536
  %43 = select i1 %41, i32 %39, i32 %42
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  call void @arm_heavy_mb() #6
  %44 = or i32 %43, %24
  %45 = load ptr, ptr @at91_shdwc.1, align 4
  %46 = getelementptr i8, ptr %45, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #6, !srcloc !14
  br label %47

47:                                               ; preds = %34, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { cold }

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
!8 = !{i64 2439, i64 2452, i64 2563, i64 2610, i64 2626, i64 2684, i64 2761, i64 2775}
!9 = !{i64 1723865}
!10 = !{i64 2151335428}
!11 = !{i64 2151330753}
!12 = !{!"auto-init"}
!13 = !{i64 2151334063}
!14 = !{i64 1723447}
