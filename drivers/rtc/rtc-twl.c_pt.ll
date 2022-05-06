; ModuleID = '/llk/IR/drivers/rtc/rtc-twl.c_pt.bc'
source_filename = "../drivers/rtc/rtc-twl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.twl_rtc = type { ptr, ptr, ptr, i8, i8, i8, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_twl__210_654_twl4030rtc_driver_init6 = internal global ptr @twl4030rtc_driver_init, section ".initcall6.init", align 4
@twl4030rtc_driver = internal global %struct.platform_driver { ptr @twl_rtc_probe, ptr @twl_rtc_remove, ptr @twl_rtc_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @twl_rtc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_twl4030rtc_driver_exit = internal global ptr @twl4030rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [54 x i8] c"rtc_twl.author=Texas Instruments, MontaVista Software\00", section ".modinfo", align 1
@__UNIQUE_ID_file212 = internal constant [33 x i8] c"rtc_twl.file=drivers/rtc/rtc-twl\00", section ".modinfo", align 1
@__UNIQUE_ID_license213 = internal constant [20 x i8] c"rtc_twl.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"twl_rtc\00", align 1
@twl_rtc_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@twl_rtc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @twl_rtc_suspend, ptr @twl_rtc_resume, ptr @twl_rtc_suspend, ptr @twl_rtc_resume, ptr @twl_rtc_suspend, ptr @twl_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"no DT info\0A\00", align 1
@twl4030_rtc_reg_map = internal constant [18 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11", align 1
@twl6030_rtc_reg_map = internal constant [18 x i8] c"\00\01\02\03\04\05\06\08\09\0A\0B\0C\0D\10\11\12\13\14", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"TWL Class not supported.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Power up reset detected.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Pending Alarm interrupt detected.\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Enabling TWL-RTC\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"unable to disable interrupt\0A\00", align 1
@twl_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @twl_rtc_read_time, ptr @twl_rtc_set_time, ptr @twl_rtc_read_alarm, ptr @twl_rtc_set_alarm, ptr null, ptr @twl_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"can't register RTC device, err %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"IRQ is not free.\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"\013rtc_twl: Could not read TWL register %X - error %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"\013rtc_twl: Could not write TWL register %X - error %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"%s: reading CTRL_REG, error %d\0A\00", align 1
@__func__.twl_rtc_read_time = private unnamed_addr constant [18 x i8] c"twl_rtc_read_time\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"%s clr GET_TIME, error %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"%s: writing CTRL_REG, error %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"%s: reading data, error %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"%s: restore CTRL_REG, error %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"rtc_set_time error %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"rtc_read_alarm error %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"rtc_set_alarm error %d\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_file212, ptr @__UNIQUE_ID_license213, ptr @__exitcall_twl4030rtc_driver_exit, ptr @__initcall__kmod_rtc_twl__210_654_twl4030rtc_driver_init6, ptr @twl4030rtc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @twl4030rtc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @twl4030rtc_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @twl4030rtc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @twl4030rtc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl_rtc_probe(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !annotation !8
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #8
  br label %87

10:                                               ; preds = %1
  %11 = icmp slt i32 %7, 1
  br i1 %11, label %87, label %12

12:                                               ; preds = %10
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 20, i32 noundef 3520) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %87, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @twl_rev() #7
  %17 = icmp eq i32 %16, 16432
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @twl_rev() #7
  %20 = icmp eq i32 %19, 24624
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #8
  br label %87

22:                                               ; preds = %18, %15
  %23 = phi i32 [ 0, %15 ], [ 1, %18 ]
  %24 = phi ptr [ @twl4030_rtc_reg_map, %15 ], [ @twl6030_rtc_reg_map, %18 ]
  %25 = getelementptr inbounds %struct.twl_rtc, ptr %13, i32 0, i32 6
  store i32 %23, ptr %25, align 4
  %26 = getelementptr inbounds %struct.twl_rtc, ptr %13, i32 0, i32 2
  store ptr %24, ptr %26, align 4
  %27 = getelementptr i8, ptr %24, i32 14
  %28 = load i8, ptr %27, align 1
  %29 = call i32 @twl_i2c_read(i8 noundef zeroext 5, ptr noundef nonnull %3, i8 noundef zeroext %28, i32 noundef 1) #7
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 14, i32 noundef %29) #8
  br label %87

33:                                               ; preds = %22
  %34 = load i8, ptr %3, align 1
  %35 = icmp sgt i8 %34, -1
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.3) #8
  %37 = load i8, ptr %3, align 1
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i8 [ %37, %36 ], [ %34, %33 ]
  %40 = and i8 %39, 64
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.4) #8
  %43 = load i8, ptr %3, align 1
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi i8 [ %43, %42 ], [ %39, %38 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #7
  store i8 %45, ptr %2, align 1
  %46 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %2, i8 noundef zeroext %28, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 14, i32 noundef %46) #8
  br label %87

50:                                               ; preds = %44
  br i1 %17, label %54, label %51

51:                                               ; preds = %50
  %52 = call i32 @twl6030_interrupt_unmask(i8 noundef zeroext 24, i8 noundef zeroext 3) #7
  %53 = call i32 @twl6030_interrupt_unmask(i8 noundef zeroext 24, i8 noundef zeroext 6) #7
  br label %54

54:                                               ; preds = %51, %50
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.5) #8
  %55 = call fastcc i32 @twl_rtc_write_u8(ptr noundef nonnull %13, i8 noundef zeroext 1, i8 noundef zeroext 13)
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %87, label %57

57:                                               ; preds = %54
  %58 = call fastcc i32 @twl_rtc_write_u8(ptr noundef nonnull %13, i8 noundef zeroext 0, i8 noundef zeroext 15)
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.6) #8
  br label %61

61:                                               ; preds = %60, %57
  %62 = getelementptr inbounds %struct.twl_rtc, ptr %13, i32 0, i32 3
  %63 = call fastcc i32 @twl_rtc_read_u8(ptr noundef nonnull %13, ptr noundef %62, i8 noundef zeroext 15)
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %87, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %13, ptr %66, align 8
  %67 = call i32 @device_init_wakeup(ptr noundef %4, i1 noundef zeroext true) #7
  %68 = load ptr, ptr %0, align 8
  %69 = call ptr @devm_rtc_device_register(ptr noundef %4, ptr noundef %68, ptr noundef nonnull @twl_rtc_ops, ptr noundef null) #7
  %70 = getelementptr inbounds %struct.twl_rtc, ptr %13, i32 0, i32 1
  store ptr %69, ptr %70, align 4
  %71 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = ptrtoint ptr %69 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %73) #8
  %74 = load ptr, ptr %70, align 4
  %75 = ptrtoint ptr %74 to i32
  br label %87

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load ptr, ptr %69, align 4
  br label %82

82:                                               ; preds = %80, %76
  %83 = phi ptr [ %81, %80 ], [ %78, %76 ]
  %84 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %7, ptr noundef null, ptr noundef nonnull @twl_rtc_interrupt, i32 noundef 8193, ptr noundef %83, ptr noundef nonnull %13) #7
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8) #8
  br label %87

87:                                               ; preds = %86, %82, %72, %61, %54, %48, %31, %21, %12, %10, %9
  %88 = phi i32 [ %75, %72 ], [ %84, %86 ], [ -22, %21 ], [ -22, %9 ], [ -22, %10 ], [ -12, %12 ], [ %55, %54 ], [ %63, %61 ], [ 0, %82 ], [ %29, %31 ], [ %46, %48 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl_rtc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.twl_rtc, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = and i8 %7, -9
  %12 = getelementptr inbounds %struct.twl_rtc, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 15
  %15 = load i8, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 %11, ptr %3, align 1
  %16 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %3, i8 noundef zeroext %15, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 15, i32 noundef %16) #8
  br label %23

20:                                               ; preds = %10
  %21 = icmp eq i32 %16, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  store i8 %11, ptr %6, align 4
  br label %23

23:                                               ; preds = %22, %20, %18, %1
  %24 = load i8, ptr %6, align 4
  %25 = and i8 %24, 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = and i8 %24, -5
  %29 = getelementptr inbounds %struct.twl_rtc, ptr %5, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 15
  %32 = load i8, ptr %31, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #7
  store i8 %28, ptr %2, align 1
  %33 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %2, i8 noundef zeroext %32, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 15, i32 noundef %33) #8
  br label %40

37:                                               ; preds = %27
  %38 = icmp eq i32 %33, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  store i8 %28, ptr %6, align 4
  br label %40

40:                                               ; preds = %39, %37, %35, %23
  %41 = getelementptr inbounds %struct.twl_rtc, ptr %5, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = call i32 @twl6030_interrupt_mask(i8 noundef zeroext 24, i8 noundef zeroext 3) #7
  %46 = call i32 @twl6030_interrupt_mask(i8 noundef zeroext 24, i8 noundef zeroext 6) #7
  br label %47

47:                                               ; preds = %44, %40
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @twl_rtc_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.twl_rtc, ptr %4, i32 0, i32 3
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  %10 = and i8 %6, -5
  %11 = getelementptr inbounds %struct.twl_rtc, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 15
  %14 = load i8, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #7
  store i8 %10, ptr %2, align 1
  %15 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %2, i8 noundef zeroext %14, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 15, i32 noundef %15) #8
  br label %22

19:                                               ; preds = %9
  %20 = icmp eq i32 %15, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  store i8 %10, ptr %5, align 4
  br label %22

22:                                               ; preds = %21, %19, %17, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @twl_rtc_read_u8(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.twl_rtc, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = zext i8 %2 to i32
  %7 = getelementptr i8, ptr %5, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = tail call i32 @twl_i2c_read(i8 noundef zeroext 5, ptr noundef %1, i8 noundef zeroext %8, i32 noundef 1) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %6, i32 noundef %9) #8
  br label %13

13:                                               ; preds = %11, %3
  ret i32 %9
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @twl_rtc_write_u8(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #2 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.twl_rtc, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = zext i8 %2 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = load i8, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %1, ptr %4, align 1
  %10 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %4, i8 noundef zeroext %9, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %7, i32 noundef %10) #8
  br label %14

14:                                               ; preds = %12, %3
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6030_interrupt_unmask(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl_rtc_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 14
  %8 = load i8, ptr %7, align 1
  %9 = call i32 @twl_i2c_read(i8 noundef zeroext 5, ptr noundef nonnull %4, i8 noundef zeroext %8, i32 noundef 1) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 14, i32 noundef %9) #8
  br label %39

13:                                               ; preds = %2
  %14 = icmp eq i32 %9, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %13
  %16 = load i8, ptr %4, align 1
  %17 = and i8 %16, 64
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, i32 192, i32 160
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr i8, ptr %20, i32 14
  %22 = load i8, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 64, ptr %3, align 1
  %23 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %3, i8 noundef zeroext %22, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 14, i32 noundef %23) #8
  br label %39

27:                                               ; preds = %15
  %28 = icmp eq i32 %23, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = call i32 @twl_i2c_read(i8 noundef zeroext 18, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 1) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %29
  %37 = getelementptr inbounds %struct.twl_rtc, ptr %1, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  call void @rtc_update_irq(ptr noundef %38, i32 noundef 1, i32 noundef %19) #7
  br label %39

39:                                               ; preds = %36, %33, %27, %25, %13, %11
  %40 = phi i32 [ 0, %13 ], [ 0, %27 ], [ 0, %33 ], [ 1, %36 ], [ 0, %11 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_rev() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl_rtc_read_time(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca i8, align 1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i32 6, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #7
  store i8 0, ptr %7, align 1, !annotation !8
  %10 = getelementptr inbounds %struct.twl_rtc, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 13
  %13 = load i8, ptr %12, align 1
  %14 = call i32 @twl_i2c_read(i8 noundef zeroext 5, ptr noundef nonnull %7, i8 noundef zeroext %13, i32 noundef 1) #7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 13, i32 noundef %14) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.twl_rtc_read_time, i32 noundef %14) #8
  br label %98

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.twl_rtc, ptr %9, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  %22 = load i8, ptr %7, align 1
  br i1 %21, label %23, label %43

23:                                               ; preds = %18
  %24 = and i8 %22, 64
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i8, ptr %7, align 1
  br label %41

28:                                               ; preds = %23
  %29 = and i8 %22, -65
  store i8 %29, ptr %7, align 1
  %30 = load ptr, ptr %10, align 4
  %31 = getelementptr i8, ptr %30, i32 13
  %32 = load i8, ptr %31, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 %29, ptr %5, align 1
  %33 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %5, i8 noundef zeroext %32, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 13, i32 noundef %33) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.twl_rtc_read_time, i32 noundef %33) #8
  br label %98

37:                                               ; preds = %28
  %38 = load i32, ptr %19, align 4
  %39 = load i8, ptr %7, align 1
  %40 = icmp eq i32 %38, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %26
  %42 = phi i8 [ %27, %26 ], [ %39, %37 ]
  br label %43

43:                                               ; preds = %41, %37, %18
  %44 = phi i8 [ %42, %41 ], [ %39, %37 ], [ %22, %18 ]
  %45 = phi i8 [ -64, %41 ], [ 64, %37 ], [ 64, %18 ]
  %46 = or i8 %45, %44
  %47 = load ptr, ptr %10, align 4
  %48 = getelementptr i8, ptr %47, i32 13
  %49 = load i8, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 %46, ptr %4, align 1
  %50 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %4, i8 noundef zeroext %49, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 13, i32 noundef %50) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.twl_rtc_read_time, i32 noundef %50) #8
  br label %98

54:                                               ; preds = %43
  %55 = load ptr, ptr %10, align 4
  %56 = load i8, ptr %55, align 1
  %57 = call i32 @twl_i2c_read(i8 noundef zeroext 5, ptr noundef nonnull %6, i8 noundef zeroext %56, i32 noundef 6) #7
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.twl_rtc_read_time, i32 noundef %57) #8
  br label %98

60:                                               ; preds = %54
  %61 = load i32, ptr %19, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i8, ptr %7, align 1
  %65 = load ptr, ptr %10, align 4
  %66 = getelementptr i8, ptr %65, i32 13
  %67 = load i8, ptr %66, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 %64, ptr %3, align 1
  %68 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %3, i8 noundef zeroext %67, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 13, i32 noundef %68) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.twl_rtc_read_time, i32 noundef %68) #8
  br label %98

72:                                               ; preds = %63, %60
  %73 = phi i32 [ %57, %60 ], [ %68, %63 ]
  %74 = load i8, ptr %6, align 1
  %75 = call i32 @_bcd2bin(i8 noundef zeroext %74) #9
  store i32 %75, ptr %1, align 4
  %76 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  %77 = load i8, ptr %76, align 1
  %78 = call i32 @_bcd2bin(i8 noundef zeroext %77) #9
  %79 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  %81 = load i8, ptr %80, align 1
  %82 = call i32 @_bcd2bin(i8 noundef zeroext %81) #9
  %83 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %82, ptr %83, align 4
  %84 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 3
  %85 = load i8, ptr %84, align 1
  %86 = call i32 @_bcd2bin(i8 noundef zeroext %85) #9
  %87 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 4
  %89 = load i8, ptr %88, align 1
  %90 = call i32 @_bcd2bin(i8 noundef zeroext %89) #9
  %91 = add i32 %90, -1
  %92 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %91, ptr %92, align 4
  %93 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 5
  %94 = load i8, ptr %93, align 1
  %95 = call i32 @_bcd2bin(i8 noundef zeroext %94) #9
  %96 = add i32 %95, 100
  %97 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %96, ptr %97, align 4
  br label %98

98:                                               ; preds = %72, %70, %59, %52, %35, %16
  %99 = phi i32 [ %14, %16 ], [ %33, %35 ], [ %50, %52 ], [ %57, %59 ], [ %68, %70 ], [ %73, %72 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #7
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl_rtc_set_time(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [6 x i8], align 1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #7
  %9 = load i32, ptr %1, align 4
  %10 = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #9
  store i8 %10, ptr %6, align 1
  %11 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call zeroext i8 @_bin2bcd(i32 noundef %12) #9
  %14 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  store i8 %13, ptr %14, align 1
  %15 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = tail call zeroext i8 @_bin2bcd(i32 noundef %16) #9
  %18 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  store i8 %17, ptr %18, align 1
  %19 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #9
  %22 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 3
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  %26 = tail call zeroext i8 @_bin2bcd(i32 noundef %25) #9
  %27 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 4
  store i8 %26, ptr %27, align 1
  %28 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, -100
  %31 = tail call zeroext i8 @_bin2bcd(i32 noundef %30) #9
  %32 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 5
  store i8 %31, ptr %32, align 1
  %33 = getelementptr inbounds %struct.twl_rtc, ptr %8, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 13
  %36 = load i8, ptr %35, align 1
  %37 = call i32 @twl_i2c_read(i8 noundef zeroext 5, ptr noundef nonnull %5, i8 noundef zeroext %36, i32 noundef 1) #7
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 13, i32 noundef %37) #8
  br label %67

41:                                               ; preds = %2
  %42 = load i8, ptr %5, align 1
  %43 = and i8 %42, -2
  store i8 %43, ptr %5, align 1
  %44 = load ptr, ptr %33, align 4
  %45 = getelementptr i8, ptr %44, i32 13
  %46 = load i8, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 %43, ptr %4, align 1
  %47 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %4, i8 noundef zeroext %46, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 13, i32 noundef %47) #8
  br label %67

51:                                               ; preds = %41
  %52 = load ptr, ptr %33, align 4
  %53 = load i8, ptr %52, align 1
  %54 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %6, i8 noundef zeroext %53, i32 noundef 6) #7
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %54) #8
  br label %67

57:                                               ; preds = %51
  %58 = load i8, ptr %5, align 1
  %59 = or i8 %58, 1
  store i8 %59, ptr %5, align 1
  %60 = load ptr, ptr %33, align 4
  %61 = getelementptr i8, ptr %60, i32 13
  %62 = load i8, ptr %61, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 %59, ptr %3, align 1
  %63 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %3, i8 noundef zeroext %62, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 13, i32 noundef %63) #8
  br label %67

67:                                               ; preds = %65, %57, %56, %49, %39
  %68 = phi i32 [ %54, %56 ], [ %37, %39 ], [ %47, %49 ], [ %63, %57 ], [ %63, %65 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl_rtc_read_alarm(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [6 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.twl_rtc, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 7
  %9 = load i8, ptr %8, align 1
  %10 = call i32 @twl_i2c_read(i8 noundef zeroext 5, ptr noundef nonnull %3, i8 noundef zeroext %9, i32 noundef 6) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %10) #8
  br label %44

13:                                               ; preds = %2
  %14 = load i8, ptr %3, align 1
  %15 = call i32 @_bcd2bin(i8 noundef zeroext %14) #9
  %16 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = call i32 @_bcd2bin(i8 noundef zeroext %18) #9
  %20 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = call i32 @_bcd2bin(i8 noundef zeroext %22) #9
  %24 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  %26 = load i8, ptr %25, align 1
  %27 = call i32 @_bcd2bin(i8 noundef zeroext %26) #9
  %28 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  %30 = load i8, ptr %29, align 1
  %31 = call i32 @_bcd2bin(i8 noundef zeroext %30) #9
  %32 = add i32 %31, -1
  %33 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 5
  %35 = load i8, ptr %34, align 1
  %36 = call i32 @_bcd2bin(i8 noundef zeroext %35) #9
  %37 = add i32 %36, 100
  %38 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.twl_rtc, ptr %5, i32 0, i32 3
  %40 = load i8, ptr %39, align 4
  %41 = and i8 %40, 8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %13
  store i8 1, ptr %1, align 4
  br label %44

44:                                               ; preds = %43, %13, %12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl_rtc_set_alarm(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [6 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  %6 = tail call i32 @twl_rtc_alarm_irq_enable(ptr noundef %0, i32 noundef 0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #9
  store i8 %11, ptr %3, align 1
  %12 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #9
  %15 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %14, ptr %15, align 1
  %16 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #9
  %19 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = tail call zeroext i8 @_bin2bcd(i32 noundef %21) #9
  %23 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  %27 = tail call zeroext i8 @_bin2bcd(i32 noundef %26) #9
  %28 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  store i8 %27, ptr %28, align 1
  %29 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, -100
  %32 = tail call zeroext i8 @_bin2bcd(i32 noundef %31) #9
  %33 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 5
  store i8 %32, ptr %33, align 1
  %34 = getelementptr inbounds %struct.twl_rtc, ptr %5, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 7
  %37 = load i8, ptr %36, align 1
  %38 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %3, i8 noundef zeroext %37, i32 noundef 6) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %38) #8
  br label %46

41:                                               ; preds = %8
  %42 = load i8, ptr %1, align 4
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = call i32 @twl_rtc_alarm_irq_enable(ptr noundef %0, i32 noundef 1)
  br label %46

46:                                               ; preds = %44, %41, %40, %2
  %47 = phi i32 [ %6, %2 ], [ %38, %40 ], [ %45, %44 ], [ 0, %41 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl_rtc_alarm_irq_enable(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @platform_get_irq(ptr noundef %5, i32 noundef 0) #7
  %9 = icmp eq i32 %1, 0
  %10 = getelementptr inbounds %struct.twl_rtc, ptr %7, i32 0, i32 3
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 8
  %13 = icmp eq i8 %12, 0
  br i1 %9, label %41, label %14

14:                                               ; preds = %2
  br i1 %13, label %15, label %29

15:                                               ; preds = %14
  %16 = and i8 %11, -12
  %17 = or i8 %16, 8
  %18 = getelementptr inbounds %struct.twl_rtc, ptr %7, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 15
  %21 = load i8, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 %17, ptr %4, align 1
  %22 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %4, i8 noundef zeroext %21, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 15, i32 noundef %22) #8
  br label %29

26:                                               ; preds = %15
  %27 = icmp eq i32 %22, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  store i8 %17, ptr %10, align 4
  br label %29

29:                                               ; preds = %28, %26, %24, %14
  %30 = phi i32 [ 0, %14 ], [ 0, %28 ], [ %22, %26 ], [ %22, %24 ]
  %31 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %32 = load i16, ptr %31, align 4
  %33 = and i16 %32, 1
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %62, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.twl_rtc, ptr %7, i32 0, i32 4
  %37 = load i8, ptr %36, align 1, !range !9
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %35
  %40 = call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 1) #7
  store i8 1, ptr %36, align 1
  br label %62

41:                                               ; preds = %2
  br i1 %13, label %55, label %42

42:                                               ; preds = %41
  %43 = and i8 %11, -9
  %44 = getelementptr inbounds %struct.twl_rtc, ptr %7, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 15
  %47 = load i8, ptr %46, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 %43, ptr %3, align 1
  %48 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %3, i8 noundef zeroext %47, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 15, i32 noundef %48) #8
  br label %55

52:                                               ; preds = %42
  %53 = icmp eq i32 %48, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  store i8 %43, ptr %10, align 4
  br label %55

55:                                               ; preds = %54, %52, %50, %41
  %56 = phi i32 [ 0, %41 ], [ 0, %54 ], [ %48, %52 ], [ %48, %50 ]
  %57 = getelementptr inbounds %struct.twl_rtc, ptr %7, i32 0, i32 4
  %58 = load i8, ptr %57, align 1, !range !9
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #7
  store i8 0, ptr %57, align 1
  br label %62

62:                                               ; preds = %60, %55, %39, %35, %29
  %63 = phi i32 [ %30, %35 ], [ %30, %39 ], [ %30, %29 ], [ %56, %60 ], [ %56, %55 ]
  ret i32 %63
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6030_interrupt_mask(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl_rtc_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.twl_rtc, ptr %4, i32 0, i32 3
  %6 = load i8, ptr %5, align 4
  %7 = getelementptr inbounds %struct.twl_rtc, ptr %4, i32 0, i32 5
  store i8 %6, ptr %7, align 2
  %8 = and i8 %6, 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = and i8 %6, -5
  %12 = getelementptr inbounds %struct.twl_rtc, ptr %4, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 15
  %15 = load i8, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #7
  store i8 %11, ptr %2, align 1
  %16 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %2, i8 noundef zeroext %15, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 15, i32 noundef %16) #8
  br label %23

20:                                               ; preds = %10
  %21 = icmp eq i32 %16, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  store i8 %11, ptr %5, align 4
  br label %23

23:                                               ; preds = %22, %20, %18, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl_rtc_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.twl_rtc, ptr %4, i32 0, i32 5
  %6 = load i8, ptr %5, align 2
  %7 = getelementptr inbounds %struct.twl_rtc, ptr %4, i32 0, i32 3
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, %6
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = or i8 %8, %6
  %13 = and i8 %12, -4
  %14 = getelementptr inbounds %struct.twl_rtc, ptr %4, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 15
  %17 = load i8, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #7
  store i8 %13, ptr %2, align 1
  %18 = call i32 @twl_i2c_write(i8 noundef zeroext 5, ptr noundef nonnull %2, i8 noundef zeroext %17, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 15, i32 noundef %18) #8
  br label %25

22:                                               ; preds = %11
  %23 = icmp eq i32 %18, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  store i8 %13, ptr %7, align 4
  br label %25

25:                                               ; preds = %24, %22, %20, %1
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone willreturn }

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
