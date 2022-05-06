; ModuleID = '/llk/IR/drivers/rtc/rtc-stm32.c_pt.bc'
source_filename = "../drivers/rtc/rtc-stm32.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.stm32_rtc_data = type { %struct.stm32_rtc_registers, %struct.stm32_rtc_events, ptr, i8, i8, i8 }
%struct.stm32_rtc_registers = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.stm32_rtc_events = type { i32 }
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
%struct.stm32_rtc = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_stm32__210_928_stm32_rtc_driver_init6 = internal global ptr @stm32_rtc_driver_init, section ".initcall6.init", align 4
@stm32_rtc_driver = internal global %struct.platform_driver { ptr @stm32_rtc_probe, ptr @stm32_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_rtc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_stm32_rtc_driver_exit = internal global ptr @stm32_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias211 = internal constant [35 x i8] c"rtc_stm32.alias=platform:stm32_rtc\00", section ".modinfo", align 1
@__UNIQUE_ID_author212 = internal constant [58 x i8] c"rtc_stm32.author=Amelie Delaunay <amelie.delaunay@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description213 = internal constant [70 x i8] c"rtc_stm32.description=STMicroelectronics STM32 Real Time Clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file214 = internal constant [37 x i8] c"rtc_stm32.file=drivers/rtc/rtc-stm32\00", section ".modinfo", align 1
@__UNIQUE_ID_license215 = internal constant [25 x i8] c"rtc_stm32.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"stm32_rtc\00", align 1
@stm32_rtc_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32_rtc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32h7_rtc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp1_data }, %struct.of_device_id zeroinitializer], align 4
@stm32_rtc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_rtc_suspend, ptr @stm32_rtc_resume, ptr @stm32_rtc_suspend, ptr @stm32_rtc_resume, ptr @stm32_rtc_suspend, ptr @stm32_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"no st,syscfg\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"can't read DBP register offset\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"can't read DBP register mask\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"no pclk clock\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"rtc_ck\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"no rtc_ck clock\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"alarm can't wake up the system: %d\00", align 1
@stm32_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @stm32_rtc_read_time, ptr @stm32_rtc_set_time, ptr @stm32_rtc_read_alarm, ptr @stm32_rtc_set_alarm, ptr null, ptr @stm32_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"rtc device registration failed, err=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"IRQ%d (alarm interrupt) already claimed\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Date/Time must be initialized\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"registered rev:%d.%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"rtc_ck is %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"slow\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"Can't enter in init mode. Prescaler config failed.\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.18 = private unnamed_addr constant [45 x i8] c"Can't enter in init mode. Set time aborted.\0A\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"Alarm can be set only on upcoming month.\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Alarm update not allowed\0A\00", align 1
@stm32_rtc_data = internal constant %struct.stm32_rtc_data { %struct.stm32_rtc_registers { i16 0, i16 4, i16 8, i16 12, i16 16, i16 28, i16 36, i16 12, i16 -1, i16 -1 }, %struct.stm32_rtc_events { i32 256 }, ptr @stm32_rtc_clear_events, i8 0, i8 1, i8 0 }, align 4
@stm32h7_rtc_data = internal constant %struct.stm32_rtc_data { %struct.stm32_rtc_registers { i16 0, i16 4, i16 8, i16 12, i16 16, i16 28, i16 36, i16 12, i16 -1, i16 -1 }, %struct.stm32_rtc_events { i32 256 }, ptr @stm32_rtc_clear_events, i8 1, i8 1, i8 0 }, align 4
@stm32mp1_data = internal constant %struct.stm32_rtc_data { %struct.stm32_rtc_registers { i16 0, i16 4, i16 24, i16 12, i16 16, i16 64, i16 36, i16 80, i16 92, i16 1012 }, %struct.stm32_rtc_events { i32 1 }, ptr @stm32mp1_rtc_clear_events, i8 1, i8 0, i8 1 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias211, ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description213, ptr @__UNIQUE_ID_file214, ptr @__UNIQUE_ID_license215, ptr @__exitcall_stm32_rtc_driver_exit, ptr @__initcall__kmod_rtc_stm32__210_928_stm32_rtc_driver_init6, ptr @stm32_rtc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stm32_rtc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_rtc_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @stm32_rtc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_rtc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_rtc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 40, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %316, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %7 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %6 to i32
  br label %316

11:                                               ; preds = %5
  %12 = tail call ptr @of_device_get_match_data(ptr noundef %2) #5
  %13 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 7
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.stm32_rtc_data, ptr %12, i32 0, i32 4
  %15 = load i8, ptr %14, align 1, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %40, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %19 = load ptr, ptr %18, align 8
  %20 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %19, ptr noundef nonnull @.str.1) #5
  %21 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 2
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  %24 = load ptr, ptr %21, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %316

26:                                               ; preds = %17
  %27 = load ptr, ptr %18, align 8
  %28 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 3
  %29 = tail call i32 @of_property_read_u32_index(ptr noundef %27, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef %28) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #6
  br label %316

32:                                               ; preds = %26
  %33 = load ptr, ptr %18, align 8
  %34 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 4
  %35 = tail call i32 @of_property_read_u32_index(ptr noundef %33, ptr noundef nonnull @.str.1, i32 noundef 2, ptr noundef %34) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load ptr, ptr %13, align 4
  br label %40

39:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #6
  br label %316

40:                                               ; preds = %37, %11
  %41 = phi ptr [ %38, %37 ], [ %12, %11 ]
  %42 = getelementptr inbounds %struct.stm32_rtc_data, ptr %41, i32 0, i32 3
  %43 = load i8, ptr %42, align 4, !range !8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 5
  store ptr null, ptr %46, align 4
  %47 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #5
  br label %57

48:                                               ; preds = %40
  %49 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.5) #5
  %50 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 5
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #6
  %53 = load ptr, ptr %50, align 4
  %54 = ptrtoint ptr %53 to i32
  br label %316

55:                                               ; preds = %48
  %56 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.7) #5
  br label %57

57:                                               ; preds = %55, %45
  %58 = phi ptr [ %56, %55 ], [ %47, %45 ]
  %59 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 6
  store ptr %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 6
  %61 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #6
  %63 = load ptr, ptr %60, align 4
  %64 = ptrtoint ptr %63 to i32
  br label %316

65:                                               ; preds = %57
  %66 = load ptr, ptr %13, align 4
  %67 = getelementptr inbounds %struct.stm32_rtc_data, ptr %66, i32 0, i32 3
  %68 = load i8, ptr %67, align 4, !range !8
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 @clk_prepare(ptr noundef %72) #5
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %316

75:                                               ; preds = %70
  %76 = tail call i32 @clk_enable(ptr noundef %72) #5
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load ptr, ptr %60, align 4
  br label %81

80:                                               ; preds = %75
  tail call void @clk_unprepare(ptr noundef %72) #5
  br label %316

81:                                               ; preds = %78, %65
  %82 = phi ptr [ %79, %78 ], [ %58, %65 ]
  %83 = tail call i32 @clk_prepare(ptr noundef %82) #5
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %291

85:                                               ; preds = %81
  %86 = tail call i32 @clk_enable(ptr noundef %82) #5
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %288

88:                                               ; preds = %85
  %89 = load ptr, ptr %13, align 4
  %90 = getelementptr inbounds %struct.stm32_rtc_data, ptr %89, i32 0, i32 4
  %91 = load i8, ptr %90, align 1, !range !8
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 4
  %99 = load i32, ptr %98, align 4
  %100 = tail call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef %97, i32 noundef %99, i32 noundef %99, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %101 = load ptr, ptr %13, align 4
  br label %102

102:                                              ; preds = %93, %88
  %103 = phi ptr [ %101, %93 ], [ %89, %88 ]
  %104 = load ptr, ptr %60, align 4
  %105 = tail call i32 @clk_get_rate(ptr noundef %104) #5
  br label %106

106:                                              ; preds = %112, %102
  %107 = phi i32 [ 128, %102 ], [ %108, %112 ]
  %108 = phi i32 [ 127, %102 ], [ %113, %112 ]
  %109 = udiv i32 %105, %107
  %110 = mul nuw i32 %109, %107
  %111 = icmp eq i32 %110, %105
  br i1 %111, label %115, label %112

112:                                              ; preds = %106
  %113 = add nsw i32 %108, -1
  %114 = icmp eq i32 %108, 0
  br i1 %114, label %120, label %106

115:                                              ; preds = %106
  %116 = add i32 %109, -1
  %117 = icmp ugt i32 %116, 32767
  %118 = icmp ugt i32 %108, 127
  %119 = select i1 %117, i1 true, i1 %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %115, %112
  %121 = lshr i32 %105, 7
  %122 = add nsw i32 %121, -1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16) #6
  br label %123

123:                                              ; preds = %120, %115
  %124 = phi i32 [ 127, %120 ], [ %108, %115 ]
  %125 = phi i32 [ %122, %120 ], [ %116, %115 ]
  %126 = load ptr, ptr %13, align 4
  %127 = load ptr, ptr %7, align 4
  %128 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %126, i32 0, i32 6
  %129 = load i16, ptr %128, align 2
  %130 = zext i16 %129 to i32
  %131 = getelementptr i8, ptr %127, i32 %130
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 202) #5, !srcloc !9
  %132 = load ptr, ptr %7, align 4
  %133 = load i16, ptr %128, align 2
  %134 = zext i16 %133 to i32
  %135 = getelementptr i8, ptr %132, i32 %134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 83) #5, !srcloc !9
  %136 = tail call fastcc i32 @stm32_rtc_enter_init_mode(ptr noundef %3) #5
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %123
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.17) #6
  br label %218

139:                                              ; preds = %123
  %140 = and i32 %125, 32767
  %141 = load ptr, ptr %7, align 4
  %142 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %103, i32 0, i32 4
  %143 = load i16, ptr %142, align 2
  %144 = zext i16 %143 to i32
  %145 = getelementptr i8, ptr %141, i32 %144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %140) #5, !srcloc !9
  %146 = shl nuw nsw i32 %124, 16
  %147 = and i32 %146, 8323072
  %148 = or i32 %140, %147
  %149 = load ptr, ptr %7, align 4
  %150 = load i16, ptr %142, align 2
  %151 = zext i16 %150 to i32
  %152 = getelementptr i8, ptr %149, i32 %151
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %148) #5, !srcloc !9
  %153 = load ptr, ptr %7, align 4
  %154 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %103, i32 0, i32 2
  %155 = load i16, ptr %154, align 2
  %156 = zext i16 %155 to i32
  %157 = getelementptr i8, ptr %153, i32 %156
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #5, !srcloc !10
  %159 = and i32 %158, -65
  %160 = load ptr, ptr %7, align 4
  %161 = load i16, ptr %154, align 2
  %162 = zext i16 %161 to i32
  %163 = getelementptr i8, ptr %160, i32 %162
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %159) #5, !srcloc !9
  %164 = load ptr, ptr %13, align 4
  %165 = load ptr, ptr %7, align 4
  %166 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %164, i32 0, i32 3
  %167 = load i16, ptr %166, align 2
  %168 = zext i16 %167 to i32
  %169 = getelementptr i8, ptr %165, i32 %168
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #5, !srcloc !10
  %171 = and i32 %170, -129
  %172 = load ptr, ptr %7, align 4
  %173 = load i16, ptr %166, align 2
  %174 = zext i16 %173 to i32
  %175 = getelementptr i8, ptr %172, i32 %174
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 %171) #5, !srcloc !9
  %176 = load ptr, ptr %13, align 4
  %177 = load ptr, ptr %7, align 4
  %178 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %176, i32 0, i32 3
  %179 = load i16, ptr %178, align 2
  %180 = zext i16 %179 to i32
  %181 = getelementptr i8, ptr %177, i32 %180
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #5, !srcloc !10
  %183 = and i32 %182, -33
  %184 = load ptr, ptr %7, align 4
  %185 = load i16, ptr %178, align 2
  %186 = zext i16 %185 to i32
  %187 = getelementptr i8, ptr %184, i32 %186
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %183) #5, !srcloc !9
  %188 = tail call i64 @ktime_get() #5
  %189 = add i64 %188, 100000000
  %190 = load ptr, ptr %7, align 4
  %191 = load i16, ptr %178, align 2
  %192 = zext i16 %191 to i32
  %193 = getelementptr i8, ptr %190, i32 %192
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %193) #5, !srcloc !10
  %195 = and i32 %194, 32
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %218

197:                                              ; preds = %200, %139
  %198 = tail call i64 @ktime_get() #5
  %199 = icmp sgt i64 %198, %189
  br i1 %199, label %209, label %200

200:                                              ; preds = %197
  %201 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %201(i32 noundef 2147480) #5
  %202 = load ptr, ptr %7, align 4
  %203 = load i16, ptr %178, align 2
  %204 = zext i16 %203 to i32
  %205 = getelementptr i8, ptr %202, i32 %204
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %205) #5, !srcloc !10
  %207 = and i32 %206, 32
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %197, label %218

209:                                              ; preds = %197
  %210 = load ptr, ptr %7, align 4
  %211 = load i16, ptr %178, align 2
  %212 = zext i16 %211 to i32
  %213 = getelementptr i8, ptr %210, i32 %212
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %213) #5, !srcloc !10
  %215 = and i32 %214, 32
  %216 = icmp eq i32 %215, 0
  %217 = select i1 %216, i32 -110, i32 0
  br label %218

218:                                              ; preds = %209, %200, %139, %138
  %219 = phi i32 [ %136, %138 ], [ 0, %139 ], [ %217, %209 ], [ 0, %200 ]
  %220 = load ptr, ptr %13, align 4
  %221 = load ptr, ptr %7, align 4
  %222 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %220, i32 0, i32 6
  %223 = load i16, ptr %222, align 2
  %224 = zext i16 %223 to i32
  %225 = getelementptr i8, ptr %221, i32 %224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 255) #5, !srcloc !9
  %226 = icmp eq i32 %219, 0
  br i1 %226, label %227, label %285

227:                                              ; preds = %218
  %228 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %229 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 8
  store i32 %228, ptr %229, align 4
  %230 = icmp slt i32 %228, 1
  br i1 %230, label %285, label %231

231:                                              ; preds = %227
  %232 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext true) #5
  %233 = load ptr, ptr %13, align 4
  %234 = getelementptr inbounds %struct.stm32_rtc_data, ptr %233, i32 0, i32 5
  %235 = load i8, ptr %234, align 2, !range !8
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %245, label %237

237:                                              ; preds = %231
  %238 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #5
  %239 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 9
  store i32 %238, ptr %239, align 4
  %240 = icmp sgt i32 %238, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %237
  %242 = tail call i32 @dev_pm_set_dedicated_wake_irq(ptr noundef %2, i32 noundef %238) #5
  br label %245

243:                                              ; preds = %237
  %244 = icmp eq i32 %238, -517
  br i1 %244, label %285, label %245

245:                                              ; preds = %243, %241, %231
  %246 = phi i32 [ %242, %241 ], [ %238, %243 ], [ %232, %231 ]
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %245
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %246) #6
  br label %249

249:                                              ; preds = %248, %245
  %250 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %250, align 8
  %251 = load ptr, ptr %0, align 8
  %252 = tail call ptr @devm_rtc_device_register(ptr noundef %2, ptr noundef %251, ptr noundef nonnull @stm32_rtc_ops, ptr noundef null) #5
  store ptr %252, ptr %3, align 4
  %253 = icmp ugt ptr %252, inttoptr (i32 -4096 to ptr)
  br i1 %253, label %254, label %256

254:                                              ; preds = %249
  %255 = ptrtoint ptr %252 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %255) #6
  br label %285

256:                                              ; preds = %249
  %257 = load i32, ptr %229, align 4
  %258 = load ptr, ptr %0, align 8
  %259 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %257, ptr noundef null, ptr noundef nonnull @stm32_rtc_alarm_irq, i32 noundef 8192, ptr noundef %258, ptr noundef nonnull %3) #5
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %263, label %261

261:                                              ; preds = %256
  %262 = load i32, ptr %229, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %262) #6
  br label %285

263:                                              ; preds = %256
  %264 = load ptr, ptr %7, align 4
  %265 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %12, i32 0, i32 3
  %266 = load i16, ptr %265, align 2
  %267 = zext i16 %266 to i32
  %268 = getelementptr i8, ptr %264, i32 %267
  %269 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %268) #5, !srcloc !10
  %270 = and i32 %269, 16
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %263
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.12) #6
  br label %273

273:                                              ; preds = %272, %263
  %274 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %12, i32 0, i32 9
  %275 = load i16, ptr %274, align 2
  %276 = icmp eq i16 %275, -1
  br i1 %276, label %316, label %277

277:                                              ; preds = %273
  %278 = zext i16 %275 to i32
  %279 = load ptr, ptr %7, align 4
  %280 = getelementptr i8, ptr %279, i32 %278
  %281 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %280) #5, !srcloc !10
  %282 = lshr i32 %281, 4
  %283 = and i32 %282, 15
  %284 = and i32 %281, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %283, i32 noundef %284) #6
  br label %316

285:                                              ; preds = %261, %254, %243, %227, %218
  %286 = phi i32 [ %219, %218 ], [ %255, %254 ], [ %259, %261 ], [ -517, %243 ], [ %228, %227 ]
  %287 = load ptr, ptr %60, align 4
  tail call void @clk_disable(ptr noundef %287) #5
  br label %288

288:                                              ; preds = %285, %85
  %289 = phi ptr [ %287, %285 ], [ %82, %85 ]
  %290 = phi i32 [ %286, %285 ], [ %86, %85 ]
  tail call void @clk_unprepare(ptr noundef %289) #5
  br label %291

291:                                              ; preds = %288, %81
  %292 = phi i32 [ %83, %81 ], [ %290, %288 ]
  %293 = load ptr, ptr %13, align 4
  %294 = getelementptr inbounds %struct.stm32_rtc_data, ptr %293, i32 0, i32 3
  %295 = load i8, ptr %294, align 4, !range !8
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %301, label %297

297:                                              ; preds = %291
  %298 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 5
  %299 = load ptr, ptr %298, align 4
  tail call void @clk_disable(ptr noundef %299) #5
  tail call void @clk_unprepare(ptr noundef %299) #5
  %300 = load ptr, ptr %13, align 4
  br label %301

301:                                              ; preds = %297, %291
  %302 = phi ptr [ %300, %297 ], [ %293, %291 ]
  %303 = getelementptr inbounds %struct.stm32_rtc_data, ptr %302, i32 0, i32 4
  %304 = load i8, ptr %303, align 1, !range !8
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %314, label %306

306:                                              ; preds = %301
  %307 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 2
  %308 = load ptr, ptr %307, align 4
  %309 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 3
  %310 = load i32, ptr %309, align 4
  %311 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 4
  %312 = load i32, ptr %311, align 4
  %313 = tail call i32 @regmap_update_bits_base(ptr noundef %308, i32 noundef %310, i32 noundef %312, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %314

314:                                              ; preds = %306, %301
  tail call void @dev_pm_clear_wake_irq(ptr noundef %2) #5
  %315 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext false) #5
  br label %316

316:                                              ; preds = %314, %277, %273, %80, %70, %62, %52, %39, %31, %23, %9, %1
  %317 = phi i32 [ %10, %9 ], [ %25, %23 ], [ %29, %31 ], [ %35, %39 ], [ %54, %52 ], [ %64, %62 ], [ %292, %314 ], [ -12, %1 ], [ 0, %277 ], [ 0, %273 ], [ %76, %80 ], [ %73, %70 ]
  ret i32 %317
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_rtc_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %5, i32 0, i32 6
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 202) #5, !srcloc !9
  %12 = load ptr, ptr %6, align 4
  %13 = load i16, ptr %8, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %12, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 83) #5, !srcloc !9
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %5, i32 0, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = getelementptr i8, ptr %16, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !10
  %22 = and i32 %21, -4097
  %23 = load ptr, ptr %6, align 4
  %24 = load i16, ptr %17, align 2
  %25 = zext i16 %24 to i32
  %26 = getelementptr i8, ptr %23, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %22) #5, !srcloc !9
  %27 = load ptr, ptr %4, align 4
  %28 = load ptr, ptr %6, align 4
  %29 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %27, i32 0, i32 6
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = getelementptr i8, ptr %28, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 255) #5, !srcloc !9
  %33 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  tail call void @clk_disable(ptr noundef %34) #5
  tail call void @clk_unprepare(ptr noundef %34) #5
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr inbounds %struct.stm32_rtc_data, ptr %35, i32 0, i32 3
  %37 = load i8, ptr %36, align 4, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %1
  %40 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  tail call void @clk_disable(ptr noundef %41) #5
  tail call void @clk_unprepare(ptr noundef %41) #5
  %42 = load ptr, ptr %4, align 4
  br label %43

43:                                               ; preds = %39, %1
  %44 = phi ptr [ %42, %39 ], [ %35, %1 ]
  %45 = getelementptr inbounds %struct.stm32_rtc_data, ptr %44, i32 0, i32 4
  %46 = load i8, ptr %45, align 1, !range !8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %56

56:                                               ; preds = %48, %43
  %57 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @dev_pm_clear_wake_irq(ptr noundef %57) #5
  %58 = tail call i32 @device_init_wakeup(ptr noundef %57, i1 noundef zeroext false) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_dedicated_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_rtc_alarm_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stm32_rtc_data, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.rtc_device, ptr %6, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %7) #5
  %8 = getelementptr inbounds %struct.stm32_rtc, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %4, i32 0, i32 7
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %9, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !10
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %4, i32 0, i32 2
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr i8, ptr %15, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !10
  %21 = load i32, ptr %5, align 4
  %22 = and i32 %21, %14
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %20, 4096
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %2
  %28 = load ptr, ptr %1, align 4
  tail call void @rtc_update_irq(ptr noundef %28, i32 noundef 1, i32 noundef 160) #5
  %29 = load i32, ptr %5, align 4
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr inbounds %struct.stm32_rtc_data, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %1, i32 noundef %29) #5
  br label %33

33:                                               ; preds = %27, %2
  %34 = load ptr, ptr %1, align 4
  %35 = getelementptr inbounds %struct.rtc_device, ptr %34, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %35) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_rtc_enter_init_mode(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm32_rtc, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_rtc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %3, i32 0, i32 3
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !10
  %11 = and i32 %10, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %1
  %14 = or i32 %10, 128
  %15 = load ptr, ptr %4, align 4
  %16 = load i16, ptr %6, align 2
  %17 = zext i16 %16 to i32
  %18 = getelementptr i8, ptr %15, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %14) #5, !srcloc !9
  %19 = tail call i64 @ktime_get() #5
  %20 = add i64 %19, 100000000
  %21 = load ptr, ptr %4, align 4
  %22 = load i16, ptr %6, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %21, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !10
  %26 = and i32 %25, 64
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %31, %13
  %29 = tail call i64 @ktime_get() #5
  %30 = icmp sgt i64 %29, %20
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 2147480) #5
  %33 = load ptr, ptr %4, align 4
  %34 = load i16, ptr %6, align 2
  %35 = zext i16 %34 to i32
  %36 = getelementptr i8, ptr %33, i32 %35
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !10
  %38 = and i32 %37, 64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %28, label %49

40:                                               ; preds = %28
  %41 = load ptr, ptr %4, align 4
  %42 = load i16, ptr %6, align 2
  %43 = zext i16 %42 to i32
  %44 = getelementptr i8, ptr %41, i32 %43
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #5, !srcloc !10
  %46 = and i32 %45, 64
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 -110, i32 0
  br label %49

49:                                               ; preds = %40, %31, %13, %1
  %50 = phi i32 [ 0, %1 ], [ 0, %13 ], [ %48, %40 ], [ 0, %31 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_rtc_read_time(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_rtc, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stm32_rtc, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i16, ptr %6, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !10
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %6, i32 0, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = getelementptr i8, ptr %13, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !10
  %19 = lshr i32 %12, 8
  %20 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %21 = lshr i32 %12, 16
  %22 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %23 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %24 = lshr i32 %18, 8
  %25 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %26 = trunc i32 %12 to i8
  %27 = and i8 %26, 127
  %28 = tail call i32 @_bcd2bin(i8 noundef zeroext %27) #7
  store i32 %28, ptr %1, align 4
  %29 = trunc i32 %19 to i8
  %30 = and i8 %29, 127
  %31 = tail call i32 @_bcd2bin(i8 noundef zeroext %30) #7
  store i32 %31, ptr %20, align 4
  %32 = trunc i32 %21 to i8
  %33 = and i8 %32, 63
  %34 = tail call i32 @_bcd2bin(i8 noundef zeroext %33) #7
  store i32 %34, ptr %22, align 4
  %35 = trunc i32 %18 to i8
  %36 = and i8 %35, 63
  %37 = tail call i32 @_bcd2bin(i8 noundef zeroext %36) #7
  store i32 %37, ptr %23, align 4
  %38 = trunc i32 %24 to i8
  %39 = and i8 %38, 31
  %40 = tail call i32 @_bcd2bin(i8 noundef zeroext %39) #7
  %41 = add i32 %40, -1
  store i32 %41, ptr %25, align 4
  %42 = lshr i32 %18, 16
  %43 = trunc i32 %42 to i8
  %44 = tail call i32 @_bcd2bin(i8 noundef zeroext %43) #7
  %45 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %46 = lshr i32 %18, 13
  %47 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %48 = add i32 %44, 100
  store i32 %48, ptr %47, align 4
  %49 = trunc i32 %46 to i8
  %50 = and i8 %49, 7
  %51 = urem i8 %50, 7
  %52 = zext i8 %51 to i32
  store i32 %52, ptr %45, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_rtc_set_time(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_rtc, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = tail call zeroext i8 @_bin2bcd(i32 noundef %7) #7
  %9 = zext i8 %8 to i32
  store i32 %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #7
  %13 = zext i8 %12 to i32
  store i32 %13, ptr %10, align 4
  %14 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = tail call zeroext i8 @_bin2bcd(i32 noundef %15) #7
  %17 = zext i8 %16 to i32
  store i32 %17, ptr %14, align 4
  %18 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = tail call zeroext i8 @_bin2bcd(i32 noundef %19) #7
  %21 = zext i8 %20 to i32
  store i32 %21, ptr %18, align 4
  %22 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  %25 = tail call zeroext i8 @_bin2bcd(i32 noundef %24) #7
  %26 = zext i8 %25 to i32
  store i32 %26, ptr %22, align 4
  %27 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -100
  %30 = tail call zeroext i8 @_bin2bcd(i32 noundef %29) #7
  %31 = zext i8 %30 to i32
  store i32 %31, ptr %27, align 4
  %32 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 7, i32 %33
  store i32 %35, ptr %32, align 4
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr inbounds %struct.stm32_rtc, ptr %4, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %36, i32 0, i32 6
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  %42 = getelementptr i8, ptr %38, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 202) #5, !srcloc !9
  %43 = load ptr, ptr %37, align 4
  %44 = load i16, ptr %39, align 2
  %45 = zext i16 %44 to i32
  %46 = getelementptr i8, ptr %43, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 83) #5, !srcloc !9
  %47 = tail call fastcc i32 @stm32_rtc_enter_init_mode(ptr noundef %4)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18) #6
  br label %130

50:                                               ; preds = %2
  %51 = and i32 %21, 63
  %52 = shl nuw nsw i32 %26, 8
  %53 = and i32 %52, 7936
  %54 = or i32 %53, %51
  %55 = shl nuw nsw i32 %31, 16
  %56 = or i32 %54, %55
  %57 = shl i32 %35, 13
  %58 = and i32 %57, 57344
  %59 = or i32 %56, %58
  %60 = and i32 %9, 127
  %61 = shl nuw nsw i32 %13, 8
  %62 = and i32 %61, 32512
  %63 = or i32 %62, %60
  %64 = shl nuw nsw i32 %17, 16
  %65 = and i32 %64, 4128768
  %66 = or i32 %63, %65
  %67 = load ptr, ptr %37, align 4
  %68 = load i16, ptr %6, align 2
  %69 = zext i16 %68 to i32
  %70 = getelementptr i8, ptr %67, i32 %69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %66) #5, !srcloc !9
  %71 = load ptr, ptr %37, align 4
  %72 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %6, i32 0, i32 1
  %73 = load i16, ptr %72, align 2
  %74 = zext i16 %73 to i32
  %75 = getelementptr i8, ptr %71, i32 %74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %59) #5, !srcloc !9
  %76 = load ptr, ptr %5, align 4
  %77 = load ptr, ptr %37, align 4
  %78 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %76, i32 0, i32 3
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  %81 = getelementptr i8, ptr %77, i32 %80
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #5, !srcloc !10
  %83 = and i32 %82, -129
  %84 = load ptr, ptr %37, align 4
  %85 = load i16, ptr %78, align 2
  %86 = zext i16 %85 to i32
  %87 = getelementptr i8, ptr %84, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %83) #5, !srcloc !9
  %88 = load ptr, ptr %5, align 4
  %89 = load ptr, ptr %37, align 4
  %90 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %88, i32 0, i32 3
  %91 = load i16, ptr %90, align 2
  %92 = zext i16 %91 to i32
  %93 = getelementptr i8, ptr %89, i32 %92
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #5, !srcloc !10
  %95 = and i32 %94, -33
  %96 = load ptr, ptr %37, align 4
  %97 = load i16, ptr %90, align 2
  %98 = zext i16 %97 to i32
  %99 = getelementptr i8, ptr %96, i32 %98
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %95) #5, !srcloc !9
  %100 = tail call i64 @ktime_get() #5
  %101 = add i64 %100, 100000000
  %102 = load ptr, ptr %37, align 4
  %103 = load i16, ptr %90, align 2
  %104 = zext i16 %103 to i32
  %105 = getelementptr i8, ptr %102, i32 %104
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #5, !srcloc !10
  %107 = and i32 %106, 32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %112, %50
  %110 = tail call i64 @ktime_get() #5
  %111 = icmp sgt i64 %110, %101
  br i1 %111, label %121, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 2147480) #5
  %114 = load ptr, ptr %37, align 4
  %115 = load i16, ptr %90, align 2
  %116 = zext i16 %115 to i32
  %117 = getelementptr i8, ptr %114, i32 %116
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #5, !srcloc !10
  %119 = and i32 %118, 32
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %109, label %130

121:                                              ; preds = %109
  %122 = load ptr, ptr %37, align 4
  %123 = load i16, ptr %90, align 2
  %124 = zext i16 %123 to i32
  %125 = getelementptr i8, ptr %122, i32 %124
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #5, !srcloc !10
  %127 = and i32 %126, 32
  %128 = icmp eq i32 %127, 0
  %129 = select i1 %128, i32 -110, i32 0
  br label %130

130:                                              ; preds = %121, %112, %50, %49
  %131 = phi i32 [ %47, %49 ], [ 0, %50 ], [ %129, %121 ], [ 0, %112 ]
  %132 = load ptr, ptr %5, align 4
  %133 = load ptr, ptr %37, align 4
  %134 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %132, i32 0, i32 6
  %135 = load i16, ptr %134, align 2
  %136 = zext i16 %135 to i32
  %137 = getelementptr i8, ptr %133, i32 %136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 255) #5, !srcloc !9
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_rtc_read_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_rtc, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stm32_rtc, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %6, i32 0, i32 5
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !10
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %6, i32 0, i32 2
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = getelementptr i8, ptr %14, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !10
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %6, i32 0, i32 7
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %20, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !10
  %26 = icmp sgt i32 %13, -1
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 -1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  store i32 -1, ptr %29, align 4
  br label %43

30:                                               ; preds = %2
  %31 = and i32 %13, 1073741824
  %32 = icmp eq i32 %31, 0
  %33 = lshr i32 %13, 24
  br i1 %32, label %40, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  %36 = trunc i32 %33 to i8
  %37 = and i8 %36, 15
  %38 = urem i8 %37, 7
  %39 = zext i8 %38 to i32
  store i32 %39, ptr %35, align 4
  br label %43

40:                                               ; preds = %30
  %41 = trunc i32 %33 to i8
  %42 = and i8 %41, 63
  br label %43

43:                                               ; preds = %40, %34, %27
  %44 = phi i32 [ %39, %34 ], [ -1, %40 ], [ -1, %27 ]
  %45 = phi i8 [ -1, %34 ], [ %42, %40 ], [ -1, %27 ]
  %46 = and i32 %13, 8388608
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = lshr i32 %13, 16
  %50 = and i32 %49, 63
  %51 = and i32 %13, 4194304
  %52 = icmp eq i32 %51, 0
  %53 = add nuw nsw i32 %50, 12
  %54 = select i1 %52, i32 %50, i32 %53
  %55 = trunc i32 %54 to i8
  br label %56

56:                                               ; preds = %48, %43
  %57 = phi i8 [ -1, %43 ], [ %55, %48 ]
  %58 = and i32 %13, 32768
  %59 = icmp eq i32 %58, 0
  %60 = lshr i32 %13, 8
  %61 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %62 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %63 = and i32 %13, 128
  %64 = icmp eq i32 %63, 0
  %65 = trunc i32 %13 to i8
  %66 = and i8 %65, 127
  %67 = select i1 %64, i8 %66, i8 -1
  %68 = tail call i32 @_bcd2bin(i8 noundef zeroext %67) #7
  store i32 %68, ptr %62, align 4
  %69 = trunc i32 %60 to i8
  %70 = and i8 %69, 127
  %71 = select i1 %59, i8 %70, i8 -1
  %72 = tail call i32 @_bcd2bin(i8 noundef zeroext %71) #7
  store i32 %72, ptr %61, align 4
  %73 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %74 = tail call i32 @_bcd2bin(i8 noundef zeroext %57) #7
  store i32 %74, ptr %73, align 4
  %75 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %76 = tail call i32 @_bcd2bin(i8 noundef zeroext %45) #7
  store i32 %76, ptr %75, align 4
  %77 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = trunc i32 %78 to i8
  %80 = tail call i32 @_bcd2bin(i8 noundef zeroext %79) #7
  %81 = add i32 %80, -1
  store i32 %81, ptr %77, align 4
  %82 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %83 = load i32, ptr %82, align 4
  %84 = trunc i32 %83 to i8
  %85 = tail call i32 @_bcd2bin(i8 noundef zeroext %84) #7
  %86 = getelementptr inbounds %struct.stm32_rtc_data, ptr %6, i32 0, i32 1
  %87 = add i32 %85, 100
  store i32 %87, ptr %82, align 4
  %88 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  store i32 %44, ptr %88, align 4
  %89 = lshr i32 %19, 8
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  store i8 %91, ptr %1, align 4
  %92 = load i32, ptr %86, align 4
  %93 = and i32 %92, %25
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i8
  %96 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 1
  store i8 %95, ptr %96, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_rtc_set_alarm(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_rtc, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call zeroext i8 @_bin2bcd(i32 noundef %8) #7
  %10 = zext i8 %9 to i32
  store i32 %10, ptr %7, align 4
  %11 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call zeroext i8 @_bin2bcd(i32 noundef %12) #7
  %14 = zext i8 %13 to i32
  store i32 %14, ptr %11, align 4
  %15 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = tail call zeroext i8 @_bin2bcd(i32 noundef %16) #7
  %18 = zext i8 %17 to i32
  store i32 %18, ptr %15, align 4
  %19 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #7
  %22 = zext i8 %21 to i32
  store i32 %22, ptr %19, align 4
  %23 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  %26 = tail call zeroext i8 @_bin2bcd(i32 noundef %25) #7
  %27 = zext i8 %26 to i32
  store i32 %27, ptr %23, align 4
  %28 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, -100
  %31 = tail call zeroext i8 @_bin2bcd(i32 noundef %30) #7
  %32 = zext i8 %31 to i32
  store i32 %32, ptr %28, align 4
  %33 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 7, i32 %34
  store i32 %36, ptr %33, align 4
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr inbounds %struct.stm32_rtc, ptr %4, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %37, i32 0, i32 1
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = getelementptr i8, ptr %39, i32 %42
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #5, !srcloc !10
  %45 = load ptr, ptr %38, align 4
  %46 = load i16, ptr %37, align 2
  %47 = zext i16 %46 to i32
  %48 = getelementptr i8, ptr %45, i32 %47
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #5, !srcloc !10
  %50 = and i32 %44, 63
  %51 = lshr i32 %44, 8
  %52 = and i32 %51, 31
  %53 = lshr i32 %44, 16
  %54 = and i32 %53, 255
  %55 = and i32 %49, 127
  %56 = lshr i32 %49, 8
  %57 = and i32 %56, 127
  %58 = lshr i32 %49, 16
  %59 = and i32 %58, 63
  %60 = load i32, ptr %28, align 4
  %61 = icmp sgt i32 %60, %54
  br i1 %61, label %62, label %67

62:                                               ; preds = %2
  %63 = load i32, ptr %23, align 4
  %64 = icmp eq i32 %63, 1
  %65 = icmp eq i32 %52, 18
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %73, label %67

67:                                               ; preds = %62, %2
  %68 = icmp eq i32 %60, %54
  br i1 %68, label %69, label %93

69:                                               ; preds = %67
  %70 = load i32, ptr %23, align 4
  %71 = add nuw nsw i32 %52, 1
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %93, label %73

73:                                               ; preds = %69, %62
  %74 = load i32, ptr %19, align 4
  %75 = icmp sgt i32 %74, %50
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, ptr %15, align 4
  br label %94

78:                                               ; preds = %73
  %79 = icmp eq i32 %74, %50
  br i1 %79, label %80, label %93

80:                                               ; preds = %78
  %81 = load i32, ptr %15, align 4
  %82 = icmp sgt i32 %81, %59
  br i1 %82, label %94, label %83

83:                                               ; preds = %80
  %84 = icmp eq i32 %81, %59
  br i1 %84, label %85, label %93

85:                                               ; preds = %83
  %86 = load i32, ptr %11, align 4
  %87 = icmp sgt i32 %86, %57
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = icmp eq i32 %86, %57
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = load i32, ptr %7, align 4
  %92 = icmp slt i32 %91, %55
  br i1 %92, label %93, label %94

93:                                               ; preds = %90, %88, %83, %78, %69, %67
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.19) #6
  br label %216

94:                                               ; preds = %90, %85, %80, %76
  %95 = phi i32 [ %77, %76 ], [ %59, %90 ], [ %59, %85 ], [ %81, %80 ]
  %96 = shl i32 %74, 24
  %97 = and i32 %96, 1056964608
  %98 = shl i32 %95, 16
  %99 = and i32 %98, 4128768
  %100 = or i32 %99, %97
  %101 = load i32, ptr %11, align 4
  %102 = shl i32 %101, 8
  %103 = and i32 %102, 32512
  %104 = or i32 %100, %103
  %105 = load i32, ptr %7, align 4
  %106 = and i32 %105, 127
  %107 = or i32 %104, %106
  %108 = load ptr, ptr %5, align 4
  %109 = load ptr, ptr %38, align 4
  %110 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %108, i32 0, i32 6
  %111 = load i16, ptr %110, align 2
  %112 = zext i16 %111 to i32
  %113 = getelementptr i8, ptr %109, i32 %112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 202) #5, !srcloc !9
  %114 = load ptr, ptr %38, align 4
  %115 = load i16, ptr %110, align 2
  %116 = zext i16 %115 to i32
  %117 = getelementptr i8, ptr %114, i32 %116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 83) #5, !srcloc !9
  %118 = load ptr, ptr %38, align 4
  %119 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %6, i32 0, i32 2
  %120 = load i16, ptr %119, align 2
  %121 = zext i16 %120 to i32
  %122 = getelementptr i8, ptr %118, i32 %121
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #5, !srcloc !10
  %124 = and i32 %123, -257
  %125 = load ptr, ptr %38, align 4
  %126 = load i16, ptr %119, align 2
  %127 = zext i16 %126 to i32
  %128 = getelementptr i8, ptr %125, i32 %127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %124) #5, !srcloc !9
  %129 = tail call i64 @ktime_get() #5
  %130 = add i64 %129, 100000000
  %131 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %6, i32 0, i32 3
  %132 = load ptr, ptr %38, align 4
  %133 = load i16, ptr %131, align 2
  %134 = zext i16 %133 to i32
  %135 = getelementptr i8, ptr %132, i32 %134
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #5, !srcloc !10
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %157

139:                                              ; preds = %148, %94
  %140 = tail call i64 @ktime_get() #5
  %141 = icmp sgt i64 %140, %130
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load ptr, ptr %38, align 4
  %144 = load i16, ptr %131, align 2
  %145 = zext i16 %144 to i32
  %146 = getelementptr i8, ptr %143, i32 %145
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #5, !srcloc !10
  br label %157

148:                                              ; preds = %139
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %149(i32 noundef 2147480) #5
  %150 = load ptr, ptr %38, align 4
  %151 = load i16, ptr %131, align 2
  %152 = zext i16 %151 to i32
  %153 = getelementptr i8, ptr %150, i32 %152
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #5, !srcloc !10
  %155 = and i32 %154, 1
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %139, label %157

157:                                              ; preds = %148, %142, %94
  %158 = phi i32 [ %147, %142 ], [ %136, %94 ], [ %154, %148 ]
  %159 = and i32 %158, 1
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %160, i32 -110, i32 0
  br i1 %160, label %162, label %163

162:                                              ; preds = %157
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20) #6
  br label %209

163:                                              ; preds = %157
  %164 = load ptr, ptr %38, align 4
  %165 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %6, i32 0, i32 5
  %166 = load i16, ptr %165, align 2
  %167 = zext i16 %166 to i32
  %168 = getelementptr i8, ptr %164, i32 %167
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 %107) #5, !srcloc !9
  %169 = load i8, ptr %1, align 4
  %170 = load ptr, ptr %3, align 8
  %171 = getelementptr inbounds %struct.stm32_rtc, ptr %170, i32 0, i32 7
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.stm32_rtc, ptr %170, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %172, i32 0, i32 2
  %176 = load i16, ptr %175, align 2
  %177 = zext i16 %176 to i32
  %178 = getelementptr i8, ptr %174, i32 %177
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %178) #5, !srcloc !10
  %180 = load ptr, ptr %171, align 4
  %181 = load ptr, ptr %173, align 4
  %182 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %180, i32 0, i32 6
  %183 = load i16, ptr %182, align 2
  %184 = zext i16 %183 to i32
  %185 = getelementptr i8, ptr %181, i32 %184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 202) #5, !srcloc !9
  %186 = load ptr, ptr %173, align 4
  %187 = load i16, ptr %182, align 2
  %188 = zext i16 %187 to i32
  %189 = getelementptr i8, ptr %186, i32 %188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 83) #5, !srcloc !9
  %190 = icmp eq i8 %169, 0
  %191 = and i32 %179, -4353
  %192 = select i1 %190, i32 0, i32 4352
  %193 = or i32 %191, %192
  %194 = getelementptr inbounds %struct.stm32_rtc_data, ptr %172, i32 0, i32 1
  %195 = load ptr, ptr %173, align 4
  %196 = load i16, ptr %175, align 2
  %197 = zext i16 %196 to i32
  %198 = getelementptr i8, ptr %195, i32 %197
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 %193) #5, !srcloc !9
  %199 = load i32, ptr %194, align 4
  %200 = load ptr, ptr %171, align 4
  %201 = getelementptr inbounds %struct.stm32_rtc_data, ptr %200, i32 0, i32 2
  %202 = load ptr, ptr %201, align 4
  tail call void %202(ptr noundef %170, i32 noundef %199) #5
  %203 = load ptr, ptr %171, align 4
  %204 = load ptr, ptr %173, align 4
  %205 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %203, i32 0, i32 6
  %206 = load i16, ptr %205, align 2
  %207 = zext i16 %206 to i32
  %208 = getelementptr i8, ptr %204, i32 %207
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 255) #5, !srcloc !9
  br label %209

209:                                              ; preds = %163, %162
  %210 = load ptr, ptr %5, align 4
  %211 = load ptr, ptr %38, align 4
  %212 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %210, i32 0, i32 6
  %213 = load i16, ptr %212, align 2
  %214 = zext i16 %213 to i32
  %215 = getelementptr i8, ptr %211, i32 %214
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 255) #5, !srcloc !9
  br label %216

216:                                              ; preds = %209, %93
  %217 = phi i32 [ -22, %93 ], [ %161, %209 ]
  ret i32 %217
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_rtc, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stm32_rtc, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %6, i32 0, i32 2
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !10
  %14 = load ptr, ptr %5, align 4
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %14, i32 0, i32 6
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr i8, ptr %15, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 202) #5, !srcloc !9
  %20 = load ptr, ptr %7, align 4
  %21 = load i16, ptr %16, align 2
  %22 = zext i16 %21 to i32
  %23 = getelementptr i8, ptr %20, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 83) #5, !srcloc !9
  %24 = icmp eq i32 %1, 0
  %25 = and i32 %13, -4353
  %26 = select i1 %24, i32 0, i32 4352
  %27 = or i32 %25, %26
  %28 = getelementptr inbounds %struct.stm32_rtc_data, ptr %6, i32 0, i32 1
  %29 = load ptr, ptr %7, align 4
  %30 = load i16, ptr %9, align 2
  %31 = zext i16 %30 to i32
  %32 = getelementptr i8, ptr %29, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %27) #5, !srcloc !9
  %33 = load i32, ptr %28, align 4
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr inbounds %struct.stm32_rtc_data, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  tail call void %36(ptr noundef %4, i32 noundef %33) #5
  %37 = load ptr, ptr %5, align 4
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %37, i32 0, i32 6
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  %42 = getelementptr i8, ptr %38, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 255) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_rtc_clear_events(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.stm32_rtc, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stm32_rtc, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %4, i32 0, i32 3
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !10
  %12 = xor i32 %1, -1
  %13 = and i32 %11, %12
  %14 = load ptr, ptr %5, align 4
  %15 = load i16, ptr %7, align 2
  %16 = zext i16 %15 to i32
  %17 = getelementptr i8, ptr %14, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %13) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32mp1_rtc_clear_events(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.stm32_rtc, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds i8, ptr %4, i32 16
  %6 = load i16, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stm32_rtc, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = zext i16 %6 to i32
  %10 = getelementptr i8, ptr %8, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %1) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_rtc_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_rtc_data, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #5
  tail call void @clk_unprepare(ptr noundef %11) #5
  br label %12

12:                                               ; preds = %9, %1
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @irq_set_irq_wake(i32 noundef %23, i32 noundef 1) #5
  br label %25

25:                                               ; preds = %21, %17, %12
  %26 = phi i32 [ %24, %21 ], [ 0, %17 ], [ 0, %12 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_rtc_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_rtc_data, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_prepare(ptr noundef %11) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %84

14:                                               ; preds = %9
  %15 = tail call i32 @clk_enable(ptr noundef %11) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 4
  br label %20

19:                                               ; preds = %14
  tail call void @clk_unprepare(ptr noundef %11) #5
  br label %84

20:                                               ; preds = %17, %1
  %21 = phi ptr [ %18, %17 ], [ %5, %1 ]
  %22 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.stm32_rtc_registers, ptr %21, i32 0, i32 3
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr i8, ptr %23, i32 %26
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #5, !srcloc !10
  %29 = and i32 %28, -33
  %30 = load ptr, ptr %22, align 4
  %31 = load i16, ptr %24, align 2
  %32 = zext i16 %31 to i32
  %33 = getelementptr i8, ptr %30, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %29) #5, !srcloc !9
  %34 = tail call i64 @ktime_get() #5
  %35 = add i64 %34, 100000000
  %36 = load ptr, ptr %22, align 4
  %37 = load i16, ptr %24, align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr i8, ptr %36, i32 %38
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #5, !srcloc !10
  %41 = and i32 %40, 32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %46, %20
  %44 = tail call i64 @ktime_get() #5
  %45 = icmp sgt i64 %44, %35
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 2147480) #5
  %48 = load ptr, ptr %22, align 4
  %49 = load i16, ptr %24, align 2
  %50 = zext i16 %49 to i32
  %51 = getelementptr i8, ptr %48, i32 %50
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #5, !srcloc !10
  %53 = and i32 %52, 32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %43, label %71

55:                                               ; preds = %43
  %56 = load ptr, ptr %22, align 4
  %57 = load i16, ptr %24, align 2
  %58 = zext i16 %57 to i32
  %59 = getelementptr i8, ptr %56, i32 %58
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #5, !srcloc !10
  %61 = and i32 %60, 32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load ptr, ptr %4, align 4
  %65 = getelementptr inbounds %struct.stm32_rtc_data, ptr %64, i32 0, i32 3
  %66 = load i8, ptr %65, align 4, !range !8
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %84, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  tail call void @clk_disable(ptr noundef %70) #5
  tail call void @clk_unprepare(ptr noundef %70) #5
  br label %84

71:                                               ; preds = %55, %46, %20
  %72 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %73 = load i16, ptr %72, align 4
  %74 = and i16 %73, 1
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %78 = load ptr, ptr %77, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.stm32_rtc, ptr %3, i32 0, i32 8
  %82 = load i32, ptr %81, align 4
  %83 = tail call i32 @irq_set_irq_wake(i32 noundef %82, i32 noundef 0) #5
  br label %84

84:                                               ; preds = %80, %76, %71, %68, %63, %19, %9
  %85 = phi i32 [ %83, %80 ], [ -110, %68 ], [ -110, %63 ], [ 0, %76 ], [ %15, %19 ], [ %12, %9 ], [ 0, %71 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2507948}
!10 = !{i64 2508366}
