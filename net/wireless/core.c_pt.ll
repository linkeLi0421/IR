; ModuleID = '/llk/IR/net/wireless/core.c_pt.bc'
source_filename = "../net/wireless/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_shutdown_all_interfaces:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_shutdown_all_interfaces\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_shutdown_all_interfaces:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wiphy_new_nm:\09\09\09\09\09"
module asm "\09.asciz \09\22wiphy_new_nm\22\09\09\09\09\09"
module asm "__kstrtabns_wiphy_new_nm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wiphy_register:\09\09\09\09\09"
module asm "\09.asciz \09\22wiphy_register\22\09\09\09\09\09"
module asm "__kstrtabns_wiphy_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wiphy_rfkill_start_polling:\09\09\09\09\09"
module asm "\09.asciz \09\22wiphy_rfkill_start_polling\22\09\09\09\09\09"
module asm "__kstrtabns_wiphy_rfkill_start_polling:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wiphy_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22wiphy_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_wiphy_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wiphy_free:\09\09\09\09\09"
module asm "\09.asciz \09\22wiphy_free\22\09\09\09\09\09"
module asm "__kstrtabns_wiphy_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wiphy_rfkill_set_hw_state_reason:\09\09\09\09\09"
module asm "\09.asciz \09\22wiphy_rfkill_set_hw_state_reason\22\09\09\09\09\09"
module asm "__kstrtabns_wiphy_rfkill_set_hw_state_reason:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_unregister_wdev:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_unregister_wdev\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_unregister_wdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_stop_iface:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_stop_iface\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_stop_iface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_register_netdevice:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_register_netdevice\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_register_netdevice:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.90 }
%union.anon.90 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.60, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.60 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cfg80211_registered_device = type { ptr, %struct.list_head, %struct.rfkill_ops, %struct.work_struct, [2 x i8], ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.rb_root, i32, i32, ptr, ptr, ptr, %struct.list_head, i64, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, %struct.delayed_work, %struct.work_struct, i32, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.work_struct, %struct.spinlock, [24 x i8], %struct.wiphy }
%struct.rfkill_ops = type { ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.118, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type {}
%struct.anon.118 = type { i64, i64, i8 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.80, %struct.list_head, %struct.list_head, %union.anon.81 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%union.anon.80 = type { %struct.list_head }
%union.anon.81 = type { %struct.hlist_node }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.95, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.119, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.95 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.119 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.cfg80211_pmsr_capabilities = type { i32, i8, %struct.anon.117 }
%struct.anon.117 = type { i32, i32, i8, i8, i8 }
%struct.wiphy_coalesce_support = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.116 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.116 = type { ptr, i32 }
%struct.wiphy_vendor_command = type { %struct.nl80211_vendor_cmd_info, i32, ptr, ptr, ptr, i32 }
%struct.nl80211_vendor_cmd_info = type { i32, i32 }
%struct.wiphy_iftype_ext_capab = type { i32, ptr, ptr, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.cfg80211_wowlan = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, ptr }
%struct.cfg80211_pkt_pattern = type { ptr, ptr, i32, i32 }
%struct.cfg80211_internal_bss = type { %struct.list_head, %struct.list_head, %struct.rb_node, i64, i32, i32, %struct.atomic_t, i64, [6 x i8], %struct.cfg80211_bss }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.cfg80211_event = type { %struct.list_head, i32, %union.anon.123 }
%union.anon.123 = type { %struct.cfg80211_connect_resp_params }
%struct.cfg80211_connect_resp_params = type { i32, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params, i32 }
%struct.cfg80211_fils_resp_params = type { ptr, i32, i8, i16, ptr, i32, ptr }

@__UNIQUE_ID_author685 = internal constant [21 x i8] c"author=Johannes Berg\00", section ".modinfo", align 1
@__UNIQUE_ID_license686 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description687 = internal constant [43 x i8] c"description=wireless configuration support\00", section ".modinfo", align 1
@__UNIQUE_ID_alias688 = internal constant [40 x i8] c"alias=net-pf-16-proto-16-family-nl80211\00", section ".modinfo", align 1
@cfg80211_rdev_list = dso_local global %struct.list_head { ptr @cfg80211_rdev_list, ptr @cfg80211_rdev_list }, align 4
@__param_str_cfg80211_disable_40mhz_24ghz = internal constant [29 x i8] c"cfg80211_disable_40mhz_24ghz\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@cfg80211_disable_40mhz_24ghz = internal global i8 0, align 1
@__param_cfg80211_disable_40mhz_24ghz = internal constant %struct.kernel_param { ptr @__param_str_cfg80211_disable_40mhz_24ghz, ptr @__this_module, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.90 { ptr @cfg80211_disable_40mhz_24ghz } }, section "__param", align 4
@__UNIQUE_ID_cfg80211_disable_40mhz_24ghztype689 = internal constant [43 x i8] c"parmtype=cfg80211_disable_40mhz_24ghz:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_cfg80211_disable_40mhz_24ghz690 = internal constant [75 x i8] c"parm=cfg80211_disable_40mhz_24ghz:Disable 40MHz support in the 2.4GHz band\00", section ".modinfo", align 1
@cfg80211_rdev_by_wiphy_idx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [20 x i8] c"net/wireless/core.c\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@wiphy_idx_to_wiphy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cfg80211_dev_rename.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"wlan%d\00", align 1
@cfg80211_shutdown_all_interfaces.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_cfg80211_shutdown_all_interfaces = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_shutdown_all_interfaces = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_shutdown_all_interfaces = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_shutdown_all_interfaces to i32), ptr @__kstrtab_cfg80211_shutdown_all_interfaces, ptr @__kstrtabns_cfg80211_shutdown_all_interfaces }, section "___ksymtab_gpl+cfg80211_shutdown_all_interfaces", align 4
@cfg80211_destroy_ifaces.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@wiphy_new_nm.wiphy_counter = internal global %struct.atomic_t zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"phy%d\00", align 1
@wiphy_new_nm.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"&rdev->wiphy.mtx\00", align 1
@ieee80211_class = external dso_local global %struct.class, align 4
@init_net = external dso_local global %struct.net, align 64
@wiphy_new_nm.__key.6 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"&rdev->dev_wait\00", align 1
@__kstrtab_wiphy_new_nm = external dso_local constant [0 x i8], align 1
@__kstrtabns_wiphy_new_nm = external dso_local constant [0 x i8], align 1
@__ksymtab_wiphy_new_nm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wiphy_new_nm to i32), ptr @__kstrtab_wiphy_new_nm, ptr @__kstrtabns_wiphy_new_nm }, section "___ksymtab+wiphy_new_nm", align 4
@cfg80211_rdev_list_generation = dso_local local_unnamed_addr global i32 0, align 4
@ieee80211_debugfs_dir = internal unnamed_addr global ptr null, align 4
@__kstrtab_wiphy_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_wiphy_register = external dso_local constant [0 x i8], align 1
@__ksymtab_wiphy_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wiphy_register to i32), ptr @__kstrtab_wiphy_register, ptr @__kstrtabns_wiphy_register }, section "___ksymtab+wiphy_register", align 4
@__kstrtab_wiphy_rfkill_start_polling = external dso_local constant [0 x i8], align 1
@__kstrtabns_wiphy_rfkill_start_polling = external dso_local constant [0 x i8], align 1
@__ksymtab_wiphy_rfkill_start_polling = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wiphy_rfkill_start_polling to i32), ptr @__kstrtab_wiphy_rfkill_start_polling, ptr @__kstrtabns_wiphy_rfkill_start_polling }, section "___ksymtab+wiphy_rfkill_start_polling", align 4
@__kstrtab_wiphy_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_wiphy_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_wiphy_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wiphy_unregister to i32), ptr @__kstrtab_wiphy_unregister, ptr @__kstrtabns_wiphy_unregister }, section "___ksymtab+wiphy_unregister", align 4
@__kstrtab_wiphy_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_wiphy_free = external dso_local constant [0 x i8], align 1
@__ksymtab_wiphy_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wiphy_free to i32), ptr @__kstrtab_wiphy_free, ptr @__kstrtabns_wiphy_free }, section "___ksymtab+wiphy_free", align 4
@__kstrtab_wiphy_rfkill_set_hw_state_reason = external dso_local constant [0 x i8], align 1
@__kstrtabns_wiphy_rfkill_set_hw_state_reason = external dso_local constant [0 x i8], align 1
@__ksymtab_wiphy_rfkill_set_hw_state_reason = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wiphy_rfkill_set_hw_state_reason to i32), ptr @__kstrtab_wiphy_rfkill_set_hw_state_reason, ptr @__kstrtabns_wiphy_rfkill_set_hw_state_reason }, section "___ksymtab+wiphy_rfkill_set_hw_state_reason", align 4
@__kstrtab_cfg80211_unregister_wdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_unregister_wdev = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_unregister_wdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_unregister_wdev to i32), ptr @__kstrtab_cfg80211_unregister_wdev, ptr @__kstrtabns_cfg80211_unregister_wdev }, section "___ksymtab+cfg80211_unregister_wdev", align 4
@cfg80211_wq = dso_local local_unnamed_addr global ptr null, align 4
@__kstrtab_cfg80211_stop_iface = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_stop_iface = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_stop_iface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_stop_iface to i32), ptr @__kstrtab_cfg80211_stop_iface, ptr @__kstrtabns_cfg80211_stop_iface }, section "___ksymtab+cfg80211_stop_iface", align 4
@cfg80211_init_wdev.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"&wdev->mtx\00", align 1
@cfg80211_register_wdev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"phy80211\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"\013cfg80211: failed to add phy80211 symlink to netdev!\0A\00", align 1
@cfg80211_register_netdevice.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_cfg80211_register_netdevice = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_register_netdevice = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_register_netdevice = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_register_netdevice to i32), ptr @__kstrtab_cfg80211_register_netdevice, ptr @__kstrtabns_cfg80211_register_netdevice }, section "___ksymtab+cfg80211_register_netdevice", align 4
@cfg80211_dev_check_name.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"phy%d%n\00", align 1
@__tracepoint_rdev_stop_p2p_device = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_rdev_return_void = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_stop_nan = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_del_virtual_intf = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_return_int = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__tracepoint_rdev_rfkill_poll = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_set_wakeup = external dso_local global %struct.tracepoint, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@_cfg80211_unregister_wdev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"net/wireless/core.h\00", align 1
@__tracepoint_cfg80211_stop_iface = external dso_local global %struct.tracepoint, align 4
@cfg80211_pernet_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr null, ptr null, ptr @cfg80211_pernet_exit, ptr null, ptr null, i32 0 }, align 4
@cfg80211_netdev_notifier = internal global %struct.notifier_block { ptr @cfg80211_netdev_notifier_call, ptr null, i32 0 }, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"ieee80211\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"cfg80211\00", align 1
@wiphy_type = internal constant %struct.device_type { ptr @.str.16, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"wlan\00", align 1
@__tracepoint_rdev_set_power_mgmt = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias688, ptr @__UNIQUE_ID_author685, ptr @__UNIQUE_ID_cfg80211_disable_40mhz_24ghz690, ptr @__UNIQUE_ID_cfg80211_disable_40mhz_24ghztype689, ptr @__UNIQUE_ID_description687, ptr @__UNIQUE_ID_license686, ptr @__ksymtab_cfg80211_register_netdevice, ptr @__ksymtab_cfg80211_shutdown_all_interfaces, ptr @__ksymtab_cfg80211_stop_iface, ptr @__ksymtab_cfg80211_unregister_wdev, ptr @__ksymtab_wiphy_free, ptr @__ksymtab_wiphy_new_nm, ptr @__ksymtab_wiphy_register, ptr @__ksymtab_wiphy_rfkill_set_hw_state_reason, ptr @__ksymtab_wiphy_rfkill_start_polling, ptr @__ksymtab_wiphy_unregister, ptr @__param_cfg80211_disable_40mhz_24ghz], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cfg80211_rdev_by_wiphy_idx(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @rtnl_is_locked() #16
  %3 = icmp eq i32 %2, 0
  %4 = load i1, ptr @cfg80211_rdev_by_wiphy_idx.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %1
  store i1 true, ptr @cfg80211_rdev_by_wiphy_idx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 61) #16
  br label %8

8:                                                ; preds = %7, %1
  br label %9

9:                                                ; preds = %13, %8
  %10 = phi ptr [ %11, %13 ], [ @cfg80211_rdev_list, %8 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @cfg80211_rdev_list
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %11, i32 48
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %0
  br i1 %16, label %17, label %9

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %11, i32 -4
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi ptr [ %18, %17 ], [ null, %9 ]
  ret ptr %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_wiphy_idx(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #16, !srcloc !9
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -492
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @wiphy_idx_to_wiphy(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @rtnl_is_locked() #16
  %3 = icmp eq i32 %2, 0
  %4 = load i1, ptr @wiphy_idx_to_wiphy.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %1
  store i1 true, ptr @wiphy_idx_to_wiphy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 84) #16
  br label %8

8:                                                ; preds = %7, %1
  %9 = tail call i32 @rtnl_is_locked() #16
  %10 = icmp eq i32 %9, 0
  %11 = load i1, ptr @cfg80211_rdev_by_wiphy_idx.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %8
  store i1 true, ptr @cfg80211_rdev_by_wiphy_idx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 61) #16
  br label %15

15:                                               ; preds = %14, %8
  br label %16

16:                                               ; preds = %20, %15
  %17 = phi ptr [ %18, %20 ], [ @cfg80211_rdev_list, %15 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @cfg80211_rdev_list
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %18, i32 48
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %0
  br i1 %23, label %24, label %16

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %18, i32 -4
  br label %26

26:                                               ; preds = %24, %16
  %27 = phi ptr [ %25, %24 ], [ null, %16 ]
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %27, i32 0, i32 48
  %30 = select i1 %28, ptr null, ptr %29
  ret ptr %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_dev_rename(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @rtnl_is_locked() #16
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @cfg80211_dev_rename.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %2
  store i1 true, ptr @cfg80211_dev_rename.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 131, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 131) #16
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 56, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 56
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %15, %13 ], [ %11, %9 ]
  %18 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = tail call fastcc i32 @cfg80211_dev_check_name(ptr noundef %0, ptr noundef %1)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 56
  %25 = tail call i32 @device_rename(ptr noundef %24, ptr noundef %1) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 58
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  %32 = or i1 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  %36 = tail call ptr @debugfs_rename(ptr noundef %35, ptr noundef nonnull %29, ptr noundef %35, ptr noundef %1) #16
  br label %37

37:                                               ; preds = %33, %27
  tail call void @nl80211_notify_wiphy(ptr noundef %0, i32 noundef 3) #16
  br label %38

38:                                               ; preds = %37, %23, %20, %16
  %39 = phi i32 [ 0, %37 ], [ 0, %16 ], [ %21, %20 ], [ %25, %23 ]
  ret i32 %39
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cfg80211_dev_check_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 -1, ptr %4, align 4
  %5 = tail call i32 @rtnl_is_locked() #16
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @cfg80211_dev_check_name.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %2
  store i1 true, ptr @cfg80211_dev_check_name.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 98) #16
  br label %11

11:                                               ; preds = %10, %2
  %12 = tail call i32 @strlen(ptr noundef %1)
  %13 = icmp ugt i32 %12, 64
  br i1 %13, label %50, label %14

14:                                               ; preds = %11
  %15 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %16 = load i32, ptr %4, align 4
  %17 = call i32 @strlen(ptr noundef %1)
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load i32, ptr %3, align 4
  %21 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %24, %19
  %25 = phi i32 [ %27, %24 ], [ %20, %19 ]
  %26 = phi i32 [ %30, %24 ], [ 1, %19 ]
  %27 = sdiv i32 %25, 10
  %28 = add i32 %25, 9
  %29 = icmp ult i32 %28, 19
  %30 = add i32 %26, 1
  br i1 %29, label %31, label %24

31:                                               ; preds = %24
  store i32 %27, ptr %3, align 4
  %32 = add i32 %26, 3
  %33 = icmp eq i32 %16, %32
  br i1 %33, label %50, label %34

34:                                               ; preds = %31, %19, %14
  br label %35

35:                                               ; preds = %46, %34
  %36 = phi ptr [ %37, %46 ], [ @cfg80211_rdev_list, %34 ]
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, @cfg80211_rdev_list
  br i1 %38, label %50, label %39

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %37, i32 848
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %37, i32 804
  %45 = load ptr, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi ptr [ %45, %43 ], [ %41, %39 ]
  %48 = call i32 @strcmp(ptr noundef %1, ptr noundef %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %35

50:                                               ; preds = %46, %35, %31, %11
  %51 = phi i32 [ -22, %11 ], [ -22, %31 ], [ 0, %35 ], [ -22, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_notify_wiphy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_switch_netns(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 11
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %97, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 61
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %72, label %14

11:                                               ; preds = %35
  %12 = load ptr, ptr %8, align 4
  %13 = icmp eq ptr %12, %8
  br i1 %13, label %72, label %62

14:                                               ; preds = %35, %7
  %15 = phi ptr [ %36, %35 ], [ %9, %7 ]
  %16 = getelementptr i8, ptr %15, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 23
  %21 = load i64, ptr %20, align 16
  %22 = and i64 %21, -8193
  store i64 %22, ptr %20, align 16
  %23 = load ptr, ptr %16, align 4
  %24 = tail call i32 @__dev_change_net_namespace(ptr noundef %23, ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef 0) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %8
  br i1 %29, label %97, label %38

30:                                               ; preds = %19
  %31 = load ptr, ptr %16, align 4
  %32 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 23
  %33 = load i64, ptr %32, align 16
  %34 = or i64 %33, 8192
  store i64 %34, ptr %32, align 16
  br label %35

35:                                               ; preds = %30, %14
  %36 = load ptr, ptr %15, align 4
  %37 = icmp eq ptr %36, %8
  br i1 %37, label %11, label %14

38:                                               ; preds = %57, %26
  %39 = phi ptr [ %60, %57 ], [ %28, %26 ]
  %40 = phi i32 [ %58, %57 ], [ %24, %26 ]
  %41 = getelementptr i8, ptr %39, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %57, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 23
  %46 = load i64, ptr %45, align 16
  %47 = and i64 %46, -8193
  store i64 %47, ptr %45, align 16
  %48 = load ptr, ptr %41, align 4
  %49 = tail call i32 @__dev_change_net_namespace(ptr noundef %48, ptr noundef nonnull @init_net, ptr noundef nonnull @.str.2, i32 noundef 0) #16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51, !prof !11

51:                                               ; preds = %44
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 186, i32 noundef 9, ptr noundef null) #16
  br label %52

52:                                               ; preds = %51, %44
  %53 = load ptr, ptr %41, align 4
  %54 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 23
  %55 = load i64, ptr %54, align 16
  %56 = or i64 %55, 8192
  store i64 %56, ptr %54, align 16
  br label %57

57:                                               ; preds = %52, %38
  %58 = phi i32 [ %49, %52 ], [ %40, %38 ]
  %59 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %8
  br i1 %61, label %97, label %38

62:                                               ; preds = %69, %11
  %63 = phi ptr [ %70, %69 ], [ %12, %11 ]
  %64 = getelementptr i8, ptr %63, i32 8
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = getelementptr i8, ptr %63, i32 -8
  tail call void @nl80211_notify_iface(ptr noundef %0, ptr noundef %68, i32 noundef 8) #16
  br label %69

69:                                               ; preds = %67, %62
  %70 = load ptr, ptr %63, align 4
  %71 = icmp eq ptr %70, %8
  br i1 %71, label %72, label %62

72:                                               ; preds = %69, %11, %7
  tail call void @nl80211_notify_wiphy(ptr noundef %0, i32 noundef 4) #16
  %73 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 56
  %74 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 56, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load ptr, ptr %73, align 4
  br label %79

79:                                               ; preds = %77, %72
  %80 = phi ptr [ %78, %77 ], [ %75, %72 ]
  %81 = tail call i32 @device_rename(ptr noundef %73, ptr noundef %80) #16
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83, !prof !11

83:                                               ; preds = %79
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 203, i32 noundef 9, ptr noundef null) #16
  br label %84

84:                                               ; preds = %83, %79
  tail call void @nl80211_notify_wiphy(ptr noundef %0, i32 noundef 3) #16
  %85 = load ptr, ptr %8, align 4
  %86 = icmp eq ptr %85, %8
  br i1 %86, label %97, label %87

87:                                               ; preds = %94, %84
  %88 = phi ptr [ %95, %94 ], [ %85, %84 ]
  %89 = getelementptr i8, ptr %88, i32 8
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = getelementptr i8, ptr %88, i32 -8
  tail call void @nl80211_notify_iface(ptr noundef %0, ptr noundef %93, i32 noundef 7) #16
  br label %94

94:                                               ; preds = %92, %87
  %95 = load ptr, ptr %88, align 4
  %96 = icmp eq ptr %95, %8
  br i1 %96, label %97, label %87

97:                                               ; preds = %94, %84, %57, %26, %2
  %98 = phi i32 [ -95, %2 ], [ 0, %84 ], [ %24, %26 ], [ 0, %94 ], [ %58, %57 ]
  ret i32 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_notify_iface(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_stop_p2p_device(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %7, label %6, !prof !11

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef null) #16
  br label %84

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %84, label %20

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 9
  %18 = load i8, ptr %17, align 1, !range !12
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %84, label %20

20:                                               ; preds = %16, %11
  %21 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_stop_p2p_device, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = tail call ptr @llvm.thread.pointer() #16
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 5
  %29 = getelementptr i32, ptr @__cpu_online_mask, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %27, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %36 = tail call i32 @__traceiter_rdev_stop_p2p_device(ptr noundef null, ptr noundef %21, ptr noundef %1) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  br label %37

37:                                               ; preds = %35, %24, %20
  %38 = load ptr, ptr %0, align 32
  %39 = getelementptr inbounds %struct.cfg80211_ops, ptr %38, i32 0, i32 78
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef %21, ptr noundef %1) #16
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_void, i32 0, i32 1), align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = tail call ptr @llvm.thread.pointer() #16
  %45 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = lshr i32 %46, 5
  %48 = getelementptr i32, ptr @__cpu_online_mask, i32 %47
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %46, 31
  %51 = shl nuw i32 1, %50
  %52 = and i32 %51, %49
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %43
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %55 = tail call i32 @__traceiter_rdev_return_void(ptr noundef null, ptr noundef %21) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  br label %56

56:                                               ; preds = %54, %43, %37
  %57 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 9
  store i8 0, ptr %57, align 1
  %58 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 10
  %59 = load i32, ptr %58, align 32
  %60 = add i32 %59, -1
  store i32 %60, ptr %58, align 32
  %61 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 22
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %84, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %62, i32 0, i32 10
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, %1
  br i1 %67, label %68, label %84

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %62, i32 0, i32 17
  %70 = load i8, ptr %69, align 8, !range !12
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 23
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %74, i32 0, i32 17
  %78 = load i8, ptr %77, align 8, !range !12
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %83, !prof !8

80:                                               ; preds = %76, %72
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef null) #16
  %81 = load ptr, ptr %61, align 8
  %82 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %81, i32 0, i32 16, i32 2
  store i8 1, ptr %82, align 2
  br label %83

83:                                               ; preds = %80, %76, %68
  tail call void @___cfg80211_scan_done(ptr noundef %0, i1 noundef zeroext false) #16
  br label %84

84:                                               ; preds = %83, %64, %56, %16, %11, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @___cfg80211_scan_done(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_stop_nan(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 12
  br i1 %5, label %7, label %6, !prof !11

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef null) #16
  br label %61

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %61, label %20

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 9
  %18 = load i8, ptr %17, align 1, !range !12
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %61, label %20

20:                                               ; preds = %16, %11
  %21 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_stop_nan, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = tail call ptr @llvm.thread.pointer() #16
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 5
  %29 = getelementptr i32, ptr @__cpu_online_mask, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %27, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  %36 = tail call i32 @__traceiter_rdev_stop_nan(ptr noundef null, ptr noundef %21, ptr noundef %1) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !18
  br label %37

37:                                               ; preds = %35, %24, %20
  %38 = load ptr, ptr %0, align 32
  %39 = getelementptr inbounds %struct.cfg80211_ops, ptr %38, i32 0, i32 94
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef %21, ptr noundef %1) #16
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_void, i32 0, i32 1), align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = tail call ptr @llvm.thread.pointer() #16
  %45 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = lshr i32 %46, 5
  %48 = getelementptr i32, ptr @__cpu_online_mask, i32 %47
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %46, 31
  %51 = shl nuw i32 1, %50
  %52 = and i32 %51, %49
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %43
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %55 = tail call i32 @__traceiter_rdev_return_void(ptr noundef null, ptr noundef %21) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  br label %56

56:                                               ; preds = %54, %43, %37
  %57 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 9
  store i8 0, ptr %57, align 1
  %58 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 10
  %59 = load i32, ptr %58, align 32
  %60 = add i32 %59, -1
  store i32 %60, ptr %58, align 32
  br label %61

61:                                               ; preds = %56, %16, %11, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_shutdown_all_interfaces(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #16, !srcloc !9
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -544
  %6 = tail call i32 @rtnl_is_locked() #16
  %7 = icmp eq i32 %6, 0
  %8 = load i1, ptr @cfg80211_shutdown_all_interfaces.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %4
  store i1 true, ptr @cfg80211_shutdown_all_interfaces.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 269, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 269) #16
  br label %12

12:                                               ; preds = %11, %4
  %13 = getelementptr i8, ptr %0, i32 752
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %32, label %16

16:                                               ; preds = %29, %12
  %17 = phi ptr [ %30, %29 ], [ %14, %12 ]
  %18 = getelementptr i8, ptr %17, i32 -8
  %19 = getelementptr i8, ptr %17, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  tail call void @dev_close(ptr noundef nonnull %20) #16
  br label %29

23:                                               ; preds = %16
  tail call void @mutex_lock(ptr noundef nonnull %0) #16
  %24 = getelementptr i8, ptr %17, i32 -4
  %25 = load i32, ptr %24, align 4
  switch i32 %25, label %28 [
    i32 10, label %26
    i32 12, label %27
  ]

26:                                               ; preds = %23
  tail call void @cfg80211_stop_p2p_device(ptr noundef %5, ptr noundef %18)
  br label %28

27:                                               ; preds = %23
  tail call void @cfg80211_stop_nan(ptr noundef %5, ptr noundef %18)
  br label %28

28:                                               ; preds = %27, %26, %23
  tail call void @mutex_unlock(ptr noundef nonnull %0) #16
  br label %29

29:                                               ; preds = %28, %22
  %30 = load ptr, ptr %17, align 4
  %31 = icmp eq ptr %30, %13
  br i1 %31, label %32, label %16

32:                                               ; preds = %29, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_destroy_ifaces(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @rtnl_is_locked() #16
  %3 = icmp eq i32 %2, 0
  %4 = load i1, ptr @cfg80211_destroy_ifaces.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %1
  store i1 true, ptr @cfg80211_destroy_ifaces.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 336, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 336) #16
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %10 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 61
  %11 = load ptr, ptr %10, align 16
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %65, label %13

13:                                               ; preds = %63, %8
  %14 = phi ptr [ %16, %63 ], [ %11, %8 ]
  %15 = getelementptr i8, ptr %14, i32 -8
  %16 = load ptr, ptr %14, align 4
  %17 = getelementptr i8, ptr %14, i32 228
  %18 = load i8, ptr %17, align 4, !range !12
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %63, label %20

20:                                               ; preds = %13
  %21 = getelementptr i8, ptr %14, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @dev_close(ptr noundef nonnull %22) #16
  br label %25

25:                                               ; preds = %24, %20
  tail call void @mutex_lock(ptr noundef %9) #16
  %26 = getelementptr i8, ptr %14, i32 28
  tail call void @mutex_lock(ptr noundef %26) #16
  tail call void @__cfg80211_leave(ptr noundef %0, ptr noundef %15) #16
  tail call void @mutex_unlock(ptr noundef %26) #16
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_del_virtual_intf, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = tail call ptr @llvm.thread.pointer() #16
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %41 = tail call i32 @__traceiter_rdev_del_virtual_intf(ptr noundef null, ptr noundef %9, ptr noundef %15) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %42

42:                                               ; preds = %40, %29, %25
  %43 = load ptr, ptr %0, align 32
  %44 = getelementptr inbounds %struct.cfg80211_ops, ptr %43, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %45(ptr noundef %9, ptr noundef %15) #16
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = tail call ptr @llvm.thread.pointer() #16
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = lshr i32 %52, 5
  %54 = getelementptr i32, ptr @__cpu_online_mask, i32 %53
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %52, 31
  %57 = shl nuw i32 1, %56
  %58 = and i32 %57, %55
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %61 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %9, i32 noundef %46) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %62

62:                                               ; preds = %60, %49, %42
  tail call void @mutex_unlock(ptr noundef %9) #16
  br label %63

63:                                               ; preds = %62, %13
  %64 = icmp eq ptr %16, %10
  br i1 %64, label %65, label %13

65:                                               ; preds = %63, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_leave(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %3) #16
  tail call void @__cfg80211_leave(ptr noundef %0, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @wiphy_new_nm(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %11, %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 421, i32 noundef 9, ptr noundef null) #16
  br label %16

16:                                               ; preds = %15, %11, %3
  %17 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 39
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 40
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 41
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 42
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33, !prof !8

32:                                               ; preds = %28, %24, %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 422, i32 noundef 9, ptr noundef null) #16
  br label %33

33:                                               ; preds = %32, %28, %16
  %34 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 43
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 45
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42, !prof !8

41:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 423, i32 noundef 9, ptr noundef null) #16
  br label %42

42:                                               ; preds = %41, %37, %33
  %43 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 46
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 47
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51, !prof !8

50:                                               ; preds = %46
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 424, i32 noundef 9, ptr noundef null) #16
  br label %51

51:                                               ; preds = %50, %46, %42
  %52 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60, !prof !8

59:                                               ; preds = %55
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 425, i32 noundef 9, ptr noundef null) #16
  br label %60

60:                                               ; preds = %59, %55, %51
  %61 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 15
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 16
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %69, !prof !8

68:                                               ; preds = %64
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 426, i32 noundef 9, ptr noundef null) #16
  br label %69

69:                                               ; preds = %68, %64, %60
  %70 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 20
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 21
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %78, !prof !8

77:                                               ; preds = %73
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 427, i32 noundef 9, ptr noundef null) #16
  br label %78

78:                                               ; preds = %77, %73, %69
  %79 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 29
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 30
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %87, !prof !8

86:                                               ; preds = %82
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 428, i32 noundef 9, ptr noundef null) #16
  br label %87

87:                                               ; preds = %86, %82, %78
  %88 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 77
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 78
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %96, !prof !8

95:                                               ; preds = %91
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 429, i32 noundef 9, ptr noundef null) #16
  br label %96

96:                                               ; preds = %95, %91, %87
  %97 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 12
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 14
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %105, !prof !8

104:                                              ; preds = %100
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 430, i32 noundef 9, ptr noundef null) #16
  br label %105

105:                                              ; preds = %104, %100, %96
  %106 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 31
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 32
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %114, !prof !8

113:                                              ; preds = %109
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 431, i32 noundef 9, ptr noundef null) #16
  br label %114

114:                                              ; preds = %113, %109, %105
  %115 = load ptr, ptr %0, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %122, !prof !8

121:                                              ; preds = %117
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 432, i32 noundef 9, ptr noundef null) #16
  br label %122

122:                                              ; preds = %121, %117, %114
  %123 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 69
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 70
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %131, !prof !8

130:                                              ; preds = %126
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 433, i32 noundef 9, ptr noundef null) #16
  br label %131

131:                                              ; preds = %130, %126, %122
  %132 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 58
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 59
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %140, !prof !8

139:                                              ; preds = %135
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 434, i32 noundef 9, ptr noundef null) #16
  br label %140

140:                                              ; preds = %139, %135, %131
  %141 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 91
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %149, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 92
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %149, !prof !8

148:                                              ; preds = %144
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 435, i32 noundef 9, ptr noundef null) #16
  br label %149

149:                                              ; preds = %148, %144, %140
  %150 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 89
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %158, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.cfg80211_ops, ptr %0, i32 0, i32 90
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %158, !prof !8

157:                                              ; preds = %153
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 436, i32 noundef 9, ptr noundef null) #16
  br label %158

158:                                              ; preds = %157, %153, %149
  %159 = add i32 %1, 1408
  %160 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %159, i32 noundef 3520) #17
  %161 = icmp eq ptr %160, null
  br i1 %161, label %292, label %162

162:                                              ; preds = %158
  store ptr %0, ptr %160, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @wiphy_new_nm.wiphy_counter) #16, !srcloc !24
  %163 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @wiphy_new_nm.wiphy_counter, ptr nonnull @wiphy_new_nm.wiphy_counter, i32 1, ptr nonnull elementtype(i32) @wiphy_new_nm.wiphy_counter) #16, !srcloc !25
  %164 = extractvalue { i32, i32 } %163, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  %165 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 7
  store i32 %164, ptr %165, align 4
  %166 = icmp slt i32 %164, 0
  br i1 %166, label %167, label %169, !prof !8

167:                                              ; preds = %162
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @wiphy_new_nm.wiphy_counter) #16, !srcloc !24
  %168 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @wiphy_new_nm.wiphy_counter, ptr nonnull @wiphy_new_nm.wiphy_counter, i32 1, ptr nonnull elementtype(i32) @wiphy_new_nm.wiphy_counter) #16, !srcloc !27
  tail call void @kfree(ptr noundef nonnull %160) #16
  br label %292

169:                                              ; preds = %162
  %170 = add nsw i32 %164, -1
  store i32 %170, ptr %165, align 4
  %171 = icmp eq ptr %2, null
  br i1 %171, label %183, label %172

172:                                              ; preds = %169
  %173 = load i8, ptr %2, align 1
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %172
  tail call void @rtnl_lock() #16
  %176 = tail call fastcc i32 @cfg80211_dev_check_name(ptr noundef nonnull %160, ptr noundef nonnull %2)
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  tail call void @rtnl_unlock() #16
  br label %183

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 48, i32 56
  %181 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %180, ptr noundef nonnull @.str.3, ptr noundef nonnull %2) #16
  tail call void @rtnl_unlock() #16
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %179, %178, %172, %169
  %184 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 48, i32 56
  %185 = load i32, ptr %165, align 4
  %186 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %184, ptr noundef nonnull @.str.4, i32 noundef %185) #16
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  tail call void @kfree(ptr noundef nonnull %160) #16
  br label %292

189:                                              ; preds = %183, %179
  %190 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 48
  tail call void @__mutex_init(ptr noundef %190, ptr noundef nonnull @.str.5, ptr noundef nonnull @wiphy_new_nm.__key) #16
  %191 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 48, i32 61
  store volatile ptr %191, ptr %191, align 16
  %192 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 48, i32 61, i32 1
  store ptr %191, ptr %192, align 4
  %193 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 12
  store volatile ptr %193, ptr %193, align 16
  %194 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 12, i32 1
  store ptr %193, ptr %194, align 4
  %195 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 13
  store i32 0, ptr %195, align 8
  %196 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 17
  store i32 0, ptr %196, align 16
  %197 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 18
  store volatile ptr %197, ptr %197, align 4
  %198 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 18, i32 1
  store ptr %197, ptr %198, align 8
  %199 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 25
  store volatile ptr %199, ptr %199, align 4
  %200 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 25, i32 1
  store ptr %199, ptr %200, align 8
  %201 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 27
  store i32 -32, ptr %201, align 8
  %202 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 27, i32 1
  store volatile ptr %202, ptr %202, align 4
  %203 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 27, i32 1, i32 1
  store ptr %202, ptr %203, align 16
  %204 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 27, i32 2
  store ptr @__cfg80211_scan_done, ptr %204, align 4
  %205 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 31
  store i32 -32, ptr %205, align 4
  %206 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 31, i32 0, i32 1
  store volatile ptr %206, ptr %206, align 32
  %207 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 31, i32 0, i32 1, i32 1
  store ptr %206, ptr %207, align 4
  %208 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 31, i32 0, i32 2
  store ptr @cfg80211_dfs_channels_update_work, ptr %208, align 8
  %209 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 31, i32 1
  tail call void @init_timer_key(ptr noundef %209, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #16
  %210 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 48, i32 56
  tail call void @device_initialize(ptr noundef %210) #16
  %211 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 48, i32 56, i32 31
  store ptr @ieee80211_class, ptr %211, align 4
  %212 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 48, i32 56, i32 7
  store ptr %160, ptr %212, align 4
  %213 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 48, i32 56, i32 11, i32 1
  %214 = load i16, ptr %213, align 4
  %215 = and i16 %214, 8
  %216 = icmp eq i16 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %189
  %218 = or i16 %214, 2
  store i16 %218, ptr %213, align 4
  br label %219

219:                                              ; preds = %217, %189
  %220 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 38
  store i32 -32, ptr %220, align 4
  %221 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 38, i32 1
  store volatile ptr %221, ptr %221, align 16
  %222 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 38, i32 1, i32 1
  store ptr %221, ptr %222, align 4
  %223 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 38, i32 2
  store ptr @cfg80211_destroy_iface_wk, ptr %223, align 8
  %224 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 39
  store i32 -32, ptr %224, align 4
  %225 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 39, i32 1
  store volatile ptr %225, ptr %225, align 64
  %226 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 39, i32 1, i32 1
  store ptr %225, ptr %226, align 4
  %227 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 39, i32 2
  store ptr @cfg80211_sched_scan_stop_wk, ptr %227, align 8
  %228 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 40
  store i32 -32, ptr %228, align 4
  %229 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 40, i32 1
  store volatile ptr %229, ptr %229, align 16
  %230 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 40, i32 1, i32 1
  store ptr %229, ptr %230, align 4
  %231 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 40, i32 2
  store ptr @cfg80211_sched_scan_results_wk, ptr %231, align 8
  %232 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 42
  store i32 -32, ptr %232, align 8
  %233 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 42, i32 1
  store volatile ptr %233, ptr %233, align 4
  %234 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 42, i32 1, i32 1
  store ptr %233, ptr %234, align 64
  %235 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 42, i32 2
  store ptr @cfg80211_propagate_radar_detect_wk, ptr %235, align 4
  %236 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 44
  store i32 -32, ptr %236, align 4
  %237 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 44, i32 1
  store volatile ptr %237, ptr %237, align 8
  %238 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 44, i32 1, i32 1
  store ptr %237, ptr %238, align 4
  %239 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 44, i32 2
  store ptr @cfg80211_propagate_cac_done_wk, ptr %239, align 16
  %240 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 45
  store i32 -32, ptr %240, align 4
  %241 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 45, i32 1
  store volatile ptr %241, ptr %241, align 8
  %242 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 45, i32 1, i32 1
  store ptr %241, ptr %242, align 4
  %243 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 45, i32 2
  store ptr @cfg80211_mgmt_registrations_update_wk, ptr %243, align 64
  %244 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 46
  store i32 0, ptr %244, align 4
  %245 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 48, i32 11
  %246 = load i32, ptr %245, align 8
  %247 = or i32 %246, 16
  store i32 %247, ptr %245, align 8
  %248 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 2
  %249 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 2, i32 2
  store ptr @cfg80211_rfkill_set_block, ptr %249, align 4
  %250 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 48, i32 56, i32 3
  %251 = load ptr, ptr %250, align 4
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %255

253:                                              ; preds = %219
  %254 = load ptr, ptr %210, align 8
  br label %255

255:                                              ; preds = %253, %219
  %256 = phi ptr [ %254, %253 ], [ %251, %219 ]
  %257 = tail call ptr @rfkill_alloc(ptr noundef %256, ptr noundef %210, i32 noundef 1, ptr noundef %248, ptr noundef nonnull %160) #16
  %258 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 48, i32 81
  store ptr %257, ptr %258, align 16
  %259 = icmp eq ptr %257, null
  br i1 %259, label %260, label %261

260:                                              ; preds = %255
  tail call void @put_device(ptr noundef %210) #16
  br label %292

261:                                              ; preds = %255
  %262 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 3
  store i32 -32, ptr %262, align 8
  %263 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 3, i32 1
  store volatile ptr %263, ptr %263, align 4
  %264 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 3, i32 1, i32 1
  store ptr %263, ptr %264, align 32
  %265 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 3, i32 2
  store ptr @cfg80211_rfkill_block_work, ptr %265, align 4
  %266 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 29
  store i32 -32, ptr %266, align 4
  %267 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 29, i32 1
  store volatile ptr %267, ptr %267, align 64
  %268 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 29, i32 1, i32 1
  store ptr %267, ptr %268, align 4
  %269 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 29, i32 2
  store ptr @cfg80211_conn_work, ptr %269, align 8
  %270 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 30
  store i32 -32, ptr %270, align 4
  %271 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 30, i32 1
  store volatile ptr %271, ptr %271, align 16
  %272 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 30, i32 1, i32 1
  store ptr %271, ptr %272, align 4
  %273 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 30, i32 2
  store ptr @cfg80211_event_work, ptr %273, align 8
  %274 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 35
  store i32 -32, ptr %274, align 4
  %275 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 35, i32 1
  store volatile ptr %275, ptr %275, align 8
  %276 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 35, i32 1, i32 1
  store ptr %275, ptr %276, align 4
  %277 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 35, i32 2
  store ptr @cfg80211_background_cac_abort_wk, ptr %277, align 32
  %278 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 34
  store i32 -32, ptr %278, align 8
  %279 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 34, i32 0, i32 1
  store volatile ptr %279, ptr %279, align 4
  %280 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 34, i32 0, i32 1, i32 1
  store ptr %279, ptr %280, align 16
  %281 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 34, i32 0, i32 2
  store ptr @cfg80211_background_cac_done_wk, ptr %281, align 4
  %282 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 34, i32 1
  tail call void @init_timer_key(ptr noundef %282, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #16
  %283 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %283, ptr noundef nonnull @.str.7, ptr noundef nonnull @wiphy_new_nm.__key.6) #16
  %284 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 48, i32 33
  store i8 7, ptr %284, align 4
  %285 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 48, i32 34
  store i8 4, ptr %285, align 1
  %286 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 48, i32 35
  store i32 -1, ptr %286, align 8
  %287 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 48, i32 36
  store i32 -1, ptr %287, align 4
  %288 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 48, i32 37
  store i8 0, ptr %288, align 16
  %289 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 48, i32 69
  store i8 1, ptr %289, align 2
  %290 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 48, i32 24
  store i32 1, ptr %290, align 64
  %291 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %160, i32 0, i32 48, i32 25
  store i32 -1, ptr %291, align 4
  br label %292

292:                                              ; preds = %261, %260, %188, %167, %158
  %293 = phi ptr [ null, %167 ], [ null, %188 ], [ %190, %261 ], [ null, %260 ], [ null, %158 ]
  ret ptr %293
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cfg80211_scan_done(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_dfs_channels_update_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cfg80211_destroy_iface_wk(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -364
  tail call void @rtnl_lock() #16
  tail call void @cfg80211_destroy_ifaces(ptr noundef %2)
  tail call void @rtnl_unlock() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cfg80211_sched_scan_stop_wk(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -380
  tail call void @rtnl_lock() #16
  %3 = getelementptr i8, ptr %0, i32 -232
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %17, label %6

6:                                                ; preds = %15, %1
  %7 = phi ptr [ %8, %15 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %7, i32 -4
  %10 = load i8, ptr %9, align 8, !range !12
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %7, i32 -116
  %14 = tail call i32 @cfg80211_stop_sched_scan_req(ptr noundef %2, ptr noundef %13, i1 noundef zeroext false) #16
  br label %15

15:                                               ; preds = %12, %6
  %16 = icmp eq ptr %8, %3
  br i1 %16, label %17, label %6

17:                                               ; preds = %15, %1
  tail call void @rtnl_unlock() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_scan_results_wk(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cfg80211_propagate_radar_detect_wk(ptr noundef %0) #0 {
  tail call void @rtnl_lock() #16
  %2 = getelementptr i8, ptr %0, i32 104
  %3 = getelementptr i8, ptr %0, i32 -28
  tail call void @regulatory_propagate_dfs_state(ptr noundef %2, ptr noundef %3, i32 noundef 1, i32 noundef 0) #16
  tail call void @rtnl_unlock() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cfg80211_propagate_cac_done_wk(ptr noundef %0) #0 {
  tail call void @rtnl_lock() #16
  %2 = getelementptr i8, ptr %0, i32 60
  %3 = getelementptr i8, ptr %0, i32 -28
  tail call void @regulatory_propagate_dfs_state(ptr noundef %2, ptr noundef %3, i32 noundef 2, i32 noundef 1) #16
  tail call void @rtnl_unlock() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_mgmt_registrations_update_wk(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cfg80211_rfkill_set_block(ptr noundef %0, i1 noundef zeroext %1) #0 {
  br i1 %1, label %3, label %5

3:                                                ; preds = %2
  tail call void @rtnl_lock() #16
  %4 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  tail call void @cfg80211_shutdown_all_interfaces(ptr noundef %4)
  tail call void @rtnl_unlock() #16
  br label %5

5:                                                ; preds = %3, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rfkill_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wiphy_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 56
  tail call void @put_device(ptr noundef %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cfg80211_rfkill_block_work(ptr noundef %0) #0 {
  tail call void @rtnl_lock() #16
  %2 = getelementptr i8, ptr %0, i32 520
  tail call void @cfg80211_shutdown_all_interfaces(ptr noundef %2) #16
  tail call void @rtnl_unlock() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_conn_work(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cfg80211_event_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -204
  %3 = getelementptr i8, ptr %0, i32 340
  tail call void @mutex_lock(ptr noundef %3) #16
  tail call void @cfg80211_process_rdev_events(ptr noundef %2) #16
  tail call void @mutex_unlock(ptr noundef %3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_background_cac_abort_wk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_background_cac_done_wk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wiphy_register(ptr noundef %0) #0 {
  %2 = alloca %struct.regulatory_request, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #16, !srcloc !9
  unreachable

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -544
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 9
  %8 = load i16, ptr %7, align 4
  %9 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 40
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %5
  %13 = load i32, ptr %10, align 4
  %14 = and i32 %13, 24
  %15 = icmp eq i32 %14, 16
  br i1 %15, label %16, label %17, !prof !28

16:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 669, i32 noundef 9, ptr noundef null) #16
  br label %587

17:                                               ; preds = %12
  %18 = icmp eq i32 %13, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.wiphy_wowlan_support, ptr %10, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.wiphy_wowlan_support, ptr %10, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !8

27:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 673, i32 noundef 9, ptr noundef null) #16
  br label %587

28:                                               ; preds = %23, %19, %17, %5
  %29 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 13
  %30 = load i32, ptr %29, align 32
  %31 = and i32 %30, 268435456
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %6, align 32
  %35 = getelementptr inbounds %struct.cfg80211_ops, ptr %34, i32 0, i32 91
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.cfg80211_ops, ptr %34, i32 0, i32 92
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43, !prof !8

42:                                               ; preds = %38, %33
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 678, i32 noundef 9, ptr noundef null) #16
  br label %587

43:                                               ; preds = %38, %28
  %44 = and i16 %8, 4096
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %6, align 32
  %48 = getelementptr inbounds %struct.cfg80211_ops, ptr %47, i32 0, i32 93
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %68, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.cfg80211_ops, ptr %47, i32 0, i32 94
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %68, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.cfg80211_ops, ptr %47, i32 0, i32 95
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.cfg80211_ops, ptr %47, i32 0, i32 96
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 71
  %65 = load i8, ptr %64, align 4
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %69, !prof !8

68:                                               ; preds = %63, %59, %55, %51, %46
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 684, i32 noundef 9, ptr noundef null) #16
  br label %587

69:                                               ; preds = %63, %43
  %70 = and i16 %8, 32
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %73, label %72, !prof !11

72:                                               ; preds = %69
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 687, i32 noundef 9, ptr noundef null) #16
  br label %587

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 77
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %109, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, ptr %75, i32 0, i32 2, i32 4
  %79 = load i8, ptr %78, align 2
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %83, !prof !8

82:                                               ; preds = %77
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 690, i32 noundef 9, ptr noundef null) #16
  br label %587

83:                                               ; preds = %77
  %84 = and i8 %79, 6
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %87, !prof !8

86:                                               ; preds = %83
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 695, i32 noundef 9, ptr noundef null) #16
  br label %587

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, ptr %75, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.cfg80211_pmsr_capabilities, ptr %75, i32 0, i32 2, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96, !prof !8

95:                                               ; preds = %91, %87
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 698, i32 noundef 9, ptr noundef null) #16
  br label %587

96:                                               ; preds = %91
  %97 = icmp ult i32 %89, 32
  br i1 %97, label %99, label %98, !prof !11

98:                                               ; preds = %96
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 705, i32 noundef 9, ptr noundef null) #16
  br label %587

99:                                               ; preds = %96
  %100 = and i8 %79, 96
  %101 = icmp ne i8 %100, 0
  %102 = and i32 %89, 16
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %101, i1 %103, i1 false
  br i1 %104, label %105, label %106, !prof !28

105:                                              ; preds = %99
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 710, i32 noundef 9, ptr noundef null) #16
  br label %587

106:                                              ; preds = %99
  %107 = icmp ult i32 %93, 256
  br i1 %107, label %109, label %108, !prof !11

108:                                              ; preds = %106
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 720, i32 noundef 9, ptr noundef null) #16
  br label %587

109:                                              ; preds = %106, %73
  %110 = and i16 %8, -6111
  %111 = icmp eq i16 %110, 0
  %112 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 12
  %113 = load i32, ptr %112, align 4
  br i1 %111, label %116, label %114

114:                                              ; preds = %109
  %115 = or i32 %113, 64
  store i32 %115, ptr %112, align 4
  br label %116

116:                                              ; preds = %114, %109
  %117 = phi i32 [ %115, %114 ], [ %113, %109 ]
  %118 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 12
  %119 = and i32 %117, 128
  %120 = icmp ne i32 %119, 0
  %121 = and i32 %117, 27
  %122 = icmp ne i32 %121, 0
  %123 = and i1 %120, %122
  br i1 %123, label %124, label %125, !prof !8

124:                                              ; preds = %116
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 745, i32 noundef 9, ptr noundef null) #16
  br label %587

125:                                              ; preds = %116
  %126 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 63
  %127 = load ptr, ptr %126, align 8
  %128 = icmp eq ptr %127, null
  br i1 %128, label %145, label %129

129:                                              ; preds = %125
  %130 = load i32, ptr %127, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.wiphy_coalesce_support, ptr %127, i32 0, i32 2
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %132, %129
  %137 = getelementptr inbounds %struct.wiphy_coalesce_support, ptr %127, i32 0, i32 4
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.wiphy_coalesce_support, ptr %127, i32 0, i32 3
  %142 = load i32, ptr %141, align 4
  %143 = icmp sgt i32 %138, %142
  br i1 %143, label %144, label %145, !prof !8

144:                                              ; preds = %140, %136
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 753, i32 noundef 9, ptr noundef null) #16
  br label %587

145:                                              ; preds = %140, %132, %125
  %146 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 15
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 11
  %151 = load i32, ptr %150, align 8
  %152 = and i32 %151, 131072
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155, !prof !8

154:                                              ; preds = %149
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 757, i32 noundef 9, ptr noundef null) #16
  br label %587

155:                                              ; preds = %149, %145
  %156 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 3
  %157 = load ptr, ptr %156, align 32
  %158 = icmp eq ptr %157, null
  br i1 %158, label %176, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 8
  %161 = load i16, ptr %160, align 2
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %163, label %164, !prof !8

163:                                              ; preds = %159
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 760, i32 noundef 9, ptr noundef null) #16
  br label %587

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 1
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 1, i32 4
  %168 = load i16, ptr %167, align 2
  %169 = zext i16 %168 to i32
  %170 = or i32 %166, %169
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %164
  %173 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %165, ptr noundef nonnull dereferenceable(6) %157, i32 6)
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %176, label %175, !prof !11

175:                                              ; preds = %172
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 766, i32 noundef 9, ptr noundef null) #16
  br label %587

176:                                              ; preds = %172, %164, %155
  %177 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 10
  %178 = load i16, ptr %177, align 2
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %191, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 11
  %182 = load i32, ptr %181, align 8
  %183 = and i32 %182, 131072
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %180
  %186 = load ptr, ptr %6, align 32
  %187 = getelementptr inbounds %struct.cfg80211_ops, ptr %186, i32 0, i32 79
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %191, !prof !8

190:                                              ; preds = %185, %180
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 771, i32 noundef 9, ptr noundef null) #16
  br label %587

191:                                              ; preds = %185, %176
  %192 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 70
  %193 = load i32, ptr %192, align 16
  %194 = and i32 %193, -15
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %197, label %196, !prof !11

196:                                              ; preds = %191
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 778, i32 noundef 9, ptr noundef null) #16
  br label %587

197:                                              ; preds = %191
  %198 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 14, i32 2
  %199 = load i8, ptr %198, align 1
  %200 = and i8 %199, 1
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %212, label %202

202:                                              ; preds = %197
  %203 = load ptr, ptr %6, align 32
  %204 = getelementptr inbounds %struct.cfg80211_ops, ptr %203, i32 0, i32 100
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %211, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.cfg80211_ops, ptr %203, i32 0, i32 101
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %212, !prof !8

211:                                              ; preds = %207, %202
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 783, i32 noundef 9, ptr noundef null) #16
  br label %587

212:                                              ; preds = %207, %197
  %213 = getelementptr i8, ptr %0, i32 56
  %214 = load i32, ptr %213, align 8
  %215 = and i32 %214, 8192
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %212
  %218 = load ptr, ptr %6, align 32
  %219 = getelementptr inbounds %struct.cfg80211_ops, ptr %218, i32 0, i32 44
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %223, label %222, !prof !11

222:                                              ; preds = %217
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 787, i32 noundef 9, ptr noundef null) #16
  br label %587

223:                                              ; preds = %217, %212
  br i1 %158, label %226, label %224

224:                                              ; preds = %223
  %225 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %225, ptr noundef nonnull align 1 dereferenceable(6) %157, i32 6, i1 false)
  br label %226

226:                                              ; preds = %224, %223
  %227 = icmp eq i16 %8, 0
  br i1 %227, label %228, label %230, !prof !8

228:                                              ; preds = %226
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 794, i32 noundef 9, ptr noundef null) #16
  %229 = load i16, ptr %7, align 4
  br label %230

230:                                              ; preds = %228, %226
  %231 = phi i16 [ %229, %228 ], [ %8, %226 ]
  %232 = and i16 %8, 8190
  %233 = icmp eq i16 %232, %231
  br i1 %233, label %235, label %234, !prof !11

234:                                              ; preds = %230
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 796, i32 noundef 9, ptr noundef null) #16
  store i16 %232, ptr %7, align 4
  br label %235

235:                                              ; preds = %234, %230
  %236 = phi i16 [ %231, %230 ], [ %232, %234 ]
  %237 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 6
  %238 = load i32, ptr %237, align 4
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %325

240:                                              ; preds = %235
  %241 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 5
  %242 = load ptr, ptr %241, align 8
  %243 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 7
  br label %247

244:                                              ; preds = %320
  %245 = add nuw nsw i32 %248, 1
  %246 = icmp eq i32 %245, %238
  br i1 %246, label %325, label %247

247:                                              ; preds = %244, %240
  %248 = phi i32 [ 0, %240 ], [ %245, %244 ]
  %249 = getelementptr %struct.ieee80211_iface_combination, ptr %242, i32 %248
  %250 = getelementptr %struct.ieee80211_iface_combination, ptr %242, i32 %248, i32 2
  %251 = load i16, ptr %250, align 4
  %252 = icmp ult i16 %251, 2
  br i1 %252, label %253, label %257

253:                                              ; preds = %247
  %254 = getelementptr %struct.ieee80211_iface_combination, ptr %242, i32 %248, i32 5
  %255 = load i8, ptr %254, align 4
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %323, label %257, !prof !8

257:                                              ; preds = %253, %247
  %258 = getelementptr %struct.ieee80211_iface_combination, ptr %242, i32 %248, i32 1
  %259 = load i32, ptr %258, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %323, label %261, !prof !8

261:                                              ; preds = %257
  %262 = getelementptr %struct.ieee80211_iface_combination, ptr %242, i32 %248, i32 5
  %263 = load i8, ptr %262, align 4
  %264 = icmp ne i8 %263, 0
  %265 = icmp ne i32 %259, 1
  %266 = select i1 %264, i1 %265, i1 false
  br i1 %266, label %323, label %267, !prof !28

267:                                              ; preds = %261
  %268 = getelementptr %struct.ieee80211_iface_combination, ptr %242, i32 %248, i32 3
  %269 = load i8, ptr %268, align 2
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %323, label %271, !prof !8

271:                                              ; preds = %267
  %272 = zext i8 %269 to i32
  %273 = load ptr, ptr %249, align 4
  %274 = getelementptr %struct.ieee80211_iface_combination, ptr %242, i32 %248, i32 7
  br label %275

275:                                              ; preds = %312, %271
  %276 = phi i32 [ 0, %271 ], [ %315, %312 ]
  %277 = phi i32 [ 0, %271 ], [ %314, %312 ]
  %278 = phi i16 [ 0, %271 ], [ %285, %312 ]
  %279 = getelementptr %struct.ieee80211_iface_limit, ptr %273, i32 %276, i32 1
  %280 = load i16, ptr %279, align 2
  %281 = zext i16 %280 to i32
  %282 = and i16 %280, %278
  %283 = icmp eq i16 %282, 0
  br i1 %283, label %284, label %323, !prof !11

284:                                              ; preds = %275
  %285 = or i16 %280, %278
  %286 = getelementptr %struct.ieee80211_iface_limit, ptr %273, i32 %276
  %287 = load i16, ptr %286, align 2
  %288 = icmp eq i16 %287, 0
  br i1 %288, label %323, label %289, !prof !8

289:                                              ; preds = %284
  %290 = load i16, ptr %243, align 16
  %291 = and i16 %290, %280
  %292 = icmp eq i16 %291, 0
  br i1 %292, label %293, label %323, !prof !11

293:                                              ; preds = %289
  %294 = and i32 %281, 1024
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %298, label %296

296:                                              ; preds = %293
  %297 = icmp ugt i16 %287, 1
  br i1 %297, label %323, label %303, !prof !8

298:                                              ; preds = %293
  %299 = and i32 %281, 4096
  %300 = icmp ne i32 %299, 0
  %301 = icmp ugt i16 %287, 1
  %302 = select i1 %300, i1 %301, i1 false
  br i1 %302, label %323, label %303, !prof !28

303:                                              ; preds = %298, %296
  %304 = and i32 %281, 2
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %309, label %306

306:                                              ; preds = %303
  %307 = load i32, ptr %274, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %323, !prof !11

309:                                              ; preds = %306, %303
  %310 = and i16 %236, %280
  %311 = icmp eq i16 %310, %280
  br i1 %311, label %312, label %323, !prof !11

312:                                              ; preds = %309
  %313 = zext i16 %287 to i32
  %314 = add i32 %277, %313
  %315 = add nuw nsw i32 %276, 1
  %316 = icmp eq i32 %315, %272
  br i1 %316, label %317, label %275

317:                                              ; preds = %312
  %318 = and i16 %285, 32
  %319 = icmp eq i16 %318, 0
  br i1 %319, label %320, label %323, !prof !11

320:                                              ; preds = %317
  %321 = zext i16 %251 to i32
  %322 = icmp ult i32 %314, %321
  br i1 %322, label %323, label %244, !prof !8

323:                                              ; preds = %320, %317, %309, %306, %298, %296, %289, %284, %275, %267, %261, %257, %253
  %324 = phi i32 [ 641, %309 ], [ 632, %306 ], [ 618, %298 ], [ 613, %296 ], [ 608, %289 ], [ 604, %284 ], [ 600, %275 ], [ 649, %320 ], [ 645, %317 ], [ 593, %267 ], [ 590, %261 ], [ 585, %257 ], [ 581, %253 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %324, i32 noundef 9, ptr noundef null) #16
  br label %587

325:                                              ; preds = %244, %235
  %326 = load i8, ptr @cfg80211_disable_40mhz_24ghz, align 1
  %327 = icmp ne i8 %326, 0
  br label %328

328:                                              ; preds = %441, %325
  %329 = phi i32 [ %442, %441 ], [ 0, %325 ]
  %330 = phi i1 [ true, %441 ], [ false, %325 ]
  br label %331

331:                                              ; preds = %438, %328
  %332 = phi i32 [ %439, %438 ], [ %329, %328 ]
  %333 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 %332
  %334 = load ptr, ptr %333, align 4
  %335 = icmp eq ptr %334, null
  br i1 %335, label %438, label %336

336:                                              ; preds = %331
  %337 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %334, i32 0, i32 2
  store i32 %332, ptr %337, align 4
  %338 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %334, i32 0, i32 3
  %339 = load i32, ptr %338, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %342, !prof !8

341:                                              ; preds = %336
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 813, i32 noundef 9, ptr noundef null) #16
  br label %587

342:                                              ; preds = %336
  switch i32 %332, label %343 [
    i32 4, label %348
    i32 2, label %348
  ]

343:                                              ; preds = %342
  %344 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %334, i32 0, i32 4
  %345 = load i32, ptr %344, align 4
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %348, !prof !8

347:                                              ; preds = %343
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 821, i32 noundef 9, ptr noundef null) #16
  br label %587

348:                                              ; preds = %343, %342, %342
  %349 = icmp eq i32 %332, 3
  br i1 %349, label %350, label %359

350:                                              ; preds = %348
  %351 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %334, i32 0, i32 5, i32 1
  %352 = load i8, ptr %351, align 2, !range !12
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %350
  %355 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %334, i32 0, i32 6
  %356 = load i8, ptr %355, align 4, !range !12
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %370, label %358, !prof !11

358:                                              ; preds = %354, %350
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 826, i32 noundef 9, ptr noundef null) #16
  br label %587

359:                                              ; preds = %348
  %360 = icmp eq i32 %332, 0
  %361 = select i1 %327, i1 %360, i1 false
  br i1 %361, label %362, label %370

362:                                              ; preds = %359
  %363 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %334, i32 0, i32 5, i32 1
  %364 = load i8, ptr %363, align 2, !range !12
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %370, label %366

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %334, i32 0, i32 5
  %368 = load i16, ptr %367, align 4
  %369 = and i16 %368, -67
  store i16 %369, ptr %367, align 4
  br label %370

370:                                              ; preds = %366, %362, %359, %354
  %371 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %334, i32 0, i32 4
  %372 = load i32, ptr %371, align 4
  %373 = icmp sgt i32 %372, 32
  br i1 %373, label %378, label %374, !prof !8

374:                                              ; preds = %370
  %375 = icmp sgt i32 %339, 0
  br i1 %375, label %376, label %383

376:                                              ; preds = %374
  %377 = load ptr, ptr %334, align 4
  br label %391

378:                                              ; preds = %370
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 846, i32 noundef 9, ptr noundef null) #16
  br label %587

379:                                              ; preds = %391
  %380 = add nuw nsw i32 %393, 1
  %381 = load i32, ptr %338, align 4
  %382 = icmp slt i32 %380, %381
  br i1 %382, label %391, label %383

383:                                              ; preds = %379, %374
  %384 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %334, i32 0, i32 9
  %385 = load i16, ptr %384, align 4
  %386 = zext i16 %385 to i32
  %387 = icmp eq i16 %385, 0
  br i1 %387, label %433, label %388

388:                                              ; preds = %383
  %389 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %334, i32 0, i32 10
  %390 = load ptr, ptr %389, align 4
  br label %410

391:                                              ; preds = %379, %376
  %392 = phi ptr [ %405, %379 ], [ %377, %376 ]
  %393 = phi i32 [ %380, %379 ], [ 0, %376 ]
  %394 = getelementptr %struct.ieee80211_channel, ptr %392, i32 %393, i32 4
  %395 = load i32, ptr %394, align 4
  %396 = getelementptr %struct.ieee80211_channel, ptr %392, i32 %393, i32 9
  store i32 %395, ptr %396, align 4
  %397 = load ptr, ptr %334, align 4
  %398 = getelementptr %struct.ieee80211_channel, ptr %397, i32 %393, i32 10
  store i32 2147483647, ptr %398, align 4
  %399 = load ptr, ptr %334, align 4
  %400 = getelementptr %struct.ieee80211_channel, ptr %399, i32 %393, i32 6
  %401 = load i32, ptr %400, align 4
  %402 = getelementptr %struct.ieee80211_channel, ptr %399, i32 %393, i32 11
  store i32 %401, ptr %402, align 4
  %403 = load ptr, ptr %334, align 4
  %404 = getelementptr %struct.ieee80211_channel, ptr %403, i32 %393
  store i32 %332, ptr %404, align 4
  %405 = load ptr, ptr %334, align 4
  %406 = getelementptr %struct.ieee80211_channel, ptr %405, i32 %393, i32 2
  %407 = load i16, ptr %406, align 4
  %408 = icmp ugt i16 %407, 999
  br i1 %408, label %409, label %379, !prof !8

409:                                              ; preds = %391
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 857, i32 noundef 9, ptr noundef null) #16
  br label %587

410:                                              ; preds = %427, %388
  %411 = phi i32 [ 0, %388 ], [ %431, %427 ]
  %412 = phi i1 [ false, %388 ], [ %430, %427 ]
  %413 = phi i16 [ 0, %388 ], [ %428, %427 ]
  %414 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %390, i32 %411
  %415 = load i16, ptr %414, align 4
  %416 = icmp eq i16 %415, 0
  br i1 %416, label %417, label %418, !prof !8

417:                                              ; preds = %410
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 866, i32 noundef 9, ptr noundef null) #16
  br label %587

418:                                              ; preds = %410
  %419 = and i16 %415, %413
  %420 = icmp eq i16 %419, 0
  br i1 %420, label %422, label %421, !prof !11

421:                                              ; preds = %418
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 868, i32 noundef 9, ptr noundef null) #16
  br label %587

422:                                              ; preds = %418
  %423 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %390, i32 %411, i32 1
  %424 = load i8, ptr %423, align 2, !range !12
  %425 = icmp eq i8 %424, 0
  br i1 %425, label %426, label %427, !prof !8

426:                                              ; preds = %422
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 872, i32 noundef 9, ptr noundef null) #16
  br label %587

427:                                              ; preds = %422
  %428 = or i16 %415, %413
  %429 = icmp eq i32 %411, 0
  %430 = select i1 %429, i1 true, i1 %412
  %431 = add nuw nsw i32 %411, 1
  %432 = icmp eq i32 %431, %386
  br i1 %432, label %433, label %410

433:                                              ; preds = %427, %383
  %434 = phi i1 [ false, %383 ], [ %430, %427 ]
  %435 = xor i1 %434, true
  %436 = select i1 %435, i1 %349, i1 false
  br i1 %436, label %437, label %441, !prof !8

437:                                              ; preds = %433
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 884, i32 noundef 9, ptr noundef null) #16
  br label %587

438:                                              ; preds = %331
  %439 = add nuw nsw i32 %332, 1
  %440 = icmp eq i32 %439, 6
  br i1 %440, label %444, label %331

441:                                              ; preds = %433
  %442 = add nuw nsw i32 %332, 1
  %443 = icmp eq i32 %442, 6
  br i1 %443, label %445, label %328

444:                                              ; preds = %438
  br i1 %330, label %445, label %452

445:                                              ; preds = %444, %441
  %446 = getelementptr i8, ptr %0, i32 772
  %447 = load i32, ptr %446, align 4
  %448 = icmp sgt i32 %447, 0
  br i1 %448, label %449, label %471

449:                                              ; preds = %445
  %450 = getelementptr i8, ptr %0, i32 764
  %451 = load ptr, ptr %450, align 4
  br label %453

452:                                              ; preds = %444
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 891, i32 noundef 9, ptr noundef null) #16
  br label %587

453:                                              ; preds = %468, %449
  %454 = phi i32 [ 0, %449 ], [ %469, %468 ]
  %455 = getelementptr %struct.wiphy_vendor_command, ptr %451, i32 %454, i32 4
  %456 = load ptr, ptr %455, align 4
  %457 = icmp eq ptr %456, null
  br i1 %457, label %458, label %459, !prof !8

458:                                              ; preds = %453
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 901, i32 noundef 9, ptr noundef null) #16
  br label %587

459:                                              ; preds = %453
  %460 = getelementptr %struct.wiphy_vendor_command, ptr %451, i32 %454, i32 2
  %461 = load ptr, ptr %460, align 4
  %462 = icmp eq ptr %461, null
  br i1 %462, label %463, label %468

463:                                              ; preds = %459
  %464 = getelementptr %struct.wiphy_vendor_command, ptr %451, i32 %454, i32 3
  %465 = load ptr, ptr %464, align 4
  %466 = icmp eq ptr %465, null
  br i1 %466, label %467, label %468, !prof !8

467:                                              ; preds = %463
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 904, i32 noundef 9, ptr noundef null) #16
  br label %587

468:                                              ; preds = %463, %459
  %469 = add nuw nsw i32 %454, 1
  %470 = icmp eq i32 %469, %447
  br i1 %470, label %471, label %453

471:                                              ; preds = %468, %445
  %472 = load ptr, ptr %9, align 8
  %473 = icmp eq ptr %472, null
  br i1 %473, label %487, label %474

474:                                              ; preds = %471
  %475 = getelementptr inbounds %struct.wiphy_wowlan_support, ptr %472, i32 0, i32 1
  %476 = load i32, ptr %475, align 4
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %487, label %478

478:                                              ; preds = %474
  %479 = getelementptr inbounds %struct.wiphy_wowlan_support, ptr %472, i32 0, i32 3
  %480 = load i32, ptr %479, align 4
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %486, label %482

482:                                              ; preds = %478
  %483 = getelementptr inbounds %struct.wiphy_wowlan_support, ptr %472, i32 0, i32 2
  %484 = load i32, ptr %483, align 4
  %485 = icmp sgt i32 %480, %484
  br i1 %485, label %486, label %487, !prof !8

486:                                              ; preds = %482, %478
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 912, i32 noundef 9, ptr noundef null) #16
  br label %587

487:                                              ; preds = %482, %474, %471
  tail call void @ieee80211_set_bitrate_flags(ptr noundef nonnull %0) #16
  %488 = load i32, ptr %29, align 32
  %489 = or i32 %488, 128
  store i32 %489, ptr %29, align 32
  tail call void @rtnl_lock() #16
  %490 = getelementptr i8, ptr %0, i32 264
  %491 = tail call i32 @device_add(ptr noundef %490) #16
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %494, label %493

493:                                              ; preds = %487
  tail call void @rtnl_unlock() #16
  br label %587

494:                                              ; preds = %487
  %495 = getelementptr i8, ptr %0, i32 -540
  %496 = load ptr, ptr @cfg80211_rdev_list, align 4
  store ptr %496, ptr %495, align 4
  %497 = getelementptr i8, ptr %0, i32 -536
  store ptr @cfg80211_rdev_list, ptr %497, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !29
  store volatile ptr %495, ptr @cfg80211_rdev_list, align 4
  %498 = getelementptr inbounds %struct.list_head, ptr %496, i32 0, i32 1
  store ptr %495, ptr %498, align 4
  %499 = load i32, ptr @cfg80211_rdev_list_generation, align 4
  %500 = add i32 %499, 1
  store i32 %500, ptr @cfg80211_rdev_list_generation, align 4
  %501 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 56, i32 3
  %502 = load ptr, ptr %501, align 4
  %503 = icmp eq ptr %502, null
  br i1 %503, label %504, label %506

504:                                              ; preds = %494
  %505 = load ptr, ptr %490, align 4
  br label %506

506:                                              ; preds = %504, %494
  %507 = phi ptr [ %505, %504 ], [ %502, %494 ]
  %508 = load ptr, ptr @ieee80211_debugfs_dir, align 4
  %509 = tail call ptr @debugfs_create_dir(ptr noundef %507, ptr noundef %508) #16
  %510 = getelementptr i8, ptr %0, i32 740
  store ptr %509, ptr %510, align 4
  tail call void @nl80211_notify_wiphy(ptr noundef %6, i32 noundef 3) #16
  tail call void @wiphy_regulatory_register(ptr noundef nonnull %0) #16
  %511 = load i32, ptr %118, align 4
  %512 = and i32 %511, 1
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %521, label %514

514:                                              ; preds = %506
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %2, i8 0, i32 44, i1 false), !annotation !10
  %515 = getelementptr i8, ptr %0, i32 -492
  %516 = load i32, ptr %515, align 4
  %517 = getelementptr inbounds %struct.regulatory_request, ptr %2, i32 0, i32 1
  store i32 %516, ptr %517, align 4
  %518 = getelementptr inbounds %struct.regulatory_request, ptr %2, i32 0, i32 2
  store i32 2, ptr %518, align 4
  %519 = getelementptr inbounds %struct.regulatory_request, ptr %2, i32 0, i32 4
  store i8 57, ptr %519, align 4
  %520 = getelementptr inbounds %struct.regulatory_request, ptr %2, i32 0, i32 4, i32 1
  store i8 57, ptr %520, align 1
  call void @nl80211_common_reg_change_event(i32 noundef 36, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #16
  br label %521

521:                                              ; preds = %514, %506
  %522 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 49
  %523 = load i8, ptr %522, align 8
  %524 = icmp eq i8 %523, 0
  br i1 %524, label %579, label %525

525:                                              ; preds = %521
  %526 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 51
  %527 = load i32, ptr %526, align 32
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %579, label %529

529:                                              ; preds = %525
  %530 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 50
  %531 = load ptr, ptr %530, align 4
  %532 = icmp eq ptr %531, null
  br i1 %532, label %579, label %533

533:                                              ; preds = %529
  %534 = icmp ugt i32 %527, 1
  %535 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 47
  %536 = load ptr, ptr %535, align 16
  %537 = getelementptr inbounds %struct.wiphy_iftype_ext_capab, ptr %531, i32 0, i32 3
  %538 = load i8, ptr %537, align 4
  %539 = getelementptr inbounds %struct.wiphy_iftype_ext_capab, ptr %531, i32 0, i32 1
  %540 = zext i8 %538 to i32
  %541 = zext i8 %523 to i32
  br label %545

542:                                              ; preds = %569
  %543 = add nuw nsw i32 %546, 1
  %544 = icmp eq i32 %543, %541
  br i1 %544, label %579, label %545

545:                                              ; preds = %542, %533
  %546 = phi i32 [ 0, %533 ], [ %543, %542 ]
  %547 = icmp ult i32 %546, %540
  br i1 %547, label %548, label %552

548:                                              ; preds = %545
  %549 = load ptr, ptr %539, align 4
  %550 = getelementptr i8, ptr %549, i32 %546
  %551 = load i8, ptr %550, align 1
  br label %552

552:                                              ; preds = %548, %545
  %553 = phi i8 [ %551, %548 ], [ 0, %545 ]
  br i1 %534, label %554, label %569

554:                                              ; preds = %561, %552
  %555 = phi i8 [ %566, %561 ], [ %553, %552 ]
  %556 = phi i32 [ %567, %561 ], [ 1, %552 ]
  %557 = getelementptr %struct.wiphy_iftype_ext_capab, ptr %531, i32 %556, i32 3
  %558 = load i8, ptr %557, align 4
  %559 = zext i8 %558 to i32
  %560 = icmp ult i32 %546, %559
  br i1 %560, label %561, label %569

561:                                              ; preds = %554
  %562 = getelementptr %struct.wiphy_iftype_ext_capab, ptr %531, i32 %556, i32 1
  %563 = load ptr, ptr %562, align 4
  %564 = getelementptr i8, ptr %563, i32 %546
  %565 = load i8, ptr %564, align 1
  %566 = and i8 %565, %555
  %567 = add nuw i32 %556, 1
  %568 = icmp eq i32 %567, %527
  br i1 %568, label %569, label %554

569:                                              ; preds = %561, %554, %552
  %570 = phi i8 [ %553, %552 ], [ 0, %554 ], [ %566, %561 ]
  %571 = getelementptr i8, ptr %536, i32 %546
  %572 = load i8, ptr %571, align 1
  %573 = zext i8 %572 to i32
  %574 = zext i8 %570 to i32
  %575 = xor i32 %574, -1
  %576 = and i32 %573, %575
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %542, label %578, !prof !11

578:                                              ; preds = %569
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 977, i32 noundef 9, ptr noundef null) #16
  br label %579

579:                                              ; preds = %578, %542, %529, %525, %521
  %580 = getelementptr i8, ptr %0, i32 736
  store i8 1, ptr %580, align 32
  call void @rtnl_unlock() #16
  %581 = getelementptr i8, ptr %0, i32 848
  %582 = load ptr, ptr %581, align 16
  %583 = call i32 @rfkill_register(ptr noundef %582) #16
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %587, label %585

585:                                              ; preds = %579
  %586 = load ptr, ptr %581, align 16
  call void @rfkill_destroy(ptr noundef %586) #16
  store ptr null, ptr %581, align 16
  call void @wiphy_unregister(ptr noundef nonnull %0)
  br label %587

587:                                              ; preds = %585, %579, %493, %486, %467, %458, %452, %437, %426, %421, %417, %409, %378, %358, %347, %341, %323, %222, %211, %196, %190, %175, %163, %154, %144, %124, %108, %105, %98, %95, %86, %82, %72, %68, %42, %27, %16
  %588 = phi i32 [ -22, %16 ], [ -22, %27 ], [ -22, %42 ], [ -22, %68 ], [ -22, %72 ], [ -22, %82 ], [ -22, %86 ], [ -22, %95 ], [ -22, %98 ], [ -22, %105 ], [ -22, %108 ], [ -22, %124 ], [ -22, %144 ], [ -22, %154 ], [ -22, %163 ], [ -22, %175 ], [ -22, %190 ], [ -22, %196 ], [ -22, %211 ], [ -22, %222 ], [ -22, %458 ], [ -22, %467 ], [ -22, %486 ], [ %491, %493 ], [ %583, %585 ], [ -22, %452 ], [ 0, %579 ], [ -22, %323 ], [ -22, %341 ], [ -22, %347 ], [ -22, %358 ], [ -22, %378 ], [ -22, %409 ], [ -22, %426 ], [ -22, %421 ], [ -22, %417 ], [ -22, %437 ]
  ret i32 %588
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_set_bitrate_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_regulatory_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rfkill_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wiphy_unregister(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #16, !srcloc !9
  unreachable

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -544
  tail call void @mutex_lock(ptr noundef nonnull %0) #16
  %7 = getelementptr i8, ptr %0, i32 -480
  %8 = load i32, ptr %7, align 32
  tail call void @mutex_unlock(ptr noundef nonnull %0) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #16
  %11 = getelementptr i8, ptr %0, i32 -476
  %12 = call i32 @prepare_to_wait_event(ptr noundef %11, ptr noundef nonnull %2, i32 noundef 2) #16
  call void @mutex_lock(ptr noundef nonnull %0) #16
  %13 = load i32, ptr %7, align 32
  call void @mutex_unlock(ptr noundef nonnull %0) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %15, %10
  call void @schedule() #16
  %16 = call i32 @prepare_to_wait_event(ptr noundef %11, ptr noundef nonnull %2, i32 noundef 2) #16
  call void @mutex_lock(ptr noundef nonnull %0) #16
  %17 = load i32, ptr %7, align 32
  call void @mutex_unlock(ptr noundef nonnull %0) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15, %10
  call void @finish_wait(ptr noundef %11, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #16
  br label %20

20:                                               ; preds = %19, %5
  %21 = getelementptr i8, ptr %0, i32 848
  %22 = load ptr, ptr %21, align 16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  call void @rfkill_unregister(ptr noundef nonnull %22) #16
  br label %25

25:                                               ; preds = %24, %20
  call void @rtnl_lock() #16
  call void @mutex_lock(ptr noundef nonnull %0) #16
  call void @nl80211_notify_wiphy(ptr noundef %6, i32 noundef 4) #16
  %26 = getelementptr i8, ptr %0, i32 736
  store i8 0, ptr %26, align 32
  %27 = getelementptr i8, ptr %0, i32 752
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %31, label %30, !prof !11

30:                                               ; preds = %25
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1027, i32 noundef 9, ptr noundef null) #16
  br label %31

31:                                               ; preds = %30, %25
  %32 = getelementptr i8, ptr %0, i32 740
  %33 = load ptr, ptr %32, align 4
  call void @debugfs_remove(ptr noundef %33) #16
  %34 = getelementptr i8, ptr %0, i32 -540
  %35 = getelementptr i8, ptr %0, i32 -536
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %34, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 4
  store volatile ptr %37, ptr %36, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %35, align 4
  call void @synchronize_rcu() #16
  call void @wiphy_regulatory_deregister(ptr noundef nonnull %0) #16
  %39 = load i32, ptr @cfg80211_rdev_list_generation, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr @cfg80211_rdev_list_generation, align 4
  %41 = getelementptr i8, ptr %0, i32 264
  call void @device_del(ptr noundef %41) #16
  call void @mutex_unlock(ptr noundef nonnull %0) #16
  call void @rtnl_unlock() #16
  %42 = getelementptr i8, ptr %0, i32 -376
  %43 = call zeroext i1 @flush_work(ptr noundef %42) #16
  %44 = getelementptr i8, ptr %0, i32 -356
  %45 = call zeroext i1 @cancel_work_sync(ptr noundef %44) #16
  %46 = getelementptr i8, ptr %0, i32 -340
  %47 = call zeroext i1 @flush_work(ptr noundef %46) #16
  %48 = getelementptr i8, ptr %0, i32 -324
  %49 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %48) #16
  %50 = getelementptr i8, ptr %0, i32 -248
  %51 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %50) #16
  %52 = getelementptr i8, ptr %0, i32 -180
  %53 = call zeroext i1 @flush_work(ptr noundef %52) #16
  %54 = getelementptr i8, ptr %0, i32 -164
  %55 = call zeroext i1 @flush_work(ptr noundef %54) #16
  %56 = getelementptr i8, ptr %0, i32 -104
  %57 = call zeroext i1 @flush_work(ptr noundef %56) #16
  %58 = getelementptr i8, ptr %0, i32 -60
  %59 = call zeroext i1 @flush_work(ptr noundef %58) #16
  %60 = getelementptr i8, ptr %0, i32 -44
  %61 = call zeroext i1 @flush_work(ptr noundef %60) #16
  %62 = getelementptr i8, ptr %0, i32 -204
  %63 = call zeroext i1 @flush_work(ptr noundef %62) #16
  %64 = getelementptr i8, ptr %0, i32 188
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %148, label %67

67:                                               ; preds = %31
  %68 = load ptr, ptr %6, align 32
  %69 = getelementptr inbounds %struct.cfg80211_ops, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %108, label %72

72:                                               ; preds = %67
  %73 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_set_wakeup, i32 0, i32 1), align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = tail call ptr @llvm.thread.pointer() #16
  %77 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %78 = load i32, ptr %77, align 8
  %79 = lshr i32 %78, 5
  %80 = getelementptr i32, ptr @__cpu_online_mask, i32 %79
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %78, 31
  %83 = shl nuw i32 1, %82
  %84 = and i32 %83, %81
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %75
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !30
  %87 = call i32 @__traceiter_rdev_set_wakeup(ptr noundef null, ptr noundef %0, i1 noundef zeroext false) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  %88 = load ptr, ptr %6, align 32
  %89 = getelementptr inbounds %struct.cfg80211_ops, ptr %88, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  br label %91

91:                                               ; preds = %86, %75, %72
  %92 = phi ptr [ %90, %86 ], [ %70, %75 ], [ %70, %72 ]
  call void %92(ptr noundef %0, i1 noundef zeroext false) #16
  %93 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_void, i32 0, i32 1), align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %91
  %96 = tail call ptr @llvm.thread.pointer() #16
  %97 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %98 = load i32, ptr %97, align 8
  %99 = lshr i32 %98, 5
  %100 = getelementptr i32, ptr @__cpu_online_mask, i32 %99
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %98, 31
  %103 = shl nuw i32 1, %102
  %104 = and i32 %103, %101
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %95
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %107 = call i32 @__traceiter_rdev_return_void(ptr noundef null, ptr noundef %0) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  br label %108

108:                                              ; preds = %106, %95, %91, %67
  %109 = load ptr, ptr %64, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %148, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %109, i32 0, i32 9
  %113 = load i32, ptr %112, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %115, %111
  %116 = phi ptr [ %123, %115 ], [ %109, %111 ]
  %117 = phi i32 [ %122, %115 ], [ 0, %111 ]
  %118 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %116, i32 0, i32 7
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr %struct.cfg80211_pkt_pattern, ptr %119, i32 %117
  %121 = load ptr, ptr %120, align 4
  call void @kfree(ptr noundef %121) #16
  %122 = add nuw nsw i32 %117, 1
  %123 = load ptr, ptr %64, align 4
  %124 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %123, i32 0, i32 9
  %125 = load i32, ptr %124, align 4
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %115, label %127

127:                                              ; preds = %115, %111
  %128 = phi ptr [ %109, %111 ], [ %123, %115 ]
  %129 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %128, i32 0, i32 7
  %130 = load ptr, ptr %129, align 4
  call void @kfree(ptr noundef %130) #16
  %131 = load ptr, ptr %64, align 4
  %132 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %131, i32 0, i32 8
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %142, label %135

135:                                              ; preds = %127
  %136 = load ptr, ptr %133, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %142, label %138

138:                                              ; preds = %135
  call void @sock_release(ptr noundef nonnull %136) #16
  %139 = load ptr, ptr %64, align 4
  %140 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %139, i32 0, i32 8
  %141 = load ptr, ptr %140, align 4
  br label %142

142:                                              ; preds = %138, %135, %127
  %143 = phi ptr [ %141, %138 ], [ %133, %135 ], [ null, %127 ]
  call void @kfree(ptr noundef %143) #16
  %144 = load ptr, ptr %64, align 4
  %145 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %144, i32 0, i32 10
  %146 = load ptr, ptr %145, align 4
  call void @kfree(ptr noundef %146) #16
  %147 = load ptr, ptr %64, align 4
  call void @kfree(ptr noundef %147) #16
  br label %148

148:                                              ; preds = %142, %108, %31
  call void @cfg80211_rdev_free_coalesce(ptr noundef %6) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wiphy_rfkill_start_polling(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #16, !srcloc !9
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -544
  %6 = load ptr, ptr %5, align 32
  %7 = getelementptr inbounds %struct.cfg80211_ops, ptr %6, i32 0, i32 52
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %0, i32 -532
  store ptr @cfg80211_rfkill_poll, ptr %11, align 4
  %12 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 81
  %13 = load ptr, ptr %12, align 16
  tail call void @rfkill_resume_polling(ptr noundef %13) #16
  br label %14

14:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cfg80211_rfkill_poll(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %1, i32 0, i32 48
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_rfkill_poll, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #16
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !32
  %18 = tail call i32 @__traceiter_rdev_rfkill_poll(ptr noundef null, ptr noundef %3) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  br label %19

19:                                               ; preds = %17, %6, %2
  %20 = load ptr, ptr %1, align 32
  %21 = getelementptr inbounds %struct.cfg80211_ops, ptr %20, i32 0, i32 52
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %3) #16
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_void, i32 0, i32 1), align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = tail call ptr @llvm.thread.pointer() #16
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 5
  %30 = getelementptr i32, ptr @__cpu_online_mask, i32 %29
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %28, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %33, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %25
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %37 = tail call i32 @__traceiter_rdev_return_void(ptr noundef null, ptr noundef %3) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  br label %38

38:                                               ; preds = %36, %25, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_resume_polling(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_regulatory_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_rdev_free_coalesce(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_dev_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %3 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 81
  %4 = load ptr, ptr %3, align 16
  tail call void @rfkill_destroy(ptr noundef %4) #16
  %5 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 16
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %15, label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %10, %8 ], [ %6, %1 ]
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %10, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  tail call void @kfree(ptr noundef %9) #16
  %14 = icmp eq ptr %10, %5
  br i1 %14, label %15, label %8

15:                                               ; preds = %8, %1
  %16 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 18
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %24, label %19

19:                                               ; preds = %19, %15
  %20 = phi ptr [ %21, %19 ], [ %17, %15 ]
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %20, i32 0, i32 9
  tail call void @cfg80211_put_bss(ptr noundef %2, ptr noundef %22) #16
  %23 = icmp eq ptr %21, %16
  br i1 %23, label %24, label %19

24:                                               ; preds = %19, %15
  %25 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 55
  %26 = load volatile ptr, ptr %25, align 4
  tail call void @kfree(ptr noundef %26) #16
  tail call void @kfree(ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wiphy_rfkill_set_hw_state_reason(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #16, !srcloc !9
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 81
  %8 = load ptr, ptr %7, align 16
  %9 = tail call zeroext i1 @rfkill_set_hw_state_reason(ptr noundef %8, i1 noundef zeroext %1, i32 noundef %2) #16
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 -520
  %12 = load ptr, ptr @system_wq, align 4
  %13 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %12, ptr noundef %11) #16
  br label %14

14:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rfkill_set_hw_state_reason(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_cqm_config_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 39
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #16
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_unregister_wdev(ptr noundef %0) #0 {
  tail call fastcc void @_cfg80211_unregister_wdev(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_cfg80211_unregister_wdev(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #16, !srcloc !9
  unreachable

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %3, i32 -544
  %8 = tail call i32 @rtnl_is_locked() #16
  %9 = icmp eq i32 %8, 0
  %10 = load i1, ptr @_cfg80211_unregister_wdev.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %6
  store i1 true, ptr @_cfg80211_unregister_wdev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1122, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1122) #16
  br label %14

14:                                               ; preds = %13, %6
  %15 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 42
  %16 = tail call zeroext i1 @flush_work(ptr noundef %15) #16
  tail call void @nl80211_notify_iface(ptr noundef %7, ptr noundef %0, i32 noundef 8) #16
  %17 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 10
  store i8 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 111
  tail call void @sysfs_remove_link(ptr noundef %22, ptr noundef nonnull @.str.9) #16
  br i1 %1, label %23, label %25

23:                                               ; preds = %21
  %24 = load ptr, ptr %18, align 4
  tail call void @unregister_netdevice_queue(ptr noundef %24, ptr noundef null) #16
  br label %25

25:                                               ; preds = %23, %21, %14
  %26 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 2
  %27 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 2, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store volatile ptr %29, ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  tail call void @synchronize_net() #16
  %31 = getelementptr i8, ptr %3, i32 -488
  %32 = load i32, ptr %31, align 8
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 8
  tail call void @cfg80211_mlme_purge_registrations(ptr noundef %0) #16
  %34 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %38 [
    i32 10, label %36
    i32 12, label %37
  ]

36:                                               ; preds = %25
  tail call void @cfg80211_stop_p2p_device(ptr noundef %7, ptr noundef %0)
  br label %38

37:                                               ; preds = %25
  tail call void @cfg80211_stop_nan(ptr noundef %7, ptr noundef %0)
  br label %38

38:                                               ; preds = %37, %36, %25
  %39 = load ptr, ptr %18, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 21
  %43 = tail call zeroext i1 @flush_work(ptr noundef %42) #16
  br label %44

44:                                               ; preds = %41, %38
  %45 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 39
  %46 = load ptr, ptr %45, align 4
  tail call void @kfree(ptr noundef %46) #16
  store ptr null, ptr %45, align 4
  tail call void @cfg80211_process_wdev_events(ptr noundef %0) #16
  %47 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 25
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50, !prof !11

50:                                               ; preds = %44
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1170, i32 noundef 9, ptr noundef null) #16
  %51 = load ptr, ptr %47, align 4
  tail call fastcc void @cfg80211_unhold_bss(ptr noundef %51)
  %52 = load ptr, ptr %0, align 4
  %53 = load ptr, ptr %47, align 4
  %54 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %53, i32 0, i32 9
  tail call void @cfg80211_put_bss(ptr noundef %52, ptr noundef %54) #16
  store ptr null, ptr %47, align 4
  br label %55

55:                                               ; preds = %50, %44
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cfg80211_update_iface_num(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %2
  store i32 %6, ptr %4, align 4
  %7 = icmp eq i32 %1, 6
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 15
  %10 = load i32, ptr %9, align 32
  %11 = add i32 %10, %2
  store i32 %11, ptr %9, align 32
  br label %12

12:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__cfg80211_leave(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  tail call void @cfg80211_pmsr_wdev_down(ptr noundef %1) #16
  tail call void @cfg80211_stop_background_radar_detection(ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %32 [
    i32 1, label %7
    i32 8, label %9
    i32 2, label %9
    i32 7, label %26
    i32 3, label %28
    i32 9, label %28
    i32 11, label %30
  ]

7:                                                ; preds = %2
  %8 = tail call i32 @__cfg80211_leave_ibss(ptr noundef %0, ptr noundef %4, i1 noundef zeroext true) #16
  br label %32

9:                                                ; preds = %2, %2
  %10 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 25
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %24, label %13

13:                                               ; preds = %22, %9
  %14 = phi ptr [ %15, %22 ], [ %11, %9 ]
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %14, i32 -28
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %4, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %14, i32 -116
  %21 = tail call i32 @cfg80211_stop_sched_scan_req(ptr noundef %0, ptr noundef %20, i1 noundef zeroext false) #16
  br label %22

22:                                               ; preds = %19, %13
  %23 = icmp eq ptr %15, %10
  br i1 %23, label %24, label %13

24:                                               ; preds = %22, %9
  %25 = tail call i32 @cfg80211_disconnect(ptr noundef %0, ptr noundef %4, i16 noundef zeroext 3, i1 noundef zeroext true) #16
  br label %32

26:                                               ; preds = %2
  %27 = tail call i32 @__cfg80211_leave_mesh(ptr noundef %0, ptr noundef %4) #16
  br label %32

28:                                               ; preds = %2, %2
  %29 = tail call i32 @__cfg80211_stop_ap(ptr noundef %0, ptr noundef %4, i1 noundef zeroext true) #16
  br label %32

30:                                               ; preds = %2
  %31 = tail call i32 @__cfg80211_leave_ocb(ptr noundef %0, ptr noundef %4) #16
  br label %32

32:                                               ; preds = %30, %28, %26, %24, %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_pmsr_wdev_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_stop_background_radar_detection(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cfg80211_leave_ibss(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_stop_sched_scan_req(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_disconnect(ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cfg80211_leave_mesh(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cfg80211_stop_ap(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cfg80211_leave_ocb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_stop_iface(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #16, !srcloc !9
  unreachable

6:                                                ; preds = %3
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cfg80211_stop_iface, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = tail call ptr @llvm.thread.pointer() #16
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  %21 = tail call i32 @__traceiter_cfg80211_stop_iface(ptr noundef null, ptr noundef nonnull %0, ptr noundef %1) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !35
  br label %22

22:                                               ; preds = %20, %9, %6
  %23 = or i32 %2, 256
  %24 = and i32 %2, 17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26, !prof !11

26:                                               ; preds = %22
  %27 = and i32 %2, 1
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 1, i32 2
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i32 [ 0, %22 ], [ %29, %26 ]
  %32 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %31, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef %23, i32 noundef 68) #18
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.cfg80211_event, ptr %34, i32 0, i32 1
  store i32 4, ptr %37, align 8
  %38 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 24
  %39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #16
  %40 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 23
  %41 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 23, i32 1
  %42 = load ptr, ptr %41, align 4
  store ptr %34, ptr %41, align 4
  store ptr %40, ptr %34, align 8
  %43 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %42, ptr %43, align 4
  store volatile ptr %34, ptr %42, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %39) #16
  %44 = load ptr, ptr @cfg80211_wq, align 4
  %45 = getelementptr i8, ptr %0, i32 -340
  %46 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %44, ptr noundef %45) #16
  br label %47

47:                                               ; preds = %36, %30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_init_wdev(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef nonnull @cfg80211_init_wdev.__key) #16
  %3 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 23
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 23, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 24
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 5
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 5, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 40
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 40, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 41
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 42
  store i32 -32, ptr %11, align 4
  %12 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 42, i32 1
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 42, i32 1, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 42, i32 2
  store ptr @cfg80211_pmsr_free_wk, ptr %14, align 4
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 11
  %17 = load i32, ptr %16, align 8
  %18 = trunc i32 %17 to i8
  %19 = lshr i8 %18, 4
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 30
  store i8 %20, ptr %21, align 2
  %22 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 31
  store i32 -1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %35 [
    i32 2, label %25
    i32 8, label %25
    i32 1, label %25
  ]

25:                                               ; preds = %1, %1, %1
  %26 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 8
  %27 = load i8, ptr %26, align 4, !range !12
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 15
  %33 = load i64, ptr %32, align 16
  %34 = or i64 %33, 64
  store i64 %34, ptr %32, align 16
  br label %35

35:                                               ; preds = %29, %25, %1
  %36 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 21
  store i32 -32, ptr %36, align 4
  %37 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 21, i32 1
  store volatile ptr %37, ptr %37, align 4
  %38 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 21, i32 1, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 21, i32 2
  store ptr @cfg80211_autodisconnect_wk, ptr %39, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_pmsr_free_wk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_autodisconnect_wk(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_register_wdev(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @rtnl_is_locked() #16
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @cfg80211_register_wdev.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %2
  store i1 true, ptr @cfg80211_register_wdev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1321, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1321) #16
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  store i32 %16, ptr %10, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 2
  %19 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 61
  %20 = load ptr, ptr %19, align 4
  store ptr %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 2, i32 1
  store ptr %19, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !29
  store volatile ptr %18, ptr %19, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %18, ptr %22, align 4
  %23 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 8
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 8
  %26 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 10
  store i8 1, ptr %26, align 2
  %27 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 111
  %32 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 56
  %33 = tail call i32 @sysfs_create_link(ptr noundef %31, ptr noundef %32, ptr noundef nonnull @.str.9) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #19
  br label %37

37:                                               ; preds = %35, %30, %17
  tail call void @nl80211_notify_iface(ptr noundef %0, ptr noundef %1, i32 noundef 7) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_register_netdevice(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @rtnl_is_locked() #16
  %5 = icmp eq i32 %4, 0
  %6 = load i1, ptr @cfg80211_register_netdevice.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %1
  store i1 true, ptr @cfg80211_register_netdevice.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1351, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1351) #16
  br label %10

10:                                               ; preds = %9, %1
  %11 = icmp eq ptr %3, null
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1353, i32 noundef 9, ptr noundef null) #16
  br label %25

13:                                               ; preds = %10
  %14 = load ptr, ptr %3, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #16, !srcloc !9
  unreachable

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.wireless_dev, ptr %3, i32 0, i32 10
  store i8 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.wireless_dev, ptr %3, i32 0, i32 11
  store i8 1, ptr %19, align 1
  %20 = tail call i32 @register_netdevice(ptr noundef %0) #16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %14, i32 -544
  tail call void @cfg80211_register_wdev(ptr noundef %23, ptr noundef nonnull %3)
  store i8 0, ptr %19, align 1
  br label %25

24:                                               ; preds = %17
  store i8 0, ptr %19, align 1
  store i8 0, ptr %18, align 2
  br label %25

25:                                               ; preds = %24, %22, %12
  %26 = phi i32 [ -22, %12 ], [ %20, %24 ], [ 0, %22 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #8 section ".init.text" {
  %1 = tail call i32 @register_pernet_device(ptr noundef nonnull @cfg80211_pernet_ops) #16
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %30

3:                                                ; preds = %0
  %4 = tail call i32 @wiphy_sysfs_init() #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @cfg80211_netdev_notifier) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %6
  %10 = tail call i32 @nl80211_init() #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.14, ptr noundef null) #16
  store ptr %13, ptr @ieee80211_debugfs_dir, align 4
  %14 = tail call i32 @regulatory_init() #19
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.15, i32 noundef 655370, i32 noundef 1) #16
  store ptr %17, ptr @cfg80211_wq, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  tail call void @regulatory_exit() #16
  br label %20

20:                                               ; preds = %19, %12
  %21 = phi i32 [ %14, %12 ], [ -12, %19 ]
  %22 = load ptr, ptr @ieee80211_debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %22) #16
  tail call void @nl80211_exit() #16
  br label %23

23:                                               ; preds = %20, %9
  %24 = phi i32 [ %10, %9 ], [ %21, %20 ]
  %25 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @cfg80211_netdev_notifier) #16
  br label %26

26:                                               ; preds = %23, %6
  %27 = phi i32 [ %7, %6 ], [ %24, %23 ]
  tail call void @wiphy_sysfs_exit() #16
  br label %28

28:                                               ; preds = %26, %3
  %29 = phi i32 [ %4, %3 ], [ %27, %26 ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @cfg80211_pernet_ops) #16
  br label %30

30:                                               ; preds = %28, %16, %0
  %31 = phi i32 [ 0, %16 ], [ %1, %0 ], [ %29, %28 ]
  ret i32 %31
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #8 section ".exit.text" {
  %1 = load ptr, ptr @ieee80211_debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %1) #16
  tail call void @nl80211_exit() #16
  %2 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @cfg80211_netdev_notifier) #16
  tail call void @wiphy_sysfs_exit() #16
  tail call void @regulatory_exit() #16
  tail call void @unregister_pernet_device(ptr noundef nonnull @cfg80211_pernet_ops) #16
  %3 = load ptr, ptr @cfg80211_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dev_change_net_namespace(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_stop_p2p_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_void(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_stop_nan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_del_virtual_intf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulatory_propagate_dfs_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_process_rdev_events(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_common_reg_change_event(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_rfkill_poll(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_set_wakeup(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_mlme_purge_registrations(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_process_wdev_events(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cfg80211_unhold_bss(ptr noundef %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #16, !srcloc !24
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #16, !srcloc !37
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !38
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 200, i32 noundef 9, ptr noundef null) #16
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.cfg80211_internal_bss, ptr %0, i32 0, i32 9, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 -24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #16, !srcloc !24
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #16, !srcloc !37
  %14 = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !38
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 205, i32 noundef 9, ptr noundef null) #16
  br label %17

17:                                               ; preds = %16, %11, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cfg80211_stop_iface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wiphy_sysfs_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nl80211_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @regulatory_init() local_unnamed_addr #7 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulatory_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl80211_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_sysfs_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cfg80211_pernet_exit(ptr nocapture noundef readnone %0) #14 section ".ref.text" {
  tail call void @rtnl_lock() #16
  %2 = load ptr, ptr @cfg80211_rdev_list, align 4
  %3 = icmp eq ptr %2, @cfg80211_rdev_list
  br i1 %3, label %13, label %4

4:                                                ; preds = %10, %1
  %5 = phi ptr [ %11, %10 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = tail call i32 @cfg80211_switch_netns(ptr noundef %6, ptr noundef nonnull @init_net)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !11

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1523, i32 noundef 9, ptr noundef null) #16
  br label %10

10:                                               ; preds = %9, %4
  %11 = load ptr, ptr %5, align 4
  %12 = icmp eq ptr %11, @cfg80211_rdev_list
  br i1 %12, label %13, label %4

13:                                               ; preds = %10, %1
  tail call void @rtnl_unlock() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cfg80211_netdev_notifier_call(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 70
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %213, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #16, !srcloc !9
  unreachable

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %9, i32 -544
  %14 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1390, i32 noundef 9, ptr noundef null) #16
  br label %18

18:                                               ; preds = %17, %12
  switch i32 %1, label %213 [
    i32 17, label %19
    i32 5, label %61
    i32 6, label %66
    i32 10, label %75
    i32 2, label %77
    i32 1, label %134
    i32 14, label %201
  ]

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 111, i32 4
  store ptr @wiphy_type, ptr %20, align 16
  %21 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 3
  store ptr %4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 23
  %23 = load i64, ptr %22, align 16
  %24 = or i64 %23, 8192
  store i64 %24, ptr %22, align 16
  %25 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %25, ptr noundef nonnull @.str.8, ptr noundef nonnull @cfg80211_init_wdev.__key) #16
  %26 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 23
  store volatile ptr %26, ptr %26, align 4
  %27 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 23, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 24
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 5
  store volatile ptr %29, ptr %29, align 4
  %30 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 5, i32 1
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 40
  store volatile ptr %31, ptr %31, align 4
  %32 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 40, i32 1
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 41
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 42
  store i32 -32, ptr %34, align 4
  %35 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 42, i32 1
  store volatile ptr %35, ptr %35, align 4
  %36 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 42, i32 1, i32 1
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 42, i32 2
  store ptr @cfg80211_pmsr_free_wk, ptr %37, align 4
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr inbounds %struct.wiphy, ptr %38, i32 0, i32 11
  %40 = load i32, ptr %39, align 8
  %41 = trunc i32 %40 to i8
  %42 = lshr i8 %41, 4
  %43 = and i8 %42, 1
  %44 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 30
  store i8 %43, ptr %44, align 2
  %45 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 31
  store i32 -1, ptr %45, align 4
  %46 = load i32, ptr %14, align 4
  switch i32 %46, label %56 [
    i32 2, label %47
    i32 8, label %47
    i32 1, label %47
  ]

47:                                               ; preds = %19, %19, %19
  %48 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 8
  %49 = load i8, ptr %48, align 4, !range !12
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load ptr, ptr %21, align 4
  %53 = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 15
  %54 = load i64, ptr %53, align 16
  %55 = or i64 %54, 64
  store i64 %55, ptr %53, align 16
  br label %56

56:                                               ; preds = %51, %47, %19
  %57 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 21
  store i32 -32, ptr %57, align 4
  %58 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 21, i32 1
  store volatile ptr %58, ptr %58, align 4
  %59 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 21, i32 1, i32 1
  store ptr %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 21, i32 2
  store ptr @cfg80211_autodisconnect_wk, ptr %60, align 4
  br label %212

61:                                               ; preds = %18
  %62 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 10
  %63 = load i8, ptr %62, align 2, !range !12
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %212

65:                                               ; preds = %61
  tail call void @mutex_lock(ptr noundef nonnull %9) #16
  tail call void @cfg80211_register_wdev(ptr noundef %13, ptr noundef nonnull %6)
  tail call void @mutex_unlock(ptr noundef nonnull %9) #16
  br label %212

66:                                               ; preds = %18
  %67 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 10
  %68 = load i8, ptr %67, align 2, !range !12
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %212, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 11
  %72 = load i8, ptr %71, align 1, !range !12
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %212

74:                                               ; preds = %70
  tail call void @mutex_lock(ptr noundef nonnull %9) #16
  tail call fastcc void @_cfg80211_unregister_wdev(ptr noundef nonnull %6, i1 noundef zeroext false)
  tail call void @mutex_unlock(ptr noundef nonnull %9) #16
  br label %212

75:                                               ; preds = %18
  tail call void @mutex_lock(ptr noundef nonnull %9) #16
  %76 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %76) #16
  tail call void @__cfg80211_leave(ptr noundef %13, ptr noundef nonnull %6) #16
  tail call void @mutex_unlock(ptr noundef %76) #16
  tail call void @mutex_unlock(ptr noundef nonnull %9) #16
  br label %212

77:                                               ; preds = %18
  tail call void @mutex_lock(ptr noundef nonnull %9) #16
  %78 = load i32, ptr %14, align 4
  %79 = getelementptr i8, ptr %9, i32 -452
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, -1
  store i32 %81, ptr %79, align 4
  %82 = icmp eq i32 %78, 6
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = getelementptr i8, ptr %9, i32 -448
  %85 = load i32, ptr %84, align 32
  %86 = add i32 %85, -1
  store i32 %86, ptr %84, align 32
  br label %87

87:                                               ; preds = %83, %77
  %88 = getelementptr i8, ptr %9, i32 -408
  %89 = load ptr, ptr %88, align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %111, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %89, i32 0, i32 10
  %93 = load ptr, ptr %92, align 8
  %94 = icmp eq ptr %93, %6
  br i1 %94, label %95, label %111

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %89, i32 0, i32 17
  %97 = load i8, ptr %96, align 8, !range !12
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = getelementptr i8, ptr %9, i32 -404
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %101, i32 0, i32 17
  %105 = load i8, ptr %104, align 8, !range !12
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %110, !prof !8

107:                                              ; preds = %103, %99
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1430, i32 noundef 9, ptr noundef null) #16
  %108 = load ptr, ptr %88, align 8
  %109 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %108, i32 0, i32 16, i32 2
  store i8 1, ptr %109, align 2
  br label %110

110:                                              ; preds = %107, %103, %95
  tail call void @___cfg80211_scan_done(ptr noundef %13, i1 noundef zeroext false) #16
  br label %111

111:                                              ; preds = %110, %91, %87
  %112 = getelementptr i8, ptr %9, i32 -396
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, %112
  br i1 %114, label %129, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 3
  br label %117

117:                                              ; preds = %127, %115
  %118 = phi ptr [ %113, %115 ], [ %119, %127 ]
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr i8, ptr %118, i32 -28
  %121 = load ptr, ptr %120, align 8
  %122 = load ptr, ptr %116, align 4
  %123 = icmp eq ptr %121, %122
  br i1 %123, label %124, label %127, !prof !8

124:                                              ; preds = %117
  %125 = getelementptr i8, ptr %118, i32 -116
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1437, i32 noundef 9, ptr noundef null) #16
  %126 = tail call i32 @cfg80211_stop_sched_scan_req(ptr noundef %13, ptr noundef %125, i1 noundef zeroext false) #16
  br label %127

127:                                              ; preds = %124, %117
  %128 = icmp eq ptr %119, %112
  br i1 %128, label %129, label %117

129:                                              ; preds = %127, %111
  %130 = getelementptr i8, ptr %9, i32 -480
  %131 = load i32, ptr %130, align 32
  %132 = add i32 %131, -1
  store i32 %132, ptr %130, align 32
  tail call void @mutex_unlock(ptr noundef nonnull %9) #16
  %133 = getelementptr i8, ptr %9, i32 -476
  tail call void @__wake_up(ptr noundef %133, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %212

134:                                              ; preds = %18
  tail call void @mutex_lock(ptr noundef nonnull %9) #16
  %135 = load i32, ptr %14, align 4
  %136 = getelementptr i8, ptr %9, i32 -452
  %137 = load i32, ptr %136, align 4
  %138 = add i32 %137, 1
  store i32 %138, ptr %136, align 4
  %139 = icmp eq i32 %135, 6
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = getelementptr i8, ptr %9, i32 -448
  %142 = load i32, ptr %141, align 32
  %143 = add i32 %142, 1
  store i32 %143, ptr %141, align 32
  br label %144

144:                                              ; preds = %140, %134
  %145 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %145) #16
  tail call void @mutex_unlock(ptr noundef %145) #16
  %146 = getelementptr i8, ptr %9, i32 -480
  %147 = load i32, ptr %146, align 32
  %148 = add i32 %147, 1
  store i32 %148, ptr %146, align 32
  %149 = load i32, ptr %14, align 4
  switch i32 %149, label %200 [
    i32 2, label %150
    i32 8, label %150
  ]

150:                                              ; preds = %144, %144
  %151 = load ptr, ptr %13, align 32
  %152 = getelementptr inbounds %struct.cfg80211_ops, ptr %151, i32 0, i32 62
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %200, label %155

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 30
  %157 = load i8, ptr %156, align 2, !range !12
  %158 = icmp ne i8 %157, 0
  %159 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 31
  %160 = load i32, ptr %159, align 4
  %161 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_set_power_mgmt, i32 0, i32 1), align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %179

163:                                              ; preds = %155
  %164 = tail call ptr @llvm.thread.pointer() #16
  %165 = getelementptr inbounds %struct.thread_info, ptr %164, i32 0, i32 2
  %166 = load i32, ptr %165, align 8
  %167 = lshr i32 %166, 5
  %168 = getelementptr i32, ptr @__cpu_online_mask, i32 %167
  %169 = load volatile i32, ptr %168, align 4
  %170 = and i32 %166, 31
  %171 = shl nuw i32 1, %170
  %172 = and i32 %171, %169
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %163
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !39
  %175 = tail call i32 @__traceiter_rdev_set_power_mgmt(ptr noundef null, ptr noundef nonnull %9, ptr noundef %4, i1 noundef zeroext %158, i32 noundef %160) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !40
  %176 = load ptr, ptr %13, align 32
  %177 = getelementptr inbounds %struct.cfg80211_ops, ptr %176, i32 0, i32 62
  %178 = load ptr, ptr %177, align 4
  br label %179

179:                                              ; preds = %174, %163, %155
  %180 = phi ptr [ %178, %174 ], [ %153, %163 ], [ %153, %155 ]
  %181 = tail call i32 %180(ptr noundef nonnull %9, ptr noundef %4, i1 noundef zeroext %158, i32 noundef %160) #16
  %182 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %179
  %185 = tail call ptr @llvm.thread.pointer() #16
  %186 = getelementptr inbounds %struct.thread_info, ptr %185, i32 0, i32 2
  %187 = load i32, ptr %186, align 8
  %188 = lshr i32 %187, 5
  %189 = getelementptr i32, ptr @__cpu_online_mask, i32 %188
  %190 = load volatile i32, ptr %189, align 4
  %191 = and i32 %187, 31
  %192 = shl nuw i32 1, %191
  %193 = and i32 %192, %190
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %184
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %196 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef nonnull %9, i32 noundef %181) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %197

197:                                              ; preds = %195, %184, %179
  %198 = icmp eq i32 %181, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %197
  store i8 0, ptr %156, align 2
  br label %200

200:                                              ; preds = %199, %197, %150, %144
  tail call void @mutex_unlock(ptr noundef nonnull %9) #16
  br label %212

201:                                              ; preds = %18
  %202 = load ptr, ptr %6, align 4
  %203 = load i32, ptr %14, align 4
  %204 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 8
  %205 = load i8, ptr %204, align 4, !range !12
  %206 = icmp ne i8 %205, 0
  %207 = tail call zeroext i1 @cfg80211_iftype_allowed(ptr noundef %202, i32 noundef %203, i1 noundef zeroext %206, i8 noundef zeroext 0) #16
  br i1 %207, label %208, label %213

208:                                              ; preds = %201
  %209 = getelementptr i8, ptr %9, i32 848
  %210 = load ptr, ptr %209, align 16
  %211 = tail call zeroext i1 @rfkill_blocked(ptr noundef %210) #16
  br i1 %211, label %213, label %212

212:                                              ; preds = %208, %200, %129, %75, %74, %70, %66, %65, %61, %56
  br label %213

213:                                              ; preds = %212, %208, %201, %18, %3
  %214 = phi i32 [ 1, %212 ], [ 0, %3 ], [ 0, %18 ], [ 32864, %201 ], [ 32901, %208 ]
  ret i32 %214
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_iftype_allowed(ptr noundef, i32 noundef, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rfkill_blocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_set_power_mgmt(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold nounwind }

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
!9 = !{i64 2155852762, i64 2155853246, i64 2155852799, i64 2155852855, i64 2155852889, i64 2155852913, i64 2155852954, i64 2155852975, i64 2155853003, i64 2155853037}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i8 0, i8 2}
!13 = !{i64 2157472638}
!14 = !{i64 2157472812}
!15 = !{i64 2156206712}
!16 = !{i64 2156206866}
!17 = !{i64 2157513647}
!18 = !{i64 2157513807}
!19 = !{i64 2156289220}
!20 = !{i64 2156289396}
!21 = !{i64 2156165007}
!22 = !{i64 2156165169}
!23 = !{i64 2148104803}
!24 = !{i64 504798, i64 2147994769, i64 2147994795, i64 2147994842, i64 2147994864, i64 2147994892, i64 2147994912}
!25 = !{i64 2148007665, i64 2148007697, i64 2148007726, i64 2148007760, i64 2148007791, i64 2148007814}
!26 = !{i64 2148105006}
!27 = !{i64 2148009338, i64 2148009364, i64 2148009393, i64 2148009427, i64 2148009458, i64 2148009481}
!28 = !{!"branch_weights", i32 1, i32 4001}
!29 = !{i64 2151113960}
!30 = !{i64 2156249055}
!31 = !{i64 2156249225}
!32 = !{i64 2156232074}
!33 = !{i64 2156232228}
!34 = !{i64 2158596814}
!35 = !{i64 2158596986}
!36 = !{i64 2148107636}
!37 = !{i64 2148010022, i64 2148010054, i64 2148010083, i64 2148010117, i64 2148010148, i64 2148010171}
!38 = !{i64 2148107839}
!39 = !{i64 2156934869}
!40 = !{i64 2156935081}
