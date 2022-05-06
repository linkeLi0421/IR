; ModuleID = '/llk/IR/drivers/net/wireless/ralink/rt2x00/rt2x00firmware.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt2x00firmware.c"
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
%struct.rt2x00_ops = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.rt2x00lib_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }

@rt2x00lib_request_firmware._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.rt2x00lib_request_firmware = private unnamed_addr constant [27 x i8] c"rt2x00lib_request_firmware\00", align 1
@.str = private unnamed_addr constant [68 x i8] c"%s: Error - Invalid firmware filename\0APlease file bug report to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"http://rt2x00.serialmonkey.com\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: Info - Loading firmware file '%s'\0A\00", align 1
@rt2x00lib_request_firmware._rs.3 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"%s: Error - Failed to request Firmware\0A\00", align 1
@rt2x00lib_request_firmware._rs.5 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"%s: Error - Failed to read Firmware\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"%s: Info - Firmware detected - version: %d.%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@rt2x00lib_request_firmware._rs.9 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"%s: Error - Firmware checksum error\0A\00", align 1
@rt2x00lib_request_firmware._rs.11 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.12 = private unnamed_addr constant [52 x i8] c"%s: Error - Invalid firmware file length (len=%zu)\0A\00", align 1
@rt2x00lib_request_firmware._rs.13 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.14 = private unnamed_addr constant [64 x i8] c"%s: Error - Current firmware does not support detected chipset\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rt2x00lib_load_firmware(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 13
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %153, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 53
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %141

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ieee80211_hw, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 56, i32 1
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store ptr null, ptr %2, align 4, !annotation !8
  %18 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.rt2x00_ops, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rt2x00lib_ops, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr %23(ptr noundef %0) #5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %11
  %27 = tail call i32 @___ratelimit(ptr noundef nonnull @rt2x00lib_request_firmware._rs, ptr noundef nonnull @__func__.rt2x00lib_request_firmware) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %137, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %12, align 4
  %31 = getelementptr inbounds %struct.ieee80211_hw, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.wiphy, ptr %32, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rt2x00lib_request_firmware, ptr noundef nonnull @.str.1) #6
  br label %137

34:                                               ; preds = %11
  %35 = load ptr, ptr %12, align 4
  %36 = getelementptr inbounds %struct.ieee80211_hw, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.wiphy, ptr %37, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.rt2x00lib_request_firmware, ptr noundef nonnull %24) #6
  %39 = call i32 @request_firmware(ptr noundef nonnull %2, ptr noundef nonnull %24, ptr noundef %17) #5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %34
  %42 = call i32 @___ratelimit(ptr noundef nonnull @rt2x00lib_request_firmware._rs.3, ptr noundef nonnull @__func__.rt2x00lib_request_firmware) #5
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %137, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %12, align 4
  %46 = getelementptr inbounds %struct.ieee80211_hw, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.wiphy, ptr %47, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.rt2x00lib_request_firmware) #6
  br label %137

49:                                               ; preds = %34
  %50 = load ptr, ptr %2, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = load i32, ptr %50, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.firmware, ptr %50, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %55, %52, %49
  %60 = call i32 @___ratelimit(ptr noundef nonnull @rt2x00lib_request_firmware._rs.5, ptr noundef nonnull @__func__.rt2x00lib_request_firmware) #5
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %12, align 4
  %64 = getelementptr inbounds %struct.ieee80211_hw, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.wiphy, ptr %65, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rt2x00lib_request_firmware) #6
  br label %67

67:                                               ; preds = %62, %59
  %68 = load ptr, ptr %2, align 4
  call void @release_firmware(ptr noundef %68) #5
  br label %137

69:                                               ; preds = %55
  %70 = load ptr, ptr %12, align 4
  %71 = getelementptr inbounds %struct.ieee80211_hw, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.wiphy, ptr %72, i32 0, i32 56
  %74 = add i32 %53, -4
  %75 = getelementptr i8, ptr %57, i32 %74
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = add i32 %53, -3
  %79 = getelementptr i8, ptr %57, i32 %78
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %73, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rt2x00lib_request_firmware, i32 noundef %77, i32 noundef %81) #6
  %82 = load ptr, ptr %12, align 4
  %83 = getelementptr inbounds %struct.ieee80211_hw, ptr %82, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.wiphy, ptr %84, i32 0, i32 38
  %86 = load ptr, ptr %2, align 4
  %87 = getelementptr inbounds %struct.firmware, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = load i32, ptr %86, align 4
  %90 = add i32 %89, -4
  %91 = getelementptr i8, ptr %88, i32 %90
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = add i32 %89, -3
  %95 = getelementptr i8, ptr %88, i32 %94
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %85, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %93, i32 noundef %97) #5
  %99 = load ptr, ptr %18, align 4
  %100 = getelementptr inbounds %struct.rt2x00_ops, ptr %99, i32 0, i32 7
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.rt2x00lib_ops, ptr %101, i32 0, i32 8
  %103 = load ptr, ptr %102, align 4
  %104 = load ptr, ptr %2, align 4
  %105 = getelementptr inbounds %struct.firmware, ptr %104, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = load i32, ptr %104, align 4
  %108 = call i32 %103(ptr noundef %0, ptr noundef %106, i32 noundef %107) #5
  switch i32 %108, label %139 [
    i32 3, label %127
    i32 1, label %109
    i32 2, label %117
  ]

109:                                              ; preds = %69
  %110 = call i32 @___ratelimit(ptr noundef nonnull @rt2x00lib_request_firmware._rs.9, ptr noundef nonnull @__func__.rt2x00lib_request_firmware) #5
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %135, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr %12, align 4
  %114 = getelementptr inbounds %struct.ieee80211_hw, ptr %113, i32 0, i32 1
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %struct.wiphy, ptr %115, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.rt2x00lib_request_firmware) #6
  br label %135

117:                                              ; preds = %69
  %118 = call i32 @___ratelimit(ptr noundef nonnull @rt2x00lib_request_firmware._rs.11, ptr noundef nonnull @__func__.rt2x00lib_request_firmware) #5
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %135, label %120

120:                                              ; preds = %117
  %121 = load ptr, ptr %12, align 4
  %122 = getelementptr inbounds %struct.ieee80211_hw, ptr %121, i32 0, i32 1
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.wiphy, ptr %123, i32 0, i32 56
  %125 = load ptr, ptr %2, align 4
  %126 = load i32, ptr %125, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.rt2x00lib_request_firmware, i32 noundef %126) #6
  br label %135

127:                                              ; preds = %69
  %128 = call i32 @___ratelimit(ptr noundef nonnull @rt2x00lib_request_firmware._rs.13, ptr noundef nonnull @__func__.rt2x00lib_request_firmware) #5
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr %12, align 4
  %132 = getelementptr inbounds %struct.ieee80211_hw, ptr %131, i32 0, i32 1
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds %struct.wiphy, ptr %133, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.rt2x00lib_request_firmware) #6
  br label %135

135:                                              ; preds = %130, %127, %120, %117, %112, %109
  %136 = load ptr, ptr %2, align 4
  call void @release_firmware(ptr noundef %136) #5
  br label %137

137:                                              ; preds = %135, %67, %44, %41, %29, %26
  %138 = phi i32 [ %39, %41 ], [ %39, %44 ], [ -22, %26 ], [ -22, %29 ], [ -2, %67 ], [ -2, %135 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %153

139:                                              ; preds = %69
  %140 = load ptr, ptr %2, align 4
  store ptr %140, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %141

141:                                              ; preds = %139, %7
  %142 = phi ptr [ %140, %139 ], [ %9, %7 ]
  %143 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.rt2x00_ops, ptr %144, i32 0, i32 7
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.rt2x00lib_ops, ptr %146, i32 0, i32 9
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.firmware, ptr %142, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = load i32, ptr %142, align 4
  %152 = call i32 %148(ptr noundef %0, ptr noundef %150, i32 noundef %151) #5
  call void @rt2x00leds_led_assoc(ptr noundef %0, i1 noundef zeroext false) #5
  br label %153

153:                                              ; preds = %141, %137, %1
  %154 = phi i32 [ %152, %141 ], [ 0, %1 ], [ %138, %137 ]
  ret i32 %154
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00leds_led_assoc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00lib_free_firmware(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 53
  %3 = load ptr, ptr %2, align 8
  tail call void @release_firmware(ptr noundef %3) #5
  store ptr null, ptr %2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
