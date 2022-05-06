; ModuleID = '/llk/IR/drivers/rtc/rtc-rk808.c_pt.bc'
source_filename = "../drivers/rtc/rtc-rk808.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rk_rtc_compat_reg = type { i32, i32, i32, i32, i32 }
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
%struct.rk808 = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rk808_rtc = type { ptr, ptr, ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__UNIQUE_ID_description247 = internal constant [50 x i8] c"description=RTC driver for the rk808 series PMICs\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [40 x i8] c"author=Chris Zhong <zyw@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [45 x i8] c"author=Zhang Qing <zhangqing@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias251 = internal constant [25 x i8] c"alias=platform:rk808-rtc\00", section ".modinfo", align 1
@rk808_rtc_driver = internal global %struct.platform_driver { ptr @rk808_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk808_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [10 x i8] c"rk808-rtc\00", align 1
@rk808_rtc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @rk808_rtc_suspend, ptr @rk808_rtc_resume, ptr @rk808_rtc_suspend, ptr @rk808_rtc_resume, ptr @rk808_rtc_suspend, ptr @rk808_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rk817_creg = internal global %struct.rk_rtc_compat_reg { i32 13, i32 14, i32 7, i32 15, i32 0 }, align 4
@rk808_creg = internal global %struct.rk_rtc_compat_reg { i32 16, i32 17, i32 8, i32 18, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to update RTC control: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to write RTC status: %d\0A\00", align 1
@rk808_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @rk808_rtc_readtime, ptr @rk808_rtc_set_time, ptr @rk808_rtc_readalarm, ptr @rk808_rtc_setalarm, ptr null, ptr @rk808_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"RTC alarm\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to request alarm IRQ %d: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to update bits rtc_ctrl: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Failed to bulk read rtc_data: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Failed to bull write rtc_data: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Failed to read RTC alarm date REG: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Failed to read RTC INT REG: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Failed to stop alarm: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Failed to bulk write: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Failed to start alarm: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"%s:Failed to update RTC status: %d\0A\00", align 1
@__func__.rk808_alarm_irq = private unnamed_addr constant [16 x i8] c"rk808_alarm_irq\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_alias251, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_license250], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rk808_rtc_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rk808_rtc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk808_rtc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 16, i32 noundef 3520) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %53, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rk808, ptr %6, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 32912
  %13 = icmp eq i32 %11, 33136
  %14 = or i1 %12, %13
  %15 = select i1 %14, ptr @rk817_creg, ptr @rk808_creg
  %16 = getelementptr inbounds %struct.rk808_rtc, ptr %7, i32 0, i32 2
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %17, align 8
  store ptr %6, ptr %7, align 4
  %18 = getelementptr inbounds %struct.rk808, ptr %6, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %15, align 4
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %20, i32 noundef 129, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %21) #8
  br label %53

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.rk808_rtc, ptr %7, i32 0, i32 2
  %26 = load ptr, ptr %18, align 4
  %27 = load ptr, ptr %25, align 4
  %28 = getelementptr inbounds %struct.rk_rtc_compat_reg, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef %29, i32 noundef 254) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %30) #8
  br label %53

33:                                               ; preds = %24
  %34 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext true) #7
  %35 = tail call ptr @devm_rtc_allocate_device(ptr noundef %2) #7
  %36 = getelementptr inbounds %struct.rk808_rtc, ptr %7, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = ptrtoint ptr %35 to i32
  br label %53

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.rtc_device, ptr %35, i32 0, i32 3
  store ptr @rk808_rtc_ops, ptr %41, align 8
  %42 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %43 = getelementptr inbounds %struct.rk808_rtc, ptr %7, i32 0, i32 3
  store i32 %42, ptr %43, align 4
  %44 = icmp slt i32 %42, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %40
  %46 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %42, ptr noundef null, ptr noundef nonnull @rk808_alarm_irq, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull %7) #7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %49, i32 noundef %46) #8
  br label %53

50:                                               ; preds = %45
  %51 = load ptr, ptr %36, align 4
  %52 = tail call i32 @__devm_rtc_register_device(ptr noundef nonnull @__this_module, ptr noundef %51) #7
  br label %53

53:                                               ; preds = %50, %48, %40, %38, %32, %23, %1
  %54 = phi i32 [ %21, %23 ], [ %30, %32 ], [ %39, %38 ], [ %46, %48 ], [ %52, %50 ], [ -12, %1 ], [ %42, %40 ]
  ret i32 %54
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk808_alarm_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rk808_rtc, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rk_rtc_compat_reg, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %10, i32 noundef 254) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.rk808_alarm_irq, i32 noundef %11) #8
  br label %18

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.rk808_rtc, ptr %1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void @rtc_update_irq(ptr noundef %17, i32 noundef 1, i32 noundef 160) #7
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi i32 [ %11, %13 ], [ 1, %15 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk808_rtc_readtime(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [7 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %3, i8 0, i32 7, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.rk808, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rk808_rtc, ptr %5, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %11, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %12) #8
  br label %76

15:                                               ; preds = %2
  %16 = load ptr, ptr %7, align 4
  %17 = load ptr, ptr %9, align 4
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %18, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %19) #8
  br label %76

22:                                               ; preds = %15
  %23 = load ptr, ptr %7, align 4
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr inbounds %struct.rk_rtc_compat_reg, ptr %24, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = call i32 @regmap_bulk_read(ptr noundef %23, i32 noundef %26, ptr noundef nonnull %3, i32 noundef 7) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %27) #8
  br label %76

30:                                               ; preds = %22
  %31 = load i8, ptr %3, align 1
  %32 = and i8 %31, 127
  %33 = call i32 @_bcd2bin(i8 noundef zeroext %32) #9
  store i32 %33, ptr %1, align 4
  %34 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 127
  %37 = call i32 @_bcd2bin(i8 noundef zeroext %36) #9
  %38 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = and i8 %40, 63
  %42 = call i32 @_bcd2bin(i8 noundef zeroext %41) #9
  %43 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 3
  %45 = load i8, ptr %44, align 1
  %46 = and i8 %45, 63
  %47 = call i32 @_bcd2bin(i8 noundef zeroext %46) #9
  %48 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 4
  %50 = load i8, ptr %49, align 1
  %51 = and i8 %50, 31
  %52 = call i32 @_bcd2bin(i8 noundef zeroext %51) #9
  %53 = add i32 %52, -1
  %54 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 5
  %56 = load i8, ptr %55, align 1
  %57 = call i32 @_bcd2bin(i8 noundef zeroext %56) #9
  %58 = add i32 %57, 100
  %59 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 6
  %61 = load i8, ptr %60, align 1
  %62 = and i8 %61, 7
  %63 = call i32 @_bcd2bin(i8 noundef zeroext %62) #9
  %64 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %63, ptr %64, align 4
  %65 = call i64 @rtc_tm_to_time64(ptr noundef %1) #7
  %66 = load i32, ptr %59, align 4
  %67 = add i32 %66, -116
  %68 = load i32, ptr %54, align 4
  %69 = add i32 %68, 1
  %70 = icmp sgt i32 %69, 11
  %71 = zext i1 %70 to i32
  %72 = add i32 %67, %71
  %73 = sext i32 %72 to i64
  %74 = mul nsw i64 %73, 86400
  %75 = add i64 %74, %65
  call void @rtc_time64_to_tm(i64 noundef %75, ptr noundef %1) #7
  br label %76

76:                                               ; preds = %30, %29, %21, %14
  %77 = phi i32 [ %12, %14 ], [ %19, %21 ], [ %27, %29 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #7
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk808_rtc_set_time(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [7 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #7
  %7 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -116
  %10 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  %13 = icmp sgt i32 %12, 11
  %14 = zext i1 %13 to i32
  %15 = add i32 %9, %14
  %16 = sext i32 %15 to i64
  %17 = tail call i64 @rtc_tm_to_time64(ptr noundef %1) #7
  %18 = mul nsw i64 %16, -86400
  %19 = add i64 %18, %17
  tail call void @rtc_time64_to_tm(i64 noundef %19, ptr noundef %1) #7
  %20 = load i32, ptr %7, align 4
  %21 = add i32 %20, -116
  %22 = load i32, ptr %10, align 4
  %23 = add i32 %22, 1
  %24 = icmp sgt i32 %23, 11
  %25 = zext i1 %24 to i32
  %26 = add i32 %21, %25
  %27 = icmp slt i32 %26, %15
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = icmp eq i32 %22, 10
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  br label %36

34:                                               ; preds = %28
  %35 = add i64 %19, 86400
  tail call void @rtc_time64_to_tm(i64 noundef %35, ptr noundef %1) #7
  br label %36

36:                                               ; preds = %34, %30, %2
  %37 = load i32, ptr %1, align 4
  %38 = tail call zeroext i8 @_bin2bcd(i32 noundef %37) #9
  store i8 %38, ptr %3, align 1
  %39 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = tail call zeroext i8 @_bin2bcd(i32 noundef %40) #9
  %42 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 1
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = tail call zeroext i8 @_bin2bcd(i32 noundef %44) #9
  %46 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 2
  store i8 %45, ptr %46, align 1
  %47 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = tail call zeroext i8 @_bin2bcd(i32 noundef %48) #9
  %50 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 3
  store i8 %49, ptr %50, align 1
  %51 = load i32, ptr %10, align 4
  %52 = add i32 %51, 1
  %53 = tail call zeroext i8 @_bin2bcd(i32 noundef %52) #9
  %54 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 4
  store i8 %53, ptr %54, align 1
  %55 = load i32, ptr %7, align 4
  %56 = add i32 %55, -100
  %57 = tail call zeroext i8 @_bin2bcd(i32 noundef %56) #9
  %58 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 5
  store i8 %57, ptr %58, align 1
  %59 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = tail call zeroext i8 @_bin2bcd(i32 noundef %60) #9
  %62 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 6
  store i8 %61, ptr %62, align 1
  %63 = getelementptr inbounds %struct.rk808, ptr %6, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.rk808_rtc, ptr %5, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = load i32, ptr %66, align 4
  %68 = tail call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef %67, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %68) #8
  br label %86

71:                                               ; preds = %36
  %72 = load ptr, ptr %63, align 4
  %73 = load ptr, ptr %65, align 4
  %74 = getelementptr inbounds %struct.rk_rtc_compat_reg, ptr %73, i32 0, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = call i32 @regmap_bulk_write(ptr noundef %72, i32 noundef %75, ptr noundef nonnull %3, i32 noundef 7) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %76) #8
  br label %86

79:                                               ; preds = %71
  %80 = load ptr, ptr %63, align 4
  %81 = load ptr, ptr %65, align 4
  %82 = load i32, ptr %81, align 4
  %83 = call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef %82, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %83) #8
  br label %86

86:                                               ; preds = %85, %79, %78, %70
  %87 = phi i32 [ %68, %70 ], [ %76, %78 ], [ %83, %85 ], [ 0, %79 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #7
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk808_rtc_readalarm(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.rk808, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rk808_rtc, ptr %6, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rk_rtc_compat_reg, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef %13, ptr noundef nonnull %3, i32 noundef 6) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %14) #8
  br label %71

17:                                               ; preds = %2
  %18 = load i8, ptr %3, align 1
  %19 = and i8 %18, 127
  %20 = call i32 @_bcd2bin(i8 noundef zeroext %19) #9
  %21 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 127
  %25 = call i32 @_bcd2bin(i8 noundef zeroext %24) #9
  %26 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, 63
  %30 = call i32 @_bcd2bin(i8 noundef zeroext %29) #9
  %31 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, 63
  %35 = call i32 @_bcd2bin(i8 noundef zeroext %34) #9
  %36 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 31
  %40 = call i32 @_bcd2bin(i8 noundef zeroext %39) #9
  %41 = add i32 %40, -1
  %42 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 5
  %44 = load i8, ptr %43, align 1
  %45 = call i32 @_bcd2bin(i8 noundef zeroext %44) #9
  %46 = add i32 %45, 100
  %47 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  store i32 %46, ptr %47, align 4
  %48 = call i64 @rtc_tm_to_time64(ptr noundef %21) #7
  %49 = load i32, ptr %47, align 4
  %50 = add i32 %49, -116
  %51 = load i32, ptr %42, align 4
  %52 = add i32 %51, 1
  %53 = icmp sgt i32 %52, 11
  %54 = zext i1 %53 to i32
  %55 = add i32 %50, %54
  %56 = sext i32 %55 to i64
  %57 = mul nsw i64 %56, 86400
  %58 = add i64 %57, %48
  call void @rtc_time64_to_tm(i64 noundef %58, ptr noundef %21) #7
  %59 = load ptr, ptr %8, align 4
  %60 = load ptr, ptr %10, align 4
  %61 = getelementptr inbounds %struct.rk_rtc_compat_reg, ptr %60, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = call i32 @regmap_read(ptr noundef %59, i32 noundef %62, ptr noundef nonnull %4) #7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %63) #8
  br label %71

66:                                               ; preds = %17
  %67 = load i32, ptr %4, align 4
  %68 = trunc i32 %67 to i8
  %69 = lshr i8 %68, 3
  %70 = and i8 %69, 1
  store i8 %70, ptr %1, align 4
  br label %71

71:                                               ; preds = %66, %65, %16
  %72 = phi i32 [ %14, %16 ], [ %63, %65 ], [ 0, %66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk808_rtc_setalarm(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [6 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr inbounds %struct.rk808, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rk808_rtc, ptr %5, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rk_rtc_compat_reg, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %13, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %14) #8
  br label %92

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %19 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -116
  %22 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  %25 = icmp sgt i32 %24, 11
  %26 = zext i1 %25 to i32
  %27 = add i32 %21, %26
  %28 = sext i32 %27 to i64
  %29 = tail call i64 @rtc_tm_to_time64(ptr noundef %18) #7
  %30 = mul nsw i64 %28, -86400
  %31 = add i64 %30, %29
  tail call void @rtc_time64_to_tm(i64 noundef %31, ptr noundef %18) #7
  %32 = load i32, ptr %19, align 4
  %33 = add i32 %32, -116
  %34 = load i32, ptr %22, align 4
  %35 = add i32 %34, 1
  %36 = icmp sgt i32 %35, 11
  %37 = zext i1 %36 to i32
  %38 = add i32 %33, %37
  %39 = icmp slt i32 %38, %27
  br i1 %39, label %40, label %48

40:                                               ; preds = %17
  %41 = icmp eq i32 %34, 10
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4
  br label %48

46:                                               ; preds = %40
  %47 = add i64 %31, 86400
  tail call void @rtc_time64_to_tm(i64 noundef %47, ptr noundef %18) #7
  br label %48

48:                                               ; preds = %46, %42, %17
  %49 = load i32, ptr %18, align 4
  %50 = tail call zeroext i8 @_bin2bcd(i32 noundef %49) #9
  store i8 %50, ptr %3, align 1
  %51 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = tail call zeroext i8 @_bin2bcd(i32 noundef %52) #9
  %54 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %53, ptr %54, align 1
  %55 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = tail call zeroext i8 @_bin2bcd(i32 noundef %56) #9
  %58 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %57, ptr %58, align 1
  %59 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = tail call zeroext i8 @_bin2bcd(i32 noundef %60) #9
  %62 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  store i8 %61, ptr %62, align 1
  %63 = load i32, ptr %22, align 4
  %64 = add i32 %63, 1
  %65 = tail call zeroext i8 @_bin2bcd(i32 noundef %64) #9
  %66 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  store i8 %65, ptr %66, align 1
  %67 = load i32, ptr %19, align 4
  %68 = add i32 %67, -100
  %69 = tail call zeroext i8 @_bin2bcd(i32 noundef %68) #9
  %70 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 5
  store i8 %69, ptr %70, align 1
  %71 = getelementptr inbounds %struct.rk808, ptr %6, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = load ptr, ptr %10, align 4
  %74 = getelementptr inbounds %struct.rk_rtc_compat_reg, ptr %73, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = call i32 @regmap_bulk_write(ptr noundef %72, i32 noundef %75, ptr noundef nonnull %3, i32 noundef 6) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %48
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %76) #8
  br label %92

79:                                               ; preds = %48
  %80 = load i8, ptr %1, align 4
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %5, align 4
  %84 = getelementptr inbounds %struct.rk808, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %10, align 4
  %87 = getelementptr inbounds %struct.rk_rtc_compat_reg, ptr %86, i32 0, i32 3
  %88 = load i32, ptr %87, align 4
  %89 = call i32 @regmap_update_bits_base(ptr noundef %85, i32 noundef %88, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %82
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %89) #8
  br label %92

92:                                               ; preds = %91, %82, %79, %78, %16
  %93 = phi i32 [ %14, %16 ], [ %76, %78 ], [ %89, %91 ], [ 0, %82 ], [ 0, %79 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk808_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq i32 %1, 0
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr inbounds %struct.rk808, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rk808_rtc, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rk_rtc_compat_reg, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = select i1 %5, i32 0, i32 8
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %12, i32 noundef 8, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %14
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk808_rtc_suspend(ptr nocapture noundef readonly %0) #2 {
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
  %13 = getelementptr inbounds %struct.rk808_rtc, ptr %3, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #7
  br label %16

16:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk808_rtc_resume(ptr nocapture noundef readonly %0) #2 {
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
  %13 = getelementptr inbounds %struct.rk808_rtc, ptr %3, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #7
  br label %16

16:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

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
