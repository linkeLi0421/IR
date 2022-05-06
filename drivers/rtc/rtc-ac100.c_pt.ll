; ModuleID = '/llk/IR/drivers/rtc/rtc-ac100.c_pt.bc'
source_filename = "../drivers/rtc/rtc-ac100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.ac100_rtc_dev = type { ptr, ptr, ptr, i32, i32, ptr, [3 x %struct.ac100_clkout], ptr }
%struct.ac100_clkout = type { %struct.clk_hw, ptr, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ac100_dev = type { ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@__initcall__kmod_rtc_ac100__210_639_ac100_rtc_driver_init6 = internal global ptr @ac100_rtc_driver_init, section ".initcall6.init", align 4
@ac100_rtc_driver = internal global %struct.platform_driver { ptr @ac100_rtc_probe, ptr @ac100_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ac100_rtc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ac100_rtc_driver_exit = internal global ptr @ac100_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description211 = internal constant [48 x i8] c"rtc_ac100.description=X-Powers AC100 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author212 = internal constant [46 x i8] c"rtc_ac100.author=Chen-Yu Tsai <wens@csie.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [37 x i8] c"rtc_ac100.file=drivers/rtc/rtc-ac100\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [25 x i8] c"rtc_ac100.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"ac100-rtc\00", align 1
@ac100_rtc_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,ac100-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@ac100_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @ac100_rtc_get_time, ptr @ac100_rtc_set_time, ptr @ac100_rtc_get_alarm, ptr @ac100_rtc_set_alarm, ptr null, ptr @ac100_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Could not request IRQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"rtc only supports year in range %d - %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"alarm only supports year in range %d - %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ac100-rtc-32k\00", align 1
@__const.ac100_rtc_register_clks.parents = private unnamed_addr constant [2 x ptr] [ptr @.str.4, ptr null], align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to register RTC-32k clock: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to get ADDA 4M clock\0A\00", align 1
@ac100_clkout_ops = internal constant %struct.clk_ops { ptr @ac100_clkout_prepare, ptr @ac100_clkout_unprepare, ptr @ac100_clkout_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ac100_clkout_recalc_rate, ptr null, ptr @ac100_clkout_determine_rate, ptr @ac100_clkout_set_parent, ptr @ac100_clkout_get_parent, ptr @ac100_clkout_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Failed to register clk '%s': %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"ac100-cko1-rtc\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"ac100-cko2-rtc\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"ac100-cko3-rtc\00", align 1
@ac100_clkout_prediv = internal constant [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 16 }, %struct.clk_div_table { i32 5, i32 32 }, %struct.clk_div_table { i32 6, i32 64 }, %struct.clk_div_table { i32 7, i32 122 }, %struct.clk_div_table zeroinitializer], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_ac100_rtc_driver_exit, ptr @__initcall__kmod_rtc_ac100__210_639_ac100_rtc_driver_init6, ptr @ac100_rtc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ac100_rtc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ac100_rtc_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ac100_rtc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ac100_rtc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ac100_rtc_probe(ptr noundef %0) #2 {
  %2 = alloca [2 x ptr], align 8
  %3 = alloca %struct.clk_init_data, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 88, i32 noundef 3520) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %127, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %12, align 8
  %13 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %9, i32 0, i32 1
  store ptr %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ac100_dev, ptr %8, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %9, i32 0, i32 2
  store ptr %15, ptr %16, align 4
  %17 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %18 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %9, i32 0, i32 3
  store i32 %17, ptr %18, align 4
  %19 = icmp slt i32 %17, 0
  br i1 %19, label %127, label %20

20:                                               ; preds = %11
  %21 = tail call ptr @devm_rtc_allocate_device(ptr noundef %4) #7
  store ptr %21, ptr %9, align 4
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = ptrtoint ptr %21 to i32
  br label %127

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rtc_device, ptr %21, i32 0, i32 3
  store ptr @ac100_rtc_ops, ptr %26, align 8
  %27 = load i32, ptr %18, align 4
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load ptr, ptr %4, align 4
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi ptr [ %32, %31 ], [ %29, %25 ]
  %35 = tail call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %27, ptr noundef null, ptr noundef nonnull @ac100_rtc_irq, i32 noundef 8320, ptr noundef %34, ptr noundef nonnull %9) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #8
  br label %127

38:                                               ; preds = %33
  %39 = load ptr, ptr %16, align 4
  %40 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 199, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %41 = load ptr, ptr %16, align 4
  %42 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 208, i32 noundef 0) #7
  %43 = load ptr, ptr %16, align 4
  %44 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 209, i32 noundef 1) #7
  %45 = load ptr, ptr %13, align 4
  %46 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 25
  %47 = load ptr, ptr %46, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %48 = load i64, ptr @__const.ac100_rtc_register_clks.parents, align 8
  store i64 %48, ptr %2, align 8
  %49 = tail call noalias ptr @devm_kmalloc(ptr noundef %45, i32 noundef 16, i32 noundef 3520) #7
  %50 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %9, i32 0, i32 7
  store ptr %49, ptr %50, align 4
  %51 = icmp eq ptr %49, null
  br i1 %51, label %122, label %52

52:                                               ; preds = %38
  %53 = load ptr, ptr %13, align 4
  %54 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef %53, ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 32768, i32 noundef 0, i32 noundef 0) #7
  %55 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %9, i32 0, i32 5
  store ptr %54, ptr %55, align 4
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %124, label %57

57:                                               ; preds = %52
  %58 = tail call ptr @of_clk_get_parent_name(ptr noundef %47, i32 noundef 0) #7
  %59 = getelementptr inbounds [2 x ptr], ptr %2, i32 0, i32 1
  store ptr %58, ptr %59, align 4
  %60 = icmp eq ptr %58, null
  br i1 %60, label %77, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  %63 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  %64 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 3
  %65 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 4
  %66 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 5
  %67 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 6
  %68 = getelementptr %struct.ac100_rtc_dev, ptr %9, i32 0, i32 6, i32 0
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #7
  store i32 2, ptr %66, align 4, !annotation !8
  store ptr @.str.9, ptr %3, align 4
  store ptr @ac100_clkout_ops, ptr %62, align 4
  store ptr %2, ptr %63, align 4
  store ptr null, ptr %64, align 4
  store ptr null, ptr %65, align 4
  store i32 0, ptr %67, align 4
  %69 = call i32 @of_property_read_string_helper(ptr noundef %47, ptr noundef nonnull @.str.7, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %70 = load ptr, ptr %16, align 4
  %71 = getelementptr %struct.ac100_rtc_dev, ptr %9, i32 0, i32 6, i32 0, i32 1
  store ptr %70, ptr %71, align 4
  %72 = getelementptr %struct.ac100_rtc_dev, ptr %9, i32 0, i32 6, i32 0, i32 2
  store i8 -63, ptr %72, align 4
  %73 = getelementptr %struct.ac100_rtc_dev, ptr %9, i32 0, i32 6, i32 0, i32 0, i32 2
  store ptr %3, ptr %73, align 4
  %74 = load ptr, ptr %13, align 4
  %75 = call i32 @devm_clk_hw_register(ptr noundef %74, ptr noundef %68) #7
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %83, label %79

77:                                               ; preds = %57
  %78 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.6) #8
  br label %122

79:                                               ; preds = %95, %83, %61
  %80 = phi i32 [ %75, %61 ], [ %93, %83 ], [ %105, %95 ]
  %81 = load ptr, ptr %13, align 4
  %82 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.8, ptr noundef %82, i32 noundef %80) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #7
  br label %117

83:                                               ; preds = %61
  %84 = load ptr, ptr %50, align 4
  %85 = getelementptr %struct.clk_hw_onecell_data, ptr %84, i32 0, i32 1, i32 0
  store ptr %68, ptr %85, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #7
  %86 = getelementptr %struct.ac100_rtc_dev, ptr %9, i32 0, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #7
  store i32 2, ptr %66, align 4, !annotation !8
  store ptr @.str.10, ptr %3, align 4
  store ptr @ac100_clkout_ops, ptr %62, align 4
  store ptr %2, ptr %63, align 4
  store ptr null, ptr %64, align 4
  store ptr null, ptr %65, align 4
  store i32 0, ptr %67, align 4
  %87 = call i32 @of_property_read_string_helper(ptr noundef %47, ptr noundef nonnull @.str.7, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 1) #7
  %88 = load ptr, ptr %16, align 4
  %89 = getelementptr %struct.ac100_rtc_dev, ptr %9, i32 0, i32 6, i32 1, i32 1
  store ptr %88, ptr %89, align 4
  %90 = getelementptr %struct.ac100_rtc_dev, ptr %9, i32 0, i32 6, i32 1, i32 2
  store i8 -62, ptr %90, align 4
  %91 = getelementptr %struct.ac100_rtc_dev, ptr %9, i32 0, i32 6, i32 1, i32 0, i32 2
  store ptr %3, ptr %91, align 4
  %92 = load ptr, ptr %13, align 4
  %93 = call i32 @devm_clk_hw_register(ptr noundef %92, ptr noundef %86) #7
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %79

95:                                               ; preds = %83
  %96 = load ptr, ptr %50, align 4
  %97 = getelementptr %struct.clk_hw_onecell_data, ptr %96, i32 0, i32 1, i32 1
  store ptr %86, ptr %97, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #7
  %98 = getelementptr %struct.ac100_rtc_dev, ptr %9, i32 0, i32 6, i32 2
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #7
  store i32 2, ptr %66, align 4, !annotation !8
  store ptr @.str.11, ptr %3, align 4
  store ptr @ac100_clkout_ops, ptr %62, align 4
  store ptr %2, ptr %63, align 4
  store ptr null, ptr %64, align 4
  store ptr null, ptr %65, align 4
  store i32 0, ptr %67, align 4
  %99 = call i32 @of_property_read_string_helper(ptr noundef %47, ptr noundef nonnull @.str.7, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 2) #7
  %100 = load ptr, ptr %16, align 4
  %101 = getelementptr %struct.ac100_rtc_dev, ptr %9, i32 0, i32 6, i32 2, i32 1
  store ptr %100, ptr %101, align 4
  %102 = getelementptr %struct.ac100_rtc_dev, ptr %9, i32 0, i32 6, i32 2, i32 2
  store i8 -61, ptr %102, align 4
  %103 = getelementptr %struct.ac100_rtc_dev, ptr %9, i32 0, i32 6, i32 2, i32 0, i32 2
  store ptr %3, ptr %103, align 4
  %104 = load ptr, ptr %13, align 4
  %105 = call i32 @devm_clk_hw_register(ptr noundef %104, ptr noundef %98) #7
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %79

107:                                              ; preds = %95
  %108 = load ptr, ptr %50, align 4
  %109 = getelementptr %struct.clk_hw_onecell_data, ptr %108, i32 0, i32 1, i32 2
  store ptr %98, ptr %109, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #7
  %110 = load ptr, ptr %50, align 4
  store i32 3, ptr %110, align 4
  %111 = load ptr, ptr %50, align 4
  %112 = call i32 @of_clk_add_hw_provider(ptr noundef %47, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %111) #7
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  %115 = load ptr, ptr %9, align 4
  %116 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %115) #7
  br label %127

117:                                              ; preds = %107, %79
  %118 = phi i32 [ %80, %79 ], [ %112, %107 ]
  %119 = load ptr, ptr %55, align 4
  %120 = getelementptr inbounds %struct.clk_hw, ptr %119, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  call void @clk_unregister_fixed_rate(ptr noundef %121) #7
  br label %122

122:                                              ; preds = %117, %77, %38
  %123 = phi i32 [ -12, %38 ], [ -22, %77 ], [ %118, %117 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  br label %127

124:                                              ; preds = %52
  %125 = ptrtoint ptr %54 to i32
  %126 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.5, i32 noundef %125) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  br label %127

127:                                              ; preds = %124, %122, %114, %37, %23, %11, %1
  %128 = phi i32 [ %24, %23 ], [ %35, %37 ], [ %116, %114 ], [ -12, %1 ], [ %17, %11 ], [ %125, %124 ], [ %123, %122 ]
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ac100_rtc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  tail call void @of_clk_del_provider(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.clk_hw, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_unregister_fixed_rate(ptr noundef %11) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ac100_rtc_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.rtc_device, ptr %6, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %7) #7
  %8 = call i32 @regmap_read(ptr noundef %5, i32 noundef 209, ptr noundef nonnull %3) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 4
  call void @rtc_update_irq(ptr noundef %15, i32 noundef 1, i32 noundef 160) #7
  %16 = load i32, ptr %3, align 4
  %17 = call i32 @regmap_write(ptr noundef %5, i32 noundef 209, i32 noundef %16) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @regmap_write(ptr noundef %25, i32 noundef 208, i32 noundef 0) #7
  br label %27

27:                                               ; preds = %19, %14, %10, %2
  %28 = load ptr, ptr %1, align 4
  %29 = getelementptr inbounds %struct.rtc_device, ptr %28, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %29) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ac100_rtc_get_time(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [7 x i16], align 2
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(14) %3, i8 0, i32 14, i1 false), !annotation !8
  %8 = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 200, ptr noundef nonnull %3, i32 noundef 7) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %2
  %11 = load i16, ptr %3, align 2
  %12 = trunc i16 %11 to i8
  %13 = and i8 %12, 127
  %14 = call i32 @_bcd2bin(i8 noundef zeroext %13) #9
  store i32 %14, ptr %1, align 4
  %15 = getelementptr inbounds [7 x i16], ptr %3, i32 0, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = trunc i16 %16 to i8
  %18 = and i8 %17, 127
  %19 = call i32 @_bcd2bin(i8 noundef zeroext %18) #9
  %20 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds [7 x i16], ptr %3, i32 0, i32 2
  %22 = load i16, ptr %21, align 2
  %23 = trunc i16 %22 to i8
  %24 = and i8 %23, 63
  %25 = call i32 @_bcd2bin(i8 noundef zeroext %24) #9
  %26 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds [7 x i16], ptr %3, i32 0, i32 3
  %28 = load i16, ptr %27, align 2
  %29 = trunc i16 %28 to i8
  %30 = and i8 %29, 7
  %31 = call i32 @_bcd2bin(i8 noundef zeroext %30) #9
  %32 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds [7 x i16], ptr %3, i32 0, i32 4
  %34 = load i16, ptr %33, align 2
  %35 = trunc i16 %34 to i8
  %36 = and i8 %35, 63
  %37 = call i32 @_bcd2bin(i8 noundef zeroext %36) #9
  %38 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds [7 x i16], ptr %3, i32 0, i32 5
  %40 = load i16, ptr %39, align 2
  %41 = trunc i16 %40 to i8
  %42 = and i8 %41, 31
  %43 = call i32 @_bcd2bin(i8 noundef zeroext %42) #9
  %44 = add i32 %43, -1
  %45 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds [7 x i16], ptr %3, i32 0, i32 6
  %47 = load i16, ptr %46, align 2
  %48 = trunc i16 %47 to i8
  %49 = call i32 @_bcd2bin(i8 noundef zeroext %48) #9
  %50 = add i32 %49, 70
  %51 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %50, ptr %51, align 4
  br label %52

52:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ac100_rtc_set_time(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [8 x i16], align 2
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %8 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -70
  %11 = icmp ugt i32 %10, 169
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 1970, i32 noundef 2069) #8
  br label %67

13:                                               ; preds = %2
  %14 = load i32, ptr %1, align 4
  %15 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #9
  %16 = and i8 %15, 127
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %3, align 2
  %18 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = tail call zeroext i8 @_bin2bcd(i32 noundef %19) #9
  %21 = and i8 %20, 127
  %22 = zext i8 %21 to i16
  %23 = getelementptr inbounds [8 x i16], ptr %3, i32 0, i32 1
  store i16 %22, ptr %23, align 2
  %24 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = tail call zeroext i8 @_bin2bcd(i32 noundef %25) #9
  %27 = and i8 %26, 63
  %28 = zext i8 %27 to i16
  %29 = getelementptr inbounds [8 x i16], ptr %3, i32 0, i32 2
  store i16 %28, ptr %29, align 2
  %30 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = tail call zeroext i8 @_bin2bcd(i32 noundef %31) #9
  %33 = and i8 %32, 7
  %34 = zext i8 %33 to i16
  %35 = getelementptr inbounds [8 x i16], ptr %3, i32 0, i32 3
  store i16 %34, ptr %35, align 2
  %36 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = tail call zeroext i8 @_bin2bcd(i32 noundef %37) #9
  %39 = and i8 %38, 63
  %40 = zext i8 %39 to i16
  %41 = getelementptr inbounds [8 x i16], ptr %3, i32 0, i32 4
  store i16 %40, ptr %41, align 2
  %42 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  %45 = tail call zeroext i8 @_bin2bcd(i32 noundef %44) #9
  %46 = and i8 %45, 31
  %47 = zext i8 %46 to i16
  %48 = getelementptr inbounds [8 x i16], ptr %3, i32 0, i32 5
  store i16 %47, ptr %48, align 2
  %49 = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #9
  %50 = zext i8 %49 to i16
  %51 = getelementptr inbounds [8 x i16], ptr %3, i32 0, i32 6
  store i16 %50, ptr %51, align 2
  %52 = getelementptr inbounds [8 x i16], ptr %3, i32 0, i32 7
  store i16 -32768, ptr %52, align 2
  %53 = and i32 %9, 3
  %54 = icmp eq i32 %53, 0
  %55 = trunc i32 %9 to i16
  %56 = add nuw nsw i16 %55, 1900
  %57 = urem i16 %56, 100
  %58 = icmp ne i16 %57, 0
  %59 = and i1 %54, %58
  %60 = urem i16 %56, 400
  %61 = icmp eq i16 %60, 0
  %62 = select i1 %59, i1 true, i1 %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %13
  %64 = or i16 %50, -32768
  store i16 %64, ptr %51, align 2
  br label %65

65:                                               ; preds = %63, %13
  %66 = call i32 @regmap_bulk_write(ptr noundef %7, i32 noundef 200, ptr noundef nonnull %3, i32 noundef 8) #7
  br label %67

67:                                               ; preds = %65, %12
  %68 = phi i32 [ -22, %12 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ac100_rtc_get_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [7 x i16], align 2
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(14) %3, i8 0, i32 14, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %10 = call i32 @regmap_read(ptr noundef %8, i32 noundef 208, ptr noundef nonnull %4) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %2
  %13 = load i32, ptr %4, align 4
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  store i8 %15, ptr %1, align 4
  %16 = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef 216, ptr noundef nonnull %3, i32 noundef 7) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %60

18:                                               ; preds = %12
  %19 = load i16, ptr %3, align 2
  %20 = trunc i16 %19 to i8
  %21 = and i8 %20, 127
  %22 = call i32 @_bcd2bin(i8 noundef zeroext %21) #9
  store i32 %22, ptr %9, align 4
  %23 = getelementptr inbounds [7 x i16], ptr %3, i32 0, i32 1
  %24 = load i16, ptr %23, align 2
  %25 = trunc i16 %24 to i8
  %26 = and i8 %25, 127
  %27 = call i32 @_bcd2bin(i8 noundef zeroext %26) #9
  %28 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds [7 x i16], ptr %3, i32 0, i32 2
  %30 = load i16, ptr %29, align 2
  %31 = trunc i16 %30 to i8
  %32 = and i8 %31, 63
  %33 = call i32 @_bcd2bin(i8 noundef zeroext %32) #9
  %34 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds [7 x i16], ptr %3, i32 0, i32 3
  %36 = load i16, ptr %35, align 2
  %37 = trunc i16 %36 to i8
  %38 = and i8 %37, 7
  %39 = call i32 @_bcd2bin(i8 noundef zeroext %38) #9
  %40 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds [7 x i16], ptr %3, i32 0, i32 4
  %42 = load i16, ptr %41, align 2
  %43 = trunc i16 %42 to i8
  %44 = and i8 %43, 63
  %45 = call i32 @_bcd2bin(i8 noundef zeroext %44) #9
  %46 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds [7 x i16], ptr %3, i32 0, i32 5
  %48 = load i16, ptr %47, align 2
  %49 = trunc i16 %48 to i8
  %50 = and i8 %49, 31
  %51 = call i32 @_bcd2bin(i8 noundef zeroext %50) #9
  %52 = add i32 %51, -1
  %53 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds [7 x i16], ptr %3, i32 0, i32 6
  %55 = load i16, ptr %54, align 2
  %56 = trunc i16 %55 to i8
  %57 = call i32 @_bcd2bin(i8 noundef zeroext %56) #9
  %58 = add i32 %57, 70
  %59 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  store i32 %58, ptr %59, align 4
  br label %60

60:                                               ; preds = %18, %12, %2
  %61 = phi i32 [ 0, %18 ], [ %10, %2 ], [ %16, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #7
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ac100_rtc_set_alarm(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [8 x i16], align 2
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %8 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -70
  %11 = icmp ugt i32 %10, 169
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 1970, i32 noundef 2069) #8
  br label %70

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = tail call zeroext i8 @_bin2bcd(i32 noundef %15) #9
  %17 = and i8 %16, 127
  %18 = zext i8 %17 to i16
  %19 = or i16 %18, -32768
  store i16 %19, ptr %3, align 2
  %20 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = tail call zeroext i8 @_bin2bcd(i32 noundef %21) #9
  %23 = and i8 %22, 127
  %24 = zext i8 %23 to i16
  %25 = or i16 %24, -32768
  %26 = getelementptr inbounds [8 x i16], ptr %3, i32 0, i32 1
  store i16 %25, ptr %26, align 2
  %27 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = tail call zeroext i8 @_bin2bcd(i32 noundef %28) #9
  %30 = and i8 %29, 63
  %31 = zext i8 %30 to i16
  %32 = or i16 %31, -32768
  %33 = getelementptr inbounds [8 x i16], ptr %3, i32 0, i32 2
  store i16 %32, ptr %33, align 2
  %34 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = tail call zeroext i8 @_bin2bcd(i32 noundef %35) #9
  %37 = and i8 %36, 7
  %38 = zext i8 %37 to i16
  %39 = getelementptr inbounds [8 x i16], ptr %3, i32 0, i32 3
  store i16 %38, ptr %39, align 2
  %40 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = tail call zeroext i8 @_bin2bcd(i32 noundef %41) #9
  %43 = and i8 %42, 63
  %44 = zext i8 %43 to i16
  %45 = or i16 %44, -32768
  %46 = getelementptr inbounds [8 x i16], ptr %3, i32 0, i32 4
  store i16 %45, ptr %46, align 2
  %47 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, 1
  %50 = tail call zeroext i8 @_bin2bcd(i32 noundef %49) #9
  %51 = and i8 %50, 31
  %52 = zext i8 %51 to i16
  %53 = or i16 %52, -32768
  %54 = getelementptr inbounds [8 x i16], ptr %3, i32 0, i32 5
  store i16 %53, ptr %54, align 2
  %55 = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #9
  %56 = zext i8 %55 to i16
  %57 = or i16 %56, -32768
  %58 = getelementptr inbounds [8 x i16], ptr %3, i32 0, i32 6
  store i16 %57, ptr %58, align 2
  %59 = getelementptr inbounds [8 x i16], ptr %3, i32 0, i32 7
  store i16 -32768, ptr %59, align 2
  %60 = call i32 @regmap_bulk_write(ptr noundef %7, i32 noundef 216, ptr noundef nonnull %3, i32 noundef 8) #7
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %13
  %63 = load i8, ptr %1, align 4
  %64 = load ptr, ptr %4, align 8
  %65 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = icmp ne i8 %63, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @regmap_write(ptr noundef %66, i32 noundef 208, i32 noundef %68) #7
  br label %70

70:                                               ; preds = %62, %13, %12
  %71 = phi i32 [ -22, %12 ], [ %69, %62 ], [ %60, %13 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ac100_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ac100_rtc_dev, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne i32 %1, 0
  %8 = zext i1 %7 to i32
  %9 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 208, i32 noundef %8) #7
  ret i32 %9
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_fixed_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ac100_clkout_prepare(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ac100_clkout, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ac100_clkout, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %6, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ac100_clkout_unprepare(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ac100_clkout, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ac100_clkout, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %6, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ac100_clkout_is_prepared(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.ac100_clkout, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ac100_clkout, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = call i32 @regmap_read(ptr noundef %4, i32 noundef %7, ptr noundef nonnull %2) #7
  %9 = load i32, ptr %2, align 4
  %10 = and i32 %9, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ac100_clkout_recalc_rate(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.ac100_clkout, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ac100_clkout, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = call i32 @regmap_read(ptr noundef %5, i32 noundef %8, ptr noundef nonnull %3) #7
  %10 = icmp eq i32 %1, 32768
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %3, align 4
  %13 = lshr i32 %12, 5
  %14 = and i32 %13, 7
  %15 = call i32 @divider_recalc_rate(ptr noundef %0, i32 noundef %1, i32 noundef %14, ptr noundef nonnull @ac100_clkout_prediv, i32 noundef 0, i32 noundef 3) #7
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i32 [ %15, %11 ], [ 32768, %2 ]
  %18 = load i32, ptr %3, align 4
  %19 = lshr i32 %18, 1
  %20 = and i32 %19, 7
  %21 = call i32 @divider_recalc_rate(ptr noundef %0, i32 noundef %17, i32 noundef %20, ptr noundef null, i32 noundef 2, i32 noundef 3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ac100_clkout_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #7
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %59

7:                                                ; preds = %49, %2
  %8 = phi i32 [ %52, %49 ], [ 0, %2 ]
  %9 = phi i32 [ %51, %49 ], [ 0, %2 ]
  %10 = phi ptr [ %50, %49 ], [ null, %2 ]
  %11 = call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %8) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %7
  %14 = call i32 @clk_hw_get_rate(ptr noundef nonnull %11) #7
  %15 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 %14, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  %16 = icmp eq i32 %14, 32768
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = add i32 %14, -1
  br label %22

19:                                               ; preds = %13
  %20 = call ptr @clk_hw_get_parent(ptr noundef %0) #7
  %21 = call i32 @divider_round_rate_parent(ptr noundef %0, ptr noundef %20, i32 noundef %15, ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 3, i32 noundef 2) #7
  br label %39

22:                                               ; preds = %22, %17
  %23 = phi i32 [ %37, %22 ], [ 0, %17 ]
  %24 = phi i32 [ %36, %22 ], [ 0, %17 ]
  %25 = getelementptr [9 x %struct.clk_div_table], ptr @ac100_clkout_prediv, i32 0, i32 %23
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %18, %26
  %28 = udiv i32 %27, %26
  store i32 %28, ptr %4, align 4
  %29 = call ptr @clk_hw_get_parent(ptr noundef %0) #7
  %30 = call i32 @divider_round_rate_parent(ptr noundef %0, ptr noundef %29, i32 noundef %15, ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 3, i32 noundef 2) #7
  %31 = icmp ult i32 %15, %30
  %32 = sub i32 %15, %30
  %33 = sub i32 %24, %30
  %34 = icmp ult i32 %32, %33
  %35 = select i1 %34, i32 %30, i32 %24
  %36 = select i1 %31, i32 %24, i32 %35
  %37 = add nuw nsw i32 %23, 1
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %39, label %22

39:                                               ; preds = %22, %19
  %40 = phi i32 [ %21, %19 ], [ %36, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %41 = load i32, ptr %1, align 4
  %42 = icmp ult i32 %41, %40
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = sub i32 %41, %40
  %45 = sub i32 %41, %9
  %46 = icmp ult i32 %44, %45
  %47 = select i1 %46, ptr %11, ptr %10
  %48 = select i1 %46, i32 %40, i32 %9
  br label %49

49:                                               ; preds = %43, %39, %7
  %50 = phi ptr [ %47, %43 ], [ %10, %7 ], [ %10, %39 ]
  %51 = phi i32 [ %48, %43 ], [ %9, %7 ], [ %9, %39 ]
  %52 = add nuw nsw i32 %8, 1
  %53 = icmp eq i32 %52, %5
  br i1 %53, label %54, label %7

54:                                               ; preds = %49
  %55 = icmp eq i32 %51, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  store ptr %50, ptr %57, align 4
  %58 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %51, ptr %58, align 4
  store i32 %51, ptr %1, align 4
  br label %59

59:                                               ; preds = %56, %54, %2
  %60 = phi i32 [ 0, %56 ], [ -22, %54 ], [ -22, %2 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ac100_clkout_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.ac100_clkout, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ac100_clkout, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = icmp eq i8 %1, 0
  %9 = select i1 %8, i32 0, i32 16
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %7, i32 noundef 16, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @ac100_clkout_get_parent(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.ac100_clkout, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ac100_clkout, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = call i32 @regmap_read(ptr noundef %4, i32 noundef %7, ptr noundef nonnull %2) #7
  %9 = load i32, ptr %2, align 4
  %10 = trunc i32 %9 to i8
  %11 = lshr i8 %10, 4
  %12 = and i8 %11, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i8 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ac100_clkout_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp ne i32 %2, 32768
  %5 = tail call i32 @divider_get_val(i32 noundef %1, i32 noundef %2, ptr noundef null, i8 noundef zeroext 3, i32 noundef 2) #7
  %6 = icmp slt i32 %5, 0
  %7 = and i1 %4, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %3
  %9 = shl i32 %1, 1
  %10 = tail call i32 @divider_get_val(i32 noundef %9, i32 noundef %2, ptr noundef null, i8 noundef zeroext 3, i32 noundef 2) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %8
  %13 = shl i32 %1, 2
  %14 = tail call i32 @divider_get_val(i32 noundef %13, i32 noundef %2, ptr noundef null, i8 noundef zeroext 3, i32 noundef 2) #7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = shl i32 %1, 3
  %18 = tail call i32 @divider_get_val(i32 noundef %17, i32 noundef %2, ptr noundef null, i8 noundef zeroext 3, i32 noundef 2) #7
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = shl i32 %1, 4
  %22 = tail call i32 @divider_get_val(i32 noundef %21, i32 noundef %2, ptr noundef null, i8 noundef zeroext 3, i32 noundef 2) #7
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = shl i32 %1, 5
  %26 = tail call i32 @divider_get_val(i32 noundef %25, i32 noundef %2, ptr noundef null, i8 noundef zeroext 3, i32 noundef 2) #7
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = shl i32 %1, 6
  %30 = tail call i32 @divider_get_val(i32 noundef %29, i32 noundef %2, ptr noundef null, i8 noundef zeroext 3, i32 noundef 2) #7
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = mul i32 %1, 122
  %34 = tail call i32 @divider_get_val(i32 noundef %33, i32 noundef %2, ptr noundef null, i8 noundef zeroext 3, i32 noundef 2) #7
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %53, label %37

36:                                               ; preds = %3
  br i1 %6, label %53, label %37

37:                                               ; preds = %36, %32, %28, %24, %20, %16, %12, %8
  %38 = phi i32 [ 0, %36 ], [ 7, %32 ], [ 6, %28 ], [ 5, %24 ], [ 4, %20 ], [ 3, %16 ], [ 2, %12 ], [ 1, %8 ]
  %39 = phi i32 [ %5, %36 ], [ %34, %32 ], [ %30, %28 ], [ %26, %24 ], [ %22, %20 ], [ %18, %16 ], [ %14, %12 ], [ %10, %8 ]
  %40 = getelementptr [9 x %struct.clk_div_table], ptr @ac100_clkout_prediv, i32 0, i32 %38
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ac100_clkout, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ac100_clkout, ptr %0, i32 0, i32 2
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i32
  %47 = shl nuw i32 %39, 1
  %48 = add i32 %47, -2
  %49 = shl i32 %41, 5
  %50 = add i32 %49, -32
  %51 = or i32 %50, %48
  %52 = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef %46, i32 noundef 238, i32 noundef %51, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %53

53:                                               ; preds = %37, %36, %32
  %54 = phi i32 [ 0, %37 ], [ %5, %36 ], [ %34, %32 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

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
