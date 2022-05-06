; ModuleID = '/llk/IR/net/xfrm/xfrm_output.c_pt.bc'
source_filename = "../net/xfrm/xfrm_output.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_output_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_output_resume\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_output_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_output:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_output\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_local_error:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_local_error\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_local_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.25, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.98, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.98 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.152, [4 x i8], i32, [60 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [56 x i8] }
%struct.anon.152 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%union.anon.34 = type { i32 }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.callback_head = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.41, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.95, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.41 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.95 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.84, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.85, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.84 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.85 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_state_offload = type { ptr, %struct.netdevice_tracker, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ip_beet_phdr = type { i8, i8, i8, i8 }
%struct.xfrm_dst = type { %union.anon.153, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.153 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.79 }
%union.anon.79 = type { [4 x i32] }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.skb_ext = type { %struct.refcount_struct, [1 x i8], i8, [2 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.146, i32, i32, i8, i8 }
%struct.anon.146 = type { i32, i32 }
%struct.xfrm_type_offload = type { ptr, i8, ptr, ptr, ptr }
%struct.xfrm_type = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.134, [0 x i32], %union.anon.135, i16, i16, %union.anon.136, %struct.refcount_struct, [0 x i32], %union.anon.137 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { %struct.hlist_node }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i32 }
%struct.xfrm_state_afinfo = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.138, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.139, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.140, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.138 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.139 = type { ptr }
%union.anon.140 = type { ptr }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.86 }
%union.anon.86 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.91, i32, %struct.list_head, ptr }
%union.anon.91 = type { %struct.in6_addr }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.149, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipv6_rt_hdr = type { i8, i8, i8, i8 }
%struct.ipv6_opt_hdr = type { i8, i8 }

@__kstrtab_xfrm_output_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_output_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_output_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_output_resume to i32), ptr @__kstrtab_xfrm_output_resume, ptr @__kstrtabns_xfrm_output_resume }, section "___ksymtab_gpl+xfrm_output_resume", align 4
@__kstrtab_xfrm_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_output = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_output to i32), ptr @__kstrtab_xfrm_output, ptr @__kstrtabns_xfrm_output }, section "___ksymtab_gpl+xfrm_output", align 4
@__kstrtab_xfrm_local_error = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_local_error = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_local_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_local_error to i32), ptr @__kstrtab_xfrm_local_error, ptr @__kstrtabns_xfrm_local_error }, section "___ksymtab_gpl+xfrm_local_error", align 4
@init_net = external dso_local global %struct.net, align 64
@xfrm_outer_mode_output.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"net/xfrm/xfrm_output.c\00", align 1
@xfrm_outer_mode_output.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@xfrm4_prepare_output.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"\014BEET mode doesn't support inner IPv4 fragments\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.4 = private unnamed_addr constant [18 x i8] c"include/net/dst.h\00", align 1
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 64
@xfrm6_prepare_output.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_xfrm_local_error, ptr @__ksymtab_xfrm_output, ptr @__ksymtab_xfrm_output_resume], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_output_resume(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 11
  %14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 13
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %20 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 14
  %22 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 37
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 33
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  %25 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 32
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 35
  %27 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 34
  %28 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 20
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 30
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %31 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 12
  %32 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 20
  %33 = load i32, ptr %6, align 8
  br label %34

34:                                               ; preds = %787, %3
  %35 = phi i32 [ %33, %3 ], [ %788, %787 ]
  %36 = phi i32 [ %2, %3 ], [ 1, %787 ]
  %37 = and i32 %35, -2
  %38 = inttoptr i32 %37 to ptr
  %39 = getelementptr inbounds %struct.dst_entry, ptr %38, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = icmp slt i32 %36, 1
  br i1 %41, label %722, label %42

42:                                               ; preds = %773, %34
  %43 = phi ptr [ %775, %773 ], [ %38, %34 ]
  %44 = phi ptr [ %766, %773 ], [ %40, %34 ]
  %45 = getelementptr inbounds %struct.dst_entry, ptr %43, i32 0, i32 9
  %46 = load i16, ptr %45, align 4
  %47 = zext i16 %46 to i32
  %48 = load ptr, ptr %43, align 4
  %49 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 19
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 21
  %53 = load i16, ptr %52, align 8
  %54 = zext i16 %53 to i32
  %55 = add nuw nsw i32 %54, %51
  %56 = and i32 %55, 131056
  %57 = load ptr, ptr %8, align 4
  %58 = load ptr, ptr %9, align 8
  %59 = ptrtoint ptr %57 to i32
  %60 = ptrtoint ptr %58 to i32
  %61 = sub i32 %60, %59
  %62 = add nuw nsw i32 %47, 16
  %63 = add nuw nsw i32 %62, %56
  %64 = add i32 %63, %61
  %65 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 22
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  %68 = load i32, ptr %10, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %42
  %71 = load ptr, ptr %11, align 4
  %72 = load ptr, ptr %12, align 8
  %73 = ptrtoint ptr %71 to i32
  %74 = ptrtoint ptr %72 to i32
  %75 = sub i32 %74, %73
  br label %76

76:                                               ; preds = %70, %42
  %77 = phi i32 [ %75, %70 ], [ 0, %42 ]
  %78 = add i32 %77, %67
  %79 = icmp slt i32 %64, 1
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = icmp slt i32 %78, 1
  br i1 %81, label %89, label %84

82:                                               ; preds = %76
  %83 = call i32 @llvm.smax.i32(i32 %78, i32 0) #8
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %64, %82 ], [ 0, %80 ]
  %86 = phi i32 [ %83, %82 ], [ %78, %80 ]
  %87 = call i32 @pskb_expand_head(ptr noundef %1, i32 noundef %85, i32 noundef %86, i32 noundef 2592) #8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %804

89:                                               ; preds = %84, %80
  %90 = load i32, ptr %13, align 4
  %91 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 14, i32 12
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 14, i32 12, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, %92
  %96 = xor i32 %94, -1
  %97 = and i32 %90, %96
  %98 = or i32 %95, %97
  store i32 %98, ptr %13, align 4
  %99 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 48
  %100 = load i8, ptr %99, align 2
  switch i8 %100, label %628 [
    i8 4, label %101
    i8 1, label %101
    i8 0, label %490
    i8 2, label %581
  ]

101:                                              ; preds = %89, %89
  %102 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 48, i32 1
  %103 = load i8, ptr %102, align 1
  switch i8 %103, label %802 [
    i8 2, label %104
    i8 10, label %314
  ]

104:                                              ; preds = %101
  %105 = call fastcc i32 @xfrm_inner_extract_output(ptr noundef %44, ptr noundef %1) #8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %804

107:                                              ; preds = %104
  %108 = load i16, ptr %28, align 4
  %109 = or i16 %108, 2
  store i16 %109, ptr %28, align 4
  store i16 8, ptr %20, align 8
  %110 = load i8, ptr %99, align 2
  switch i8 %110, label %312 [
    i8 4, label %111
    i8 1, label %194
  ]

111:                                              ; preds = %107
  %112 = load i8, ptr %24, align 4
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %118, label %114, !prof !9

114:                                              ; preds = %111
  %115 = and i8 %112, 4
  %116 = sub nuw nsw i8 8, %115
  %117 = zext i8 %116 to i32
  br label %118

118:                                              ; preds = %114, %111
  %119 = phi i32 [ %117, %114 ], [ 0, %111 ]
  %120 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 14, i32 9
  %121 = load i32, ptr %120, align 4
  %122 = load i8, ptr %25, align 8
  %123 = zext i8 %122 to i32
  %124 = add i32 %119, %121
  %125 = sub i32 65516, %124
  %126 = add i32 %125, %123
  %127 = load ptr, ptr %8, align 4
  %128 = load ptr, ptr %9, align 8
  %129 = ptrtoint ptr %127 to i32
  %130 = ptrtoint ptr %128 to i32
  %131 = sub i32 %129, %130
  %132 = trunc i32 %131 to i16
  %133 = trunc i32 %126 to i16
  %134 = add i16 %132, %133
  store i16 %134, ptr %14, align 4
  %135 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 8, i32 6
  %136 = load i16, ptr %135, align 8
  %137 = icmp eq i16 %136, 10
  br i1 %137, label %140, label %138

138:                                              ; preds = %118
  %139 = add i16 %134, 8
  store i16 %139, ptr %14, align 4
  br label %140

140:                                              ; preds = %138, %118
  %141 = phi i16 [ %139, %138 ], [ %134, %118 ]
  %142 = add i16 %141, 9
  store i16 %142, ptr %15, align 2
  %143 = add i16 %141, 20
  store i16 %143, ptr %16, align 2
  %144 = zext i16 %141 to i32
  %145 = getelementptr i8, ptr %128, i32 %144
  store i8 69, ptr %145, align 4
  %146 = load i8, ptr %26, align 1
  %147 = getelementptr inbounds %struct.iphdr, ptr %145, i32 0, i32 6
  store i8 %146, ptr %147, align 1
  %148 = load i8, ptr %23, align 1
  %149 = getelementptr inbounds %struct.iphdr, ptr %145, i32 0, i32 1
  store i8 %148, ptr %149, align 1
  %150 = load i16, ptr %30, align 4
  %151 = getelementptr inbounds %struct.iphdr, ptr %145, i32 0, i32 3
  store i16 %150, ptr %151, align 4
  %152 = load i16, ptr %29, align 2
  %153 = getelementptr inbounds %struct.iphdr, ptr %145, i32 0, i32 4
  store i16 %152, ptr %153, align 2
  %154 = load i8, ptr %27, align 2
  %155 = getelementptr inbounds %struct.iphdr, ptr %145, i32 0, i32 5
  store i8 %154, ptr %155, align 4
  %156 = load i8, ptr %25, align 8
  %157 = zext i8 %156 to i32
  %158 = sub nsw i32 %157, %119
  %159 = load i32, ptr %17, align 8
  %160 = sub i32 %159, %158
  store i32 %160, ptr %17, align 8
  %161 = load i32, ptr %10, align 4
  %162 = icmp ult i32 %160, %161
  br i1 %162, label %163, label %164, !prof !10

163:                                              ; preds = %140
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

164:                                              ; preds = %140
  %165 = load ptr, ptr %8, align 4
  %166 = getelementptr i8, ptr %165, i32 %158
  store ptr %166, ptr %8, align 4
  %167 = load ptr, ptr %9, align 8
  %168 = load i16, ptr %14, align 4
  %169 = zext i16 %168 to i32
  %170 = getelementptr i8, ptr %167, i32 %169
  br i1 %113, label %187, label %171, !prof !9

171:                                              ; preds = %164
  %172 = and i8 %112, 4
  %173 = xor i8 %172, 4
  %174 = getelementptr inbounds %struct.ip_beet_phdr, ptr %166, i32 0, i32 2
  store i8 %173, ptr %174, align 1
  %175 = lshr i8 %112, 3
  %176 = getelementptr inbounds %struct.ip_beet_phdr, ptr %166, i32 0, i32 1
  store i8 %175, ptr %176, align 1
  %177 = getelementptr inbounds %struct.iphdr, ptr %170, i32 0, i32 6
  %178 = load i8, ptr %177, align 1
  store i8 %178, ptr %166, align 1
  %179 = icmp eq i8 %173, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %171
  %181 = getelementptr %struct.ip_beet_phdr, ptr %166, i32 1
  %182 = zext i8 %173 to i32
  call void @llvm.memset.p0.i32(ptr align 1 %181, i8 1, i32 %182, i1 false) #8
  br label %183

183:                                              ; preds = %180, %171
  store i8 94, ptr %177, align 1
  %184 = load i8, ptr %170, align 4
  %185 = and i8 %184, -16
  %186 = or i8 %185, 5
  store i8 %186, ptr %170, align 4
  br label %187

187:                                              ; preds = %183, %164
  %188 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 14, i32 8
  %189 = load i32, ptr %188, align 4
  %190 = getelementptr inbounds %struct.iphdr, ptr %170, i32 0, i32 8
  store i32 %189, ptr %190, align 4
  %191 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 7
  %192 = load i32, ptr %191, align 8
  %193 = getelementptr inbounds %struct.iphdr, ptr %170, i32 0, i32 9
  store i32 %192, ptr %193, align 4
  br label %633

194:                                              ; preds = %107
  %195 = load i32, ptr %6, align 8
  %196 = and i32 %195, -2
  %197 = inttoptr i32 %196 to ptr
  %198 = load ptr, ptr %9, align 8
  %199 = load i16, ptr %14, align 4
  %200 = zext i16 %199 to i32
  %201 = getelementptr i8, ptr %198, i32 %200
  %202 = load ptr, ptr %8, align 4
  %203 = ptrtoint ptr %201 to i32
  %204 = ptrtoint ptr %202 to i32
  %205 = sub i32 %203, %204
  %206 = ptrtoint ptr %198 to i32
  %207 = sub i32 %204, %206
  %208 = trunc i32 %207 to i16
  %209 = trunc i32 %205 to i16
  %210 = add i16 %209, %208
  store i16 %210, ptr %21, align 4
  %211 = load i16, ptr %16, align 2
  %212 = zext i16 %211 to i32
  %213 = getelementptr i8, ptr %198, i32 %212
  %214 = ptrtoint ptr %213 to i32
  %215 = sub i32 %214, %204
  %216 = trunc i32 %215 to i16
  %217 = add i16 %216, %208
  store i16 %217, ptr %18, align 2
  %218 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 14, i32 9
  %219 = load i32, ptr %218, align 4
  %220 = trunc i32 %219 to i16
  %221 = sub i16 %208, %220
  store i16 %221, ptr %14, align 4
  %222 = add i16 %221, 9
  store i16 %222, ptr %15, align 2
  %223 = add i16 %221, 20
  store i16 %223, ptr %16, align 2
  %224 = zext i16 %221 to i32
  %225 = getelementptr i8, ptr %198, i32 %224
  store i8 69, ptr %225, align 4
  %226 = load i32, ptr %6, align 8
  %227 = and i32 %226, -2
  %228 = inttoptr i32 %227 to ptr
  %229 = getelementptr inbounds %struct.dst_entry, ptr %228, i32 0, i32 1
  %230 = load ptr, ptr %229, align 4
  %231 = load i16, ptr %230, align 64
  %232 = icmp eq i16 %231, 10
  %233 = icmp eq i16 %231, 2
  %234 = select i1 %232, i8 41, i8 0
  %235 = select i1 %233, i8 4, i8 %234
  %236 = getelementptr inbounds %struct.iphdr, ptr %225, i32 0, i32 6
  store i8 %235, ptr %236, align 1
  %237 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 14, i32 11
  %238 = load i32, ptr %237, align 4
  %239 = and i32 %238, 1
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %194
  %242 = load i8, ptr %23, align 1
  br label %243

243:                                              ; preds = %241, %194
  %244 = phi i8 [ %242, %241 ], [ 0, %194 ]
  %245 = getelementptr inbounds %struct.iphdr, ptr %225, i32 0, i32 1
  store i8 %244, ptr %245, align 1
  %246 = load i8, ptr %23, align 1
  %247 = and i8 %244, -4
  %248 = and i8 %246, 3
  %249 = icmp eq i8 %248, 3
  %250 = select i1 %249, i8 2, i8 %248
  %251 = or i8 %250, %247
  store i8 %251, ptr %245, align 1
  %252 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 14, i32 6
  %253 = load i8, ptr %252, align 1
  %254 = zext i8 %253 to i32
  %255 = and i32 %254, 1
  %256 = icmp eq i32 %255, 0
  %257 = select i1 %256, i8 %251, i8 %247
  store i8 %257, ptr %245, align 1
  %258 = and i32 %254, 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %243
  %261 = load i16, ptr %29, align 2
  %262 = and i16 %261, 64
  br label %263

263:                                              ; preds = %260, %243
  %264 = phi i16 [ %262, %260 ], [ 0, %243 ]
  %265 = getelementptr inbounds %struct.iphdr, ptr %225, i32 0, i32 4
  store i16 %264, ptr %265, align 2
  %266 = getelementptr inbounds %struct.dst_entry, ptr %197, i32 0, i32 4
  %267 = load ptr, ptr %266, align 4
  %268 = icmp eq ptr %267, null
  br i1 %268, label %269, label %274

269:                                              ; preds = %263
  %270 = getelementptr inbounds %struct.dst_entry, ptr %197, i32 0, i32 7
  %271 = load i16, ptr %270, align 4
  %272 = and i16 %271, 64
  %273 = icmp eq i16 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %269, %263
  %275 = getelementptr inbounds %struct.xfrm_dst, ptr %197, i32 0, i32 2
  %276 = load ptr, ptr %275, align 4
  br label %277

277:                                              ; preds = %274, %269
  %278 = phi ptr [ %276, %274 ], [ null, %269 ]
  %279 = getelementptr inbounds %struct.dst_entry, ptr %278, i32 0, i32 2
  %280 = load i32, ptr %279, align 4
  %281 = and i32 %280, -4
  %282 = inttoptr i32 %281 to ptr
  %283 = getelementptr i32, ptr %282, i32 9
  %284 = load i32, ptr %283, align 4
  %285 = icmp eq i32 %284, 0
  %286 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 31), align 2
  %287 = zext i8 %286 to i32
  %288 = select i1 %285, i32 %287, i32 %284
  %289 = trunc i32 %288 to i8
  %290 = getelementptr inbounds %struct.iphdr, ptr %225, i32 0, i32 5
  store i8 %289, ptr %290, align 4
  %291 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 14, i32 8
  %292 = load i32, ptr %291, align 4
  %293 = getelementptr inbounds %struct.iphdr, ptr %225, i32 0, i32 8
  store i32 %292, ptr %293, align 4
  %294 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 7
  %295 = load i32, ptr %294, align 8
  %296 = getelementptr inbounds %struct.iphdr, ptr %225, i32 0, i32 9
  store i32 %295, ptr %296, align 4
  %297 = load ptr, ptr %9, align 8
  %298 = load i16, ptr %14, align 4
  %299 = zext i16 %298 to i32
  %300 = getelementptr i8, ptr %297, i32 %299
  %301 = getelementptr inbounds %struct.iphdr, ptr %300, i32 0, i32 4
  %302 = load i16, ptr %301, align 2
  %303 = and i16 %302, 64
  %304 = icmp eq i16 %303, 0
  br i1 %304, label %311, label %305

305:                                              ; preds = %277
  %306 = load i16, ptr %19, align 8
  %307 = and i16 %306, 8
  %308 = icmp eq i16 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.iphdr, ptr %300, i32 0, i32 3
  store i16 0, ptr %310, align 4
  br label %633

311:                                              ; preds = %305, %277
  call void @__ip_select_ident(ptr noundef nonnull @init_net, ptr noundef %300, i32 noundef 1) #8
  br label %633

312:                                              ; preds = %107
  %313 = load i1, ptr @xfrm4_prepare_output.__already_done, align 1
  br i1 %313, label %802, label %799, !prof !9

314:                                              ; preds = %101
  %315 = call fastcc i32 @xfrm_inner_extract_output(ptr noundef %44, ptr noundef %1) #8
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %804

317:                                              ; preds = %314
  %318 = load i16, ptr %19, align 8
  %319 = or i16 %318, 8
  store i16 %319, ptr %19, align 8
  store i16 -8826, ptr %20, align 8
  %320 = load i8, ptr %99, align 2
  switch i8 %320, label %488 [
    i8 4, label %321
    i8 1, label %399
  ]

321:                                              ; preds = %317
  %322 = load i8, ptr %24, align 4
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %328, label %324, !prof !9

324:                                              ; preds = %321
  %325 = and i8 %322, 4
  %326 = sub nuw nsw i8 8, %325
  %327 = zext i8 %326 to i32
  br label %328

328:                                              ; preds = %324, %321
  %329 = phi i32 [ %327, %324 ], [ 0, %321 ]
  %330 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 14, i32 9
  %331 = load i32, ptr %330, align 4
  %332 = add i32 %331, %329
  %333 = load ptr, ptr %8, align 4
  %334 = load ptr, ptr %9, align 8
  %335 = ptrtoint ptr %333 to i32
  %336 = ptrtoint ptr %334 to i32
  %337 = sub i32 %335, %336
  %338 = trunc i32 %337 to i16
  %339 = trunc i32 %332 to i16
  %340 = sub i16 %338, %339
  store i16 %340, ptr %14, align 4
  %341 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 8, i32 6
  %342 = load i16, ptr %341, align 8
  %343 = icmp eq i16 %342, 10
  br i1 %343, label %346, label %344

344:                                              ; preds = %328
  %345 = add i16 %340, 8
  store i16 %345, ptr %14, align 4
  br label %346

346:                                              ; preds = %344, %328
  %347 = phi i16 [ %345, %344 ], [ %340, %328 ]
  %348 = add i16 %347, 6
  store i16 %348, ptr %15, align 2
  %349 = add i16 %347, 40
  store i16 %349, ptr %16, align 2
  %350 = load i8, ptr %25, align 8
  %351 = zext i8 %350 to i32
  %352 = sub nsw i32 %351, %329
  %353 = load i32, ptr %17, align 8
  %354 = sub i32 %353, %352
  store i32 %354, ptr %17, align 8
  %355 = load i32, ptr %10, align 4
  %356 = icmp ult i32 %354, %355
  br i1 %356, label %357, label %358, !prof !10

357:                                              ; preds = %346
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

358:                                              ; preds = %346
  %359 = getelementptr i8, ptr %333, i32 %352
  store ptr %359, ptr %8, align 4
  %360 = zext i16 %347 to i32
  %361 = getelementptr i8, ptr %334, i32 %360
  %362 = load i8, ptr %361, align 4
  %363 = and i8 %362, 15
  %364 = or i8 %363, 96
  store i8 %364, ptr %361, align 4
  %365 = getelementptr inbounds %struct.ipv6hdr, ptr %361, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %365, ptr noundef align 1 dereferenceable(3) %22, i32 3, i1 false) #8
  %366 = load i8, ptr %26, align 1
  %367 = getelementptr inbounds %struct.ipv6hdr, ptr %361, i32 0, i32 3
  store i8 %366, ptr %367, align 2
  %368 = load i8, ptr %23, align 1
  %369 = load i16, ptr %361, align 2
  %370 = and i16 %369, 4080
  %371 = zext i8 %368 to i16
  %372 = shl nuw nsw i16 %371, 4
  %373 = call i16 @llvm.bswap.i16(i16 %372) #8
  %374 = or i16 %373, %370
  store i16 %374, ptr %361, align 2
  %375 = load i8, ptr %27, align 2
  %376 = getelementptr inbounds %struct.ipv6hdr, ptr %361, i32 0, i32 4
  store i8 %375, ptr %376, align 1
  %377 = load ptr, ptr %9, align 8
  %378 = load i16, ptr %14, align 4
  %379 = zext i16 %378 to i32
  %380 = getelementptr i8, ptr %377, i32 %379
  br i1 %323, label %394, label %381, !prof !9

381:                                              ; preds = %358
  %382 = and i8 %322, 4
  %383 = xor i8 %382, 4
  %384 = getelementptr inbounds %struct.ip_beet_phdr, ptr %359, i32 0, i32 2
  store i8 %383, ptr %384, align 1
  %385 = lshr i8 %322, 3
  %386 = getelementptr inbounds %struct.ip_beet_phdr, ptr %359, i32 0, i32 1
  store i8 %385, ptr %386, align 1
  %387 = getelementptr inbounds %struct.ipv6hdr, ptr %380, i32 0, i32 3
  %388 = load i8, ptr %387, align 2
  store i8 %388, ptr %359, align 1
  %389 = icmp eq i8 %383, 0
  br i1 %389, label %393, label %390

390:                                              ; preds = %381
  %391 = getelementptr %struct.ip_beet_phdr, ptr %359, i32 1
  %392 = zext i8 %383 to i32
  call void @llvm.memset.p0.i32(ptr align 1 %391, i8 1, i32 %392, i1 false) #8
  br label %393

393:                                              ; preds = %390, %381
  store i8 94, ptr %387, align 2
  br label %394

394:                                              ; preds = %393, %358
  %395 = getelementptr inbounds %struct.ipv6hdr, ptr %380, i32 0, i32 5
  %396 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 14, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %395, ptr noundef align 4 dereferenceable(16) %396, i32 16, i1 false) #8
  %397 = getelementptr inbounds %struct.ipv6hdr, ptr %380, i32 0, i32 6
  %398 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %397, ptr noundef align 8 dereferenceable(16) %398, i32 16, i1 false) #8
  br label %633

399:                                              ; preds = %317
  %400 = load i32, ptr %6, align 8
  %401 = and i32 %400, -2
  %402 = inttoptr i32 %401 to ptr
  %403 = load ptr, ptr %9, align 8
  %404 = load i16, ptr %14, align 4
  %405 = zext i16 %404 to i32
  %406 = getelementptr i8, ptr %403, i32 %405
  %407 = load ptr, ptr %8, align 4
  %408 = ptrtoint ptr %406 to i32
  %409 = ptrtoint ptr %407 to i32
  %410 = sub i32 %408, %409
  %411 = ptrtoint ptr %403 to i32
  %412 = sub i32 %409, %411
  %413 = trunc i32 %412 to i16
  %414 = trunc i32 %410 to i16
  %415 = add i16 %414, %413
  store i16 %415, ptr %21, align 4
  %416 = load i16, ptr %16, align 2
  %417 = zext i16 %416 to i32
  %418 = getelementptr i8, ptr %403, i32 %417
  %419 = ptrtoint ptr %418 to i32
  %420 = sub i32 %419, %409
  %421 = trunc i32 %420 to i16
  %422 = add i16 %421, %413
  store i16 %422, ptr %18, align 2
  %423 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 14, i32 9
  %424 = load i32, ptr %423, align 4
  %425 = trunc i32 %424 to i16
  %426 = sub i16 %413, %425
  store i16 %426, ptr %14, align 4
  %427 = add i16 %426, 6
  store i16 %427, ptr %15, align 2
  %428 = add i16 %426, 40
  store i16 %428, ptr %16, align 2
  %429 = zext i16 %426 to i32
  %430 = getelementptr i8, ptr %403, i32 %429
  %431 = load i8, ptr %430, align 4
  %432 = and i8 %431, 15
  %433 = or i8 %432, 96
  store i8 %433, ptr %430, align 4
  %434 = getelementptr inbounds %struct.ipv6hdr, ptr %430, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %434, ptr noundef align 1 dereferenceable(3) %22, i32 3, i1 false) #8
  %435 = load i32, ptr %6, align 8
  %436 = and i32 %435, -2
  %437 = inttoptr i32 %436 to ptr
  %438 = getelementptr inbounds %struct.dst_entry, ptr %437, i32 0, i32 1
  %439 = load ptr, ptr %438, align 4
  %440 = load i16, ptr %439, align 64
  %441 = icmp eq i16 %440, 10
  %442 = icmp eq i16 %440, 2
  %443 = select i1 %441, i8 41, i8 0
  %444 = select i1 %442, i8 4, i8 %443
  %445 = getelementptr inbounds %struct.ipv6hdr, ptr %430, i32 0, i32 3
  store i8 %444, ptr %445, align 2
  %446 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 14, i32 11
  %447 = load i32, ptr %446, align 4
  %448 = and i32 %447, 1
  %449 = icmp eq i32 %448, 0
  %450 = load i8, ptr %23, align 1
  %451 = and i8 %450, -4
  %452 = select i1 %449, i8 %451, i8 0
  %453 = and i8 %450, 3
  %454 = icmp eq i8 %453, 3
  %455 = select i1 %454, i8 2, i8 %453
  %456 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 14, i32 6
  %457 = load i8, ptr %456, align 1
  %458 = and i8 %457, 1
  %459 = icmp eq i8 %458, 0
  %460 = select i1 %459, i8 %455, i8 0
  %461 = or i8 %460, %452
  %462 = load i16, ptr %430, align 2
  %463 = and i16 %462, 4080
  %464 = zext i8 %461 to i16
  %465 = shl nuw nsw i16 %464, 4
  %466 = call i16 @llvm.bswap.i16(i16 %465) #8
  %467 = or i16 %466, %463
  store i16 %467, ptr %430, align 2
  %468 = getelementptr inbounds %struct.dst_entry, ptr %402, i32 0, i32 4
  %469 = load ptr, ptr %468, align 4
  %470 = icmp eq ptr %469, null
  br i1 %470, label %471, label %476

471:                                              ; preds = %399
  %472 = getelementptr inbounds %struct.dst_entry, ptr %402, i32 0, i32 7
  %473 = load i16, ptr %472, align 4
  %474 = and i16 %473, 64
  %475 = icmp eq i16 %474, 0
  br i1 %475, label %479, label %476

476:                                              ; preds = %471, %399
  %477 = getelementptr inbounds %struct.xfrm_dst, ptr %402, i32 0, i32 2
  %478 = load ptr, ptr %477, align 4
  br label %479

479:                                              ; preds = %476, %471
  %480 = phi ptr [ %478, %476 ], [ null, %471 ]
  %481 = call i32 @ip6_dst_hoplimit(ptr noundef %480) #8
  %482 = trunc i32 %481 to i8
  %483 = getelementptr inbounds %struct.ipv6hdr, ptr %430, i32 0, i32 4
  store i8 %482, ptr %483, align 1
  %484 = getelementptr inbounds %struct.ipv6hdr, ptr %430, i32 0, i32 5
  %485 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 14, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %484, ptr noundef align 4 dereferenceable(16) %485, i32 16, i1 false) #8
  %486 = getelementptr inbounds %struct.ipv6hdr, ptr %430, i32 0, i32 6
  %487 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %486, ptr noundef align 8 dereferenceable(16) %487, i32 16, i1 false) #8
  br label %633

488:                                              ; preds = %317
  %489 = load i1, ptr @xfrm6_prepare_output.__already_done, align 1
  br i1 %489, label %802, label %799, !prof !9

490:                                              ; preds = %89
  %491 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 48, i32 1
  %492 = load i8, ptr %491, align 1
  switch i8 %492, label %802 [
    i8 2, label %493
    i8 10, label %530
  ]

493:                                              ; preds = %490
  %494 = load ptr, ptr %9, align 8
  %495 = load i16, ptr %14, align 4
  %496 = zext i16 %495 to i32
  %497 = getelementptr i8, ptr %494, i32 %496
  %498 = load i8, ptr %497, align 4
  %499 = shl i8 %498, 2
  %500 = and i8 %499, 60
  %501 = zext i8 %500 to i32
  %502 = load i16, ptr %16, align 2
  %503 = zext i16 %502 to i32
  %504 = getelementptr i8, ptr %494, i32 %503
  %505 = load ptr, ptr %8, align 4
  %506 = ptrtoint ptr %504 to i32
  %507 = ptrtoint ptr %505 to i32
  %508 = sub i32 %506, %507
  %509 = ptrtoint ptr %494 to i32
  %510 = sub i32 %507, %509
  %511 = trunc i32 %510 to i16
  %512 = trunc i32 %508 to i16
  %513 = add i16 %512, %511
  store i16 %513, ptr %18, align 2
  %514 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 14, i32 9
  %515 = load i32, ptr %514, align 4
  %516 = trunc i32 %515 to i16
  %517 = sub i16 %511, %516
  store i16 %517, ptr %14, align 4
  %518 = add i16 %517, 9
  store i16 %518, ptr %15, align 2
  %519 = zext i8 %500 to i16
  %520 = add i16 %517, %519
  store i16 %520, ptr %16, align 2
  %521 = load i32, ptr %17, align 8
  %522 = sub i32 %521, %501
  store i32 %522, ptr %17, align 8
  %523 = load i32, ptr %10, align 4
  %524 = icmp ult i32 %522, %523
  br i1 %524, label %525, label %526, !prof !10

525:                                              ; preds = %493
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

526:                                              ; preds = %493
  %527 = getelementptr i8, ptr %505, i32 %501
  store ptr %527, ptr %8, align 4
  %528 = zext i16 %517 to i32
  %529 = getelementptr i8, ptr %494, i32 %528
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %529, ptr align 4 %497, i32 %501, i1 false) #8
  br label %633

530:                                              ; preds = %490
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store ptr null, ptr %5, align 4, !annotation !12
  %531 = load ptr, ptr %9, align 8
  %532 = load i16, ptr %14, align 4
  %533 = zext i16 %532 to i32
  %534 = getelementptr i8, ptr %531, i32 %533
  %535 = load i16, ptr %16, align 2
  %536 = zext i16 %535 to i32
  %537 = getelementptr i8, ptr %531, i32 %536
  %538 = load ptr, ptr %8, align 4
  %539 = ptrtoint ptr %537 to i32
  %540 = ptrtoint ptr %538 to i32
  %541 = sub i32 %539, %540
  %542 = ptrtoint ptr %531 to i32
  %543 = sub i32 %540, %542
  %544 = trunc i32 %543 to i16
  %545 = trunc i32 %541 to i16
  %546 = add i16 %545, %544
  store i16 %546, ptr %18, align 2
  %547 = call fastcc i32 @xfrm6_hdr_offset(ptr noundef %44, ptr noundef %1, ptr noundef nonnull %5) #8
  %548 = icmp slt i32 %547, 0
  br i1 %548, label %579, label %549

549:                                              ; preds = %530
  %550 = load ptr, ptr %5, align 4
  %551 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 14, i32 9
  %552 = load i32, ptr %551, align 4
  %553 = sub i32 0, %552
  %554 = getelementptr i8, ptr %550, i32 %553
  %555 = load ptr, ptr %8, align 4
  %556 = ptrtoint ptr %554 to i32
  %557 = ptrtoint ptr %555 to i32
  %558 = sub i32 %556, %557
  %559 = load ptr, ptr %9, align 8
  %560 = ptrtoint ptr %559 to i32
  %561 = sub i32 %557, %560
  %562 = trunc i32 %561 to i16
  %563 = trunc i32 %558 to i16
  %564 = add i16 %562, %563
  store i16 %564, ptr %15, align 2
  %565 = load i32, ptr %551, align 4
  %566 = trunc i32 %565 to i16
  %567 = sub i16 %562, %566
  store i16 %567, ptr %14, align 4
  %568 = trunc i32 %547 to i16
  %569 = add i16 %567, %568
  store i16 %569, ptr %16, align 2
  %570 = load i32, ptr %17, align 8
  %571 = sub i32 %570, %547
  store i32 %571, ptr %17, align 8
  %572 = load i32, ptr %10, align 4
  %573 = icmp ult i32 %571, %572
  br i1 %573, label %574, label %575, !prof !10

574:                                              ; preds = %549
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

575:                                              ; preds = %549
  %576 = getelementptr i8, ptr %555, i32 %547
  store ptr %576, ptr %8, align 4
  %577 = zext i16 %567 to i32
  %578 = getelementptr i8, ptr %559, i32 %577
  call void @llvm.memmove.p0.p0.i32(ptr align 4 %578, ptr align 4 %534, i32 %547, i1 false) #8
  br label %579

579:                                              ; preds = %575, %530
  %580 = phi i32 [ 0, %575 ], [ %547, %530 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %630

581:                                              ; preds = %89
  %582 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 48, i32 1
  %583 = load i8, ptr %582, align 1
  %584 = icmp eq i8 %583, 10
  br i1 %584, label %585, label %626

585:                                              ; preds = %581
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !12
  %586 = load ptr, ptr %9, align 8
  %587 = load i16, ptr %14, align 4
  %588 = zext i16 %587 to i32
  %589 = getelementptr i8, ptr %586, i32 %588
  %590 = call fastcc i32 @xfrm6_hdr_offset(ptr noundef %44, ptr noundef %1, ptr noundef nonnull %4) #8
  %591 = icmp slt i32 %590, 0
  br i1 %591, label %624, label %592

592:                                              ; preds = %585
  %593 = load ptr, ptr %4, align 4
  %594 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 14, i32 9
  %595 = load i32, ptr %594, align 4
  %596 = sub i32 0, %595
  %597 = getelementptr i8, ptr %593, i32 %596
  %598 = load ptr, ptr %8, align 4
  %599 = ptrtoint ptr %597 to i32
  %600 = ptrtoint ptr %598 to i32
  %601 = sub i32 %599, %600
  %602 = load ptr, ptr %9, align 8
  %603 = ptrtoint ptr %602 to i32
  %604 = sub i32 %600, %603
  %605 = trunc i32 %604 to i16
  %606 = trunc i32 %601 to i16
  %607 = add i16 %605, %606
  store i16 %607, ptr %15, align 2
  %608 = load i32, ptr %594, align 4
  %609 = trunc i32 %608 to i16
  %610 = sub i16 %605, %609
  store i16 %610, ptr %14, align 4
  %611 = trunc i32 %590 to i16
  %612 = add i16 %610, %611
  store i16 %612, ptr %16, align 2
  %613 = load i32, ptr %17, align 8
  %614 = sub i32 %613, %590
  store i32 %614, ptr %17, align 8
  %615 = load i32, ptr %10, align 4
  %616 = icmp ult i32 %614, %615
  br i1 %616, label %617, label %618, !prof !10

617:                                              ; preds = %592
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

618:                                              ; preds = %592
  %619 = getelementptr i8, ptr %598, i32 %590
  store ptr %619, ptr %8, align 4
  %620 = zext i16 %610 to i32
  %621 = getelementptr i8, ptr %602, i32 %620
  call void @llvm.memmove.p0.p0.i32(ptr align 4 %621, ptr align 4 %589, i32 %590, i1 false) #8
  %622 = call i64 @ktime_get_real_seconds() #8
  %623 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 43
  store i64 %622, ptr %623, align 8
  br label %624

624:                                              ; preds = %618, %585
  %625 = phi i32 [ 0, %618 ], [ %590, %585 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %630

626:                                              ; preds = %581
  %627 = load i1, ptr @xfrm_outer_mode_output.__already_done, align 1
  br i1 %627, label %802, label %799, !prof !9

628:                                              ; preds = %89
  %629 = load i1, ptr @xfrm_outer_mode_output.__already_done.2, align 1
  br i1 %629, label %802, label %799, !prof !9

630:                                              ; preds = %624, %579
  %631 = phi i32 [ %625, %624 ], [ %580, %579 ]
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %633, label %804

633:                                              ; preds = %630, %526, %479, %394, %311, %309, %187
  %634 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 6
  call void @_raw_spin_lock_bh(ptr noundef %634) #8
  %635 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 13, i32 1
  %636 = load i8, ptr %635, align 4
  %637 = icmp eq i8 %636, 2
  br i1 %637, label %638, label %776, !prof !9

638:                                              ; preds = %633
  %639 = call i32 @xfrm_state_check_expire(ptr noundef %44) #8
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %641, label %776

641:                                              ; preds = %638
  %642 = call i32 @xfrm_replay_overflow(ptr noundef %44, ptr noundef %1) #8
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %644, label %776

644:                                              ; preds = %641
  %645 = load i32, ptr %17, align 8
  %646 = zext i32 %645 to i64
  %647 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 39
  %648 = load i64, ptr %647, align 8
  %649 = add i64 %648, %646
  store i64 %649, ptr %647, align 8
  %650 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 39, i32 1
  %651 = load i64, ptr %650, align 8
  %652 = add i64 %651, 1
  store i64 %652, ptr %650, align 8
  %653 = call i64 @ktime_get_real_seconds() #8
  %654 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 39, i32 3
  store i64 %653, ptr %654, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %634) #8
  %655 = load i32, ptr %6, align 8
  %656 = and i32 %655, 1
  %657 = icmp ne i32 %656, 0
  %658 = icmp ugt i32 %655, 1
  %659 = and i1 %658, %657
  br i1 %659, label %660, label %682

660:                                              ; preds = %644
  %661 = and i32 %655, -2
  %662 = inttoptr i32 %661 to ptr
  %663 = getelementptr inbounds %struct.dst_entry, ptr %662, i32 0, i32 18
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %663) #8, !srcloc !14
  %664 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %663, ptr %663, i32 0, i32 1, ptr elementtype(i32) %663) #8, !srcloc !15
  %665 = extractvalue { i32, i32, i32 } %664, 0
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %668, label %667

667:                                              ; preds = %660
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  br label %668

668:                                              ; preds = %667, %660
  %669 = phi ptr [ null, %660 ], [ %662, %667 ]
  %670 = ptrtoint ptr %669 to i32
  store i32 %670, ptr %6, align 8
  %671 = icmp ne ptr %669, null
  %672 = zext i1 %671 to i8
  %673 = load i16, ptr %7, align 2
  %674 = lshr i16 %673, 14
  %675 = trunc i16 %674 to i8
  %676 = and i8 %675, 1
  %677 = or i8 %676, %672
  %678 = zext i8 %677 to i16
  %679 = shl nuw nsw i16 %678, 14
  %680 = and i16 %673, -16385
  %681 = or i16 %679, %680
  store i16 %681, ptr %7, align 2
  br label %682

682:                                              ; preds = %668, %644
  %683 = phi i32 [ %655, %644 ], [ %670, %668 ]
  %684 = icmp ult i32 %683, 2
  br i1 %684, label %802, label %685

685:                                              ; preds = %682
  %686 = load i8, ptr %31, align 1
  %687 = and i8 %686, 1
  %688 = icmp eq i8 %687, 0
  br i1 %688, label %713, label %689

689:                                              ; preds = %685
  %690 = load ptr, ptr %32, align 8
  %691 = getelementptr inbounds %struct.skb_ext, ptr %690, i32 0, i32 1
  %692 = load i8, ptr %691, align 1
  %693 = zext i8 %692 to i32
  %694 = shl nuw nsw i32 %693, 3
  %695 = getelementptr i8, ptr %690, i32 %694
  %696 = icmp eq ptr %695, null
  br i1 %696, label %713, label %697

697:                                              ; preds = %689
  %698 = getelementptr inbounds %struct.sec_path, ptr %695, i32 0, i32 1
  %699 = load i32, ptr %698, align 4
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %713, label %701

701:                                              ; preds = %697
  %702 = load i32, ptr %695, align 4
  %703 = icmp eq i32 %702, %699
  br i1 %703, label %704, label %713

704:                                              ; preds = %701
  %705 = add i32 %699, -1
  %706 = getelementptr %struct.sec_path, ptr %695, i32 0, i32 3, i32 %705
  %707 = icmp eq ptr %706, null
  br i1 %707, label %713, label %708

708:                                              ; preds = %704
  %709 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 49
  %710 = load ptr, ptr %709, align 8
  %711 = getelementptr inbounds %struct.xfrm_type_offload, ptr %710, i32 0, i32 2
  %712 = load ptr, ptr %711, align 4
  call void %712(ptr noundef %44, ptr noundef %1) #8
  br label %722

713:                                              ; preds = %704, %701, %697, %689, %685
  %714 = load i16, ptr %19, align 8
  %715 = and i16 %714, -8193
  store i16 %715, ptr %19, align 8
  %716 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 45
  %717 = load ptr, ptr %716, align 8
  %718 = getelementptr inbounds %struct.xfrm_type, ptr %717, i32 0, i32 6
  %719 = load ptr, ptr %718, align 4
  %720 = call i32 %719(ptr noundef %44, ptr noundef %1) #8
  %721 = icmp eq i32 %720, -115
  br i1 %721, label %807, label %722

722:                                              ; preds = %713, %708, %34
  %723 = phi i32 [ %36, %34 ], [ 0, %708 ], [ %720, %713 ]
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %725, label %804

725:                                              ; preds = %722
  %726 = load i32, ptr %6, align 8
  %727 = and i32 %726, -2
  %728 = inttoptr i32 %727 to ptr
  %729 = getelementptr inbounds %struct.dst_entry, ptr %728, i32 0, i32 4
  %730 = load ptr, ptr %729, align 4
  %731 = icmp eq ptr %730, null
  br i1 %731, label %732, label %737

732:                                              ; preds = %725
  %733 = getelementptr inbounds %struct.dst_entry, ptr %728, i32 0, i32 7
  %734 = load i16, ptr %733, align 4
  %735 = and i16 %734, 64
  %736 = icmp eq i16 %735, 0
  br i1 %736, label %748, label %737

737:                                              ; preds = %732, %725
  %738 = getelementptr inbounds %struct.xfrm_dst, ptr %728, i32 0, i32 2
  %739 = load ptr, ptr %738, align 4
  %740 = icmp eq ptr %739, null
  br i1 %740, label %748, label %741

741:                                              ; preds = %737
  %742 = getelementptr inbounds %struct.dst_entry, ptr %739, i32 0, i32 18
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %742) #8, !srcloc !14
  %743 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %742, ptr %742, i32 0, i32 1, ptr elementtype(i32) %742) #8, !srcloc !15
  %744 = extractvalue { i32, i32, i32 } %743, 0
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %747, label %746

746:                                              ; preds = %741
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  br label %748

747:                                              ; preds = %741
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 231, i32 noundef 9, ptr noundef null) #8
  br label %748

748:                                              ; preds = %747, %746, %737, %732
  %749 = phi ptr [ null, %737 ], [ %739, %746 ], [ %739, %747 ], [ null, %732 ]
  %750 = load i32, ptr %6, align 8
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %759, label %752

752:                                              ; preds = %748
  %753 = and i32 %750, 1
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %755, label %758

755:                                              ; preds = %752
  %756 = and i32 %750, -2
  %757 = inttoptr i32 %756 to ptr
  call void @dst_release(ptr noundef %757) #8
  br label %758

758:                                              ; preds = %755, %752
  store i32 0, ptr %6, align 8
  br label %759

759:                                              ; preds = %758, %748
  %760 = icmp eq ptr %749, null
  br i1 %760, label %802, label %761

761:                                              ; preds = %759
  %762 = load i16, ptr %7, align 2
  %763 = or i16 %762, 16384
  store i16 %763, ptr %7, align 2
  %764 = ptrtoint ptr %749 to i32
  store i32 %764, ptr %6, align 8
  %765 = getelementptr inbounds %struct.dst_entry, ptr %749, i32 0, i32 4
  %766 = load ptr, ptr %765, align 4
  %767 = icmp eq ptr %766, null
  br i1 %767, label %778, label %768

768:                                              ; preds = %761
  %769 = getelementptr inbounds %struct.xfrm_state, ptr %766, i32 0, i32 48, i32 2
  %770 = load i8, ptr %769, align 2
  %771 = and i8 %770, 1
  %772 = icmp eq i8 %771, 0
  br i1 %772, label %773, label %778

773:                                              ; preds = %768
  %774 = and i32 %764, -2
  %775 = inttoptr i32 %774 to ptr
  br label %42

776:                                              ; preds = %641, %638, %633
  %777 = phi i32 [ -22, %633 ], [ %639, %638 ], [ %642, %641 ]
  call void @_raw_spin_unlock_bh(ptr noundef %634) #8
  br label %804

778:                                              ; preds = %768, %761
  %779 = and i32 %764, -2
  %780 = inttoptr i32 %779 to ptr
  %781 = getelementptr inbounds %struct.dst_entry, ptr %780, i32 0, i32 1
  %782 = load ptr, ptr %781, align 4
  %783 = getelementptr inbounds %struct.dst_ops, ptr %782, i32 0, i32 13
  %784 = load ptr, ptr %783, align 4
  %785 = call i32 %784(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef %1) #8
  %786 = icmp eq i32 %785, 1
  br i1 %786, label %787, label %808, !prof !9

787:                                              ; preds = %778
  %788 = load i32, ptr %6, align 8
  %789 = and i32 %788, -2
  %790 = inttoptr i32 %789 to ptr
  %791 = getelementptr inbounds %struct.dst_entry, ptr %790, i32 0, i32 4
  %792 = load ptr, ptr %791, align 4
  %793 = icmp eq ptr %792, null
  br i1 %793, label %794, label %34

794:                                              ; preds = %787
  %795 = inttoptr i32 %789 to ptr
  %796 = getelementptr inbounds %struct.dst_entry, ptr %795, i32 0, i32 6
  %797 = load ptr, ptr %796, align 4
  %798 = call i32 %797(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef %1) #8
  br label %808

799:                                              ; preds = %628, %626, %488, %312
  %800 = phi ptr [ @xfrm4_prepare_output.__already_done, %312 ], [ @xfrm6_prepare_output.__already_done, %488 ], [ @xfrm_outer_mode_output.__already_done, %626 ], [ @xfrm_outer_mode_output.__already_done.2, %628 ]
  %801 = phi i32 [ 423, %312 ], [ 445, %488 ], [ 472, %626 ], [ 475, %628 ]
  store i1 true, ptr %800, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef %801, i32 noundef 9, ptr noundef null) #8
  br label %802

802:                                              ; preds = %799, %759, %682, %628, %626, %490, %488, %312, %101
  %803 = phi i32 [ -95, %628 ], [ -95, %626 ], [ -95, %312 ], [ -95, %488 ], [ -95, %799 ], [ -113, %682 ], [ -113, %759 ], [ -95, %101 ], [ -95, %490 ]
  call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #8
  br label %808

804:                                              ; preds = %776, %722, %630, %314, %104, %84
  %805 = phi i32 [ %777, %776 ], [ %105, %104 ], [ %315, %314 ], [ %723, %722 ], [ %631, %630 ], [ %87, %84 ]
  call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #8
  %806 = icmp eq i32 %805, -115
  br i1 %806, label %807, label %808

807:                                              ; preds = %804, %713
  br label %808

808:                                              ; preds = %807, %804, %802, %794, %778
  %809 = phi i32 [ %798, %794 ], [ 0, %807 ], [ %805, %804 ], [ %803, %802 ], [ %785, %778 ]
  ret i32 %809
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_output(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -2
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.xfrm_state, ptr %8, i32 0, i32 48, i32 1
  %10 = load i8, ptr %9, align 1
  switch i8 %10, label %17 [
    i8 2, label %11
    i8 10, label %14
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %12, i8 0, i32 24, i1 false)
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 20
  store i16 4, ptr %13, align 4
  br label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %15, i8 0, i32 24, i1 false)
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  store i16 1, ptr %16, align 8
  br label %17

17:                                               ; preds = %14, %11, %2
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 12
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void @__skb_ext_del(ptr noundef %1, i32 noundef 0) #8
  br label %23

23:                                               ; preds = %22, %17
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.skb_shared_info, ptr %25, i32 0, i32 4
  %27 = load i16, ptr %26, align 4
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %23
  %30 = tail call ptr @__skb_gso_segment(ptr noundef %1, i64 noundef 0, i1 noundef zeroext true) #8
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #8
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = ptrtoint ptr %30 to i32
  br label %55

34:                                               ; preds = %29
  %35 = icmp eq ptr %30, null
  br i1 %35, label %55, label %36

36:                                               ; preds = %42, %34
  %37 = phi ptr [ %38, %42 ], [ %30, %34 ]
  %38 = load ptr, ptr %37, align 8
  store ptr null, ptr %37, align 8
  %39 = tail call i32 @xfrm_output_resume(ptr noundef %0, ptr noundef nonnull %37, i32 noundef 1) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41, !prof !9

41:                                               ; preds = %36
  tail call void @kfree_skb_list(ptr noundef %38) #8
  br label %55

42:                                               ; preds = %36
  %43 = icmp eq ptr %38, null
  br i1 %43, label %55, label %36

44:                                               ; preds = %23
  %45 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %46 = load i16, ptr %45, align 8
  %47 = and i16 %46, 96
  %48 = icmp eq i16 %47, 96
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = tail call i32 @skb_checksum_help(ptr noundef %1) #8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #8
  br label %55

53:                                               ; preds = %49, %44
  %54 = tail call i32 @xfrm_output_resume(ptr noundef %0, ptr noundef %1, i32 noundef 1) #8
  br label %55

55:                                               ; preds = %53, %52, %42, %41, %34, %32
  %56 = phi i32 [ %54, %53 ], [ %50, %52 ], [ %33, %32 ], [ %39, %41 ], [ -22, %34 ], [ 0, %42 ]
  ret i32 %56
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_local_error(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %4 = load i16, ptr %3, align 8
  switch i16 %4, label %18 [
    i16 8, label %11
    i16 -8826, label %5
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 3
  %9 = load i16, ptr %8, align 8
  %10 = icmp eq i16 %9, 10
  br i1 %10, label %11, label %18

11:                                               ; preds = %5, %2
  %12 = phi i32 [ 2, %2 ], [ 10, %5 ]
  %13 = tail call ptr @xfrm_state_get_afinfo(i32 noundef %12) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %13, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  tail call void %17(ptr noundef %0, i32 noundef %1) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %18

18:                                               ; preds = %15, %11, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_get_afinfo(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_check_expire(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_replay_overflow(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xfrm_inner_extract_output(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 8, i32 6
  %4 = load i16, ptr %3, align 8
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, -2
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.dst_entry, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i16, ptr %12, align 64
  %14 = icmp eq i16 %13, 10
  %15 = select i1 %14, i32 41, i32 0
  %16 = icmp eq i16 %13, 2
  %17 = select i1 %16, i32 4, i32 %15
  switch i32 %17, label %28 [
    i32 4, label %18
    i32 41, label %22
  ]

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 7
  %20 = load i16, ptr %19, align 2
  %21 = icmp eq i16 %20, 2
  br i1 %21, label %26, label %28

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 7
  %24 = load i16, ptr %23, align 2
  %25 = icmp eq i16 %24, 10
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 46
  br label %32

28:                                               ; preds = %22, %18, %6
  %29 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 47
  br label %32

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 46
  br label %32

32:                                               ; preds = %30, %28, %26
  %33 = phi ptr [ %31, %30 ], [ %27, %26 ], [ %29, %28 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %365, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.xfrm_mode, ptr %33, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  switch i8 %37, label %365 [
    i8 2, label %38
    i8 10, label %224
  ]

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 48
  %40 = load i8, ptr %39, align 2
  %41 = icmp eq i8 %40, 4
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %46 = load i16, ptr %45, align 4
  %47 = zext i16 %46 to i32
  %48 = getelementptr i8, ptr %44, i32 %47
  %49 = getelementptr inbounds %struct.iphdr, ptr %48, i32 0, i32 4
  %50 = load i16, ptr %49, align 2
  %51 = and i16 %50, -193
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %42
  %54 = tail call i32 @net_ratelimit() #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %365, label %56

56:                                               ; preds = %53
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %365

58:                                               ; preds = %42, %38
  %59 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 20
  %60 = load i16, ptr %59, align 4
  %61 = and i16 %60, 2
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %195

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %67 = load i16, ptr %66, align 4
  %68 = zext i16 %67 to i32
  %69 = getelementptr i8, ptr %65, i32 %68
  %70 = getelementptr inbounds %struct.iphdr, ptr %69, i32 0, i32 4
  %71 = load i16, ptr %70, align 2
  %72 = and i16 %71, 64
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %195, label %74

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %76 = load i16, ptr %75, align 8
  %77 = and i16 %76, 8
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %195

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, -2
  %83 = inttoptr i32 %82 to ptr
  %84 = getelementptr inbounds %struct.dst_entry, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.dst_ops, ptr %85, i32 0, i32 5
  %87 = load ptr, ptr %86, align 4
  %88 = tail call i32 %87(ptr noundef %83) #8
  %89 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.skb_shared_info, ptr %90, i32 0, i32 4
  %92 = load i16, ptr %91, align 4
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %79
  %95 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %96 = load i32, ptr %95, align 8
  %97 = icmp ugt i32 %96, %88
  br i1 %97, label %181, label %195

98:                                               ; preds = %79
  %99 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %113, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.sock_common, ptr %100, i32 0, i32 4
  %104 = load volatile i8, ptr %103, align 2
  %105 = zext i8 %104 to i32
  %106 = shl nuw i32 1, %105
  %107 = and i32 %106, -4161
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.inet_sock, ptr %100, i32 0, i32 11
  %111 = load i8, ptr %110, align 1
  %112 = icmp ult i8 %111, 3
  br i1 %112, label %113, label %170

113:                                              ; preds = %109, %102, %98
  %114 = load i32, ptr %80, align 8
  %115 = and i32 %114, -2
  %116 = inttoptr i32 %115 to ptr
  %117 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 33), align 4
  %118 = icmp eq i8 %117, 0
  %119 = getelementptr inbounds %struct.rtable, ptr %116, i32 0, i32 9
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %118, i1 %122, i1 false
  br i1 %123, label %124, label %138

124:                                              ; preds = %113
  %125 = load i16, ptr %59, align 4
  %126 = and i16 %125, 1
  %127 = icmp ne i16 %126, 0
  %128 = getelementptr inbounds %struct.dst_entry, ptr %116, i32 0, i32 2
  %129 = load i32, ptr %128, align 4
  %130 = and i32 %129, -4
  %131 = inttoptr i32 %130 to ptr
  %132 = load i32, ptr %131, align 4
  %133 = and i32 %132, 4
  %134 = icmp eq i32 %133, 0
  %135 = and i1 %127, %134
  %136 = icmp ult i32 %120, 2
  %137 = select i1 %135, i1 true, i1 %136
  br i1 %137, label %147, label %140

138:                                              ; preds = %113
  %139 = icmp ult i32 %120, 2
  br i1 %139, label %147, label %140

140:                                              ; preds = %138, %124
  %141 = lshr i32 %120, 1
  %142 = load volatile i32, ptr @jiffies, align 64
  %143 = getelementptr inbounds %struct.dst_entry, ptr %116, i32 0, i32 3
  %144 = load i32, ptr %143, align 4
  %145 = sub i32 %142, %144
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %177, label %147

147:                                              ; preds = %140, %138, %124
  %148 = getelementptr inbounds %struct.dst_entry, ptr %116, i32 0, i32 2
  %149 = load i32, ptr %148, align 4
  %150 = and i32 %149, -4
  %151 = inttoptr i32 %150 to ptr
  %152 = getelementptr i32, ptr %151, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %177

155:                                              ; preds = %147
  %156 = load ptr, ptr %116, align 4
  %157 = getelementptr inbounds %struct.net_device, ptr %156, i32 0, i32 20
  %158 = load volatile i32, ptr %157, align 4
  br i1 %122, label %159, label %163

159:                                              ; preds = %155
  %160 = load i32, ptr %151, align 4
  %161 = and i32 %160, 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %177, label %163, !prof !9

163:                                              ; preds = %159, %155
  %164 = getelementptr inbounds %struct.rtable, ptr %116, i32 0, i32 5
  %165 = load i8, ptr %164, align 1
  %166 = icmp ne i8 %165, 0
  %167 = icmp ugt i32 %158, 576
  %168 = select i1 %166, i1 %167, i1 false
  %169 = select i1 %168, i32 576, i32 %158
  br label %177

170:                                              ; preds = %109
  %171 = load i32, ptr %80, align 8
  %172 = and i32 %171, -2
  %173 = inttoptr i32 %172 to ptr
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.net_device, ptr %174, i32 0, i32 20
  %176 = load volatile i32, ptr %175, align 4
  br label %177

177:                                              ; preds = %170, %163, %159, %147, %140
  %178 = phi i32 [ %176, %170 ], [ %141, %140 ], [ %153, %147 ], [ %169, %163 ], [ %158, %159 ]
  %179 = tail call i32 @llvm.umin.i32(i32 %178, i32 65535) #8
  %180 = tail call zeroext i1 @skb_gso_validate_network_len(ptr noundef %1, i32 noundef %179) #8
  br i1 %180, label %195, label %181

181:                                              ; preds = %177, %94
  %182 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  store i16 8, ptr %182, align 8
  %183 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %192, label %186

186:                                              ; preds = %181
  %187 = tail call ptr @xfrm_state_get_afinfo(i32 noundef 2) #8
  %188 = icmp eq ptr %187, null
  br i1 %188, label %365, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %187, i32 0, i32 12
  %191 = load ptr, ptr %190, align 4
  tail call void %191(ptr noundef %1, i32 noundef %88) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %365

192:                                              ; preds = %181
  %193 = tail call i32 @llvm.bswap.i32(i32 %88) #8
  %194 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %1, i32 noundef 3, i32 noundef 4, i32 noundef %193, ptr noundef %194) #8
  br label %365

195:                                              ; preds = %177, %94, %74, %63, %58
  %196 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %197 = load ptr, ptr %196, align 8
  %198 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %199 = load i16, ptr %198, align 4
  %200 = zext i16 %199 to i32
  %201 = getelementptr i8, ptr %197, i32 %200
  %202 = getelementptr inbounds %struct.iphdr, ptr %201, i32 0, i32 6
  %203 = load i8, ptr %202, align 1
  %204 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 35
  store i8 %203, ptr %204, align 1
  %205 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 32
  store i8 20, ptr %205, align 8
  %206 = getelementptr inbounds %struct.iphdr, ptr %201, i32 0, i32 3
  %207 = load i16, ptr %206, align 4
  %208 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  store i16 %207, ptr %208, align 4
  %209 = getelementptr inbounds %struct.iphdr, ptr %201, i32 0, i32 4
  %210 = load i16, ptr %209, align 2
  %211 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 30
  store i16 %210, ptr %211, align 2
  %212 = getelementptr inbounds %struct.iphdr, ptr %201, i32 0, i32 1
  %213 = load i8, ptr %212, align 1
  %214 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 33
  store i8 %213, ptr %214, align 1
  %215 = getelementptr inbounds %struct.iphdr, ptr %201, i32 0, i32 5
  %216 = load i8, ptr %215, align 4
  %217 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 34
  store i8 %216, ptr %217, align 2
  %218 = load i8, ptr %201, align 4
  %219 = shl i8 %218, 2
  %220 = and i8 %219, 60
  %221 = add nsw i8 %220, -20
  %222 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  store i8 %221, ptr %222, align 4
  %223 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 37
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(3) %223, i8 0, i32 3, i1 false) #8
  br label %365

224:                                              ; preds = %35
  %225 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %226 = load i32, ptr %225, align 8
  %227 = and i32 %226, -2
  %228 = inttoptr i32 %227 to ptr
  %229 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %230 = load i16, ptr %229, align 8
  %231 = and i16 %230, 8
  %232 = icmp eq i16 %231, 0
  br i1 %232, label %233, label %341

233:                                              ; preds = %224
  %234 = getelementptr inbounds %struct.dst_entry, ptr %228, i32 0, i32 1
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.dst_ops, ptr %235, i32 0, i32 5
  %237 = load ptr, ptr %236, align 4
  %238 = tail call i32 %237(ptr noundef %228) #8
  %239 = tail call i32 @llvm.smax.i32(i32 %238, i32 1280) #8
  %240 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %241 = load ptr, ptr %240, align 4
  %242 = getelementptr inbounds %struct.skb_shared_info, ptr %241, i32 0, i32 4
  %243 = load i16, ptr %242, align 4
  %244 = icmp eq i16 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %233
  %246 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %247 = load i32, ptr %246, align 8
  %248 = icmp ugt i32 %247, %239
  br i1 %248, label %299, label %341

249:                                              ; preds = %233
  %250 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %251 = load ptr, ptr %250, align 4
  %252 = icmp eq ptr %251, null
  br i1 %252, label %269, label %253

253:                                              ; preds = %249
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %254 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %255 = inttoptr i32 %254 to ptr
  %256 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %255) #6, !srcloc !19
  %257 = add i32 %256, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 10) to i32)
  %258 = inttoptr i32 %257 to ptr
  %259 = load volatile i16, ptr %258, align 2
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !20
  %260 = icmp eq i16 %259, 0
  br i1 %260, label %261, label %269

261:                                              ; preds = %253
  %262 = load ptr, ptr %250, align 4
  %263 = getelementptr inbounds %struct.sock_common, ptr %262, i32 0, i32 4
  %264 = load volatile i8, ptr %263, align 2
  %265 = zext i8 %264 to i32
  %266 = shl nuw i32 1, %265
  %267 = and i32 %266, -4161
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %261, %253, %249
  %270 = load i32, ptr %225, align 8
  %271 = and i32 %270, -2
  %272 = inttoptr i32 %271 to ptr
  br label %289

273:                                              ; preds = %261
  %274 = getelementptr inbounds %struct.inet_sock, ptr %262, i32 0, i32 1
  %275 = load ptr, ptr %274, align 8
  %276 = load i32, ptr %225, align 8
  %277 = and i32 %276, -2
  %278 = inttoptr i32 %277 to ptr
  %279 = icmp eq ptr %275, null
  br i1 %279, label %289, label %280

280:                                              ; preds = %273
  %281 = getelementptr inbounds %struct.ipv6_pinfo, ptr %275, i32 0, i32 9
  %282 = load i16, ptr %281, align 2
  %283 = and i16 %282, 56
  %284 = icmp ugt i16 %283, 16
  br i1 %284, label %285, label %289

285:                                              ; preds = %280
  %286 = load ptr, ptr %278, align 4
  %287 = getelementptr inbounds %struct.net_device, ptr %286, i32 0, i32 20
  %288 = load volatile i32, ptr %287, align 4
  br label %296

289:                                              ; preds = %280, %273, %269
  %290 = phi ptr [ %272, %269 ], [ %278, %280 ], [ %278, %273 ]
  %291 = getelementptr inbounds %struct.dst_entry, ptr %290, i32 0, i32 1
  %292 = load ptr, ptr %291, align 4
  %293 = getelementptr inbounds %struct.dst_ops, ptr %292, i32 0, i32 5
  %294 = load ptr, ptr %293, align 4
  %295 = tail call i32 %294(ptr noundef %290) #8
  br label %296

296:                                              ; preds = %289, %285
  %297 = phi i32 [ %288, %285 ], [ %295, %289 ]
  %298 = tail call zeroext i1 @skb_gso_validate_network_len(ptr noundef %1, i32 noundef %297) #8
  br i1 %298, label %341, label %299

299:                                              ; preds = %296, %245
  %300 = load ptr, ptr %228, align 4
  %301 = getelementptr inbounds %struct.anon.43, ptr %1, i32 0, i32 2
  store ptr %300, ptr %301, align 8
  %302 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  store i16 -8826, ptr %302, align 8
  %303 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %304 = load ptr, ptr %303, align 4
  %305 = icmp eq ptr %304, null
  br i1 %305, label %339, label %306

306:                                              ; preds = %299
  %307 = getelementptr inbounds %struct.sock_common, ptr %304, i32 0, i32 3
  %308 = load i16, ptr %307, align 8
  %309 = icmp eq i16 %308, 10
  br i1 %309, label %310, label %365

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.sock, ptr %304, i32 0, i32 46
  %312 = load i16, ptr %311, align 4
  switch i16 %312, label %333 [
    i16 255, label %313
    i16 17, label %313
  ]

313:                                              ; preds = %310, %310
  %314 = getelementptr inbounds %struct.sock_common, ptr %304, i32 0, i32 4
  %315 = load volatile i8, ptr %314, align 2
  %316 = zext i8 %315 to i32
  %317 = shl nuw i32 1, %316
  %318 = and i32 %317, -4161
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %323, label %320

320:                                              ; preds = %313
  %321 = getelementptr inbounds %struct.inet_sock, ptr %304, i32 0, i32 1
  %322 = load ptr, ptr %321, align 8
  br label %323

323:                                              ; preds = %320, %313
  %324 = phi ptr [ %322, %320 ], [ null, %313 ]
  %325 = getelementptr inbounds %struct.ipv6_pinfo, ptr %324, i32 0, i32 9
  %326 = load i16, ptr %325, align 2
  %327 = and i16 %326, 1024
  %328 = icmp eq i16 %327, 0
  br i1 %328, label %333, label %329

329:                                              ; preds = %323
  %330 = load ptr, ptr @ipv6_stub, align 4
  %331 = getelementptr inbounds %struct.ipv6_stub, ptr %330, i32 0, i32 17
  %332 = load ptr, ptr %331, align 4
  tail call void %332(ptr noundef %1, i32 noundef %239) #8
  br label %365

333:                                              ; preds = %323, %310
  %334 = tail call ptr @xfrm_state_get_afinfo(i32 noundef 10) #8
  %335 = icmp eq ptr %334, null
  br i1 %335, label %365, label %336

336:                                              ; preds = %333
  %337 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %334, i32 0, i32 12
  %338 = load ptr, ptr %337, align 4
  tail call void %338(ptr noundef %1, i32 noundef %239) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %365

339:                                              ; preds = %299
  %340 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %239, ptr noundef null, ptr noundef %340) #8
  br label %365

341:                                              ; preds = %296, %245, %224
  %342 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %343 = load ptr, ptr %342, align 8
  %344 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %345 = load i16, ptr %344, align 4
  %346 = zext i16 %345 to i32
  %347 = getelementptr i8, ptr %343, i32 %346
  %348 = getelementptr inbounds %struct.ipv6hdr, ptr %347, i32 0, i32 3
  %349 = load i8, ptr %348, align 2
  %350 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 35
  store i8 %349, ptr %350, align 1
  %351 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 32
  store i8 40, ptr %351, align 8
  %352 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  store i16 0, ptr %352, align 4
  %353 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 30
  store i16 64, ptr %353, align 2
  %354 = load i16, ptr %347, align 2
  %355 = tail call i16 @llvm.bswap.i16(i16 %354) #8
  %356 = lshr i16 %355, 4
  %357 = trunc i16 %356 to i8
  %358 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 33
  store i8 %357, ptr %358, align 1
  %359 = getelementptr inbounds %struct.ipv6hdr, ptr %347, i32 0, i32 4
  %360 = load i8, ptr %359, align 1
  %361 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 34
  store i8 %360, ptr %361, align 2
  %362 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  store i8 0, ptr %362, align 4
  %363 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 37
  %364 = getelementptr inbounds %struct.ipv6hdr, ptr %347, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %363, ptr noundef align 1 dereferenceable(3) %364, i32 3, i1 false) #8
  br label %365

365:                                              ; preds = %341, %339, %336, %333, %329, %306, %195, %192, %189, %186, %56, %53, %35, %32
  %366 = phi i32 [ -97, %32 ], [ -97, %35 ], [ 0, %195 ], [ -97, %56 ], [ -97, %53 ], [ -90, %192 ], [ -90, %186 ], [ -90, %189 ], [ 0, %341 ], [ -90, %339 ], [ -90, %329 ], [ -90, %333 ], [ -90, %336 ], [ -90, %306 ]
  ret i32 %366
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_gso_validate_network_len(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ip_select_ident(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xfrm6_hdr_offset(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 45
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.xfrm_type, ptr %5, i32 0, i32 1
  %7 = load i8, ptr %6, align 4
  switch i8 %7, label %60 [
    i8 60, label %8
    i8 43, label %8
  ]

8:                                                ; preds = %3, %3
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %16 = load ptr, ptr %15, align 8
  %17 = ptrtoint ptr %16 to i32
  %18 = ptrtoint ptr %14 to i32
  %19 = sub i32 %17, %18
  %20 = getelementptr inbounds %struct.ipv6hdr, ptr %14, i32 0, i32 3
  %21 = icmp ne i8 %7, 43
  br label %22

22:                                               ; preds = %47, %8
  %23 = phi ptr [ %20, %8 ], [ %52, %47 ]
  %24 = phi i32 [ 40, %8 ], [ %58, %47 ]
  %25 = phi i32 [ 0, %8 ], [ %44, %47 ]
  store ptr %23, ptr %2, align 4
  %26 = icmp ugt i32 %24, %19
  br i1 %26, label %62, label %27

27:                                               ; preds = %22
  %28 = load i8, ptr %23, align 1
  switch i8 %28, label %62 [
    i8 0, label %43
    i8 43, label %29
    i8 60, label %38
  ]

29:                                               ; preds = %27
  %30 = or i32 %24, 3
  %31 = icmp ugt i32 %30, %19
  %32 = select i1 %21, i1 true, i1 %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %14, i32 %24
  %35 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %34, i32 0, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %43, label %62

38:                                               ; preds = %27
  %39 = tail call i32 @ipv6_find_tlv(ptr noundef %1, i32 noundef %24, i32 noundef 201) #8
  %40 = icmp slt i32 %39, 0
  %41 = icmp eq i32 %25, 0
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %62

43:                                               ; preds = %38, %33, %29, %27
  %44 = phi i32 [ %25, %27 ], [ 1, %33 ], [ 1, %29 ], [ 0, %38 ]
  %45 = or i32 %24, 2
  %46 = icmp ugt i32 %45, %19
  br i1 %46, label %62, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %9, align 8
  %49 = load i16, ptr %11, align 4
  %50 = zext i16 %49 to i32
  %51 = getelementptr i8, ptr %48, i32 %50
  %52 = getelementptr i8, ptr %51, i32 %24
  %53 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %52, i32 0, i32 1
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %55, 3
  %57 = add nuw nsw i32 %24, 8
  %58 = add nuw nsw i32 %57, %56
  %59 = icmp ugt i32 %58, 65535
  br i1 %59, label %62, label %22

60:                                               ; preds = %3
  %61 = tail call i32 @ip6_find_1stfragopt(ptr noundef %1, ptr noundef %2) #8
  br label %62

62:                                               ; preds = %60, %47, %43, %38, %33, %27, %22
  %63 = phi i32 [ %61, %60 ], [ %24, %33 ], [ %24, %38 ], [ %24, %27 ], [ -22, %43 ], [ -22, %47 ], [ -22, %22 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_find_1stfragopt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_tlv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_ext_del(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2153630974, i64 2153631462, i64 2153631011, i64 2153631067, i64 2153631101, i64 2153631125, i64 2153631166, i64 2153631187, i64 2153631215, i64 2153631249}
!12 = !{!"auto-init"}
!13 = !{i64 2148063807}
!14 = !{i64 562914, i64 2148052885, i64 2148052911, i64 2148052958, i64 2148052980, i64 2148053008, i64 2148053028}
!15 = !{i64 549483, i64 549508, i64 549530, i64 549546, i64 549558, i64 549578, i64 549602, i64 549618, i64 549630}
!16 = !{i64 2148063933}
!17 = !{i64 2149064473}
!18 = !{i64 2154357496}
!19 = !{i64 487292}
!20 = !{i64 2154374755}
