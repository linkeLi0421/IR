; ModuleID = '/llk/IR/drivers/rtc/rtc-max8998.c_pt.bc'
source_filename = "../drivers/rtc/rtc-max8998.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_device_id = type { [20 x i8], i32 }
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
%struct.max8998_dev = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, ptr, i32, i32, [4 x i8], [4 x i8], i32, i8 }
%struct.max8998_rtc_info = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.max8998_platform_data = type { ptr, i32, i32, i32, i8, [4 x i32], [2 x i32], i32, i32, i32, i32, i32, i8, i8, i32, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@max8998_rtc_id = internal constant [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max8998-rtc\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"lp3974-rtc\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [42 x i8] c"author=Minkyu Kang <mk7.kang@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [48 x i8] c"author=Joonyoung Shim <jy0922.shim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [37 x i8] c"description=Maxim MAX8998 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@max8998_rtc_driver = internal global %struct.platform_driver { ptr @max8998_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max8998_rtc_id, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"max8998-rtc\00", align 1
@max8998_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @max8998_rtc_read_time, ptr @max8998_rtc_set_time, ptr @max8998_rtc_read_alarm, ptr @max8998_rtc_set_alarm, ptr null, ptr @max8998_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to register RTC device: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to map alarm IRQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"rtc-alarm0\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to request alarm IRQ: %d: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"RTC CHIP NAME: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"LP3974 with RTC REGERR option. RTC updates will be extremely slow.\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license250], section "llvm.metadata"

@__mod_platform__max8998_rtc_id_device_table = dso_local alias [3 x %struct.platform_device_id], ptr @max8998_rtc_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8998_rtc_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8998_rtc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_rtc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 24, i32 noundef 3520) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %46, label %11

11:                                               ; preds = %1
  store ptr %2, ptr %9, align 4
  %12 = getelementptr inbounds %struct.max8998_rtc_info, ptr %9, i32 0, i32 1
  store ptr %6, ptr %12, align 4
  %13 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.max8998_rtc_info, ptr %9, i32 0, i32 2
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %16, align 8
  %17 = tail call ptr @devm_rtc_device_register(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @max8998_rtc_ops, ptr noundef nonnull @__this_module) #7
  %18 = getelementptr inbounds %struct.max8998_rtc_info, ptr %9, i32 0, i32 3
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = ptrtoint ptr %17 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %21) #8
  br label %46

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @irq_create_mapping_affinity(ptr noundef nonnull %24, i32 noundef 9, ptr noundef null) #7
  %28 = getelementptr inbounds %struct.max8998_rtc_info, ptr %9, i32 0, i32 4
  store i32 %27, ptr %28, align 4
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.2) #8
  br label %36

31:                                               ; preds = %26
  %32 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %27, ptr noundef null, ptr noundef nonnull @max8998_rtc_alarm_irq, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull %9) #7
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %35, i32 noundef %32) #8
  br label %36

36:                                               ; preds = %34, %31, %30, %22
  %37 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef %38) #8
  %39 = icmp eq ptr %8, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.max8998_platform_data, ptr %8, i32 0, i32 13
  %42 = load i8, ptr %41, align 1, !range !8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.max8998_rtc_info, ptr %9, i32 0, i32 5
  store i8 1, ptr %45, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.6) #8
  br label %46

46:                                               ; preds = %44, %40, %36, %20, %1
  %47 = phi i32 [ %21, %20 ], [ -12, %1 ], [ 0, %44 ], [ 0, %40 ], [ 0, %36 ]
  ret i32 %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_rtc_alarm_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.max8998_rtc_info, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  tail call void @rtc_update_irq(ptr noundef %4, i32 noundef 1, i32 noundef 160) #7
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_rtc_read_time(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [8 x i8], align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !9
  %6 = getelementptr inbounds %struct.max8998_rtc_info, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @max8998_bulk_read(ptr noundef %7, i8 noundef zeroext 0, i32 noundef 8, ptr noundef nonnull %3) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  call fastcc void @max8998_data_to_tm(ptr noundef nonnull %3, ptr noundef %1)
  br label %11

11:                                               ; preds = %10, %2
  %12 = phi i32 [ 0, %10 ], [ %8, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_rtc_set_time(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [8 x i8], align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %6 = load i32, ptr %1, align 4
  %7 = tail call zeroext i8 @_bin2bcd(i32 noundef %6) #9
  store i8 %7, ptr %3, align 8
  %8 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #9
  %11 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #9
  %15 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %14, ptr %15, align 2
  %16 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = tail call zeroext i8 @_bin2bcd(i32 noundef %21) #9
  %23 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = tail call zeroext i8 @_bin2bcd(i32 noundef %25) #9
  %27 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %26, ptr %27, align 1
  %28 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = srem i32 %29, 100
  %31 = tail call zeroext i8 @_bin2bcd(i32 noundef %30) #9
  %32 = getelementptr inbounds i8, ptr %3, i32 6
  store i8 %31, ptr %32, align 2
  %33 = add i32 %29, 1900
  %34 = sdiv i32 %33, 100
  %35 = tail call zeroext i8 @_bin2bcd(i32 noundef %34) #9
  %36 = getelementptr inbounds i8, ptr %3, i32 7
  store i8 %35, ptr %36, align 1
  %37 = getelementptr inbounds %struct.max8998_rtc_info, ptr %5, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 @max8998_bulk_write(ptr noundef %38, i8 noundef zeroext 0, i32 noundef 8, ptr noundef nonnull %3) #7
  %40 = getelementptr inbounds %struct.max8998_rtc_info, ptr %5, i32 0, i32 5
  %41 = load i8, ptr %40, align 4, !range !8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %2
  call void @msleep(i32 noundef 2000) #7
  br label %44

44:                                               ; preds = %43, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_rtc_read_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [8 x i8], align 8
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !9
  %7 = getelementptr inbounds %struct.max8998_rtc_info, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @max8998_bulk_read(ptr noundef %8, i8 noundef zeroext 8, i32 noundef 8, ptr noundef nonnull %3) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  call fastcc void @max8998_data_to_tm(ptr noundef nonnull %3, ptr noundef %12)
  %13 = load ptr, ptr %7, align 4
  %14 = call i32 @max8998_read_reg(ptr noundef %13, i8 noundef zeroext 24, ptr noundef nonnull %4) #7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %11
  %17 = load i8, ptr %4, align 1
  %18 = icmp ne i8 %17, 0
  %19 = zext i1 %18 to i8
  store i8 %19, ptr %1, align 4
  %20 = load ptr, ptr %7, align 4
  %21 = call i32 @max8998_read_reg(ptr noundef %20, i8 noundef zeroext 26, ptr noundef nonnull %4) #7
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = load i8, ptr %4, align 1
  %25 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 1
  %26 = lshr i8 %24, 1
  %27 = and i8 %26, 1
  store i8 %27, ptr %25, align 1
  br label %28

28:                                               ; preds = %23, %16, %11, %2
  %29 = phi i32 [ %9, %2 ], [ %14, %11 ], [ %21, %16 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_rtc_set_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [8 x i8], align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %6 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call zeroext i8 @_bin2bcd(i32 noundef %7) #9
  store i8 %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #9
  %12 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %11, ptr %12, align 1
  %13 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #9
  %16 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %15, ptr %16, align 2
  %17 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %19, ptr %20, align 1
  %21 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call zeroext i8 @_bin2bcd(i32 noundef %22) #9
  %24 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = tail call zeroext i8 @_bin2bcd(i32 noundef %26) #9
  %28 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %27, ptr %28, align 1
  %29 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = srem i32 %30, 100
  %32 = tail call zeroext i8 @_bin2bcd(i32 noundef %31) #9
  %33 = getelementptr inbounds i8, ptr %3, i32 6
  store i8 %32, ptr %33, align 2
  %34 = add i32 %30, 1900
  %35 = sdiv i32 %34, 100
  %36 = tail call zeroext i8 @_bin2bcd(i32 noundef %35) #9
  %37 = getelementptr inbounds i8, ptr %3, i32 7
  store i8 %36, ptr %37, align 1
  %38 = getelementptr inbounds %struct.max8998_rtc_info, ptr %5, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @max8998_write_reg(ptr noundef %39, i8 noundef zeroext 24, i8 noundef zeroext 0) #7
  %41 = getelementptr inbounds %struct.max8998_rtc_info, ptr %5, i32 0, i32 5
  %42 = load i8, ptr %41, align 4, !range !8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %2
  tail call void @msleep(i32 noundef 2000) #7
  br label %45

45:                                               ; preds = %44, %2
  %46 = icmp slt i32 %40, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %45
  %48 = load ptr, ptr %38, align 4
  %49 = call i32 @max8998_bulk_write(ptr noundef %48, i8 noundef zeroext 8, i32 noundef 8, ptr noundef nonnull %3) #7
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %47
  %52 = load i8, ptr %41, align 4, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  call void @msleep(i32 noundef 2000) #7
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i8, ptr %1, align 4
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = load i8, ptr %41, align 4, !range !8
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %60, i8 119, i8 87
  %62 = load ptr, ptr %38, align 4
  %63 = call i32 @max8998_write_reg(ptr noundef %62, i8 noundef zeroext 24, i8 noundef zeroext %61) #7
  %64 = load i8, ptr %41, align 4, !range !8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  call void @msleep(i32 noundef 2000) #7
  br label %67

67:                                               ; preds = %66, %58, %55, %47, %45
  %68 = phi i32 [ %40, %45 ], [ %49, %47 ], [ %49, %55 ], [ %63, %58 ], [ %63, %66 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.max8998_rtc_info, ptr %4, i32 0, i32 5
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i8 119, i8 87
  %11 = getelementptr inbounds %struct.max8998_rtc_info, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @max8998_write_reg(ptr noundef %12, i8 noundef zeroext 24, i8 noundef zeroext %10) #7
  %14 = load i8, ptr %7, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %25, label %23

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.max8998_rtc_info, ptr %4, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @max8998_write_reg(ptr noundef %18, i8 noundef zeroext 24, i8 noundef zeroext 0) #7
  %20 = getelementptr inbounds %struct.max8998_rtc_info, ptr %4, i32 0, i32 5
  %21 = load i8, ptr %20, align 4, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16, %6
  %24 = phi i32 [ %13, %6 ], [ %19, %16 ]
  tail call void @msleep(i32 noundef 2000) #7
  br label %25

25:                                               ; preds = %23, %16, %6
  %26 = phi i32 [ %13, %6 ], [ %19, %16 ], [ %24, %23 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_bulk_read(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @max8998_data_to_tm(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 {
  %3 = load i8, ptr %0, align 1
  %4 = tail call i32 @_bcd2bin(i8 noundef zeroext %3) #9
  store i32 %4, ptr %1, align 4
  %5 = getelementptr i8, ptr %0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = tail call i32 @_bcd2bin(i8 noundef zeroext %6) #9
  %8 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = getelementptr i8, ptr %0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = icmp sgt i8 %10, -1
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = and i8 %10, 31
  %14 = tail call i32 @_bcd2bin(i8 noundef zeroext %13) #9
  %15 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  %16 = load i8, ptr %9, align 1
  %17 = and i8 %16, 32
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %12
  %20 = add i32 %14, 12
  store i32 %20, ptr %15, align 4
  br label %25

21:                                               ; preds = %2
  %22 = and i8 %10, 63
  %23 = tail call i32 @_bcd2bin(i8 noundef zeroext %22) #9
  %24 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %21, %19, %12
  %26 = getelementptr i8, ptr %0, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 7
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %29, ptr %30, align 4
  %31 = getelementptr i8, ptr %0, i32 4
  %32 = load i8, ptr %31, align 1
  %33 = tail call i32 @_bcd2bin(i8 noundef zeroext %32) #9
  %34 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %33, ptr %34, align 4
  %35 = getelementptr i8, ptr %0, i32 5
  %36 = load i8, ptr %35, align 1
  %37 = tail call i32 @_bcd2bin(i8 noundef zeroext %36) #9
  %38 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %37, ptr %38, align 4
  %39 = getelementptr i8, ptr %0, i32 6
  %40 = load i8, ptr %39, align 1
  %41 = getelementptr i8, ptr %0, i32 7
  %42 = load i8, ptr %41, align 1
  %43 = tail call i32 @_bcd2bin(i8 noundef zeroext %42) #9
  %44 = tail call i32 @_bcd2bin(i8 noundef zeroext %40) #9
  %45 = mul i32 %43, 100
  %46 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %47 = add i32 %44, -1900
  %48 = add i32 %47, %45
  store i32 %48, ptr %46, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_bulk_write(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_read_reg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_write_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
