; ModuleID = '/llk/IR/drivers/rtc/rtc-max77686.c_pt.bc'
source_filename = "../drivers/rtc/rtc-max77686.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type {}
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max77686_rtc_driver_data = type { i32, i8, ptr, i8, i32, i8, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.max77686_rtc_info = type { ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_max77686__247_869_max77686_rtc_driver_init6 = internal global ptr @max77686_rtc_driver_init, section ".initcall6.init", align 4
@max77686_rtc_driver = internal global %struct.platform_driver { ptr @max77686_rtc_probe, ptr @max77686_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77686_rtc_pm_ops, ptr null, ptr null }, ptr @rtc_id, i8 0 }, align 4
@__exitcall_max77686_rtc_driver_exit = internal global ptr @max77686_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [51 x i8] c"rtc_max77686.description=Maxim MAX77686 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [59 x i8] c"rtc_max77686.author=Chiwoong Byun <woong.byun@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [43 x i8] c"rtc_max77686.file=drivers/rtc/rtc-max77686\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [25 x i8] c"rtc_max77686.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"max77686-rtc\00", align 1
@max77686_rtc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @max77686_rtc_suspend, ptr @max77686_rtc_resume, ptr @max77686_rtc_suspend, ptr @max77686_rtc_resume, ptr @max77686_rtc_suspend, ptr @max77686_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rtc_id = internal constant [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max77686-rtc\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @max77686_drv_data to i32) }, %struct.platform_device_id { [20 x i8] c"max77802-rtc\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @max77802_drv_data to i32) }, %struct.platform_device_id { [20 x i8] c"max77620-rtc\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @max77620_drv_data to i32) }, %struct.platform_device_id zeroinitializer], align 4
@max77686_rtc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&info->lock\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to initialize RTC reg:%d\0A\00", align 1
@max77686_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @max77686_rtc_read_time, ptr @max77686_rtc_set_time, ptr @max77686_rtc_read_alarm, ptr @max77686_rtc_set_alarm, ptr null, ptr @max77686_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to register RTC device: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"rtc-alarm1\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to request alarm IRQ: %d: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Failed to get rtc regmap\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Failed to allocate I2C device for RTC\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Failed to allocate RTC regmap: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Failed to add RTC irq chip: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Fail to write controlm reg(%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Fail to write update reg(ret=%d, data=0x%x)\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Fail to read time reg(%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Fail to write time reg(%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"RTC cannot handle the year %d.\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Fail to read alarm reg(%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"alarm enable register not set(%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"fail to read alarm enable(%d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"Fail to read alarm pending status reg(%d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"Fail to write alarm reg(%d)\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"%s: should have mutex locked\0A\00", align 1
@__func__.max77686_rtc_stop_alarm = private unnamed_addr constant [24 x i8] c"max77686_rtc_stop_alarm\00", align 1
@__func__.max77686_rtc_start_alarm = private unnamed_addr constant [25 x i8] c"max77686_rtc_start_alarm\00", align 1
@max77686_drv_data = internal constant %struct.max77686_rtc_driver_data { i32 16000, i8 127, ptr @max77686_map, i8 0, i32 6, i8 0, i32 7, ptr @max77686_rtc_irq_chip, ptr @max77686_rtc_regmap_config }, align 4
@max77802_drv_data = internal constant %struct.max77686_rtc_driver_data { i32 200, i8 -1, ptr @max77802_map, i8 1, i32 -1, i8 0, i32 7, ptr @max77802_rtc_irq_chip, ptr null }, align 4
@max77620_drv_data = internal constant %struct.max77686_rtc_driver_data { i32 16000, i8 127, ptr @max77686_map, i8 0, i32 104, i8 1, i32 -1, ptr @max77686_rtc_irq_chip, ptr @max77620_rtc_regmap_config }, align 4
@max77686_map = internal constant [26 x i32] [i32 2, i32 3, i32 4, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 -559038737], align 4
@max77686_rtc_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@max77686_rtc_irqs = internal constant [6 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }], align 4
@max77686_rtc_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str, i32 0, i32 0, ptr null, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 1, ptr @max77686_rtc_irqs, i32 6, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@max77802_map = internal constant [26 x i32] [i32 194, i32 195, i32 196, i32 198, i32 199, i32 200, i32 201, i32 202, i32 203, i32 204, i32 205, i32 207, i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 215, i32 216, i32 217, i32 218, i32 219, i32 220, i32 221, i32 206], align 4
@.str.22 = private unnamed_addr constant [13 x i8] c"max77802-rtc\00", align 1
@max77802_rtc_irq_chip = internal constant { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.22, i32 0, i32 0, ptr null, i32 0, i32 192, i32 193, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 1, ptr @max77686_rtc_irqs, i32 6, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, align 4
@max77620_rtc_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_max77686_rtc_driver_exit, ptr @__initcall__kmod_rtc_max77686__247_869_max77686_rtc_driver_init6, ptr @max77686_rtc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @max77686_rtc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77686_rtc_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @max77686_rtc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77686_rtc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77686_rtc_probe(ptr noundef %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 60, i32 noundef 3520) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %131, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @max77686_rtc_probe.__key) #7
  store ptr %5, ptr %6, align 4
  %10 = getelementptr inbounds %struct.platform_device_id, ptr %4, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 6
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %12, i32 0, i32 5
  %17 = load i8, ptr %16, align 4, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %8
  %20 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %21 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 8
  store i32 %20, ptr %21, align 4
  %22 = icmp slt i32 %20, 0
  br i1 %22, label %131, label %27

23:                                               ; preds = %8
  %24 = getelementptr i8, ptr %15, i32 476
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 8
  store i32 %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = tail call ptr @dev_get_regmap(ptr noundef %15, ptr noundef null) #7
  %29 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 4
  store ptr %28, ptr %29, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.6) #8
  br label %131

33:                                               ; preds = %27
  %34 = load ptr, ptr %13, align 4
  %35 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %34, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 5
  store ptr %28, ptr %39, align 4
  br label %64

40:                                               ; preds = %33
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr i8, ptr %15, i32 -8
  %43 = load ptr, ptr %42, align 8
  %44 = trunc i32 %36 to i16
  %45 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %41, ptr noundef %43, i16 noundef zeroext %44) #7
  %46 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 1
  store ptr %45, ptr %46, align 4
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.7) #8
  %50 = load ptr, ptr %46, align 4
  %51 = ptrtoint ptr %50 to i32
  br label %76

52:                                               ; preds = %40
  %53 = load ptr, ptr %13, align 4
  %54 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %53, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  %56 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %45, ptr noundef %55, ptr noundef null, ptr noundef null) #7
  %57 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 5
  store ptr %56, ptr %57, align 4
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = load ptr, ptr %13, align 4
  br label %64

61:                                               ; preds = %52
  %62 = ptrtoint ptr %56 to i32
  %63 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.8, i32 noundef %62) #8
  br label %76

64:                                               ; preds = %59, %38
  %65 = phi ptr [ %60, %59 ], [ %34, %38 ]
  %66 = phi ptr [ %56, %59 ], [ %28, %38 ]
  %67 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 8
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %65, i32 0, i32 7
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 7
  %72 = tail call i32 @regmap_add_irq_chip(ptr noundef %66, i32 noundef %68, i32 noundef 8320, i32 noundef 0, ptr noundef %70, ptr noundef %71) #7
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.9, i32 noundef %72) #8
  br label %131

76:                                               ; preds = %61, %48
  %77 = phi i32 [ %51, %48 ], [ %62, %61 ]
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %131, label %79

79:                                               ; preds = %76, %64
  %80 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %80, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #7
  store i16 515, ptr %2, align 2, !annotation !9
  %81 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 10
  store i32 1, ptr %81, align 4
  %82 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 5
  %83 = load ptr, ptr %82, align 4
  %84 = load ptr, ptr %13, align 4
  %85 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %84, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  %87 = load i32, ptr %86, align 4
  %88 = call i32 @regmap_bulk_write(ptr noundef %83, i32 noundef %87, ptr noundef nonnull %2, i32 noundef 2) #7
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.10, i32 noundef %88) #8
  br label %104

92:                                               ; preds = %79
  %93 = load ptr, ptr %13, align 4
  %94 = load i32, ptr %93, align 4
  %95 = load ptr, ptr %82, align 4
  %96 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %93, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr i32, ptr %97, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef %99, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %92
  %103 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.11, i32 noundef %100, i32 noundef 1) #8
  br label %104

104:                                              ; preds = %102, %90
  %105 = phi i32 [ %100, %102 ], [ %88, %90 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef %105) #8
  br label %125

106:                                              ; preds = %92
  %107 = shl i32 %94, 1
  call void @usleep_range_state(i32 noundef %94, i32 noundef %107, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #7
  %108 = call i32 @device_init_wakeup(ptr noundef %5, i1 noundef zeroext true) #7
  %109 = call ptr @devm_rtc_device_register(ptr noundef %5, ptr noundef %4, ptr noundef nonnull @max77686_rtc_ops, ptr noundef null) #7
  %110 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 2
  store ptr %109, ptr %110, align 4
  %111 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = ptrtoint ptr %109 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %113) #8
  br label %125

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 7
  %116 = load ptr, ptr %115, align 4
  %117 = call i32 @regmap_irq_get_virq(ptr noundef %116, i32 noundef 1) #7
  %118 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 9
  store i32 %117, ptr %118, align 4
  %119 = icmp slt i32 %117, 1
  br i1 %119, label %125, label %120

120:                                              ; preds = %114
  %121 = call i32 @request_threaded_irq(i32 noundef %117, ptr noundef null, ptr noundef nonnull @max77686_rtc_alarm_irq, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull %6) #7
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load i32, ptr %118, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %124, i32 noundef %121) #8
  br label %125

125:                                              ; preds = %123, %114, %112, %104
  %126 = phi i32 [ %105, %104 ], [ %113, %112 ], [ %121, %123 ], [ -6, %114 ]
  %127 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 8
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 7
  %130 = load ptr, ptr %129, align 4
  call void @regmap_del_irq_chip(i32 noundef %128, ptr noundef %130) #7
  br label %131

131:                                              ; preds = %125, %120, %76, %74, %31, %19, %1
  %132 = phi i32 [ %126, %125 ], [ -12, %1 ], [ %77, %76 ], [ 0, %120 ], [ %20, %19 ], [ -19, %31 ], [ %72, %74 ]
  ret i32 %132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77686_rtc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.max77686_rtc_info, ptr %3, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %3) #7
  %7 = getelementptr inbounds %struct.max77686_rtc_info, ptr %3, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.max77686_rtc_info, ptr %3, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %8, ptr noundef %10) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77686_rtc_alarm_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void @rtc_update_irq(ptr noundef %4, i32 noundef 1, i32 noundef 160) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_i2c_new_dummy_device(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77686_rtc_read_time(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [7 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %3, i8 0, i32 7, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.max77686_rtc_info, ptr %5, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %6) #7
  %7 = getelementptr inbounds %struct.max77686_rtc_info, ptr %5, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.max77686_rtc_info, ptr %5, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %8, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i32, ptr %13, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %15, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.11, i32 noundef %16, i32 noundef 16) #8
  br label %94

20:                                               ; preds = %2
  %21 = shl i32 %9, 1
  tail call void @usleep_range_state(i32 noundef %9, i32 noundef %21, i32 noundef 2) #7
  %22 = load ptr, ptr %10, align 4
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i32, ptr %25, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = call i32 @regmap_bulk_read(ptr noundef %22, i32 noundef %27, ptr noundef nonnull %3, i32 noundef 7) #7
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.12, i32 noundef %28) #8
  br label %94

32:                                               ; preds = %20
  %33 = load ptr, ptr %7, align 4
  %34 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %33, i32 0, i32 1
  %35 = load i8, ptr %34, align 4
  %36 = load i8, ptr %3, align 1
  %37 = and i8 %36, %35
  %38 = zext i8 %37 to i32
  store i32 %38, ptr %1, align 4
  %39 = getelementptr inbounds i8, ptr %3, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = and i8 %40, %35
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.max77686_rtc_info, ptr %5, i32 0, i32 10
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  %47 = getelementptr inbounds i8, ptr %3, i32 2
  %48 = load i8, ptr %47, align 1
  br i1 %46, label %53, label %49

49:                                               ; preds = %32
  %50 = and i8 %48, 31
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %51, ptr %52, align 4
  br label %61

53:                                               ; preds = %32
  %54 = and i8 %48, 15
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %55, ptr %56, align 4
  %57 = and i8 %48, 64
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = add nuw nsw i32 %55, 12
  store i32 %60, ptr %56, align 4
  br label %61

61:                                               ; preds = %59, %53, %49
  %62 = getelementptr inbounds i8, ptr %3, i32 3
  %63 = load i8, ptr %62, align 1
  %64 = and i8 %63, %35
  %65 = call i8 @llvm.cttz.i8(i8 %64, i1 true) #7, !range !10
  %66 = zext i8 %65 to i32
  %67 = icmp eq i8 %64, 0
  %68 = select i1 %67, i32 -1, i32 %66
  %69 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %68, ptr %69, align 4
  %70 = getelementptr inbounds i8, ptr %3, i32 6
  %71 = load i8, ptr %70, align 1
  %72 = and i8 %71, 31
  %73 = zext i8 %72 to i32
  %74 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %73, ptr %74, align 4
  %75 = getelementptr inbounds i8, ptr %3, i32 4
  %76 = load i8, ptr %75, align 1
  %77 = and i8 %76, 15
  %78 = zext i8 %77 to i32
  %79 = add nsw i32 %78, -1
  %80 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds i8, ptr %3, i32 5
  %82 = load i8, ptr %81, align 1
  %83 = and i8 %82, %35
  %84 = zext i8 %83 to i32
  %85 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 7
  store i32 0, ptr %86, align 4
  %87 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 8
  store i32 0, ptr %87, align 4
  %88 = load ptr, ptr %7, align 4
  %89 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %88, i32 0, i32 3
  %90 = load i8, ptr %89, align 4, !range !8
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %61
  %93 = add nuw nsw i32 %84, 100
  store i32 %93, ptr %85, align 4
  br label %94

94:                                               ; preds = %92, %61, %30, %18
  %95 = phi i32 [ %28, %30 ], [ %16, %18 ], [ %28, %61 ], [ %28, %92 ]
  call void @mutex_unlock(ptr noundef %6) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #7
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77686_rtc_set_time(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [7 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #7
  %6 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 0, ptr %6, align 1, !annotation !9
  %7 = load i32, ptr %1, align 4
  %8 = trunc i32 %7 to i8
  store i8 %8, ptr %3, align 1
  %9 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %11, ptr %12, align 1
  %13 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %15, ptr %16, align 1
  %17 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = shl nuw i32 1, %18
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds i8, ptr %3, i32 6
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = trunc i32 %27 to i8
  %29 = add i8 %28, 1
  %30 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds %struct.max77686_rtc_info, ptr %5, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %32, i32 0, i32 3
  %34 = load i8, ptr %33, align 4, !range !8
  %35 = icmp eq i8 %34, 0
  %36 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  br i1 %35, label %41, label %38

38:                                               ; preds = %2
  %39 = trunc i32 %37 to i8
  %40 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %39, ptr %40, align 1
  br label %51

41:                                               ; preds = %2
  %42 = icmp sgt i32 %37, 100
  %43 = trunc i32 %37 to i8
  %44 = add i8 %43, -100
  %45 = select i1 %42, i8 %44, i8 0
  %46 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %45, ptr %46, align 1
  %47 = icmp slt i32 %37, 100
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load ptr, ptr %5, align 4
  %50 = add nsw i32 %37, 1900
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.14, i32 noundef %50) #8
  br label %80

51:                                               ; preds = %41, %38
  %52 = getelementptr inbounds %struct.max77686_rtc_info, ptr %5, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %52) #7
  %53 = getelementptr inbounds %struct.max77686_rtc_info, ptr %5, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %31, align 4
  %56 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i32, ptr %57, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = call i32 @regmap_bulk_write(ptr noundef %54, i32 noundef %59, ptr noundef nonnull %3, i32 noundef 7) #7
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.13, i32 noundef %60) #8
  br label %78

64:                                               ; preds = %51
  %65 = load ptr, ptr %31, align 4
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %53, align 4
  %68 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %65, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i32, ptr %69, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef %71, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.11, i32 noundef %72, i32 noundef 1) #8
  br label %78

76:                                               ; preds = %64
  %77 = shl i32 %66, 1
  call void @usleep_range_state(i32 noundef %66, i32 noundef %77, i32 noundef 2) #7
  br label %78

78:                                               ; preds = %76, %74, %62
  %79 = phi i32 [ %60, %62 ], [ %72, %74 ], [ %72, %76 ]
  call void @mutex_unlock(ptr noundef %52) #7
  br label %80

80:                                               ; preds = %78, %48
  %81 = phi i32 [ %79, %78 ], [ -22, %48 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #7
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77686_rtc_read_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [7 x i8], align 1
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %3, i8 0, i32 7, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %11) #7
  %12 = load ptr, ptr %7, align 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %12, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i32, ptr %17, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %19, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.11, i32 noundef %20, i32 noundef 16) #8
  br label %151

24:                                               ; preds = %2
  %25 = shl i32 %13, 1
  tail call void @usleep_range_state(i32 noundef %13, i32 noundef %25, i32 noundef 2) #7
  %26 = load ptr, ptr %14, align 4
  %27 = getelementptr i32, ptr %10, i32 11
  %28 = load i32, ptr %27, align 4
  %29 = call i32 @regmap_bulk_read(ptr noundef %26, i32 noundef %28, ptr noundef nonnull %3, i32 noundef 7) #7
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.15, i32 noundef %29) #8
  br label %151

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %35 = load ptr, ptr %7, align 4
  %36 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %35, i32 0, i32 1
  %37 = load i8, ptr %36, align 4
  %38 = load i8, ptr %3, align 1
  %39 = and i8 %38, %37
  %40 = zext i8 %39 to i32
  store i32 %40, ptr %34, align 4
  %41 = getelementptr inbounds i8, ptr %3, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, %37
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 10
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds i8, ptr %3, i32 2
  %50 = load i8, ptr %49, align 1
  br i1 %48, label %55, label %51

51:                                               ; preds = %33
  %52 = and i8 %50, 31
  %53 = zext i8 %52 to i32
  %54 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %53, ptr %54, align 4
  br label %63

55:                                               ; preds = %33
  %56 = and i8 %50, 15
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %57, ptr %58, align 4
  %59 = and i8 %50, 64
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = add nuw nsw i32 %57, 12
  store i32 %62, ptr %58, align 4
  br label %63

63:                                               ; preds = %61, %55, %51
  %64 = getelementptr inbounds i8, ptr %3, i32 3
  %65 = load i8, ptr %64, align 1
  %66 = and i8 %65, %37
  %67 = call i8 @llvm.cttz.i8(i8 %66, i1 true) #7, !range !10
  %68 = zext i8 %67 to i32
  %69 = icmp eq i8 %66, 0
  %70 = select i1 %69, i32 -1, i32 %68
  %71 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds i8, ptr %3, i32 6
  %73 = load i8, ptr %72, align 1
  %74 = and i8 %73, 31
  %75 = zext i8 %74 to i32
  %76 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds i8, ptr %3, i32 4
  %78 = load i8, ptr %77, align 1
  %79 = and i8 %78, 15
  %80 = zext i8 %79 to i32
  %81 = add nsw i32 %80, -1
  %82 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds i8, ptr %3, i32 5
  %84 = load i8, ptr %83, align 1
  %85 = and i8 %84, %37
  %86 = zext i8 %85 to i32
  %87 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 7
  store i32 0, ptr %88, align 4
  %89 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 8
  store i32 0, ptr %89, align 4
  %90 = load ptr, ptr %7, align 4
  %91 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %90, i32 0, i32 3
  %92 = load i8, ptr %91, align 4, !range !8
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %63
  %95 = add nuw nsw i32 %86, 100
  store i32 %95, ptr %87, align 4
  br label %96

96:                                               ; preds = %94, %63
  store i8 0, ptr %1, align 4
  %97 = load ptr, ptr %7, align 4
  %98 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %97, i32 0, i32 3
  %99 = load i8, ptr %98, align 4, !range !8
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = icmp sgt i8 %38, -1
  %103 = icmp sgt i8 %42, -1
  %104 = select i1 %102, i1 %103, i1 false
  %105 = icmp sgt i8 %50, -1
  %106 = select i1 %104, i1 %105, i1 false
  %107 = icmp sgt i8 %65, -1
  %108 = select i1 %106, i1 %107, i1 false
  %109 = icmp sgt i8 %78, -1
  %110 = select i1 %108, i1 %109, i1 false
  %111 = icmp sgt i8 %84, -1
  %112 = select i1 %110, i1 %111, i1 false
  %113 = icmp sgt i8 %73, -1
  %114 = select i1 %112, i1 %113, i1 false
  br i1 %114, label %132, label %130

115:                                              ; preds = %96
  %116 = getelementptr i32, ptr %10, i32 25
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, -559038737
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.16, i32 noundef -22) #8
  br label %151

121:                                              ; preds = %115
  %122 = load ptr, ptr %14, align 4
  %123 = call i32 @regmap_read(ptr noundef %122, i32 noundef %117, ptr noundef nonnull %4) #7
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.17, i32 noundef %123) #8
  br label %151

127:                                              ; preds = %121
  %128 = load i32, ptr %4, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %127, %101
  %131 = phi i32 [ %123, %127 ], [ %29, %101 ]
  store i8 1, ptr %1, align 4
  br label %132

132:                                              ; preds = %130, %127, %101
  %133 = phi i32 [ %123, %127 ], [ %29, %101 ], [ %131, %130 ]
  %134 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 1
  store i8 0, ptr %134, align 1
  %135 = load ptr, ptr %7, align 4
  %136 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %135, i32 0, i32 6
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %151, label %139

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.max77686_rtc_info, ptr %6, i32 0, i32 4
  %141 = load ptr, ptr %140, align 4
  %142 = call i32 @regmap_read(ptr noundef %141, i32 noundef %137, ptr noundef nonnull %4) #7
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.18, i32 noundef %142) #8
  br label %151

146:                                              ; preds = %139
  %147 = load i32, ptr %4, align 4
  %148 = and i32 %147, 16
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  store i8 1, ptr %134, align 1
  br label %151

151:                                              ; preds = %150, %146, %144, %132, %125, %119, %31, %22
  %152 = phi i32 [ %29, %31 ], [ -22, %119 ], [ %123, %125 ], [ %133, %132 ], [ %142, %144 ], [ %142, %150 ], [ %142, %146 ], [ %20, %22 ]
  call void @mutex_unlock(ptr noundef %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #7
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77686_rtc_set_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [7 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #7
  %6 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 0, ptr %6, align 1, !annotation !9
  %7 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = trunc i32 %8 to i8
  store i8 %9, ptr %3, align 1
  %10 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %12, ptr %13, align 1
  %14 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %16, ptr %17, align 1
  %18 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = shl nuw i32 1, %19
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds i8, ptr %3, i32 6
  store i8 %25, ptr %26, align 1
  %27 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = trunc i32 %28 to i8
  %30 = add i8 %29, 1
  %31 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %30, ptr %31, align 1
  %32 = getelementptr inbounds %struct.max77686_rtc_info, ptr %5, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %33, i32 0, i32 3
  %35 = load i8, ptr %34, align 4, !range !8
  %36 = icmp eq i8 %35, 0
  %37 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %38 = load i32, ptr %37, align 4
  br i1 %36, label %42, label %39

39:                                               ; preds = %2
  %40 = trunc i32 %38 to i8
  %41 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %40, ptr %41, align 1
  br label %52

42:                                               ; preds = %2
  %43 = icmp sgt i32 %38, 100
  %44 = trunc i32 %38 to i8
  %45 = add i8 %44, -100
  %46 = select i1 %43, i8 %45, i8 0
  %47 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %46, ptr %47, align 1
  %48 = icmp slt i32 %38, 100
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load ptr, ptr %5, align 4
  %51 = add nsw i32 %38, 1900
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.14, i32 noundef %51) #8
  br label %88

52:                                               ; preds = %42, %39
  %53 = getelementptr inbounds %struct.max77686_rtc_info, ptr %5, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %53) #7
  %54 = tail call fastcc i32 @max77686_rtc_stop_alarm(ptr noundef %5)
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %86, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.max77686_rtc_info, ptr %5, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %32, align 4
  %60 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i32, ptr %61, i32 11
  %63 = load i32, ptr %62, align 4
  %64 = call i32 @regmap_bulk_write(ptr noundef %58, i32 noundef %63, ptr noundef nonnull %3, i32 noundef 7) #7
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.19, i32 noundef %64) #8
  br label %86

68:                                               ; preds = %56
  %69 = load ptr, ptr %32, align 4
  %70 = load i32, ptr %69, align 4
  %71 = load ptr, ptr %57, align 4
  %72 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %69, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i32, ptr %73, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef %75, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.11, i32 noundef %76, i32 noundef 1) #8
  br label %86

80:                                               ; preds = %68
  %81 = shl i32 %70, 1
  call void @usleep_range_state(i32 noundef %70, i32 noundef %81, i32 noundef 2) #7
  %82 = load i8, ptr %1, align 4
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = call fastcc i32 @max77686_rtc_start_alarm(ptr noundef %5)
  br label %86

86:                                               ; preds = %84, %80, %78, %66, %52
  %87 = phi i32 [ %54, %52 ], [ %64, %66 ], [ %85, %84 ], [ %76, %80 ], [ %76, %78 ]
  call void @mutex_unlock(ptr noundef %53) #7
  br label %88

88:                                               ; preds = %86, %49
  %89 = phi i32 [ %87, %86 ], [ -22, %49 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #7
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77686_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.max77686_rtc_info, ptr %4, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %5) #7
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @max77686_rtc_start_alarm(ptr noundef %4)
  br label %11

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @max77686_rtc_stop_alarm(ptr noundef %4)
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  tail call void @mutex_unlock(ptr noundef %5) #7
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max77686_rtc_stop_alarm(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [7 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %2, i8 0, i32 7, i1 false), !annotation !9
  %3 = getelementptr inbounds %struct.max77686_rtc_info, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.max77686_rtc_info, ptr %0, i32 0, i32 3
  %8 = tail call zeroext i1 @mutex_is_locked(ptr noundef %7) #7
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.max77686_rtc_stop_alarm) #8
  br label %11

11:                                               ; preds = %9, %1
  %12 = load ptr, ptr %3, align 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.max77686_rtc_info, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %12, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i32, ptr %17, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %19, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.11, i32 noundef %20, i32 noundef 16) #8
  br label %90

24:                                               ; preds = %11
  %25 = shl i32 %13, 1
  tail call void @usleep_range_state(i32 noundef %13, i32 noundef %25, i32 noundef 2) #7
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %26, i32 0, i32 3
  %28 = load i8, ptr %27, align 4, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %24
  %31 = getelementptr i32, ptr %6, i32 25
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, -559038737
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.16, i32 noundef -22) #8
  br label %90

36:                                               ; preds = %30
  %37 = load ptr, ptr %14, align 4
  %38 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef %32, i32 noundef 0) #7
  br label %71

39:                                               ; preds = %24
  %40 = load ptr, ptr %14, align 4
  %41 = getelementptr i32, ptr %6, i32 11
  %42 = load i32, ptr %41, align 4
  %43 = call i32 @regmap_bulk_read(ptr noundef %40, i32 noundef %42, ptr noundef nonnull %2, i32 noundef 7) #7
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %39
  %46 = load i8, ptr %2, align 1
  %47 = and i8 %46, 127
  store i8 %47, ptr %2, align 1
  %48 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = and i8 %49, 127
  store i8 %50, ptr %48, align 1
  %51 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = and i8 %52, 127
  store i8 %53, ptr %51, align 1
  %54 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 3
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %55, 127
  store i8 %56, ptr %54, align 1
  %57 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 4
  %58 = load i8, ptr %57, align 1
  %59 = and i8 %58, 127
  store i8 %59, ptr %57, align 1
  %60 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 5
  %61 = load i8, ptr %60, align 1
  %62 = and i8 %61, 127
  store i8 %62, ptr %60, align 1
  %63 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 6
  %64 = load i8, ptr %63, align 1
  %65 = and i8 %64, 127
  store i8 %65, ptr %63, align 1
  %66 = load ptr, ptr %14, align 4
  %67 = load i32, ptr %41, align 4
  %68 = call i32 @regmap_bulk_write(ptr noundef %66, i32 noundef %67, ptr noundef nonnull %2, i32 noundef 7) #7
  br label %71

69:                                               ; preds = %39
  %70 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.15, i32 noundef %43) #8
  br label %90

71:                                               ; preds = %45, %36
  %72 = phi i32 [ %38, %36 ], [ %68, %45 ]
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.19, i32 noundef %72) #8
  br label %90

76:                                               ; preds = %71
  %77 = load ptr, ptr %3, align 4
  %78 = load i32, ptr %77, align 4
  %79 = load ptr, ptr %14, align 4
  %80 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %77, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i32, ptr %81, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef %83, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.11, i32 noundef %84, i32 noundef 1) #8
  br label %90

88:                                               ; preds = %76
  %89 = shl i32 %78, 1
  call void @usleep_range_state(i32 noundef %78, i32 noundef %89, i32 noundef 2) #7
  br label %90

90:                                               ; preds = %88, %86, %74, %69, %34, %22
  %91 = phi i32 [ -22, %34 ], [ %72, %74 ], [ %43, %69 ], [ %20, %22 ], [ %84, %86 ], [ %84, %88 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #7
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max77686_rtc_start_alarm(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [7 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %2, i8 0, i32 7, i1 false), !annotation !9
  %3 = getelementptr inbounds %struct.max77686_rtc_info, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.max77686_rtc_info, ptr %0, i32 0, i32 3
  %8 = tail call zeroext i1 @mutex_is_locked(ptr noundef %7) #7
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.max77686_rtc_start_alarm) #8
  br label %11

11:                                               ; preds = %9, %1
  %12 = load ptr, ptr %3, align 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.max77686_rtc_info, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %12, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i32, ptr %17, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %19, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.11, i32 noundef %20, i32 noundef 16) #8
  br label %100

24:                                               ; preds = %11
  %25 = shl i32 %13, 1
  tail call void @usleep_range_state(i32 noundef %13, i32 noundef %25, i32 noundef 2) #7
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %26, i32 0, i32 3
  %28 = load i8, ptr %27, align 4, !range !8
  %29 = icmp eq i8 %28, 0
  %30 = load ptr, ptr %14, align 4
  br i1 %29, label %35, label %31

31:                                               ; preds = %24
  %32 = getelementptr i32, ptr %6, i32 25
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef %33, i32 noundef 119) #7
  br label %81

35:                                               ; preds = %24
  %36 = getelementptr i32, ptr %6, i32 11
  %37 = load i32, ptr %36, align 4
  %38 = call i32 @regmap_bulk_read(ptr noundef %30, i32 noundef %37, ptr noundef nonnull %2, i32 noundef 7) #7
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.15, i32 noundef %38) #8
  br label %100

42:                                               ; preds = %35
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %43, i32 0, i32 1
  %45 = load i8, ptr %2, align 1
  %46 = or i8 %45, -128
  store i8 %46, ptr %2, align 1
  %47 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = or i8 %48, -128
  store i8 %49, ptr %47, align 1
  %50 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 2
  %51 = load i8, ptr %50, align 1
  %52 = or i8 %51, -128
  store i8 %52, ptr %50, align 1
  %53 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 3
  %54 = load i8, ptr %53, align 1
  %55 = and i8 %54, 127
  store i8 %55, ptr %53, align 1
  %56 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 4
  %57 = load i8, ptr %56, align 1
  %58 = and i8 %57, 15
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %42
  %61 = or i8 %57, -128
  store i8 %61, ptr %56, align 1
  br label %62

62:                                               ; preds = %60, %42
  %63 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 5
  %64 = load i8, ptr %63, align 1
  %65 = load i8, ptr %44, align 4
  %66 = and i8 %65, %64
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = or i8 %64, -128
  store i8 %69, ptr %63, align 1
  br label %70

70:                                               ; preds = %68, %62
  %71 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 6
  %72 = load i8, ptr %71, align 1
  %73 = and i8 %72, 31
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %70
  %76 = or i8 %72, -128
  store i8 %76, ptr %71, align 1
  br label %77

77:                                               ; preds = %75, %70
  %78 = load ptr, ptr %14, align 4
  %79 = load i32, ptr %36, align 4
  %80 = call i32 @regmap_bulk_write(ptr noundef %78, i32 noundef %79, ptr noundef nonnull %2, i32 noundef 7) #7
  br label %81

81:                                               ; preds = %77, %31
  %82 = phi i32 [ %34, %31 ], [ %80, %77 ]
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.19, i32 noundef %82) #8
  br label %100

86:                                               ; preds = %81
  %87 = load ptr, ptr %3, align 4
  %88 = load i32, ptr %87, align 4
  %89 = load ptr, ptr %14, align 4
  %90 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %87, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr i32, ptr %91, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = call i32 @regmap_update_bits_base(ptr noundef %89, i32 noundef %93, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.11, i32 noundef %94, i32 noundef 1) #8
  br label %100

98:                                               ; preds = %86
  %99 = shl i32 %88, 1
  call void @usleep_range_state(i32 noundef %88, i32 noundef %99, i32 noundef 2) #7
  br label %100

100:                                              ; preds = %98, %96, %84, %40, %22
  %101 = phi i32 [ %82, %84 ], [ %38, %40 ], [ %20, %22 ], [ %94, %96 ], [ %94, %98 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #7
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77686_rtc_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.max77686_rtc_info, ptr %3, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #7
  br label %16

16:                                               ; preds = %12, %8, %1
  %17 = phi i32 [ %15, %12 ], [ 0, %8 ], [ 0, %1 ]
  %18 = getelementptr inbounds %struct.max77686_rtc_info, ptr %3, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %19, i32 0, i32 5
  %21 = load i8, ptr %20, align 4, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.max77686_rtc_info, ptr %3, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  tail call void @disable_irq(i32 noundef %25) #7
  br label %26

26:                                               ; preds = %23, %16
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77686_rtc_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.max77686_rtc_info, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %5, i32 0, i32 5
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.max77686_rtc_info, ptr %3, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  tail call void @enable_irq(i32 noundef %11) #7
  br label %12

12:                                               ; preds = %9, %1
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.max77686_rtc_info, ptr %22, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @irq_set_irq_wake(i32 noundef %24, i32 noundef 0) #7
  br label %26

26:                                               ; preds = %21, %17, %12
  %27 = phi i32 [ %25, %21 ], [ 0, %17 ], [ 0, %12 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 9}
