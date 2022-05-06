; ModuleID = '/llk/IR/drivers/rtc/rtc-bq32k.c_pt.bc'
source_filename = "../drivers/rtc/rtc-bq32k.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bq32k_regs = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@bq32k_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bq32000\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@bq32k_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq32000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [51 x i8] c"author=Semihalf, Piotr Ziecik <kosmo@semihalf.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [38 x i8] c"description=TI BQ32000 I2C RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@bq32k_driver = internal global %struct.i2c_driver { i32 0, ptr @bq32k_probe, ptr @bq32k_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bq32k_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @bq32k_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [6 x i8] c"bq32k\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Oscillator was halted. Restarting...\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Oscillator Failure. Check RTC battery.\0A\00", align 1
@bq32k_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @bq32k_rtc_read_time, ptr @bq32k_rtc_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Unable to create sysfs entries for rtc bq32000\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"trickle-resistor-ohms\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"trickle-diode-disable\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"diode and resistor mismatch\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"bq32k: diode and resistor mismatch\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"invalid resistor value (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Enabled trickle RTC battery charge.\0A\00", align 1
@dev_attr_trickle_charge_bypass = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420 }, ptr @bq32k_sysfs_show_tricklecharge_bypass, ptr @bq32k_sysfs_store_tricklecharge_bypass }, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"trickle_charge_bypass\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Enabled trickle charge FET bypass.\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Disabled trickle charge FET bypass.\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_i2c__bq32k_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @bq32k_id
@__mod_of__bq32k_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @bq32k_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @bq32k_driver) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @bq32k_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bq32k_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca [11 x i8], align 1
  %4 = alloca [11 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [11 x i8], align 1
  %9 = alloca i8, align 1
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca i8, align 1
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #8
  store i8 0, ptr %11, align 1, !annotation !8
  %13 = getelementptr %struct.i2c_client, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.i2c_algorithm, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %14) #8
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %103, label %22

22:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9)
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #8
  %23 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %23, i8 0, i32 16, i1 false) #8, !annotation !8
  %24 = getelementptr %struct.i2c_client, ptr %0, i32 0, i32 1
  %25 = load i16, ptr %24, align 2
  store i16 %25, ptr %10, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %26, align 2
  store i16 1, ptr %23, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  store i16 %25, ptr %28, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %29, align 2
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %11, ptr %31, align 4
  %32 = load ptr, ptr %13, align 8
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %10, i32 noundef 2) #8
  %34 = icmp eq i32 %33, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  br i1 %34, label %35, label %103

35:                                               ; preds = %22
  %36 = load i8, ptr %11, align 1
  %37 = icmp sgt i8 %36, -1
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.1) #9
  %39 = load i8, ptr %11, align 1
  %40 = and i8 %39, 127
  store i8 %40, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %8) #8
  %41 = getelementptr inbounds i8, ptr %8, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %8, i8 0, i64 11, i1 false)
  store i8 %40, ptr %41, align 1
  %42 = call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 2, i16 noundef zeroext 0) #8
  %43 = icmp eq i32 %42, 2
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %8) #8
  br i1 %43, label %44, label %103

44:                                               ; preds = %38, %35
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 1, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #8
  %45 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %45, i8 0, i32 16, i1 false) #8, !annotation !8
  %46 = load i16, ptr %24, align 2
  store i16 %46, ptr %7, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %47, align 2
  store i16 1, ptr %45, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %48, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %46, ptr %49, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %50, align 2
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %11, ptr %52, align 4
  %53 = load ptr, ptr %13, align 8
  %54 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %7, i32 noundef 2) #8
  %55 = icmp eq i32 %54, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  br i1 %55, label %56, label %103

56:                                               ; preds = %44
  %57 = load i8, ptr %11, align 1
  %58 = icmp sgt i8 %57, -1
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.2) #9
  br label %60

60:                                               ; preds = %59, %56
  %61 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %91, label %64

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4
  %65 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %62, ptr noundef nonnull @.str.4, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #8
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %67, label %90

67:                                               ; preds = %64
  %68 = load i32, ptr %5, align 4
  switch i32 %68, label %77 [
    i32 1120, label %69
    i32 20180, label %73
  ]

69:                                               ; preds = %67
  %70 = call ptr @of_find_property(ptr noundef nonnull %62, ptr noundef nonnull @.str.5, ptr noundef null) #8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.6) #9
  br label %90

73:                                               ; preds = %67
  %74 = call ptr @of_find_property(ptr noundef nonnull %62, ptr noundef nonnull @.str.5, ptr noundef null) #8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.7) #9
  br label %90

77:                                               ; preds = %67
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.8, i32 noundef %68) #9
  br label %90

78:                                               ; preds = %73, %69
  %79 = phi i8 [ 5, %69 ], [ 69, %73 ]
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %4) #8
  %80 = getelementptr inbounds i8, ptr %4, i32 1
  %81 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %81, i8 0, i32 9, i1 false) #8, !annotation !8
  store i8 9, ptr %4, align 1
  store i8 %79, ptr %80, align 1
  %82 = call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 2, i16 noundef zeroext 0) #8
  %83 = icmp eq i32 %82, 2
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %4) #8
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %3) #8
  %85 = getelementptr inbounds i8, ptr %3, i32 1
  %86 = getelementptr inbounds i8, ptr %3, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %86, i8 0, i32 9, i1 false) #8, !annotation !8
  store i8 8, ptr %3, align 1
  store i8 32, ptr %85, align 1
  %87 = call i32 @i2c_transfer_buffer_flags(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 2, i16 noundef zeroext 0) #8
  %88 = icmp eq i32 %87, 2
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #8
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.9) #9
  br label %90

90:                                               ; preds = %89, %84, %78, %77, %76, %72, %64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %91

91:                                               ; preds = %90, %60
  %92 = load ptr, ptr getelementptr inbounds (%struct.i2c_driver, ptr @bq32k_driver, i32 0, i32 7), align 4
  %93 = call ptr @devm_rtc_device_register(ptr noundef %12, ptr noundef %92, ptr noundef nonnull @bq32k_rtc_ops, ptr noundef nonnull @__this_module) #8
  %94 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = ptrtoint ptr %93 to i32
  br label %103

97:                                               ; preds = %91
  %98 = call i32 @device_create_file(ptr noundef %12, ptr noundef nonnull @dev_attr_trickle_charge_bypass) #8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.3) #9
  br label %103

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %93, ptr %102, align 8
  br label %103

103:                                              ; preds = %101, %100, %95, %44, %38, %22, %2
  %104 = phi i32 [ %96, %95 ], [ %98, %100 ], [ 0, %101 ], [ -19, %2 ], [ -5, %44 ], [ -5, %38 ], [ -5, %22 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #8
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bq32k_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void @device_remove_file(ptr noundef %2, ptr noundef nonnull @dev_attr_trickle_charge_bypass) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bq32k_rtc_read_time(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca %struct.bq32k_regs, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %5, i8 0, i32 7, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  %6 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 16, i1 false) #8, !annotation !8
  %7 = getelementptr i8, ptr %0, i32 -30
  %8 = load i16, ptr %7, align 2
  store i16 %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %9, align 2
  store i16 1, ptr %6, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %8, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 7, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %14, align 4
  %15 = getelementptr i8, ptr %0, i32 -8
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %4, i32 noundef 2) #8
  %18 = icmp eq i32 %17, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br i1 %18, label %19, label %56

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.bq32k_regs, ptr %5, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = icmp sgt i8 %21, -1
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  %24 = load i8, ptr %5, align 1
  %25 = and i8 %24, 127
  %26 = call i32 @_bcd2bin(i8 noundef zeroext %25) #10
  store i32 %26, ptr %1, align 4
  %27 = call i32 @_bcd2bin(i8 noundef zeroext %21) #10
  %28 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.bq32k_regs, ptr %5, i32 0, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 63
  %32 = call i32 @_bcd2bin(i8 noundef zeroext %31) #10
  %33 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.bq32k_regs, ptr %5, i32 0, i32 4
  %35 = load i8, ptr %34, align 1
  %36 = call i32 @_bcd2bin(i8 noundef zeroext %35) #10
  %37 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.bq32k_regs, ptr %5, i32 0, i32 3
  %39 = load i8, ptr %38, align 1
  %40 = call i32 @_bcd2bin(i8 noundef zeroext %39) #10
  %41 = add i32 %40, -1
  %42 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.bq32k_regs, ptr %5, i32 0, i32 5
  %44 = load i8, ptr %43, align 1
  %45 = call i32 @_bcd2bin(i8 noundef zeroext %44) #10
  %46 = add i32 %45, -1
  %47 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.bq32k_regs, ptr %5, i32 0, i32 6
  %49 = load i8, ptr %48, align 1
  %50 = call i32 @_bcd2bin(i8 noundef zeroext %49) #10
  %51 = and i8 %30, 64
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, i32 0, i32 100
  %54 = add i32 %50, %53
  %55 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %23, %19, %2
  %57 = phi i32 [ 0, %23 ], [ -5, %2 ], [ -22, %19 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #8
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bq32k_rtc_set_time(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [11 x i8], align 1
  %4 = load i32, ptr %1, align 4
  %5 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call zeroext i8 @_bin2bcd(i32 noundef %8) #10
  %10 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, 99
  %19 = add nsw i32 %17, -100
  %20 = select i1 %18, i32 %19, i32 %17
  %21 = select i1 %18, i8 -64, i8 -128
  %22 = or i8 %9, %21
  %23 = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #10
  %24 = add i32 %15, 1
  %25 = tail call zeroext i8 @_bin2bcd(i32 noundef %24) #10
  %26 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #10
  %27 = add i32 %11, 1
  %28 = tail call zeroext i8 @_bin2bcd(i32 noundef %27) #10
  %29 = tail call zeroext i8 @_bin2bcd(i32 noundef %6) #10
  %30 = tail call zeroext i8 @_bin2bcd(i32 noundef %4) #10
  %31 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %3) #8
  %32 = getelementptr inbounds i8, ptr %3, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %3, i8 0, i64 11, i1 false)
  store i8 %30, ptr %32, align 1
  %33 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 2
  store i8 %29, ptr %33, align 1
  %34 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 3
  store i8 %22, ptr %34, align 1
  %35 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 4
  store i8 %28, ptr %35, align 1
  %36 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 5
  store i8 %26, ptr %36, align 1
  %37 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 6
  store i8 %25, ptr %37, align 1
  %38 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 7
  store i8 %23, ptr %38, align 1
  %39 = call i32 @i2c_transfer_buffer_flags(ptr noundef %31, ptr noundef nonnull %3, i32 noundef 8, i16 noundef zeroext 0) #8
  %40 = icmp eq i32 %39, 8
  %41 = select i1 %40, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #8
  ret i32 %41
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bq32k_sysfs_show_tricklecharge_bypass(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 9, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false) #8, !annotation !8
  %8 = getelementptr i8, ptr %0, i32 -30
  %9 = load i16, ptr %8, align 2
  store i16 %9, ptr %5, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %10, align 2
  store i16 1, ptr %7, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %9, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %6, ptr %15, align 4
  %16 = getelementptr i8, ptr %0, i32 -8
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %5, i32 noundef 2) #8
  %19 = icmp eq i32 %18, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, ptr %6, align 4
  %22 = lshr i32 %21, 6
  %23 = and i32 %22, 1
  %24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %23)
  br label %25

25:                                               ; preds = %20, %3
  %26 = phi i32 [ %24, %20 ], [ -5, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bq32k_sysfs_store_tricklecharge_bypass(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca [11 x i8], align 1
  %6 = alloca [11 x i8], align 1
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store i32 0, ptr %9, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  store i32 0, ptr %10, align 4, !annotation !8
  %11 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %10) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  store i8 9, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #8
  %14 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #8, !annotation !8
  %15 = getelementptr i8, ptr %0, i32 -30
  %16 = load i16, ptr %15, align 2
  store i16 %16, ptr %8, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %17, align 2
  store i16 1, ptr %14, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %16, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %9, ptr %22, align 4
  %23 = getelementptr i8, ptr %0, i32 -8
  %24 = load ptr, ptr %23, align 8
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %8, i32 noundef 2) #8
  %26 = icmp eq i32 %25, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  br i1 %26, label %27, label %49

27:                                               ; preds = %13
  %28 = load i32, ptr %10, align 4
  %29 = icmp eq i32 %28, 0
  %30 = load i32, ptr %9, align 4
  br i1 %29, label %39, label %31

31:                                               ; preds = %27
  %32 = or i32 %30, 64
  store i32 %32, ptr %9, align 4
  %33 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %6) #8
  %34 = getelementptr inbounds i8, ptr %6, i32 1
  %35 = getelementptr inbounds i8, ptr %6, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %35, i8 0, i32 9, i1 false) #8, !annotation !8
  store i8 9, ptr %6, align 1
  %36 = trunc i32 %32 to i8
  store i8 %36, ptr %34, align 1
  %37 = call i32 @i2c_transfer_buffer_flags(ptr noundef %33, ptr noundef nonnull %6, i32 noundef 2, i16 noundef zeroext 0) #8
  %38 = icmp eq i32 %37, 2
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %6) #8
  br i1 %38, label %47, label %49

39:                                               ; preds = %27
  %40 = and i32 %30, -65
  store i32 %40, ptr %9, align 4
  %41 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %5) #8
  %42 = getelementptr inbounds i8, ptr %5, i32 1
  %43 = getelementptr inbounds i8, ptr %5, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %43, i8 0, i32 9, i1 false) #8, !annotation !8
  store i8 9, ptr %5, align 1
  %44 = trunc i32 %40 to i8
  store i8 %44, ptr %42, align 1
  %45 = call i32 @i2c_transfer_buffer_flags(ptr noundef %41, ptr noundef nonnull %5, i32 noundef 2, i16 noundef zeroext 0) #8
  %46 = icmp eq i32 %45, 2
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %5) #8
  br i1 %46, label %47, label %49

47:                                               ; preds = %39, %31
  %48 = phi ptr [ @.str.12, %31 ], [ @.str.13, %39 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull %48) #9
  br label %49

49:                                               ; preds = %47, %39, %31, %13, %4
  %50 = phi i32 [ -22, %4 ], [ -5, %13 ], [ -5, %31 ], [ -5, %39 ], [ %3, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  ret i32 %50
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }

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
