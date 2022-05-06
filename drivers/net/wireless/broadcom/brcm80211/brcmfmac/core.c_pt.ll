; ModuleID = '/llk/IR/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_if = type { ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, ptr, i32, i32, [6 x i8], i8, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, [8 x %struct.in6_addr], i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.in6_addr = type { %union.anon.70 }
%union.anon.70 = type { [4 x i32] }
%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.137, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type {}
%struct.anon.137 = type { i64, i64, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.117, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.134, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.117 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%union.anon.134 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.brcmf_mp_device = type { i8, i32, i32, i8, i8, i8, ptr, ptr, %union.anon.142 }
%union.anon.142 = type { %struct.brcmfmac_sdio_pd }
%struct.brcmfmac_sdio_pd = type { i32, i32, i8, i32, i32, i8, i16, i16, ptr }
%struct.sk_buff = type { %union.anon.49, %union.anon.52, %union.anon.53, [48 x i8], %union.anon.54, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.56, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { ptr, ptr, %union.anon.51 }
%union.anon.51 = type { ptr }
%union.anon.52 = type { ptr }
%union.anon.53 = type { i64 }
%union.anon.54 = type { %struct.anon.55 }
%struct.anon.55 = type { i32, ptr }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.58, i32, i32, i32, i16, i16, %union.anon.60, %union.anon.61, %union.anon.62, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.58 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i16 }
%struct.d11rxhdr_le = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [12 x i8] }
%struct.brcmf_bus = type { %union.anon, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
%struct.brcmf_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_event = type { %struct.ethhdr, %struct.brcm_ethhdr, %struct.brcmf_event_msg_be }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.brcm_ethhdr = type { i16, i16, i8, [3 x i8], i16 }
%struct.brcmf_event_msg_be = type { i16, i16, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, i8 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.brcmf_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_cfg80211_info = type { ptr, ptr, %struct.brcmf_p2p_info, ptr, ptr, %struct.mutex, ptr, %struct.brcmf_cfg80211_connect_info, %struct.brcmf_pmk_list_le, i32, ptr, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, %struct.escan_info, %struct.timer_list, %struct.work_struct, %struct.list_head, %struct.brcmf_cfg80211_vif_event, %struct.completion, %struct.brcmu_d11inf, %struct.brcmf_assoclist_le, %struct.brcmf_cfg80211_wowl, ptr, [8 x i8] }
%struct.brcmf_p2p_info = type { ptr, i32, [6 x i8], [6 x i8], [6 x i8], [4 x %struct.p2p_bss], %struct.timer_list, i8, %struct.ieee80211_channel, i32, i8, %struct.completion, %struct.afx_hdl, i32, i32, %struct.completion, i8, i8, i8, i8 }
%struct.p2p_bss = type { ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.afx_hdl = type { %struct.work_struct, %struct.completion, i8, i32, i8, i16, i16, [6 x i8] }
%struct.brcmf_cfg80211_connect_info = type { ptr, i32, ptr, i32 }
%struct.brcmf_pmk_list_le = type { i32, [16 x %struct.brcmf_pmksa] }
%struct.brcmf_pmksa = type { [6 x i8], [16 x i8] }
%struct.escan_info = type { i32, ptr, ptr, ptr, ptr }
%struct.brcmf_cfg80211_vif_event = type { %struct.wait_queue_head, %struct.spinlock, i8, ptr }
%struct.brcmu_d11inf = type { i8, ptr, ptr }
%struct.brcmf_assoclist_le = type { i32, [128 x [6 x i8]] }
%struct.brcmf_cfg80211_wowl = type { i8, i32, ptr, ptr, %struct.wait_queue_head, i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sock_common = type { %union.anon.39, %union.anon.41, %union.anon.42, i16, i8, i8, i32, %union.anon.44, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.71, [0 x i32], %union.anon.72, i16, i16, %union.anon.73, %struct.refcount_struct, [0 x i32], %union.anon.74 }
%union.anon.39 = type { i64 }
%union.anon.41 = type { i32 }
%union.anon.42 = type { i32 }
%union.anon.44 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { i32 }
%union.anon.72 = type { %struct.hlist_node }
%union.anon.73 = type { i32 }
%union.anon.74 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.79, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.80, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.81, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.79 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.80 = type { ptr }
%union.anon.81 = type { ptr }
%struct.sk_buff_head = type { %union.anon.77, i32, %struct.spinlock }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.inet6_ifaddr = type { %struct.in6_addr, i32, i32, i32, i32, %struct.refcount_struct, %struct.spinlock, i32, i32, i8, i8, i16, i64, i32, i32, %struct.delayed_work, ptr, ptr, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, %struct.callback_head, %struct.in6_addr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.file = type { %union.anon.14, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [10 x i8] c"<if_null>\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"<if_none>\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: ifidx %d out of range\0A\00", align 1
@__func__.brcmf_get_ifp = private unnamed_addr constant [14 x i8] c"brcmf_get_ifp\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"arp_ol\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"arpoe\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ndoe\00", align 1
@brcmf_netdev_ops_pri = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @brcmf_netdev_open, ptr @brcmf_netdev_stop, ptr @brcmf_netdev_start_xmit, ptr null, ptr null, ptr null, ptr @brcmf_netdev_set_multicast_list, ptr @brcmf_netdev_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@brcmf_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @brcmf_ethtool_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"%s: couldn't register the net device\0A\00", align 1
@__func__.brcmf_net_attach = private unnamed_addr constant [17 x i8] c"brcmf_net_attach\00", align 1
@brcmf_netdev_ops_mon = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @brcmf_net_mon_open, ptr @brcmf_net_mon_stop, ptr @brcmf_net_mon_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"%s: Failed to register %s device\0A\00", align 1
@__func__.brcmf_net_mon_attach = private unnamed_addr constant [21 x i8] c"brcmf_net_mon_attach\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"%s: ERROR: netdev:%s already exists\0A\00", align 1
@__func__.brcmf_add_if = private unnamed_addr constant [13 x i8] c"brcmf_add_if\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"p2p%d\00", align 1
@brcmf_add_if.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"&ifp->pend_8021x_wait\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c\00", align 1
@brcmf_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"&drvr->proto_block\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"%s: brcmf_prot_attach failed\0A\00", align 1
@__func__.brcmf_attach = private unnamed_addr constant [13 x i8] c"brcmf_attach\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"%s: dongle is not responding: err=%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"%s: Firmware has halted or crashed\0A\00", align 1
@__func__.brcmf_fw_crashed = private unnamed_addr constant [17 x i8] c"brcmf_fw_crashed\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"%s: Timed out waiting for no pending 802.1x packets\0A\00", align 1
@__func__.brcmf_netdev_wait_pend8021x = private unnamed_addr constant [28 x i8] c"brcmf_netdev_wait_pend8021x\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\00\10\18\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"%s: failed bus is not ready\0A\00", align 1
@__func__.brcmf_netdev_open = private unnamed_addr constant [18 x i8] c"brcmf_netdev_open\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"toe_ol\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"%s: failed to bring up cfg80211\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"%s: xmit rejected state=%d\0A\00", align 1
@__func__.brcmf_netdev_start_xmit = private unnamed_addr constant [24 x i8] c"brcmf_netdev_start_xmit\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"%s: %s: failed to expand headroom\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"cur_etheraddr\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"%s: Setting cur_etheraddr failed, %d\0A\00", align 1
@__func__.brcmf_netdev_set_mac_address = private unnamed_addr constant [29 x i8] c"brcmf_netdev_set_mac_address\00", align 1
@__const.brcmf_ethtool_get_drvinfo.drev = private unnamed_addr constant [16 x i8] c"n/a\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"brcmfmac\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"mcast_list\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"%s: Setting mcast_list failed, %d\0A\00", align 1
@__func__._brcmf_set_multicast_list = private unnamed_addr constant [26 x i8] c"_brcmf_set_multicast_list\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"allmulti\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"%s: Setting allmulti failed, %d\0A\00", align 1
@_brcmf_set_multicast_list.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"%s: BRCMF_C_SET_PROMISC unsupported\0A\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"%s: Setting BRCMF_C_SET_PROMISC failed, err=%d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.32 = private unnamed_addr constant [16 x i8] c"nd_hostip_clear\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"nd_hostip\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"%s: add nd ip err %d\0A\00", align 1
@__func__._brcmf_update_ndtable = private unnamed_addr constant [22 x i8] c"_brcmf_update_ndtable\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"%s: BRCMF_C_GET_MONITOR error (%d)\0A\00", align 1
@__func__.brcmf_net_mon_open = private unnamed_addr constant [19 x i8] c"brcmf_net_mon_open\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"%s: Monitor mode is already enabled\0A\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"%s: BRCMF_C_SET_MONITOR error (%d)\0A\00", align 1
@__func__.brcmf_net_mon_stop = private unnamed_addr constant [19 x i8] c"brcmf_net_mon_stop\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"%s: Null interface, bsscfgidx=%d\0A\00", align 1
@__func__.brcmf_del_if = private unnamed_addr constant [13 x i8] c"brcmf_del_if\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"%s: PSM's watchdog has fired!\0A\00", align 1
@__func__.brcmf_psm_watchdog_notify = private unnamed_addr constant [26 x i8] c"brcmf_psm_watchdog_notify\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"wlan%d\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@bus_reset_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr @bus_reset_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.44 = private unnamed_addr constant [16 x i8] c"%s: failed: %d\0A\00", align 1
@__func__.brcmf_bus_started = private unnamed_addr constant [18 x i8] c"brcmf_bus_started\00", align 1
@brcmf_netdev_ops_p2p = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @brcmf_net_p2p_open, ptr @brcmf_net_p2p_stop, ptr @brcmf_net_p2p_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.45 = private unnamed_addr constant [42 x i8] c"%s: couldn't register the p2p net device\0A\00", align 1
@__func__.brcmf_net_p2p_attach = private unnamed_addr constant [21 x i8] c"brcmf_net_p2p_attach\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"arp_version\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"arp_hostip\00", align 1
@.str.48 = private unnamed_addr constant [37 x i8] c"%s: fail to get arp ip table err:%d\0A\00", align 1
@__func__.brcmf_inetaddr_changed = private unnamed_addr constant [23 x i8] c"brcmf_inetaddr_changed\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"%s: add arp ip err %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"arp_hostip_clear\00", align 1
@.str.51 = private unnamed_addr constant [39 x i8] c"%s: fail to clear arp ip table err:%d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @brcmf_ifname(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.1, ptr %5
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi ptr [ @.str, %1 ], [ %7, %3 ]
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @brcmf_get_ifp(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp ugt i32 %1, 15
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = tail call i32 @net_ratelimit() #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.brcmf_get_ifp, i32 noundef %1) #15
  br label %18

11:                                               ; preds = %2
  %12 = getelementptr %struct.brcmf_pub, ptr %0, i32 0, i32 10, i32 %1
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr %struct.brcmf_pub, ptr %0, i32 0, i32 9, i32 %13
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %11, %7, %4
  %19 = phi ptr [ null, %7 ], [ null, %4 ], [ %17, %15 ], [ null, %11 ]
  ret ptr %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_configure_arp_nd_offload(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = select i1 %1, i32 9, i32 0
  %4 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %3) #14
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %1 to i32
  br i1 %5, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %6) #14
  br label %9

9:                                                ; preds = %7, %2
  %10 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %6) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_txflowblock_if(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 10
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #14
  %12 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 9
  %13 = load i8, ptr %12, align 2
  br i1 %2, label %14, label %26

14:                                               ; preds = %9
  %15 = icmp eq i8 %13, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 87
  %19 = load ptr, ptr %18, align 64
  %20 = getelementptr inbounds %struct.netdev_queue, ptr %19, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %20) #14
  %21 = load i8, ptr %12, align 2
  br label %22

22:                                               ; preds = %16, %14
  %23 = phi i8 [ %21, %16 ], [ %13, %14 ]
  %24 = trunc i32 %1 to i8
  %25 = or i8 %23, %24
  store i8 %25, ptr %12, align 2
  br label %35

26:                                               ; preds = %9
  %27 = trunc i32 %1 to i8
  %28 = xor i8 %27, -1
  %29 = and i8 %13, %28
  store i8 %29, ptr %12, align 2
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 87
  %34 = load ptr, ptr %33, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %34) #14
  br label %35

35:                                               ; preds = %31, %26, %22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #14
  br label %36

36:                                               ; preds = %35, %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_netif_rx(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_mp_device, ptr %6, i32 0, i32 4
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %14 = load i16, ptr %13, align 8
  %15 = zext i16 %14 to i32
  %16 = sub i32 %12, %15
  %17 = icmp eq i32 %16, 6
  br i1 %17, label %18, label %39

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %20, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %18
  %29 = getelementptr i8, ptr %24, i32 14
  %30 = load i32, ptr %29, align 4
  %31 = xor i32 %30, -2119237376
  %32 = getelementptr i8, ptr %24, i32 18
  %33 = load i16, ptr %32, align 2
  %34 = xor i16 %33, 1
  %35 = zext i16 %34 to i32
  %36 = or i32 %31, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef %1) #14
  br label %72

39:                                               ; preds = %28, %18, %10, %3
  %40 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %41 = load i16, ptr %40, align 8
  %42 = and i16 %41, 7
  %43 = icmp eq i16 %42, 2
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 36, i32 8
  %48 = load i32, ptr %47, align 8
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 8
  br label %50

50:                                               ; preds = %44, %39
  %51 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 14
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef %1) #14
  br label %72

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %60 = load i32, ptr %59, align 8
  %61 = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 36, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = add i32 %62, %60
  store i32 %63, ptr %61, align 8
  %64 = load ptr, ptr %51, align 4
  %65 = getelementptr inbounds %struct.net_device, ptr %64, i32 0, i32 36
  %66 = load i32, ptr %65, align 8
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 8
  br i1 %2, label %68, label %70

68:                                               ; preds = %58
  %69 = tail call i32 @netif_rx(ptr noundef %1) #14
  br label %72

70:                                               ; preds = %58
  %71 = tail call i32 @netif_rx_ni(ptr noundef %1) #14
  br label %72

72:                                               ; preds = %70, %68, %57, %38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_pkt_buf_free_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_netif_mon_rx(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %0, i32 noundef 16) #14
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = tail call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %0, i32 noundef 17) #14
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.d11rxhdr_le, ptr %8, i32 0, i32 8
  %10 = load i16, ptr %9, align 1
  %11 = and i16 %10, 4
  %12 = icmp eq i16 %11, 0
  %13 = select i1 %12, i32 54, i32 56
  %14 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef %13) #14
  br label %15

15:                                               ; preds = %6, %4
  %16 = tail call ptr @skb_push(ptr noundef %1, i32 noundef 8) #14
  store i64 524288, ptr %16, align 1
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, -4
  store i32 %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %15, %2
  %21 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.anon.50, ptr %1, i32 0, i32 2
  store ptr %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %27 = load ptr, ptr %26, align 8
  %28 = ptrtoint ptr %25 to i32
  %29 = ptrtoint ptr %27 to i32
  %30 = sub i32 %28, %29
  %31 = trunc i32 %30 to i16
  %32 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  store i16 %31, ptr %32, align 2
  %33 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %34 = load i16, ptr %33, align 8
  %35 = and i16 %34, -8
  %36 = or i16 %35, 3
  store i16 %36, ptr %33, align 8
  %37 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  store i16 1024, ptr %37, align 8
  tail call void @brcmf_netif_rx(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_feat_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_rx_frame(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.brcmf_bus, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  store ptr null, ptr %5, align 4
  %10 = getelementptr inbounds %struct.brcmf_pub, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 %12(ptr noundef %9, i1 noundef zeroext true, ptr noundef %1, ptr noundef nonnull %5) #14
  switch i32 %13, label %21 [
    i32 0, label %14
    i32 -61, label %32
  ]

14:                                               ; preds = %4
  %15 = load ptr, ptr %5, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.brcmf_if, ptr %15, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %33

21:                                               ; preds = %4
  %22 = load ptr, ptr %5, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.brcmf_if, ptr %22, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 36, i32 4
  %30 = load i32, ptr %29, align 8
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 8
  br label %32

32:                                               ; preds = %28, %24, %21, %17, %14, %4
  call void @brcmu_pkt_buf_free_skb(ptr noundef %1) #14
  br label %78

33:                                               ; preds = %17
  %34 = call zeroext i16 @eth_type_trans(ptr noundef %1, ptr noundef nonnull %19) #14
  %35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  store i16 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %5, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.brcmf_pub, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.brcmf_proto, ptr %43, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  call void %45(ptr noundef %40, ptr noundef %1, i1 noundef zeroext %3) #14
  br label %78

46:                                               ; preds = %33
  br i1 %2, label %47, label %76

47:                                               ; preds = %46
  %48 = select i1 %3, i32 2592, i32 3264
  %49 = load ptr, ptr %5, align 4
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq i16 %34, 27784
  br i1 %51, label %52, label %76

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %54 = load i32, ptr %53, align 8
  %55 = add i32 %54, 14
  %56 = icmp ult i32 %55, 72
  br i1 %56, label %76, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  %61 = load i16, ptr %60, align 2
  %62 = zext i16 %61 to i32
  %63 = getelementptr i8, ptr %59, i32 %62
  %64 = getelementptr inbounds %struct.brcmf_event, ptr %63, i32 0, i32 1
  %65 = load i16, ptr %64, align 1
  %66 = icmp eq i16 %65, 384
  br i1 %66, label %67, label %76

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.brcmf_event, ptr %63, i32 0, i32 1, i32 3
  %69 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @.str.17, ptr noundef dereferenceable(3) %68, i32 3) #14
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.brcmf_event, ptr %63, i32 0, i32 1, i32 4
  %73 = load i16, ptr %72, align 1
  %74 = icmp eq i16 %73, 256
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  call void @brcmf_fweh_process_event(ptr noundef %50, ptr noundef %63, i32 noundef %55, i32 noundef %48) #14
  br label %76

76:                                               ; preds = %75, %71, %67, %57, %52, %47, %46
  %77 = load ptr, ptr %5, align 4
  call void @brcmf_netif_rx(ptr noundef %77, ptr noundef %1, i1 noundef zeroext %3)
  br label %78

78:                                               ; preds = %76, %39, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_rx_event(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.brcmf_bus, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  store ptr null, ptr %3, align 4
  %8 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 %10(ptr noundef %7, i1 noundef zeroext true, ptr noundef %1, ptr noundef nonnull %3) #14
  switch i32 %11, label %19 [
    i32 0, label %12
    i32 -61, label %56
  ]

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %56, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.brcmf_if, ptr %13, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %56, label %30

19:                                               ; preds = %2
  %20 = load ptr, ptr %3, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %56, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.brcmf_if, ptr %20, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %56, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 36, i32 4
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 8
  br label %56

30:                                               ; preds = %15
  %31 = call zeroext i16 @eth_type_trans(ptr noundef %1, ptr noundef nonnull %17) #14
  %32 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  store i16 %31, ptr %32, align 8
  %33 = load ptr, ptr %3, align 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq i16 %31, 27784
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %38 = load i32, ptr %37, align 8
  %39 = add i32 %38, 14
  %40 = icmp ult i32 %39, 72
  br i1 %40, label %56, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  %45 = load i16, ptr %44, align 2
  %46 = zext i16 %45 to i32
  %47 = getelementptr i8, ptr %43, i32 %46
  %48 = getelementptr inbounds %struct.brcmf_event, ptr %47, i32 0, i32 1, i32 3
  %49 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @.str.17, ptr noundef dereferenceable(3) %48, i32 3) #14
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.brcmf_event, ptr %47, i32 0, i32 1, i32 4
  %53 = load i16, ptr %52, align 1
  %54 = icmp eq i16 %53, 256
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  call void @brcmf_fweh_process_event(ptr noundef %34, ptr noundef %47, i32 noundef %39, i32 noundef 3264) #14
  br label %56

56:                                               ; preds = %55, %51, %41, %36, %30, %26, %22, %19, %15, %12, %2
  call void @brcmu_pkt_buf_free_skb(ptr noundef %1) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_txfinalize(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ethhdr, ptr %5, i32 0, i32 2
  %7 = load i16, ptr %6, align 1
  %8 = icmp eq i16 %7, -29048
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #14, !srcloc !9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #14, !srcloc !10
  %12 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 12, i32 1
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %16, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %17

17:                                               ; preds = %15, %9, %3
  br i1 %2, label %24, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 36, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %18, %17
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_net_attach(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 16
  store ptr @brcmf_netdev_ops_pri, ptr %6, align 8
  %7 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 21
  %10 = load i16, ptr %9, align 8
  %11 = trunc i32 %8 to i16
  %12 = add i16 %10, %11
  store i16 %12, ptr %9, align 8
  %13 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 42
  store ptr @brcmf_ethtool_ops, ptr %13, align 8
  %14 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 8
  tail call void @dev_addr_mod(ptr noundef %5, i32 noundef 0, ptr noundef %14, i32 noundef 6) #14
  %15 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 3
  store i32 -32, ptr %15, align 4
  %16 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 3, i32 1
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 3, i32 1, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 3, i32 2
  store ptr @_brcmf_set_multicast_list, ptr %18, align 4
  %19 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 4
  store i32 -32, ptr %19, align 4
  %20 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 4, i32 1
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 4, i32 1, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 4, i32 2
  store ptr @_brcmf_update_ndtable, ptr %22, align 4
  br i1 %1, label %23, label %25

23:                                               ; preds = %2
  %24 = tail call i32 @cfg80211_register_netdevice(ptr noundef %5) #14
  br label %27

25:                                               ; preds = %2
  %26 = tail call i32 @register_netdev(ptr noundef %5) #14
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @net_ratelimit() #14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.wiphy, ptr %35, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.brcmf_net_attach) #15
  br label %39

37:                                               ; preds = %27
  tail call void @netif_carrier_off(ptr noundef %5) #14
  %38 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 106
  store ptr @brcmf_cfg80211_free_netdev, ptr %38, align 4
  br label %43

39:                                               ; preds = %33, %30
  %40 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 7
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 9, i32 %41
  store ptr null, ptr %42, align 4
  store ptr null, ptr %6, align 8
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i32 [ -52, %39 ], [ 0, %37 ]
  ret i32 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @_brcmf_set_multicast_list(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 14
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 9
  %9 = and i32 %8, 1
  %10 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 61
  %11 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 61, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = mul i32 %12, 6
  %14 = add i32 %13, 4
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %92, label %17

17:                                               ; preds = %1
  store i32 %12, ptr %15, align 64
  %18 = load ptr, ptr %10, align 4
  %19 = icmp ne ptr %18, %10
  %20 = icmp ne i32 %12, 0
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %15, i32 4
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi ptr [ %31, %24 ], [ %18, %22 ]
  %26 = phi ptr [ %29, %24 ], [ %23, %22 ]
  %27 = phi i32 [ %30, %24 ], [ %12, %22 ]
  %28 = getelementptr inbounds %struct.netdev_hw_addr, ptr %25, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %26, ptr noundef align 4 dereferenceable(6) %28, i32 6, i1 false)
  %29 = getelementptr i8, ptr %26, i32 6
  %30 = add i32 %27, -1
  %31 = load ptr, ptr %25, align 4
  %32 = icmp ne ptr %31, %10
  %33 = icmp ne i32 %30, 0
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %24, label %35

35:                                               ; preds = %24, %17
  %36 = phi i1 [ %20, %17 ], [ %33, %24 ]
  %37 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %2, ptr noundef nonnull @.str.26, ptr noundef nonnull %15, i32 noundef %14) #14
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = tail call i32 @net_ratelimit() #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.wiphy, ptr %44, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__._brcmf_set_multicast_list, i32 noundef %37) #15
  br label %46

46:                                               ; preds = %42, %39
  %47 = select i1 %36, i32 1, i32 %9
  br label %48

48:                                               ; preds = %46, %35
  %49 = phi i32 [ %47, %46 ], [ %9, %35 ]
  tail call void @kfree(ptr noundef nonnull %15) #14
  %50 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef %49) #14
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = tail call i32 @net_ratelimit() #14
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.wiphy, ptr %57, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__._brcmf_set_multicast_list, i32 noundef %50) #15
  br label %59

59:                                               ; preds = %55, %52, %48
  %60 = load i32, ptr %6, align 8
  %61 = and i32 %60, 256
  %62 = icmp eq i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %2, i32 noundef 10, i32 noundef %64) #14
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %59
  %68 = icmp eq i32 %65, -52
  br i1 %68, label %69, label %75

69:                                               ; preds = %67
  %70 = load i1, ptr @_brcmf_set_multicast_list.__print_once, align 1
  br i1 %70, label %82, label %71

71:                                               ; preds = %69
  store i1 true, ptr @_brcmf_set_multicast_list.__print_once, align 1
  %72 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.wiphy, ptr %73, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %74, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__._brcmf_set_multicast_list) #15
  br label %82

75:                                               ; preds = %67
  %76 = tail call i32 @net_ratelimit() #14
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.wiphy, ptr %80, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__._brcmf_set_multicast_list, i32 noundef %65) #15
  br label %82

82:                                               ; preds = %78, %75, %71, %69, %59
  %83 = select i1 %62, i32 9, i32 0
  %84 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %83) #14
  %85 = icmp eq i32 %84, 0
  %86 = lshr exact i32 %61, 8
  %87 = xor i32 %86, 1
  br i1 %85, label %88, label %90

88:                                               ; preds = %82
  %89 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %87) #14
  br label %90

90:                                               ; preds = %88, %82
  %91 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %87) #14
  br label %92

92:                                               ; preds = %90, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @_brcmf_update_ndtable(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -28
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %2, ptr noundef nonnull @.str.32, ptr noundef null, i32 noundef 0) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 184
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 56
  %12 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  br label %13

13:                                               ; preds = %24, %10
  %14 = phi i32 [ 0, %10 ], [ %25, %24 ]
  %15 = getelementptr [8 x %struct.in6_addr], ptr %11, i32 0, i32 %14
  %16 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %2, ptr noundef nonnull @.str.33, ptr noundef %15, i32 noundef 16) #14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @net_ratelimit() #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %12, align 4
  %23 = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__._brcmf_update_ndtable, i32 noundef %16) #15
  br label %24

24:                                               ; preds = %21, %18, %13
  %25 = add nuw nsw i32 %14, 1
  %26 = load i8, ptr %7, align 4
  %27 = zext i8 %26 to i32
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %13, label %29

29:                                               ; preds = %24, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_register_netdevice(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_cfg80211_free_netdev(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_net_detach(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 102
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  br i1 %1, label %7, label %10

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %9 = load ptr, ptr %8, align 8
  tail call void @cfg80211_unregister_wdev(ptr noundef %9) #14
  br label %12

10:                                               ; preds = %6
  tail call void @unregister_netdev(ptr noundef %0) #14
  br label %12

11:                                               ; preds = %2
  tail call void @brcmf_cfg80211_free_netdev(ptr noundef %0) #14
  tail call void @free_netdev(ptr noundef %0) #14
  br label %12

12:                                               ; preds = %11, %10, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_net_mon_attach(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 16
  store ptr @brcmf_netdev_ops_mon, ptr %5, align 8
  %6 = tail call i32 @cfg80211_register_netdevice(ptr noundef %4) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @net_ratelimit() #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.brcmf_pub, ptr %2, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.brcmf_net_mon_attach, ptr noundef %4) #15
  br label %15

15:                                               ; preds = %11, %8, %1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_net_setcarrier(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %4, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 10
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #14
  %11 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 9
  %12 = load i8, ptr %11, align 2
  br i1 %1, label %24, label %13

13:                                               ; preds = %8
  %14 = icmp eq i8 %12, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 87
  %18 = load ptr, ptr %17, align 64
  %19 = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %19) #14
  %20 = load i8, ptr %11, align 2
  br label %21

21:                                               ; preds = %15, %13
  %22 = phi i8 [ %20, %15 ], [ %12, %13 ]
  %23 = or i8 %22, 4
  store i8 %23, ptr %11, align 2
  br label %31

24:                                               ; preds = %8
  %25 = and i8 %12, -5
  store i8 %25, ptr %11, align 2
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 87
  %30 = load ptr, ptr %29, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %30) #14
  br label %31

31:                                               ; preds = %27, %24, %21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #14
  br label %32

32:                                               ; preds = %31, %2
  %33 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 6
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %1, label %37, label %39

37:                                               ; preds = %32
  br i1 %36, label %41, label %38

38:                                               ; preds = %37
  tail call void @netif_carrier_on(ptr noundef %4) #14
  br label %41

39:                                               ; preds = %32
  br i1 %36, label %40, label %41

40:                                               ; preds = %39
  tail call void @netif_carrier_off(ptr noundef %4) #14
  br label %41

41:                                               ; preds = %40, %39, %38, %37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @brcmf_add_if(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef readonly %5) local_unnamed_addr #1 {
  %7 = getelementptr %struct.brcmf_pub, ptr %0, i32 0, i32 9, i32 %1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %65, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @net_ratelimit() #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.wiphy, ptr %17, i32 0, i32 56
  %19 = getelementptr inbounds %struct.brcmf_if, ptr %8, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.brcmf_add_if, ptr noundef %20) #15
  br label %21

21:                                               ; preds = %15, %12
  %22 = getelementptr inbounds %struct.brcmf_if, ptr %8, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 87
  %25 = load ptr, ptr %24, align 64
  %26 = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %26) #14
  %27 = load ptr, ptr %22, align 4
  %28 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 102
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  tail call void @unregister_netdev(ptr noundef %27) #14
  br label %33

32:                                               ; preds = %21
  tail call void @brcmf_cfg80211_free_netdev(ptr noundef %27) #14
  tail call void @free_netdev(ptr noundef %27) #14
  br label %33

33:                                               ; preds = %32, %31
  store ptr null, ptr %7, align 4
  br label %34

34:                                               ; preds = %33, %6
  %35 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 21
  %36 = load ptr, ptr %35, align 4
  %37 = load i8, ptr %36, align 4, !range !8
  %38 = icmp eq i8 %37, 0
  %39 = and i1 %38, %3
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %42 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 216) #17
  %43 = icmp eq ptr %42, null
  br i1 %43, label %65, label %56

44:                                               ; preds = %34
  %45 = select i1 %3, ptr @.str.9, ptr %4
  %46 = tail call ptr @alloc_netdev_mqs(i32 noundef 216, ptr noundef %45, i8 noundef zeroext 0, ptr noundef nonnull @ether_setup, i32 noundef 1, i32 noundef 1) #14
  %47 = icmp eq ptr %46, null
  br i1 %47, label %65, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 105
  store i8 1, ptr %49, align 8
  %50 = getelementptr i8, ptr %46, i32 1408
  %51 = getelementptr i8, ptr %46, i32 1416
  store ptr %46, ptr %51, align 4
  %52 = getelementptr %struct.brcmf_pub, ptr %0, i32 0, i32 10, i32 %2
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 %1, ptr %52, align 4
  br label %56

56:                                               ; preds = %55, %48, %40
  %57 = phi ptr [ %50, %55 ], [ %50, %48 ], [ %42, %40 ]
  store ptr %0, ptr %57, align 4
  store ptr %57, ptr %7, align 4
  %58 = getelementptr inbounds %struct.brcmf_if, ptr %57, i32 0, i32 6
  store i32 %2, ptr %58, align 4
  %59 = getelementptr inbounds %struct.brcmf_if, ptr %57, i32 0, i32 7
  store i32 %1, ptr %59, align 4
  %60 = getelementptr inbounds %struct.brcmf_if, ptr %57, i32 0, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %60, ptr noundef nonnull @.str.10, ptr noundef nonnull @brcmf_add_if.__key) #14
  %61 = getelementptr inbounds %struct.brcmf_if, ptr %57, i32 0, i32 10
  store i32 0, ptr %61, align 4
  %62 = icmp eq ptr %5, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.brcmf_if, ptr %57, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %64, ptr noundef nonnull align 1 dereferenceable(6) %5, i32 6, i1 false)
  br label %65

65:                                               ; preds = %63, %56, %44, %40, %10
  %66 = phi ptr [ %57, %63 ], [ %57, %56 ], [ inttoptr (i32 -22 to ptr), %10 ], [ inttoptr (i32 -12 to ptr), %40 ], [ inttoptr (i32 -12 to ptr), %44 ]
  ret ptr %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_remove_interface(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %85, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %12, label %11, !prof !11

11:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 966, i32 noundef 9, ptr noundef null) #14
  br label %85

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.brcmf_proto, ptr %14, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 %7
  br label %34

20:                                               ; preds = %12
  tail call void %16(ptr noundef nonnull %0) #14
  %21 = load ptr, ptr %0, align 4
  %22 = load i32, ptr %6, align 4
  %23 = getelementptr %struct.brcmf_pub, ptr %21, i32 0, i32 9, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr %struct.brcmf_pub, ptr %21, i32 0, i32 9, i32 %22
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = tail call i32 @net_ratelimit() #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %85, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.brcmf_pub, ptr %21, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.wiphy, ptr %32, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.brcmf_del_if, i32 noundef %22) #15
  br label %85

34:                                               ; preds = %20, %18
  %35 = phi ptr [ %19, %18 ], [ %25, %20 ]
  %36 = phi ptr [ %5, %18 ], [ %21, %20 ]
  %37 = phi i32 [ %7, %18 ], [ %22, %20 ]
  %38 = phi ptr [ %0, %18 ], [ %24, %20 ]
  %39 = getelementptr inbounds %struct.brcmf_if, ptr %38, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.brcmf_if, ptr %38, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %79, label %44

44:                                               ; preds = %34
  %45 = icmp eq i32 %37, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 16
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, @brcmf_netdev_ops_pri
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  tail call void @rtnl_lock() #14
  %51 = load ptr, ptr %41, align 4
  %52 = tail call i32 @brcmf_netdev_stop(ptr noundef %51) #14
  tail call void @rtnl_unlock() #14
  br label %57

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 87
  %55 = load ptr, ptr %54, align 64
  %56 = getelementptr inbounds %struct.netdev_queue, ptr %55, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %56) #14
  br label %57

57:                                               ; preds = %53, %50, %46
  %58 = load ptr, ptr %41, align 4
  %59 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 16
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, @brcmf_netdev_ops_pri
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.brcmf_if, ptr %38, i32 0, i32 3
  %64 = tail call zeroext i1 @cancel_work_sync(ptr noundef %63) #14
  %65 = getelementptr inbounds %struct.brcmf_if, ptr %38, i32 0, i32 4
  %66 = tail call zeroext i1 @cancel_work_sync(ptr noundef %65) #14
  %67 = load ptr, ptr %41, align 4
  br label %68

68:                                               ; preds = %62, %57
  %69 = phi ptr [ %67, %62 ], [ %58, %57 ]
  %70 = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 102
  %71 = load i8, ptr %70, align 4
  %72 = icmp eq i8 %71, 1
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  br i1 %1, label %74, label %77

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 70
  %76 = load ptr, ptr %75, align 8
  tail call void @cfg80211_unregister_wdev(ptr noundef %76) #14
  br label %80

77:                                               ; preds = %73
  tail call void @unregister_netdev(ptr noundef %69) #14
  br label %80

78:                                               ; preds = %68
  tail call void @brcmf_cfg80211_free_netdev(ptr noundef %69) #14
  tail call void @free_netdev(ptr noundef %69) #14
  br label %80

79:                                               ; preds = %34
  tail call void @brcmf_p2p_ifp_removed(ptr noundef nonnull %38, i1 noundef zeroext %1) #14
  tail call void @kfree(ptr noundef nonnull %38) #14
  br label %80

80:                                               ; preds = %79, %78, %77, %74
  store ptr null, ptr %35, align 4
  %81 = getelementptr %struct.brcmf_pub, ptr %36, i32 0, i32 10, i32 %40
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, %37
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 -1, ptr %81, align 4
  br label %85

85:                                               ; preds = %84, %80, %30, %27, %11, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_alloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @brcmf_cfg80211_get_ops(ptr noundef %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @wiphy_new_nm(ptr noundef nonnull %3, i32 noundef 10500, ptr noundef null) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #14
  br label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 1
  store ptr %0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 85
  %12 = getelementptr inbounds %struct.wiphy, ptr %6, i32 1, i32 0, i32 2
  store ptr %6, ptr %12, align 4
  %13 = getelementptr inbounds %struct.wiphy, ptr %6, i32 1, i32 0, i32 3
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %11, align 4
  %16 = getelementptr inbounds %struct.brcmf_bus, ptr %15, i32 0, i32 3
  store ptr %11, ptr %16, align 4
  %17 = getelementptr inbounds %struct.wiphy, ptr %6, i32 12, i32 56, i32 34
  store ptr %1, ptr %17, align 4
  br label %18

18:                                               ; preds = %9, %8, %2
  %19 = phi i32 [ 0, %9 ], [ -12, %8 ], [ -12, %2 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_cfg80211_get_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_attach(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmf_bus, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 224
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %6, i8 -1, i32 64, i1 false)
  %7 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str.12, ptr noundef nonnull @brcmf_attach.__key) #14
  %8 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 5
  store i32 0, ptr %8, align 4
  %9 = tail call i32 @brcmf_proto_attach(ptr noundef %5) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @net_ratelimit() #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %198, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.brcmf_attach) #15
  br label %198

18:                                               ; preds = %1
  %19 = tail call i32 @brcmf_fweh_register(ptr noundef %5, i32 noundef 41, ptr noundef nonnull @brcmf_psm_watchdog_notify) #14
  tail call void @brcmf_fweh_attach(ptr noundef %5) #14
  %20 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 0
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %185

26:                                               ; preds = %18
  %27 = tail call ptr @alloc_netdev_mqs(i32 noundef 216, ptr noundef nonnull @.str.41, i8 noundef zeroext 0, ptr noundef nonnull @ether_setup, i32 noundef 1, i32 noundef 1) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %185, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 105
  store i8 1, ptr %30, align 8
  %31 = getelementptr i8, ptr %27, i32 1408
  %32 = getelementptr i8, ptr %27, i32 1416
  store ptr %27, ptr %32, align 4
  %33 = load i32, ptr %6, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, ptr %6, align 4
  br label %36

36:                                               ; preds = %35, %29
  store ptr %5, ptr %31, align 4
  store ptr %31, ptr %23, align 4
  %37 = getelementptr i8, ptr %27, i32 1456
  store i32 0, ptr %37, align 4
  %38 = getelementptr i8, ptr %27, i32 1460
  store i32 0, ptr %38, align 4
  %39 = getelementptr i8, ptr %27, i32 1480
  tail call void @__init_waitqueue_head(ptr noundef %39, ptr noundef nonnull @.str.10, ptr noundef nonnull @brcmf_add_if.__key) #14
  %40 = getelementptr i8, ptr %27, i32 1472
  store i32 0, ptr %40, align 4
  %41 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %188, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.brcmf_bus, ptr %22, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %68, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.brcmf_bus, ptr %22, i32 0, i32 4
  store i32 1, ptr %47, align 4
  br label %48

48:                                               ; preds = %65, %46
  %49 = phi i32 [ %66, %65 ], [ 0, %46 ]
  %50 = getelementptr %struct.brcmf_pub, ptr %44, i32 0, i32 9, i32 %49
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %65, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.brcmf_if, ptr %51, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 87
  %59 = load ptr, ptr %58, align 64
  %60 = getelementptr inbounds %struct.netdev_queue, ptr %59, i32 0, i32 12
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  tail call void @netif_tx_wake_queue(ptr noundef %59) #14
  br label %65

65:                                               ; preds = %64, %57, %53, %48
  %66 = add nuw nsw i32 %49, 1
  %67 = icmp eq i32 %66, 16
  br i1 %67, label %68, label %48

68:                                               ; preds = %65, %42
  %69 = getelementptr inbounds %struct.brcmf_bus, ptr %22, i32 0, i32 11
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.brcmf_bus, ptr %22, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = tail call i32 %71(ptr noundef %75) #14
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %147, label %78

78:                                               ; preds = %73, %68
  %79 = tail call i32 @brcmf_c_preinit_dcmds(ptr noundef %31) #14
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %147, label %81

81:                                               ; preds = %78
  tail call void @brcmf_feat_attach(ptr noundef %5) #14
  %82 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.brcmf_proto, ptr %83, i32 0, i32 12
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %81
  %88 = tail call i32 %85(ptr noundef %5) #14
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %147, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %82, align 4
  br label %92

92:                                               ; preds = %90, %81
  %93 = phi ptr [ %91, %90 ], [ %83, %81 ]
  %94 = getelementptr inbounds %struct.brcmf_proto, ptr %93, i32 0, i32 9
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  tail call void %95(ptr noundef %31) #14
  br label %98

98:                                               ; preds = %97, %92
  %99 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 21
  %100 = load ptr, ptr %99, align 4
  %101 = load i8, ptr %100, align 4, !range !8
  %102 = icmp ne i8 %101, 0
  %103 = tail call ptr @brcmf_cfg80211_attach(ptr noundef %5, ptr noundef %21, i1 noundef zeroext %102) #14
  %104 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 4
  store ptr %103, ptr %104, align 4
  %105 = icmp eq ptr %103, null
  br i1 %105, label %147, label %106

106:                                              ; preds = %98
  %107 = tail call i32 @brcmf_net_attach(ptr noundef %31, i1 noundef zeroext false) #14
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %147

109:                                              ; preds = %106
  %110 = load ptr, ptr %99, align 4
  %111 = load i8, ptr %110, align 4, !range !8
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %109
  %114 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = tail call fastcc i32 @brcmf_net_p2p_attach(ptr noundef nonnull %115) #14
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %117, %113, %109
  %121 = phi ptr [ %115, %117 ], [ null, %113 ], [ null, %109 ]
  %122 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 19
  store ptr @brcmf_inetaddr_changed, ptr %122, align 4
  %123 = tail call i32 @register_inetaddr_notifier(ptr noundef %122) #14
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %147

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 20
  store ptr @brcmf_inet6addr_changed, ptr %126, align 4
  %127 = tail call i32 @register_inet6addr_notifier(ptr noundef %126) #14
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = tail call i32 @unregister_inetaddr_notifier(ptr noundef %122) #14
  br label %147

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 22
  store i32 -32, ptr %132, align 4
  %133 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 22, i32 1
  store volatile ptr %133, ptr %133, align 4
  %134 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 22, i32 1, i32 1
  store ptr %133, ptr %134, align 4
  %135 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 22, i32 2
  store ptr @brcmf_core_bus_reset, ptr %135, align 4
  %136 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.43, i16 noundef zeroext 384, ptr noundef nonnull inttoptr (i32 -2 to ptr), ptr noundef %5, ptr noundef nonnull @bus_reset_fops) #14
  tail call void @brcmf_feat_debugfs_create(ptr noundef %5) #14
  %137 = load ptr, ptr %82, align 4
  %138 = getelementptr inbounds %struct.brcmf_proto, ptr %137, i32 0, i32 13
  %139 = load ptr, ptr %138, align 4
  tail call void %139(ptr noundef %5) #14
  %140 = load ptr, ptr %69, align 4
  %141 = getelementptr inbounds %struct.brcmf_bus_ops, ptr %140, i32 0, i32 10
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %200, label %144

144:                                              ; preds = %131
  %145 = getelementptr inbounds %struct.brcmf_bus, ptr %22, i32 0, i32 2
  %146 = load ptr, ptr %145, align 4
  tail call void %142(ptr noundef %146) #14
  br label %200

147:                                              ; preds = %129, %120, %117, %106, %98, %87, %78, %73
  %148 = phi ptr [ null, %73 ], [ null, %78 ], [ null, %87 ], [ %115, %117 ], [ %121, %120 ], [ %121, %129 ], [ null, %98 ], [ null, %106 ]
  %149 = phi i32 [ %76, %73 ], [ %79, %78 ], [ %88, %87 ], [ %118, %117 ], [ %123, %120 ], [ %127, %129 ], [ -12, %98 ], [ %107, %106 ]
  %150 = tail call i32 @net_ratelimit() #14
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.wiphy, ptr %154, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.brcmf_bus_started, i32 noundef %149) #15
  br label %156

156:                                              ; preds = %152, %147
  %157 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 4
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %156
  tail call void @brcmf_cfg80211_detach(ptr noundef nonnull %158) #14
  store ptr null, ptr %157, align 4
  br label %161

161:                                              ; preds = %160, %156
  %162 = load ptr, ptr %32, align 4
  %163 = getelementptr inbounds %struct.net_device, ptr %162, i32 0, i32 102
  %164 = load i8, ptr %163, align 4
  %165 = icmp eq i8 %164, 1
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  tail call void @unregister_netdev(ptr noundef %162) #14
  br label %168

167:                                              ; preds = %161
  tail call void @brcmf_cfg80211_free_netdev(ptr noundef %162) #14
  tail call void @free_netdev(ptr noundef %162) #14
  br label %168

168:                                              ; preds = %167, %166
  %169 = icmp eq ptr %148, null
  br i1 %169, label %178, label %170

170:                                              ; preds = %168
  %171 = getelementptr inbounds %struct.brcmf_if, ptr %148, i32 0, i32 2
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.net_device, ptr %172, i32 0, i32 102
  %174 = load i8, ptr %173, align 4
  %175 = icmp eq i8 %174, 1
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  tail call void @unregister_netdev(ptr noundef %172) #14
  br label %178

177:                                              ; preds = %170
  tail call void @brcmf_cfg80211_free_netdev(ptr noundef %172) #14
  tail call void @free_netdev(ptr noundef %172) #14
  br label %178

178:                                              ; preds = %177, %176, %168
  store ptr null, ptr %23, align 4
  %179 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 1
  store ptr null, ptr %179, align 4
  %180 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 21
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr inbounds %struct.brcmf_mp_device, ptr %181, i32 0, i32 5
  %183 = load i8, ptr %182, align 2, !range !8
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %190, label %200

185:                                              ; preds = %26, %18
  %186 = phi ptr [ inttoptr (i32 -12 to ptr), %26 ], [ inttoptr (i32 -22 to ptr), %18 ]
  %187 = ptrtoint ptr %186 to i32
  br label %190

188:                                              ; preds = %36
  %189 = ptrtoint ptr %31 to i32
  br label %190

190:                                              ; preds = %188, %185, %178
  %191 = phi i32 [ %189, %188 ], [ %149, %178 ], [ %187, %185 ]
  %192 = tail call i32 @net_ratelimit() #14
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr inbounds %struct.wiphy, ptr %196, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %197, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.brcmf_attach, i32 noundef %191) #15
  br label %198

198:                                              ; preds = %194, %190, %14, %11
  %199 = phi i32 [ %9, %14 ], [ %9, %11 ], [ %191, %194 ], [ %191, %190 ]
  tail call void @brcmf_detach(ptr noundef %0)
  br label %200

200:                                              ; preds = %198, %178, %144, %131
  %201 = phi i32 [ %199, %198 ], [ 0, %178 ], [ 0, %131 ], [ 0, %144 ]
  ret i32 %201
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_proto_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fweh_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_psm_watchdog_notify(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #1 {
  %4 = load ptr, ptr %0, align 4
  %5 = tail call i32 @net_ratelimit() #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.brcmf_psm_watchdog_notify) #15
  br label %11

11:                                               ; preds = %7, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fweh_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_detach(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmf_bus, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %123, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 19
  %9 = tail call i32 @unregister_inetaddr_notifier(ptr noundef %8) #14
  %10 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 20
  %11 = tail call i32 @unregister_inet6addr_notifier(ptr noundef %10) #14
  %12 = load ptr, ptr %4, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.brcmf_bus, ptr %3, i32 0, i32 4
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %7
  %17 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @brcmf_remove_interface(ptr noundef nonnull %18, i1 noundef zeroext false)
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 14
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @brcmf_remove_interface(ptr noundef nonnull %23, i1 noundef zeroext false)
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 13
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @brcmf_remove_interface(ptr noundef nonnull %28, i1 noundef zeroext false)
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 12
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @brcmf_remove_interface(ptr noundef nonnull %33, i1 noundef zeroext false)
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 11
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @brcmf_remove_interface(ptr noundef nonnull %38, i1 noundef zeroext false)
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 10
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @brcmf_remove_interface(ptr noundef nonnull %43, i1 noundef zeroext false)
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 9
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @brcmf_remove_interface(ptr noundef nonnull %48, i1 noundef zeroext false)
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @brcmf_remove_interface(ptr noundef nonnull %53, i1 noundef zeroext false)
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 7
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void @brcmf_remove_interface(ptr noundef nonnull %58, i1 noundef zeroext false)
  br label %61

61:                                               ; preds = %60, %56
  %62 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 6
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  tail call void @brcmf_remove_interface(ptr noundef nonnull %63, i1 noundef zeroext false)
  br label %66

66:                                               ; preds = %65, %61
  %67 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 5
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  tail call void @brcmf_remove_interface(ptr noundef nonnull %68, i1 noundef zeroext false)
  br label %71

71:                                               ; preds = %70, %66
  %72 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 4
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  tail call void @brcmf_remove_interface(ptr noundef nonnull %73, i1 noundef zeroext false)
  br label %76

76:                                               ; preds = %75, %71
  %77 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  tail call void @brcmf_remove_interface(ptr noundef nonnull %78, i1 noundef zeroext false)
  br label %81

81:                                               ; preds = %80, %76
  %82 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  tail call void @brcmf_remove_interface(ptr noundef nonnull %83, i1 noundef zeroext false)
  br label %86

86:                                               ; preds = %85, %81
  %87 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  tail call void @brcmf_remove_interface(ptr noundef nonnull %88, i1 noundef zeroext false)
  br label %91

91:                                               ; preds = %90, %86
  %92 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 9, i32 0
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  tail call void @brcmf_remove_interface(ptr noundef nonnull %93, i1 noundef zeroext false)
  br label %96

96:                                               ; preds = %95, %91
  %97 = load ptr, ptr %5, align 4
  %98 = getelementptr inbounds %struct.brcmf_bus, ptr %97, i32 0, i32 11
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.brcmf_bus_ops, ptr %99, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.brcmf_bus, ptr %97, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  tail call void %101(ptr noundef %103) #14
  tail call void @brcmf_fweh_detach(ptr noundef nonnull %5) #14
  tail call void @brcmf_proto_detach(ptr noundef nonnull %5) #14
  %104 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 11
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %116, label %107

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.brcmf_if, ptr %105, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.net_device, ptr %109, i32 0, i32 102
  %111 = load i8, ptr %110, align 4
  %112 = icmp eq i8 %111, 1
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  tail call void @unregister_netdev(ptr noundef %109) #14
  br label %115

114:                                              ; preds = %107
  tail call void @brcmf_cfg80211_free_netdev(ptr noundef %109) #14
  tail call void @free_netdev(ptr noundef %109) #14
  br label %115

115:                                              ; preds = %114, %113
  store ptr null, ptr %104, align 4
  br label %116

116:                                              ; preds = %115, %96
  %117 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 4
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %118, i32 0, i32 2
  tail call void @brcmf_p2p_detach(ptr noundef %121) #14
  %122 = load ptr, ptr %117, align 4
  tail call void @brcmf_cfg80211_detach(ptr noundef %122) #14
  store ptr null, ptr %117, align 4
  br label %123

123:                                              ; preds = %120, %116, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @brcmf_bus_add_txhdrlen(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.brcmf_bus, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.brcmf_pub, ptr %6, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %1
  store i32 %11, ptr %9, align 4
  br label %12

12:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_dev_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmf_bus, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef nonnull %9, i32 noundef 28, i32 noundef 1) #14
  br label %13

13:                                               ; preds = %11, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_cmd_int_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local void @brcmf_dev_coredump(ptr nocapture noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_fw_crashed(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmf_bus, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @net_ratelimit() #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.brcmf_fw_crashed) #15
  br label %12

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 22
  %14 = load ptr, ptr @system_wq, align 4
  %15 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %14, ptr noundef %13) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inetaddr_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inet6addr_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_bus_change_state(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.brcmf_bus, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.brcmf_bus, ptr %0, i32 0, i32 4
  store i32 %1, ptr %7, align 4
  %8 = icmp eq i32 %1, 1
  br i1 %8, label %9, label %29

9:                                                ; preds = %26, %6
  %10 = phi i32 [ %27, %26 ], [ 0, %6 ]
  %11 = getelementptr %struct.brcmf_pub, ptr %4, i32 0, i32 9, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.brcmf_if, ptr %12, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 87
  %20 = load ptr, ptr %19, align 64
  %21 = getelementptr inbounds %struct.netdev_queue, ptr %20, i32 0, i32 12
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void @netif_tx_wake_queue(ptr noundef %20) #14
  br label %26

26:                                               ; preds = %25, %18, %14, %9
  %27 = add nuw nsw i32 %10, 1
  %28 = icmp eq i32 %27, 16
  br i1 %28, label %29, label %9

29:                                               ; preds = %26, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fweh_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_proto_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_p2p_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_cfg80211_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_free(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmf_bus, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  store ptr null, ptr %4, align 4
  %8 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #14
  %10 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void @wiphy_free(ptr noundef %11) #14
  br label %12

12:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_iovar_data_set(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.brcmf_bus, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_pub, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %10, ptr noundef %1, ptr noundef %2, i32 noundef %3) #14
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_netdev_wait_pend8021x(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 11
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !12
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #14
  %8 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 12
  %9 = call i32 @prepare_to_wait_event(ptr noundef %8, ptr noundef nonnull %2, i32 noundef 2) #14
  %10 = load volatile i32, ptr %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  call void @finish_wait(ptr noundef %8, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  br label %34

13:                                               ; preds = %13, %7
  %14 = phi i32 [ %22, %13 ], [ 95, %7 ]
  %15 = call i32 @schedule_timeout(i32 noundef %14) #14
  %16 = call i32 @prepare_to_wait_event(ptr noundef %8, ptr noundef nonnull %2, i32 noundef 2) #14
  %17 = load volatile i32, ptr %4, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = icmp ne i32 %15, 0
  %21 = select i1 %18, i1 true, i1 %20
  %22 = select i1 %21, i32 %15, i32 1
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %19, i1 true, i1 %23
  br i1 %24, label %25, label %13

25:                                               ; preds = %13
  %26 = icmp eq i32 %22, 0
  call void @finish_wait(ptr noundef %8, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  br i1 %26, label %27, label %34

27:                                               ; preds = %25
  %28 = call i32 @net_ratelimit() #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.wiphy, ptr %32, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.brcmf_netdev_wait_pend8021x) #15
  br label %34

34:                                               ; preds = %30, %27, %25, %12, %1
  %35 = phi i32 [ 1, %27 ], [ 1, %30 ], [ 0, %25 ], [ 0, %1 ], [ 0, %12 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @brcmf_core_init() local_unnamed_addr #8 section ".init.text" {
  %1 = tail call i32 @brcmf_sdio_register() #14
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdio_register() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdio_exit() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @brcmf_core_exit() local_unnamed_addr #8 section ".exit.text" {
  tail call void @brcmf_sdio_exit() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fweh_process_event(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_netdev_open(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !12
  %6 = getelementptr inbounds %struct.brcmf_bus, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @net_ratelimit() #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.brcmf_netdev_open) #15
  br label %43

16:                                               ; preds = %1
  %17 = getelementptr i8, ptr %0, i32 1476
  store volatile i32 0, ptr %17, align 4
  %18 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %3, ptr noundef nonnull @.str.19, ptr noundef nonnull %2) #14
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load i32, ptr %2, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %26 = load i64, ptr %25, align 16
  %27 = or i64 %26, 2
  store i64 %27, ptr %25, align 16
  br label %32

28:                                               ; preds = %20, %16
  %29 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %30 = load i64, ptr %29, align 16
  %31 = and i64 %30, -3
  store i64 %31, ptr %29, align 16
  br label %32

32:                                               ; preds = %28, %24
  %33 = call i32 @brcmf_cfg80211_up(ptr noundef %0) #14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = call i32 @net_ratelimit() #14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.wiphy, ptr %40, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.brcmf_netdev_open) #15
  br label %43

42:                                               ; preds = %32
  call void @netif_carrier_off(ptr noundef %0) #14
  br label %43

43:                                               ; preds = %42, %38, %35, %12, %9
  %44 = phi i32 [ 0, %42 ], [ -11, %12 ], [ -11, %9 ], [ -5, %38 ], [ -5, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_netdev_stop(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = tail call i32 @brcmf_cfg80211_down(ptr noundef %0) #14
  %4 = getelementptr i8, ptr %0, i32 1416
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %2, null
  %7 = icmp eq ptr %5, null
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %24, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 1472
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #14
  %12 = getelementptr i8, ptr %0, i32 1470
  %13 = load i8, ptr %12, align 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 87
  %18 = load ptr, ptr %17, align 64
  %19 = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %19) #14
  %20 = load i8, ptr %12, align 2
  br label %21

21:                                               ; preds = %15, %9
  %22 = phi i8 [ %20, %15 ], [ %13, %9 ]
  %23 = or i8 %22, 4
  store i8 %23, ptr %12, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #14
  br label %24

24:                                               ; preds = %21, %1
  %25 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  tail call void @netif_carrier_off(ptr noundef %5) #14
  br label %30

30:                                               ; preds = %29, %24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_netdev_start_xmit(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_bus, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %23, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @net_ratelimit() #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 56
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.brcmf_bus, ptr %16, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.brcmf_netdev_start_xmit, i32 noundef %18) #15
  br label %19

19:                                               ; preds = %12, %9
  %20 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %21 = load ptr, ptr %20, align 64
  %22 = getelementptr inbounds %struct.netdev_queue, ptr %21, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %22) #14
  tail call void @consume_skb(ptr noundef %0) #14
  br label %177

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 21
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.brcmf_mp_device, ptr %25, i32 0, i32 4
  %27 = load i8, ptr %26, align 1, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %33 = load i16, ptr %32, align 8
  %34 = zext i16 %33 to i32
  %35 = sub i32 %31, %34
  %36 = icmp eq i32 %35, 6
  br i1 %36, label %37, label %58

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = getelementptr i8, ptr %39, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %37
  %48 = getelementptr i8, ptr %43, i32 14
  %49 = load i32, ptr %48, align 4
  %50 = xor i32 %49, -2119237376
  %51 = getelementptr i8, ptr %43, i32 18
  %52 = load i16, ptr %51, align 2
  %53 = xor i16 %52, 1
  %54 = zext i16 %53 to i32
  %55 = or i32 %50, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  tail call void @consume_skb(ptr noundef %0) #14
  br label %177

58:                                               ; preds = %47, %37, %29, %23
  %59 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %62 = load ptr, ptr %61, align 8
  %63 = ptrtoint ptr %60 to i32
  %64 = ptrtoint ptr %62 to i32
  %65 = sub i32 %63, %64
  %66 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = icmp ugt i32 %67, %65
  br i1 %68, label %83, label %69

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %71 = load i8, ptr %70, align 2
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %111, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.skb_shared_info, ptr %76, i32 0, i32 10
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %78, 65535
  %80 = ashr i32 %78, 16
  %81 = sub nsw i32 %79, %80
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %111, label %83

83:                                               ; preds = %74, %58
  %84 = sub i32 %67, %65
  %85 = tail call i32 @llvm.smax.i32(i32 %84, i32 0)
  %86 = getelementptr inbounds %struct.brcmf_bus, ptr %5, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %86) #14, !srcloc !9
  %87 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %86, ptr %86, i32 1, ptr elementtype(i32) %86) #14, !srcloc !13
  %88 = add nuw i32 %85, 63
  %89 = and i32 %88, -64
  %90 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef %89, i32 noundef 0, i32 noundef 2592) #14
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %83
  %93 = tail call i32 @net_ratelimit() #14
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.wiphy, ptr %97, i32 0, i32 56
  %99 = icmp eq ptr %3, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = getelementptr i8, ptr %1, i32 1416
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  %104 = select i1 %103, ptr @.str.1, ptr %102
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi ptr [ @.str, %95 ], [ %104, %100 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.brcmf_netdev_start_xmit, ptr noundef %106) #15
  br label %107

107:                                              ; preds = %105, %92
  %108 = load ptr, ptr %4, align 4
  %109 = getelementptr inbounds %struct.brcmf_bus, ptr %108, i32 0, i32 5, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %109) #14, !srcloc !9
  %110 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %109, ptr %109, i32 1, ptr elementtype(i32) %109) #14, !srcloc !13
  br label %177

111:                                              ; preds = %83, %74, %69
  %112 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %113 = load i32, ptr %112, align 8
  %114 = icmp ult i32 %113, 14
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  tail call void @consume_skb(ptr noundef %0) #14
  br label %177

116:                                              ; preds = %111
  %117 = load ptr, ptr %59, align 4
  %118 = getelementptr inbounds %struct.ethhdr, ptr %117, i32 0, i32 2
  %119 = load i16, ptr %118, align 1
  %120 = icmp eq i16 %119, -29048
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = getelementptr i8, ptr %1, i32 1476
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %122) #14, !srcloc !9
  %123 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %122, ptr %122, i32 1, ptr elementtype(i32) %122) #14, !srcloc !13
  br label %124

124:                                              ; preds = %121, %116
  %125 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 5
  %126 = load i32, ptr %125, align 8
  %127 = add i32 %126, -8
  %128 = icmp ult i32 %127, -7
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = tail call i32 @cfg80211_classify8021d(ptr noundef %0, ptr noundef null) #14
  store i32 %130, ptr %125, align 8
  br label %131

131:                                              ; preds = %129, %124
  %132 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %147, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.sock_common, ptr %133, i32 0, i32 4
  %137 = load volatile i8, ptr %136, align 2
  %138 = zext i8 %137 to i32
  %139 = shl nuw i32 1, %138
  %140 = and i32 %139, -4161
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.sock, ptr %133, i32 0, i32 44
  %144 = load volatile i8, ptr %143, align 1
  %145 = icmp eq i8 %144, 8
  br i1 %145, label %147, label %146

146:                                              ; preds = %142
  store volatile i8 8, ptr %143, align 1
  br label %147

147:                                              ; preds = %146, %142, %135, %131
  %148 = getelementptr i8, ptr %1, i32 1456
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.brcmf_proto, ptr %151, i32 0, i32 3
  %153 = load ptr, ptr %152, align 4
  %154 = tail call i32 %153(ptr noundef %4, i32 noundef %149, ptr noundef %0) #14
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %175

156:                                              ; preds = %147
  %157 = load ptr, ptr %59, align 4
  %158 = getelementptr inbounds %struct.ethhdr, ptr %157, i32 0, i32 2
  %159 = load i16, ptr %158, align 1
  %160 = icmp eq i16 %159, -29048
  br i1 %160, label %161, label %169

161:                                              ; preds = %156
  %162 = getelementptr i8, ptr %1, i32 1476
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %162) #14, !srcloc !9
  %163 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %162, ptr %162, i32 1, ptr elementtype(i32) %162) #14, !srcloc !10
  %164 = getelementptr i8, ptr %1, i32 1484
  %165 = load volatile ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, %164
  br i1 %166, label %169, label %167

167:                                              ; preds = %161
  %168 = getelementptr i8, ptr %1, i32 1480
  tail call void @__wake_up(ptr noundef %168, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %169

169:                                              ; preds = %167, %161, %156
  %170 = getelementptr i8, ptr %1, i32 1416
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.net_device, ptr %171, i32 0, i32 36, i32 5
  %173 = load i32, ptr %172, align 4
  %174 = add i32 %173, 1
  store i32 %174, ptr %172, align 4
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef %0) #14
  br label %177

175:                                              ; preds = %147
  %176 = icmp eq i32 %154, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %175, %169, %115, %107, %57, %19
  %178 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  br label %185

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = add i32 %181, 1
  store i32 %182, ptr %180, align 4
  %183 = load i32, ptr %112, align 8
  %184 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  br label %185

185:                                              ; preds = %179, %177
  %186 = phi ptr [ %184, %179 ], [ %178, %177 ]
  %187 = phi i32 [ %183, %179 ], [ 1, %177 ]
  %188 = load i32, ptr %186, align 4
  %189 = add i32 %188, %187
  store i32 %189, ptr %186, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_netdev_set_multicast_list(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 1420
  %3 = load ptr, ptr @system_wq, align 4
  %4 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_netdev_set_mac_address(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %6 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %3, ptr noundef nonnull @.str.23, ptr noundef %5, i32 noundef 6) #14
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = tail call i32 @net_ratelimit() #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.brcmf_netdev_set_mac_address, i32 noundef %6) #15
  br label %19

15:                                               ; preds = %2
  %16 = getelementptr i8, ptr %0, i32 1464
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %16, ptr noundef align 2 dereferenceable(6) %5, i32 6, i1 false)
  %17 = getelementptr i8, ptr %0, i32 1416
  %18 = load ptr, ptr %17, align 4
  tail call void @dev_addr_mod(ptr noundef %18, i32 noundef 0, ptr noundef %16, i32 noundef 6) #14
  br label %19

19:                                               ; preds = %15, %11, %8
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_cfg80211_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_cfg80211_down(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_classify8021d(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_ethtool_get_drvinfo(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = alloca [16 x i8], align 1
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(16) @__const.brcmf_ethtool_get_drvinfo.drev, i32 16, i1 false)
  %6 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 18
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 18, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = call ptr @brcmu_dotrev_str(i32 noundef %11, ptr noundef nonnull %3) #14
  br label %13

13:                                               ; preds = %9, %2
  %14 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %15 = call i32 @strlcpy(ptr noundef %14, ptr noundef nonnull @.str.25, i32 noundef 32) #14
  %16 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 2
  %17 = call i32 @strlcpy(ptr noundef %16, ptr noundef nonnull %3, i32 noundef 32) #14
  %18 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 3
  %19 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 6
  %20 = call i32 @strlcpy(ptr noundef %18, ptr noundef %19, i32 noundef 32) #14
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr inbounds %struct.brcmf_bus, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %13
  %28 = load ptr, ptr %23, align 4
  br label %29

29:                                               ; preds = %27, %13
  %30 = phi ptr [ %28, %27 ], [ %25, %13 ]
  %31 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %32 = call i32 @strlcpy(ptr noundef %31, ptr noundef %30, i32 noundef 32) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_dotrev_str(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_unregister_wdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_net_mon_open(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !12
  %5 = call i32 @brcmf_fil_cmd_int_get(ptr noundef %3, i32 noundef 107, ptr noundef nonnull %2) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = call i32 @net_ratelimit() #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.brcmf_net_mon_open, i32 noundef %5) #15
  br label %34

14:                                               ; preds = %1
  %15 = load i32, ptr %2, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = call i32 @net_ratelimit() #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.brcmf_net_mon_open) #15
  br label %34

24:                                               ; preds = %14
  store i32 3, ptr %2, align 4
  %25 = call i32 @brcmf_fil_cmd_int_set(ptr noundef %3, i32 noundef 108, i32 noundef 3) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = call i32 @net_ratelimit() #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.wiphy, ptr %32, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.brcmf_net_mon_open, i32 noundef %25) #15
  br label %34

34:                                               ; preds = %30, %27, %24, %20, %17, %10, %7
  %35 = phi i32 [ %5, %10 ], [ %5, %7 ], [ -17, %20 ], [ -17, %17 ], [ %25, %27 ], [ %25, %30 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_net_mon_stop(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %2, i32 noundef 108, i32 noundef 0) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @net_ratelimit() #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.brcmf_net_mon_stop, i32 noundef %4) #15
  br label %13

13:                                               ; preds = %9, %6, %1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_net_mon_start_xmit(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_cmd_int_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_p2p_ifp_removed(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_new_nm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_c_preinit_dcmds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_feat_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_cfg80211_attach(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_net_p2p_attach(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 16
  store ptr @brcmf_netdev_ops_p2p, ptr %5, align 8
  %6 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 8
  tail call void @dev_addr_mod(ptr noundef %4, i32 noundef 0, ptr noundef %6, i32 noundef 6) #14
  %7 = tail call i32 @register_netdev(ptr noundef %4) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @net_ratelimit() #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.brcmf_pub, ptr %2, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.brcmf_net_p2p_attach) #15
  br label %16

16:                                               ; preds = %12, %9
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.brcmf_pub, ptr %17, i32 0, i32 9, i32 %19
  store ptr null, ptr %20, align 4
  store ptr null, ptr %5, align 8
  br label %21

21:                                               ; preds = %16, %1
  %22 = phi i32 [ -52, %16 ], [ 0, %1 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_inetaddr_changed(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 4
  %6 = getelementptr inbounds %struct.in_ifaddr, ptr %2, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false)
  %9 = getelementptr i8, ptr %0, i32 -10040
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.brcmf_if, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %8
  br i1 %15, label %136, label %16

16:                                               ; preds = %12, %3
  %17 = getelementptr i8, ptr %0, i32 -10036
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.brcmf_if, ptr %18, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %8
  br i1 %23, label %136, label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr i8, ptr %0, i32 -10032
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.brcmf_if, ptr %26, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %8
  br i1 %31, label %136, label %32

32:                                               ; preds = %28, %24
  %33 = getelementptr i8, ptr %0, i32 -10028
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.brcmf_if, ptr %34, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %8
  br i1 %39, label %136, label %40

40:                                               ; preds = %36, %32
  %41 = getelementptr i8, ptr %0, i32 -10024
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.brcmf_if, ptr %42, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %8
  br i1 %47, label %136, label %48

48:                                               ; preds = %44, %40
  %49 = getelementptr i8, ptr %0, i32 -10020
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.brcmf_if, ptr %50, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %8
  br i1 %55, label %136, label %56

56:                                               ; preds = %52, %48
  %57 = getelementptr i8, ptr %0, i32 -10016
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.brcmf_if, ptr %58, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %8
  br i1 %63, label %136, label %64

64:                                               ; preds = %60, %56
  %65 = getelementptr i8, ptr %0, i32 -10012
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.brcmf_if, ptr %66, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %8
  br i1 %71, label %136, label %72

72:                                               ; preds = %68, %64
  %73 = getelementptr i8, ptr %0, i32 -10008
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.brcmf_if, ptr %74, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %8
  br i1 %79, label %136, label %80

80:                                               ; preds = %76, %72
  %81 = getelementptr i8, ptr %0, i32 -10004
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.brcmf_if, ptr %82, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, %8
  br i1 %87, label %136, label %88

88:                                               ; preds = %84, %80
  %89 = getelementptr i8, ptr %0, i32 -10000
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.brcmf_if, ptr %90, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, %8
  br i1 %95, label %136, label %96

96:                                               ; preds = %92, %88
  %97 = getelementptr i8, ptr %0, i32 -9996
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.brcmf_if, ptr %98, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %8
  br i1 %103, label %136, label %104

104:                                              ; preds = %100, %96
  %105 = getelementptr i8, ptr %0, i32 -9992
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.brcmf_if, ptr %106, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, %8
  br i1 %111, label %136, label %112

112:                                              ; preds = %108, %104
  %113 = getelementptr i8, ptr %0, i32 -9988
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.brcmf_if, ptr %114, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, %8
  br i1 %119, label %136, label %120

120:                                              ; preds = %116, %112
  %121 = getelementptr i8, ptr %0, i32 -9984
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.brcmf_if, ptr %122, i32 0, i32 2
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, %8
  br i1 %127, label %136, label %128

128:                                              ; preds = %124, %120
  %129 = getelementptr i8, ptr %0, i32 -9980
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %240, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.brcmf_if, ptr %130, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, %8
  br i1 %135, label %136, label %240

136:                                              ; preds = %132, %124, %116, %108, %100, %92, %84, %76, %68, %60, %52, %44, %36, %28, %20, %12
  %137 = phi ptr [ %10, %12 ], [ %18, %20 ], [ %26, %28 ], [ %34, %36 ], [ %42, %44 ], [ %50, %52 ], [ %58, %60 ], [ %66, %68 ], [ %74, %76 ], [ %82, %84 ], [ %90, %92 ], [ %98, %100 ], [ %106, %108 ], [ %114, %116 ], [ %122, %124 ], [ %130, %132 ]
  %138 = call i32 @brcmf_fil_iovar_int_get(ptr noundef nonnull %137, ptr noundef nonnull @.str.4, ptr noundef nonnull %4) #14
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %240

140:                                              ; preds = %136
  %141 = call i32 @brcmf_fil_iovar_int_get(ptr noundef nonnull %137, ptr noundef nonnull @.str.46, ptr noundef nonnull %4) #14
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  store i32 1, ptr %4, align 4
  br label %147

144:                                              ; preds = %140
  %145 = load i32, ptr %4, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %149

147:                                              ; preds = %144, %143
  %148 = load ptr, ptr %9, align 4
  br label %149

149:                                              ; preds = %147, %144
  %150 = phi ptr [ %148, %147 ], [ %137, %144 ]
  %151 = call i32 @brcmf_fil_iovar_data_get(ptr noundef %150, ptr noundef nonnull @.str.47, ptr noundef nonnull %5, i32 noundef 32) #14
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.in_ifaddr, ptr %2, i32 0, i32 5
  %155 = load i32, ptr %154, align 4
  %156 = load i32, ptr %5, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %194, label %165

158:                                              ; preds = %149
  %159 = call i32 @net_ratelimit() #14
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %240, label %161

161:                                              ; preds = %158
  %162 = getelementptr i8, ptr %0, i32 -10192
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.wiphy, ptr %163, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.brcmf_inetaddr_changed, i32 noundef %151) #15
  br label %240

165:                                              ; preds = %153
  %166 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %155, %167
  br i1 %168, label %194, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 2
  %171 = load i32, ptr %170, align 4
  %172 = icmp eq i32 %155, %171
  br i1 %172, label %194, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 3
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %155, %175
  br i1 %176, label %194, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 4
  %179 = load i32, ptr %178, align 4
  %180 = icmp eq i32 %155, %179
  br i1 %180, label %194, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 5
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %155, %183
  br i1 %184, label %194, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 6
  %187 = load i32, ptr %186, align 4
  %188 = icmp eq i32 %155, %187
  br i1 %188, label %194, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 7
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %155, %191
  br i1 %192, label %194, label %193

193:                                              ; preds = %189
  br label %194

194:                                              ; preds = %193, %189, %185, %181, %177, %173, %169, %165, %153
  %195 = phi i1 [ true, %193 ], [ false, %189 ], [ false, %185 ], [ false, %181 ], [ false, %177 ], [ false, %173 ], [ false, %169 ], [ false, %165 ], [ false, %153 ]
  %196 = phi i32 [ 8, %193 ], [ 7, %189 ], [ 6, %185 ], [ 5, %181 ], [ 4, %177 ], [ 3, %173 ], [ 2, %169 ], [ 1, %165 ], [ 0, %153 ]
  %197 = phi i1 [ false, %193 ], [ true, %189 ], [ true, %185 ], [ true, %181 ], [ true, %177 ], [ true, %173 ], [ true, %169 ], [ true, %165 ], [ true, %153 ]
  switch i32 %1, label %240 [
    i32 1, label %198
    i32 2, label %209
  ]

198:                                              ; preds = %194
  br i1 %195, label %199, label %240

199:                                              ; preds = %198
  %200 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %150, ptr noundef nonnull @.str.47, ptr noundef %154, i32 noundef 4) #14
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %240, label %202

202:                                              ; preds = %199
  %203 = call i32 @net_ratelimit() #14
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %240, label %205

205:                                              ; preds = %202
  %206 = getelementptr i8, ptr %0, i32 -10192
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.wiphy, ptr %207, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %208, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.brcmf_inetaddr_changed, i32 noundef %200) #15
  br label %240

209:                                              ; preds = %194
  br i1 %197, label %210, label %240

210:                                              ; preds = %209
  %211 = getelementptr [8 x i32], ptr %5, i32 0, i32 %196
  store i32 0, ptr %211, align 4
  %212 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %150, ptr noundef nonnull @.str.50, ptr noundef null, i32 noundef 0) #14
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %210
  %215 = getelementptr i8, ptr %0, i32 -10192
  br label %223

216:                                              ; preds = %210
  %217 = call i32 @net_ratelimit() #14
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %240, label %219

219:                                              ; preds = %216
  %220 = getelementptr i8, ptr %0, i32 -10192
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr inbounds %struct.wiphy, ptr %221, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %222, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.brcmf_inetaddr_changed, i32 noundef %212) #15
  br label %240

223:                                              ; preds = %237, %214
  %224 = phi i32 [ 0, %214 ], [ %238, %237 ]
  %225 = getelementptr [8 x i32], ptr %5, i32 0, i32 %224
  %226 = load i32, ptr %225, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %237, label %228

228:                                              ; preds = %223
  %229 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %150, ptr noundef nonnull @.str.47, ptr noundef %225, i32 noundef 4) #14
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %237, label %231

231:                                              ; preds = %228
  %232 = call i32 @net_ratelimit() #14
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %231
  %235 = load ptr, ptr %215, align 4
  %236 = getelementptr inbounds %struct.wiphy, ptr %235, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %236, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.brcmf_inetaddr_changed, i32 noundef %229) #15
  br label %237

237:                                              ; preds = %234, %231, %228, %223
  %238 = add nuw nsw i32 %224, 1
  %239 = icmp eq i32 %238, 8
  br i1 %239, label %240, label %223

240:                                              ; preds = %237, %219, %216, %209, %205, %202, %199, %198, %194, %161, %158, %136, %132, %128
  %241 = phi i32 [ 1, %136 ], [ 1, %161 ], [ 1, %158 ], [ 1, %219 ], [ 1, %216 ], [ 1, %194 ], [ 1, %209 ], [ 1, %198 ], [ 1, %202 ], [ 1, %205 ], [ 1, %199 ], [ 0, %132 ], [ 0, %128 ], [ 1, %237 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret i32 %241
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inetaddr_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_inet6addr_changed(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -10052
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %199, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.brcmf_if, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.inet6_ifaddr, ptr %2, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %9, %12
  br i1 %13, label %14, label %199

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.brcmf_if, ptr %5, i32 0, i32 13
  %16 = load i32, ptr %2, align 4
  %17 = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %15, align 4
  %24 = xor i32 %23, %16
  %25 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 0, i32 0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = xor i32 %26, %18
  %28 = or i32 %27, %24
  %29 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 0, i32 0, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = xor i32 %30, %20
  %32 = or i32 %28, %31
  %33 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 0, i32 0, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = xor i32 %34, %22
  %36 = or i32 %32, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %158, label %38

38:                                               ; preds = %14
  %39 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = xor i32 %40, %16
  %42 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 1, i32 0, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = xor i32 %43, %18
  %45 = or i32 %44, %41
  %46 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 1, i32 0, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = xor i32 %47, %20
  %49 = or i32 %45, %48
  %50 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 1, i32 0, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = xor i32 %51, %22
  %53 = or i32 %49, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %158, label %55

55:                                               ; preds = %38
  %56 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = xor i32 %57, %16
  %59 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 2, i32 0, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = xor i32 %60, %18
  %62 = or i32 %61, %58
  %63 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 2, i32 0, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = xor i32 %64, %20
  %66 = or i32 %62, %65
  %67 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 2, i32 0, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = xor i32 %68, %22
  %70 = or i32 %66, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %158, label %72

72:                                               ; preds = %55
  %73 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = xor i32 %74, %16
  %76 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 3, i32 0, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = xor i32 %77, %18
  %79 = or i32 %78, %75
  %80 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 3, i32 0, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = xor i32 %81, %20
  %83 = or i32 %79, %82
  %84 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 3, i32 0, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = xor i32 %85, %22
  %87 = or i32 %83, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %158, label %89

89:                                               ; preds = %72
  %90 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 4
  %91 = load i32, ptr %90, align 4
  %92 = xor i32 %91, %16
  %93 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 4, i32 0, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = xor i32 %94, %18
  %96 = or i32 %95, %92
  %97 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 4, i32 0, i32 0, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = xor i32 %98, %20
  %100 = or i32 %96, %99
  %101 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 4, i32 0, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = xor i32 %102, %22
  %104 = or i32 %100, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %158, label %106

106:                                              ; preds = %89
  %107 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 5
  %108 = load i32, ptr %107, align 4
  %109 = xor i32 %108, %16
  %110 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 5, i32 0, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = xor i32 %111, %18
  %113 = or i32 %112, %109
  %114 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 5, i32 0, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = xor i32 %115, %20
  %117 = or i32 %113, %116
  %118 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 5, i32 0, i32 0, i32 3
  %119 = load i32, ptr %118, align 4
  %120 = xor i32 %119, %22
  %121 = or i32 %117, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %158, label %123

123:                                              ; preds = %106
  %124 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 6
  %125 = load i32, ptr %124, align 4
  %126 = xor i32 %125, %16
  %127 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 6, i32 0, i32 0, i32 1
  %128 = load i32, ptr %127, align 4
  %129 = xor i32 %128, %18
  %130 = or i32 %129, %126
  %131 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 6, i32 0, i32 0, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = xor i32 %132, %20
  %134 = or i32 %130, %133
  %135 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 6, i32 0, i32 0, i32 3
  %136 = load i32, ptr %135, align 4
  %137 = xor i32 %136, %22
  %138 = or i32 %134, %137
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %158, label %140

140:                                              ; preds = %123
  %141 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 7
  %142 = load i32, ptr %141, align 4
  %143 = xor i32 %142, %16
  %144 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 7, i32 0, i32 0, i32 1
  %145 = load i32, ptr %144, align 4
  %146 = xor i32 %145, %18
  %147 = or i32 %146, %143
  %148 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 7, i32 0, i32 0, i32 2
  %149 = load i32, ptr %148, align 4
  %150 = xor i32 %149, %20
  %151 = or i32 %147, %150
  %152 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 7, i32 0, i32 0, i32 3
  %153 = load i32, ptr %152, align 4
  %154 = xor i32 %153, %22
  %155 = or i32 %151, %154
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %140
  br label %158

158:                                              ; preds = %157, %140, %123, %106, %89, %72, %55, %38, %14
  %159 = phi i1 [ true, %157 ], [ false, %140 ], [ false, %123 ], [ false, %106 ], [ false, %89 ], [ false, %72 ], [ false, %55 ], [ false, %38 ], [ false, %14 ]
  %160 = phi i32 [ 8, %157 ], [ 7, %140 ], [ 6, %123 ], [ 5, %106 ], [ 4, %89 ], [ 3, %72 ], [ 2, %55 ], [ 1, %38 ], [ 0, %14 ]
  %161 = phi i1 [ false, %157 ], [ true, %140 ], [ true, %123 ], [ true, %106 ], [ true, %89 ], [ true, %72 ], [ true, %55 ], [ true, %38 ], [ true, %14 ]
  switch i32 %1, label %195 [
    i32 1, label %162
    i32 2, label %174
  ]

162:                                              ; preds = %158
  br i1 %159, label %163, label %195

163:                                              ; preds = %162
  %164 = getelementptr inbounds %struct.brcmf_if, ptr %5, i32 0, i32 14
  %165 = load i8, ptr %164, align 4
  %166 = icmp ult i8 %165, 8
  br i1 %166, label %170, label %167

167:                                              ; preds = %163
  %168 = getelementptr i8, ptr %5, i32 100
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 4 dereferenceable(112) %15, ptr noundef align 4 dereferenceable(112) %168, i32 112, i1 false)
  %169 = getelementptr %struct.brcmf_if, ptr %5, i32 0, i32 13, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %169, ptr noundef align 8 dereferenceable(16) %2, i32 16, i1 false)
  br label %195

170:                                              ; preds = %163
  %171 = zext i8 %165 to i32
  %172 = add nuw nsw i8 %165, 1
  store i8 %172, ptr %164, align 4
  %173 = getelementptr %struct.in6_addr, ptr %15, i32 %171
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %173, ptr noundef align 8 dereferenceable(16) %2, i32 16, i1 false)
  br label %195

174:                                              ; preds = %158
  br i1 %161, label %175, label %195

175:                                              ; preds = %174
  %176 = getelementptr inbounds %struct.brcmf_if, ptr %5, i32 0, i32 14
  %177 = load i8, ptr %176, align 4
  %178 = zext i8 %177 to i32
  %179 = add nsw i32 %178, -1
  %180 = icmp slt i32 %160, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %181, %175
  %182 = phi i32 [ %184, %181 ], [ %160, %175 ]
  %183 = getelementptr %struct.in6_addr, ptr %15, i32 %182
  %184 = add nuw nsw i32 %182, 1
  %185 = getelementptr %struct.in6_addr, ptr %15, i32 %184
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %183, ptr noundef align 4 dereferenceable(16) %185, i32 16, i1 false)
  %186 = load i8, ptr %176, align 4
  %187 = zext i8 %186 to i32
  %188 = add nsw i32 %187, -1
  %189 = icmp slt i32 %184, %188
  br i1 %189, label %181, label %190

190:                                              ; preds = %181, %175
  %191 = phi i32 [ %160, %175 ], [ %184, %181 ]
  %192 = getelementptr %struct.in6_addr, ptr %15, i32 %191
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %192, i8 0, i32 16, i1 false)
  %193 = load i8, ptr %176, align 4
  %194 = add i8 %193, -1
  store i8 %194, ptr %176, align 4
  br label %195

195:                                              ; preds = %190, %174, %170, %167, %162, %158
  %196 = getelementptr inbounds %struct.brcmf_if, ptr %5, i32 0, i32 4
  %197 = load ptr, ptr @system_wq, align 4
  %198 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %197, ptr noundef %196) #14
  br label %199

199:                                              ; preds = %195, %7, %3
  %200 = phi i32 [ 1, %195 ], [ 0, %3 ], [ 0, %7 ]
  ret i32 %200
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inet6addr_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_core_bus_reset(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -10228
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.brcmf_bus, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_bus_ops, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.brcmf_bus, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %7(ptr noundef %11) #14
  br label %13

13:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_feat_debugfs_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_net_p2p_open(ptr noundef %0) #1 {
  %2 = tail call i32 @brcmf_cfg80211_up(ptr noundef %0) #14
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_net_p2p_stop(ptr noundef %0) #1 {
  %2 = tail call i32 @brcmf_cfg80211_down(ptr noundef %0) #14
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_net_p2p_start_xmit(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %0, i32 noundef 1) #14
  br label %5

5:                                                ; preds = %4, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bus_reset_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #1 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #14
  store i8 0, ptr %5, align 1, !annotation !12
  %8 = call i32 @kstrtou8_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %5) #14
  %9 = icmp eq i32 %8, 0
  %10 = load i8, ptr %5, align 1
  %11 = icmp eq i8 %10, 1
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 22
  %15 = load ptr, ptr @system_wq, align 4
  %16 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %15, ptr noundef %14) #14
  br label %17

17:                                               ; preds = %13, %4
  %18 = phi i32 [ %2, %13 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #14
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #6

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }

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
!9 = !{i64 446054, i64 2147936025, i64 2147936051, i64 2147936098, i64 2147936120, i64 2147936148, i64 2147936168}
!10 = !{i64 2147950594, i64 2147950620, i64 2147950649, i64 2147950683, i64 2147950714, i64 2147950737}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"auto-init"}
!13 = !{i64 2147948237, i64 2147948263, i64 2147948292, i64 2147948326, i64 2147948357, i64 2147948380}
