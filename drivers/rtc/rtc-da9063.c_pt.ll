; ModuleID = '/llk/IR/drivers/rtc/rtc-da9063.c_pt.bc'
source_filename = "../drivers/rtc/rtc-da9063.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.da9063_compatible_rtc_regmap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.da9063_compatible_rtc = type { ptr, %struct.rtc_time, ptr, ptr, i8 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.da9063 = type { ptr, i32, i8, i32, ptr, i32, i32, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@da9063_compatible_reg_id_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9063-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da9063_bb_regs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9062-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da9062_aa_regs }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author210 = internal constant [47 x i8] c"author=S Twiss <stwiss.opensource@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description211 = internal constant [60 x i8] c"description=Real time clock device driver for Dialog DA9063\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias213 = internal constant [26 x i8] c"alias=platform:da9063-rtc\00", section ".modinfo", align 1
@da9063_bb_regs = internal constant %struct.da9063_compatible_rtc_regmap { i32 18, i32 152, i32 70, i32 75, i32 64, i32 69, i32 6, i32 4, i32 8, i32 2, i32 64, i32 192, i32 128, i32 128, i32 63, i32 63, i32 31, i32 31, i32 15, i32 63, i32 0, i32 6 }, align 4
@da9062_aa_regs = internal constant %struct.da9063_compatible_rtc_regmap { i32 18, i32 152, i32 70, i32 75, i32 64, i32 69, i32 6, i32 4, i32 8, i32 2, i32 64, i32 128, i32 128, i32 128, i32 63, i32 63, i32 31, i32 31, i32 15, i32 63, i32 0, i32 6 }, align 4
@da9063_rtc_driver = internal global %struct.platform_driver { ptr @da9063_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @da9063_compatible_reg_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"da9063-rtc\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"dlg,da9063-rtc\00", align 1
@da9063_ad_regs = internal constant %struct.da9063_compatible_rtc_regmap { i32 18, i32 152, i32 70, i32 74, i32 64, i32 69, i32 6, i32 4, i32 8, i32 2, i32 64, i32 192, i32 128, i32 128, i32 63, i32 63, i32 31, i32 31, i32 15, i32 63, i32 1, i32 5 }, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Parent regmap unavailable.\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Failed to enable RTC\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to run 32kHz oscillator\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to access RTC alarm register\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Failed to disable TICKs\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Failed to read initial alarm data: %d\0A\00", align 1
@da9063_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @da9063_rtc_read_time, ptr @da9063_rtc_set_time, ptr @da9063_rtc_read_alarm, ptr @da9063_rtc_set_alarm, ptr null, ptr @da9063_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"ALARM\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Failed to request ALARM IRQ %d: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Failed to read RTC time data: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Failed to set RTC time data: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Failed to stop alarm: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Failed to write alarm: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Failed to start alarm: %d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias213, ptr @__UNIQUE_ID_author210, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_license212], section "llvm.metadata"

@__mod_of__da9063_compatible_reg_id_table_device_table = dso_local alias [3 x %struct.of_device_id], ptr @da9063_compatible_reg_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9063_rtc_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9063_rtc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @da9063_rtc_probe(ptr noundef %0) #2 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #7
  %3 = getelementptr inbounds i8, ptr %2, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 5, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %155, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @of_match_node(ptr noundef nonnull @da9063_compatible_reg_id_table, ptr noundef nonnull %6) #7
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 52, i32 noundef 3520) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %155, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.of_device_id, ptr %9, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %10, i32 0, i32 3
  store ptr %14, ptr %15, align 4
  %16 = load ptr, ptr %5, align 8
  %17 = tail call i32 @of_device_is_compatible(ptr noundef %16, ptr noundef nonnull @.str.1) #7
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %20 = load ptr, ptr %19, align 4
  br i1 %18, label %28, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 8
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.da9063, ptr %23, i32 0, i32 2
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 3
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store ptr @da9063_ad_regs, ptr %15, align 4
  br label %28

28:                                               ; preds = %27, %21, %12
  %29 = phi ptr [ %14, %21 ], [ @da9063_ad_regs, %27 ], [ %14, %12 ]
  %30 = tail call ptr @dev_get_regmap(ptr noundef %20, ptr noundef null) #7
  %31 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %10, i32 0, i32 2
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.2) #8
  br label %155

34:                                               ; preds = %28
  %35 = load i32, ptr %29, align 4
  %36 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %29, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %30, i32 noundef %35, i32 noundef %37, i32 noundef %37, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #8
  br label %155

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %29, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %29, i32 0, i32 8
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %30, i32 noundef %43, i32 noundef %45, i32 noundef %45, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #8
  br label %155

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %29, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %29, i32 0, i32 11
  %53 = load i32, ptr %52, align 4
  %54 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %30, i32 noundef %51, i32 noundef %53, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #8
  br label %155

57:                                               ; preds = %49
  %58 = load i32, ptr %50, align 4
  %59 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %30, i32 noundef %58, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #8
  br label %155

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %29, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %29, i32 0, i32 12
  %66 = load i32, ptr %65, align 4
  %67 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %30, i32 noundef %64, i32 noundef %66, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #8
  br label %155

70:                                               ; preds = %62
  store i8 0, ptr %2, align 1
  %71 = load i32, ptr %50, align 4
  %72 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %29, i32 0, i32 20
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr [6 x i8], ptr %2, i32 0, i32 %73
  %75 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %29, i32 0, i32 21
  %76 = load i32, ptr %75, align 4
  %77 = call i32 @regmap_bulk_read(ptr noundef nonnull %30, i32 noundef %71, ptr noundef %74, i32 noundef %76) #7
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %77) #8
  br label %155

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %81, align 8
  %82 = call ptr @devm_rtc_allocate_device(ptr noundef %4) #7
  store ptr %82, ptr %10, align 4
  %83 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = ptrtoint ptr %82 to i32
  br label %155

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.rtc_device, ptr %82, i32 0, i32 3
  store ptr @da9063_rtc_ops, ptr %87, align 8
  %88 = load ptr, ptr %10, align 4
  %89 = getelementptr inbounds %struct.rtc_device, ptr %88, i32 0, i32 22
  store i64 946684800, ptr %89, align 8
  %90 = load ptr, ptr %10, align 4
  %91 = getelementptr inbounds %struct.rtc_device, ptr %90, i32 0, i32 23
  store i64 2966371199, ptr %91, align 8
  %92 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %10, i32 0, i32 1
  %93 = load ptr, ptr %15, align 4
  %94 = load i8, ptr %2, align 1
  %95 = zext i8 %94 to i32
  %96 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %93, i32 0, i32 14
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, %95
  store i32 %98, ptr %92, align 4
  %99 = getelementptr inbounds i8, ptr %2, i32 1
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i32
  %102 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %93, i32 0, i32 15
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, %101
  %105 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %10, i32 0, i32 1, i32 1
  store i32 %104, ptr %105, align 4
  %106 = getelementptr inbounds i8, ptr %2, i32 2
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %93, i32 0, i32 16
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, %108
  %112 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %10, i32 0, i32 1, i32 2
  store i32 %111, ptr %112, align 4
  %113 = getelementptr inbounds i8, ptr %2, i32 3
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  %116 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %93, i32 0, i32 17
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, %115
  %119 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %10, i32 0, i32 1, i32 3
  store i32 %118, ptr %119, align 4
  %120 = getelementptr inbounds i8, ptr %2, i32 4
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %93, i32 0, i32 18
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, %122
  %126 = add nsw i32 %125, -1
  %127 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %10, i32 0, i32 1, i32 4
  store i32 %126, ptr %127, align 4
  %128 = getelementptr inbounds i8, ptr %2, i32 5
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %93, i32 0, i32 19
  %132 = load i32, ptr %131, align 4
  %133 = and i32 %132, %130
  %134 = add nuw nsw i32 %133, 100
  %135 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %10, i32 0, i32 1, i32 5
  store i32 %134, ptr %135, align 4
  %136 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %10, i32 0, i32 4
  store i8 0, ptr %136, align 4
  %137 = load i32, ptr %72, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %86
  %140 = load ptr, ptr %10, align 4
  %141 = getelementptr inbounds %struct.rtc_device, ptr %140, i32 0, i32 21
  call void @_set_bit(i32 noundef 1, ptr noundef %141) #7
  %142 = load ptr, ptr %10, align 4
  %143 = getelementptr inbounds %struct.rtc_device, ptr %142, i32 0, i32 21
  call void @_clear_bit(i32 noundef 4, ptr noundef %143) #7
  br label %144

144:                                              ; preds = %139, %86
  %145 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.8) #7
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %144
  %148 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %145, ptr noundef null, ptr noundef nonnull @da9063_alarm_event, i32 noundef 8200, ptr noundef nonnull @.str.8, ptr noundef nonnull %10) #7
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %147
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %145, i32 noundef %148) #8
  br label %151

151:                                              ; preds = %150, %147
  %152 = call i32 @device_init_wakeup(ptr noundef %4, i1 noundef zeroext true) #7
  %153 = load ptr, ptr %10, align 4
  %154 = call i32 @__devm_rtc_register_device(ptr noundef nonnull @__this_module, ptr noundef %153) #7
  br label %155

155:                                              ; preds = %151, %144, %84, %79, %69, %61, %56, %48, %40, %33, %8, %1
  %156 = phi i32 [ %38, %40 ], [ %46, %48 ], [ %54, %56 ], [ %59, %61 ], [ %67, %69 ], [ %77, %79 ], [ %85, %84 ], [ %154, %151 ], [ -6, %33 ], [ -6, %1 ], [ -12, %8 ], [ %145, %144 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #7
  ret i32 %156
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @da9063_alarm_event(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %4, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %4, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %12 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 4
  store i8 1, ptr %12, align 4
  %13 = load ptr, ptr %1, align 4
  tail call void @rtc_update_irq(ptr noundef %13, i32 noundef 1, i32 noundef 160) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @da9063_rtc_read_time(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [6 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef %11, ptr noundef nonnull %3, i32 noundef 6) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %12) #8
  br label %77

15:                                               ; preds = %2
  %16 = load i8, ptr %3, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 13
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %77, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %23, i32 0, i32 14
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %17
  store i32 %26, ptr %1, align 4
  %27 = getelementptr inbounds i8, ptr %3, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %23, i32 0, i32 15
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, %29
  %33 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds i8, ptr %3, i32 2
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %23, i32 0, i32 16
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, %36
  %40 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds i8, ptr %3, i32 3
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %23, i32 0, i32 17
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, %43
  %47 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds i8, ptr %3, i32 4
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %23, i32 0, i32 18
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, %50
  %54 = add nsw i32 %53, -1
  %55 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds i8, ptr %3, i32 5
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %23, i32 0, i32 19
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, %58
  %62 = add nuw nsw i32 %61, 100
  %63 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %62, ptr %63, align 4
  %64 = call i64 @rtc_tm_to_time64(ptr noundef %1) #7
  %65 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %5, i32 0, i32 1
  %66 = call i64 @rtc_tm_to_time64(ptr noundef %65) #7
  %67 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %5, i32 0, i32 4
  %68 = load i8, ptr %67, align 4, !range !9
  %69 = icmp ne i8 %68, 0
  %70 = trunc i64 %66 to i32
  %71 = trunc i64 %64 to i32
  %72 = sub i32 %70, %71
  %73 = icmp eq i32 %72, 1
  %74 = select i1 %69, i1 %73, i1 false
  br i1 %74, label %75, label %76

75:                                               ; preds = %22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(36) %1, ptr noundef align 4 dereferenceable(36) %65, i32 36, i1 false)
  br label %77

76:                                               ; preds = %22
  store i8 0, ptr %67, align 4
  br label %77

77:                                               ; preds = %76, %75, %15, %14
  %78 = phi i32 [ %12, %14 ], [ -22, %15 ], [ 0, %76 ], [ 0, %75 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @da9063_rtc_set_time(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [6 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  %8 = load i32, ptr %1, align 4
  %9 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, %8
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %3, align 1
  %13 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 15
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %14
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 16
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, %21
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %25, ptr %26, align 1
  %27 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 17
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, %28
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %32, ptr %33, align 1
  %34 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  %37 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 18
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %36, %38
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %40, ptr %41, align 1
  %42 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 156
  %45 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 19
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %44, %46
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %48, ptr %49, align 1
  %50 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %5, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = call i32 @regmap_bulk_write(ptr noundef %51, i32 noundef %53, ptr noundef nonnull %3, i32 noundef 6) #7
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %54) #8
  br label %57

57:                                               ; preds = %56, %2
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @da9063_rtc_read_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  %9 = getelementptr inbounds i8, ptr %3, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %9, i8 0, i32 5, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  store i8 0, ptr %3, align 1
  %10 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %6, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %8, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %8, i32 0, i32 20
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr [6 x i8], ptr %3, i32 0, i32 %15
  %17 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %8, i32 0, i32 21
  %18 = load i32, ptr %17, align 4
  %19 = call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef %13, ptr noundef %16, i32 noundef %18) #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %84, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %23 = load ptr, ptr %7, align 4
  %24 = load i8, ptr %3, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %23, i32 0, i32 14
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, %25
  store i32 %28, ptr %22, align 4
  %29 = getelementptr inbounds i8, ptr %3, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %23, i32 0, i32 15
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, %31
  %35 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds i8, ptr %3, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %23, i32 0, i32 16
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, %38
  %42 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds i8, ptr %3, i32 3
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %23, i32 0, i32 17
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, %45
  %49 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds i8, ptr %3, i32 4
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %23, i32 0, i32 18
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, %52
  %56 = add nsw i32 %55, -1
  %57 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds i8, ptr %3, i32 5
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %23, i32 0, i32 19
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, %60
  %64 = add nuw nsw i32 %63, 100
  %65 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  store i32 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %8, i32 0, i32 10
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, %60
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i8
  store i8 %70, ptr %1, align 4
  %71 = load ptr, ptr %10, align 4
  %72 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %8, i32 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = call i32 @regmap_read(ptr noundef %71, i32 noundef %73, ptr noundef nonnull %4) #7
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %21
  %77 = load i32, ptr %4, align 4
  %78 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %8, i32 0, i32 9
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, %77
  %81 = icmp ne i32 %80, 0
  %82 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 1
  %83 = zext i1 %81 to i8
  store i8 %83, ptr %82, align 1
  br label %84

84:                                               ; preds = %76, %21, %2
  %85 = phi i32 [ %19, %2 ], [ %74, %21 ], [ 0, %76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @da9063_rtc_set_alarm(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [6 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  %8 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 14
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, %9
  %13 = trunc i32 %12 to i8
  store i8 %13, ptr %3, align 1
  %14 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 15
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, %15
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %19, ptr %20, align 1
  %21 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 16
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, %22
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %26, ptr %27, align 1
  %28 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 17
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, %29
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %33, ptr %34, align 1
  %35 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  %38 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 18
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %37, %39
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 156
  %46 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 19
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %45, %47
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %49, ptr %50, align 1
  %51 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %5, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 10
  %56 = load i32, ptr %55, align 4
  %57 = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %57) #8
  br label %127

60:                                               ; preds = %2
  %61 = load ptr, ptr %51, align 4
  %62 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 20
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr [6 x i8], ptr %3, i32 0, i32 %65
  %67 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 21
  %68 = load i32, ptr %67, align 4
  %69 = call i32 @regmap_bulk_write(ptr noundef %61, i32 noundef %63, ptr noundef %66, i32 noundef %68) #7
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %69) #8
  br label %127

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %5, i32 0, i32 1
  %74 = load ptr, ptr %6, align 4
  %75 = load i8, ptr %3, align 1
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %74, i32 0, i32 14
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, %76
  store i32 %79, ptr %73, align 4
  %80 = load i8, ptr %20, align 1
  %81 = zext i8 %80 to i32
  %82 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %74, i32 0, i32 15
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, %81
  %85 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %5, i32 0, i32 1, i32 1
  store i32 %84, ptr %85, align 4
  %86 = load i8, ptr %27, align 1
  %87 = zext i8 %86 to i32
  %88 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %74, i32 0, i32 16
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, %87
  %91 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %5, i32 0, i32 1, i32 2
  store i32 %90, ptr %91, align 4
  %92 = load i8, ptr %34, align 1
  %93 = zext i8 %92 to i32
  %94 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %74, i32 0, i32 17
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, %93
  %97 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %5, i32 0, i32 1, i32 3
  store i32 %96, ptr %97, align 4
  %98 = load i8, ptr %42, align 1
  %99 = zext i8 %98 to i32
  %100 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %74, i32 0, i32 18
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, %99
  %103 = add nsw i32 %102, -1
  %104 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %5, i32 0, i32 1, i32 4
  store i32 %103, ptr %104, align 4
  %105 = load i8, ptr %50, align 1
  %106 = zext i8 %105 to i32
  %107 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %74, i32 0, i32 19
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, %106
  %110 = add nuw nsw i32 %109, 100
  %111 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %5, i32 0, i32 1, i32 5
  store i32 %110, ptr %111, align 4
  %112 = load i8, ptr %1, align 4
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %127, label %114

114:                                              ; preds = %72
  %115 = load ptr, ptr %4, align 8
  %116 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %115, i32 0, i32 3
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %115, i32 0, i32 2
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %117, i32 0, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %117, i32 0, i32 10
  %123 = load i32, ptr %122, align 4
  %124 = call i32 @regmap_update_bits_base(ptr noundef %119, i32 noundef %121, i32 noundef %123, i32 noundef %123, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %114
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %124) #8
  br label %127

127:                                              ; preds = %126, %114, %72, %71, %59
  %128 = phi i32 [ %57, %59 ], [ %69, %71 ], [ %124, %126 ], [ %124, %114 ], [ %69, %72 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @da9063_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %7, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = select i1 %3, i32 0, i32 %13
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
