; ModuleID = '/llk/IR/net/mac80211/spectmgmt.c_pt.bc'
source_filename = "../net/mac80211/spectmgmt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee802_11_elems = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8 }
%struct.ieee80211_ext_chansw_ie = type { i8, i8, i8, i8 }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.144, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.119, i32, %struct.spinlock }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.144 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.122, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.122 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.123] }
%struct.anon.123 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_channel_sw_ie = type { i8, i8, i8 }
%struct.ieee80211_csa_ie = type { %struct.cfg80211_chan_def, i8, i8, i8, i16, i16, i32 }
%struct.ieee80211_mesh_chansw_params_ie = type { i8, i8, i16, i16 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.118, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.118 = type { i32, i16 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_wide_bw_chansw_ie = type { i8, i8, i8 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.145 }
%union.anon.145 = type { %struct.anon.151, [16 x i8] }
%struct.anon.151 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.158 = type { i8, %union.anon.159 }
%union.anon.159 = type <{ %struct.anon.164, [17 x i8] }>
%struct.anon.164 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.anon.163 = type { i8, i8, i8, i8, %struct.ieee80211_msrment_ie }
%struct.ieee80211_msrment_ie = type { i8, i8, i8, [0 x i8] }

@.str = private unnamed_addr constant [63 x i8] c"\016%s: cannot understand ECSA IE operating class, %d, ignoring\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"\016%s: BSS %pM switches to unsupported channel (%d MHz), disconnecting\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"\016%s: BSS %pM: CSA has inconsistent channel data, disconnecting\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"net/mac80211/ieee80211_i.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_parse_ch_switch_ie(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cfg80211_chan_def, align 4
  %10 = alloca %struct.ieee80211_vht_operation, align 1
  %11 = alloca %struct.ieee80211_ht_operation, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 %2, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 28, i1 false)
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %6, i8 0, i32 40, i1 false)
  %12 = getelementptr inbounds %struct.ieee802_11_elems, ptr %1, i32 0, i32 44
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ieee802_11_elems, ptr %1, i32 0, i32 37
  %15 = load ptr, ptr %14, align 4
  %16 = and i32 %4, 1040
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, ptr %13, ptr null
  %19 = and i32 %4, 3088
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr %15, ptr null
  %22 = getelementptr inbounds %struct.ieee802_11_elems, ptr %1, i32 0, i32 36
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.ieee80211_ext_chansw_ie, ptr %23, i32 0, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = call zeroext i1 @ieee80211_operating_class_to_band(i8 noundef zeroext %27, ptr noundef nonnull %8) #6
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %31 = load ptr, ptr %22, align 4
  %32 = getelementptr inbounds %struct.ieee80211_ext_chansw_ie, ptr %31, i32 0, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %30, i32 noundef %34) #7
  br label %36

36:                                               ; preds = %29, %25
  %37 = load ptr, ptr %22, align 4
  %38 = getelementptr inbounds %struct.ieee80211_ext_chansw_ie, ptr %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.ieee80211_ext_chansw_ie, ptr %37, i32 0, i32 3
  br label %47

40:                                               ; preds = %7
  %41 = getelementptr inbounds %struct.ieee802_11_elems, ptr %1, i32 0, i32 35
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %180, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ieee80211_channel_sw_ie, ptr %42, i32 0, i32 1
  %46 = getelementptr inbounds %struct.ieee80211_channel_sw_ie, ptr %42, i32 0, i32 2
  br label %47

47:                                               ; preds = %44, %36
  %48 = phi ptr [ %46, %44 ], [ %39, %36 ]
  %49 = phi ptr [ %41, %44 ], [ %22, %36 ]
  %50 = phi ptr [ %45, %44 ], [ %38, %36 ]
  %51 = load i8, ptr %50, align 1
  %52 = load i8, ptr %48, align 1
  %53 = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %6, i32 0, i32 2
  store i8 %52, ptr %53, align 1
  %54 = load ptr, ptr %49, align 4
  %55 = load i8, ptr %54, align 1
  %56 = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %6, i32 0, i32 1
  store i8 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.ieee802_11_elems, ptr %1, i32 0, i32 45
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %80, label %60

60:                                               ; preds = %47
  %61 = load i8, ptr %58, align 1
  %62 = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %6, i32 0, i32 3
  store i8 %61, ptr %62, align 2
  %63 = load ptr, ptr %57, align 4
  %64 = getelementptr inbounds %struct.ieee80211_mesh_chansw_params_ie, ptr %63, i32 0, i32 1
  %65 = load i8, ptr %64, align 1
  %66 = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %6, i32 0, i32 1
  store i8 %65, ptr %66, align 4
  %67 = load ptr, ptr %57, align 4
  %68 = getelementptr inbounds %struct.ieee80211_mesh_chansw_params_ie, ptr %67, i32 0, i32 3
  %69 = load i16, ptr %68, align 1
  %70 = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %6, i32 0, i32 4
  store i16 %69, ptr %70, align 4
  %71 = load ptr, ptr %57, align 4
  %72 = getelementptr inbounds %struct.ieee80211_mesh_chansw_params_ie, ptr %71, i32 0, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = and i8 %73, 4
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %60
  %77 = getelementptr inbounds %struct.ieee80211_mesh_chansw_params_ie, ptr %71, i32 0, i32 2
  %78 = load i16, ptr %77, align 1
  %79 = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %6, i32 0, i32 5
  store i16 %78, ptr %79, align 2
  br label %80

80:                                               ; preds = %76, %60, %47
  %81 = zext i8 %51 to i32
  %82 = load i32, ptr %8, align 4
  %83 = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %81, i32 noundef %82) #6
  %84 = udiv i32 %83, 1000
  %85 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.ieee80211_hw, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 8
  %89 = mul nuw i32 %84, 1000
  %90 = call ptr @ieee80211_get_channel_khz(ptr noundef %88, i32 noundef %89) #6
  %91 = icmp eq ptr %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %80
  %93 = getelementptr inbounds %struct.ieee80211_channel, ptr %90, i32 0, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %92, %80
  %98 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %98, ptr noundef %5, i32 noundef %84) #7
  br label %180

100:                                              ; preds = %92
  %101 = icmp eq ptr %18, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = and i32 %4, 16
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %110

105:                                              ; preds = %100
  %106 = load i8, ptr %18, align 1
  switch i8 %106, label %107 [
    i8 3, label %109
    i8 1, label %108
  ]

107:                                              ; preds = %105, %102
  call void @cfg80211_chandef_create(ptr noundef %6, ptr noundef nonnull %90, i32 noundef 1) #6
  br label %117

108:                                              ; preds = %105
  call void @cfg80211_chandef_create(ptr noundef %6, ptr noundef nonnull %90, i32 noundef 3) #6
  br label %117

109:                                              ; preds = %105
  call void @cfg80211_chandef_create(ptr noundef %6, ptr noundef nonnull %90, i32 noundef 2) #6
  br label %117

110:                                              ; preds = %102
  call void @cfg80211_chandef_create(ptr noundef %6, ptr noundef nonnull %90, i32 noundef 0) #6
  %111 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, -2
  %114 = icmp eq i32 %113, 6
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %6, i32 0, i32 1
  store i32 %112, ptr %116, align 4
  br label %117

117:                                              ; preds = %115, %110, %109, %108, %107
  %118 = icmp eq ptr %21, null
  br i1 %118, label %162, label %119

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.ieee80211_wide_bw_chansw_ie, ptr %21, i32 0, i32 2
  %121 = load i8, ptr %120, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %10) #6
  %122 = load i8, ptr %21, align 1
  store i8 %122, ptr %10, align 1
  %123 = getelementptr inbounds %struct.ieee80211_vht_operation, ptr %10, i32 0, i32 1
  %124 = getelementptr inbounds %struct.ieee80211_wide_bw_chansw_ie, ptr %21, i32 0, i32 1
  %125 = load i8, ptr %124, align 1
  store i8 %125, ptr %123, align 1
  %126 = getelementptr inbounds %struct.ieee80211_vht_operation, ptr %10, i32 0, i32 2
  store i8 %121, ptr %126, align 1
  %127 = getelementptr inbounds %struct.ieee80211_vht_operation, ptr %10, i32 0, i32 3
  store i16 0, ptr %127, align 1
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %11) #6
  %128 = getelementptr inbounds %struct.ieee80211_ht_operation, ptr %11, i32 0, i32 2
  %129 = zext i8 %121 to i16
  %130 = shl nuw nsw i16 %129, 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %11, i8 0, i64 22, i1 false)
  store i16 %130, ptr %128, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, ptr noundef align 4 dereferenceable(28) %6, i32 28, i1 false)
  %131 = load ptr, ptr %85, align 4
  %132 = call zeroext i1 @ieee80211_chandef_vht_oper(ptr noundef %131, i32 noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %9) #6
  br i1 %132, label %134, label %133

133:                                              ; preds = %119
  store ptr null, ptr %9, align 4
  br label %134

134:                                              ; preds = %133, %119
  %135 = and i32 %4, 4096
  %136 = icmp ne i32 %135, 0
  %137 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %9, i32 0, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 4
  %140 = select i1 %136, i1 %139, i1 false
  br i1 %140, label %141, label %144

141:                                              ; preds = %134
  %142 = call i32 @ieee80211_chandef_downgrade(ptr noundef nonnull %9) #6
  %143 = load i32, ptr %137, align 4
  br label %144

144:                                              ; preds = %141, %134
  %145 = phi i32 [ %143, %141 ], [ %138, %134 ]
  %146 = and i32 %4, 8192
  %147 = icmp ne i32 %146, 0
  %148 = icmp eq i32 %145, 5
  %149 = select i1 %147, i1 %148, i1 false
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = call i32 @ieee80211_chandef_downgrade(ptr noundef nonnull %9) #6
  br label %152

152:                                              ; preds = %150, %144
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %10) #6
  %153 = load ptr, ptr %9, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %152
  %156 = call ptr @cfg80211_chandef_compatible(ptr noundef nonnull %9, ptr noundef %6) #6
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %159, ptr noundef %5) #7
  br label %180

161:                                              ; preds = %155
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %6, ptr noundef nonnull align 4 dereferenceable(28) %9, i32 28, i1 false)
  br label %162

162:                                              ; preds = %161, %152, %117
  %163 = getelementptr inbounds %struct.ieee802_11_elems, ptr %1, i32 0, i32 38
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %180, label %166

166:                                              ; preds = %162
  %167 = load i8, ptr %164, align 1
  %168 = zext i8 %167 to i32
  %169 = getelementptr i8, ptr %164, i32 1
  %170 = load i8, ptr %169, align 1
  %171 = zext i8 %170 to i32
  %172 = shl nuw nsw i32 %171, 8
  %173 = or i32 %172, %168
  %174 = getelementptr i8, ptr %164, i32 2
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i32
  %177 = shl nuw nsw i32 %176, 16
  %178 = or i32 %173, %177
  %179 = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %6, i32 0, i32 6
  store i32 %178, ptr %179, align 4
  br label %180

180:                                              ; preds = %166, %162, %158, %97, %40
  %181 = phi i32 [ -22, %97 ], [ -22, %158 ], [ 1, %40 ], [ 0, %166 ], [ 0, %162 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  ret i32 %181
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_operating_class_to_band(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_chandef_vht_oper(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_chandef_downgrade(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_chandef_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_process_measurement_req(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6, i32 0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 53
  %11 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %10, i32 noundef 2592) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %48, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 4
  %15 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 3
  %16 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6, i32 0, i32 2, i32 1
  %17 = load i32, ptr %8, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %17
  store ptr %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 14
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr i8, ptr %22, i32 %17
  store ptr %23, ptr %21, align 8
  %24 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef 24) #6
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(24) %24, i8 0, i32 24, i1 false) #6
  %25 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %24, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %25, ptr noundef align 1 dereferenceable(6) %15, i32 6, i1 false) #6
  %26 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %24, i32 0, i32 3
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %26, ptr noundef align 8 dereferenceable(6) %27, i32 6, i1 false) #6
  %28 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %24, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %28, ptr noundef align 1 dereferenceable(6) %14, i32 6, i1 false) #6
  store i16 208, ptr %24, align 2
  %29 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef 8) #6
  %30 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %24, i32 0, i32 6
  store i8 0, ptr %30, align 2
  %31 = getelementptr inbounds %struct.anon.158, ptr %30, i32 0, i32 1
  store i8 1, ptr %31, align 1
  %32 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %24, i32 0, i32 6, i32 0, i32 1
  store i8 %5, ptr %32, align 1
  %33 = getelementptr inbounds %struct.anon.158, ptr %30, i32 0, i32 1, i32 0, i32 2
  store i8 39, ptr %33, align 1
  %34 = getelementptr inbounds %struct.anon.163, ptr %31, i32 0, i32 3
  store i8 3, ptr %34, align 1
  %35 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %24, i32 0, i32 6, i32 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(3) %35, i8 0, i32 3, i1 false) #6
  %36 = load i8, ptr %16, align 1
  store i8 %36, ptr %35, align 1
  %37 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %24, i32 0, i32 6, i32 0, i32 2, i32 2
  store i8 4, ptr %37, align 1
  %38 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6, i32 0, i32 2, i32 3
  %39 = load i8, ptr %38, align 1
  %40 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %24, i32 0, i32 6, i32 0, i32 2, i32 3
  store i8 %39, ptr %40, align 1
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !8
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45, !prof !9

44:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2200, i32 noundef 9, ptr noundef null) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  tail call void @kfree_skb_reason(ptr noundef nonnull %11, i32 noundef 0) #6
  br label %48

45:                                               ; preds = %13
  %46 = load ptr, ptr %42, align 4
  %47 = load i32, ptr %46, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 7, i32 noundef %47) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  br label %48

48:                                               ; preds = %45, %44, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i64 2149464386}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2149464603}
