; ModuleID = '/llk/IR/drivers/spi/spi-sun4i.c_pt.bc'
source_filename = "../drivers/spi/spi-sun4i.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
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
%struct.sun4i_spi = type { ptr, ptr, ptr, ptr, %struct.completion, ptr, ptr, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_spi_sun4i__233_546_sun4i_spi_driver_init6 = internal global ptr @sun4i_spi_driver_init, section ".initcall6.init", align 4
@sun4i_spi_driver = internal global %struct.platform_driver { ptr @sun4i_spi_probe, ptr @sun4i_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_spi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_spi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sun4i_spi_driver_exit = internal global ptr @sun4i_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author234 = internal constant [52 x i8] c"spi_sun4i.author=Pan Nan <pannan@allwinnertech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [66 x i8] c"spi_sun4i.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [62 x i8] c"spi_sun4i.description=Allwinner A1X/A20 SPI controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [37 x i8] c"spi_sun4i.file=drivers/spi/spi-sun4i\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [22 x i8] c"spi_sun4i.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"sun4i-spi\00", align 1
@sun4i_spi_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sun4i_spi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_spi_runtime_suspend, ptr @sun4i_spi_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to allocate SPI Master\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Cannot request IRQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Unable to acquire AHB clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Unable to acquire module clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Couldn't resume the device\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"cannot register SPI master\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.9 = private unnamed_addr constant [52 x i8] c"%s: timeout transferring %u bytes@%iHz for %i(%i)ms\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Couldn't enable AHB clock\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Couldn't enable module clock\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_sun4i_spi_driver_exit, ptr @__initcall__kmod_spi_sun4i__233_546_sun4i_spi_driver_init6, ptr @sun4i_spi_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun4i_spi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_spi_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun4i_spi_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_spi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_spi_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @__spi_alloc_controller(ptr noundef %2, i32 noundef 44, i1 noundef zeroext false) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  br label %63

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %7, align 8
  %8 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %11 = getelementptr inbounds %struct.sun4i_spi, ptr %9, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = ptrtoint ptr %10 to i32
  br label %61

15:                                               ; preds = %6
  %16 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %61, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %16, ptr noundef nonnull @sun4i_spi_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %9) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #7
  br label %61

22:                                               ; preds = %18
  store ptr %3, ptr %9, align 4
  %23 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 9
  store i32 100000000, ptr %23, align 8
  %24 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 8
  store i32 3000, ptr %24, align 4
  %25 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 50
  store ptr @sun4i_spi_set_cs, ptr %25, align 8
  %26 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 51
  store ptr @sun4i_spi_transfer_one, ptr %26, align 4
  %27 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 3
  store i16 4, ptr %27, align 2
  %28 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 5
  store i32 15, ptr %28, align 8
  %29 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 7
  store i32 128, ptr %29, align 8
  %30 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  store ptr %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 36
  store i8 1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 13
  store ptr @sun4i_spi_max_transfer_size, ptr %34, align 8
  %35 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #6
  %36 = getelementptr inbounds %struct.sun4i_spi, ptr %9, i32 0, i32 2
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %41

38:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #7
  %39 = load ptr, ptr %36, align 4
  %40 = ptrtoint ptr %39 to i32
  br label %61

41:                                               ; preds = %22
  %42 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.5) #6
  %43 = getelementptr inbounds %struct.sun4i_spi, ptr %9, i32 0, i32 3
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #7
  %46 = load ptr, ptr %43, align 4
  %47 = ptrtoint ptr %46 to i32
  br label %61

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.sun4i_spi, ptr %9, i32 0, i32 4
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.sun4i_spi, ptr %9, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %50, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #6
  %51 = tail call i32 @sun4i_spi_runtime_resume(ptr noundef %2)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #7
  br label %61

54:                                               ; preds = %48
  %55 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #6
  tail call void @pm_runtime_enable(ptr noundef %2) #6
  %56 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 0) #6
  %57 = tail call i32 @devm_spi_register_controller(ptr noundef %2, ptr noundef nonnull %3) #6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #7
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #6
  %60 = tail call i32 @sun4i_spi_runtime_suspend(ptr noundef %2)
  br label %61

61:                                               ; preds = %59, %53, %45, %38, %21, %15, %13
  %62 = phi i32 [ %14, %13 ], [ %19, %21 ], [ %40, %38 ], [ %47, %45 ], [ %51, %53 ], [ %57, %59 ], [ -6, %15 ]
  tail call void @put_device(ptr noundef nonnull %3) #6
  br label %63

63:                                               ; preds = %61, %54, %5
  %64 = phi i32 [ %62, %61 ], [ -12, %5 ], [ 0, %54 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_spi_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @pm_runtime_force_suspend(ptr noundef %2) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_spi_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sun4i_spi, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %7 = and i32 %6, 65536
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 65536) #6, !srcloc !11
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 40
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %15 = and i32 %14, 127
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 64) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.sun4i_spi, ptr %1, i32 0, i32 6
  br label %20

20:                                               ; preds = %29, %18
  %21 = phi i32 [ %16, %18 ], [ %22, %29 ]
  %22 = add nsw i32 %21, -1
  %23 = load ptr, ptr %3, align 4
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %23) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %25 = load ptr, ptr %19, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = getelementptr i8, ptr %25, i32 1
  store ptr %28, ptr %19, align 4
  store i8 %24, ptr %25, align 1
  br label %29

29:                                               ; preds = %27, %20
  %30 = icmp eq i32 %22, 0
  br i1 %30, label %31, label %20

31:                                               ; preds = %29, %9
  %32 = getelementptr inbounds %struct.sun4i_spi, ptr %1, i32 0, i32 4
  tail call void @complete(ptr noundef %32) #6
  br label %103

33:                                               ; preds = %2
  %34 = and i32 %6, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr i8, ptr %37, i32 40
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %40 = and i32 %39, 127
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 64) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.sun4i_spi, ptr %1, i32 0, i32 6
  br label %45

45:                                               ; preds = %54, %43
  %46 = phi i32 [ %41, %43 ], [ %47, %54 ]
  %47 = add nsw i32 %46, -1
  %48 = load ptr, ptr %3, align 4
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %48) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %50 = load ptr, ptr %44, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = getelementptr i8, ptr %50, i32 1
  store ptr %53, ptr %44, align 4
  store i8 %49, ptr %50, align 1
  br label %54

54:                                               ; preds = %52, %45
  %55 = icmp eq i32 %47, 0
  br i1 %55, label %56, label %45

56:                                               ; preds = %54, %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %57 = load ptr, ptr %3, align 4
  %58 = getelementptr i8, ptr %57, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 16) #6, !srcloc !11
  br label %103

59:                                               ; preds = %33
  %60 = and i32 %6, 4096
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %103, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %3, align 4
  %64 = getelementptr i8, ptr %63, i32 40
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 127
  %68 = sub nsw i32 64, %67
  %69 = getelementptr inbounds %struct.sun4i_spi, ptr %1, i32 0, i32 7
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 @llvm.smin.i32(i32 %68, i32 %70) #6
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %90, label %73

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.sun4i_spi, ptr %1, i32 0, i32 5
  br label %75

75:                                               ; preds = %83, %73
  %76 = phi i32 [ %71, %73 ], [ %77, %83 ]
  %77 = add i32 %76, -1
  %78 = load ptr, ptr %74, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = getelementptr i8, ptr %78, i32 1
  store ptr %81, ptr %74, align 4
  %82 = load i8, ptr %78, align 1
  br label %83

83:                                               ; preds = %80, %75
  %84 = phi i8 [ %82, %80 ], [ 0, %75 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %85 = load ptr, ptr %3, align 4
  %86 = getelementptr i8, ptr %85, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %86, i8 %84) #6, !srcloc !15
  %87 = load i32, ptr %69, align 4
  %88 = add i32 %87, -1
  store i32 %88, ptr %69, align 4
  %89 = icmp eq i32 %77, 0
  br i1 %89, label %90, label %75

90:                                               ; preds = %83, %62
  %91 = phi i32 [ %70, %62 ], [ %88, %83 ]
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load ptr, ptr %3, align 4
  %95 = getelementptr i8, ptr %94, i32 12
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %97 = and i32 %96, -4097
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %98 = load ptr, ptr %3, align 4
  %99 = getelementptr i8, ptr %98, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %97) #6, !srcloc !11
  br label %100

100:                                              ; preds = %93, %90
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %101 = load ptr, ptr %3, align 4
  %102 = getelementptr i8, ptr %101, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 4096) #6, !srcloc !11
  br label %103

103:                                              ; preds = %100, %59, %56, %31
  %104 = phi i32 [ 1, %31 ], [ 1, %56 ], [ 1, %100 ], [ 0, %59 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_spi_set_cs(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sun4i_spi, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %11 = and i32 %10, -77825
  %12 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 12
  %16 = and i32 %15, 12288
  %17 = or i32 %16, %11
  %18 = or i32 %17, 196608
  %19 = and i32 %17, -196625
  %20 = or i32 %19, 65536
  %21 = select i1 %1, i32 %18, i32 %20
  %22 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %21, -17
  %25 = shl i32 %23, 2
  %26 = and i32 %25, 16
  %27 = or i32 %24, %26
  %28 = xor i32 %27, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #6, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_spi_transfer_one(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 16777215
  br i1 %8, label %175, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 4
  %11 = icmp ne ptr %10, null
  %12 = icmp eq i32 %7, 16777215
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %175, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.sun4i_spi, ptr %5, i32 0, i32 4
  store i32 0, ptr %15, align 4
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.sun4i_spi, ptr %5, i32 0, i32 5
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.sun4i_spi, ptr %5, i32 0, i32 6
  store ptr %19, ptr %20, align 4
  %21 = load i32, ptr %6, align 4
  %22 = getelementptr inbounds %struct.sun4i_spi, ptr %5, i32 0, i32 7
  store i32 %21, ptr %22, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %23 = getelementptr inbounds %struct.sun4i_spi, ptr %5, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 -1) #6, !srcloc !11
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %29 = or i32 %28, 768
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %30 = load ptr, ptr %23, align 4
  %31 = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #6, !srcloc !11
  %32 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %28, -32845
  %35 = shl i32 %33, 2
  %36 = and i32 %35, 8
  %37 = or i32 %36, %34
  %38 = and i32 %35, 4
  %39 = or i32 %37, %38
  %40 = shl i32 %33, 3
  %41 = and i32 %40, 64
  %42 = or i32 %39, %41
  %43 = load ptr, ptr %20, align 4
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, i32 32768, i32 0
  %46 = or i32 %42, %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %47 = load ptr, ptr %23, align 4
  %48 = getelementptr i8, ptr %47, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #6, !srcloc !11
  %49 = getelementptr inbounds %struct.sun4i_spi, ptr %5, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 @clk_get_rate(ptr noundef %50) #6
  %52 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 12
  %53 = load i32, ptr %52, align 4
  %54 = shl i32 %53, 1
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %14
  %57 = load ptr, ptr %49, align 4
  %58 = tail call i32 @clk_set_rate(ptr noundef %57, i32 noundef %54) #6
  %59 = load ptr, ptr %49, align 4
  %60 = tail call i32 @clk_get_rate(ptr noundef %59) #6
  %61 = load i32, ptr %52, align 4
  %62 = shl i32 %61, 1
  br label %63

63:                                               ; preds = %56, %14
  %64 = phi i32 [ %62, %56 ], [ %54, %14 ]
  %65 = phi i32 [ %61, %56 ], [ %53, %14 ]
  %66 = phi i32 [ %60, %56 ], [ %51, %14 ]
  %67 = udiv i32 %66, %64
  %68 = icmp ult i32 %67, 257
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = icmp ugt i32 %64, %66
  %71 = add nuw nsw i32 %67, 255
  %72 = and i32 %71, 255
  %73 = or i32 %72, 4096
  %74 = select i1 %70, i32 4096, i32 %73
  br label %87

75:                                               ; preds = %63
  %76 = icmp eq i32 %66, 0
  %77 = tail call i32 @llvm.ctlz.i32(i32 %66, i1 false) #6, !range !16
  %78 = sub nsw i32 31, %77
  %79 = select i1 %76, i32 -1, i32 %78
  %80 = icmp eq i32 %65, 0
  %81 = tail call i32 @llvm.ctlz.i32(i32 %65, i1 false) #6, !range !16
  %82 = add nsw i32 %81, -31
  %83 = select i1 %80, i32 1, i32 %82
  %84 = add nsw i32 %83, %79
  %85 = shl nsw i32 %84, 8
  %86 = and i32 %85, 3840
  br label %87

87:                                               ; preds = %75, %69
  %88 = phi i32 [ %74, %69 ], [ %86, %75 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %89 = load ptr, ptr %23, align 4
  %90 = getelementptr i8, ptr %89, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #6, !srcloc !11
  %91 = load ptr, ptr %17, align 4
  %92 = icmp eq ptr %91, null
  %93 = load i32, ptr %6, align 4
  %94 = select i1 %92, i32 0, i32 %93
  %95 = and i32 %93, 16777215
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %96 = load ptr, ptr %23, align 4
  %97 = getelementptr i8, ptr %96, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %95) #6, !srcloc !11
  %98 = and i32 %94, 16777215
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %99 = load ptr, ptr %23, align 4
  %100 = getelementptr i8, ptr %99, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #6, !srcloc !11
  %101 = load ptr, ptr %23, align 4
  %102 = getelementptr i8, ptr %101, i32 40
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 127
  %106 = sub nsw i32 64, %105
  %107 = load i32, ptr %22, align 4
  %108 = tail call i32 @llvm.smin.i32(i32 %106, i32 %107)
  %109 = tail call i32 @llvm.smin.i32(i32 %108, i32 63)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %119, %87
  %112 = phi i32 [ %113, %119 ], [ %109, %87 ]
  %113 = add i32 %112, -1
  %114 = load ptr, ptr %17, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = getelementptr i8, ptr %114, i32 1
  store ptr %117, ptr %17, align 4
  %118 = load i8, ptr %114, align 1
  br label %119

119:                                              ; preds = %116, %111
  %120 = phi i8 [ %118, %116 ], [ 0, %111 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %121 = load ptr, ptr %23, align 4
  %122 = getelementptr i8, ptr %121, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %122, i8 %120) #6, !srcloc !15
  %123 = load i32, ptr %22, align 4
  %124 = add i32 %123, -1
  store i32 %124, ptr %22, align 4
  %125 = icmp eq i32 %113, 0
  br i1 %125, label %126, label %111

126:                                              ; preds = %119, %87
  %127 = load ptr, ptr %23, align 4
  %128 = getelementptr i8, ptr %127, i32 12
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %130 = or i32 %129, 65552
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %131 = load ptr, ptr %23, align 4
  %132 = getelementptr i8, ptr %131, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #6, !srcloc !11
  %133 = icmp ugt i32 %94, 64
  br i1 %133, label %134, label %141

134:                                              ; preds = %126
  %135 = load ptr, ptr %23, align 4
  %136 = getelementptr i8, ptr %135, i32 12
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %138 = or i32 %137, 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %139 = load ptr, ptr %23, align 4
  %140 = getelementptr i8, ptr %139, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %138) #6, !srcloc !11
  br label %141

141:                                              ; preds = %134, %126
  %142 = load ptr, ptr %23, align 4
  %143 = getelementptr i8, ptr %142, i32 8
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %145 = or i32 %144, 1024
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %146 = load ptr, ptr %23, align 4
  %147 = getelementptr i8, ptr %146, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %145) #6, !srcloc !11
  %148 = load i32, ptr %6, align 4
  %149 = shl i32 %148, 4
  %150 = load i32, ptr %52, align 4
  %151 = udiv i32 %150, 1000
  %152 = udiv i32 %149, %151
  %153 = tail call i32 @llvm.umax.i32(i32 %152, i32 100)
  %154 = load volatile i32, ptr @jiffies, align 64
  %155 = tail call i32 @__msecs_to_jiffies(i32 noundef %153) #6
  %156 = tail call i32 @wait_for_completion_timeout(ptr noundef %15, i32 noundef %155) #6
  %157 = load volatile i32, ptr @jiffies, align 64
  %158 = icmp eq i32 %156, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %141
  %160 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load ptr, ptr %1, align 4
  br label %165

165:                                              ; preds = %163, %159
  %166 = phi ptr [ %164, %163 ], [ %161, %159 ]
  %167 = load i32, ptr %6, align 4
  %168 = load i32, ptr %52, align 4
  %169 = sub i32 %157, %154
  %170 = tail call i32 @jiffies_to_msecs(i32 noundef %169) #6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %166, i32 noundef %167, i32 noundef %168, i32 noundef %170, i32 noundef %153) #7
  br label %171

171:                                              ; preds = %165, %141
  %172 = phi i32 [ 0, %141 ], [ -110, %165 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %173 = load ptr, ptr %23, align 4
  %174 = getelementptr i8, ptr %173, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 0) #6, !srcloc !11
  br label %175

175:                                              ; preds = %171, %9, %3
  %176 = phi i32 [ %172, %171 ], [ -90, %3 ], [ -90, %9 ]
  ret i32 %176
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_spi_max_transfer_size(ptr nocapture noundef readnone %0) #4 {
  ret i32 16777214
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_spi_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sun4i_spi, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = tail call i32 @clk_enable(ptr noundef %7) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %14

14:                                               ; preds = %13, %1
  %15 = phi i32 [ %11, %13 ], [ %8, %1 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #7
  br label %32

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.sun4i_spi, ptr %5, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @clk_prepare(ptr noundef %18) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = tail call i32 @clk_enable(ptr noundef %18) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  tail call void @clk_unprepare(ptr noundef %18) #6
  br label %25

25:                                               ; preds = %24, %16
  %26 = phi i32 [ %22, %24 ], [ %19, %16 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12) #7
  %27 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %27) #6
  tail call void @clk_unprepare(ptr noundef %27) #6
  br label %32

28:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %29 = getelementptr inbounds %struct.sun4i_spi, ptr %5, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 262147) #6, !srcloc !11
  br label %32

32:                                               ; preds = %28, %25, %14
  %33 = phi i32 [ 0, %28 ], [ %15, %14 ], [ %26, %25 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_spi_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sun4i_spi, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.sun4i_spi, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 3745589}
!9 = !{i64 2152988249}
!10 = !{i64 2152988609}
!11 = !{i64 3745171}
!12 = !{i64 3745369}
!13 = !{i64 2152989685}
!14 = !{i64 2152999689}
!15 = !{i64 3744974}
!16 = !{i32 0, i32 33}
