; ModuleID = '/llk/IR/drivers/net/wireless/ralink/rt2x00/rt2x00leds.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt2x00leds.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rt2x00_dev = type { ptr, ptr, ptr, ptr, [6 x %struct.ieee80211_supported_band], ptr, i32, i32, %struct.rt2x00_led, %struct.rt2x00_led, %struct.rt2x00_led, i16, i32, i32, i32, ptr, %struct.rt2x00_chip, %struct.hw_mode_spec, %struct.antenna_setup, %union.csr, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, %struct.ieee80211_iface_limit, [1 x %struct.ieee80211_iface_combination], %struct.link, ptr, ptr, i16, i16, i8, i8, i8, i8, i16, i16, i32, %struct.ieee80211_low_level_stats, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.work_struct, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.130, %struct.hrtimer, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, ptr, i32, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.rt2x00_led = type { ptr, %struct.led_classdev, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rt2x00_chip = type { i16, i16, i16, i32 }
%struct.hw_mode_spec = type { i32, i32, i32, ptr, ptr, %struct.ieee80211_sta_ht_cap }
%struct.antenna_setup = type { i32, i32, i8, i8 }
%union.csr = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.link = type { i32, %struct.link_qual, %struct.link_ant, %struct.ewma_rssi, %struct.delayed_work, %struct.delayed_work, i32, i8, %struct.delayed_work, %struct.delayed_work }
%struct.link_qual = type { i32, i32, i8, i8, i32, i32, i32, i32 }
%struct.link_ant = type { i32, %struct.antenna_setup, i32, %struct.ewma_rssi }
%struct.ewma_rssi = type { i32 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.130 = type { %union.anon.131, [0 x i32] }
%union.anon.131 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.91, i32 }
%union.anon.91 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.121, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.121 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.120, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type {}
%struct.anon.120 = type { i64, i64, i8 }

@.str = private unnamed_addr constant [13 x i8] c"%s-%s::radio\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s-%s::assoc\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s-%s::quality\00", align 1
@rt2x00leds_register_led._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.rt2x00leds_register_led = private unnamed_addr constant [24 x i8] c"rt2x00leds_register_led\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"%s: Error - Failed to register led handler\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00leds_led_quality(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %35

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 36
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = add i32 %14, %1
  %16 = icmp slt i32 %15, 31
  br i1 %16, label %26, label %17

17:                                               ; preds = %11
  %18 = icmp ult i32 %15, 40
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  %20 = icmp ult i32 %15, 50
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = icmp ult i32 %15, 54
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = icmp ult i32 %15, 64
  %25 = select i1 %24, i32 169, i32 211
  br label %26

26:                                               ; preds = %23, %21, %19, %17, %11
  %27 = phi i32 [ 1, %11 ], [ 43, %17 ], [ 85, %19 ], [ 127, %21 ], [ %25, %23 ]
  %28 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 1, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 1
  %33 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 1, i32 5
  %34 = load ptr, ptr %33, align 4
  tail call void %34(ptr noundef %32, i32 noundef %27) #6
  store i32 %27, ptr %28, align 4
  br label %35

35:                                               ; preds = %31, %26, %6, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00led_led_activity(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = select i1 %1, i32 255, i32 0
  %13 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 1
  %14 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 1, i32 5
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %13, i32 noundef %12) #6
  %16 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 1, i32 1
  store i32 %12, ptr %16, align 4
  br label %17

17:                                               ; preds = %11, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00leds_led_assoc(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 9, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 9, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = select i1 %1, i32 255, i32 0
  %13 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 9, i32 1
  %14 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 9, i32 1, i32 5
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %13, i32 noundef %12) #6
  %16 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 9, i32 1, i32 1
  store i32 %12, ptr %16, align 4
  br label %17

17:                                               ; preds = %11, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00leds_led_radio(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = select i1 %1, i32 255, i32 0
  %13 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 1
  %14 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 1, i32 5
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %13, i32 noundef %12) #6
  %16 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 1, i32 1
  store i32 %12, ptr %16, align 4
  br label %17

17:                                               ; preds = %11, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00leds_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [36 x i8], align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(36) %2, i8 0, i32 36, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %1
  %16 = phi ptr [ %14, %12 ], [ %10, %1 ]
  %17 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 36, ptr noundef nonnull @.str, ptr noundef %24, ptr noundef %16)
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr inbounds %struct.ieee80211_hw, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 56, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 1
  store ptr %2, ptr %31, align 4
  %32 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 1, i32 1
  store i32 0, ptr %32, align 4
  %33 = call i32 @led_classdev_register_ext(ptr noundef %30, ptr noundef %31, ptr noundef null) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %21
  %36 = call i32 @___ratelimit(ptr noundef nonnull @rt2x00leds_register_led._rs, ptr noundef nonnull @__func__.rt2x00leds_register_led) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %103, label %98

38:                                               ; preds = %21
  %39 = load i32, ptr %17, align 4
  %40 = or i32 %39, 2
  store i32 %40, ptr %17, align 4
  br label %41

41:                                               ; preds = %38, %15
  %42 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 9, i32 3
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %48, align 4
  %50 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 36, ptr noundef nonnull @.str.1, ptr noundef %49, ptr noundef %16)
  %51 = load ptr, ptr %5, align 4
  %52 = getelementptr inbounds %struct.ieee80211_hw, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.wiphy, ptr %53, i32 0, i32 56, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 9, i32 1
  store ptr %2, ptr %56, align 4
  %57 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 9, i32 1, i32 1
  store i32 0, ptr %57, align 4
  %58 = call i32 @led_classdev_register_ext(ptr noundef %55, ptr noundef %56, ptr noundef null) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %46
  %61 = call i32 @___ratelimit(ptr noundef nonnull @rt2x00leds_register_led._rs, ptr noundef nonnull @__func__.rt2x00leds_register_led) #6
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %103, label %98

63:                                               ; preds = %46
  %64 = load i32, ptr %42, align 4
  %65 = or i32 %64, 2
  store i32 %65, ptr %42, align 4
  br label %66

66:                                               ; preds = %63, %41
  %67 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %91, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = load ptr, ptr %73, align 4
  %75 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 36, ptr noundef nonnull @.str.2, ptr noundef %74, ptr noundef %16)
  %76 = load ptr, ptr %5, align 4
  %77 = getelementptr inbounds %struct.ieee80211_hw, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.wiphy, ptr %78, i32 0, i32 56, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 1
  store ptr %2, ptr %81, align 4
  %82 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 1, i32 1
  store i32 0, ptr %82, align 4
  %83 = call i32 @led_classdev_register_ext(ptr noundef %80, ptr noundef %81, ptr noundef null) #6
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %71
  %86 = call i32 @___ratelimit(ptr noundef nonnull @rt2x00leds_register_led._rs, ptr noundef nonnull @__func__.rt2x00leds_register_led) #6
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %103, label %98

88:                                               ; preds = %71
  %89 = load i32, ptr %67, align 4
  %90 = or i32 %89, 2
  store i32 %90, ptr %67, align 4
  br label %91

91:                                               ; preds = %88, %66
  %92 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 1, i32 8
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %104, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 1
  store i32 70, ptr %3, align 4
  store i32 30, ptr %4, align 4
  %97 = call i32 %93(ptr noundef %96, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  br label %104

98:                                               ; preds = %85, %60, %35
  %99 = load ptr, ptr %5, align 4
  %100 = getelementptr inbounds %struct.ieee80211_hw, ptr %99, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.wiphy, ptr %101, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.rt2x00leds_register_led) #7
  br label %103

103:                                              ; preds = %98, %85, %60, %35
  call void @rt2x00leds_unregister(ptr noundef %0)
  br label %104

104:                                              ; preds = %103, %95, %91
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00leds_unregister(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 1
  tail call void @led_classdev_unregister(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 1, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 1, i32 5
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %7, i32 noundef 0) #6
  br label %15

15:                                               ; preds = %12, %6
  %16 = load i32, ptr %2, align 4
  %17 = and i32 %16, -3
  store i32 %17, ptr %2, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 9, i32 3
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 9, i32 1
  tail call void @led_classdev_unregister(ptr noundef %24) #6
  %25 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 9, i32 1, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 9, i32 1, i32 5
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %24, i32 noundef 0) #6
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i32, ptr %19, align 4
  %34 = and i32 %33, -3
  store i32 %34, ptr %19, align 4
  br label %35

35:                                               ; preds = %32, %18
  %36 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 1
  tail call void @led_classdev_unregister(ptr noundef %41) #6
  %42 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 1, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 1, i32 5
  %48 = load ptr, ptr %47, align 4
  tail call void %48(ptr noundef %41, i32 noundef 0) #6
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i32, ptr %36, align 4
  %51 = and i32 %50, -3
  store i32 %51, ptr %36, align 4
  br label %52

52:                                               ; preds = %49, %35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00leds_suspend(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 1
  tail call void @led_classdev_suspend(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 1, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %7, i32 noundef 0) #6
  %10 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 1, i32 1
  store i32 0, ptr %10, align 4
  br label %11

11:                                               ; preds = %6, %1
  %12 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 9, i32 3
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 9, i32 1
  tail call void @led_classdev_suspend(ptr noundef %17) #6
  %18 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 9, i32 1, i32 5
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %17, i32 noundef 0) #6
  %20 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 9, i32 1, i32 1
  store i32 0, ptr %20, align 4
  br label %21

21:                                               ; preds = %16, %11
  %22 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 1
  tail call void @led_classdev_suspend(ptr noundef %27) #6
  %28 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 1, i32 5
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %27, i32 noundef 0) #6
  %30 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 1, i32 1
  store i32 0, ptr %30, align 4
  br label %31

31:                                               ; preds = %26, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00leds_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 1
  tail call void @led_classdev_resume(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 1, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %7, i32 noundef 0) #6
  %10 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 8, i32 1, i32 1
  store i32 0, ptr %10, align 4
  br label %11

11:                                               ; preds = %6, %1
  %12 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 9, i32 3
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 9, i32 1
  tail call void @led_classdev_resume(ptr noundef %17) #6
  %18 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 9, i32 1, i32 5
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %17, i32 noundef 0) #6
  %20 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 9, i32 1, i32 1
  store i32 0, ptr %20, align 4
  br label %21

21:                                               ; preds = %16, %11
  %22 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 1
  tail call void @led_classdev_resume(ptr noundef %27) #6
  %28 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 1, i32 5
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %27, i32 noundef 0) #6
  %30 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 10, i32 1, i32 1
  store i32 0, ptr %30, align 4
  br label %31

31:                                               ; preds = %26, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_suspend(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_resume(ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
