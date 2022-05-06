; ModuleID = '/llk/IR/drivers/clocksource/timer-ti-dm.c_pt.bc'
source_filename = "../drivers/clocksource/timer-ti-dm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmtimer_platform_data = type { ptr, i32, i32, ptr, ptr }
%struct.omap_dm_timer_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.omap_dm_timer = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i8, %struct.timer_regs, i32, i32, i32, ptr, %struct.list_head, %struct.notifier_block }
%struct.timer_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@omap_reserved_systimers = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"\013%s: timer not available or enabled.\0A\00", align 1
@__func__.omap_dm_timer_trigger = private unnamed_addr constant [22 x i8] c"omap_dm_timer_trigger\00", align 1
@omap_timer_list = internal global %struct.list_head { ptr @omap_timer_list, ptr @omap_timer_list }, align 4
@__initcall__kmod_timer_ti_dm__163_967_omap_dm_timer_driver_init6 = internal global ptr @omap_dm_timer_driver_init, section ".initcall6.init", align 4
@omap_dm_timer_driver = internal global %struct.platform_driver { ptr @omap_dm_timer_probe, ptr @omap_dm_timer_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_timer_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_dm_timer_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_omap_dm_timer_driver_exit = internal global ptr @omap_dm_timer_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description164 = internal constant [52 x i8] c"timer_ti_dm.description=OMAP Dual-Mode Timer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [49 x i8] c"timer_ti_dm.file=drivers/clocksource/timer-ti-dm\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [24 x i8] c"timer_ti_dm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author167 = internal constant [41 x i8] c"timer_ti_dm.author=Texas Instruments Inc\00", section ".modinfo", align 1
@dm_timer_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@omap_dm_timer_prepare.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"drivers/clocksource/timer-ti-dm.c\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c": No fclk handle.\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Timer failed to reset\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"omap_timer\00", align 1
@omap_timer_match = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2420-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3430-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3plus_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4430-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3plus_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5430-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3plus_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335x-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3plus_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335x-timer-1ms\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3plus_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm816-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3plus_pdata }, %struct.of_device_id zeroinitializer], align 4
@omap_dm_timer_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_dm_timer_runtime_suspend, ptr @omap_dm_timer_runtime_resume, ptr null }, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"%s: no platform data.\0A\00", align 1
@__func__.omap_dm_timer_probe = private unnamed_addr constant [20 x i8] c"omap_dm_timer_probe\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"ti,timer-alwon\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"ti,timer-dsp\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"ti,timer-pwm\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"ti,timer-secure\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"%s: pm_runtime_get_sync failed!\0A\00", align 1
@omap3plus_pdata = internal constant %struct.dmtimer_platform_data { ptr null, i32 0, i32 -2147483648, ptr null, ptr @dmtimer_ops }, align 4
@dmtimer_ops = internal constant %struct.omap_dm_timer_ops { ptr @omap_dm_timer_request_by_node, ptr @omap_dm_timer_request_specific, ptr @omap_dm_timer_request, ptr @omap_dm_timer_free, ptr @omap_dm_timer_enable, ptr @omap_dm_timer_disable, ptr @omap_dm_timer_get_irq, ptr @omap_dm_timer_set_int_enable, ptr @omap_dm_timer_set_int_disable, ptr @omap_dm_timer_get_fclk, ptr @omap_dm_timer_start, ptr @omap_dm_timer_stop, ptr @omap_dm_timer_set_source, ptr @omap_dm_timer_set_load, ptr @omap_dm_timer_set_match, ptr @omap_dm_timer_set_pwm, ptr @omap_dm_timer_get_pwm_status, ptr @omap_dm_timer_set_prescaler, ptr @omap_dm_timer_read_counter, ptr @omap_dm_timer_write_counter, ptr @omap_dm_timer_read_status, ptr @omap_dm_timer_write_status }, align 4
@.str.12 = private unnamed_addr constant [50 x i8] c"\014%s: Please use omap_dm_timer_request_by_node()\0A\00", align 1
@__func__.omap_dm_timer_request_specific = private unnamed_addr constant [31 x i8] c"omap_dm_timer_request_specific\00", align 1
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"timer_sys_ck\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"timer_32k_ck\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"timer_ext_ck\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"\013%s: %s not found\0A\00", align 1
@__func__.omap_dm_timer_set_source = private unnamed_addr constant [25 x i8] c"omap_dm_timer_set_source\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"\013%s: failed to set %s as parent\0A\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"\013%s: timer not iavailable or enabled.\0A\00", align 1
@__func__.omap_dm_timer_read_counter = private unnamed_addr constant [27 x i8] c"omap_dm_timer_read_counter\00", align 1
@__func__.omap_dm_timer_write_counter = private unnamed_addr constant [28 x i8] c"omap_dm_timer_write_counter\00", align 1
@__func__.omap_dm_timer_read_status = private unnamed_addr constant [26 x i8] c"omap_dm_timer_read_status\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_omap_dm_timer_driver_exit, ptr @__initcall__kmod_timer_ti_dm__163_967_omap_dm_timer_driver_init6, ptr @omap_dm_timer_driver_exit], section "llvm.metadata"
@switch.table.omap_dm_timer_set_source = private unnamed_addr constant [3 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @omap_dm_timer_reserve_systimer(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @omap_reserved_systimers, align 4
  %3 = add i32 %0, -1
  %4 = shl nuw i32 1, %3
  %5 = and i32 %2, %4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = or i32 %2, %4
  store i32 %8, ptr @omap_reserved_systimers, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ 0, %7 ], [ -19, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @omap_dm_timer_request_by_cap(i32 noundef %0) local_unnamed_addr #1 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = call fastcc ptr @_omap_dm_timer_request(i32 noundef 2, ptr noundef nonnull %2)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @_omap_dm_timer_request(i32 noundef %0, ptr noundef readonly %1) unnamed_addr #1 {
  switch i32 %0, label %8 [
    i32 1, label %3
    i32 2, label %5
    i32 3, label %7
  ]

3:                                                ; preds = %2
  %4 = load i32, ptr %1, align 4
  br label %8

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4
  br label %8

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %5, %3, %2
  %9 = phi i32 [ 0, %2 ], [ 0, %7 ], [ 0, %5 ], [ %4, %3 ]
  %10 = phi i32 [ 0, %2 ], [ 0, %7 ], [ %6, %5 ], [ 0, %3 ]
  %11 = phi ptr [ null, %2 ], [ %1, %7 ], [ null, %5 ], [ null, %3 ]
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dm_timer_lock) #8
  %13 = load ptr, ptr @omap_timer_list, align 4
  %14 = icmp eq ptr %13, @omap_timer_list
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dm_timer_lock, i32 noundef %12) #8
  br label %168

16:                                               ; preds = %55, %8
  %17 = phi ptr [ %57, %55 ], [ %13, %8 ]
  %18 = phi ptr [ %56, %55 ], [ null, %8 ]
  %19 = getelementptr i8, ptr %17, i32 -136
  %20 = getelementptr i8, ptr %17, i32 -92
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %16
  switch i32 %0, label %59 [
    i32 1, label %25
    i32 2, label %31
    i32 3, label %49
  ]

25:                                               ; preds = %24
  %26 = getelementptr i8, ptr %17, i32 -4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %9, %29
  br i1 %30, label %59, label %55

31:                                               ; preds = %24
  %32 = getelementptr i8, ptr %17, i32 -12
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, %10
  %35 = icmp eq i32 %10, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %31
  %37 = icmp eq ptr %18, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.omap_dm_timer, ptr %18, i32 0, i32 11
  %40 = load i8, ptr %39, align 4
  %41 = and i8 %40, -2
  store i8 %41, ptr %39, align 4
  %42 = load i8, ptr %20, align 4
  %43 = load i32, ptr %32, align 4
  br label %44

44:                                               ; preds = %38, %36
  %45 = phi i32 [ %43, %38 ], [ %33, %36 ]
  %46 = phi i8 [ %42, %38 ], [ %21, %36 ]
  %47 = or i8 %46, 1
  store i8 %47, ptr %20, align 4
  %48 = icmp eq i32 %45, %10
  br i1 %48, label %61, label %55

49:                                               ; preds = %24
  %50 = getelementptr i8, ptr %17, i32 -4
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3, i32 25
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %11, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %49, %44, %31, %25, %16
  %56 = phi ptr [ %18, %16 ], [ %18, %49 ], [ %19, %44 ], [ %18, %31 ], [ %18, %25 ]
  %57 = load ptr, ptr %17, align 4
  %58 = icmp eq ptr %57, @omap_timer_list
  br i1 %58, label %61, label %16

59:                                               ; preds = %49, %25, %24
  %60 = or i8 %21, 1
  store i8 %60, ptr %20, align 4
  br label %61

61:                                               ; preds = %59, %55, %44
  %62 = phi ptr [ %19, %59 ], [ %19, %44 ], [ %56, %55 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dm_timer_lock, i32 noundef %12) #8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %168, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.omap_dm_timer, ptr %62, i32 0, i32 14
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 268435456
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.omap_dm_timer, ptr %62, i32 0, i32 16
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.platform_device, ptr %71, i32 0, i32 3
  %73 = tail call ptr @clk_get(ptr noundef %72, ptr noundef nonnull @.str.1) #8
  %74 = getelementptr inbounds %struct.omap_dm_timer, ptr %62, i32 0, i32 2
  store ptr %73, ptr %74, align 4
  %75 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  %76 = load i1, ptr @omap_dm_timer_prepare.__already_done, align 1
  %77 = xor i1 %76, true
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %79, label %80, !prof !8

79:                                               ; preds = %69
  store i1 true, ptr @omap_dm_timer_prepare.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 9, ptr noundef null) #8
  br label %80

80:                                               ; preds = %79, %69
  br i1 %75, label %81, label %84

81:                                               ; preds = %80
  %82 = load ptr, ptr %70, align 4
  %83 = getelementptr inbounds %struct.platform_device, ptr %82, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.3) #9
  br label %164

84:                                               ; preds = %80, %64
  %85 = getelementptr inbounds %struct.omap_dm_timer, ptr %62, i32 0, i32 16
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.platform_device, ptr %86, i32 0, i32 3
  %88 = tail call i32 @__pm_runtime_resume(ptr noundef %87, i32 noundef 4) #8
  %89 = load i32, ptr %65, align 4
  %90 = and i32 %89, 268435456
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.omap_dm_timer, ptr %62, i32 0, i32 11
  %94 = load i8, ptr %93, align 4
  br label %139

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.omap_dm_timer, ptr %62, i32 0, i32 13
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %135

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.omap_dm_timer, ptr %62, i32 0, i32 11
  %101 = load i8, ptr %100, align 4
  %102 = and i8 %101, 2
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.omap_dm_timer, ptr %62, i32 0, i32 7
  %106 = load ptr, ptr %105, align 4
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #8, !srcloc !9
  br label %108

108:                                              ; preds = %104, %99
  %109 = getelementptr inbounds %struct.omap_dm_timer, ptr %62, i32 0, i32 8
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr i8, ptr %110, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 6) #8, !srcloc !10
  br label %112

112:                                              ; preds = %118, %108
  %113 = phi i32 [ 100000, %108 ], [ %119, %118 ]
  %114 = load ptr, ptr %109, align 4
  %115 = getelementptr i8, ptr %114, i32 20
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #8, !srcloc !9
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = add nsw i32 %113, -1
  %120 = icmp eq i32 %113, 0
  br i1 %120, label %126, label %112

121:                                              ; preds = %112
  %122 = icmp eq i32 %113, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %121
  %124 = load ptr, ptr %85, align 4
  %125 = getelementptr inbounds %struct.platform_device, ptr %124, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.4) #9
  br label %135

126:                                              ; preds = %121, %118
  %127 = load ptr, ptr %109, align 4
  %128 = getelementptr i8, ptr %127, i32 16
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #8, !srcloc !9
  %130 = or i32 %129, 16
  %131 = load ptr, ptr %109, align 4
  %132 = getelementptr i8, ptr %131, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #8, !srcloc !10
  %133 = load i8, ptr %100, align 4
  %134 = and i8 %133, -3
  store i8 %134, ptr %100, align 4
  br label %139

135:                                              ; preds = %123, %95
  %136 = load ptr, ptr %85, align 4
  %137 = getelementptr inbounds %struct.platform_device, ptr %136, i32 0, i32 3
  %138 = tail call i32 @__pm_runtime_idle(ptr noundef %137, i32 noundef 4) #8
  br label %164

139:                                              ; preds = %126, %92
  %140 = phi i8 [ %94, %92 ], [ %134, %126 ]
  %141 = getelementptr inbounds %struct.omap_dm_timer, ptr %62, i32 0, i32 11
  %142 = and i8 %140, 2
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %160

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.omap_dm_timer, ptr %62, i32 0, i32 15
  %146 = load i32, ptr %145, align 4
  %147 = icmp sgt i32 %146, -1
  br i1 %147, label %153, label %148

148:                                              ; preds = %144
  %149 = and i8 %140, -3
  store i8 %149, ptr %141, align 4
  %150 = getelementptr inbounds %struct.omap_dm_timer, ptr %62, i32 0, i32 8
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr i8, ptr %151, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 0) #8, !srcloc !10
  br label %160

153:                                              ; preds = %144
  %154 = getelementptr inbounds %struct.omap_dm_timer, ptr %62, i32 0, i32 8
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr i8, ptr %155, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 4) #8, !srcloc !10
  %157 = getelementptr inbounds %struct.omap_dm_timer, ptr %62, i32 0, i32 12, i32 11
  store i32 4, ptr %157, align 4
  %158 = load i8, ptr %141, align 4
  %159 = or i8 %158, 2
  store i8 %159, ptr %141, align 4
  br label %160

160:                                              ; preds = %153, %148, %139
  %161 = load ptr, ptr %85, align 4
  %162 = getelementptr inbounds %struct.platform_device, ptr %161, i32 0, i32 3
  %163 = tail call i32 @__pm_runtime_idle(ptr noundef %162, i32 noundef 4) #8
  br label %168

164:                                              ; preds = %135, %81
  %165 = getelementptr inbounds %struct.omap_dm_timer, ptr %62, i32 0, i32 11
  %166 = load i8, ptr %165, align 4
  %167 = and i8 %166, -2
  store i8 %167, ptr %165, align 4
  br label %168

168:                                              ; preds = %164, %160, %61, %15
  %169 = phi ptr [ null, %164 ], [ %62, %160 ], [ null, %61 ], [ null, %15 ]
  ret ptr %169
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @omap_dm_timer_get_irq(ptr noundef readonly %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ -22, %1 ]
  ret i32 %7
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_dm_timer_modify_idlect_mask(i32 noundef %0) local_unnamed_addr #3 {
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clocksource/timer-ti-dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 487, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_dm_timer_trigger(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 9
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9, !prof !8

7:                                                ; preds = %3, %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.omap_dm_timer_trigger) #9
  br label %29

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 11
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !9
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %20, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !13
  %21 = load ptr, ptr %15, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !9
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %20

25:                                               ; preds = %20, %14, %9
  %26 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #8, !srcloc !10
  br label %29

29:                                               ; preds = %25, %7
  %30 = phi i32 [ -22, %7 ], [ 0, %25 ]
  ret i32 %30
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_dm_timers_active() local_unnamed_addr #1 {
  %1 = load ptr, ptr @omap_timer_list, align 4
  %2 = icmp eq ptr %1, @omap_timer_list
  br i1 %2, label %33, label %3

3:                                                ; preds = %30, %0
  %4 = phi ptr [ %31, %30 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 -92
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %3
  %10 = and i8 %6, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %4, i32 -108
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !9
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %18, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !15
  %19 = load ptr, ptr %13, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !9
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %18

23:                                               ; preds = %18, %12, %9
  %24 = getelementptr i8, ptr %4, i32 -104
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 36
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8, !srcloc !9
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23, %3
  %31 = load ptr, ptr %4, align 4
  %32 = icmp eq ptr %31, @omap_timer_list
  br i1 %32, label %33, label %3

33:                                               ; preds = %30, %23, %0
  %34 = phi i32 [ 0, %0 ], [ 0, %30 ], [ 1, %23 ]
  ret i32 %34
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_driver_init() #5 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_dm_timer_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap_dm_timer_driver_exit() #5 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_dm_timer_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_dm_timer_enable(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_dm_timer_disable(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_probe(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #8
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  br i1 %4, label %7, label %6

6:                                                ; preds = %1
  store ptr %3, ptr %5, align 4
  br label %11

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.omap_dm_timer_probe) #9
  br label %137

11:                                               ; preds = %7, %6
  %12 = phi ptr [ %3, %6 ], [ %8, %7 ]
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 156, i32 noundef 3520) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %137, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %17 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 1
  store i32 %16, ptr %17, align 4
  %18 = icmp slt i32 %16, 0
  br i1 %18, label %137, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 2
  store ptr inttoptr (i32 -19 to ptr), ptr %20, align 4
  %21 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %22 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 3
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = ptrtoint ptr %21 to i32
  br label %137

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %13, ptr %27, align 8
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %62, label %31

31:                                               ; preds = %26
  %32 = tail call ptr @of_find_property(ptr noundef nonnull %29, ptr noundef nonnull @.str.7, ptr noundef null) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 14
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, 1073741824
  store i32 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = load ptr, ptr %28, align 8
  %40 = tail call ptr @of_find_property(ptr noundef %39, ptr noundef nonnull @.str.8, ptr noundef null) #8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 14
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %44, 134217728
  store i32 %45, ptr %43, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = load ptr, ptr %28, align 8
  %48 = tail call ptr @of_find_property(ptr noundef %47, ptr noundef nonnull @.str.9, ptr noundef null) #8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 14
  %52 = load i32, ptr %51, align 4
  %53 = or i32 %52, 536870912
  store i32 %53, ptr %51, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load ptr, ptr %28, align 8
  %56 = tail call ptr @of_find_property(ptr noundef %55, ptr noundef nonnull @.str.10, ptr noundef null) #8
  %57 = icmp eq ptr %56, null
  %58 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 14
  %59 = load i32, ptr %58, align 4
  br i1 %57, label %77, label %60

60:                                               ; preds = %54
  %61 = or i32 %59, -2147483648
  store i32 %61, ptr %58, align 4
  br label %77

62:                                               ; preds = %26
  %63 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  store i32 %64, ptr %13, align 4
  %65 = getelementptr inbounds %struct.dmtimer_platform_data, ptr %12, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 14
  store i32 %66, ptr %67, align 4
  %68 = load i32, ptr @omap_reserved_systimers, align 4
  %69 = add i32 %64, -1
  %70 = lshr i32 %68, %69
  %71 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 11
  %72 = trunc i32 %70 to i8
  %73 = and i8 %72, 1
  %74 = load i8, ptr %71, align 4
  %75 = and i8 %74, -2
  %76 = or i8 %73, %75
  store i8 %76, ptr %71, align 4
  br label %77

77:                                               ; preds = %62, %60, %54
  %78 = phi i32 [ %61, %60 ], [ %66, %62 ], [ %59, %54 ]
  %79 = and i32 %78, 1073741824
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 18
  store ptr @omap_timer_context_notifier, ptr %82, align 4
  %83 = tail call i32 @cpu_pm_register_notifier(ptr noundef %82) #8
  br label %84

84:                                               ; preds = %81, %77
  %85 = getelementptr inbounds %struct.dmtimer_platform_data, ptr %12, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 15
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 16
  store ptr %0, ptr %88, align 4
  tail call void @pm_runtime_enable(ptr noundef %2) #8
  %89 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 11
  %90 = load i8, ptr %89, align 4
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %132

93:                                               ; preds = %84
  %94 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #8
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.omap_dm_timer_probe) #9
  %97 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %97) #8, !srcloc !17
  %98 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %97, ptr %97, i32 0, i32 -1, ptr elementtype(i32) %97) #8, !srcloc !18
  %99 = extractvalue { i32, i32, i32 } %98, 0
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  br label %102

102:                                              ; preds = %101, %96
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #8
  br label %137

103:                                              ; preds = %93
  %104 = load ptr, ptr %22, align 4
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #8, !srcloc !9
  %106 = icmp ult i32 %105, 65536
  %107 = load ptr, ptr %22, align 4
  br i1 %106, label %108, label %112

108:                                              ; preds = %103
  %109 = getelementptr i8, ptr %107, i32 24
  %110 = getelementptr i8, ptr %107, i32 28
  %111 = getelementptr i8, ptr %107, i32 52
  br label %118

112:                                              ; preds = %103
  %113 = getelementptr i8, ptr %107, i32 40
  %114 = getelementptr i8, ptr %107, i32 44
  %115 = getelementptr i8, ptr %107, i32 48
  %116 = getelementptr i8, ptr %107, i32 72
  %117 = getelementptr i8, ptr %107, i32 20
  br label %118

118:                                              ; preds = %112, %108
  %119 = phi i32 [ 1, %108 ], [ 2, %112 ]
  %120 = phi ptr [ %109, %108 ], [ %113, %112 ]
  %121 = phi ptr [ %110, %108 ], [ %114, %112 ]
  %122 = phi ptr [ %110, %108 ], [ %115, %112 ]
  %123 = phi ptr [ %111, %108 ], [ %116, %112 ]
  %124 = phi ptr [ %107, %108 ], [ %117, %112 ]
  %125 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 13
  store i32 %119, ptr %125, align 4
  %126 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 4
  store ptr %120, ptr %126, align 4
  %127 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 5
  store ptr %121, ptr %127, align 4
  %128 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 6
  store ptr %122, ptr %128, align 4
  %129 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 7
  store ptr %123, ptr %129, align 4
  %130 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 8
  store ptr %124, ptr %130, align 4
  %131 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 5) #8
  br label %132

132:                                              ; preds = %118, %84
  %133 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dm_timer_lock) #8
  %134 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 17
  %135 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @omap_timer_list, i32 0, i32 1), align 4
  store ptr %134, ptr getelementptr inbounds (%struct.list_head, ptr @omap_timer_list, i32 0, i32 1), align 4
  store ptr @omap_timer_list, ptr %134, align 4
  %136 = getelementptr inbounds %struct.omap_dm_timer, ptr %13, i32 0, i32 17, i32 1
  store ptr %135, ptr %136, align 4
  store volatile ptr %134, ptr %135, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dm_timer_lock, i32 noundef %133) #8
  br label %137

137:                                              ; preds = %132, %102, %24, %15, %11, %10
  %138 = phi i32 [ %25, %24 ], [ 0, %132 ], [ %94, %102 ], [ -19, %10 ], [ -12, %11 ], [ %16, %15 ]
  ret i32 %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_remove(ptr noundef %0) #1 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dm_timer_lock) #8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br label %5

5:                                                ; preds = %24, %1
  %6 = phi ptr [ @omap_timer_list, %1 ], [ %7, %24 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @omap_timer_list
  br i1 %8, label %41, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi ptr [ %17, %15 ], [ %13, %9 ]
  %20 = load ptr, ptr %3, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load ptr, ptr %4, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %23, %22 ], [ %20, %18 ]
  %26 = tail call i32 @strcmp(ptr noundef %19, ptr noundef %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %5

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %7, i32 -12
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1073741824
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %7, i32 8
  %35 = tail call i32 @cpu_pm_unregister_notifier(ptr noundef %34) #8
  br label %36

36:                                               ; preds = %33, %28
  %37 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  store volatile ptr %39, ptr %38, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %37, align 4
  br label %41

41:                                               ; preds = %36, %5
  %42 = phi i32 [ 0, %36 ], [ -22, %5 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dm_timer_lock, i32 noundef %2) #8
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #8
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_timer_context_notifier(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -144
  switch i32 %1, label %25 [
    i32 3, label %5
    i32 5, label %15
  ]

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -20
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1073741824
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %0, i32 -108
  %12 = load volatile i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  tail call fastcc void @omap_timer_save_context(ptr noundef %4)
  br label %25

15:                                               ; preds = %3
  %16 = getelementptr i8, ptr %0, i32 -20
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1073741824
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %0, i32 -108
  %22 = load volatile i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @omap_timer_restore_context(ptr noundef %4)
  br label %25

25:                                               ; preds = %24, %20, %15, %14, %10, %5, %3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_timer_save_context(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !9
  %6 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 12
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 11
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !9
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %17, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !15
  %18 = load ptr, ptr %12, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !9
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %17

22:                                               ; preds = %17, %11, %1
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr i8, ptr %23, i32 36
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !9
  %26 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 12, i32 4
  store i32 %25, ptr %26, align 4
  %27 = load i8, ptr %7, align 4
  %28 = and i8 %27, 2
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !9
  br label %34

34:                                               ; preds = %30, %22
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr i8, ptr %35, i32 32
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !9
  %38 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 12, i32 3
  store i32 %37, ptr %38, align 4
  %39 = load i8, ptr %7, align 4
  %40 = and i8 %39, 2
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #8, !srcloc !9
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %48, %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !15
  %49 = load ptr, ptr %43, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #8, !srcloc !9
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %48

53:                                               ; preds = %48, %42, %34
  %54 = load ptr, ptr %2, align 4
  %55 = getelementptr i8, ptr %54, i32 44
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #8, !srcloc !9
  %57 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 12, i32 6
  store i32 %56, ptr %57, align 4
  %58 = load i8, ptr %7, align 4
  %59 = and i8 %58, 2
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #8, !srcloc !9
  %65 = and i32 %64, 16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %67, %61
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !15
  %68 = load ptr, ptr %62, align 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #8, !srcloc !9
  %70 = and i32 %69, 16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %67

72:                                               ; preds = %67, %61, %53
  %73 = load ptr, ptr %2, align 4
  %74 = getelementptr i8, ptr %73, i32 56
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #8, !srcloc !9
  %76 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 12, i32 9
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 5
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #8, !srcloc !9
  %80 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 12, i32 2
  store i32 %79, ptr %80, align 4
  %81 = load i8, ptr %7, align 4
  %82 = and i8 %81, 2
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %72
  %85 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %86 = load ptr, ptr %85, align 4
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #8, !srcloc !9
  br label %88

88:                                               ; preds = %84, %72
  %89 = load ptr, ptr %2, align 4
  %90 = getelementptr i8, ptr %89, i32 64
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #8, !srcloc !9
  %92 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 12, i32 11
  store i32 %91, ptr %92, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_timer_restore_context(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %3) #8, !srcloc !10
  %7 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 12, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 11
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 2
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !9
  br label %17

17:                                               ; preds = %13, %1
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %8) #8, !srcloc !10
  %20 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 12, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = load i8, ptr %9, align 4
  %23 = and i8 %22, 2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #8, !srcloc !9
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %31, %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !13
  %32 = load ptr, ptr %26, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !9
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %31

36:                                               ; preds = %31, %25, %17
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr i8, ptr %37, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %21) #8, !srcloc !10
  %39 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 12, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = load i8, ptr %9, align 4
  %42 = and i8 %41, 2
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #8, !srcloc !9
  %48 = and i32 %47, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %50, %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !13
  %51 = load ptr, ptr %45, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #8, !srcloc !9
  %53 = and i32 %52, 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %50

55:                                               ; preds = %50, %44, %36
  %56 = load ptr, ptr %4, align 4
  %57 = getelementptr i8, ptr %56, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %40) #8, !srcloc !10
  %58 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 12, i32 9
  %59 = load i32, ptr %58, align 4
  %60 = load i8, ptr %9, align 4
  %61 = and i8 %60, 2
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #8, !srcloc !9
  %67 = and i32 %66, 16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %69, %63
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !13
  %70 = load ptr, ptr %64, align 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #8, !srcloc !9
  %72 = and i32 %71, 16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %69

74:                                               ; preds = %69, %63, %55
  %75 = load ptr, ptr %4, align 4
  %76 = getelementptr i8, ptr %75, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %59) #8, !srcloc !10
  %77 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 12, i32 11
  %78 = load i32, ptr %77, align 4
  %79 = load i8, ptr %9, align 4
  %80 = and i8 %79, 2
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #8, !srcloc !9
  br label %86

86:                                               ; preds = %82, %74
  %87 = load ptr, ptr %4, align 4
  %88 = getelementptr i8, ptr %87, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %78) #8, !srcloc !10
  %89 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 12, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 5
  %92 = load ptr, ptr %91, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #8, !srcloc !10
  %93 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 12, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = load i8, ptr %9, align 4
  %96 = and i8 %95, 2
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %86
  %99 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %100 = load ptr, ptr %99, align 4
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #8, !srcloc !9
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %104, %98
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !13
  %105 = load ptr, ptr %99, align 4
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #8, !srcloc !9
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %104

109:                                              ; preds = %104, %98, %86
  %110 = load ptr, ptr %4, align 4
  %111 = getelementptr i8, ptr %110, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %94) #8, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_unregister_notifier(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @omap_dm_timer_request_by_node(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call fastcc ptr @_omap_dm_timer_request(i32 noundef 3, ptr noundef nonnull %0)
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @omap_dm_timer_request_specific(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load ptr, ptr @of_root, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.omap_dm_timer_request_specific) #9
  br label %9

7:                                                ; preds = %1
  %8 = call fastcc ptr @_omap_dm_timer_request(i32 noundef 1, ptr noundef nonnull %2)
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ null, %5 ], [ %8, %7 ]
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @omap_dm_timer_request() #1 {
  %1 = tail call fastcc ptr @_omap_dm_timer_request(i32 noundef 0, ptr noundef null)
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_free(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3, !prof !8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_put(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 11
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12, !prof !8

10:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 423, i32 noundef 9, ptr noundef null) #8
  %11 = load i8, ptr %6, align 4
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i8 [ %11, %10 ], [ %7, %3 ]
  %14 = and i8 %13, -2
  store i8 %14, ptr %6, align 4
  br label %15

15:                                               ; preds = %12, %1
  %16 = phi i32 [ 0, %12 ], [ -22, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_set_int_enable(ptr noundef readonly %0, i32 noundef %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4, !prof !8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #8
  %9 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %1) #8, !srcloc !10
  %11 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %1) #8, !srcloc !10
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %16 = tail call i32 @__pm_runtime_idle(ptr noundef %15, i32 noundef 4) #8
  br label %17

17:                                               ; preds = %4, %2
  %18 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_set_int_disable(ptr noundef readonly %0, i32 noundef %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %50, label %4, !prof !8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #8
  %9 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !9
  %16 = xor i32 %1, -1
  %17 = and i32 %15, %16
  br label %18

18:                                               ; preds = %12, %4
  %19 = phi i32 [ %17, %12 ], [ %1, %4 ]
  %20 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #8, !srcloc !10
  %22 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 11
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !9
  br label %30

30:                                               ; preds = %26, %18
  %31 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #8, !srcloc !9
  %35 = xor i32 %1, -1
  %36 = and i32 %34, %35
  %37 = load i8, ptr %22, align 4
  %38 = and i8 %37, 2
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #8, !srcloc !9
  br label %44

44:                                               ; preds = %40, %30
  %45 = load ptr, ptr %31, align 4
  %46 = getelementptr i8, ptr %45, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %36) #8, !srcloc !10
  %47 = load ptr, ptr %5, align 4
  %48 = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3
  %49 = tail call i32 @__pm_runtime_idle(ptr noundef %48, i32 noundef 4) #8
  br label %50

50:                                               ; preds = %44, %2
  %51 = phi i32 [ 0, %44 ], [ -22, %2 ]
  ret i32 %51
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @omap_dm_timer_get_fclk(ptr noundef readonly %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %7 = select i1 %6, ptr null, ptr %5
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi ptr [ null, %1 ], [ %7, %3 ]
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_start(ptr noundef readonly %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %49, label %3, !prof !8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #8
  %8 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 11
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !9
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %18, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !15
  %19 = load ptr, ptr %13, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !9
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %18

23:                                               ; preds = %18, %12, %3
  %24 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 36
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8, !srcloc !9
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %23
  %31 = or i32 %27, 1
  %32 = load i8, ptr %8, align 4
  %33 = and i8 %32, 2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !9
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %41, %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !13
  %42 = load ptr, ptr %36, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #8, !srcloc !9
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %41

46:                                               ; preds = %41, %35, %30
  %47 = load ptr, ptr %24, align 4
  %48 = getelementptr i8, ptr %47, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %31) #8, !srcloc !10
  br label %49

49:                                               ; preds = %46, %23, %1
  %50 = phi i32 [ -22, %1 ], [ 0, %46 ], [ 0, %23 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_stop(ptr noundef readonly %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %82, label %3, !prof !8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 268435456
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_get_rate(ptr noundef %10) #8
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ 0, %3 ], [ %11, %8 ]
  %14 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 11
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !9
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %24, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !15
  %25 = load ptr, ptr %19, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !9
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %24

29:                                               ; preds = %24, %18, %12
  %30 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 36
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !9
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %75, label %36

36:                                               ; preds = %29
  %37 = and i32 %33, -2
  br i1 %17, label %38, label %41

38:                                               ; preds = %36
  %39 = load ptr, ptr %30, align 4
  %40 = getelementptr i8, ptr %39, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %37) #8, !srcloc !10
  br label %68

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #8, !srcloc !9
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load ptr, ptr %30, align 4
  %49 = getelementptr i8, ptr %48, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %37) #8, !srcloc !10
  br label %58

50:                                               ; preds = %50, %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !13
  %51 = load ptr, ptr %42, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #8, !srcloc !9
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %50

55:                                               ; preds = %50
  %56 = load ptr, ptr %30, align 4
  %57 = getelementptr i8, ptr %56, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %37) #8, !srcloc !10
  br label %58

58:                                               ; preds = %55, %47
  %59 = load ptr, ptr %42, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #8, !srcloc !9
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %63, %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !15
  %64 = load ptr, ptr %42, align 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #8, !srcloc !9
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %63

68:                                               ; preds = %63, %58, %38
  %69 = load ptr, ptr %30, align 4
  %70 = getelementptr i8, ptr %69, i32 36
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #8, !srcloc !9
  %72 = udiv i32 3500000, %13
  %73 = add nuw nsw i32 %72, 1
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %74(i32 noundef %73) #8
  br label %75

75:                                               ; preds = %68, %29
  %76 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 4
  %77 = load ptr, ptr %76, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 2) #8, !srcloc !10
  %78 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 16
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.platform_device, ptr %79, i32 0, i32 3
  %81 = tail call i32 @__pm_runtime_idle(ptr noundef %80, i32 noundef 4) #8
  br label %82

82:                                               ; preds = %75, %1
  %83 = phi i32 [ 0, %75 ], [ -22, %1 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_set_source(ptr noundef readonly %0, i32 noundef %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %41, label %4, !prof !8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ule ptr %6, inttoptr (i32 -4096 to ptr)
  %8 = icmp ult i32 %1, 3
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %4
  %11 = getelementptr inbounds [3 x ptr], ptr @switch.table.omap_dm_timer_set_source, i32 0, i32 %1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr %16, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i32 %19(ptr noundef %14, i32 noundef %1) #8
  br label %41

23:                                               ; preds = %18, %10
  %24 = tail call ptr @__clk_get_hw(ptr noundef %6) #8
  %25 = tail call i32 @clk_hw_get_num_parents(ptr noundef %24) #8
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %41, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %13, align 4
  %29 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  %30 = tail call ptr @clk_get(ptr noundef %29, ptr noundef nonnull %12) #8
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.omap_dm_timer_set_source, ptr noundef nonnull %12) #9
  br label %41

34:                                               ; preds = %27
  %35 = load ptr, ptr %5, align 4
  %36 = tail call i32 @clk_set_parent(ptr noundef %35, ptr noundef %30) #8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.omap_dm_timer_set_source, ptr noundef nonnull %12) #9
  br label %40

40:                                               ; preds = %38, %34
  tail call void @clk_put(ptr noundef %30) #8
  br label %41

41:                                               ; preds = %40, %32, %23, %21, %4, %2
  %42 = phi i32 [ %22, %21 ], [ -22, %32 ], [ %36, %40 ], [ -22, %4 ], [ -22, %2 ], [ 0, %23 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_set_load(ptr noundef readonly %0, i32 noundef %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %31, label %4, !prof !8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #8
  %9 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 11
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 2
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !9
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %19, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !13
  %20 = load ptr, ptr %14, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !9
  %22 = and i32 %21, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %19

24:                                               ; preds = %19, %13, %4
  %25 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %1) #8, !srcloc !10
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  %30 = tail call i32 @__pm_runtime_idle(ptr noundef %29, i32 noundef 4) #8
  br label %31

31:                                               ; preds = %24, %2
  %32 = phi i32 [ 0, %24 ], [ -22, %2 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_set_match(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %71, label %5, !prof !8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #8
  %10 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 11
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !9
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %20, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !15
  %21 = load ptr, ptr %15, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !9
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %20

25:                                               ; preds = %20, %14, %5
  %26 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 36
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !9
  %30 = icmp eq i32 %1, 0
  %31 = and i32 %29, -65
  %32 = select i1 %30, i32 0, i32 64
  %33 = or i32 %31, %32
  %34 = load i8, ptr %10, align 4
  %35 = and i8 %34, 2
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #8, !srcloc !9
  %41 = and i32 %40, 16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %43, %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !13
  %44 = load ptr, ptr %38, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #8, !srcloc !9
  %46 = and i32 %45, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %43

48:                                               ; preds = %43, %37, %25
  %49 = load ptr, ptr %26, align 4
  %50 = getelementptr i8, ptr %49, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %2) #8, !srcloc !10
  %51 = load i8, ptr %10, align 4
  %52 = and i8 %51, 2
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #8, !srcloc !9
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %60, %54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !13
  %61 = load ptr, ptr %55, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #8, !srcloc !9
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %60

65:                                               ; preds = %60, %54, %48
  %66 = load ptr, ptr %26, align 4
  %67 = getelementptr i8, ptr %66, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %33) #8, !srcloc !10
  %68 = load ptr, ptr %6, align 4
  %69 = getelementptr inbounds %struct.platform_device, ptr %68, i32 0, i32 3
  %70 = tail call i32 @__pm_runtime_idle(ptr noundef %69, i32 noundef 4) #8
  br label %71

71:                                               ; preds = %65, %3
  %72 = phi i32 [ 0, %65 ], [ -22, %3 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_set_pwm(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %64, label %7, !prof !8

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #8
  %12 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 11
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !9
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %22, %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !15
  %23 = load ptr, ptr %17, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !9
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %22

27:                                               ; preds = %22, %16, %7
  %28 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 36
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !9
  %32 = and i32 %31, -23683
  %33 = icmp eq i32 %1, 0
  %34 = or i32 %32, 128
  %35 = select i1 %33, i32 %32, i32 %34
  %36 = icmp eq i32 %2, 0
  %37 = or i32 %35, 4096
  %38 = select i1 %36, i32 %35, i32 %37
  %39 = shl i32 %3, 10
  %40 = or i32 %38, %39
  %41 = icmp eq i32 %4, 0
  %42 = or i32 %40, 2
  %43 = select i1 %41, i32 %40, i32 %42
  %44 = load i8, ptr %12, align 4
  %45 = and i8 %44, 2
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %27
  %48 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #8, !srcloc !9
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %53, %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !13
  %54 = load ptr, ptr %48, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #8, !srcloc !9
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %53

58:                                               ; preds = %53, %47, %27
  %59 = load ptr, ptr %28, align 4
  %60 = getelementptr i8, ptr %59, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %43) #8, !srcloc !10
  %61 = load ptr, ptr %8, align 4
  %62 = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3
  %63 = tail call i32 @__pm_runtime_idle(ptr noundef %62, i32 noundef 4) #8
  br label %64

64:                                               ; preds = %58, %5
  %65 = phi i32 [ 0, %58 ], [ -22, %5 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_get_pwm_status(ptr noundef readonly %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %31, label %3, !prof !8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #8
  %8 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 11
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !9
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %18, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !15
  %19 = load ptr, ptr %13, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !9
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %18

23:                                               ; preds = %18, %12, %3
  %24 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 36
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8, !srcloc !9
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  %30 = tail call i32 @__pm_runtime_idle(ptr noundef %29, i32 noundef 4) #8
  br label %31

31:                                               ; preds = %23, %1
  %32 = phi i32 [ %27, %23 ], [ -22, %1 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_set_prescaler(ptr noundef readonly %0, i32 noundef %1) #1 {
  %3 = icmp eq ptr %0, null
  %4 = add i32 %1, -8
  %5 = icmp ult i32 %4, -9
  %6 = or i1 %3, %5
  br i1 %6, label %58, label %7, !prof !20

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #8
  %12 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 11
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !9
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %22, %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !15
  %23 = load ptr, ptr %17, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !9
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %22

27:                                               ; preds = %22, %16, %7
  %28 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 36
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !9
  %32 = and i32 %31, -61
  %33 = shl i32 %1, 2
  %34 = or i32 %33, %32
  %35 = or i32 %34, 32
  %36 = icmp slt i32 %1, 0
  %37 = select i1 %36, i32 %32, i32 %35
  %38 = load i8, ptr %12, align 4
  %39 = and i8 %38, 2
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #8, !srcloc !9
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %47, %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !13
  %48 = load ptr, ptr %42, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #8, !srcloc !9
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %47

52:                                               ; preds = %47, %41, %27
  %53 = load ptr, ptr %28, align 4
  %54 = getelementptr i8, ptr %53, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %37) #8, !srcloc !10
  %55 = load ptr, ptr %8, align 4
  %56 = getelementptr inbounds %struct.platform_device, ptr %55, i32 0, i32 3
  %57 = tail call i32 @__pm_runtime_idle(ptr noundef %56, i32 noundef 4) #8
  br label %58

58:                                               ; preds = %52, %2
  %59 = phi i32 [ 0, %52 ], [ -22, %2 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_read_counter(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 9
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9, !prof !8

7:                                                ; preds = %3, %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.omap_dm_timer_read_counter) #9
  br label %30

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 11
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !9
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %20, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !15
  %21 = load ptr, ptr %15, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !9
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %20

25:                                               ; preds = %20, %14, %9
  %26 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 40
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !9
  br label %30

30:                                               ; preds = %25, %7
  %31 = phi i32 [ 0, %7 ], [ %29, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_write_counter(ptr noundef %0, i32 noundef %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4, !prof !8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 9
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10, !prof !8

8:                                                ; preds = %4, %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.omap_dm_timer_write_counter) #9
  br label %31

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 11
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !9
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %21, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !13
  %22 = load ptr, ptr %16, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !9
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %21

26:                                               ; preds = %21, %15, %10
  %27 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %1) #8, !srcloc !10
  %30 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 12, i32 5
  store i32 %1, ptr %30, align 4
  br label %31

31:                                               ; preds = %26, %8
  %32 = phi i32 [ -22, %8 ], [ 0, %26 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_read_status(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 9
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9, !prof !8

7:                                                ; preds = %3, %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.omap_dm_timer_read_status) #9
  br label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !9
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ 0, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_write_status(ptr noundef %0, i32 noundef %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4, !prof !8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 9
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8, !prof !8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.omap_dm_timer, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %1) #8, !srcloc !10
  br label %11

11:                                               ; preds = %8, %4, %2
  %12 = phi i32 [ 0, %8 ], [ -22, %4 ], [ -22, %2 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_runtime_suspend(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap_dm_timer, ptr %3, i32 0, i32 9
  store volatile i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.omap_dm_timer, ptr %3, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1073741824
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.omap_dm_timer, ptr %3, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call fastcc void @omap_timer_save_context(ptr noundef %3)
  br label %14

14:                                               ; preds = %13, %9, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dm_timer_runtime_resume(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap_dm_timer, ptr %3, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1073741824
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.omap_dm_timer, ptr %3, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call fastcc void @omap_timer_restore_context(ptr noundef %3)
  br label %13

13:                                               ; preds = %12, %8, %1
  %14 = getelementptr inbounds %struct.omap_dm_timer, ptr %3, i32 0, i32 9
  store volatile i32 1, ptr %14, align 4
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 3106075}
!10 = !{i64 3105657}
!11 = !{i64 2151513679, i64 2151514177, i64 2151513716, i64 2151513772, i64 2151513806, i64 2151513830, i64 2151513871, i64 2151513892, i64 2151513920, i64 2151513954}
!12 = !{i64 2151497199}
!13 = !{i64 2151497041}
!14 = !{i64 2151496366}
!15 = !{i64 2151496208}
!16 = !{i64 2147964030}
!17 = !{i64 462340, i64 2147952311, i64 2147952337, i64 2147952384, i64 2147952406, i64 2147952434, i64 2147952454}
!18 = !{i64 448909, i64 448934, i64 448956, i64 448972, i64 448984, i64 449004, i64 449028, i64 449044, i64 449056}
!19 = !{i64 2147964156}
!20 = !{!"branch_weights", i32 6004, i32 2000}
