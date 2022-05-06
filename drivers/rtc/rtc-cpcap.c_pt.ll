; ModuleID = '/llk/IR/drivers/rtc/rtc-cpcap.c_pt.bc'
source_filename = "../drivers/rtc/rtc-cpcap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.cpcap_rtc = type { ptr, ptr, i16, i32, i8, i32, i8 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.cpcap_time = type { i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cpcap_rtc_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,cpcap-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias210 = internal constant [25 x i8] c"alias=platform:cpcap-rtc\00", section ".modinfo", align 1
@__UNIQUE_ID_description211 = internal constant [29 x i8] c"description=CPCAP RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author212 = internal constant [42 x i8] c"author=Sebastian Reichel <sre@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license213 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@cpcap_rtc_driver = internal global %struct.platform_driver { ptr @cpcap_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpcap_rtc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [10 x i8] c"cpcap-rtc\00", align 1
@cpcap_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @cpcap_rtc_read_time, ptr @cpcap_rtc_set_time, ptr @cpcap_rtc_read_alarm, ptr @cpcap_rtc_set_alarm, ptr null, ptr @cpcap_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"rtc_alarm\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not request alarm irq: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"rtc_1hz\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Could not request update irq: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"wakeup initialization failed (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Failed to read time\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Could not read vendor\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias210, ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_license213], section "llvm.metadata"

@__mod_of__cpcap_rtc_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @cpcap_rtc_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpcap_rtc_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpcap_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_rtc_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 28, i32 noundef 3520) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %52, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @dev_get_regmap(ptr noundef %8, ptr noundef null) #6
  store ptr %9, ptr %4, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %52, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %12, align 8
  %13 = tail call ptr @devm_rtc_allocate_device(ptr noundef %3) #6
  %14 = getelementptr inbounds %struct.cpcap_rtc, ptr %4, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i32
  br label %52

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.rtc_device, ptr %13, i32 0, i32 3
  store ptr @cpcap_rtc_ops, ptr %19, align 8
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr inbounds %struct.rtc_device, ptr %20, i32 0, i32 23
  store i64 2831155199, ptr %21, align 8
  %22 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %23 = call i32 @regmap_read(ptr noundef %22, i32 noundef 72, ptr noundef nonnull %2) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %52

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.cpcap_rtc, ptr %4, i32 0, i32 2
  %28 = load i32, ptr %2, align 4
  %29 = trunc i32 %28 to i16
  %30 = lshr i16 %29, 6
  %31 = and i16 %30, 7
  store i16 %31, ptr %27, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %32 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %33 = getelementptr inbounds %struct.cpcap_rtc, ptr %4, i32 0, i32 3
  store i32 %32, ptr %33, align 4
  %34 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %32, ptr noundef null, ptr noundef nonnull @cpcap_rtc_alarm_irq, i32 noundef 8192, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %34) #7
  br label %52

37:                                               ; preds = %26
  %38 = load i32, ptr %33, align 4
  call void @disable_irq(i32 noundef %38) #6
  %39 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #6
  %40 = getelementptr inbounds %struct.cpcap_rtc, ptr %4, i32 0, i32 5
  store i32 %39, ptr %40, align 4
  %41 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %39, ptr noundef null, ptr noundef nonnull @cpcap_rtc_update_irq, i32 noundef 8192, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %41) #7
  br label %52

44:                                               ; preds = %37
  %45 = load i32, ptr %40, align 4
  call void @disable_irq(i32 noundef %45) #6
  %46 = call i32 @device_init_wakeup(ptr noundef %3, i1 noundef zeroext true) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %46) #7
  br label %49

49:                                               ; preds = %48, %44
  %50 = load ptr, ptr %14, align 4
  %51 = call i32 @__devm_rtc_register_device(ptr noundef nonnull @__this_module, ptr noundef %50) #6
  br label %52

52:                                               ; preds = %49, %43, %36, %25, %16, %6, %1
  %53 = phi i32 [ %17, %16 ], [ %34, %36 ], [ %41, %43 ], [ %51, %49 ], [ -12, %1 ], [ -19, %6 ], [ %23, %25 ]
  ret i32 %53
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_rtc_alarm_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.cpcap_rtc, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @rtc_update_irq(ptr noundef %4, i32 noundef 1, i32 noundef 160) #6
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_rtc_update_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.cpcap_rtc, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @rtc_update_irq(ptr noundef %4, i32 noundef 1, i32 noundef 144) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_rtc_read_time(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.cpcap_time, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 1044, ptr noundef nonnull %4) #6
  %9 = load ptr, ptr %6, align 4
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef 1056, ptr noundef nonnull %3) #6
  %11 = or i32 %10, %8
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.cpcap_time, ptr %3, i32 0, i32 1
  %14 = call i32 @regmap_read(ptr noundef %12, i32 noundef 1040, ptr noundef %13) #6
  %15 = or i32 %11, %14
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.cpcap_time, ptr %3, i32 0, i32 2
  %18 = call i32 @regmap_read(ptr noundef %16, i32 noundef 1044, ptr noundef %17) #6
  %19 = or i32 %15, %18
  %20 = load i32, ptr %4, align 4
  %21 = load i32, ptr %17, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load ptr, ptr %6, align 4
  %25 = call i32 @regmap_read(ptr noundef %24, i32 noundef 1056, ptr noundef nonnull %3) #6
  %26 = or i32 %25, %19
  br label %27

27:                                               ; preds = %23, %2
  %28 = phi i32 [ %26, %23 ], [ %19, %2 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6) #7
  br label %43

31:                                               ; preds = %27
  %32 = load i32, ptr %13, align 4
  %33 = and i32 %32, 255
  %34 = load i32, ptr %17, align 4
  %35 = shl i32 %34, 8
  %36 = and i32 %35, 130816
  %37 = or i32 %36, %33
  %38 = load i32, ptr %3, align 4
  %39 = and i32 %38, 32767
  %40 = mul nuw i32 %39, 86400
  %41 = add i32 %37, %40
  %42 = zext i32 %41 to i64
  call void @rtc_time64_to_tm(i64 noundef %42, ptr noundef %1) #6
  br label %43

43:                                               ; preds = %31, %30
  %44 = phi i32 [ -5, %30 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_rtc_set_time(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i64 @rtc_tm_to_time64(ptr noundef %1) #6
  %6 = trunc i64 %5 to i32
  %7 = freeze i32 %6
  %8 = udiv i32 %7, 86400
  %9 = mul i32 %8, 86400
  %10 = sub i32 %7, %9
  %11 = lshr i32 %10, 8
  %12 = and i32 %10, 255
  %13 = getelementptr inbounds %struct.cpcap_rtc, ptr %4, i32 0, i32 4
  %14 = load i8, ptr %13, align 4, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.cpcap_rtc, ptr %4, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  tail call void @disable_irq(i32 noundef %18) #6
  br label %19

19:                                               ; preds = %16, %2
  %20 = getelementptr inbounds %struct.cpcap_rtc, ptr %4, i32 0, i32 6
  %21 = load i8, ptr %20, align 4, !range !9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cpcap_rtc, ptr %4, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  tail call void @disable_irq(i32 noundef %25) #6
  br label %26

26:                                               ; preds = %23, %19
  %27 = getelementptr inbounds %struct.cpcap_rtc, ptr %4, i32 0, i32 2
  %28 = load i16, ptr %27, align 4
  %29 = icmp eq i16 %28, 0
  %30 = load ptr, ptr %4, align 4
  br i1 %29, label %31, label %39

31:                                               ; preds = %26
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 1040, i32 noundef 255, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %33 = load ptr, ptr %4, align 4
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 1044, i32 noundef 511, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %35 = or i32 %34, %32
  %36 = load ptr, ptr %4, align 4
  %37 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 1056, i32 noundef 32767, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %38 = or i32 %35, %37
  br label %50

39:                                               ; preds = %26
  %40 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 1040, i32 noundef 255, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %41 = load ptr, ptr %4, align 4
  %42 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 1056, i32 noundef 32767, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %43 = or i32 %42, %40
  %44 = load ptr, ptr %4, align 4
  %45 = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 1044, i32 noundef 511, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %46 = or i32 %43, %45
  %47 = load ptr, ptr %4, align 4
  %48 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 1040, i32 noundef 255, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %49 = or i32 %46, %48
  br label %50

50:                                               ; preds = %39, %31
  %51 = phi i32 [ %38, %31 ], [ %49, %39 ]
  %52 = load i8, ptr %20, align 4, !range !9
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.cpcap_rtc, ptr %4, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  tail call void @enable_irq(i32 noundef %56) #6
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i8, ptr %13, align 4, !range !9
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.cpcap_rtc, ptr %4, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  tail call void @enable_irq(i32 noundef %62) #6
  br label %63

63:                                               ; preds = %60, %57
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_rtc_read_alarm(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.cpcap_time, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cpcap_rtc, ptr %5, i32 0, i32 4
  %7 = load i8, ptr %6, align 4, !range !9
  store i8 %7, ptr %1, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 1060, ptr noundef nonnull %3) #6
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.cpcap_time, ptr %3, i32 0, i32 2
  %12 = call i32 @regmap_read(ptr noundef %10, i32 noundef 1052, ptr noundef %11) #6
  %13 = or i32 %12, %9
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.cpcap_time, ptr %3, i32 0, i32 1
  %16 = call i32 @regmap_read(ptr noundef %14, i32 noundef 1048, ptr noundef %15) #6
  %17 = or i32 %13, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6) #7
  br label %34

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %22 = load i32, ptr %15, align 4
  %23 = and i32 %22, 255
  %24 = load i32, ptr %11, align 4
  %25 = shl i32 %24, 8
  %26 = and i32 %25, 130816
  %27 = or i32 %26, %23
  %28 = load i32, ptr %3, align 4
  %29 = and i32 %28, 32767
  %30 = mul nuw i32 %29, 86400
  %31 = add i32 %27, %30
  %32 = zext i32 %31 to i64
  call void @rtc_time64_to_tm(i64 noundef %32, ptr noundef %21) #6
  %33 = call i32 @rtc_valid_tm(ptr noundef %21) #6
  br label %34

34:                                               ; preds = %20, %19
  %35 = phi i32 [ -5, %19 ], [ %33, %20 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_rtc_set_alarm(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %6 = tail call i64 @rtc_tm_to_time64(ptr noundef %5) #6
  %7 = trunc i64 %6 to i32
  %8 = freeze i32 %7
  %9 = udiv i32 %8, 86400
  %10 = mul i32 %9, 86400
  %11 = sub i32 %8, %10
  %12 = lshr i32 %11, 8
  %13 = and i32 %11, 255
  %14 = getelementptr inbounds %struct.cpcap_rtc, ptr %4, i32 0, i32 4
  %15 = load i8, ptr %14, align 4, !range !9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.cpcap_rtc, ptr %4, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  tail call void @disable_irq(i32 noundef %19) #6
  br label %20

20:                                               ; preds = %17, %2
  %21 = load ptr, ptr %4, align 4
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 1060, i32 noundef 32767, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %23 = load ptr, ptr %4, align 4
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 1052, i32 noundef 511, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %25 = or i32 %24, %22
  %26 = load ptr, ptr %4, align 4
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 1048, i32 noundef 255, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %28 = or i32 %25, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.cpcap_rtc, ptr %4, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  tail call void @enable_irq(i32 noundef %32) #6
  store i8 1, ptr %14, align 4
  br label %33

33:                                               ; preds = %30, %20
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.cpcap_rtc, ptr %4, i32 0, i32 4
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = zext i8 %6 to i32
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = icmp ne i32 %1, 0
  %11 = getelementptr inbounds %struct.cpcap_rtc, ptr %4, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  br i1 %10, label %13, label %14

13:                                               ; preds = %9
  tail call void @enable_irq(i32 noundef %12) #6
  br label %15

14:                                               ; preds = %9
  tail call void @disable_irq(i32 noundef %12) #6
  br label %15

15:                                               ; preds = %14, %13
  %16 = zext i1 %10 to i8
  store i8 %16, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_valid_tm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
