; ModuleID = '/llk/IR/net/wireless/mesh.c_pt.bc'
source_filename = "../net/wireless/mesh.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.mesh_setup = type { %struct.cfg80211_chan_def, ptr, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i16, [6 x i32], i32, %struct.cfg80211_bitrate_mask, i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon] }
%struct.anon = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.45, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.84, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.45 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.84 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_registered_device = type { ptr, %struct.list_head, %struct.rfkill_ops, %struct.work_struct, [2 x i8], ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.rb_root, i32, i32, ptr, ptr, ptr, %struct.list_head, i64, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, %struct.delayed_work, %struct.work_struct, i32, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.work_struct, %struct.spinlock, [24 x i8], %struct.wiphy }
%struct.rfkill_ops = type { ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.120, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.anon.120 = type { i64, i64, i8 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@default_mesh_config = dso_local local_unnamed_addr constant %struct.mesh_config { i16 100, i16 100, i16 100, i16 32, i8 3, i8 31, i8 31, i8 1, i32 50, i8 4, i32 1000, i16 100, i32 5000, i16 10, i16 100, i16 50, i8 0, i8 0, i8 0, i16 5000, i8 0, i8 1, i32 0, i16 3, i32 6000, i16 5000, i16 2000, i32 1, i16 10, i32 1800, i8 0 }, align 4
@default_mesh_setup = dso_local local_unnamed_addr constant %struct.mesh_setup { %struct.cfg80211_chan_def zeroinitializer, ptr null, i8 0, i8 1, i8 1, i8 1, i8 0, ptr null, i8 0, i8 0, i8 0, i8 0, i8 2, i16 1000, [6 x i32] zeroinitializer, i32 0, %struct.cfg80211_bitrate_mask zeroinitializer, i8 0, i8 0 }, align 4
@__tracepoint_rdev_join_mesh = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_rdev_return_int = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_libertas_set_mesh_channel = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_leave_mesh = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_set_qos_map = external dso_local global %struct.tracepoint, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__cfg80211_join_mesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 7
  br i1 %9, label %10, label %243

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %12 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 11
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 1024
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.mesh_setup, ptr %2, i32 0, i32 10
  %18 = load i8, ptr %17, align 2, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %243

20:                                               ; preds = %16, %10
  %21 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 15
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %243

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.mesh_setup, ptr %2, i32 0, i32 2
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %243, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %0, align 32
  %30 = getelementptr inbounds %struct.cfg80211_ops, ptr %29, i32 0, i32 29
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %243, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %2, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %180

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %2, ptr noundef align 4 dereferenceable(28) %37, i32 28, i1 false)
  %38 = load ptr, ptr %2, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %180

40:                                               ; preds = %36
  %41 = getelementptr %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 53, i32 0
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %62, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %42, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load ptr, ptr %42, align 4
  br label %50

50:                                               ; preds = %56, %48
  %51 = phi i32 [ 0, %48 ], [ %57, %56 ]
  %52 = getelementptr %struct.ieee80211_channel, ptr %49, i32 %51, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = add nuw nsw i32 %51, 1
  %58 = icmp eq i32 %57, %46
  br i1 %58, label %62, label %50

59:                                               ; preds = %50
  %60 = getelementptr %struct.ieee80211_channel, ptr %49, i32 %51
  store ptr %60, ptr %2, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %172

62:                                               ; preds = %59, %56, %44, %40
  %63 = getelementptr %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 53, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %84, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %64, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load ptr, ptr %64, align 4
  br label %72

72:                                               ; preds = %78, %70
  %73 = phi i32 [ 0, %70 ], [ %79, %78 ]
  %74 = getelementptr %struct.ieee80211_channel, ptr %71, i32 %73, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 11
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = add nuw nsw i32 %73, 1
  %80 = icmp eq i32 %79, %68
  br i1 %80, label %84, label %72

81:                                               ; preds = %72
  %82 = getelementptr %struct.ieee80211_channel, ptr %71, i32 %73
  store ptr %82, ptr %2, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %172

84:                                               ; preds = %81, %78, %66, %62
  %85 = getelementptr %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 53, i32 2
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %106, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %86, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load ptr, ptr %86, align 4
  br label %94

94:                                               ; preds = %100, %92
  %95 = phi i32 [ 0, %92 ], [ %101, %100 ]
  %96 = getelementptr %struct.ieee80211_channel, ptr %93, i32 %95, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 11
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %94
  %101 = add nuw nsw i32 %95, 1
  %102 = icmp eq i32 %101, %90
  br i1 %102, label %106, label %94

103:                                              ; preds = %94
  %104 = getelementptr %struct.ieee80211_channel, ptr %93, i32 %95
  store ptr %104, ptr %2, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %172

106:                                              ; preds = %103, %100, %88, %84
  %107 = getelementptr %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 53, i32 3
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %128, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %108, i32 0, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  %115 = load ptr, ptr %108, align 4
  br label %116

116:                                              ; preds = %122, %114
  %117 = phi i32 [ 0, %114 ], [ %123, %122 ]
  %118 = getelementptr %struct.ieee80211_channel, ptr %115, i32 %117, i32 4
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 11
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %116
  %123 = add nuw nsw i32 %117, 1
  %124 = icmp eq i32 %123, %112
  br i1 %124, label %128, label %116

125:                                              ; preds = %116
  %126 = getelementptr %struct.ieee80211_channel, ptr %115, i32 %117
  store ptr %126, ptr %2, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %172

128:                                              ; preds = %125, %122, %110, %106
  %129 = getelementptr %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 53, i32 4
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %150, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %130, i32 0, i32 3
  %134 = load i32, ptr %133, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %132
  %137 = load ptr, ptr %130, align 4
  br label %138

138:                                              ; preds = %144, %136
  %139 = phi i32 [ 0, %136 ], [ %145, %144 ]
  %140 = getelementptr %struct.ieee80211_channel, ptr %137, i32 %139, i32 4
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, 11
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %138
  %145 = add nuw nsw i32 %139, 1
  %146 = icmp eq i32 %145, %134
  br i1 %146, label %150, label %138

147:                                              ; preds = %138
  %148 = getelementptr %struct.ieee80211_channel, ptr %137, i32 %139
  store ptr %148, ptr %2, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %172

150:                                              ; preds = %147, %144, %132, %128
  %151 = getelementptr %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 53, i32 5
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %243, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %152, i32 0, i32 3
  %156 = load i32, ptr %155, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %243

158:                                              ; preds = %154
  %159 = load ptr, ptr %152, align 4
  br label %160

160:                                              ; preds = %166, %158
  %161 = phi i32 [ 0, %158 ], [ %167, %166 ]
  %162 = getelementptr %struct.ieee80211_channel, ptr %159, i32 %161, i32 4
  %163 = load i32, ptr %162, align 4
  %164 = and i32 %163, 11
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %160
  %167 = add nuw nsw i32 %161, 1
  %168 = icmp eq i32 %167, %156
  br i1 %168, label %243, label %160

169:                                              ; preds = %160
  %170 = getelementptr %struct.ieee80211_channel, ptr %159, i32 %161
  store ptr %170, ptr %2, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %243, label %172

172:                                              ; preds = %169, %147, %125, %103, %81, %59
  %173 = phi ptr [ %60, %59 ], [ %82, %81 ], [ %104, %103 ], [ %126, %125 ], [ %148, %147 ], [ %170, %169 ]
  %174 = phi ptr [ %49, %59 ], [ %71, %81 ], [ %93, %103 ], [ %115, %125 ], [ %137, %147 ], [ %159, %169 ]
  %175 = phi i32 [ %51, %59 ], [ %73, %81 ], [ %95, %103 ], [ %117, %125 ], [ %139, %147 ], [ %161, %169 ]
  %176 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 1
  store i32 0, ptr %176, align 4
  %177 = getelementptr %struct.ieee80211_channel, ptr %174, i32 %175, i32 1
  %178 = load i32, ptr %177, align 4
  %179 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 2
  store i32 %178, ptr %179, align 4
  br label %180

180:                                              ; preds = %172, %36, %33
  %181 = phi ptr [ %34, %33 ], [ %173, %172 ], [ %38, %36 ]
  %182 = getelementptr inbounds %struct.mesh_setup, ptr %2, i32 0, i32 15
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %217

185:                                              ; preds = %180
  %186 = load i32, ptr %181, align 4
  %187 = getelementptr %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 53, i32 %186
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq i32 %186, 0
  br i1 %189, label %190, label %207

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %188, i32 0, i32 4
  %192 = load i32, ptr %191, align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %217

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %188, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  br label %197

197:                                              ; preds = %204, %194
  %198 = phi i32 [ 0, %194 ], [ %205, %204 ]
  %199 = getelementptr %struct.ieee80211_rate, ptr %196, i32 %198, i32 1
  %200 = load i16, ptr %199, align 4
  %201 = icmp eq i16 %200, 10
  br i1 %201, label %202, label %204

202:                                              ; preds = %197
  %203 = shl nuw i32 1, %198
  br label %215

204:                                              ; preds = %197
  %205 = add nuw nsw i32 %198, 1
  %206 = icmp eq i32 %205, %192
  br i1 %206, label %217, label %197

207:                                              ; preds = %185
  %208 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 1
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %209, 7
  %211 = zext i1 %210 to i32
  %212 = icmp eq i32 %209, 6
  %213 = select i1 %212, i32 2, i32 %211
  %214 = tail call i32 @ieee80211_mandatory_rates(ptr noundef %188, i32 noundef %213) #6
  br label %215

215:                                              ; preds = %207, %202
  %216 = phi i32 [ %214, %207 ], [ %203, %202 ]
  store i32 %216, ptr %182, align 4
  br label %217

217:                                              ; preds = %215, %204, %190, %180
  %218 = tail call i32 @cfg80211_chandef_dfs_required(ptr noundef %11, ptr noundef %2, i32 noundef 7) #6
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %243, label %220

220:                                              ; preds = %217
  %221 = icmp eq i32 %218, 0
  br i1 %221, label %226, label %222

222:                                              ; preds = %220
  %223 = getelementptr inbounds %struct.mesh_setup, ptr %2, i32 0, i32 17
  %224 = load i8, ptr %223, align 4, !range !8
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %243, label %226

226:                                              ; preds = %222, %220
  %227 = tail call zeroext i1 @cfg80211_reg_can_beacon(ptr noundef %11, ptr noundef %2, i32 noundef 7) #6
  br i1 %227, label %228, label %243

228:                                              ; preds = %226
  %229 = tail call fastcc i32 @rdev_join_mesh(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %2)
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %243

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 13
  %233 = getelementptr inbounds %struct.mesh_setup, ptr %2, i32 0, i32 1
  %234 = load ptr, ptr %233, align 4
  %235 = load i8, ptr %25, align 4
  %236 = zext i8 %235 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %232, ptr align 1 %234, i32 %236, i1 false)
  %237 = load i8, ptr %25, align 4
  store i8 %237, ptr %21, align 1
  %238 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 27
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %238, ptr noundef align 4 dereferenceable(28) %2, i32 28, i1 false)
  %239 = getelementptr inbounds %struct.mesh_setup, ptr %2, i32 0, i32 13
  %240 = load i16, ptr %239, align 2
  %241 = zext i16 %240 to i32
  %242 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 32
  store i32 %241, ptr %242, align 4
  br label %243

243:                                              ; preds = %231, %228, %226, %222, %217, %169, %166, %154, %150, %28, %24, %20, %16, %4
  %244 = phi i32 [ -95, %4 ], [ -95, %16 ], [ -114, %20 ], [ -22, %24 ], [ -95, %28 ], [ %218, %217 ], [ -22, %222 ], [ -22, %226 ], [ 0, %231 ], [ %229, %228 ], [ -22, %166 ], [ -22, %169 ], [ -22, %154 ], [ -22, %150 ]
  ret i32 %244
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_mandatory_rates(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_chandef_dfs_required(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_reg_can_beacon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rdev_join_mesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_join_mesh, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = tail call ptr @llvm.thread.pointer() #6
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  %20 = tail call i32 @__traceiter_rdev_join_mesh(ptr noundef null, ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  br label %21

21:                                               ; preds = %19, %8, %4
  %22 = load ptr, ptr %0, align 32
  %23 = getelementptr inbounds %struct.cfg80211_ops, ptr %22, i32 0, i32 29
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %21
  %29 = tail call ptr @llvm.thread.pointer() #6
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 5
  %33 = getelementptr i32, ptr @__cpu_online_mask, i32 %32
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %31, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %28
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %40 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %5, i32 noundef %25) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  br label %41

41:                                               ; preds = %39, %28, %21
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_set_mesh_channel(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 32
  %5 = getelementptr inbounds %struct.cfg80211_ops, ptr %4, i32 0, i32 35
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %62, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %70

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 6
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %70, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_libertas_set_mesh_channel, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = tail call ptr @llvm.thread.pointer() #6
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 5
  %29 = getelementptr i32, ptr @__cpu_online_mask, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %27, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  %36 = tail call i32 @__traceiter_rdev_libertas_set_mesh_channel(ptr noundef null, ptr noundef %21, ptr noundef %14, ptr noundef %20) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %37 = load ptr, ptr %0, align 32
  %38 = getelementptr inbounds %struct.cfg80211_ops, ptr %37, i32 0, i32 35
  %39 = load ptr, ptr %38, align 4
  br label %40

40:                                               ; preds = %35, %24, %19
  %41 = phi ptr [ %39, %35 ], [ %6, %24 ], [ %6, %19 ]
  %42 = tail call i32 %41(ptr noundef %21, ptr noundef %14, ptr noundef %20) #6
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = tail call ptr @llvm.thread.pointer() #6
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 5
  %50 = getelementptr i32, ptr @__cpu_online_mask, i32 %49
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %48, 31
  %53 = shl nuw i32 1, %52
  %54 = and i32 %53, %51
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %57 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %21, i32 noundef %42) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  br label %58

58:                                               ; preds = %56, %45, %40
  %59 = icmp eq i32 %42, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 27
  br label %68

62:                                               ; preds = %3
  %63 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 15
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 26
  br label %68

68:                                               ; preds = %66, %60
  %69 = phi ptr [ %61, %60 ], [ %67, %66 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %69, ptr noundef align 4 dereferenceable(28) %2, i32 28, i1 false)
  br label %70

70:                                               ; preds = %68, %62, %58, %12, %8
  %71 = phi i32 [ -22, %8 ], [ -100, %12 ], [ %42, %58 ], [ -16, %62 ], [ 0, %68 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__cfg80211_leave_mesh(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.wireless_dev, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %8, label %103

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 32
  %10 = getelementptr inbounds %struct.cfg80211_ops, ptr %9, i32 0, i32 30
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %103, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.wireless_dev, ptr %4, i32 0, i32 15
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %103, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_leave_mesh, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = tail call ptr @llvm.thread.pointer() #6
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  %33 = tail call i32 @__traceiter_rdev_leave_mesh(ptr noundef null, ptr noundef %18, ptr noundef %1) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %34 = load ptr, ptr %0, align 32
  %35 = getelementptr inbounds %struct.cfg80211_ops, ptr %34, i32 0, i32 30
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %32, %21, %17
  %38 = phi ptr [ %36, %32 ], [ %11, %21 ], [ %11, %17 ]
  %39 = tail call i32 %38(ptr noundef %18, ptr noundef %1) #6
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = tail call ptr @llvm.thread.pointer() #6
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = lshr i32 %45, 5
  %47 = getelementptr i32, ptr @__cpu_online_mask, i32 %46
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %45, 31
  %50 = shl nuw i32 1, %49
  %51 = and i32 %50, %48
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %42
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %54 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %18, i32 noundef %39) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  br label %55

55:                                               ; preds = %53, %42, %37
  %56 = icmp eq i32 %39, 0
  br i1 %56, label %57, label %103

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.wireless_dev, ptr %4, i32 0, i32 20
  store i32 0, ptr %58, align 4
  store i8 0, ptr %14, align 1
  %59 = getelementptr inbounds %struct.wireless_dev, ptr %4, i32 0, i32 32
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.wireless_dev, ptr %4, i32 0, i32 27
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %60, i8 0, i32 28, i1 false)
  %61 = load ptr, ptr %0, align 32
  %62 = getelementptr inbounds %struct.cfg80211_ops, ptr %61, i32 0, i32 87
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %102, label %65

65:                                               ; preds = %57
  %66 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_set_qos_map, i32 0, i32 1), align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %65
  %69 = tail call ptr @llvm.thread.pointer() #6
  %70 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = lshr i32 %71, 5
  %73 = getelementptr i32, ptr @__cpu_online_mask, i32 %72
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %71, 31
  %76 = shl nuw i32 1, %75
  %77 = and i32 %76, %74
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %68
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  %80 = tail call i32 @__traceiter_rdev_set_qos_map(ptr noundef null, ptr noundef %18, ptr noundef %1, ptr noundef null) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !18
  %81 = load ptr, ptr %0, align 32
  %82 = getelementptr inbounds %struct.cfg80211_ops, ptr %81, i32 0, i32 87
  %83 = load ptr, ptr %82, align 4
  br label %84

84:                                               ; preds = %79, %68, %65
  %85 = phi ptr [ %63, %65 ], [ %63, %68 ], [ %83, %79 ]
  %86 = tail call i32 %85(ptr noundef %18, ptr noundef %1, ptr noundef null) #6
  %87 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = tail call ptr @llvm.thread.pointer() #6
  %91 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %92 = load i32, ptr %91, align 8
  %93 = lshr i32 %92, 5
  %94 = getelementptr i32, ptr @__cpu_online_mask, i32 %93
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %92, 31
  %97 = shl nuw i32 1, %96
  %98 = and i32 %97, %95
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %89
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %101 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %18, i32 noundef %86) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  br label %102

102:                                              ; preds = %100, %89, %84, %57
  tail call void @cfg80211_sched_dfs_chan_update(ptr noundef %0) #6
  br label %103

103:                                              ; preds = %102, %55, %13, %8, %2
  %104 = phi i32 [ -95, %2 ], [ -95, %8 ], [ -107, %13 ], [ 0, %102 ], [ %39, %55 ]
  ret i32 %104
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_dfs_chan_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_leave_mesh(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.wireless_dev, ptr %4, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %5) #6
  %6 = tail call i32 @__cfg80211_leave_mesh(ptr noundef %0, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %5) #6
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_join_mesh(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_libertas_set_mesh_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_leave_mesh(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_set_qos_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }

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
!9 = !{i64 2156684789}
!10 = !{i64 2156684981}
!11 = !{i64 2156061439}
!12 = !{i64 2156061601}
!13 = !{i64 2156730684}
!14 = !{i64 2156730894}
!15 = !{i64 2156377582}
!16 = !{i64 2156377750}
!17 = !{i64 2157529004}
!18 = !{i64 2157529192}
