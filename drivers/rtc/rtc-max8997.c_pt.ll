; ModuleID = '/llk/IR/drivers/rtc/rtc-max8997.c_pt.bc'
source_filename = "../drivers/rtc/rtc-max8997.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
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
%struct.max8997_rtc_info = type { ptr, ptr, ptr, ptr, %struct.mutex, i32, i32 }
%struct.max8997_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, ptr, %struct.mutex, [11 x i32], [11 x i32], [187 x i8], [12 x i8] }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__param_str_wtsr_en = internal constant [8 x i8] c"wtsr_en\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@wtsr_en = internal global i32 1, align 4
@__param_wtsr_en = internal constant %struct.kernel_param { ptr @__param_str_wtsr_en, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @wtsr_en } }, section "__param", align 4
@__UNIQUE_ID_wtsr_entype247 = internal constant [21 x i8] c"parmtype=wtsr_en:int\00", section ".modinfo", align 1
@__UNIQUE_ID_wtsr_en248 = internal constant [60 x i8] c"parm=wtsr_en:Watchdog Timeout & Software Reset (default=on)\00", section ".modinfo", align 1
@__param_str_smpl_en = internal constant [8 x i8] c"smpl_en\00", align 1
@smpl_en = internal global i32 1, align 4
@__param_smpl_en = internal constant %struct.kernel_param { ptr @__param_str_smpl_en, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @smpl_en } }, section "__param", align 4
@__UNIQUE_ID_smpl_entype249 = internal constant [21 x i8] c"parmtype=smpl_en:int\00", section ".modinfo", align 1
@__UNIQUE_ID_smpl_en250 = internal constant [54 x i8] c"parm=smpl_en:Sudden Momentary Power Loss (default=on)\00", section ".modinfo", align 1
@rtc_id = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max8997-rtc\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_description251 = internal constant [37 x i8] c"description=Maxim MAX8997 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [31 x i8] c"author=<ms925.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@max8997_rtc_driver = internal global %struct.platform_driver { ptr @max8997_rtc_probe, ptr null, ptr @max8997_rtc_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rtc_id, i8 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"max8997-rtc\00", align 1
@max8997_rtc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&info->lock\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to initialize RTC reg:%d\0A\00", align 1
@max8997_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @max8997_rtc_read_time, ptr @max8997_rtc_set_time, ptr @max8997_rtc_read_alarm, ptr @max8997_rtc_set_alarm, ptr null, ptr @max8997_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to register RTC device: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to create mapping alarm IRQ\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"rtc-alarm0\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Failed to request alarm IRQ: %d: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"%s: fail to write controlm reg(%d)\0A\00", align 1
@__func__.max8997_rtc_init_reg = private unnamed_addr constant [21 x i8] c"max8997_rtc_init_reg\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"%s: fail to write update reg(%d)\0A\00", align 1
@__func__.max8997_rtc_set_update_reg = private unnamed_addr constant [27 x i8] c"max8997_rtc_set_update_reg\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"%s: %s WTSR\0A\00", align 1
@__func__.max8997_rtc_enable_wtsr = private unnamed_addr constant [24 x i8] c"max8997_rtc_enable_wtsr\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"%s: fail to update WTSR reg(%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"%s: %s SMPL\0A\00", align 1
@__func__.max8997_rtc_enable_smpl = private unnamed_addr constant [24 x i8] c"max8997_rtc_enable_smpl\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"%s: fail to update SMPL reg(%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"\016rtc_max8997: WTSR_SMPL(0x%02x)\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"%s: fail to read time reg(%d)\0A\00", align 1
@__func__.max8997_rtc_read_time = private unnamed_addr constant [22 x i8] c"max8997_rtc_read_time\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"%s: fail to write time reg(%d)\0A\00", align 1
@__func__.max8997_rtc_set_time = private unnamed_addr constant [21 x i8] c"max8997_rtc_set_time\00", align 1
@.str.18 = private unnamed_addr constant [66 x i8] c"\014rtc_max8997: RTC cannot handle the year %d.  Assume it's 2000.\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"%s:%d fail to read alarm reg(%d)\0A\00", align 1
@__func__.max8997_rtc_read_alarm = private unnamed_addr constant [23 x i8] c"max8997_rtc_read_alarm\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"%s:%d fail to read status1 reg(%d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"%s: %d-%02d-%02d %02d:%02d:%02d\0A\00", align 1
@__func__.max8997_rtc_set_alarm = private unnamed_addr constant [22 x i8] c"max8997_rtc_set_alarm\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"%s: fail to write alarm reg(%d)\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"%s: should have mutex locked\0A\00", align 1
@__func__.max8997_rtc_stop_alarm = private unnamed_addr constant [23 x i8] c"max8997_rtc_stop_alarm\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"%s: fail to read alarm reg(%d)\0A\00", align 1
@__func__.max8997_rtc_start_alarm = private unnamed_addr constant [24 x i8] c"max8997_rtc_start_alarm\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"%s:irq(%d)\0A\00", align 1
@__func__.max8997_rtc_alarm_irq = private unnamed_addr constant [22 x i8] c"max8997_rtc_alarm_irq\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_smpl_en250, ptr @__UNIQUE_ID_smpl_entype249, ptr @__UNIQUE_ID_wtsr_en248, ptr @__UNIQUE_ID_wtsr_entype247, ptr @__param_smpl_en, ptr @__param_wtsr_en], section "llvm.metadata"

@__mod_platform__rtc_id_device_table = dso_local alias [2 x %struct.platform_device_id], ptr @rtc_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8997_rtc_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8997_rtc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_rtc_probe(ptr noundef %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 44, i32 noundef 3520) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %49, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.max8997_rtc_info, ptr %8, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @max8997_rtc_probe.__key) #7
  store ptr %3, ptr %8, align 4
  %12 = getelementptr inbounds %struct.max8997_rtc_info, ptr %8, i32 0, i32 1
  store ptr %7, ptr %12, align 4
  %13 = getelementptr inbounds %struct.max8997_dev, ptr %7, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.max8997_rtc_info, ptr %8, i32 0, i32 2
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %16, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #7
  store i16 515, ptr %2, align 2, !annotation !8
  %17 = getelementptr inbounds %struct.max8997_rtc_info, ptr %8, i32 0, i32 6
  store i32 1, ptr %17, align 4
  %18 = call i32 @max8997_bulk_write(ptr noundef %14, i8 noundef zeroext 2, i32 noundef 2, ptr noundef nonnull %2) #7
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.max8997_rtc_init_reg, i32 noundef %18) #8
  br label %28

22:                                               ; preds = %10
  %23 = load ptr, ptr %15, align 4
  %24 = call i32 @max8997_write_reg(ptr noundef %23, i8 noundef zeroext 4, i8 noundef zeroext 1) #7
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.max8997_rtc_set_update_reg, i32 noundef %24) #8
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi i32 [ %24, %26 ], [ %18, %20 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %29) #8
  br label %49

30:                                               ; preds = %22
  call void @msleep(i32 noundef 20) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #7
  call fastcc void @max8997_rtc_enable_wtsr(ptr noundef nonnull %8, i1 noundef zeroext true)
  call fastcc void @max8997_rtc_enable_smpl(ptr noundef nonnull %8, i1 noundef zeroext true)
  %31 = call i32 @device_init_wakeup(ptr noundef %3, i1 noundef zeroext true) #7
  %32 = call ptr @devm_rtc_device_register(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @max8997_rtc_ops, ptr noundef nonnull @__this_module) #7
  %33 = getelementptr inbounds %struct.max8997_rtc_info, ptr %8, i32 0, i32 3
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = ptrtoint ptr %32 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %36) #8
  br label %49

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.max8997_dev, ptr %7, i32 0, i32 11
  %39 = load ptr, ptr %38, align 4
  %40 = call i32 @irq_create_mapping_affinity(ptr noundef %39, i32 noundef 21, ptr noundef null) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #8
  br label %49

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.max8997_rtc_info, ptr %8, i32 0, i32 5
  store i32 %40, ptr %44, align 4
  %45 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %40, ptr noundef null, ptr noundef nonnull @max8997_rtc_alarm_irq, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #7
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, ptr %44, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %48, i32 noundef %45) #8
  br label %49

49:                                               ; preds = %47, %43, %42, %35, %28, %1
  %50 = phi i32 [ %29, %28 ], [ %36, %35 ], [ -12, %1 ], [ %45, %47 ], [ %45, %43 ], [ -6, %42 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max8997_rtc_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @max8997_rtc_enable_wtsr(ptr noundef %3, i1 noundef zeroext false)
  tail call fastcc void @max8997_rtc_enable_smpl(ptr noundef %3, i1 noundef zeroext false)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @max8997_rtc_enable_wtsr(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = load i32, ptr @wtsr_en, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = select i1 %1, ptr @.str.10, ptr @.str.11
  %7 = select i1 %1, i8 67, i8 0
  %8 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.max8997_rtc_enable_wtsr, ptr noundef nonnull %6) #8
  %9 = getelementptr inbounds %struct.max8997_rtc_info, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @max8997_update_reg(ptr noundef %10, i8 noundef zeroext 6, i8 noundef zeroext %7, i8 noundef zeroext 67) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.max8997_rtc_enable_wtsr, i32 noundef %11) #8
  br label %22

15:                                               ; preds = %5
  %16 = load ptr, ptr %9, align 4
  %17 = tail call i32 @max8997_write_reg(ptr noundef %16, i8 noundef zeroext 4, i8 noundef zeroext 1) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.max8997_rtc_set_update_reg, i32 noundef %17) #8
  br label %22

21:                                               ; preds = %15
  tail call void @msleep(i32 noundef 20) #7
  br label %22

22:                                               ; preds = %21, %19, %13, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @max8997_rtc_enable_smpl(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  %4 = load i32, ptr @smpl_en, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = select i1 %1, ptr @.str.10, ptr @.str.11
  %8 = select i1 %1, i8 -128, i8 0
  %9 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.max8997_rtc_enable_smpl, ptr noundef nonnull %7) #8
  %10 = getelementptr inbounds %struct.max8997_rtc_info, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @max8997_update_reg(ptr noundef %11, i8 noundef zeroext 6, i8 noundef zeroext %8, i8 noundef zeroext -116) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  %15 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.max8997_rtc_enable_smpl, i32 noundef %12) #8
  br label %29

16:                                               ; preds = %6
  %17 = load ptr, ptr %10, align 4
  %18 = tail call i32 @max8997_write_reg(ptr noundef %17, i8 noundef zeroext 4, i8 noundef zeroext 1) #7
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.max8997_rtc_set_update_reg, i32 noundef %18) #8
  br label %23

22:                                               ; preds = %16
  tail call void @msleep(i32 noundef 20) #7
  br label %23

23:                                               ; preds = %22, %20
  store i8 0, ptr %3, align 1
  %24 = load ptr, ptr %10, align 4
  %25 = call i32 @max8997_read_reg(ptr noundef %24, i8 noundef zeroext 6, ptr noundef nonnull %3) #7
  %26 = load i8, ptr %3, align 1
  %27 = zext i8 %26 to i32
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %27) #8
  br label %29

29:                                               ; preds = %23, %14, %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_rtc_alarm_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.max8997_rtc_alarm_irq, i32 noundef %0) #8
  %4 = getelementptr inbounds %struct.max8997_rtc_info, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @rtc_update_irq(ptr noundef %5, i32 noundef 1, i32 noundef 160) #7
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_bulk_write(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_write_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_update_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_read_reg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_rtc_read_time(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [7 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %3, i8 0, i32 7, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.max8997_rtc_info, ptr %5, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %6) #7
  %7 = getelementptr inbounds %struct.max8997_rtc_info, ptr %5, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @max8997_bulk_read(ptr noundef %8, i8 noundef zeroext 16, i32 noundef 7, ptr noundef nonnull %3) #7
  call void @mutex_unlock(ptr noundef %6) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.max8997_rtc_read_time, i32 noundef %9) #8
  br label %68

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.max8997_rtc_info, ptr %5, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = load i8, ptr %3, align 1
  %17 = and i8 %16, 127
  %18 = zext i8 %17 to i32
  store i32 %18, ptr %1, align 4
  %19 = getelementptr inbounds i8, ptr %3, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 127
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = icmp eq i32 %15, 0
  %25 = getelementptr inbounds i8, ptr %3, i32 2
  %26 = load i8, ptr %25, align 1
  br i1 %24, label %31, label %27

27:                                               ; preds = %13
  %28 = and i8 %26, 31
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  br label %39

31:                                               ; preds = %13
  %32 = and i8 %26, 15
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %33, ptr %34, align 4
  %35 = and i8 %26, 64
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = add nuw nsw i32 %33, 12
  store i32 %38, ptr %34, align 4
  br label %39

39:                                               ; preds = %37, %31, %27
  %40 = getelementptr inbounds i8, ptr %3, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 127
  %43 = zext i8 %42 to i32
  %44 = icmp eq i8 %42, 0
  %45 = call i32 @llvm.ctlz.i32(i32 %43, i1 false) #7, !range !9
  %46 = sub nsw i32 31, %45
  %47 = select i1 %44, i32 -1, i32 %46
  %48 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds i8, ptr %3, i32 6
  %50 = load i8, ptr %49, align 1
  %51 = and i8 %50, 31
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds i8, ptr %3, i32 4
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %55, 15
  %57 = zext i8 %56 to i32
  %58 = add nsw i32 %57, -1
  %59 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds i8, ptr %3, i32 5
  %61 = load i8, ptr %60, align 1
  %62 = and i8 %61, 127
  %63 = add nuw i8 %62, 100
  %64 = zext i8 %63 to i32
  %65 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 7
  store i32 0, ptr %66, align 4
  %67 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 8
  store i32 0, ptr %67, align 4
  br label %68

68:                                               ; preds = %39, %11
  %69 = phi i32 [ %9, %11 ], [ 0, %39 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #7
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_rtc_set_time(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [7 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #7
  %6 = load i32, ptr %1, align 4
  %7 = trunc i32 %6 to i8
  store i8 %7, ptr %3, align 1
  %8 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %14, ptr %15, align 1
  %16 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = shl nuw i32 1, %17
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %19, ptr %20, align 1
  %21 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds i8, ptr %3, i32 6
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = trunc i32 %26 to i8
  %28 = add i8 %27, 1
  %29 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %28, ptr %29, align 1
  %30 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, 100
  %33 = trunc i32 %31 to i8
  %34 = add i8 %33, -100
  %35 = select i1 %32, i8 %34, i8 0
  %36 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %35, ptr %36, align 1
  %37 = icmp slt i32 %31, 100
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = add nsw i32 %31, 1900
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %39) #8
  br label %58

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.max8997_rtc_info, ptr %5, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %42) #7
  %43 = getelementptr inbounds %struct.max8997_rtc_info, ptr %5, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 @max8997_bulk_write(ptr noundef %44, i8 noundef zeroext 16, i32 noundef 7, ptr noundef nonnull %3) #7
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.max8997_rtc_set_time, i32 noundef %45) #8
  br label %56

49:                                               ; preds = %41
  %50 = load ptr, ptr %43, align 4
  %51 = call i32 @max8997_write_reg(ptr noundef %50, i8 noundef zeroext 4, i8 noundef zeroext 1) #7
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.max8997_rtc_set_update_reg, i32 noundef %51) #8
  br label %56

55:                                               ; preds = %49
  call void @msleep(i32 noundef 20) #7
  br label %56

56:                                               ; preds = %55, %53, %47
  %57 = phi i32 [ %45, %47 ], [ %51, %53 ], [ %51, %55 ]
  call void @mutex_unlock(ptr noundef %42) #7
  br label %58

58:                                               ; preds = %56, %38
  %59 = phi i32 [ %57, %56 ], [ -22, %38 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #7
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_rtc_read_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [7 x i8], align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %3, i8 0, i32 7, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !8
  %7 = getelementptr inbounds %struct.max8997_rtc_info, ptr %6, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.max8997_rtc_info, ptr %6, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @max8997_bulk_read(ptr noundef %9, i8 noundef zeroext 23, i32 noundef 7, ptr noundef nonnull %3) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.max8997_rtc_read_alarm, i32 noundef 191, i32 noundef %10) #8
  br label %98

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %16 = getelementptr inbounds %struct.max8997_rtc_info, ptr %6, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = load i8, ptr %3, align 1
  %19 = and i8 %18, 127
  %20 = zext i8 %19 to i32
  store i32 %20, ptr %15, align 4
  %21 = getelementptr inbounds i8, ptr %3, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 127
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %24, ptr %25, align 4
  %26 = icmp eq i32 %17, 0
  %27 = getelementptr inbounds i8, ptr %3, i32 2
  %28 = load i8, ptr %27, align 1
  br i1 %26, label %33, label %29

29:                                               ; preds = %14
  %30 = and i8 %28, 31
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %31, ptr %32, align 4
  br label %41

33:                                               ; preds = %14
  %34 = and i8 %28, 15
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %35, ptr %36, align 4
  %37 = and i8 %28, 64
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = add nuw nsw i32 %35, 12
  store i32 %40, ptr %36, align 4
  br label %41

41:                                               ; preds = %39, %33, %29
  %42 = getelementptr inbounds i8, ptr %3, i32 3
  %43 = load i8, ptr %42, align 1
  %44 = and i8 %43, 127
  %45 = zext i8 %44 to i32
  %46 = icmp eq i8 %44, 0
  %47 = call i32 @llvm.ctlz.i32(i32 %45, i1 false) #7, !range !9
  %48 = sub nsw i32 31, %47
  %49 = select i1 %46, i32 -1, i32 %48
  %50 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds i8, ptr %3, i32 6
  %52 = load i8, ptr %51, align 1
  %53 = and i8 %52, 31
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds i8, ptr %3, i32 4
  %57 = load i8, ptr %56, align 1
  %58 = and i8 %57, 15
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %59, -1
  %61 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds i8, ptr %3, i32 5
  %63 = load i8, ptr %62, align 1
  %64 = and i8 %63, 127
  %65 = add nuw i8 %64, 100
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 7
  store i32 0, ptr %68, align 4
  %69 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 8
  store i32 0, ptr %69, align 4
  %70 = icmp slt i8 %18, 0
  %71 = icmp slt i8 %22, 0
  %72 = select i1 %70, i1 true, i1 %71
  %73 = icmp slt i8 %28, 0
  %74 = select i1 %72, i1 true, i1 %73
  %75 = icmp slt i8 %43, 0
  %76 = select i1 %74, i1 true, i1 %75
  %77 = icmp slt i8 %57, 0
  %78 = select i1 %76, i1 true, i1 %77
  %79 = icmp slt i8 %63, 0
  %80 = select i1 %78, i1 true, i1 %79
  %81 = icmp slt i8 %52, 0
  %82 = select i1 %80, i1 true, i1 %81
  %83 = zext i1 %82 to i8
  store i8 %83, ptr %1, align 4
  %84 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 1
  store i8 0, ptr %84, align 1
  %85 = getelementptr inbounds %struct.max8997_rtc_info, ptr %6, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.max8997_dev, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = call i32 @max8997_read_reg(ptr noundef %88, i8 noundef zeroext 13, ptr noundef nonnull %4) #7
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %41
  %92 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.max8997_rtc_read_alarm, i32 noundef 209, i32 noundef %89) #8
  br label %98

93:                                               ; preds = %41
  %94 = load i8, ptr %4, align 1
  %95 = and i8 %94, 16
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  store i8 1, ptr %84, align 1
  br label %98

98:                                               ; preds = %97, %93, %91, %12
  %99 = phi i32 [ %10, %12 ], [ %89, %91 ], [ %89, %97 ], [ %89, %93 ]
  call void @mutex_unlock(ptr noundef %7) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #7
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_rtc_set_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [7 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #7
  %6 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = trunc i32 %7 to i8
  store i8 %8, ptr %3, align 1
  %9 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %11, ptr %12, align 1
  %13 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %15, ptr %16, align 1
  %17 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = shl nuw i32 1, %18
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds i8, ptr %3, i32 6
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = trunc i32 %27 to i8
  %29 = add i8 %28, 1
  %30 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp sgt i32 %32, 100
  %34 = trunc i32 %32 to i8
  %35 = add i8 %34, -100
  %36 = select i1 %33, i8 %35, i8 0
  %37 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %36, ptr %37, align 1
  %38 = icmp slt i32 %32, 100
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = add nsw i32 %32, 1900
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %40) #8
  br label %74

42:                                               ; preds = %2
  %43 = load ptr, ptr %5, align 4
  %44 = zext i8 %36 to i32
  %45 = add nuw nsw i32 %44, 2000
  %46 = zext i8 %29 to i32
  %47 = and i32 %23, 255
  %48 = and i32 %14, 255
  %49 = and i32 %10, 255
  %50 = and i32 %7, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.max8997_rtc_set_alarm, i32 noundef %45, i32 noundef %46, i32 noundef %47, i32 noundef %48, i32 noundef %49, i32 noundef %50) #8
  %51 = getelementptr inbounds %struct.max8997_rtc_info, ptr %5, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %51) #7
  %52 = tail call fastcc i32 @max8997_rtc_stop_alarm(ptr noundef %5)
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.max8997_rtc_info, ptr %5, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = call i32 @max8997_bulk_write(ptr noundef %56, i8 noundef zeroext 23, i32 noundef 7, ptr noundef nonnull %3) #7
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.max8997_rtc_set_alarm, i32 noundef %57) #8
  br label %72

61:                                               ; preds = %54
  %62 = load ptr, ptr %55, align 4
  %63 = call i32 @max8997_write_reg(ptr noundef %62, i8 noundef zeroext 4, i8 noundef zeroext 1) #7
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.max8997_rtc_set_update_reg, i32 noundef %63) #8
  br label %72

67:                                               ; preds = %61
  call void @msleep(i32 noundef 20) #7
  %68 = load i8, ptr %1, align 4
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = call fastcc i32 @max8997_rtc_start_alarm(ptr noundef %5)
  br label %72

72:                                               ; preds = %70, %67, %65, %59, %42
  %73 = phi i32 [ %52, %42 ], [ %57, %59 ], [ %71, %70 ], [ %63, %67 ], [ %63, %65 ]
  call void @mutex_unlock(ptr noundef %51) #7
  br label %74

74:                                               ; preds = %72, %39
  %75 = phi i32 [ %73, %72 ], [ -22, %39 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #7
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.max8997_rtc_info, ptr %4, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %5) #7
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @max8997_rtc_start_alarm(ptr noundef %4)
  br label %11

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @max8997_rtc_stop_alarm(ptr noundef %4)
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  tail call void @mutex_unlock(ptr noundef %5) #7
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_bulk_read(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max8997_rtc_stop_alarm(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [7 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %2, i8 0, i32 7, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.max8997_rtc_info, ptr %0, i32 0, i32 4
  %4 = tail call zeroext i1 @mutex_is_locked(ptr noundef %3) #7
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.max8997_rtc_stop_alarm) #8
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.max8997_rtc_info, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @max8997_bulk_read(ptr noundef %9, i8 noundef zeroext 23, i32 noundef 7, ptr noundef nonnull %2) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %7
  %13 = load i8, ptr %2, align 1
  %14 = and i8 %13, 127
  store i8 %14, ptr %2, align 1
  %15 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, 127
  store i8 %17, ptr %15, align 1
  %18 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 127
  store i8 %20, ptr %18, align 1
  %21 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 127
  store i8 %23, ptr %21, align 1
  %24 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 4
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, 127
  store i8 %26, ptr %24, align 1
  %27 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 5
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, 127
  store i8 %29, ptr %27, align 1
  %30 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 6
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, 127
  store i8 %32, ptr %30, align 1
  %33 = load ptr, ptr %8, align 4
  %34 = call i32 @max8997_bulk_write(ptr noundef %33, i8 noundef zeroext 23, i32 noundef 7, ptr noundef nonnull %2) #7
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %38, label %40

36:                                               ; preds = %7
  %37 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.max8997_rtc_stop_alarm, i32 noundef %10) #8
  br label %47

38:                                               ; preds = %12
  %39 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.max8997_rtc_stop_alarm, i32 noundef %34) #8
  br label %47

40:                                               ; preds = %12
  %41 = load ptr, ptr %8, align 4
  %42 = call i32 @max8997_write_reg(ptr noundef %41, i8 noundef zeroext 4, i8 noundef zeroext 1) #7
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.max8997_rtc_set_update_reg, i32 noundef %42) #8
  br label %47

46:                                               ; preds = %40
  call void @msleep(i32 noundef 20) #7
  br label %47

47:                                               ; preds = %46, %44, %38, %36
  %48 = phi i32 [ %10, %36 ], [ %34, %38 ], [ %42, %44 ], [ %42, %46 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #7
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max8997_rtc_start_alarm(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [7 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %2, i8 0, i32 7, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.max8997_rtc_info, ptr %0, i32 0, i32 4
  %4 = tail call zeroext i1 @mutex_is_locked(ptr noundef %3) #7
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.max8997_rtc_start_alarm) #8
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.max8997_rtc_info, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @max8997_bulk_read(ptr noundef %9, i8 noundef zeroext 23, i32 noundef 7, ptr noundef nonnull %2) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.max8997_rtc_start_alarm, i32 noundef %10) #8
  br label %59

14:                                               ; preds = %7
  %15 = load i8, ptr %2, align 1
  %16 = or i8 %15, -128
  store i8 %16, ptr %2, align 1
  %17 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = or i8 %18, -128
  store i8 %19, ptr %17, align 1
  %20 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = or i8 %21, -128
  store i8 %22, ptr %20, align 1
  %23 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 127
  store i8 %25, ptr %23, align 1
  %26 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 4
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 15
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %14
  %31 = or i8 %27, -128
  store i8 %31, ptr %26, align 1
  br label %32

32:                                               ; preds = %30, %14
  %33 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 5
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 127
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = or i8 %34, -128
  store i8 %38, ptr %33, align 1
  br label %39

39:                                               ; preds = %37, %32
  %40 = getelementptr inbounds [7 x i8], ptr %2, i32 0, i32 6
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 31
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = or i8 %41, -128
  store i8 %45, ptr %40, align 1
  br label %46

46:                                               ; preds = %44, %39
  %47 = load ptr, ptr %8, align 4
  %48 = call i32 @max8997_bulk_write(ptr noundef %47, i8 noundef zeroext 23, i32 noundef 7, ptr noundef nonnull %2) #7
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.max8997_rtc_start_alarm, i32 noundef %48) #8
  br label %59

52:                                               ; preds = %46
  %53 = load ptr, ptr %8, align 4
  %54 = call i32 @max8997_write_reg(ptr noundef %53, i8 noundef zeroext 4, i8 noundef zeroext 1) #7
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.max8997_rtc_set_update_reg, i32 noundef %54) #8
  br label %59

58:                                               ; preds = %52
  call void @msleep(i32 noundef 20) #7
  br label %59

59:                                               ; preds = %58, %56, %50, %12
  %60 = phi i32 [ %10, %12 ], [ %48, %50 ], [ %54, %56 ], [ %54, %58 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #7
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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
!8 = !{!"auto-init"}
!9 = !{i32 0, i32 33}
