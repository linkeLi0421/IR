; ModuleID = '/llk/IR/net/packet/af_packet.c_pt.bc'
source_filename = "../net/packet/af_packet.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fanout_mutex:\09\09\09\09\09"
module asm "\09.asciz \09\22fanout_mutex\22\09\09\09\09\09"
module asm "__kstrtabns_fanout_mutex:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.158, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.158 = type { ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.174, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.174 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.lock_class_key = type {}
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.78, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.140, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.78 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.140 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.packet_sock = type { %struct.sock, ptr, %union.tpacket_stats_u, %struct.packet_ring_buffer, %struct.packet_ring_buffer, i32, %struct.spinlock, %struct.mutex, i32, i8, i32, i32, i16, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, %struct.completion, ptr, ptr, [52 x i8], %struct.packet_type, [28 x i8], %struct.atomic_t, [60 x i8] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.163, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.164, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.165, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.12, %union.anon.14, %union.anon.15, i16, i8, i8, i32, %union.anon.17, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.159, [0 x i32], %union.anon.160, i16, i16, %union.anon.161, %struct.refcount_struct, [0 x i32], %union.anon.162 }
%union.anon.12 = type { i64 }
%union.anon.14 = type { i32 }
%union.anon.15 = type { i32 }
%union.anon.17 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.135 }
%union.anon.135 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.159 = type { i32 }
%union.anon.160 = type { %struct.hlist_node }
%union.anon.161 = type { i32 }
%union.anon.162 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.163 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.164 = type { ptr }
%union.anon.165 = type { ptr }
%struct.sk_buff_head = type { %union.anon.82, i32, %struct.spinlock }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%union.tpacket_stats_u = type { %struct.tpacket_stats_v3 }
%struct.tpacket_stats_v3 = type { i32, i32, i32 }
%struct.packet_ring_buffer = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, %union.anon.181 }
%union.anon.181 = type { %struct.tpacket_kbdq_core }
%struct.tpacket_kbdq_core = type { ptr, i32, i32, i8, i8, i16, i16, i16, ptr, ptr, i32, i32, i32, i64, ptr, ptr, ptr, %struct.rwlock_t, i16, i16, i32, %struct.timer_list }
%struct.packet_type = type { i16, i8, ptr, %struct.netdevice_tracker, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.packet_mclist = type { ptr, i32, i32, i16, i16, [32 x i8] }
%struct.packet_fanout = type { %struct.possible_net_t, i32, i32, i16, i8, i8, %union.anon.180, %struct.list_head, %struct.spinlock, %struct.refcount_struct, [32 x i8], %struct.packet_type, [0 x ptr], [28 x i8] }
%union.anon.180 = type { %struct.atomic_t }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.prot_inuse = type { i32, [64 x i32] }
%struct.sk_buff = type { %union.anon.75, %union.anon.141, %union.anon.142, [48 x i8], %union.anon.143, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.145, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, ptr, %union.anon.77 }
%union.anon.77 = type { ptr }
%union.anon.141 = type { ptr }
%union.anon.142 = type { i64 }
%union.anon.143 = type { %struct.anon.144 }
%struct.anon.144 = type { i32, ptr }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.147, i32, i32, i32, i16, i16, %union.anon.149, %union.anon.150, %union.anon.151, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.147 = type { i32 }
%union.anon.149 = type { i32 }
%union.anon.150 = type { i32 }
%union.anon.151 = type { i16 }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.tpacket_req_u = type { %struct.tpacket_req3 }
%struct.tpacket_req3 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sockaddr_ll = type { i16, i16, i32, i16, i8, i8, [8 x i8] }
%struct.pgv = type { ptr }
%struct.tpacket_block_desc = type { i32, i32, %union.tpacket_bd_header_u }
%union.tpacket_bd_header_u = type { %struct.tpacket_hdr_v1 }
%struct.tpacket_hdr_v1 = type { i32, i32, i32, i32, i64, %struct.tpacket_bd_ts, %struct.tpacket_bd_ts }
%struct.tpacket_bd_ts = type { i32, %union.anon.183 }
%union.anon.183 = type { i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.packet_mreq_max = type { i32, i16, i16, [32 x i8] }
%struct.fanout_args = type { i16, i16, i32 }
%struct.tpacket_rollover_stats = type { i64, i64, i64 }
%struct.tpacket_stats = type { i32, i32 }
%struct.packet_rollover = type { i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [48 x i8], [16 x i32] }
%struct.flow_keys_basic = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.virtio_net_hdr = type { i8, i8, i16, i16, i16, i16 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.74, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.18, %union.anon.72 }
%union.anon.18 = type { ptr }
%union.anon.72 = type { i64 }
%union.anon.74 = type { ptr }
%struct.tpacket3_hdr = type { i32, i32, i32, i32, i32, i32, i16, i16, %union.anon.184, [8 x i8] }
%union.anon.184 = type { %struct.tpacket_hdr_variant1 }
%struct.tpacket_hdr_variant1 = type { i32, i32, i16, i16 }
%struct.tpacket2_hdr = type { i32, i32, i32, i16, i16, i32, i32, i16, i16, [4 x i8] }
%struct.tpacket_hdr = type { i32, i32, i32, i16, i16, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.19, %union.anon.71, %struct.atomic_t }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.71 = type { %struct.atomic_t }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.tpacket_auxdata = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.anon.148 = type { i16, i16 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.27, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.timespec64 = type { i64, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.134, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.134 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.tpacket_req = type { i32, i32, i32, i32 }
%struct.sk_filter = type { %struct.refcount_struct, %struct.callback_head, ptr }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.120 }
%union.anon.120 = type { %struct.anon.121 }
%struct.anon.121 = type { %struct.anon.122, [0 x %struct.sock_filter] }
%struct.anon.122 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.sock_fprog = type { i16, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.21, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.21 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_pkt = type { i16, [14 x i8], i16 }

@fanout_mutex = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @fanout_mutex, i64 12), ptr getelementptr (i8, ptr @fanout_mutex, i64 12) } }, align 4
@__kstrtab_fanout_mutex = external dso_local constant [0 x i8], align 1
@__kstrtabns_fanout_mutex = external dso_local constant [0 x i8], align 1
@__ksymtab_fanout_mutex = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fanout_mutex to i32), ptr @__kstrtab_fanout_mutex, ptr @__kstrtabns_fanout_mutex }, section "___ksymtab_gpl+fanout_mutex", align 4
@packet_netdev_notifier = internal global %struct.notifier_block { ptr @packet_notifier, ptr null, i32 0 }, align 4
@packet_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @packet_net_init, ptr null, ptr @packet_net_exit, ptr null, ptr null, i32 0 }, align 4
@packet_proto = internal global %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1088, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.158 zeroinitializer, ptr null, [32 x i8] c"PACKET\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, align 4
@__initcall__kmod_af_packet__579_4746_packet_init6 = internal global ptr @packet_init, section ".initcall6.init", align 4
@__exitcall_packet_exit = internal global ptr @packet_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file580 = internal constant [36 x i8] c"af_packet.file=net/packet/af_packet\00", section ".modinfo", align 1
@__UNIQUE_ID_license581 = internal constant [22 x i8] c"af_packet.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias582 = internal constant [26 x i8] c"af_packet.alias=net-pf-17\00", section ".modinfo", align 1
@init_net = external dso_local global %struct.net, align 64
@packet_net_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [25 x i8] c"&net->packet.sklist_lock\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"packet\00", align 1
@packet_seq_ops = internal constant %struct.seq_operations { ptr @packet_seq_start, ptr @packet_seq_stop, ptr @packet_seq_next, ptr @packet_seq_show }, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"%*sRefCnt Type Proto  Iface R Rmem   User   Inode\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"sk\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"%pK %-6d %-4d %04x   %-5d %1d %-6u %-6u %-6lu\0A\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@packet_net_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"net/packet/af_packet.c\00", align 1
@packet_family_ops = internal constant %struct.net_proto_family { i32 17, ptr @packet_create, ptr null }, align 4
@packet_ops = internal constant %struct.proto_ops { i32 17, ptr null, ptr @packet_release, ptr @packet_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @packet_getname, ptr @packet_poll, ptr @packet_ioctl, ptr @sock_gettstamp, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @packet_setsockopt, ptr @packet_getsockopt, ptr null, ptr @packet_sendmsg, ptr @packet_recvmsg, ptr @packet_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@packet_ops_spkt = internal constant %struct.proto_ops { i32 17, ptr null, ptr @packet_release, ptr @packet_bind_spkt, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @packet_getname_spkt, ptr @datagram_poll, ptr @packet_ioctl, ptr @sock_gettstamp, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @packet_sendmsg_spkt, ptr @packet_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@packet_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"&po->pg_vec_lock\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"include/net/sock.h\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"\013af_packet: packet_mmap: vma is busy: %d\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@tpacket_rcv.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [76 x i8] c"\013af_packet: tpacket_rcv: packet too big, clamped from %u to %u. macoff=%u\0A\00", align 1
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"TPACKET version not supported.\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"TPACKET version not supported\0A\00", align 1
@inet_dgram_ops = external dso_local local_unnamed_addr constant %struct.proto_ops, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@fanout_list = internal global %struct.list_head { ptr @fanout_list, ptr @fanout_list }, align 4
@fanout_next_id = internal unnamed_addr global i16 0, align 2
@.str.14 = private unnamed_addr constant [73 x i8] c"\014af_packet: %s selects TX queue %d, but real number of TX queues is %d\0A\00", align 1
@tpacket_parse_header.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"\014af_packet: variable sized slot not supported\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"\013af_packet: packet size is too long (%d > %d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"\013af_packet: Packet exceed the number of skb frags(%lu)\0A\00", align 1
@flow_keys_basic_dissector = external dso_local global %struct.flow_dissector, align 4
@packet_recvmsg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@packet_mmap_ops = internal constant %struct.vm_operations_struct { ptr @packet_mm_open, ptr @packet_mm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"\013af_packet: Attempt to release alive packet socket: %p\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias582, ptr @__UNIQUE_ID_file580, ptr @__UNIQUE_ID_license581, ptr @__exitcall_packet_exit, ptr @__initcall__kmod_af_packet__579_4746_packet_init6, ptr @__ksymtab_fanout_mutex, ptr @packet_exit], section "llvm.metadata"
@switch.table.packet_set_ring = private unnamed_addr constant [3 x i32] [i32 52, i32 52, i32 68], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @packet_exit() #0 section ".exit.text" {
  %1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @packet_netdev_notifier) #19
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @packet_net_ops) #19
  tail call void @sock_unregister(i32 noundef 17) #19
  tail call void @proto_unregister(ptr noundef nonnull @packet_proto) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @packet_init() #0 section ".init.text" {
  %1 = tail call i32 @proto_register(ptr noundef nonnull @packet_proto, i32 noundef 0) #19
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %17

3:                                                ; preds = %0
  %4 = tail call i32 @sock_register(ptr noundef nonnull @packet_family_ops) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @packet_net_ops) #19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @packet_netdev_notifier) #19
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @packet_net_ops) #19
  br label %13

13:                                               ; preds = %12, %6
  %14 = phi i32 [ %7, %6 ], [ %10, %12 ]
  tail call void @sock_unregister(i32 noundef 17) #19
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi i32 [ %4, %3 ], [ %14, %13 ]
  tail call void @proto_unregister(ptr noundef nonnull @packet_proto) #19
  br label %17

17:                                               ; preds = %15, %9, %0
  %18 = phi i32 [ 0, %9 ], [ %1, %0 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @packet_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 31, i32 1), align 32
  %6 = icmp eq ptr %5, null
  %7 = getelementptr i8, ptr %5, i32 -84
  %8 = icmp eq ptr %7, null
  %9 = or i1 %6, %8
  br i1 %9, label %118, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 17
  %12 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 51
  %13 = icmp eq i32 %1, 6
  br label %14

14:                                               ; preds = %111, %10
  %15 = phi ptr [ %7, %10 ], [ %115, %111 ]
  switch i32 %1, label %111 [
    i32 6, label %16
    i32 2, label %58
    i32 1, label %97
  ]

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.packet_sock, ptr %15, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %58, label %20

20:                                               ; preds = %54, %16
  %21 = phi ptr [ %56, %54 ], [ %18, %16 ]
  %22 = phi ptr [ %55, %54 ], [ %17, %16 ]
  %23 = getelementptr inbounds %struct.packet_mclist, ptr %21, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %11, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.packet_mclist, ptr %21, i32 0, i32 3
  %29 = load i16, ptr %28, align 4
  switch i16 %29, label %52 [
    i16 0, label %30
    i16 1, label %39
    i16 2, label %41
    i16 3, label %43
  ]

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.packet_mclist, ptr %21, i32 0, i32 4
  %32 = load i16, ptr %31, align 2
  %33 = load i8, ptr %12, align 1
  %34 = zext i8 %33 to i16
  %35 = icmp eq i16 %32, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.packet_mclist, ptr %21, i32 0, i32 5
  %38 = tail call i32 @dev_mc_del(ptr noundef %4, ptr noundef %37) #19
  br label %52

39:                                               ; preds = %27
  %40 = tail call i32 @dev_set_promiscuity(ptr noundef %4, i32 noundef -1) #19
  br label %52

41:                                               ; preds = %27
  %42 = tail call i32 @dev_set_allmulti(ptr noundef %4, i32 noundef -1) #19
  br label %52

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.packet_mclist, ptr %21, i32 0, i32 4
  %45 = load i16, ptr %44, align 2
  %46 = load i8, ptr %12, align 1
  %47 = zext i8 %46 to i16
  %48 = icmp eq i16 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.packet_mclist, ptr %21, i32 0, i32 5
  %51 = tail call i32 @dev_uc_del(ptr noundef %4, ptr noundef %50) #19
  br label %52

52:                                               ; preds = %49, %43, %41, %39, %36, %30, %27
  %53 = load ptr, ptr %21, align 4
  store ptr %53, ptr %22, align 4
  tail call void @kfree(ptr noundef nonnull %21) #19
  br label %54

54:                                               ; preds = %52, %20
  %55 = phi ptr [ %22, %52 ], [ %21, %20 ]
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %20

58:                                               ; preds = %54, %16, %14
  %59 = load i32, ptr %11, align 4
  %60 = getelementptr inbounds %struct.packet_sock, ptr %15, i32 0, i32 11
  %61 = load i32, ptr %60, align 16
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %111

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.packet_sock, ptr %15, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %64) #19
  %65 = getelementptr inbounds %struct.packet_sock, ptr %15, i32 0, i32 8
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  tail call fastcc void @__unregister_prot_hook(ptr noundef nonnull %15, i1 noundef zeroext false)
  %69 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 51
  store i32 100, ptr %69, align 4
  %70 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 13
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  tail call void @sk_error_report(ptr noundef nonnull %15) #19
  br label %75

75:                                               ; preds = %74, %68, %63
  br i1 %13, label %76, label %94

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.packet_sock, ptr %15, i32 0, i32 21
  store volatile ptr null, ptr %77, align 4
  store volatile i32 -1, ptr %60, align 16
  %78 = getelementptr inbounds %struct.packet_sock, ptr %15, i32 0, i32 24, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %93, label %81

81:                                               ; preds = %76
  %82 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !10
  %83 = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 99
  %84 = load ptr, ptr %83, align 8
  %85 = ptrtoint ptr %84 to i32
  %86 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %87 = inttoptr i32 %86 to ptr
  %88 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %87) #4, !srcloc !11
  %89 = add i32 %88, %85
  %90 = inttoptr i32 %89 to ptr
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, -1
  store i32 %92, ptr %90, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %82) #19, !srcloc !12
  br label %93

93:                                               ; preds = %81, %76
  store ptr null, ptr %78, align 4
  br label %94

94:                                               ; preds = %93, %75
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %95 = load i16, ptr %64, align 4
  %96 = add i16 %95, 1
  store i16 %96, ptr %64, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %111

97:                                               ; preds = %14
  %98 = load i32, ptr %11, align 4
  %99 = getelementptr inbounds %struct.packet_sock, ptr %15, i32 0, i32 11
  %100 = load i32, ptr %99, align 16
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.packet_sock, ptr %15, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %103) #19
  %104 = getelementptr inbounds %struct.packet_sock, ptr %15, i32 0, i32 12
  %105 = load i16, ptr %104, align 4
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  tail call fastcc void @__register_prot_hook(ptr noundef nonnull %15) #19
  br label %108

108:                                              ; preds = %107, %102
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %109 = load i16, ptr %103, align 4
  %110 = add i16 %109, 1
  store i16 %110, ptr %103, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %111

111:                                              ; preds = %108, %97, %94, %58, %14
  %112 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 15
  %113 = load volatile ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  %115 = getelementptr i8, ptr %113, i32 -84
  %116 = icmp eq ptr %115, null
  %117 = or i1 %114, %116
  br i1 %117, label %118, label %14

118:                                              ; preds = %111, %3
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !17
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__unregister_prot_hook(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 8
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.packet_fanout, ptr %5, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %8) #19
  %9 = getelementptr inbounds %struct.packet_fanout, ptr %5, i32 0, i32 1
  %10 = load i32, ptr %9, align 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %17, %7
  %13 = phi i32 [ %18, %17 ], [ 0, %7 ]
  %14 = getelementptr %struct.packet_fanout, ptr %5, i32 0, i32 12, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = add nuw i32 %13, 1
  %19 = icmp eq i32 %18, %10
  br i1 %19, label %20, label %12

20:                                               ; preds = %17, %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/packet/af_packet.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1540, 0\0A.popsection", ""() #19, !srcloc !18
  unreachable

21:                                               ; preds = %12
  %22 = add i32 %10, -1
  %23 = getelementptr %struct.packet_fanout, ptr %5, i32 0, i32 12, i32 %22
  %24 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !19
  store volatile ptr %24, ptr %14, align 4
  %25 = load i32, ptr %9, align 64
  %26 = add i32 %25, -1
  store i32 %26, ptr %9, align 64
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.packet_fanout, ptr %5, i32 0, i32 11
  tail call void @__dev_remove_pack(ptr noundef %29) #19
  br label %30

30:                                               ; preds = %28, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %31 = load i16, ptr %8, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %35

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 24
  tail call void @__dev_remove_pack(ptr noundef %34) #19
  br label %35

35:                                               ; preds = %33, %30
  %36 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #19, !srcloc !21
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #19, !srcloc !22
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %41, !prof !23

40:                                               ; preds = %35
  tail call void @refcount_warn_saturate(ptr noundef %36, i32 noundef 4) #19
  br label %41

41:                                               ; preds = %40, %35
  br i1 %1, label %42, label %46

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %44 = load i16, ptr %43, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %43, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  tail call void @synchronize_net() #19
  tail call void @_raw_spin_lock(ptr noundef %43) #19
  br label %46

46:                                               ; preds = %42, %41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_promiscuity(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_allmulti(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_remove_pack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__register_prot_hook(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %36

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.packet_fanout, ptr %7, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %10) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !24
  %11 = getelementptr inbounds %struct.packet_fanout, ptr %7, i32 0, i32 1
  %12 = load i32, ptr %11, align 64
  %13 = getelementptr %struct.packet_fanout, ptr %7, i32 0, i32 12, i32 %12
  store volatile ptr %0, ptr %13, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !25
  %14 = load i32, ptr %11, align 64
  %15 = add i32 %14, 1
  store i32 %15, ptr %11, align 64
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.packet_fanout, ptr %7, i32 0, i32 11
  tail call void @dev_add_pack(ptr noundef %18) #19
  br label %19

19:                                               ; preds = %17, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %20 = load i16, ptr %10, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %24

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 24
  tail call void @dev_add_pack(ptr noundef %23) #19
  br label %24

24:                                               ; preds = %22, %19
  %25 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #19, !srcloc !21
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #19, !srcloc !26
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !23

29:                                               ; preds = %24
  %30 = add i32 %27, 1
  %31 = or i32 %30, %27
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %35, label %33, !prof !27

33:                                               ; preds = %29, %24
  %34 = phi i32 [ 2, %24 ], [ 1, %29 ]
  tail call void @refcount_warn_saturate(ptr noundef %25, i32 noundef %34) #19
  br label %35

35:                                               ; preds = %33, %29
  store i32 1, ptr %2, align 4
  br label %36

36:                                               ; preds = %35, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__fanout_link(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.packet_sock, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.packet_fanout, ptr %4, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %5) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !24
  %6 = getelementptr inbounds %struct.packet_fanout, ptr %4, i32 0, i32 1
  %7 = load i32, ptr %6, align 64
  %8 = getelementptr %struct.packet_fanout, ptr %4, i32 0, i32 12, i32 %7
  store volatile ptr %0, ptr %8, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !25
  %9 = load i32, ptr %6, align 64
  %10 = add i32 %9, 1
  store i32 %10, ptr %6, align 64
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.packet_fanout, ptr %4, i32 0, i32 11
  tail call void @dev_add_pack(ptr noundef %13) #19
  br label %14

14:                                               ; preds = %12, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %15 = load i16, ptr %5, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @packet_net_init(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 31
  tail call void @__mutex_init(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @packet_net_init.__key) #19
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 31, i32 1
  store ptr null, ptr %3, align 4
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.1, i16 noundef zeroext 0, ptr noundef %5, ptr noundef nonnull @packet_seq_ops, i32 noundef 0, ptr noundef null) #19
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, i32 -12, i32 0
  ret i32 %8
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @packet_net_exit(ptr noundef %0) #5 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef %3) #19
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 31, i32 1
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp ne ptr %5, null
  %7 = load i1, ptr @packet_net_exit.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !23

10:                                               ; preds = %1
  store i1 true, ptr @packet_net_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 4700, i32 noundef 9, ptr noundef null) #19
  br label %11

11:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @packet_seq_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %3 = load i64, ptr %1, align 8
  %4 = tail call ptr @seq_hlist_start_head_rcu(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 31, i32 1), i64 noundef %3) #19
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @packet_seq_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #2 {
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @packet_seq_next(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call ptr @seq_hlist_next_rcu(ptr noundef %1, ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 31, i32 1), ptr noundef %2) #19
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @packet_seq_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef -9, ptr noundef nonnull @.str.3) #19
  br label %27

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %1, i32 -84
  %7 = getelementptr i8, ptr %1, i32 16
  %8 = load volatile i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %1, i32 294
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %1, i32 768
  %13 = load volatile i16, ptr %12, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %15 = zext i16 %14 to i32
  %16 = getelementptr i8, ptr %1, i32 764
  %17 = load volatile i32, ptr %16, align 16
  %18 = getelementptr i8, ptr %1, i32 752
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %1, i32 100
  %21 = load volatile i32, ptr %20, align 4
  %22 = tail call i32 @sock_i_uid(ptr noundef %6) #19
  %23 = icmp eq i32 %22, -1
  %24 = load i32, ptr @overflowuid, align 4
  %25 = select i1 %23, i32 %24, i32 %22
  %26 = tail call i32 @sock_i_ino(ptr noundef %6) #19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %6, i32 noundef %8, i32 noundef %11, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %25, i32 noundef %26) #19
  br label %27

27:                                               ; preds = %5, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_start_head_rcu(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_next_rcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @packet_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = trunc i32 %2 to i16
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 13) #19
  br i1 %8, label %9, label %92

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 1
  %11 = load i16, ptr %10, align 4
  switch i16 %11, label %92 [
    i16 2, label %12
    i16 3, label %12
    i16 10, label %12
  ]

12:                                               ; preds = %9, %9, %9
  store i32 1, ptr %1, align 64
  %13 = tail call ptr @sk_alloc(ptr noundef %0, i32 noundef 17, i32 noundef 3264, ptr noundef nonnull @packet_proto, i32 noundef %3) #19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %92, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 5
  %17 = load i16, ptr %10, align 4
  %18 = icmp eq i16 %17, 10
  %19 = select i1 %18, ptr @packet_ops_spkt, ptr @packet_ops
  store ptr %19, ptr %16, align 4
  tail call void @sock_init_data(ptr noundef %1, ptr noundef nonnull %13) #19
  %20 = getelementptr inbounds %struct.packet_sock, ptr %13, i32 0, i32 20
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.packet_sock, ptr %13, i32 0, i32 20, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %21, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #19
  %22 = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 3
  store i16 17, ptr %22, align 8
  %23 = getelementptr inbounds %struct.packet_sock, ptr %13, i32 0, i32 12
  store i16 %5, ptr %23, align 4
  %24 = getelementptr inbounds %struct.packet_sock, ptr %13, i32 0, i32 22
  store ptr @dev_queue_xmit, ptr %24, align 8
  %25 = getelementptr inbounds %struct.packet_sock, ptr %13, i32 0, i32 3, i32 8
  store ptr null, ptr %25, align 8
  %26 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #20
  %27 = getelementptr inbounds %struct.packet_sock, ptr %13, i32 0, i32 4, i32 8
  store ptr %26, ptr %27, align 32
  %28 = icmp eq ptr %26, null
  br i1 %28, label %91, label %29

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.packet_sock, ptr %13, i32 0, i32 21
  store volatile ptr null, ptr %30, align 4
  %31 = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 80
  store ptr @packet_sock_destruct, ptr %31, align 8
  %32 = getelementptr inbounds %struct.packet_sock, ptr %13, i32 0, i32 6
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.packet_sock, ptr %13, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %33, ptr noundef nonnull @.str.6, ptr noundef nonnull @packet_create.__key) #19
  %34 = getelementptr inbounds %struct.packet_sock, ptr %13, i32 0, i32 13
  store ptr null, ptr %34, align 8
  %35 = getelementptr inbounds %struct.packet_sock, ptr %13, i32 0, i32 24, i32 4
  store ptr @packet_rcv, ptr %35, align 8
  %36 = load i16, ptr %10, align 4
  %37 = icmp eq i16 %36, 10
  %38 = select i1 %37, ptr @packet_rcv_spkt, ptr @packet_rcv
  store ptr %38, ptr %35, align 8
  %39 = getelementptr inbounds %struct.packet_sock, ptr %13, i32 0, i32 24, i32 8
  store ptr %13, ptr %39, align 8
  %40 = getelementptr inbounds %struct.packet_sock, ptr %13, i32 0, i32 24, i32 7
  store ptr @init_net, ptr %40, align 4
  %41 = icmp eq i16 %5, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.packet_sock, ptr %13, i32 0, i32 24
  store i16 %5, ptr %43, align 64
  tail call fastcc void @__register_prot_hook(ptr noundef nonnull %13)
  br label %44

44:                                               ; preds = %42, %29
  %45 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %45) #19
  %46 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 31, i32 1
  %47 = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #19, !srcloc !21
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #19, !srcloc !26
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51, !prof !23

51:                                               ; preds = %44
  %52 = add i32 %49, 1
  %53 = or i32 %52, %49
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %57, label %55, !prof !27

55:                                               ; preds = %51, %44
  %56 = phi i32 [ 2, %44 ], [ 1, %51 ]
  tail call void @refcount_warn_saturate(ptr noundef %47, i32 noundef %56) #19
  br label %57

57:                                               ; preds = %55, %51
  br label %58

58:                                               ; preds = %58, %57
  %59 = phi ptr [ %61, %58 ], [ null, %57 ]
  %60 = phi ptr [ %61, %58 ], [ %46, %57 ]
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %58

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 15
  %65 = icmp eq ptr %59, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %59, align 4
  store ptr %67, ptr %64, align 4
  %68 = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 15, i32 0, i32 1
  store volatile ptr %59, ptr %68, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !28
  br label %75

69:                                               ; preds = %63
  %70 = load ptr, ptr %46, align 4
  store ptr %70, ptr %64, align 4
  %71 = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 15, i32 0, i32 1
  store volatile ptr %46, ptr %71, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !29
  store volatile ptr %64, ptr %46, align 4
  %72 = icmp eq ptr %70, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.hlist_node, ptr %70, i32 0, i32 1
  br label %75

75:                                               ; preds = %73, %66
  %76 = phi ptr [ %74, %73 ], [ %59, %66 ]
  store volatile ptr %64, ptr %76, align 4
  br label %77

77:                                               ; preds = %75, %69
  tail call void @mutex_unlock(ptr noundef %45) #19
  %78 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !10
  %79 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 29, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = load i32, ptr getelementptr inbounds (%struct.proto, ptr @packet_proto, i32 0, i32 25), align 4
  %82 = getelementptr %struct.prot_inuse, ptr %80, i32 0, i32 1, i32 %81
  %83 = ptrtoint ptr %82 to i32
  %84 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %85 = inttoptr i32 %84 to ptr
  %86 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %85) #4, !srcloc !11
  %87 = add i32 %86, %83
  %88 = inttoptr i32 %87 to ptr
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %88, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %78) #19, !srcloc !12
  br label %92

91:                                               ; preds = %15
  tail call void @sk_free(ptr noundef nonnull %13) #19
  br label %92

92:                                               ; preds = %91, %77, %12, %9, %4
  %93 = phi i32 [ 0, %77 ], [ -1, %4 ], [ -94, %9 ], [ -105, %12 ], [ -105, %91 ]
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @packet_sock_destruct(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 7
  tail call void @skb_queue_purge(ptr noundef %2) #19
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !27

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1331, i32 noundef 9, ptr noundef null) #19
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !27

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1332, i32 noundef 9, ptr noundef null) #19
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %0) #21
  br label %19

19:                                               ; preds = %17, %12
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @packet_rcv(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 7
  %12 = icmp eq i16 %11, 5
  br i1 %12, label %204, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.packet_type, ptr %2, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.anon.76, ptr %0, i32 0, i32 2
  store ptr %1, ptr %16, align 8
  %17 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %18 = load ptr, ptr %17, align 16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %51, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %18, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 45
  %25 = load i16, ptr %24, align 2
  %26 = icmp eq i16 %25, 2
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = getelementptr i8, ptr %29, i32 %32
  %34 = ptrtoint ptr %6 to i32
  %35 = ptrtoint ptr %33 to i32
  %36 = sub i32 %34, %35
  %37 = tail call ptr @skb_push(ptr noundef %0, i32 noundef %36) #19
  br label %51

38:                                               ; preds = %23
  %39 = icmp eq i16 %11, 4
  br i1 %39, label %40, label %51

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %44 = load i16, ptr %43, align 4
  %45 = zext i16 %44 to i32
  %46 = getelementptr i8, ptr %42, i32 %45
  %47 = ptrtoint ptr %46 to i32
  %48 = ptrtoint ptr %6 to i32
  %49 = sub i32 %47, %48
  %50 = tail call ptr @skb_pull(ptr noundef %0, i32 noundef %49) #19
  br label %51

51:                                               ; preds = %40, %38, %27, %20, %13
  %52 = load i32, ptr %7, align 8
  %53 = tail call fastcc i32 @run_filter(ptr noundef %0, ptr noundef %15, i32 noundef %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %192, label %55

55:                                               ; preds = %51
  %56 = tail call i32 @llvm.umin.i32(i32 %52, i32 %53)
  %57 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 9
  %58 = load volatile i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 15
  %60 = load i32, ptr %59, align 4
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %186

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %64 = load volatile i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #19
  %68 = icmp eq ptr %67, null
  br i1 %68, label %186, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %5, align 4
  %71 = icmp eq ptr %6, %70
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  store ptr %6, ptr %5, align 4
  store i32 %8, ptr %7, align 8
  br label %73

73:                                               ; preds = %72, %69
  tail call void @consume_skb(ptr noundef %0) #19
  br label %74

74:                                               ; preds = %73, %62
  %75 = phi ptr [ %0, %62 ], [ %67, %73 ]
  %76 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %78 = load i16, ptr %77, align 16
  %79 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 3, i32 8
  store i16 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 13
  %81 = load i16, ptr %80, align 8
  %82 = trunc i16 %81 to i8
  %83 = and i8 %82, 7
  %84 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 3, i32 10
  store i8 %83, ptr %84, align 2
  %85 = getelementptr inbounds %struct.packet_sock, ptr %15, i32 0, i32 9
  %86 = load i8, ptr %85, align 8
  %87 = and i8 %86, 2
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, ptr %1, ptr %3, !prof !27
  %90 = getelementptr inbounds %struct.net_device, ptr %89, i32 0, i32 17
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 3, i32 4
  store i32 %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 3, i32 12
  %94 = getelementptr inbounds %struct.anon.76, ptr %75, i32 0, i32 2
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 44
  %97 = load ptr, ptr %96, align 16
  %98 = icmp eq ptr %97, null
  br i1 %98, label %106, label %99

99:                                               ; preds = %74
  %100 = getelementptr inbounds %struct.header_ops, ptr %97, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = tail call i32 %101(ptr noundef %75, ptr noundef %93) #19
  %105 = trunc i32 %104 to i8
  br label %106

106:                                              ; preds = %103, %99, %74
  %107 = phi i8 [ %105, %103 ], [ 0, %99 ], [ 0, %74 ]
  %108 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 3, i32 11
  store i8 %107, ptr %108, align 1
  %109 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 5
  %110 = load i32, ptr %109, align 8
  store i32 %110, ptr %76, align 8
  %111 = icmp ugt i32 %110, %56
  br i1 %111, label %112, label %124

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 6
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  store i32 %56, ptr %109, align 8
  %117 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 17
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr i8, ptr %118, i32 %56
  %120 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 14
  store ptr %119, ptr %120, align 8
  br label %124

121:                                              ; preds = %112
  %122 = tail call i32 @___pskb_trim(ptr noundef %75, i32 noundef %56) #19
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %186

124:                                              ; preds = %121, %116, %106
  %125 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 4, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  tail call void %126(ptr noundef %75) #19
  br label %134

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %134, label %133, !prof !27

133:                                              ; preds = %129
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #19, !srcloc !30
  unreachable

134:                                              ; preds = %129, %128
  %135 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 1
  store ptr %15, ptr %135, align 4
  store ptr @sock_rfree, ptr %125, align 4
  %136 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 18
  %137 = load i32, ptr %136, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %57) #19, !srcloc !21
  %138 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %57, ptr %57, i32 %137, ptr elementtype(i32) %57) #19, !srcloc !31
  %139 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 8
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr inbounds %struct.proto, ptr %140, i32 0, i32 30
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %149, label %144

144:                                              ; preds = %134
  %145 = load i32, ptr %136, align 8
  %146 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 11
  %147 = load i32, ptr %146, align 4
  %148 = sub i32 %147, %145
  store i32 %148, ptr %146, align 4
  br label %149

149:                                              ; preds = %144, %134
  store ptr null, ptr %94, align 8
  %150 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 4
  %151 = load i32, ptr %150, align 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %149
  %154 = and i32 %151, 1
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = and i32 %151, -2
  %158 = inttoptr i32 %157 to ptr
  tail call void @dst_release(ptr noundef %158) #19
  br label %159

159:                                              ; preds = %156, %153
  store i32 0, ptr %150, align 8
  br label %160

160:                                              ; preds = %159, %149
  %161 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 8
  %162 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock(ptr noundef %162) #19
  %163 = getelementptr inbounds %struct.packet_sock, ptr %15, i32 0, i32 2
  %164 = load i32, ptr %163, align 4
  %165 = add i32 %164, 1
  store i32 %165, ptr %163, align 4
  %166 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 13
  %167 = load volatile i32, ptr %166, align 4
  %168 = and i32 %167, 131072
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %160
  %171 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 5
  %172 = load volatile i32, ptr %171, align 4
  br label %173

173:                                              ; preds = %170, %160
  %174 = phi i32 [ %172, %170 ], [ 0, %160 ]
  %175 = getelementptr %struct.sk_buff, ptr %75, i32 0, i32 3, i32 44
  store i32 %174, ptr %175, align 4
  %176 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 8, i32 0, i32 0, i32 1
  %177 = load ptr, ptr %176, align 4
  store volatile ptr %161, ptr %75, align 8
  %178 = getelementptr inbounds %struct.anon.76, ptr %75, i32 0, i32 1
  store volatile ptr %177, ptr %178, align 4
  store volatile ptr %75, ptr %176, align 4
  store volatile ptr %75, ptr %177, align 4
  %179 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 8, i32 1
  %180 = load i32, ptr %179, align 4
  %181 = add i32 %180, 1
  store volatile i32 %181, ptr %179, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %182 = load i16, ptr %162, align 4
  %183 = add i16 %182, 1
  store i16 %183, ptr %162, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %184 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 76
  %185 = load ptr, ptr %184, align 8
  tail call void %185(ptr noundef %15) #19
  br label %207

186:                                              ; preds = %121, %66, %55
  %187 = phi ptr [ %0, %55 ], [ %75, %121 ], [ %0, %66 ]
  %188 = getelementptr inbounds %struct.packet_sock, ptr %15, i32 0, i32 26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %188) #19, !srcloc !21
  %189 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %188, ptr %188, i32 1, ptr elementtype(i32) %188) #19, !srcloc !31
  %190 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %190) #19, !srcloc !21
  %191 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %190, ptr %190, i32 1, ptr elementtype(i32) %190) #19, !srcloc !31
  br label %192

192:                                              ; preds = %186, %51
  %193 = phi ptr [ %187, %186 ], [ %0, %51 ]
  %194 = getelementptr inbounds %struct.sk_buff, ptr %193, i32 0, i32 17
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %6, %195
  br i1 %196, label %203, label %197

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.sk_buff, ptr %193, i32 0, i32 19
  %199 = load volatile i32, ptr %198, align 4
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %203, label %201

201:                                              ; preds = %197
  store ptr %6, ptr %194, align 4
  %202 = getelementptr inbounds %struct.sk_buff, ptr %193, i32 0, i32 5
  store i32 %8, ptr %202, align 8
  br i1 %54, label %204, label %206

203:                                              ; preds = %197, %192
  br i1 %54, label %204, label %206

204:                                              ; preds = %203, %201, %4
  %205 = phi ptr [ %193, %203 ], [ %193, %201 ], [ %0, %4 ]
  tail call void @consume_skb(ptr noundef %205) #19
  br label %207

206:                                              ; preds = %203, %201
  tail call void @kfree_skb_reason(ptr noundef %193, i32 noundef 0) #19
  br label %207

207:                                              ; preds = %206, %204, %173
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @packet_rcv_spkt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readnone %3) #2 {
  %5 = getelementptr inbounds %struct.packet_type, ptr %2, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 7
  %10 = icmp eq i16 %9, 5
  br i1 %10, label %56, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %56, label %18, !prof !23

18:                                               ; preds = %15
  tail call void @consume_skb(ptr noundef %0) #19
  br label %21

19:                                               ; preds = %11
  %20 = icmp eq ptr %0, null
  br i1 %20, label %58, label %21

21:                                               ; preds = %19, %18
  %22 = phi ptr [ %16, %18 ], [ %0, %19 ]
  %23 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = and i32 %24, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = and i32 %24, -2
  %31 = inttoptr i32 %30 to ptr
  tail call void @dst_release(ptr noundef %31) #19
  br label %32

32:                                               ; preds = %29, %26
  store i32 0, ptr %23, align 8
  br label %33

33:                                               ; preds = %32, %21
  %34 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 3
  %35 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 16
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 13, i32 0, i32 19
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  %42 = getelementptr i8, ptr %38, i32 %41
  %43 = ptrtoint ptr %36 to i32
  %44 = ptrtoint ptr %42 to i32
  %45 = sub i32 %43, %44
  %46 = tail call ptr @skb_push(ptr noundef nonnull %22, i32 noundef %45) #19
  %47 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %48 = load i16, ptr %47, align 16
  store i16 %48, ptr %34, align 2
  %49 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 3, i32 2
  %50 = tail call i32 @strlcpy(ptr noundef %49, ptr noundef %1, i32 noundef 14) #19
  %51 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 13, i32 0, i32 16
  %52 = load i16, ptr %51, align 8
  %53 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 3, i32 16
  store i16 %52, ptr %53, align 2
  %54 = tail call i32 @sock_queue_rcv_skb(ptr noundef %6, ptr noundef nonnull %22) #19
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %33, %15, %4
  %57 = phi ptr [ %0, %15 ], [ %0, %4 ], [ %22, %33 ]
  tail call void @kfree_skb_reason(ptr noundef %57, i32 noundef 0) #19
  br label %58

58:                                               ; preds = %56, %33, %19
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @packet_release(ptr nocapture noundef %0) #2 {
  %2 = alloca %union.tpacket_req_u, align 4
  %3 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false), !annotation !32
  %5 = icmp eq ptr %4, null
  br i1 %5, label %178, label %6

6:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 31)) #19
  %7 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 15, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  store volatile ptr %12, ptr %8, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hlist_node, ptr %12, i32 0, i32 1
  store volatile ptr %8, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %10
  store ptr null, ptr %7, align 4
  %17 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 19
  %18 = load volatile i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21, !prof !23

20:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 729, i32 noundef 9, ptr noundef null) #19
  br label %21

21:                                               ; preds = %20, %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #19, !srcloc !21
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #19, !srcloc !22
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %26, !prof !23

25:                                               ; preds = %21
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 4) #19
  br label %26

26:                                               ; preds = %25, %21, %6
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 31)) #19
  %27 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 8
  %28 = load ptr, ptr %27, align 8
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !10
  %30 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %31 = getelementptr inbounds %struct.proto, ptr %28, i32 0, i32 25
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.prot_inuse, ptr %30, i32 0, i32 1, i32 %32
  %34 = ptrtoint ptr %33 to i32
  %35 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %36 = inttoptr i32 %35 to ptr
  %37 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %36) #4, !srcloc !11
  %38 = add i32 %37, %34
  %39 = inttoptr i32 %38 to ptr
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, -1
  store i32 %41, ptr %39, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #19, !srcloc !12
  %42 = getelementptr inbounds %struct.packet_sock, ptr %4, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %42) #19
  %43 = getelementptr inbounds %struct.packet_sock, ptr %4, i32 0, i32 8
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %26
  tail call fastcc void @__unregister_prot_hook(ptr noundef nonnull %4, i1 noundef zeroext false) #19
  br label %47

47:                                               ; preds = %46, %26
  %48 = getelementptr inbounds %struct.packet_sock, ptr %4, i32 0, i32 21
  store volatile ptr null, ptr %48, align 4
  %49 = getelementptr inbounds %struct.packet_sock, ptr %4, i32 0, i32 24, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %47
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !10
  %54 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 99
  %55 = load ptr, ptr %54, align 8
  %56 = ptrtoint ptr %55 to i32
  %57 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %58 = inttoptr i32 %57 to ptr
  %59 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %58) #4, !srcloc !11
  %60 = add i32 %59, %56
  %61 = inttoptr i32 %60 to ptr
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, -1
  store i32 %63, ptr %61, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %53) #19, !srcloc !12
  store ptr null, ptr %49, align 4
  br label %64

64:                                               ; preds = %52, %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %65 = load i16, ptr %42, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %67 = getelementptr inbounds %struct.packet_sock, ptr %4, i32 0, i32 14
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %111, label %70

70:                                               ; preds = %64
  tail call void @rtnl_lock() #19
  %71 = load ptr, ptr %67, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %110, label %73

73:                                               ; preds = %107, %70
  %74 = phi ptr [ %108, %107 ], [ %71, %70 ]
  %75 = load ptr, ptr %74, align 4
  store ptr %75, ptr %67, align 4
  %76 = getelementptr inbounds %struct.packet_mclist, ptr %74, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = tail call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %77) #19
  %79 = icmp eq ptr %78, null
  br i1 %79, label %107, label %80

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.packet_mclist, ptr %74, i32 0, i32 3
  %82 = load i16, ptr %81, align 4
  switch i16 %82, label %107 [
    i16 0, label %83
    i16 1, label %93
    i16 2, label %95
    i16 3, label %97
  ]

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.packet_mclist, ptr %74, i32 0, i32 4
  %85 = load i16, ptr %84, align 2
  %86 = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 51
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i16
  %89 = icmp eq i16 %85, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.packet_mclist, ptr %74, i32 0, i32 5
  %92 = tail call i32 @dev_mc_del(ptr noundef nonnull %78, ptr noundef %91) #19
  br label %107

93:                                               ; preds = %80
  %94 = tail call i32 @dev_set_promiscuity(ptr noundef nonnull %78, i32 noundef -1) #19
  br label %107

95:                                               ; preds = %80
  %96 = tail call i32 @dev_set_allmulti(ptr noundef nonnull %78, i32 noundef -1) #19
  br label %107

97:                                               ; preds = %80
  %98 = getelementptr inbounds %struct.packet_mclist, ptr %74, i32 0, i32 4
  %99 = load i16, ptr %98, align 2
  %100 = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 51
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i16
  %103 = icmp eq i16 %99, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.packet_mclist, ptr %74, i32 0, i32 5
  %106 = tail call i32 @dev_uc_del(ptr noundef nonnull %78, ptr noundef %105) #19
  br label %107

107:                                              ; preds = %104, %97, %95, %93, %90, %83, %80, %73
  tail call void @kfree(ptr noundef nonnull %74) #19
  %108 = load ptr, ptr %67, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %73

110:                                              ; preds = %107, %70
  tail call void @rtnl_unlock() #19
  br label %111

111:                                              ; preds = %110, %64
  tail call void @lock_sock_nested(ptr noundef %4, i32 noundef 0) #19
  %112 = getelementptr inbounds %struct.packet_sock, ptr %4, i32 0, i32 3
  %113 = load ptr, ptr %112, align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false)
  %116 = call fastcc i32 @packet_set_ring(ptr noundef nonnull %4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0)
  br label %117

117:                                              ; preds = %115, %111
  %118 = getelementptr inbounds %struct.packet_sock, ptr %4, i32 0, i32 4
  %119 = load ptr, ptr %118, align 32
  %120 = icmp eq ptr %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false)
  %122 = call fastcc i32 @packet_set_ring(ptr noundef nonnull %4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 1)
  br label %123

123:                                              ; preds = %121, %117
  call void @release_sock(ptr noundef nonnull %4) #19
  call void @mutex_lock(ptr noundef nonnull @fanout_mutex) #19
  %124 = getelementptr inbounds %struct.packet_sock, ptr %4, i32 0, i32 1
  %125 = load ptr, ptr %124, align 8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %141, label %127

127:                                              ; preds = %123
  store ptr null, ptr %124, align 8
  %128 = getelementptr inbounds %struct.packet_fanout, ptr %125, i32 0, i32 9
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %128) #19, !srcloc !21
  %129 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %128, ptr %128, i32 1, ptr elementtype(i32) %128) #19, !srcloc !22
  %130 = extractvalue { i32, i32, i32 } %129, 0
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %135, label %132

132:                                              ; preds = %127
  %133 = icmp sgt i32 %130, 0
  br i1 %133, label %141, label %134, !prof !27

134:                                              ; preds = %132
  call void @refcount_warn_saturate(ptr noundef %128, i32 noundef 3) #19
  br label %141

135:                                              ; preds = %127
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !33
  %136 = getelementptr inbounds %struct.packet_fanout, ptr %125, i32 0, i32 7
  %137 = getelementptr inbounds %struct.packet_fanout, ptr %125, i32 0, i32 7, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = load ptr, ptr %136, align 4
  %140 = getelementptr inbounds %struct.list_head, ptr %139, i32 0, i32 1
  store ptr %138, ptr %140, align 4
  store volatile ptr %139, ptr %138, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %136, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %137, align 4
  br label %141

141:                                              ; preds = %135, %134, %132, %123
  %142 = phi ptr [ %125, %135 ], [ null, %123 ], [ null, %132 ], [ null, %134 ]
  call void @mutex_unlock(ptr noundef nonnull @fanout_mutex) #19
  call void @synchronize_net() #19
  %143 = getelementptr inbounds %struct.packet_sock, ptr %4, i32 0, i32 13
  %144 = load ptr, ptr %143, align 8
  call void @kfree(ptr noundef %144) #19
  %145 = icmp eq ptr %142, null
  br i1 %145, label %160, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.packet_fanout, ptr %142, i32 0, i32 4
  %148 = load i8, ptr %147, align 2
  %149 = and i8 %148, -2
  %150 = icmp eq i8 %149, 6
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.packet_fanout, ptr %142, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %152) #19
  %153 = getelementptr inbounds %struct.packet_fanout, ptr %142, i32 0, i32 6
  %154 = load ptr, ptr %153, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !34
  store volatile ptr null, ptr %153, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %155 = load i16, ptr %152, align 4
  %156 = add i16 %155, 1
  store i16 %156, ptr %152, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %157 = icmp eq ptr %154, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %151
  call void @synchronize_net() #19
  call void @bpf_prog_destroy(ptr noundef nonnull %154) #19
  br label %159

159:                                              ; preds = %158, %151, %146
  call void @kvfree(ptr noundef nonnull %142) #19
  br label %160

160:                                              ; preds = %159, %141
  %161 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %161) #19
  %162 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 13
  %163 = load i32, ptr %162, align 4
  %164 = or i32 %163, 1
  store i32 %164, ptr %162, align 4
  %165 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 71
  store ptr null, ptr %165, align 8
  %166 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 17
  store ptr null, ptr %166, align 4
  call void @_raw_write_unlock_bh(ptr noundef %161) #19
  store ptr null, ptr %3, align 16
  %167 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 8
  call void @skb_queue_purge(ptr noundef %167) #19
  %168 = getelementptr inbounds %struct.packet_sock, ptr %4, i32 0, i32 4, i32 8
  %169 = load ptr, ptr %168, align 32
  call void @free_percpu(ptr noundef %169) #19
  %170 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %170) #19, !srcloc !21
  %171 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %170, ptr %170, i32 1, ptr elementtype(i32) %170) #19, !srcloc !22
  %172 = extractvalue { i32, i32, i32 } %171, 0
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %177, label %174

174:                                              ; preds = %160
  %175 = icmp sgt i32 %172, 0
  br i1 %175, label %178, label %176, !prof !27

176:                                              ; preds = %174
  call void @refcount_warn_saturate(ptr noundef %170, i32 noundef 3) #19
  br label %178

177:                                              ; preds = %160
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !33
  call void @sk_free(ptr noundef %4) #19
  br label %178

178:                                              ; preds = %177, %176, %174, %1
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @packet_bind(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = icmp ult i32 %2, 20
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = load i16, ptr %1, align 4
  %9 = icmp eq i16 %8, 17
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.sockaddr_ll, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sockaddr_ll, ptr %1, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 12
  %18 = load i16, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi i16 [ %18, %16 ], [ %14, %10 ]
  %21 = tail call fastcc i32 @packet_do_bind(ptr noundef %5, ptr noundef null, i32 noundef %12, i16 noundef zeroext %20)
  br label %22

22:                                               ; preds = %19, %7, %3
  %23 = phi i32 [ %21, %19 ], [ -22, %3 ], [ -22, %7 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @packet_getname(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %37

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr inbounds %struct.packet_sock, ptr %7, i32 0, i32 11
  %9 = load volatile i32, ptr %8, align 16
  store i16 17, ptr %1, align 4
  %10 = getelementptr inbounds %struct.sockaddr_ll, ptr %1, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.packet_sock, ptr %7, i32 0, i32 12
  %12 = load volatile i16, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sockaddr_ll, ptr %1, i32 0, i32 1
  store i16 %12, ptr %13, align 2
  %14 = getelementptr inbounds %struct.sockaddr_ll, ptr %1, i32 0, i32 4
  store i8 0, ptr %14, align 2
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %15 = tail call ptr @dev_get_by_index_rcu(ptr noundef nonnull @init_net, i32 noundef %9) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 32
  %19 = load i16, ptr %18, align 16
  %20 = getelementptr inbounds %struct.sockaddr_ll, ptr %1, i32 0, i32 3
  store i16 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 51
  %22 = load i8, ptr %21, align 1
  %23 = getelementptr inbounds %struct.sockaddr_ll, ptr %1, i32 0, i32 5
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.sockaddr_ll, ptr %1, i32 0, i32 6
  %25 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 72
  %26 = load ptr, ptr %25, align 32
  %27 = load i8, ptr %21, align 1
  %28 = zext i8 %27 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %24, ptr align 1 %26, i32 %28, i1 false)
  br label %32

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.sockaddr_ll, ptr %1, i32 0, i32 3
  store i16 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.sockaddr_ll, ptr %1, i32 0, i32 5
  store i8 0, ptr %31, align 1
  br label %32

32:                                               ; preds = %29, %17
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !17
  %33 = getelementptr inbounds %struct.sockaddr_ll, ptr %1, i32 0, i32 5
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %35, 12
  br label %37

37:                                               ; preds = %32, %3
  %38 = phi i32 [ %36, %32 ], [ -95, %3 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @packet_poll(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = tail call i32 @datagram_poll(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  %7 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %7) #19
  %8 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %66, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 16
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 3, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = add i32 %17, -1
  br label %24

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 3, i32 4
  %23 = load i32, ptr %22, align 8
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i32 [ %20, %19 ], [ %23, %21 ]
  %26 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 3, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = freeze i32 %25
  %29 = freeze i32 %27
  %30 = udiv i32 %28, %29
  %31 = mul i32 %30, %29
  %32 = sub i32 %28, %31
  %33 = getelementptr %struct.pgv, ptr %9, i32 %30
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 3, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = mul i32 %36, %32
  %38 = getelementptr i8, ptr %34, i32 %37
  %39 = tail call fastcc i32 @__packet_get_status(ptr noundef %5, ptr noundef %38) #19
  br label %58

40:                                               ; preds = %11
  %41 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 3, i32 9, i32 0, i32 5
  %42 = load i16, ptr %41, align 2
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = zext i16 %42 to i32
  br label %49

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 3, i32 9, i32 0, i32 12
  %48 = load i32, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi i32 [ %45, %44 ], [ %48, %46 ]
  %51 = add i32 %50, -1
  %52 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 3, i32 9
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr %struct.pgv, ptr %53, i32 %51
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.tpacket_block_desc, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  br label %58

58:                                               ; preds = %49, %24
  %59 = phi i32 [ %57, %49 ], [ %39, %24 ]
  %60 = phi ptr [ %55, %49 ], [ %38, %24 ]
  %61 = icmp ne i32 %59, 0
  %62 = icmp eq ptr %60, null
  %63 = select i1 %61, i1 true, i1 %62
  %64 = or i32 %6, 65
  %65 = select i1 %63, i32 %64, i32 %6
  br label %66

66:                                               ; preds = %58, %3
  %67 = phi i32 [ %6, %3 ], [ %65, %58 ]
  %68 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 10
  %69 = load volatile i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = tail call fastcc i32 @__packet_rcv_has_room(ptr noundef %5, ptr noundef null) #19
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store volatile i32 0, ptr %68, align 4
  br label %75

75:                                               ; preds = %74, %71, %66
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #19
  %76 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 26, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %76) #19
  %77 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 4
  %78 = load ptr, ptr %77, align 32
  %79 = icmp eq ptr %78, null
  br i1 %79, label %102, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 4, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 4, i32 2
  %84 = load i32, ptr %83, align 8
  %85 = freeze i32 %82
  %86 = freeze i32 %84
  %87 = udiv i32 %85, %86
  %88 = mul i32 %87, %86
  %89 = sub i32 %85, %88
  %90 = getelementptr %struct.pgv, ptr %78, i32 %87
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 4, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = mul i32 %93, %89
  %95 = getelementptr i8, ptr %91, i32 %94
  %96 = tail call fastcc i32 @__packet_get_status(ptr noundef %5, ptr noundef %95) #19
  %97 = icmp ne i32 %96, 0
  %98 = icmp eq ptr %95, null
  %99 = or i1 %97, %98
  %100 = or i32 %67, 260
  %101 = select i1 %99, i32 %67, i32 %100
  br label %102

102:                                              ; preds = %80, %75
  %103 = phi i32 [ %67, %75 ], [ %101, %80 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %76) #19
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @packet_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  switch i32 %1, label %39 [
    i32 21521, label %6
    i32 21531, label %17
    i32 35083, label %36
    i32 35084, label %36
    i32 35155, label %36
    i32 35156, label %36
    i32 35157, label %36
    i32 35093, label %36
    i32 35094, label %36
    i32 35097, label %36
    i32 35098, label %36
    i32 35099, label %36
    i32 35100, label %36
    i32 35095, label %36
    i32 35096, label %36
    i32 35092, label %36
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 23
  %8 = load volatile i32, ptr %7, align 4
  %9 = add i32 %8, -1
  %10 = inttoptr i32 %2 to ptr
  %11 = tail call ptr @llvm.thread.pointer() #19
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #4, !srcloc !35
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #19, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !37
  %16 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %10, i32 %9, i32 -1090519041) #19, !srcloc !38
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #19, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !37
  br label %39

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 8
  %19 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %19) #19
  %20 = load ptr, ptr %18, align 4
  %21 = icmp eq ptr %20, %18
  %22 = icmp eq ptr %20, null
  %23 = or i1 %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  br label %27

27:                                               ; preds = %24, %17
  %28 = phi i32 [ %26, %24 ], [ 0, %17 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %19) #19
  %29 = inttoptr i32 %2 to ptr
  %30 = tail call ptr @llvm.thread.pointer() #19
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %32 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %31) #4, !srcloc !35
  %33 = and i32 %32, -13
  %34 = or i32 %33, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #19, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !37
  %35 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %29, i32 %28, i32 -1090519041) #19, !srcloc !39
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #19, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !37
  br label %39

36:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %37 = load ptr, ptr getelementptr inbounds (%struct.proto_ops, ptr @inet_dgram_ops, i32 0, i32 9), align 4
  %38 = tail call i32 %37(ptr noundef %0, i32 noundef %1, i32 noundef %2) #19
  br label %39

39:                                               ; preds = %36, %27, %6, %3
  %40 = phi i32 [ %38, %36 ], [ %35, %27 ], [ %16, %6 ], [ -515, %3 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @packet_setsockopt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #2 {
  %6 = alloca %struct.packet_mreq_max, align 4
  %7 = alloca %union.tpacket_req_u, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fanout_args, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 16
  %22 = icmp eq i32 %1, 263
  br i1 %22, label %23, label %312

23:                                               ; preds = %5
  switch i32 %2, label %312 [
    i32 1, label %24
    i32 2, label %24
    i32 5, label %63
    i32 13, label %63
    i32 7, label %98
    i32 10, label %108
    i32 12, label %131
    i32 14, label %154
    i32 8, label %179
    i32 9, label %194
    i32 15, label %209
    i32 17, label %238
    i32 18, label %248
    i32 22, label %256
    i32 23, label %262
    i32 19, label %276
    i32 20, label %300
  ]

24:                                               ; preds = %23, %23
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #19
  %25 = icmp ult i32 %4, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  br i1 %25, label %61, label %26

26:                                               ; preds = %24
  %27 = tail call i32 @llvm.umin.i32(i32 %4, i32 40)
  %28 = extractvalue [2 x i32] %3, 0
  %29 = inttoptr i32 %28 to ptr
  %30 = extractvalue [2 x i32] %3, 1
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %29, i32 %27, i32 -1090519040) #22, !srcloc !40
  %35 = extractvalue { i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45, !prof !27

37:                                               ; preds = %33
  %38 = tail call ptr @llvm.thread.pointer() #19
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %40 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #4, !srcloc !35
  %41 = and i32 %40, -13
  %42 = or i32 %41, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #19, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !37
  %43 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %29, i32 noundef %27) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #19, !srcloc !36
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !37
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45, !prof !27

45:                                               ; preds = %37, %33
  %46 = phi i32 [ %43, %37 ], [ %27, %33 ]
  %47 = sub i32 %27, %46
  %48 = getelementptr i8, ptr %6, i32 %47
  call void @llvm.memset.p0.i32(ptr align 1 %48, i8 0, i32 %46, i1 false) #19
  br label %61

49:                                               ; preds = %26
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %6, ptr align 1 %29, i32 %27, i1 false) #19
  br label %50

50:                                               ; preds = %49, %37
  %51 = getelementptr inbounds %struct.packet_mreq_max, ptr %6, i32 0, i32 2
  %52 = load i16, ptr %51, align 2
  %53 = zext i16 %52 to i32
  %54 = add nuw nsw i32 %53, 8
  %55 = icmp ult i32 %27, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = icmp eq i32 %2, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  %59 = call fastcc i32 @packet_mc_add(ptr noundef %21, ptr noundef nonnull %6)
  br label %61

60:                                               ; preds = %56
  call fastcc void @packet_mc_drop(ptr noundef %21, ptr noundef nonnull %6)
  br label %61

61:                                               ; preds = %60, %58, %50, %45, %24
  %62 = phi i32 [ -22, %24 ], [ -22, %50 ], [ %59, %58 ], [ 0, %60 ], [ -14, %45 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #19
  br label %312

63:                                               ; preds = %23, %23
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 28, i1 false), !annotation !32
  tail call void @lock_sock_nested(ptr noundef %21, i32 noundef 0) #19
  %64 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 16
  %65 = load i32, ptr %64, align 4
  %66 = icmp ult i32 %65, 2
  %67 = select i1 %66, i32 16, i32 28
  %68 = icmp ugt i32 %67, %4
  br i1 %68, label %96, label %69

69:                                               ; preds = %63
  %70 = extractvalue [2 x i32] %3, 0
  %71 = inttoptr i32 %70 to ptr
  %72 = extractvalue [2 x i32] %3, 1
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %69
  %76 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %71, i32 %67, i32 -1090519040) #22, !srcloc !40
  %77 = extractvalue { i32, i32 } %76, 0
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %87, !prof !27

79:                                               ; preds = %75
  %80 = tail call ptr @llvm.thread.pointer() #19
  %81 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 3
  %82 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %81) #4, !srcloc !35
  %83 = and i32 %82, -13
  %84 = or i32 %83, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %84) #19, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !37
  %85 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %71, i32 noundef %67) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #19, !srcloc !36
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !37
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %92, label %87, !prof !27

87:                                               ; preds = %79, %75
  %88 = phi i32 [ %85, %79 ], [ %67, %75 ]
  %89 = sub i32 %67, %88
  %90 = getelementptr i8, ptr %7, i32 %89
  call void @llvm.memset.p0.i32(ptr align 1 %90, i8 0, i32 %88, i1 false) #19
  br label %96

91:                                               ; preds = %69
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef align 1 dereferenceable(16) %71, i32 %67, i1 false) #19
  br label %92

92:                                               ; preds = %91, %79
  %93 = icmp eq i32 %2, 13
  %94 = zext i1 %93 to i32
  %95 = call fastcc i32 @packet_set_ring(ptr noundef %21, ptr noundef nonnull %7, i32 noundef 0, i32 noundef %94)
  br label %96

96:                                               ; preds = %92, %87, %63
  %97 = phi i32 [ %95, %92 ], [ -22, %63 ], [ -14, %87 ]
  call void @release_sock(ptr noundef %21) #19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #19
  br label %312

98:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #19
  store i32 0, ptr %8, align 4, !annotation !32
  %99 = icmp eq i32 %4, 4
  br i1 %99, label %100, label %106

100:                                              ; preds = %98
  %101 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %8, [2 x i32] %3, i32 noundef 4)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, ptr %8, align 4
  %105 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 5
  store i32 %104, ptr %105, align 8
  br label %106

106:                                              ; preds = %103, %100, %98
  %107 = phi i32 [ 0, %103 ], [ -22, %98 ], [ -14, %100 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #19
  br label %312

108:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19
  store i32 0, ptr %9, align 4, !annotation !32
  %109 = icmp eq i32 %4, 4
  br i1 %109, label %110, label %129

110:                                              ; preds = %108
  %111 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %9, [2 x i32] %3, i32 noundef 4)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %110
  %114 = load i32, ptr %9, align 4
  %115 = icmp ult i32 %114, 3
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  call void @lock_sock_nested(ptr noundef %21, i32 noundef 0) #19
  %117 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 3
  %118 = load ptr, ptr %117, align 8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 4
  %122 = load ptr, ptr %121, align 32
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i32, ptr %9, align 4
  %126 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 16
  store i32 %125, ptr %126, align 4
  br label %127

127:                                              ; preds = %124, %120, %116
  %128 = phi i32 [ 0, %124 ], [ -16, %120 ], [ -16, %116 ]
  call void @release_sock(ptr noundef %21) #19
  br label %129

129:                                              ; preds = %127, %113, %110, %108
  %130 = phi i32 [ %128, %127 ], [ -22, %108 ], [ -14, %110 ], [ -22, %113 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19
  br label %312

131:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #19
  store i32 0, ptr %10, align 4, !annotation !32
  %132 = icmp eq i32 %4, 4
  br i1 %132, label %133, label %152

133:                                              ; preds = %131
  %134 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %10, [2 x i32] %3, i32 noundef 4)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %133
  %137 = load i32, ptr %10, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %152, label %139

139:                                              ; preds = %136
  call void @lock_sock_nested(ptr noundef %21, i32 noundef 0) #19
  %140 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 3
  %141 = load ptr, ptr %140, align 8
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 4
  %145 = load ptr, ptr %144, align 32
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load i32, ptr %10, align 4
  %149 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 18
  store i32 %148, ptr %149, align 4
  br label %150

150:                                              ; preds = %147, %143, %139
  %151 = phi i32 [ 0, %147 ], [ -16, %143 ], [ -16, %139 ]
  call void @release_sock(ptr noundef %21) #19
  br label %152

152:                                              ; preds = %150, %136, %133, %131
  %153 = phi i32 [ %151, %150 ], [ -22, %131 ], [ -14, %133 ], [ -22, %136 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #19
  br label %312

154:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #19
  store i32 0, ptr %11, align 4, !annotation !32
  %155 = icmp eq i32 %4, 4
  br i1 %155, label %156, label %177

156:                                              ; preds = %154
  %157 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %11, [2 x i32] %3, i32 noundef 4)
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %177

159:                                              ; preds = %156
  call void @lock_sock_nested(ptr noundef %21, i32 noundef 0) #19
  %160 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 3
  %161 = load ptr, ptr %160, align 8
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %175

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 4
  %165 = load ptr, ptr %164, align 32
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %175

167:                                              ; preds = %163
  %168 = load i32, ptr %11, align 4
  %169 = icmp eq i32 %168, 0
  %170 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 9
  %171 = load i8, ptr %170, align 8
  %172 = select i1 %169, i8 0, i8 8
  %173 = and i8 %171, -9
  %174 = or i8 %173, %172
  store i8 %174, ptr %170, align 8
  br label %175

175:                                              ; preds = %167, %163, %159
  %176 = phi i32 [ 0, %167 ], [ -16, %163 ], [ -16, %159 ]
  call void @release_sock(ptr noundef %21) #19
  br label %177

177:                                              ; preds = %175, %156, %154
  %178 = phi i32 [ %176, %175 ], [ -22, %154 ], [ -14, %156 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #19
  br label %312

179:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #19
  store i32 0, ptr %12, align 4, !annotation !32
  %180 = icmp ult i32 %4, 4
  br i1 %180, label %192, label %181

181:                                              ; preds = %179
  %182 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %12, [2 x i32] %3, i32 noundef 4)
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %181
  call void @lock_sock_nested(ptr noundef %21, i32 noundef 0) #19
  %185 = load i32, ptr %12, align 4
  %186 = icmp ne i32 %185, 0
  %187 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 9
  %188 = zext i1 %186 to i8
  %189 = load i8, ptr %187, align 8
  %190 = and i8 %189, -2
  %191 = or i8 %190, %188
  store i8 %191, ptr %187, align 8
  call void @release_sock(ptr noundef %21) #19
  br label %192

192:                                              ; preds = %184, %181, %179
  %193 = phi i32 [ 0, %184 ], [ -22, %179 ], [ -14, %181 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #19
  br label %312

194:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #19
  store i32 0, ptr %13, align 4, !annotation !32
  %195 = icmp ult i32 %4, 4
  br i1 %195, label %207, label %196

196:                                              ; preds = %194
  %197 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %13, [2 x i32] %3, i32 noundef 4)
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %196
  call void @lock_sock_nested(ptr noundef %21, i32 noundef 0) #19
  %200 = load i32, ptr %13, align 4
  %201 = icmp eq i32 %200, 0
  %202 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 9
  %203 = load i8, ptr %202, align 8
  %204 = select i1 %201, i8 0, i8 2
  %205 = and i8 %203, -3
  %206 = or i8 %205, %204
  store i8 %206, ptr %202, align 8
  call void @release_sock(ptr noundef %21) #19
  br label %207

207:                                              ; preds = %199, %196, %194
  %208 = phi i32 [ 0, %199 ], [ -22, %194 ], [ -14, %196 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #19
  br label %312

209:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #19
  store i32 0, ptr %14, align 4, !annotation !32
  %210 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 1
  %211 = load i16, ptr %210, align 4
  %212 = icmp ne i16 %211, 3
  %213 = icmp ult i32 %4, 4
  %214 = or i1 %213, %212
  br i1 %214, label %236, label %215

215:                                              ; preds = %209
  %216 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %14, [2 x i32] %3, i32 noundef 4)
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %236

218:                                              ; preds = %215
  call void @lock_sock_nested(ptr noundef %21, i32 noundef 0) #19
  %219 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 3
  %220 = load ptr, ptr %219, align 8
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %234

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 4
  %224 = load ptr, ptr %223, align 32
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %234

226:                                              ; preds = %222
  %227 = load i32, ptr %14, align 4
  %228 = icmp eq i32 %227, 0
  %229 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 9
  %230 = load i8, ptr %229, align 8
  %231 = select i1 %228, i8 0, i8 4
  %232 = and i8 %230, -5
  %233 = or i8 %232, %231
  store i8 %233, ptr %229, align 8
  br label %234

234:                                              ; preds = %226, %222, %218
  %235 = phi i32 [ 0, %226 ], [ -16, %222 ], [ -16, %218 ]
  call void @release_sock(ptr noundef %21) #19
  br label %236

236:                                              ; preds = %234, %215, %209
  %237 = phi i32 [ %235, %234 ], [ -22, %209 ], [ -14, %215 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #19
  br label %312

238:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #19
  store i32 0, ptr %15, align 4, !annotation !32
  %239 = icmp eq i32 %4, 4
  br i1 %239, label %240, label %246

240:                                              ; preds = %238
  %241 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %15, [2 x i32] %3, i32 noundef 4)
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load i32, ptr %15, align 4
  %245 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 19
  store i32 %244, ptr %245, align 16
  br label %246

246:                                              ; preds = %243, %240, %238
  %247 = phi i32 [ 0, %243 ], [ -22, %238 ], [ -14, %240 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #19
  br label %312

248:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #19
  store i64 0, ptr %16, align 8
  switch i32 %4, label %254 [
    i32 8, label %249
    i32 4, label %249
  ]

249:                                              ; preds = %248, %248
  %250 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %16, [2 x i32] %3, i32 noundef %4)
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %249
  %253 = call fastcc i32 @fanout_add(ptr noundef %21, ptr noundef nonnull %16)
  br label %254

254:                                              ; preds = %252, %249, %248
  %255 = phi i32 [ %253, %252 ], [ -22, %248 ], [ -14, %249 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #19
  br label %312

256:                                              ; preds = %23
  %257 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 1
  %258 = load volatile ptr, ptr %257, align 8
  %259 = icmp eq ptr %258, null
  br i1 %259, label %312, label %260

260:                                              ; preds = %256
  %261 = tail call fastcc i32 @fanout_set_data(ptr noundef %21, [2 x i32] %3, i32 noundef %4)
  br label %312

262:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #19
  store i32 0, ptr %17, align 4, !annotation !32
  %263 = icmp eq i32 %4, 4
  br i1 %263, label %264, label %274

264:                                              ; preds = %262
  %265 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %17, [2 x i32] %3, i32 noundef 4)
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %264
  %268 = load i32, ptr %17, align 4
  %269 = icmp ugt i32 %268, 1
  br i1 %269, label %274, label %270

270:                                              ; preds = %267
  %271 = icmp ne i32 %268, 0
  %272 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 24, i32 1
  %273 = zext i1 %271 to i8
  store i8 %273, ptr %272, align 2
  br label %274

274:                                              ; preds = %270, %267, %264, %262
  %275 = phi i32 [ 0, %270 ], [ -22, %262 ], [ -14, %264 ], [ -22, %267 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #19
  br label %312

276:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #19
  store i32 0, ptr %18, align 4, !annotation !32
  %277 = icmp eq i32 %4, 4
  br i1 %277, label %278, label %298

278:                                              ; preds = %276
  %279 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %18, [2 x i32] %3, i32 noundef 4)
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %298

281:                                              ; preds = %278
  call void @lock_sock_nested(ptr noundef %21, i32 noundef 0) #19
  %282 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 3
  %283 = load ptr, ptr %282, align 8
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %297

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 4
  %287 = load ptr, ptr %286, align 32
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %297

289:                                              ; preds = %285
  %290 = load i32, ptr %18, align 4
  %291 = icmp eq i32 %290, 0
  %292 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 9
  %293 = load i8, ptr %292, align 8
  %294 = select i1 %291, i8 0, i8 16
  %295 = and i8 %293, -17
  %296 = or i8 %295, %294
  store i8 %296, ptr %292, align 8
  br label %297

297:                                              ; preds = %289, %285, %281
  call void @release_sock(ptr noundef %21) #19
  br label %298

298:                                              ; preds = %297, %278, %276
  %299 = phi i32 [ 0, %297 ], [ -22, %276 ], [ -14, %278 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #19
  br label %312

300:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #19
  store i32 0, ptr %19, align 4, !annotation !32
  %301 = icmp eq i32 %4, 4
  br i1 %301, label %302, label %310

302:                                              ; preds = %300
  %303 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %19, [2 x i32] %3, i32 noundef 4)
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %302
  %306 = load i32, ptr %19, align 4
  %307 = icmp eq i32 %306, 0
  %308 = select i1 %307, ptr @dev_queue_xmit, ptr @packet_direct_xmit
  %309 = getelementptr inbounds %struct.packet_sock, ptr %21, i32 0, i32 22
  store ptr %308, ptr %309, align 8
  br label %310

310:                                              ; preds = %305, %302, %300
  %311 = phi i32 [ 0, %305 ], [ -22, %300 ], [ -14, %302 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #19
  br label %312

312:                                              ; preds = %310, %298, %274, %260, %256, %254, %246, %236, %207, %192, %177, %152, %129, %106, %96, %61, %23, %5
  %313 = phi i32 [ %311, %310 ], [ %299, %298 ], [ %275, %274 ], [ %261, %260 ], [ %255, %254 ], [ %247, %246 ], [ %237, %236 ], [ %208, %207 ], [ %193, %192 ], [ %178, %177 ], [ %153, %152 ], [ %130, %129 ], [ %107, %106 ], [ %97, %96 ], [ %62, %61 ], [ -92, %5 ], [ -22, %256 ], [ -92, %23 ]
  ret i32 %313
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @packet_getsockopt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #2 {
  %6 = alloca i32, align 4
  %7 = alloca %union.tpacket_stats_u, align 4
  %8 = alloca %struct.tpacket_rollover_stats, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !annotation !32
  %9 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i32 12, i1 false), !annotation !32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !32
  %11 = icmp eq i32 %1, 263
  br i1 %11, label %12, label %171

12:                                               ; preds = %5
  %13 = tail call ptr @llvm.thread.pointer() #19
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #4, !srcloc !35
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #19, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !37
  %18 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #19, !srcloc !41
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = extractvalue { i32, i32 } %18, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #19, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !37
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %22, label %171

22:                                               ; preds = %12
  %23 = icmp slt i32 %20, 0
  br i1 %23, label %171, label %24

24:                                               ; preds = %22
  switch i32 %2, label %171 [
    i32 6, label %25
    i32 8, label %42
    i32 9, label %47
    i32 15, label %53
    i32 10, label %59
    i32 11, label %62
    i32 12, label %85
    i32 14, label %88
    i32 17, label %94
    i32 18, label %97
    i32 23, label %117
    i32 21, label %121
    i32 19, label %137
    i32 20, label %143
  ]

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %26) #19
  %27 = getelementptr inbounds %struct.packet_sock, ptr %10, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef align 4 dereferenceable(12) %27, i32 12, i1 false)
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %27, i8 0, i32 12, i1 false)
  tail call void @_raw_spin_unlock_bh(ptr noundef %26) #19
  %28 = getelementptr inbounds %struct.packet_sock, ptr %10, i32 0, i32 26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #19, !srcloc !21
  %29 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %28) #19, !srcloc !43
  %30 = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !44
  %31 = getelementptr inbounds %struct.packet_sock, ptr %10, i32 0, i32 16
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.tpacket_stats_v3, ptr %7, i32 0, i32 1
  store i32 %30, ptr %35, align 4
  %36 = load i32, ptr %7, align 4
  %37 = add i32 %36, %30
  store i32 %37, ptr %7, align 4
  br label %148

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.tpacket_stats, ptr %7, i32 0, i32 1
  store i32 %30, ptr %39, align 4
  %40 = load i32, ptr %7, align 4
  %41 = add i32 %40, %30
  store i32 %41, ptr %7, align 4
  br label %148

42:                                               ; preds = %24
  %43 = getelementptr inbounds %struct.packet_sock, ptr %10, i32 0, i32 9
  %44 = load i8, ptr %43, align 8
  %45 = and i8 %44, 1
  %46 = zext i8 %45 to i32
  store i32 %46, ptr %6, align 4
  br label %148

47:                                               ; preds = %24
  %48 = getelementptr inbounds %struct.packet_sock, ptr %10, i32 0, i32 9
  %49 = load i8, ptr %48, align 8
  %50 = lshr i8 %49, 1
  %51 = and i8 %50, 1
  %52 = zext i8 %51 to i32
  store i32 %52, ptr %6, align 4
  br label %148

53:                                               ; preds = %24
  %54 = getelementptr inbounds %struct.packet_sock, ptr %10, i32 0, i32 9
  %55 = load i8, ptr %54, align 8
  %56 = lshr i8 %55, 2
  %57 = and i8 %56, 1
  %58 = zext i8 %57 to i32
  store i32 %58, ptr %6, align 4
  br label %148

59:                                               ; preds = %24
  %60 = getelementptr inbounds %struct.packet_sock, ptr %10, i32 0, i32 16
  %61 = load i32, ptr %60, align 4
  store i32 %61, ptr %6, align 4
  br label %148

62:                                               ; preds = %24
  %63 = tail call i32 @llvm.umin.i32(i32 %20, i32 4)
  %64 = icmp ult i32 %20, 4
  br i1 %64, label %171, label %65

65:                                               ; preds = %62
  %66 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %63, i32 -1090519040) #22, !srcloc !40
  %67 = extractvalue { i32, i32 } %66, 0
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74, !prof !27

69:                                               ; preds = %65
  %70 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #4, !srcloc !35
  %71 = and i32 %70, -13
  %72 = or i32 %71, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #19, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !37
  %73 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %3, i32 noundef %63) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #19, !srcloc !36
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !37
  br label %74

74:                                               ; preds = %69, %65
  %75 = phi i32 [ %73, %69 ], [ %63, %65 ]
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77, !prof !27

77:                                               ; preds = %74
  %78 = sub i32 %63, %75
  %79 = getelementptr i8, ptr %6, i32 %78
  call void @llvm.memset.p0.i32(ptr align 1 %79, i8 0, i32 %75, i1 false) #19
  br label %171

80:                                               ; preds = %74
  %81 = load i32, ptr %6, align 4
  switch i32 %81, label %171 [
    i32 0, label %82
    i32 1, label %83
    i32 2, label %84
  ]

82:                                               ; preds = %80
  store i32 24, ptr %6, align 4
  br label %148

83:                                               ; preds = %80
  store i32 32, ptr %6, align 4
  br label %148

84:                                               ; preds = %80
  store i32 48, ptr %6, align 4
  br label %148

85:                                               ; preds = %24
  %86 = getelementptr inbounds %struct.packet_sock, ptr %10, i32 0, i32 18
  %87 = load i32, ptr %86, align 4
  store i32 %87, ptr %6, align 4
  br label %148

88:                                               ; preds = %24
  %89 = getelementptr inbounds %struct.packet_sock, ptr %10, i32 0, i32 9
  %90 = load i8, ptr %89, align 8
  %91 = lshr i8 %90, 3
  %92 = and i8 %91, 1
  %93 = zext i8 %92 to i32
  store i32 %93, ptr %6, align 4
  br label %148

94:                                               ; preds = %24
  %95 = getelementptr inbounds %struct.packet_sock, ptr %10, i32 0, i32 19
  %96 = load i32, ptr %95, align 16
  store i32 %96, ptr %6, align 4
  br label %148

97:                                               ; preds = %24
  %98 = getelementptr inbounds %struct.packet_sock, ptr %10, i32 0, i32 1
  %99 = load ptr, ptr %98, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %115, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.packet_fanout, ptr %99, i32 0, i32 3
  %103 = load i16, ptr %102, align 8
  %104 = zext i16 %103 to i32
  %105 = getelementptr inbounds %struct.packet_fanout, ptr %99, i32 0, i32 4
  %106 = load i8, ptr %105, align 2
  %107 = zext i8 %106 to i32
  %108 = shl nuw nsw i32 %107, 16
  %109 = or i32 %108, %104
  %110 = getelementptr inbounds %struct.packet_fanout, ptr %99, i32 0, i32 5
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i32
  %113 = shl nuw i32 %112, 24
  %114 = or i32 %109, %113
  br label %115

115:                                              ; preds = %101, %97
  %116 = phi i32 [ %114, %101 ], [ 0, %97 ]
  store i32 %116, ptr %6, align 4
  br label %148

117:                                              ; preds = %24
  %118 = getelementptr inbounds %struct.packet_sock, ptr %10, i32 0, i32 24, i32 1
  %119 = load i8, ptr %118, align 2, !range !45
  %120 = zext i8 %119 to i32
  store i32 %120, ptr %6, align 4
  br label %148

121:                                              ; preds = %24
  %122 = getelementptr inbounds %struct.packet_sock, ptr %10, i32 0, i32 13
  %123 = load ptr, ptr %122, align 8
  %124 = icmp eq ptr %123, null
  br i1 %124, label %171, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.packet_rollover, ptr %123, i32 0, i32 1
  %127 = load volatile i32, ptr %126, align 4
  %128 = sext i32 %127 to i64
  store i64 %128, ptr %8, align 8
  %129 = getelementptr inbounds %struct.packet_rollover, ptr %123, i32 0, i32 2
  %130 = load volatile i32, ptr %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.tpacket_rollover_stats, ptr %8, i32 0, i32 1
  store i64 %131, ptr %132, align 8
  %133 = getelementptr inbounds %struct.packet_rollover, ptr %123, i32 0, i32 3
  %134 = load volatile i32, ptr %133, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.tpacket_rollover_stats, ptr %8, i32 0, i32 2
  store i64 %135, ptr %136, align 8
  br label %148

137:                                              ; preds = %24
  %138 = getelementptr inbounds %struct.packet_sock, ptr %10, i32 0, i32 9
  %139 = load i8, ptr %138, align 8
  %140 = lshr i8 %139, 4
  %141 = and i8 %140, 1
  %142 = zext i8 %141 to i32
  store i32 %142, ptr %6, align 4
  br label %148

143:                                              ; preds = %24
  %144 = getelementptr inbounds %struct.packet_sock, ptr %10, i32 0, i32 22
  %145 = load ptr, ptr %144, align 8
  %146 = icmp eq ptr %145, @packet_direct_xmit
  %147 = zext i1 %146 to i32
  store i32 %147, ptr %6, align 4
  br label %148

148:                                              ; preds = %143, %137, %125, %117, %115, %94, %88, %85, %84, %83, %82, %59, %53, %47, %42, %38, %34
  %149 = phi ptr [ %6, %143 ], [ %6, %137 ], [ %8, %125 ], [ %6, %117 ], [ %6, %115 ], [ %6, %94 ], [ %6, %88 ], [ %6, %85 ], [ %6, %84 ], [ %6, %83 ], [ %6, %82 ], [ %6, %59 ], [ %6, %53 ], [ %6, %47 ], [ %6, %42 ], [ %7, %34 ], [ %7, %38 ]
  %150 = phi i32 [ 4, %143 ], [ 4, %137 ], [ 24, %125 ], [ 4, %117 ], [ 4, %115 ], [ 4, %94 ], [ 4, %88 ], [ 4, %85 ], [ 4, %84 ], [ 4, %83 ], [ 4, %82 ], [ 4, %59 ], [ 4, %53 ], [ 4, %47 ], [ 4, %42 ], [ 12, %34 ], [ 8, %38 ]
  %151 = phi i32 [ %20, %143 ], [ %20, %137 ], [ %20, %125 ], [ %20, %117 ], [ %20, %115 ], [ %20, %94 ], [ %20, %88 ], [ %20, %85 ], [ %63, %84 ], [ %63, %83 ], [ %63, %82 ], [ %20, %59 ], [ %20, %53 ], [ %20, %47 ], [ %20, %42 ], [ %20, %34 ], [ %20, %38 ]
  %152 = call i32 @llvm.umin.i32(i32 %151, i32 %150)
  %153 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #4, !srcloc !35
  %154 = and i32 %153, -13
  %155 = or i32 %154, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %155) #19, !srcloc !36
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !37
  %156 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %152, i32 -1090519041) #19, !srcloc !46
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %153) #19, !srcloc !36
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !37
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %148
  %159 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %152, i32 -1090519040) #22, !srcloc !47
  %160 = extractvalue { i32, i32 } %159, 0
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #4, !srcloc !35
  %164 = and i32 %163, -13
  %165 = or i32 %164, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %165) #19, !srcloc !36
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !37
  %166 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %149, i32 noundef %152) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %163) #19, !srcloc !36
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !37
  br label %167

167:                                              ; preds = %162, %158
  %168 = phi i32 [ %166, %162 ], [ %152, %158 ]
  %169 = icmp eq i32 %168, 0
  %170 = select i1 %169, i32 0, i32 -14
  br label %171

171:                                              ; preds = %167, %148, %121, %80, %77, %62, %24, %22, %12, %5
  %172 = phi i32 [ -92, %5 ], [ -14, %12 ], [ -22, %22 ], [ -22, %62 ], [ -22, %80 ], [ -22, %121 ], [ -92, %24 ], [ -14, %148 ], [ -14, %77 ], [ %170, %167 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  ret i32 %172
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @packet_sendmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.flow_keys_basic, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockcm_cookie, align 8
  %7 = alloca %struct.virtio_net_hdr, align 2
  %8 = alloca %struct.flow_keys_basic, align 4
  %9 = alloca %struct.sockcm_cookie, align 8
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr inbounds %struct.packet_sock, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 32
  %15 = icmp eq ptr %14, null
  br i1 %15, label %694, label %16

16:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i32 16, i1 false) #19, !annotation !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #19
  %17 = load ptr, ptr %1, align 8
  %18 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 64
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.packet_sock, ptr %12, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %22) #19
  %23 = load ptr, ptr %13, align 32
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26, !prof !23

25:                                               ; preds = %16
  store i32 -16, ptr %10, align 4
  br label %692

26:                                               ; preds = %16
  %27 = icmp eq ptr %17, null
  br i1 %27, label %28, label %47, !prof !27

28:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %29 = getelementptr inbounds %struct.packet_sock, ptr %12, i32 0, i32 21
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %28
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !10
  %34 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 99
  %35 = load ptr, ptr %34, align 8
  %36 = ptrtoint ptr %35 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #4, !srcloc !11
  %40 = add i32 %39, %36
  %41 = inttoptr i32 %40 to ptr
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %33) #19, !srcloc !12
  br label %44

44:                                               ; preds = %32, %28
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !17
  %45 = getelementptr inbounds %struct.packet_sock, ptr %12, i32 0, i32 12
  %46 = load volatile i16, ptr %45, align 4
  br label %79

47:                                               ; preds = %26
  store i32 -22, ptr %10, align 4
  %48 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp ult i32 %49, 20
  br i1 %50, label %692, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.sockaddr_ll, ptr %17, i32 0, i32 5
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = add nuw nsw i32 %54, 12
  %56 = icmp ult i32 %49, %55
  br i1 %56, label %692, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.sockaddr_ll, ptr %17, i32 0, i32 1
  %59 = load i16, ptr %58, align 2
  %60 = getelementptr inbounds %struct.sockaddr_ll, ptr %17, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %61) #19
  %63 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 71
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.socket, ptr %64, i32 0, i32 1
  %66 = load i16, ptr %65, align 4
  %67 = icmp eq i16 %66, 2
  br i1 %67, label %68, label %79

68:                                               ; preds = %57
  %69 = icmp eq ptr %62, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %68
  %71 = load i32, ptr %48, align 4
  %72 = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 51
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = add nuw nsw i32 %74, 12
  %76 = icmp ult i32 %71, %75
  br i1 %76, label %679, label %77

77:                                               ; preds = %70, %68
  %78 = getelementptr inbounds %struct.sockaddr_ll, ptr %17, i32 0, i32 6
  br label %79

79:                                               ; preds = %77, %57, %44
  %80 = phi ptr [ null, %44 ], [ %78, %77 ], [ null, %57 ]
  %81 = phi i16 [ %46, %44 ], [ %59, %77 ], [ %59, %57 ]
  %82 = phi ptr [ %30, %44 ], [ %62, %77 ], [ %62, %57 ]
  store i32 -6, ptr %10, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %692, label %84, !prof !23

84:                                               ; preds = %79
  store i32 -100, ptr %10, align 4
  %85 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 14
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %679, label %89, !prof !23

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 65
  %91 = load i16, ptr %90, align 8
  store i64 0, ptr %9, align 8
  %92 = getelementptr inbounds i8, ptr %9, i32 8
  store i32 0, ptr %92, align 8
  %93 = getelementptr inbounds i8, ptr %9, i32 12
  store i16 %91, ptr %93, align 4
  %94 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 5
  %95 = load i32, ptr %94, align 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %89
  %98 = call i32 @sock_cmsg_send(ptr noundef %12, ptr noundef %1, ptr noundef nonnull %9) #19
  store i32 %98, ptr %10, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %679, !prof !27

100:                                              ; preds = %97, %89
  %101 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 71
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.socket, ptr %102, i32 0, i32 1
  %104 = load i16, ptr %103, align 4
  %105 = icmp eq i16 %104, 3
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 19
  %108 = load i16, ptr %107, align 2
  %109 = zext i16 %108 to i32
  br label %110

110:                                              ; preds = %106, %100
  %111 = phi i32 [ %109, %106 ], [ 0, %100 ]
  %112 = getelementptr inbounds %struct.packet_sock, ptr %12, i32 0, i32 4, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr inbounds %struct.packet_sock, ptr %12, i32 0, i32 17
  %115 = load i32, ptr %114, align 8
  %116 = add i32 %113, 20
  %117 = sub i32 %116, %115
  %118 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 20
  %119 = load i32, ptr %118, align 4
  %120 = add nuw nsw i32 %111, 4
  %121 = add i32 %120, %119
  %122 = icmp ugt i32 %117, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %110
  %124 = getelementptr inbounds %struct.packet_sock, ptr %12, i32 0, i32 9
  %125 = load i8, ptr %124, align 8
  %126 = and i8 %125, 4
  %127 = icmp eq i8 %126, 0
  %128 = select i1 %127, i32 %121, i32 %117
  br label %129

129:                                              ; preds = %123, %110
  %130 = phi i32 [ %117, %110 ], [ %128, %123 ]
  %131 = getelementptr inbounds %struct.packet_sock, ptr %12, i32 0, i32 20
  store i32 0, ptr %131, align 4
  %132 = getelementptr inbounds %struct.packet_sock, ptr %12, i32 0, i32 4, i32 1
  %133 = getelementptr inbounds %struct.packet_sock, ptr %12, i32 0, i32 4, i32 2
  %134 = getelementptr inbounds %struct.packet_sock, ptr %12, i32 0, i32 16
  %135 = getelementptr inbounds %struct.packet_sock, ptr %12, i32 0, i32 9
  %136 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 45
  %137 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 19
  %138 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 21
  %139 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 22
  %140 = lshr exact i32 %20, 6
  %141 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 33
  %142 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 34
  %143 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 33
  %144 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 44
  %145 = call i16 @llvm.bswap.i16(i16 %81) #19
  %146 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 23
  %147 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 32
  %148 = getelementptr inbounds %struct.packet_sock, ptr %12, i32 0, i32 4, i32 8
  %149 = getelementptr inbounds %struct.packet_sock, ptr %12, i32 0, i32 22
  %150 = getelementptr inbounds %struct.packet_sock, ptr %12, i32 0, i32 4, i32 4
  %151 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 31
  br label %152

152:                                              ; preds = %669, %129
  %153 = phi i32 [ %113, %129 ], [ %674, %669 ]
  %154 = phi i32 [ 0, %129 ], [ %673, %669 ]
  %155 = phi i32 [ 0, %129 ], [ %672, %669 ]
  %156 = phi ptr [ null, %129 ], [ %671, %669 ]
  %157 = phi ptr [ null, %129 ], [ %670, %669 ]
  %158 = load i32, ptr %132, align 4
  %159 = load i32, ptr %133, align 8
  %160 = freeze i32 %158
  %161 = freeze i32 %159
  %162 = udiv i32 %160, %161
  %163 = mul i32 %162, %161
  %164 = sub i32 %160, %163
  %165 = load ptr, ptr %13, align 8
  %166 = getelementptr %struct.pgv, ptr %165, i32 %162
  %167 = load ptr, ptr %166, align 4
  %168 = mul i32 %164, %153
  %169 = getelementptr i8, ptr %167, i32 %168
  %170 = call fastcc i32 @__packet_get_status(ptr noundef %12, ptr noundef %169) #19
  %171 = icmp ne i32 %170, 1
  %172 = icmp eq ptr %169, null
  %173 = or i1 %171, %172
  br i1 %173, label %174, label %190, !prof !23

174:                                              ; preds = %152
  %175 = icmp ne ptr %157, null
  %176 = select i1 %21, i1 %175, i1 false
  br i1 %176, label %177, label %646

177:                                              ; preds = %174
  %178 = load i32, ptr %18, align 4
  %179 = and i32 %178, 64
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = load i32, ptr %151, align 4
  br label %183

183:                                              ; preds = %181, %177
  %184 = phi i32 [ %182, %181 ], [ 0, %177 ]
  %185 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %131, i32 noundef %184) #19
  %186 = icmp slt i32 %185, 1
  br i1 %186, label %187, label %646

187:                                              ; preds = %183
  %188 = icmp eq i32 %185, 0
  %189 = select i1 %188, i32 -110, i32 -512
  store i32 %189, ptr %10, align 4
  br label %679

190:                                              ; preds = %152
  %191 = load i32, ptr %134, align 4
  switch i32 %191, label %203 [
    i32 2, label %192
    i32 1, label %201
  ]

192:                                              ; preds = %190
  %193 = load i32, ptr %169, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %192
  %196 = load i1, ptr @tpacket_parse_header.__already_done, align 1
  br i1 %196, label %584, label %197, !prof !27

197:                                              ; preds = %195
  store i1 true, ptr @tpacket_parse_header.__already_done, align 1
  %198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #21
  br label %584

199:                                              ; preds = %192
  %200 = getelementptr inbounds %struct.tpacket3_hdr, ptr %169, i32 0, i32 4
  br label %205

201:                                              ; preds = %190
  %202 = getelementptr inbounds %struct.tpacket2_hdr, ptr %169, i32 0, i32 1
  br label %205

203:                                              ; preds = %190
  %204 = getelementptr inbounds %struct.tpacket_hdr, ptr %169, i32 0, i32 1
  br label %205

205:                                              ; preds = %203, %201, %199
  %206 = phi ptr [ %204, %203 ], [ %202, %201 ], [ %200, %199 ]
  %207 = load i32, ptr %206, align 4
  %208 = icmp sgt i32 %207, %130
  br i1 %208, label %209, label %211, !prof !23

209:                                              ; preds = %205
  %210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %207, i32 noundef %130) #21
  br label %584

211:                                              ; preds = %205
  %212 = load i8, ptr %135, align 8
  %213 = and i8 %212, 16
  %214 = icmp eq i8 %213, 0
  %215 = load i32, ptr %114, align 8
  %216 = add i32 %215, -20
  br i1 %214, label %243, label %217, !prof !27

217:                                              ; preds = %211
  %218 = load i32, ptr %112, align 4
  %219 = sub i32 %218, %207
  %220 = load i16, ptr %136, align 2
  %221 = icmp eq i16 %220, 2
  br i1 %221, label %222, label %229

222:                                              ; preds = %217
  switch i32 %191, label %227 [
    i32 2, label %223
    i32 1, label %225
  ]

223:                                              ; preds = %222
  %224 = getelementptr inbounds %struct.tpacket3_hdr, ptr %169, i32 0, i32 7
  br label %236

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.tpacket2_hdr, ptr %169, i32 0, i32 4
  br label %236

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.tpacket_hdr, ptr %169, i32 0, i32 4
  br label %236

229:                                              ; preds = %217
  switch i32 %191, label %234 [
    i32 2, label %230
    i32 1, label %232
  ]

230:                                              ; preds = %229
  %231 = getelementptr inbounds %struct.tpacket3_hdr, ptr %169, i32 0, i32 6
  br label %236

232:                                              ; preds = %229
  %233 = getelementptr inbounds %struct.tpacket2_hdr, ptr %169, i32 0, i32 3
  br label %236

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.tpacket_hdr, ptr %169, i32 0, i32 3
  br label %236

236:                                              ; preds = %234, %232, %230, %227, %225, %223
  %237 = phi ptr [ %228, %227 ], [ %226, %225 ], [ %224, %223 ], [ %235, %234 ], [ %233, %232 ], [ %231, %230 ]
  %238 = load i16, ptr %237, align 2
  %239 = zext i16 %238 to i32
  %240 = icmp sgt i32 %216, %239
  %241 = icmp slt i32 %219, %239
  %242 = select i1 %240, i1 true, i1 %241, !prof !23
  br i1 %242, label %584, label %243

243:                                              ; preds = %236, %211
  %244 = phi i32 [ %239, %236 ], [ %216, %211 ]
  %245 = getelementptr i8, ptr %169, i32 %244
  %246 = icmp slt i32 %207, 0
  br i1 %246, label %584, label %247

247:                                              ; preds = %243
  %248 = load i16, ptr %137, align 2
  %249 = zext i16 %248 to i32
  %250 = load i16, ptr %138, align 8
  %251 = zext i16 %250 to i32
  %252 = add nuw nsw i32 %251, %249
  %253 = and i32 %252, 131056
  %254 = add nuw nsw i32 %253, 16
  %255 = load i16, ptr %139, align 2
  %256 = zext i16 %255 to i32
  %257 = and i8 %212, 4
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %293, label %259

259:                                              ; preds = %247
  %260 = getelementptr i8, ptr %245, i32 10
  %261 = add nsw i32 %207, -10
  %262 = icmp ult i32 %207, 10
  br i1 %262, label %584, label %263

263:                                              ; preds = %259
  %264 = load i8, ptr %245, align 2
  %265 = and i8 %264, 1
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.virtio_net_hdr, ptr %245, i32 0, i32 2
  %269 = load i16, ptr %268, align 2
  br label %286

270:                                              ; preds = %263
  %271 = getelementptr inbounds %struct.virtio_net_hdr, ptr %245, i32 0, i32 4
  %272 = load i16, ptr %271, align 2
  %273 = zext i16 %272 to i32
  %274 = getelementptr inbounds %struct.virtio_net_hdr, ptr %245, i32 0, i32 5
  %275 = load i16, ptr %274, align 2
  %276 = zext i16 %275 to i32
  %277 = add nuw nsw i32 %273, 2
  %278 = add nuw nsw i32 %277, %276
  %279 = getelementptr inbounds %struct.virtio_net_hdr, ptr %245, i32 0, i32 2
  %280 = load i16, ptr %279, align 2
  %281 = zext i16 %280 to i32
  %282 = icmp ugt i32 %278, %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %270
  %284 = add i16 %272, 2
  %285 = add i16 %284, %275
  store i16 %285, ptr %279, align 2
  br label %286

286:                                              ; preds = %283, %270, %267
  %287 = phi i16 [ %269, %267 ], [ %285, %283 ], [ %280, %270 ]
  %288 = zext i16 %287 to i32
  %289 = icmp ult i32 %261, %288
  br i1 %289, label %584, label %290

290:                                              ; preds = %286
  %291 = load i16, ptr %137, align 2
  %292 = zext i16 %291 to i32
  br label %293

293:                                              ; preds = %290, %247
  %294 = phi i32 [ %292, %290 ], [ %249, %247 ]
  %295 = phi ptr [ %260, %290 ], [ %245, %247 ]
  %296 = phi i32 [ %261, %290 ], [ %207, %247 ]
  %297 = phi i32 [ %288, %290 ], [ %155, %247 ]
  %298 = phi ptr [ %245, %290 ], [ %156, %247 ]
  %299 = call i32 @llvm.smax.i32(i32 %297, i32 %294) #19
  %300 = add nuw nsw i32 %256, 20
  %301 = add nuw nsw i32 %300, %254
  %302 = sub nsw i32 %301, %294
  %303 = add i32 %302, %299
  %304 = call ptr @sock_alloc_send_skb(ptr noundef %12, i32 noundef %303, i32 noundef %140, ptr noundef nonnull %10) #19
  %305 = icmp eq ptr %304, null
  br i1 %305, label %306, label %309, !prof !23

306:                                              ; preds = %293
  %307 = icmp sgt i32 %154, 0
  br i1 %307, label %308, label %676, !prof !27

308:                                              ; preds = %306
  store i32 %154, ptr %10, align 4
  br label %676

309:                                              ; preds = %293
  %310 = load ptr, ptr %101, align 8
  %311 = getelementptr inbounds %struct.sk_buff, ptr %304, i32 0, i32 13, i32 0, i32 16
  store i16 %81, ptr %311, align 8
  %312 = getelementptr inbounds %struct.anon.76, ptr %304, i32 0, i32 2
  store ptr %82, ptr %312, align 8
  %313 = load i32, ptr %141, align 4
  %314 = getelementptr inbounds %struct.sk_buff, ptr %304, i32 0, i32 13, i32 0, i32 5
  store i32 %313, ptr %314, align 8
  %315 = load i32, ptr %142, align 8
  %316 = getelementptr inbounds %struct.sk_buff, ptr %304, i32 0, i32 13, i32 0, i32 11
  store i32 %315, ptr %316, align 4
  %317 = load i64, ptr %9, align 8
  %318 = getelementptr inbounds %struct.sk_buff, ptr %304, i32 0, i32 2
  store i64 %317, ptr %318, align 8
  %319 = load i16, ptr %93, align 4
  %320 = getelementptr inbounds %struct.sk_buff, ptr %304, i32 0, i32 1
  %321 = load ptr, ptr %320, align 4
  %322 = getelementptr inbounds %struct.sk_buff, ptr %304, i32 0, i32 15
  %323 = load ptr, ptr %322, align 4
  %324 = getelementptr inbounds %struct.skb_shared_info, ptr %323, i32 0, i32 3
  %325 = getelementptr inbounds %struct.skb_shared_info, ptr %323, i32 0, i32 9
  %326 = icmp eq i16 %319, 0
  br i1 %326, label %339, label %327, !prof !27

327:                                              ; preds = %309
  call void @__sock_tx_timestamp(i16 noundef zeroext %319, ptr noundef %324) #19
  %328 = zext i16 %319 to i32
  %329 = and i32 %328, 128
  %330 = icmp eq i32 %329, 0
  %331 = and i32 %328, 771
  %332 = icmp eq i32 %331, 0
  %333 = or i1 %332, %330
  br i1 %333, label %339, label %334

334:                                              ; preds = %327
  %335 = getelementptr inbounds %struct.sock, ptr %321, i32 0, i32 67
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !48
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %335) #19, !srcloc !21
  %336 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %335, ptr %335, i32 1, ptr elementtype(i32) %335) #19, !srcloc !49
  %337 = extractvalue { i32, i32 } %336, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !50
  %338 = add i32 %337, -1
  store i32 %338, ptr %325, align 4
  br label %339

339:                                              ; preds = %334, %327, %309
  %340 = getelementptr inbounds %struct.sock_common, ptr %321, i32 0, i32 13
  %341 = load volatile i32, ptr %340, align 4
  %342 = and i32 %341, 524288
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %347, label %344, !prof !27

344:                                              ; preds = %339
  %345 = load i8, ptr %324, align 1
  %346 = or i8 %345, 16
  store i8 %346, ptr %324, align 1
  br label %347

347:                                              ; preds = %344, %339
  %348 = ptrtoint ptr %169 to i32
  %349 = or i32 %348, 1
  %350 = inttoptr i32 %349 to ptr
  %351 = load ptr, ptr %322, align 4
  %352 = getelementptr inbounds %struct.skb_shared_info, ptr %351, i32 0, i32 11
  store ptr %350, ptr %352, align 4
  %353 = load ptr, ptr %322, align 4
  %354 = load i8, ptr %353, align 8
  %355 = or i8 %354, 3
  store i8 %355, ptr %353, align 8
  %356 = getelementptr inbounds %struct.sk_buff, ptr %304, i32 0, i32 17
  %357 = load ptr, ptr %356, align 4
  %358 = getelementptr i8, ptr %357, i32 %254
  store ptr %358, ptr %356, align 4
  %359 = getelementptr inbounds %struct.sk_buff, ptr %304, i32 0, i32 14
  %360 = load ptr, ptr %359, align 8
  %361 = getelementptr i8, ptr %360, i32 %254
  store ptr %361, ptr %359, align 8
  %362 = getelementptr inbounds %struct.sk_buff, ptr %304, i32 0, i32 16
  %363 = load ptr, ptr %362, align 8
  %364 = ptrtoint ptr %358 to i32
  %365 = ptrtoint ptr %363 to i32
  %366 = sub i32 %364, %365
  %367 = trunc i32 %366 to i16
  %368 = getelementptr inbounds %struct.sk_buff, ptr %304, i32 0, i32 13, i32 0, i32 18
  store i16 %367, ptr %368, align 4
  %369 = getelementptr inbounds %struct.socket, ptr %310, i32 0, i32 1
  %370 = load i16, ptr %369, align 4
  %371 = icmp eq i16 %370, 2
  br i1 %371, label %372, label %381

372:                                              ; preds = %347
  %373 = load ptr, ptr %144, align 16
  %374 = icmp eq ptr %373, null
  br i1 %374, label %422, label %375

375:                                              ; preds = %372
  %376 = load ptr, ptr %373, align 4
  %377 = icmp eq ptr %376, null
  br i1 %377, label %422, label %378

378:                                              ; preds = %375
  %379 = call i32 %376(ptr noundef nonnull %304, ptr noundef nonnull %82, i16 noundef zeroext %145, ptr noundef %80, ptr noundef null, i32 noundef %296) #19
  %380 = icmp slt i32 %379, 0
  br i1 %380, label %584, label %422, !prof !23

381:                                              ; preds = %347
  %382 = icmp eq i32 %299, 0
  br i1 %382, label %422, label %383

383:                                              ; preds = %381
  %384 = call i32 @llvm.smin.i32(i32 %299, i32 %296) #19
  %385 = load i16, ptr %137, align 2
  %386 = zext i16 %385 to i32
  %387 = call ptr @skb_push(ptr noundef nonnull %304, i32 noundef %386) #19
  %388 = load i16, ptr %137, align 2
  %389 = zext i16 %388 to i32
  %390 = sub nsw i32 %299, %389
  %391 = call ptr @skb_put(ptr noundef nonnull %304, i32 noundef %390) #19
  %392 = call i32 @skb_store_bits(ptr noundef nonnull %304, i32 noundef 0, ptr noundef %295, i32 noundef %384) #19
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %557, !prof !27

394:                                              ; preds = %383
  %395 = load ptr, ptr %356, align 4
  %396 = load i16, ptr %137, align 2
  %397 = zext i16 %396 to i32
  %398 = icmp ult i32 %384, %397
  br i1 %398, label %399, label %419, !prof !23

399:                                              ; preds = %394
  %400 = load i8, ptr %143, align 2
  %401 = zext i8 %400 to i32
  %402 = icmp ult i32 %384, %401
  br i1 %402, label %584, label %403

403:                                              ; preds = %399
  %404 = call zeroext i1 @capable(i32 noundef 17) #19
  br i1 %404, label %405, label %410

405:                                              ; preds = %403
  %406 = getelementptr i8, ptr %395, i32 %384
  %407 = load i16, ptr %137, align 2
  %408 = zext i16 %407 to i32
  %409 = sub nsw i32 %408, %384
  call void @llvm.memset.p0.i32(ptr align 1 %406, i8 0, i32 %409, i1 false) #19
  br label %419

410:                                              ; preds = %403
  %411 = load ptr, ptr %144, align 16
  %412 = icmp eq ptr %411, null
  br i1 %412, label %584, label %413

413:                                              ; preds = %410
  %414 = getelementptr inbounds %struct.header_ops, ptr %411, i32 0, i32 4
  %415 = load ptr, ptr %414, align 4
  %416 = icmp eq ptr %415, null
  br i1 %416, label %584, label %417

417:                                              ; preds = %413
  %418 = call zeroext i1 %415(ptr noundef %395, i32 noundef %384) #19
  br i1 %418, label %419, label %584

419:                                              ; preds = %417, %405, %394
  %420 = getelementptr i8, ptr %295, i32 %384
  %421 = sub nsw i32 %296, %384
  br label %422

422:                                              ; preds = %419, %381, %378, %375, %372
  %423 = phi i32 [ %296, %378 ], [ %421, %419 ], [ %296, %381 ], [ %296, %375 ], [ %296, %372 ]
  %424 = phi ptr [ %295, %378 ], [ %420, %419 ], [ %295, %381 ], [ %295, %375 ], [ %295, %372 ]
  %425 = ptrtoint ptr %424 to i32
  %426 = and i32 %425, 4095
  %427 = sub nuw nsw i32 4096, %426
  %428 = call i32 @llvm.smin.i32(i32 %423, i32 %427) #19
  %429 = getelementptr inbounds %struct.sk_buff, ptr %304, i32 0, i32 6
  store i32 %423, ptr %429, align 4
  %430 = getelementptr inbounds %struct.sk_buff, ptr %304, i32 0, i32 5
  %431 = load i32, ptr %430, align 8
  %432 = add i32 %431, %423
  store i32 %432, ptr %430, align 8
  %433 = getelementptr inbounds %struct.sk_buff, ptr %304, i32 0, i32 18
  %434 = load i32, ptr %433, align 8
  %435 = add i32 %434, %423
  store i32 %435, ptr %433, align 8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %146) #19, !srcloc !21
  %436 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %146, ptr %146, i32 %423, ptr elementtype(i32) %146) #19, !srcloc !26
  %437 = extractvalue { i32, i32, i32 } %436, 0
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %443, label %439, !prof !23

439:                                              ; preds = %422
  %440 = add i32 %437, %423
  %441 = or i32 %440, %437
  %442 = icmp sgt i32 %441, -1
  br i1 %442, label %445, label %443, !prof !27

443:                                              ; preds = %439, %422
  %444 = phi i32 [ 2, %422 ], [ 1, %439 ]
  call void @refcount_warn_saturate(ptr noundef %146, i32 noundef %444) #19
  br label %445

445:                                              ; preds = %443, %439
  %446 = icmp eq i32 %423, 0
  br i1 %446, label %516, label %447, !prof !23

447:                                              ; preds = %445
  %448 = getelementptr inbounds %struct.sk_buff, ptr %304, i32 0, i32 11
  br label %449

449:                                              ; preds = %509, %447
  %450 = phi ptr [ %424, %447 ], [ %473, %509 ]
  %451 = phi i32 [ %423, %447 ], [ %513, %509 ]
  %452 = phi i32 [ %428, %447 ], [ %514, %509 ]
  %453 = phi i32 [ %426, %447 ], [ 0, %509 ]
  %454 = load ptr, ptr %322, align 4
  %455 = getelementptr inbounds %struct.skb_shared_info, ptr %454, i32 0, i32 2
  %456 = load i8, ptr %455, align 2
  %457 = icmp ugt i8 %456, 16
  br i1 %457, label %458, label %460, !prof !23

458:                                              ; preds = %449
  %459 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef 17) #21
  br label %584

460:                                              ; preds = %449
  %461 = zext i8 %456 to i32
  %462 = call zeroext i1 @is_vmalloc_addr(ptr noundef %450) #19
  br i1 %462, label %463, label %465

463:                                              ; preds = %460
  %464 = call ptr @vmalloc_to_page(ptr noundef %450) #19
  br label %471

465:                                              ; preds = %460
  %466 = load ptr, ptr @mem_map, align 4
  %467 = ptrtoint ptr %450 to i32
  %468 = add i32 %467, 1073741824
  %469 = lshr i32 %468, 12
  %470 = getelementptr %struct.page, ptr %466, i32 %469
  br label %471

471:                                              ; preds = %465, %463
  %472 = phi ptr [ %464, %463 ], [ %470, %465 ]
  %473 = getelementptr i8, ptr %450, i32 %452
  call void @flush_dcache_page(ptr noundef %472) #19
  %474 = getelementptr inbounds %struct.page, ptr %472, i32 0, i32 1
  %475 = load volatile i32, ptr %474, align 4
  %476 = and i32 %475, 1
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %480, label %478, !prof !27

478:                                              ; preds = %471
  %479 = add i32 %475, -1
  br label %482

480:                                              ; preds = %471
  %481 = ptrtoint ptr %472 to i32
  br label %482

482:                                              ; preds = %480, %478
  %483 = phi i32 [ %479, %478 ], [ %481, %480 ]
  %484 = inttoptr i32 %483 to ptr
  %485 = getelementptr inbounds %struct.page, ptr %484, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %485) #19, !srcloc !21
  %486 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %485, ptr %485, i32 1, ptr elementtype(i32) %485) #19, !srcloc !31
  %487 = load ptr, ptr %322, align 4
  %488 = getelementptr %struct.skb_shared_info, ptr %487, i32 0, i32 12, i32 %461
  store ptr %472, ptr %488, align 4
  %489 = getelementptr %struct.skb_shared_info, ptr %487, i32 0, i32 12, i32 %461, i32 2
  store i32 %453, ptr %489, align 4
  %490 = getelementptr %struct.skb_shared_info, ptr %487, i32 0, i32 12, i32 %461, i32 1
  store i32 %452, ptr %490, align 4
  %491 = load volatile i32, ptr %474, align 4
  %492 = and i32 %491, 1
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %496, label %494, !prof !27

494:                                              ; preds = %482
  %495 = add i32 %491, -1
  br label %498

496:                                              ; preds = %482
  %497 = ptrtoint ptr %472 to i32
  br label %498

498:                                              ; preds = %496, %494
  %499 = phi i32 [ %495, %494 ], [ %497, %496 ]
  %500 = inttoptr i32 %499 to ptr
  %501 = getelementptr inbounds %struct.page, ptr %500, i32 0, i32 1
  %502 = load ptr, ptr %501, align 4
  %503 = ptrtoint ptr %502 to i32
  %504 = and i32 %503, 2
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %509, label %506

506:                                              ; preds = %498
  %507 = load i8, ptr %448, align 2
  %508 = or i8 %507, 64
  store i8 %508, ptr %448, align 2
  br label %509

509:                                              ; preds = %506, %498
  %510 = add nuw nsw i8 %456, 1
  %511 = load ptr, ptr %322, align 4
  %512 = getelementptr inbounds %struct.skb_shared_info, ptr %511, i32 0, i32 2
  store i8 %510, ptr %512, align 2
  %513 = sub i32 %451, %452
  %514 = call i32 @llvm.smin.i32(i32 %513, i32 4096) #19
  %515 = icmp eq i32 %513, 0
  br i1 %515, label %516, label %449, !prof !23

516:                                              ; preds = %509, %445
  %517 = load i16, ptr %311, align 8
  switch i16 %517, label %541 [
    i16 0, label %518
    i16 768, label %518
  ]

518:                                              ; preds = %516, %516
  %519 = load i16, ptr %369, align 4
  %520 = icmp eq i16 %519, 3
  br i1 %520, label %521, label %541

521:                                              ; preds = %518
  %522 = load ptr, ptr %356, align 4
  %523 = load ptr, ptr %362, align 8
  %524 = ptrtoint ptr %522 to i32
  %525 = ptrtoint ptr %523 to i32
  %526 = sub i32 %524, %525
  %527 = trunc i32 %526 to i16
  %528 = getelementptr inbounds %struct.sk_buff, ptr %304, i32 0, i32 13, i32 0, i32 19
  store i16 %527, ptr %528, align 2
  %529 = load ptr, ptr %312, align 8
  %530 = getelementptr inbounds %struct.net_device, ptr %529, i32 0, i32 44
  %531 = load ptr, ptr %530, align 16
  %532 = icmp eq ptr %531, null
  br i1 %532, label %539, label %533

533:                                              ; preds = %521
  %534 = getelementptr inbounds %struct.header_ops, ptr %531, i32 0, i32 5
  %535 = load ptr, ptr %534, align 4
  %536 = icmp eq ptr %535, null
  br i1 %536, label %539, label %537

537:                                              ; preds = %533
  %538 = call zeroext i16 %535(ptr noundef %304) #19
  br label %539

539:                                              ; preds = %537, %533, %521
  %540 = phi i16 [ %538, %537 ], [ 0, %533 ], [ 0, %521 ]
  store i16 %540, ptr %311, align 8
  br label %541

541:                                              ; preds = %539, %518, %516
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  %542 = getelementptr inbounds %struct.sk_buff, ptr %304, i32 0, i32 13, i32 0, i32 17
  %543 = load i16, ptr %542, align 2
  %544 = icmp eq i16 %543, -1
  br i1 %544, label %545, label %556

545:                                              ; preds = %541
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i32 12, i1 false) #19
  %546 = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %304, ptr noundef nonnull @flow_keys_basic_dissector, ptr noundef nonnull %8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #19
  br i1 %546, label %547, label %556

547:                                              ; preds = %545
  %548 = load i16, ptr %8, align 4
  %549 = load ptr, ptr %356, align 4
  %550 = load ptr, ptr %362, align 8
  %551 = ptrtoint ptr %549 to i32
  %552 = ptrtoint ptr %550 to i32
  %553 = sub i32 %551, %552
  %554 = trunc i32 %553 to i16
  %555 = add i16 %548, %554
  store i16 %555, ptr %542, align 2
  br label %556

556:                                              ; preds = %547, %545, %541
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  br label %557

557:                                              ; preds = %556, %383
  %558 = phi i32 [ %296, %556 ], [ %392, %383 ]
  %559 = icmp sgt i32 %558, -1
  br i1 %559, label %560, label %584, !prof !27

560:                                              ; preds = %557
  %561 = load i32, ptr %118, align 4
  %562 = add i32 %561, %111
  %563 = icmp ugt i32 %558, %562
  br i1 %563, label %564, label %599

564:                                              ; preds = %560
  %565 = load i8, ptr %135, align 8
  %566 = and i8 %565, 4
  %567 = icmp eq i8 %566, 0
  br i1 %567, label %568, label %599

568:                                              ; preds = %564
  %569 = load i16, ptr %147, align 16
  %570 = icmp eq i16 %569, 1
  br i1 %570, label %571, label %584, !prof !27

571:                                              ; preds = %568
  %572 = load ptr, ptr %356, align 4
  %573 = load ptr, ptr %362, align 8
  %574 = ptrtoint ptr %572 to i32
  %575 = ptrtoint ptr %573 to i32
  %576 = sub i32 %574, %575
  %577 = trunc i32 %576 to i16
  %578 = getelementptr inbounds %struct.sk_buff, ptr %304, i32 0, i32 13, i32 0, i32 19
  store i16 %577, ptr %578, align 2
  %579 = and i32 %576, 65535
  %580 = getelementptr i8, ptr %573, i32 %579
  %581 = getelementptr inbounds %struct.ethhdr, ptr %580, i32 0, i32 2
  %582 = load i16, ptr %581, align 1
  %583 = icmp eq i16 %582, 129
  br i1 %583, label %599, label %584

584:                                              ; preds = %603, %571, %568, %557, %458, %417, %413, %410, %399, %378, %286, %259, %243, %236, %209, %197, %195
  %585 = phi i32 [ %207, %243 ], [ -22, %603 ], [ -22, %259 ], [ -22, %286 ], [ -90, %209 ], [ -22, %236 ], [ -22, %197 ], [ -22, %195 ], [ %558, %557 ], [ -90, %571 ], [ -14, %458 ], [ -22, %378 ], [ -22, %417 ], [ -22, %399 ], [ -22, %413 ], [ -22, %410 ], [ -90, %568 ]
  %586 = phi i32 [ %155, %243 ], [ %299, %603 ], [ %155, %259 ], [ %155, %286 ], [ %155, %209 ], [ %155, %236 ], [ %155, %197 ], [ %155, %195 ], [ %299, %557 ], [ %299, %571 ], [ %299, %458 ], [ %299, %378 ], [ %299, %417 ], [ %299, %399 ], [ %299, %413 ], [ %299, %410 ], [ %299, %568 ]
  %587 = phi ptr [ %156, %243 ], [ %298, %603 ], [ %245, %259 ], [ %245, %286 ], [ %156, %209 ], [ %156, %236 ], [ %156, %197 ], [ %156, %195 ], [ %298, %557 ], [ %298, %571 ], [ %298, %458 ], [ %298, %378 ], [ %298, %417 ], [ %298, %399 ], [ %298, %413 ], [ %298, %410 ], [ %298, %568 ]
  %588 = phi ptr [ null, %243 ], [ %304, %603 ], [ null, %259 ], [ null, %286 ], [ null, %209 ], [ null, %236 ], [ null, %197 ], [ null, %195 ], [ %304, %557 ], [ %304, %571 ], [ %304, %458 ], [ %304, %378 ], [ %304, %417 ], [ %304, %399 ], [ %304, %413 ], [ %304, %410 ], [ %304, %568 ]
  %589 = load i8, ptr %135, align 8
  %590 = and i8 %589, 8
  %591 = icmp eq i8 %590, 0
  br i1 %591, label %598, label %592

592:                                              ; preds = %584
  call fastcc void @__packet_set_status(ptr noundef %12, ptr noundef nonnull %169, i32 noundef 0) #19
  %593 = load i32, ptr %132, align 4
  %594 = load i32, ptr %150, align 8
  %595 = icmp eq i32 %593, %594
  %596 = add i32 %593, 1
  %597 = select i1 %595, i32 0, i32 %596
  store i32 %597, ptr %132, align 4
  call void @kfree_skb_reason(ptr noundef %588, i32 noundef 0) #19
  br label %669

598:                                              ; preds = %584
  store i32 %585, ptr %10, align 4
  br label %676

599:                                              ; preds = %571, %564, %560
  %600 = load i8, ptr %135, align 8
  %601 = and i8 %600, 4
  %602 = icmp eq i8 %601, 0
  br i1 %602, label %617, label %603

603:                                              ; preds = %599
  %604 = call fastcc i32 @virtio_net_hdr_to_skb(ptr noundef nonnull %304, ptr noundef %298) #19
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %584

606:                                              ; preds = %603
  %607 = load i16, ptr %311, align 8
  %608 = icmp eq i16 %607, 0
  br i1 %608, label %609, label %617

609:                                              ; preds = %606
  %610 = getelementptr inbounds %struct.virtio_net_hdr, ptr %298, i32 0, i32 1
  %611 = load i8, ptr %610, align 1
  %612 = and i8 %611, 127
  %613 = zext i8 %612 to i32
  switch i32 %613, label %617 [
    i32 1, label %615
    i32 3, label %615
    i32 4, label %614
  ]

614:                                              ; preds = %609
  br label %615

615:                                              ; preds = %614, %609, %609
  %616 = phi i16 [ -8826, %614 ], [ 8, %609 ], [ 8, %609 ]
  store i16 %616, ptr %311, align 8
  br label %617

617:                                              ; preds = %615, %609, %606, %599
  %618 = getelementptr inbounds %struct.sk_buff, ptr %304, i32 0, i32 4, i32 0, i32 1
  store ptr @tpacket_destruct_skb, ptr %618, align 4
  call fastcc void @__packet_set_status(ptr noundef %12, ptr noundef nonnull %169, i32 noundef 2) #19
  %619 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !10
  %620 = load ptr, ptr %148, align 8
  %621 = ptrtoint ptr %620 to i32
  %622 = call i32 @llvm.read_register.i32(metadata !0) #19
  %623 = inttoptr i32 %622 to ptr
  %624 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %623) #4, !srcloc !11
  %625 = add i32 %624, %621
  %626 = inttoptr i32 %625 to ptr
  %627 = load i32, ptr %626, align 4
  %628 = add i32 %627, 1
  store i32 %628, ptr %626, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %619) #19, !srcloc !12
  %629 = load ptr, ptr %149, align 8
  %630 = call i32 %629(ptr noundef nonnull %304) #19
  store i32 %630, ptr %10, align 4
  %631 = icmp sgt i32 %630, 0
  br i1 %631, label %632, label %639, !prof !23

632:                                              ; preds = %617
  %633 = icmp eq i32 %630, 2
  %634 = select i1 %633, i32 0, i32 -105
  store i32 %634, ptr %10, align 4
  br i1 %633, label %638, label %635

635:                                              ; preds = %632
  %636 = call fastcc i32 @__packet_get_status(ptr noundef %12, ptr noundef nonnull %169) #19
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %676, label %638

638:                                              ; preds = %635, %632
  store i32 0, ptr %10, align 4
  br label %639

639:                                              ; preds = %638, %617
  %640 = load i32, ptr %132, align 4
  %641 = load i32, ptr %150, align 8
  %642 = icmp eq i32 %640, %641
  %643 = add i32 %640, 1
  %644 = select i1 %642, i32 0, i32 %643
  store i32 %644, ptr %132, align 4
  %645 = add i32 %558, %154
  br label %669

646:                                              ; preds = %183, %174
  br i1 %21, label %647, label %675

647:                                              ; preds = %646
  %648 = load ptr, ptr %148, align 8
  %649 = icmp eq ptr %648, null
  br i1 %649, label %675, label %650

650:                                              ; preds = %647
  %651 = load i32, ptr @nr_cpu_ids, align 4
  %652 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  %653 = icmp ult i32 %652, %651
  br i1 %653, label %654, label %675

654:                                              ; preds = %650
  %655 = ptrtoint ptr %648 to i32
  br label %656

656:                                              ; preds = %656, %654
  %657 = phi i32 [ %652, %654 ], [ %665, %656 ]
  %658 = phi i32 [ 0, %654 ], [ %664, %656 ]
  %659 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %657
  %660 = load i32, ptr %659, align 4
  %661 = add i32 %660, %655
  %662 = inttoptr i32 %661 to ptr
  %663 = load i32, ptr %662, align 4
  %664 = add i32 %663, %658
  %665 = call i32 @cpumask_next(i32 noundef %657, ptr noundef nonnull @__cpu_possible_mask) #23
  %666 = icmp ult i32 %665, %651
  br i1 %666, label %656, label %667

667:                                              ; preds = %656
  %668 = icmp eq i32 %664, 0
  br i1 %668, label %675, label %669, !prof !23

669:                                              ; preds = %667, %639, %592
  %670 = phi ptr [ %157, %667 ], [ %588, %592 ], [ %304, %639 ]
  %671 = phi ptr [ %156, %667 ], [ %587, %592 ], [ %298, %639 ]
  %672 = phi i32 [ %155, %667 ], [ %586, %592 ], [ %299, %639 ]
  %673 = phi i32 [ %154, %667 ], [ %154, %592 ], [ %645, %639 ]
  %674 = load i32, ptr %112, align 4
  br label %152

675:                                              ; preds = %667, %650, %647, %646
  store i32 %154, ptr %10, align 4
  br label %679

676:                                              ; preds = %635, %598, %308, %306
  %677 = phi i32 [ 4, %598 ], [ 1, %308 ], [ 1, %306 ], [ 1, %635 ]
  %678 = phi ptr [ %588, %598 ], [ null, %308 ], [ null, %306 ], [ null, %635 ]
  call fastcc void @__packet_set_status(ptr noundef %12, ptr noundef nonnull %169, i32 noundef %677) #19
  call void @kfree_skb_reason(ptr noundef %678, i32 noundef 0) #19
  br label %679

679:                                              ; preds = %676, %675, %187, %97, %84, %70
  %680 = phi ptr [ %82, %84 ], [ %82, %97 ], [ %82, %187 ], [ %82, %675 ], [ %82, %676 ], [ %62, %70 ]
  %681 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !10
  %682 = getelementptr inbounds %struct.net_device, ptr %680, i32 0, i32 99
  %683 = load ptr, ptr %682, align 8
  %684 = ptrtoint ptr %683 to i32
  %685 = call i32 @llvm.read_register.i32(metadata !0) #19
  %686 = inttoptr i32 %685 to ptr
  %687 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %686) #4, !srcloc !11
  %688 = add i32 %687, %684
  %689 = inttoptr i32 %688 to ptr
  %690 = load i32, ptr %689, align 4
  %691 = add i32 %690, -1
  store i32 %691, ptr %689, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %681) #19, !srcloc !12
  br label %692

692:                                              ; preds = %679, %79, %51, %47, %25
  call void @mutex_unlock(ptr noundef %22) #19
  %693 = load i32, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #19
  br label %1128

694:                                              ; preds = %3
  %695 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #19, !annotation !32
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %7) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(10) %7, i8 0, i32 10, i1 false) #19
  %696 = icmp eq ptr %695, null
  br i1 %696, label %697, label %716, !prof !27

697:                                              ; preds = %694
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %698 = getelementptr inbounds %struct.packet_sock, ptr %12, i32 0, i32 21
  %699 = load volatile ptr, ptr %698, align 4
  %700 = icmp eq ptr %699, null
  br i1 %700, label %713, label %701

701:                                              ; preds = %697
  %702 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !10
  %703 = getelementptr inbounds %struct.net_device, ptr %699, i32 0, i32 99
  %704 = load ptr, ptr %703, align 8
  %705 = ptrtoint ptr %704 to i32
  %706 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %707 = inttoptr i32 %706 to ptr
  %708 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %707) #4, !srcloc !11
  %709 = add i32 %708, %705
  %710 = inttoptr i32 %709 to ptr
  %711 = load i32, ptr %710, align 4
  %712 = add i32 %711, 1
  store i32 %712, ptr %710, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %702) #19, !srcloc !12
  br label %713

713:                                              ; preds = %701, %697
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !17
  %714 = getelementptr inbounds %struct.packet_sock, ptr %12, i32 0, i32 12
  %715 = load volatile i16, ptr %714, align 4
  br label %746

716:                                              ; preds = %694
  store i32 -22, ptr %5, align 4
  %717 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %718 = load i32, ptr %717, align 4
  %719 = icmp ult i32 %718, 20
  br i1 %719, label %1126, label %720

720:                                              ; preds = %716
  %721 = getelementptr inbounds %struct.sockaddr_ll, ptr %695, i32 0, i32 5
  %722 = load i8, ptr %721, align 1
  %723 = zext i8 %722 to i32
  %724 = add nuw nsw i32 %723, 12
  %725 = icmp ult i32 %718, %724
  br i1 %725, label %1126, label %726

726:                                              ; preds = %720
  %727 = getelementptr inbounds %struct.sockaddr_ll, ptr %695, i32 0, i32 1
  %728 = load i16, ptr %727, align 2
  %729 = getelementptr inbounds %struct.sockaddr_ll, ptr %695, i32 0, i32 2
  %730 = load i32, ptr %729, align 4
  %731 = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %730) #19
  %732 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 1
  %733 = load i16, ptr %732, align 4
  %734 = icmp eq i16 %733, 2
  br i1 %734, label %735, label %746

735:                                              ; preds = %726
  %736 = icmp eq ptr %731, null
  br i1 %736, label %744, label %737

737:                                              ; preds = %735
  %738 = load i32, ptr %717, align 4
  %739 = getelementptr inbounds %struct.net_device, ptr %731, i32 0, i32 51
  %740 = load i8, ptr %739, align 1
  %741 = zext i8 %740 to i32
  %742 = add nuw nsw i32 %741, 12
  %743 = icmp ult i32 %738, %742
  br i1 %743, label %1112, label %744

744:                                              ; preds = %737, %735
  %745 = getelementptr inbounds %struct.sockaddr_ll, ptr %695, i32 0, i32 6
  br label %746

746:                                              ; preds = %744, %726, %713
  %747 = phi ptr [ null, %713 ], [ %745, %744 ], [ null, %726 ]
  %748 = phi i16 [ %715, %713 ], [ %728, %744 ], [ %728, %726 ]
  %749 = phi ptr [ %699, %713 ], [ %731, %744 ], [ %731, %726 ]
  %750 = icmp eq ptr %749, null
  br i1 %750, label %1126, label %751, !prof !23

751:                                              ; preds = %746
  store i32 -100, ptr %5, align 4
  %752 = getelementptr inbounds %struct.net_device, ptr %749, i32 0, i32 14
  %753 = load i32, ptr %752, align 8
  %754 = and i32 %753, 1
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %1112, label %756, !prof !23

756:                                              ; preds = %751
  %757 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 65
  %758 = load i16, ptr %757, align 8
  store i64 0, ptr %6, align 8
  %759 = getelementptr inbounds i8, ptr %6, i32 8
  %760 = getelementptr inbounds i8, ptr %6, i32 12
  store i16 %758, ptr %760, align 4
  %761 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 34
  %762 = load i32, ptr %761, align 8
  store i32 %762, ptr %759, align 8
  %763 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 5
  %764 = load i32, ptr %763, align 8
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %769, label %766

766:                                              ; preds = %756
  %767 = call i32 @sock_cmsg_send(ptr noundef %12, ptr noundef %1, ptr noundef nonnull %6) #19
  store i32 %767, ptr %5, align 4
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %769, label %1112, !prof !27

769:                                              ; preds = %766, %756
  %770 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 1
  %771 = load i16, ptr %770, align 4
  %772 = icmp eq i16 %771, 3
  br i1 %772, label %773, label %777

773:                                              ; preds = %769
  %774 = getelementptr inbounds %struct.net_device, ptr %749, i32 0, i32 19
  %775 = load i16, ptr %774, align 2
  %776 = zext i16 %775 to i32
  br label %777

777:                                              ; preds = %773, %769
  %778 = phi i32 [ %776, %773 ], [ 0, %769 ]
  %779 = getelementptr inbounds %struct.packet_sock, ptr %12, i32 0, i32 9
  %780 = load i8, ptr %779, align 8
  %781 = and i8 %780, 4
  %782 = icmp eq i8 %781, 0
  br i1 %782, label %820, label %783

783:                                              ; preds = %777
  %784 = icmp ult i32 %2, 10
  br i1 %784, label %818, label %785

785:                                              ; preds = %783
  %786 = add i32 %2, -10
  %787 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %788 = call i32 @_copy_from_iter(ptr noundef nonnull %7, i32 noundef 10, ptr noundef %787) #19
  %789 = icmp eq i32 %788, 10
  br i1 %789, label %791, label %790, !prof !27

790:                                              ; preds = %785
  call void @iov_iter_revert(ptr noundef %787, i32 noundef %788) #19
  br label %818

791:                                              ; preds = %785
  %792 = load i8, ptr %7, align 2
  %793 = and i8 %792, 1
  %794 = icmp eq i8 %793, 0
  br i1 %794, label %795, label %798

795:                                              ; preds = %791
  %796 = getelementptr inbounds %struct.virtio_net_hdr, ptr %7, i32 0, i32 2
  %797 = load i16, ptr %796, align 2
  br label %814

798:                                              ; preds = %791
  %799 = getelementptr inbounds %struct.virtio_net_hdr, ptr %7, i32 0, i32 4
  %800 = load i16, ptr %799, align 2
  %801 = zext i16 %800 to i32
  %802 = getelementptr inbounds %struct.virtio_net_hdr, ptr %7, i32 0, i32 5
  %803 = load i16, ptr %802, align 2
  %804 = zext i16 %803 to i32
  %805 = add nuw nsw i32 %801, 2
  %806 = add nuw nsw i32 %805, %804
  %807 = getelementptr inbounds %struct.virtio_net_hdr, ptr %7, i32 0, i32 2
  %808 = load i16, ptr %807, align 2
  %809 = zext i16 %808 to i32
  %810 = icmp ugt i32 %806, %809
  br i1 %810, label %811, label %814

811:                                              ; preds = %798
  %812 = add i16 %800, 2
  %813 = add i16 %812, %803
  store i16 %813, ptr %807, align 2
  br label %814

814:                                              ; preds = %811, %798, %795
  %815 = phi i16 [ %797, %795 ], [ %813, %811 ], [ %808, %798 ]
  %816 = zext i16 %815 to i32
  %817 = icmp ult i32 %786, %816
  br i1 %817, label %818, label %820

818:                                              ; preds = %814, %790, %783
  %819 = phi i32 [ -14, %790 ], [ -22, %783 ], [ -22, %814 ]
  store i32 %819, ptr %5, align 4
  br label %1112

820:                                              ; preds = %814, %777
  %821 = phi i32 [ %2, %777 ], [ %786, %814 ]
  %822 = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 13
  %823 = load volatile i32, ptr %822, align 4
  %824 = and i32 %823, 1048576
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %832, label %826, !prof !27

826:                                              ; preds = %820
  %827 = getelementptr inbounds %struct.net_device, ptr %749, i32 0, i32 15
  %828 = load i64, ptr %827, align 16
  %829 = and i64 %828, 16384
  %830 = icmp eq i64 %829, 0
  br i1 %830, label %831, label %832

831:                                              ; preds = %826
  store i32 -93, ptr %5, align 4
  br label %1112

832:                                              ; preds = %826, %820
  %833 = phi i32 [ 0, %820 ], [ 4, %826 ]
  store i32 -90, ptr %5, align 4
  %834 = getelementptr inbounds %struct.virtio_net_hdr, ptr %7, i32 0, i32 1
  %835 = load i8, ptr %834, align 1
  %836 = icmp eq i8 %835, 0
  br i1 %836, label %837, label %844

837:                                              ; preds = %832
  %838 = getelementptr inbounds %struct.net_device, ptr %749, i32 0, i32 20
  %839 = load i32, ptr %838, align 4
  %840 = add nuw nsw i32 %833, %778
  %841 = add nuw nsw i32 %840, 4
  %842 = add i32 %841, %839
  %843 = icmp ugt i32 %821, %842
  br i1 %843, label %1112, label %844

844:                                              ; preds = %837, %832
  store i32 -105, ptr %5, align 4
  %845 = getelementptr inbounds %struct.net_device, ptr %749, i32 0, i32 19
  %846 = load i16, ptr %845, align 2
  %847 = zext i16 %846 to i32
  %848 = getelementptr inbounds %struct.net_device, ptr %749, i32 0, i32 21
  %849 = load i16, ptr %848, align 8
  %850 = zext i16 %849 to i32
  %851 = add nuw nsw i32 %850, %847
  %852 = and i32 %851, 131056
  %853 = add nuw nsw i32 %852, 16
  %854 = getelementptr inbounds %struct.net_device, ptr %749, i32 0, i32 22
  %855 = load i16, ptr %854, align 2
  %856 = zext i16 %855 to i32
  %857 = getelementptr inbounds %struct.virtio_net_hdr, ptr %7, i32 0, i32 2
  %858 = load i16, ptr %857, align 2
  %859 = zext i16 %858 to i32
  %860 = call i32 @llvm.smin.i32(i32 %821, i32 %847) #19
  %861 = call i32 @llvm.smax.i32(i32 %860, i32 %859) #19
  %862 = add nuw nsw i32 %853, %856
  %863 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %864 = load i32, ptr %863, align 4
  %865 = and i32 %864, 64
  %866 = add i32 %862, %821
  %867 = icmp ugt i32 %866, 4095
  %868 = icmp ne i32 %861, 0
  %869 = and i1 %868, %867
  %870 = select i1 %869, i32 %861, i32 %821
  %871 = add i32 %870, %862
  %872 = sub i32 %821, %870
  %873 = call ptr @sock_alloc_send_pskb(ptr noundef %12, i32 noundef %871, i32 noundef %872, i32 noundef %865, ptr noundef nonnull %5, i32 noundef 0) #19
  %874 = icmp eq ptr %873, null
  br i1 %874, label %1112, label %875

875:                                              ; preds = %844
  %876 = getelementptr inbounds %struct.sk_buff, ptr %873, i32 0, i32 17
  %877 = load ptr, ptr %876, align 4
  %878 = getelementptr i8, ptr %877, i32 %853
  store ptr %878, ptr %876, align 4
  %879 = getelementptr inbounds %struct.sk_buff, ptr %873, i32 0, i32 14
  %880 = load ptr, ptr %879, align 8
  %881 = getelementptr i8, ptr %880, i32 %853
  store ptr %881, ptr %879, align 8
  %882 = call ptr @skb_put(ptr noundef nonnull %873, i32 noundef %870) #19
  %883 = getelementptr inbounds %struct.sk_buff, ptr %873, i32 0, i32 6
  store i32 %872, ptr %883, align 4
  %884 = getelementptr inbounds %struct.sk_buff, ptr %873, i32 0, i32 5
  %885 = load i32, ptr %884, align 8
  %886 = add i32 %885, %872
  store i32 %886, ptr %884, align 8
  %887 = load ptr, ptr %876, align 4
  %888 = getelementptr inbounds %struct.sk_buff, ptr %873, i32 0, i32 16
  %889 = load ptr, ptr %888, align 8
  %890 = ptrtoint ptr %887 to i32
  %891 = ptrtoint ptr %889 to i32
  %892 = sub i32 %890, %891
  %893 = trunc i32 %892 to i16
  %894 = getelementptr inbounds %struct.sk_buff, ptr %873, i32 0, i32 13, i32 0, i32 18
  store i16 %893, ptr %894, align 4
  store i32 -22, ptr %5, align 4
  %895 = load i16, ptr %770, align 4
  %896 = icmp eq i16 %895, 2
  br i1 %896, label %897, label %908

897:                                              ; preds = %875
  %898 = call i16 @llvm.bswap.i16(i16 %748) #19
  %899 = getelementptr inbounds %struct.net_device, ptr %749, i32 0, i32 44
  %900 = load ptr, ptr %899, align 16
  %901 = icmp eq ptr %900, null
  br i1 %901, label %927, label %902

902:                                              ; preds = %897
  %903 = load ptr, ptr %900, align 4
  %904 = icmp eq ptr %903, null
  br i1 %904, label %927, label %905

905:                                              ; preds = %902
  %906 = call i32 %903(ptr noundef nonnull %873, ptr noundef nonnull %749, i16 noundef zeroext %898, ptr noundef %747, ptr noundef null, i32 noundef %821) #19
  %907 = icmp slt i32 %906, 0
  br i1 %907, label %1111, label %927, !prof !23

908:                                              ; preds = %875
  %909 = icmp eq i32 %778, 0
  br i1 %909, label %927, label %910

910:                                              ; preds = %908
  %911 = sub nsw i32 0, %778
  %912 = getelementptr i8, ptr %887, i32 %911
  store ptr %912, ptr %876, align 4
  %913 = load ptr, ptr %879, align 8
  %914 = getelementptr i8, ptr %913, i32 %911
  store ptr %914, ptr %879, align 8
  %915 = add nuw nsw i32 %778, 40
  %916 = icmp ult i32 %821, %915
  br i1 %916, label %917, label %927

917:                                              ; preds = %910
  %918 = getelementptr inbounds %struct.net_device, ptr %749, i32 0, i32 33
  %919 = load i8, ptr %918, align 2
  %920 = load i16, ptr %845, align 2
  %921 = zext i8 %919 to i16
  %922 = icmp eq i16 %920, %921
  br i1 %922, label %927, label %923

923:                                              ; preds = %917
  %924 = ptrtoint ptr %912 to i32
  %925 = sub i32 %924, %891
  %926 = trunc i32 %925 to i16
  store i16 %926, ptr %894, align 4
  br label %927

927:                                              ; preds = %923, %917, %910, %908, %905, %902, %897
  %928 = phi i32 [ %906, %905 ], [ 0, %923 ], [ 0, %917 ], [ 0, %910 ], [ 0, %908 ], [ 0, %902 ], [ 0, %897 ]
  %929 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %930 = call i32 @skb_copy_datagram_from_iter(ptr noundef nonnull %873, i32 noundef %928, ptr noundef %929, i32 noundef %821) #19
  store i32 %930, ptr %5, align 4
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %932, label %1111

932:                                              ; preds = %927
  %933 = load i16, ptr %770, align 4
  %934 = icmp eq i16 %933, 3
  br i1 %934, label %935, label %963

935:                                              ; preds = %932
  %936 = load ptr, ptr %876, align 4
  %937 = load i16, ptr %845, align 2
  %938 = zext i16 %937 to i32
  %939 = icmp slt i32 %821, %938
  br i1 %939, label %940, label %963, !prof !23

940:                                              ; preds = %935
  %941 = getelementptr inbounds %struct.net_device, ptr %749, i32 0, i32 33
  %942 = load i8, ptr %941, align 2
  %943 = zext i8 %942 to i32
  %944 = icmp slt i32 %821, %943
  br i1 %944, label %962, label %945

945:                                              ; preds = %940
  %946 = call zeroext i1 @capable(i32 noundef 17) #19
  br i1 %946, label %947, label %952

947:                                              ; preds = %945
  %948 = getelementptr i8, ptr %936, i32 %821
  %949 = load i16, ptr %845, align 2
  %950 = zext i16 %949 to i32
  %951 = sub i32 %950, %821
  call void @llvm.memset.p0.i32(ptr align 1 %948, i8 0, i32 %951, i1 false) #19
  br label %963

952:                                              ; preds = %945
  %953 = getelementptr inbounds %struct.net_device, ptr %749, i32 0, i32 44
  %954 = load ptr, ptr %953, align 16
  %955 = icmp eq ptr %954, null
  br i1 %955, label %962, label %956

956:                                              ; preds = %952
  %957 = getelementptr inbounds %struct.header_ops, ptr %954, i32 0, i32 4
  %958 = load ptr, ptr %957, align 4
  %959 = icmp eq ptr %958, null
  br i1 %959, label %962, label %960

960:                                              ; preds = %956
  %961 = call zeroext i1 %958(ptr noundef %936, i32 noundef %821) #19
  br i1 %961, label %963, label %962

962:                                              ; preds = %960, %956, %952, %940
  store i32 -22, ptr %5, align 4
  br label %1111

963:                                              ; preds = %960, %947, %935, %932
  %964 = load i16, ptr %760, align 4
  %965 = getelementptr inbounds %struct.sk_buff, ptr %873, i32 0, i32 1
  %966 = load ptr, ptr %965, align 4
  %967 = getelementptr inbounds %struct.sk_buff, ptr %873, i32 0, i32 15
  %968 = load ptr, ptr %967, align 4
  %969 = getelementptr inbounds %struct.skb_shared_info, ptr %968, i32 0, i32 3
  %970 = getelementptr inbounds %struct.skb_shared_info, ptr %968, i32 0, i32 9
  %971 = icmp eq i16 %964, 0
  br i1 %971, label %984, label %972, !prof !27

972:                                              ; preds = %963
  call void @__sock_tx_timestamp(i16 noundef zeroext %964, ptr noundef %969) #19
  %973 = zext i16 %964 to i32
  %974 = and i32 %973, 128
  %975 = icmp eq i32 %974, 0
  %976 = and i32 %973, 771
  %977 = icmp eq i32 %976, 0
  %978 = or i1 %977, %975
  br i1 %978, label %984, label %979

979:                                              ; preds = %972
  %980 = getelementptr inbounds %struct.sock, ptr %966, i32 0, i32 67
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !48
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %980) #19, !srcloc !21
  %981 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %980, ptr %980, i32 1, ptr elementtype(i32) %980) #19, !srcloc !49
  %982 = extractvalue { i32, i32 } %981, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !50
  %983 = add i32 %982, -1
  store i32 %983, ptr %970, align 4
  br label %984

984:                                              ; preds = %979, %972, %963
  %985 = getelementptr inbounds %struct.sock_common, ptr %966, i32 0, i32 13
  %986 = load volatile i32, ptr %985, align 4
  %987 = and i32 %986, 524288
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %992, label %989, !prof !27

989:                                              ; preds = %984
  %990 = load i8, ptr %969, align 1
  %991 = or i8 %990, 16
  store i8 %991, ptr %969, align 1
  br label %992

992:                                              ; preds = %989, %984
  %993 = load i8, ptr %834, align 1
  %994 = icmp eq i8 %993, 0
  br i1 %994, label %995, label %1019

995:                                              ; preds = %992
  %996 = getelementptr inbounds %struct.net_device, ptr %749, i32 0, i32 20
  %997 = load i32, ptr %996, align 4
  %998 = add nuw nsw i32 %833, %778
  %999 = add i32 %998, %997
  %1000 = icmp ugt i32 %821, %999
  br i1 %1000, label %1001, label %1019

1001:                                             ; preds = %995
  %1002 = getelementptr inbounds %struct.net_device, ptr %749, i32 0, i32 32
  %1003 = load i16, ptr %1002, align 16
  %1004 = icmp eq i16 %1003, 1
  br i1 %1004, label %1005, label %1018, !prof !27

1005:                                             ; preds = %1001
  %1006 = load ptr, ptr %876, align 4
  %1007 = load ptr, ptr %888, align 8
  %1008 = ptrtoint ptr %1006 to i32
  %1009 = ptrtoint ptr %1007 to i32
  %1010 = sub i32 %1008, %1009
  %1011 = trunc i32 %1010 to i16
  %1012 = getelementptr inbounds %struct.sk_buff, ptr %873, i32 0, i32 13, i32 0, i32 19
  store i16 %1011, ptr %1012, align 2
  %1013 = and i32 %1010, 65535
  %1014 = getelementptr i8, ptr %1007, i32 %1013
  %1015 = getelementptr inbounds %struct.ethhdr, ptr %1014, i32 0, i32 2
  %1016 = load i16, ptr %1015, align 1
  %1017 = icmp eq i16 %1016, 129
  br i1 %1017, label %1019, label %1018

1018:                                             ; preds = %1005, %1001
  store i32 -90, ptr %5, align 4
  br label %1111

1019:                                             ; preds = %1005, %995, %992
  %1020 = getelementptr inbounds %struct.sk_buff, ptr %873, i32 0, i32 13, i32 0, i32 16
  store i16 %748, ptr %1020, align 8
  %1021 = getelementptr inbounds %struct.anon.76, ptr %873, i32 0, i32 2
  store ptr %749, ptr %1021, align 8
  %1022 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 33
  %1023 = load i32, ptr %1022, align 4
  %1024 = getelementptr inbounds %struct.sk_buff, ptr %873, i32 0, i32 13, i32 0, i32 5
  store i32 %1023, ptr %1024, align 8
  %1025 = load i32, ptr %759, align 8
  %1026 = getelementptr inbounds %struct.sk_buff, ptr %873, i32 0, i32 13, i32 0, i32 11
  store i32 %1025, ptr %1026, align 4
  %1027 = load i64, ptr %6, align 8
  %1028 = getelementptr inbounds %struct.sk_buff, ptr %873, i32 0, i32 2
  store i64 %1027, ptr %1028, align 8
  br i1 %782, label %1043, label %1029

1029:                                             ; preds = %1019
  %1030 = call fastcc i32 @virtio_net_hdr_to_skb(ptr noundef nonnull %873, ptr noundef nonnull %7) #19
  store i32 %1030, ptr %5, align 4
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1032, label %1111

1032:                                             ; preds = %1029
  %1033 = add i32 %821, 10
  %1034 = load i16, ptr %1020, align 8
  %1035 = icmp eq i16 %1034, 0
  br i1 %1035, label %1036, label %1043

1036:                                             ; preds = %1032
  %1037 = load i8, ptr %834, align 1
  %1038 = and i8 %1037, 127
  %1039 = zext i8 %1038 to i32
  switch i32 %1039, label %1046 [
    i32 1, label %1041
    i32 3, label %1041
    i32 4, label %1040
  ]

1040:                                             ; preds = %1036
  br label %1041

1041:                                             ; preds = %1040, %1036, %1036
  %1042 = phi i16 [ -8826, %1040 ], [ 8, %1036 ], [ 8, %1036 ]
  store i16 %1042, ptr %1020, align 8
  br label %1043

1043:                                             ; preds = %1041, %1032, %1019
  %1044 = phi i16 [ %1042, %1041 ], [ %1034, %1032 ], [ %748, %1019 ]
  %1045 = phi i32 [ %1033, %1041 ], [ %1033, %1032 ], [ %821, %1019 ]
  switch i16 %1044, label %1070 [
    i16 0, label %1046
    i16 768, label %1046
  ]

1046:                                             ; preds = %1043, %1043, %1036
  %1047 = phi i32 [ %1045, %1043 ], [ %1045, %1043 ], [ %1033, %1036 ]
  %1048 = load i16, ptr %770, align 4
  %1049 = icmp eq i16 %1048, 3
  br i1 %1049, label %1050, label %1070

1050:                                             ; preds = %1046
  %1051 = load ptr, ptr %876, align 4
  %1052 = load ptr, ptr %888, align 8
  %1053 = ptrtoint ptr %1051 to i32
  %1054 = ptrtoint ptr %1052 to i32
  %1055 = sub i32 %1053, %1054
  %1056 = trunc i32 %1055 to i16
  %1057 = getelementptr inbounds %struct.sk_buff, ptr %873, i32 0, i32 13, i32 0, i32 19
  store i16 %1056, ptr %1057, align 2
  %1058 = load ptr, ptr %1021, align 8
  %1059 = getelementptr inbounds %struct.net_device, ptr %1058, i32 0, i32 44
  %1060 = load ptr, ptr %1059, align 16
  %1061 = icmp eq ptr %1060, null
  br i1 %1061, label %1068, label %1062

1062:                                             ; preds = %1050
  %1063 = getelementptr inbounds %struct.header_ops, ptr %1060, i32 0, i32 5
  %1064 = load ptr, ptr %1063, align 4
  %1065 = icmp eq ptr %1064, null
  br i1 %1065, label %1068, label %1066

1066:                                             ; preds = %1062
  %1067 = call zeroext i16 %1064(ptr noundef nonnull %873) #19
  br label %1068

1068:                                             ; preds = %1066, %1062, %1050
  %1069 = phi i16 [ %1067, %1066 ], [ 0, %1062 ], [ 0, %1050 ]
  store i16 %1069, ptr %1020, align 8
  br label %1070

1070:                                             ; preds = %1068, %1046, %1043
  %1071 = phi i32 [ %1047, %1068 ], [ %1047, %1046 ], [ %1045, %1043 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  %1072 = getelementptr inbounds %struct.sk_buff, ptr %873, i32 0, i32 13, i32 0, i32 17
  %1073 = load i16, ptr %1072, align 2
  %1074 = icmp eq i16 %1073, -1
  br i1 %1074, label %1075, label %1086

1075:                                             ; preds = %1070
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #19
  %1076 = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef nonnull %873, ptr noundef nonnull @flow_keys_basic_dissector, ptr noundef nonnull %4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #19
  br i1 %1076, label %1077, label %1086

1077:                                             ; preds = %1075
  %1078 = load i16, ptr %4, align 4
  %1079 = load ptr, ptr %876, align 4
  %1080 = load ptr, ptr %888, align 8
  %1081 = ptrtoint ptr %1079 to i32
  %1082 = ptrtoint ptr %1080 to i32
  %1083 = sub i32 %1081, %1082
  %1084 = trunc i32 %1083 to i16
  %1085 = add i16 %1078, %1084
  store i16 %1085, ptr %1072, align 2
  br label %1086

1086:                                             ; preds = %1077, %1075, %1070
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  br i1 %825, label %1091, label %1087, !prof !27

1087:                                             ; preds = %1086
  %1088 = getelementptr inbounds %struct.sk_buff, ptr %873, i32 0, i32 13
  %1089 = load i16, ptr %1088, align 8
  %1090 = or i16 %1089, 4096
  store i16 %1090, ptr %1088, align 8
  br label %1091

1091:                                             ; preds = %1087, %1086
  %1092 = getelementptr inbounds %struct.packet_sock, ptr %12, i32 0, i32 22
  %1093 = load ptr, ptr %1092, align 8
  %1094 = call i32 %1093(ptr noundef nonnull %873) #19
  store i32 %1094, ptr %5, align 4
  %1095 = icmp sgt i32 %1094, 0
  br i1 %1095, label %1096, label %1099

1096:                                             ; preds = %1091
  %1097 = icmp eq i32 %1094, 2
  %1098 = select i1 %1097, i32 0, i32 -105
  store i32 %1098, ptr %5, align 4
  br i1 %1097, label %1099, label %1112

1099:                                             ; preds = %1096, %1091
  %1100 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !10
  %1101 = getelementptr inbounds %struct.net_device, ptr %749, i32 0, i32 99
  %1102 = load ptr, ptr %1101, align 8
  %1103 = ptrtoint ptr %1102 to i32
  %1104 = call i32 @llvm.read_register.i32(metadata !0) #19
  %1105 = inttoptr i32 %1104 to ptr
  %1106 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %1105) #4, !srcloc !11
  %1107 = add i32 %1106, %1103
  %1108 = inttoptr i32 %1107 to ptr
  %1109 = load i32, ptr %1108, align 4
  %1110 = add i32 %1109, -1
  store i32 %1110, ptr %1108, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1100) #19, !srcloc !12
  br label %1126

1111:                                             ; preds = %1029, %1018, %962, %927, %905
  call void @kfree_skb_reason(ptr noundef nonnull %873, i32 noundef 0) #19
  br label %1112

1112:                                             ; preds = %1111, %1096, %844, %837, %831, %818, %766, %751, %737
  %1113 = phi ptr [ %749, %818 ], [ %731, %737 ], [ %749, %831 ], [ %749, %837 ], [ %749, %1096 ], [ %749, %1111 ], [ %749, %766 ], [ %749, %751 ], [ %749, %844 ]
  %1114 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !10
  %1115 = getelementptr inbounds %struct.net_device, ptr %1113, i32 0, i32 99
  %1116 = load ptr, ptr %1115, align 8
  %1117 = ptrtoint ptr %1116 to i32
  %1118 = call i32 @llvm.read_register.i32(metadata !0) #19
  %1119 = inttoptr i32 %1118 to ptr
  %1120 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %1119) #4, !srcloc !11
  %1121 = add i32 %1120, %1117
  %1122 = inttoptr i32 %1121 to ptr
  %1123 = load i32, ptr %1122, align 4
  %1124 = add i32 %1123, -1
  store i32 %1124, ptr %1122, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1114) #19, !srcloc !12
  %1125 = load i32, ptr %5, align 4
  br label %1126

1126:                                             ; preds = %1112, %1099, %746, %720, %716
  %1127 = phi i32 [ %1071, %1099 ], [ -22, %720 ], [ -22, %716 ], [ -6, %746 ], [ %1125, %1112 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  br label %1128

1128:                                             ; preds = %1126, %692
  %1129 = phi i32 [ %693, %692 ], [ %1127, %1126 ]
  ret i32 %1129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @packet_recvmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca %struct.virtio_net_hdr, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.tpacket_auxdata, align 4
  %8 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 -22, ptr %6, align 4
  %10 = and i32 %3, -8291
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %238

12:                                               ; preds = %4
  %13 = and i32 %3, 8192
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @sock_recv_errqueue(ptr noundef %9, ptr noundef %1, i32 noundef %2, i32 noundef 263, i32 noundef 16) #19
  store i32 %16, ptr %6, align 4
  br label %238

17:                                               ; preds = %12
  %18 = and i32 %3, 64
  %19 = call ptr @skb_recv_datagram(ptr noundef %9, i32 noundef %3, i32 noundef %18, ptr noundef nonnull %6) #19
  %20 = icmp eq ptr %19, null
  br i1 %20, label %238, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.packet_sock, ptr %9, i32 0, i32 10
  %23 = load volatile i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = call fastcc i32 @__packet_rcv_has_room(ptr noundef %9, ptr noundef null) #19
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store volatile i32 0, ptr %22, align 4
  br label %29

29:                                               ; preds = %28, %25, %21
  %30 = getelementptr inbounds %struct.packet_sock, ptr %9, i32 0, i32 9
  %31 = load i8, ptr %30, align 8
  %32 = and i8 %31, 4
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %96, label %34

34:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #19
  %35 = icmp ult i32 %2, 10
  br i1 %35, label %93, label %36

36:                                               ; preds = %34
  %37 = add i32 %2, -10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(10) %5, i8 0, i32 10, i1 false) #19
  %38 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 15
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 4
  %41 = load i16, ptr %40, align 4
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %66, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 5
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = sub i32 %45, %47
  %49 = trunc i32 %48 to i16
  %50 = getelementptr inbounds %struct.virtio_net_hdr, ptr %5, i32 0, i32 2
  store i16 %49, ptr %50, align 2
  %51 = getelementptr inbounds %struct.virtio_net_hdr, ptr %5, i32 0, i32 3
  store i16 %41, ptr %51, align 2
  %52 = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 8
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %43
  %57 = and i32 %53, 16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %93, label %59

59:                                               ; preds = %56, %43
  %60 = phi i8 [ 1, %43 ], [ 4, %56 ]
  %61 = phi i8 [ -127, %43 ], [ -124, %56 ]
  %62 = getelementptr inbounds %struct.virtio_net_hdr, ptr %5, i32 0, i32 1
  store i8 %60, ptr %62, align 1
  %63 = and i32 %53, 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  store i8 %61, ptr %62, align 1
  br label %66

66:                                               ; preds = %65, %59, %36
  %67 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13
  %68 = load i16, ptr %67, align 8
  %69 = lshr i16 %68, 5
  %70 = trunc i16 %69 to i2
  switch i2 %70, label %89 [
    i2 -1, label %71
    i2 1, label %88
  ]

71:                                               ; preds = %66
  store i8 1, ptr %5, align 2
  %72 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13, i32 0, i32 4
  %73 = load i16, ptr %72, align 4
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 17
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 16
  %78 = load ptr, ptr %77, align 8
  %79 = ptrtoint ptr %76 to i32
  %80 = ptrtoint ptr %78 to i32
  %81 = sub i32 %74, %79
  %82 = add i32 %81, %80
  %83 = trunc i32 %82 to i16
  %84 = getelementptr inbounds %struct.virtio_net_hdr, ptr %5, i32 0, i32 4
  store i16 %83, ptr %84, align 2
  %85 = getelementptr inbounds %struct.anon.148, ptr %72, i32 0, i32 1
  %86 = load i16, ptr %85, align 2
  %87 = getelementptr inbounds %struct.virtio_net_hdr, ptr %5, i32 0, i32 5
  store i16 %86, ptr %87, align 2
  br label %89

88:                                               ; preds = %66
  store i8 2, ptr %5, align 2
  br label %89

89:                                               ; preds = %88, %71, %66
  %90 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %91 = call i32 @_copy_to_iter(ptr noundef nonnull %5, i32 noundef 10, ptr noundef %90) #19
  %92 = icmp eq i32 %91, 10
  br i1 %92, label %95, label %93

93:                                               ; preds = %89, %56, %34
  %94 = phi i32 [ -14, %89 ], [ -22, %56 ], [ -22, %34 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #19
  store i32 %94, ptr %6, align 4
  br label %237

95:                                               ; preds = %89
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #19
  store i32 0, ptr %6, align 4
  br label %96

96:                                               ; preds = %95, %29
  %97 = phi i32 [ %2, %29 ], [ %37, %95 ]
  %98 = phi i32 [ 0, %29 ], [ 10, %95 ]
  %99 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 5
  %100 = load i32, ptr %99, align 8
  %101 = icmp ugt i32 %100, %97
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %104 = load i32, ptr %103, align 4
  %105 = or i32 %104, 32
  store i32 %105, ptr %103, align 4
  br label %106

106:                                              ; preds = %102, %96
  %107 = phi i32 [ %97, %102 ], [ %100, %96 ]
  %108 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %109 = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %19, i32 noundef 0, ptr noundef %108, i32 noundef %107) #19
  store i32 %109, ptr %6, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %237

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 1
  %113 = load i16, ptr %112, align 4
  %114 = icmp eq i16 %113, 10
  br i1 %114, label %121, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3
  %117 = load i32, ptr %116, align 8
  store i16 17, ptr %116, align 4
  %118 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13, i32 0, i32 16
  %119 = load i16, ptr %118, align 8
  %120 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 2
  store i16 %119, ptr %120, align 2
  br label %121

121:                                              ; preds = %115, %111
  %122 = phi i32 [ %117, %115 ], [ 0, %111 ]
  %123 = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 13
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, 133120
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 65
  %129 = load i16, ptr %128, align 8
  %130 = and i16 %129, 80
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %127, %121
  call void @__sock_recv_ts_and_drops(ptr noundef %1, ptr noundef %9, ptr noundef nonnull %19) #19
  br label %145

133:                                              ; preds = %127
  %134 = load volatile i32, ptr %123, align 4
  %135 = and i32 %134, 128
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %140, label %137, !prof !27

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 2
  %139 = load i64, ptr %138, align 8
  call fastcc void @sock_write_timestamp(ptr noundef %9, i64 noundef %139) #19
  br label %145

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 63
  %142 = load i64, ptr %141, align 8
  %143 = icmp eq i64 %142, -1000000000
  br i1 %143, label %144, label %145, !prof !23

144:                                              ; preds = %140
  call fastcc void @sock_write_timestamp(ptr noundef %9, i64 noundef 0) #19
  br label %145

145:                                              ; preds = %144, %140, %137, %132
  %146 = load ptr, ptr %1, align 8
  %147 = icmp eq ptr %146, null
  br i1 %147, label %174, label %148

148:                                              ; preds = %145
  %149 = load i16, ptr %112, align 4
  %150 = icmp eq i16 %149, 10
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  store i32 18, ptr %152, align 4
  br label %170

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 11
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i32
  %157 = add nuw nsw i32 %156, 12
  %158 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  store i32 %157, ptr %158, align 4
  %159 = icmp ult i8 %155, 8
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = getelementptr i8, ptr %146, i32 12
  store i64 0, ptr %161, align 1
  store i32 20, ptr %158, align 4
  br label %170

162:                                              ; preds = %153
  %163 = icmp ugt i8 %155, 36
  %164 = load i1, ptr @packet_recvmsg.__already_done, align 1
  %165 = xor i1 %164, true
  %166 = select i1 %163, i1 %165, i1 false
  br i1 %166, label %167, label %168, !prof !23

167:                                              ; preds = %162
  store i1 true, ptr @packet_recvmsg.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 3492, i32 noundef 9, ptr noundef null) #19
  br label %169

168:                                              ; preds = %162
  br i1 %163, label %169, label %170

169:                                              ; preds = %168, %167
  store i32 48, ptr %158, align 4
  br label %170

170:                                              ; preds = %169, %168, %160, %151
  %171 = phi i32 [ 48, %169 ], [ %157, %168 ], [ 18, %151 ], [ %157, %160 ]
  %172 = load ptr, ptr %1, align 8
  %173 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %172, ptr align 8 %173, i32 %171, i1 false)
  br label %174

174:                                              ; preds = %170, %145
  %175 = load i8, ptr %30, align 8
  %176 = and i8 %175, 1
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %229, label %178

178:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #19
  store i32 1, ptr %7, align 4
  %179 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13
  %180 = load i16, ptr %179, align 8
  %181 = lshr i16 %180, 5
  %182 = and i16 %181, 3
  %183 = icmp eq i16 %182, 3
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  store i32 9, ptr %7, align 4
  br label %194

185:                                              ; preds = %178
  %186 = and i16 %180, 7
  %187 = icmp eq i16 %186, 4
  br i1 %187, label %194, label %188

188:                                              ; preds = %185
  %189 = icmp eq i16 %182, 2
  br i1 %189, label %193, label %190

190:                                              ; preds = %188
  %191 = call fastcc i32 @skb_csum_unnecessary(ptr noundef nonnull %19)
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %190, %188
  store i32 129, ptr %7, align 4
  br label %194

194:                                              ; preds = %193, %190, %185, %184
  %195 = phi i32 [ 81, %185 ], [ 81, %190 ], [ 209, %193 ], [ 89, %184 ]
  %196 = getelementptr inbounds %struct.tpacket_auxdata, ptr %7, i32 0, i32 1
  store i32 %122, ptr %196, align 4
  %197 = load i32, ptr %99, align 8
  %198 = getelementptr inbounds %struct.tpacket_auxdata, ptr %7, i32 0, i32 2
  store i32 %197, ptr %198, align 4
  %199 = getelementptr inbounds %struct.tpacket_auxdata, ptr %7, i32 0, i32 3
  store i16 0, ptr %199, align 4
  %200 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 16
  %201 = load ptr, ptr %200, align 8
  %202 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13, i32 0, i32 18
  %203 = load i16, ptr %202, align 4
  %204 = zext i16 %203 to i32
  %205 = getelementptr i8, ptr %201, i32 %204
  %206 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 17
  %207 = load ptr, ptr %206, align 4
  %208 = ptrtoint ptr %205 to i32
  %209 = ptrtoint ptr %207 to i32
  %210 = sub i32 %208, %209
  %211 = trunc i32 %210 to i16
  %212 = getelementptr inbounds %struct.tpacket_auxdata, ptr %7, i32 0, i32 4
  store i16 %211, ptr %212, align 2
  %213 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13, i32 0, i32 3
  %214 = load i16, ptr %213, align 2
  %215 = and i16 %214, 1
  %216 = icmp eq i16 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %194
  %218 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13, i32 0, i32 9
  %219 = load i16, ptr %218, align 2
  %220 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13, i32 0, i32 8
  %221 = load i16, ptr %220, align 4
  %222 = call i16 @llvm.bswap.i16(i16 %221)
  store i32 %195, ptr %7, align 4
  br label %223

223:                                              ; preds = %217, %194
  %224 = phi i16 [ %219, %217 ], [ 0, %194 ]
  %225 = phi i16 [ %222, %217 ], [ 0, %194 ]
  %226 = getelementptr inbounds %struct.tpacket_auxdata, ptr %7, i32 0, i32 5
  store i16 %224, ptr %226, align 4
  %227 = getelementptr inbounds %struct.tpacket_auxdata, ptr %7, i32 0, i32 6
  store i16 %225, ptr %227, align 2
  %228 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 263, i32 noundef 8, i32 noundef 20, ptr noundef nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #19
  br label %229

229:                                              ; preds = %223, %174
  %230 = and i32 %3, 32
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %229
  %233 = load i32, ptr %99, align 8
  br label %234

234:                                              ; preds = %232, %229
  %235 = phi i32 [ %233, %232 ], [ %107, %229 ]
  %236 = add i32 %235, %98
  store i32 %236, ptr %6, align 4
  br label %237

237:                                              ; preds = %234, %106, %93
  call void @skb_free_datagram(ptr noundef %9, ptr noundef nonnull %19) #19
  br label %238

238:                                              ; preds = %237, %17, %15, %4
  %239 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  ret i32 %239
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @packet_mmap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 13
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %103

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %10) #19
  %11 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 3
  %12 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 4
  br label %13

13:                                               ; preds = %26, %9
  %14 = phi ptr [ %11, %9 ], [ %28, %26 ]
  %15 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %16 = load ptr, ptr %14, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.packet_ring_buffer, ptr %14, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.packet_ring_buffer, ptr %14, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  %23 = shl i32 %20, 12
  %24 = mul i32 %23, %22
  %25 = add i32 %24, %15
  br label %26

26:                                               ; preds = %18, %13
  %27 = phi i32 [ %25, %18 ], [ %15, %13 ]
  %28 = getelementptr %struct.packet_ring_buffer, ptr %14, i32 1
  %29 = icmp ugt ptr %28, %12
  br i1 %29, label %30, label %13

30:                                               ; preds = %26
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %101, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %2, align 4
  %36 = sub i32 %34, %35
  %37 = icmp eq i32 %36, %27
  br i1 %37, label %38, label %101

38:                                               ; preds = %93, %32
  %39 = phi i32 [ %94, %93 ], [ %35, %32 ]
  %40 = phi ptr [ %95, %93 ], [ %11, %32 ]
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %93, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.packet_ring_buffer, ptr %40, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %93, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.packet_ring_buffer, ptr %40, i32 0, i32 6
  %49 = load i32, ptr %48, align 8
  br label %50

50:                                               ; preds = %91, %47
  %51 = phi i32 [ %45, %47 ], [ %86, %91 ]
  %52 = phi i32 [ %49, %47 ], [ %87, %91 ]
  %53 = phi ptr [ %41, %47 ], [ %92, %91 ]
  %54 = phi i32 [ 0, %47 ], [ %89, %91 ]
  %55 = phi i32 [ %39, %47 ], [ %88, %91 ]
  %56 = icmp eq i32 %52, 0
  br i1 %56, label %85, label %57

57:                                               ; preds = %50
  %58 = getelementptr %struct.pgv, ptr %53, i32 %54
  %59 = load ptr, ptr %58, align 4
  br label %60

60:                                               ; preds = %77, %57
  %61 = phi i32 [ %80, %77 ], [ 0, %57 ]
  %62 = phi ptr [ %79, %77 ], [ %59, %57 ]
  %63 = phi i32 [ %78, %77 ], [ %55, %57 ]
  %64 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %62) #19
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = tail call ptr @vmalloc_to_page(ptr noundef %62) #19
  br label %73

67:                                               ; preds = %60
  %68 = load ptr, ptr @mem_map, align 4
  %69 = ptrtoint ptr %62 to i32
  %70 = add i32 %69, 1073741824
  %71 = lshr i32 %70, 12
  %72 = getelementptr %struct.page, ptr %68, i32 %71
  br label %73

73:                                               ; preds = %67, %65
  %74 = phi ptr [ %66, %65 ], [ %72, %67 ]
  %75 = tail call i32 @vm_insert_page(ptr noundef %2, i32 noundef %63, ptr noundef %74) #19
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %101, !prof !27

77:                                               ; preds = %73
  %78 = add i32 %63, 4096
  %79 = getelementptr i8, ptr %62, i32 4096
  %80 = add nuw i32 %61, 1
  %81 = load i32, ptr %48, align 8
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %60, label %83

83:                                               ; preds = %77
  %84 = load i32, ptr %44, align 4
  br label %85

85:                                               ; preds = %83, %50
  %86 = phi i32 [ %51, %50 ], [ %84, %83 ]
  %87 = phi i32 [ 0, %50 ], [ %81, %83 ]
  %88 = phi i32 [ %55, %50 ], [ %78, %83 ]
  %89 = add nuw i32 %54, 1
  %90 = icmp ult i32 %89, %86
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load ptr, ptr %40, align 8
  br label %50

93:                                               ; preds = %85, %43, %38
  %94 = phi i32 [ %39, %38 ], [ %39, %43 ], [ %88, %85 ]
  %95 = getelementptr %struct.packet_ring_buffer, ptr %40, i32 1
  %96 = icmp ugt ptr %95, %12
  br i1 %96, label %97, label %38

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %98) #19, !srcloc !21
  %99 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %98, ptr %98, i32 1, ptr elementtype(i32) %98) #19, !srcloc !31
  %100 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 12
  store ptr @packet_mmap_ops, ptr %100, align 4
  br label %101

101:                                              ; preds = %97, %73, %32, %30
  %102 = phi i32 [ -22, %30 ], [ -22, %32 ], [ 0, %97 ], [ %75, %73 ]
  tail call void @mutex_unlock(ptr noundef %10) #19
  br label %103

103:                                              ; preds = %101, %3
  %104 = phi i32 [ %102, %101 ], [ -22, %3 ]
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @packet_set_ring(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.ethtool_link_ksettings, align 4
  %7 = icmp ne i32 %3, 0
  %8 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 3
  %10 = select i1 %7, ptr %8, ptr %9
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %13 = select i1 %7, ptr %11, ptr %12
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 15
  %17 = load volatile i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %378

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 8
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %25 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  %26 = icmp ult i32 %25, %24
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = ptrtoint ptr %21 to i32
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i32 [ %25, %27 ], [ %38, %29 ]
  %31 = phi i32 [ 0, %27 ], [ %37, %29 ]
  %32 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, %28
  %35 = inttoptr i32 %34 to ptr
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %31
  %38 = tail call i32 @cpumask_next(i32 noundef %30, ptr noundef nonnull @__cpu_possible_mask) #23
  %39 = icmp ult i32 %38, %24
  br i1 %39, label %29, label %40

40:                                               ; preds = %29
  %41 = icmp eq i32 %37, 0
  br i1 %41, label %42, label %378

42:                                               ; preds = %40, %23, %19, %4
  %43 = getelementptr inbounds %struct.tpacket_req, ptr %1, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %275, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %10, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %378, !prof !27

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 16
  %51 = load i32, ptr %50, align 4
  %52 = icmp ult i32 %51, 3
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr inbounds [3 x i32], ptr @switch.table.packet_set_ring, i32 0, i32 %51
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 17
  store i32 %55, ptr %56, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, ptr %1, align 4
  %59 = icmp sgt i32 %58, 0
  %60 = and i32 %58, 4095
  %61 = icmp eq i32 %60, 0
  %62 = and i1 %59, %61
  br i1 %62, label %63, label %378, !prof !51

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 17
  %65 = load i32, ptr %64, align 8
  %66 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 18
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, %65
  %69 = icmp ugt i32 %51, 1
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = zext i32 %58 to i64
  %72 = getelementptr inbounds %struct.tpacket_req3, ptr %1, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = zext i32 %73 to i64
  %75 = add nuw nsw i64 %74, 7
  %76 = and i64 %75, 8589934584
  %77 = zext i32 %68 to i64
  %78 = add nuw nsw i64 %77, 48
  %79 = add nuw nsw i64 %78, %76
  %80 = icmp ugt i64 %79, %71
  br i1 %80, label %378, label %81

81:                                               ; preds = %70, %63
  %82 = getelementptr inbounds %struct.tpacket_req, ptr %1, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = icmp uge i32 %83, %68
  %85 = and i32 %83, 15
  %86 = icmp eq i32 %85, 0
  %87 = and i1 %84, %86
  br i1 %87, label %88, label %378, !prof !51

88:                                               ; preds = %81
  %89 = udiv i32 %58, %83
  %90 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 2
  store i32 %89, ptr %90, align 8
  %91 = icmp ugt i32 %83, %58
  br i1 %91, label %378, label %92, !prof !23

92:                                               ; preds = %88
  %93 = load i32, ptr %43, align 4
  %94 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %93, i32 %89)
  %95 = extractvalue { i32, i1 } %94, 1
  br i1 %95, label %378, label %96, !prof !23

96:                                               ; preds = %92
  %97 = mul i32 %93, %89
  %98 = getelementptr inbounds %struct.tpacket_req, ptr %1, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %378, !prof !27

101:                                              ; preds = %96
  %102 = load i32, ptr %1, align 4
  %103 = add i32 %102, -1
  %104 = lshr i32 %103, 12
  %105 = icmp ult i32 %103, 4096
  %106 = tail call i32 @llvm.ctlz.i32(i32 %104, i1 false) #19, !range !52
  %107 = sub nuw nsw i32 32, %106
  %108 = select i1 %105, i32 0, i32 %107
  %109 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %93, i32 4) #19
  %110 = extractvalue { i32, i1 } %109, 1
  br i1 %110, label %378, label %111, !prof !23

111:                                              ; preds = %101
  %112 = extractvalue { i32, i1 } %109, 0
  %113 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %112, i32 noundef 11712) #20
  %114 = icmp eq ptr %113, null
  br i1 %114, label %378, label %115, !prof !23

115:                                              ; preds = %111
  %116 = icmp eq i32 %93, 0
  br i1 %116, label %144, label %117

117:                                              ; preds = %115
  %118 = shl nuw i32 1, %108
  %119 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %118, i32 4096) #19
  %120 = extractvalue { i32, i1 } %119, 1
  %121 = extractvalue { i32, i1 } %119, 0
  %122 = select i1 %120, i32 -1, i32 %121
  br label %123

123:                                              ; preds = %140, %117
  %124 = phi i32 [ 0, %117 ], [ %141, %140 ]
  %125 = tail call i32 @__get_free_pages(i32 noundef 339392, i32 noundef %108) #19
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = inttoptr i32 %125 to ptr
  br label %137

129:                                              ; preds = %123
  %130 = tail call noalias ptr @vzalloc(i32 noundef %122) #20
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = tail call i32 @__get_free_pages(i32 noundef 273856, i32 noundef %108) #19
  %134 = inttoptr i32 %133 to ptr
  %135 = getelementptr %struct.pgv, ptr %113, i32 %124
  store ptr %134, ptr %135, align 4
  %136 = icmp eq i32 %133, 0
  br i1 %136, label %143, label %140, !prof !23

137:                                              ; preds = %129, %127
  %138 = phi ptr [ %128, %127 ], [ %130, %129 ]
  %139 = getelementptr %struct.pgv, ptr %113, i32 %124
  store ptr %138, ptr %139, align 4
  br label %140

140:                                              ; preds = %137, %132
  %141 = add nuw i32 %124, 1
  %142 = icmp eq i32 %141, %93
  br i1 %142, label %144, label %123

143:                                              ; preds = %132
  tail call fastcc void @free_pg_vec(ptr noundef nonnull %113, i32 noundef %108, i32 noundef %93) #19
  br label %378

144:                                              ; preds = %140, %115
  %145 = load i32, ptr %50, align 4
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %147, label %270

147:                                              ; preds = %144
  br i1 %7, label %258, label %148

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(96) %149, i8 0, i32 96, i1 false) #19
  %150 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9, i32 0, i32 13
  store i64 1, ptr %150, align 8
  store ptr %113, ptr %149, align 8
  %151 = load ptr, ptr %113, align 64
  %152 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9, i32 0, i32 8
  store ptr %151, ptr %152, align 4
  %153 = load i32, ptr %1, align 4
  %154 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9, i32 0, i32 10
  store i32 %153, ptr %154, align 4
  %155 = load i32, ptr %43, align 4
  %156 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9, i32 0, i32 12
  store i32 %155, ptr %156, align 4
  %157 = load i32, ptr %64, align 8
  %158 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9, i32 0, i32 2
  store i32 %157, ptr %158, align 8
  %159 = load i32, ptr %50, align 4
  %160 = trunc i32 %159 to i16
  %161 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9, i32 0, i32 19
  store i16 %160, ptr %161, align 2
  %162 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9, i32 0, i32 7
  store i16 0, ptr %162, align 2
  %163 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 2, i32 0, i32 2
  store i32 0, ptr %163, align 4
  %164 = getelementptr inbounds %struct.tpacket_req3, ptr %1, i32 0, i32 4
  %165 = load i32, ptr %164, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %148
  %168 = trunc i32 %165 to i16
  br label %193

169:                                              ; preds = %148
  %170 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %6, i8 0, i32 88, i1 false) #19, !annotation !32
  tail call void @rtnl_lock() #19
  %171 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 11
  %172 = load i32, ptr %171, align 16
  %173 = tail call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %172) #19
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %176, !prof !23

175:                                              ; preds = %169
  tail call void @rtnl_unlock() #19
  br label %191

176:                                              ; preds = %169
  %177 = call i32 @__ethtool_get_link_ksettings(ptr noundef nonnull %173, ptr noundef nonnull %6) #19
  call void @rtnl_unlock() #19
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %191

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.ethtool_link_settings, ptr %6, i32 0, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = add i32 %181, 1
  %183 = icmp ult i32 %182, 1001
  br i1 %183, label %191, label %184

184:                                              ; preds = %179
  %185 = shl i32 %170, 3
  %186 = sdiv i32 %185, 1048576
  %187 = udiv i32 %181, 1000
  %188 = udiv i32 %186, %187
  %189 = trunc i32 %188 to i16
  %190 = add i16 %189, 1
  br label %191

191:                                              ; preds = %184, %179, %176, %175
  %192 = phi i16 [ 8, %175 ], [ %190, %184 ], [ 8, %176 ], [ 8, %179 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #19
  br label %193

193:                                              ; preds = %191, %167
  %194 = phi i16 [ %192, %191 ], [ %168, %167 ]
  %195 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9, i32 0, i32 18
  store i16 %194, ptr %195, align 8
  %196 = zext i16 %194 to i32
  %197 = call i32 @__msecs_to_jiffies(i32 noundef %196) #19
  %198 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9, i32 0, i32 20
  store i32 %197, ptr %198, align 4
  %199 = getelementptr inbounds %struct.tpacket_req3, ptr %1, i32 0, i32 5
  %200 = load i32, ptr %199, align 4
  %201 = trunc i32 %200 to i16
  %202 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9, i32 0, i32 6
  store i16 %201, ptr %202, align 8
  %203 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9, i32 0, i32 17
  store i32 0, ptr %203, align 4
  %204 = load i32, ptr %154, align 4
  %205 = and i32 %200, 65535
  %206 = add nuw nsw i32 %205, 7
  %207 = and i32 %206, 131064
  %208 = sub nuw nsw i32 -48, %207
  %209 = add i32 %208, %204
  %210 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9, i32 0, i32 11
  store i32 %209, ptr %210, align 8
  %211 = getelementptr inbounds %struct.tpacket_req3, ptr %1, i32 0, i32 6
  %212 = load i32, ptr %211, align 4
  %213 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9, i32 0, i32 1
  store i32 %212, ptr %213, align 4
  %214 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 3, i32 9, i32 0, i32 21
  call void @init_timer_key(ptr noundef %214, ptr noundef nonnull @prb_retire_rx_blk_timer_expired, i32 noundef 0, ptr noundef null, ptr noundef null) #19
  %215 = load volatile i32, ptr @jiffies, align 64
  %216 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 3, i32 9, i32 0, i32 21, i32 1
  store i32 %215, ptr %216, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #19, !annotation !32
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !53
  %217 = load i64, ptr %150, align 8
  %218 = add i64 %217, 1
  store i64 %218, ptr %150, align 8
  %219 = getelementptr inbounds %struct.tpacket_block_desc, ptr %151, i32 0, i32 2, i32 0, i32 4
  store i64 %217, ptr %219, align 8
  %220 = getelementptr inbounds %struct.tpacket_block_desc, ptr %151, i32 0, i32 2, i32 0, i32 1
  store i32 0, ptr %220, align 4
  %221 = load i16, ptr %202, align 8
  %222 = zext i16 %221 to i32
  %223 = add nuw nsw i32 %222, 7
  %224 = and i32 %223, 131064
  %225 = add nuw nsw i32 %224, 48
  %226 = getelementptr inbounds %struct.tpacket_block_desc, ptr %151, i32 0, i32 2, i32 0, i32 3
  store i32 %225, ptr %226, align 4
  call void @ktime_get_real_ts64(ptr noundef nonnull %5) #19
  %227 = load i64, ptr %5, align 8
  %228 = trunc i64 %227 to i32
  %229 = getelementptr inbounds %struct.tpacket_block_desc, ptr %151, i32 0, i32 2, i32 0, i32 5
  store i32 %228, ptr %229, align 8
  %230 = getelementptr inbounds %struct.timespec64, ptr %5, i32 0, i32 1
  %231 = load i32, ptr %230, align 8
  %232 = getelementptr inbounds %struct.tpacket_block_desc, ptr %151, i32 0, i32 2, i32 0, i32 5, i32 1
  store i32 %231, ptr %232, align 4
  store ptr %151, ptr %152, align 4
  %233 = load i16, ptr %202, align 8
  %234 = zext i16 %233 to i32
  %235 = add nuw nsw i32 %234, 7
  %236 = and i32 %235, 131064
  %237 = add nuw nsw i32 %236, 48
  %238 = getelementptr i8, ptr %151, i32 %237
  %239 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9, i32 0, i32 15
  store ptr %238, ptr %239, align 4
  %240 = getelementptr inbounds %struct.tpacket_block_desc, ptr %151, i32 0, i32 2, i32 0, i32 2
  store i32 %237, ptr %240, align 8
  %241 = getelementptr inbounds %struct.tpacket_block_desc, ptr %151, i32 0, i32 1
  store i32 48, ptr %241, align 4
  %242 = load i16, ptr %161, align 2
  %243 = zext i16 %242 to i32
  store i32 %243, ptr %151, align 8
  %244 = load ptr, ptr %239, align 4
  %245 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9, i32 0, i32 14
  store ptr %244, ptr %245, align 8
  %246 = load ptr, ptr %152, align 4
  %247 = load i32, ptr %154, align 4
  %248 = getelementptr i8, ptr %246, i32 %247
  %249 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9, i32 0, i32 9
  store ptr %248, ptr %249, align 8
  %250 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9, i32 0, i32 3
  store i8 0, ptr %250, align 4
  %251 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9, i32 0, i32 21
  %252 = load volatile i32, ptr @jiffies, align 64
  %253 = load i32, ptr %198, align 4
  %254 = add i32 %253, %252
  %255 = call i32 @mod_timer(ptr noundef %251, i32 noundef %254) #19
  %256 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9, i32 0, i32 5
  %257 = load i16, ptr %256, align 2
  store i16 %257, ptr %162, align 2
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  br label %279

258:                                              ; preds = %147
  %259 = getelementptr inbounds %struct.tpacket_req3, ptr %1, i32 0, i32 4
  %260 = load i32, ptr %259, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %355

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.tpacket_req3, ptr %1, i32 0, i32 5
  %264 = load i32, ptr %263, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %355

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.tpacket_req3, ptr %1, i32 0, i32 6
  %268 = load i32, ptr %267, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %279, label %355

270:                                              ; preds = %144
  br i1 %7, label %279, label %271

271:                                              ; preds = %270
  %272 = load i32, ptr %98, align 4
  %273 = tail call ptr @bitmap_alloc(i32 noundef %272, i32 noundef 11712) #19
  %274 = icmp eq ptr %273, null
  br i1 %274, label %355, label %279

275:                                              ; preds = %42
  %276 = getelementptr inbounds %struct.tpacket_req, ptr %1, i32 0, i32 3
  %277 = load i32, ptr %276, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %378, !prof !27

279:                                              ; preds = %275, %271, %270, %266, %193
  %280 = phi i32 [ 0, %275 ], [ %108, %193 ], [ %108, %271 ], [ %108, %270 ], [ %108, %266 ]
  %281 = phi ptr [ null, %275 ], [ null, %193 ], [ %273, %271 ], [ null, %270 ], [ null, %266 ]
  %282 = phi ptr [ null, %275 ], [ %113, %193 ], [ %113, %271 ], [ %113, %270 ], [ %113, %266 ]
  %283 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %283) #19
  %284 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 8
  %285 = load i32, ptr %284, align 4
  %286 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 12
  %287 = load i16, ptr %286, align 4
  %288 = icmp eq i32 %285, 0
  br i1 %288, label %290, label %289

289:                                              ; preds = %279
  store volatile i16 0, ptr %286, align 4
  call fastcc void @__unregister_prot_hook(ptr noundef %0, i1 noundef zeroext false)
  br label %290

290:                                              ; preds = %289, %279
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %291 = load i16, ptr %283, align 4
  %292 = add i16 %291, 1
  store i16 %292, ptr %283, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  call void @synchronize_net() #19
  %293 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 7
  call void @mutex_lock(ptr noundef %293) #19
  br i1 %14, label %294, label %298

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 15
  %296 = load volatile i32, ptr %295, align 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %335

298:                                              ; preds = %294, %290
  %299 = getelementptr inbounds %struct.sk_buff_head, ptr %13, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %299) #19
  %300 = load ptr, ptr %10, align 8
  store ptr %282, ptr %10, align 8
  %301 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 16
  %302 = load i32, ptr %301, align 4
  %303 = icmp ult i32 %302, 2
  br i1 %303, label %304, label %307

304:                                              ; preds = %298
  %305 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 9
  %306 = load ptr, ptr %305, align 8
  store ptr %281, ptr %305, align 8
  br label %307

307:                                              ; preds = %304, %298
  %308 = phi ptr [ %306, %304 ], [ %281, %298 ]
  %309 = getelementptr inbounds %struct.tpacket_req, ptr %1, i32 0, i32 3
  %310 = load i32, ptr %309, align 4
  %311 = add i32 %310, -1
  %312 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 4
  store i32 %311, ptr %312, align 8
  %313 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 1
  store i32 0, ptr %313, align 4
  %314 = getelementptr inbounds %struct.tpacket_req, ptr %1, i32 0, i32 2
  %315 = load i32, ptr %314, align 4
  %316 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 3
  store i32 %315, ptr %316, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %299) #19
  %317 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 5
  %318 = load i32, ptr %317, align 4
  store i32 %280, ptr %317, align 4
  %319 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 7
  %320 = load i32, ptr %319, align 4
  %321 = load i32, ptr %43, align 4
  store i32 %321, ptr %319, align 4
  store i32 %320, ptr %43, align 4
  %322 = load i32, ptr %1, align 4
  %323 = lshr i32 %322, 12
  %324 = getelementptr inbounds %struct.packet_ring_buffer, ptr %10, i32 0, i32 6
  store i32 %323, ptr %324, align 8
  %325 = load ptr, ptr %9, align 8
  %326 = icmp eq ptr %325, null
  %327 = select i1 %326, ptr @packet_rcv, ptr @tpacket_rcv
  %328 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 24, i32 4
  store ptr %327, ptr %328, align 8
  call void @skb_queue_purge(ptr noundef %13) #19
  %329 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 15
  %330 = load volatile i32, ptr %329, align 4
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %335, label %332

332:                                              ; preds = %307
  %333 = load volatile i32, ptr %329, align 4
  %334 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %333) #21
  br label %335

335:                                              ; preds = %332, %307, %294
  %336 = phi i32 [ %318, %332 ], [ %318, %307 ], [ %280, %294 ]
  %337 = phi i32 [ 0, %332 ], [ 0, %307 ], [ -16, %294 ]
  %338 = phi ptr [ %308, %332 ], [ %308, %307 ], [ %281, %294 ]
  %339 = phi ptr [ %300, %332 ], [ %300, %307 ], [ %282, %294 ]
  call void @mutex_unlock(ptr noundef %293) #19
  call void @_raw_spin_lock(ptr noundef %283) #19
  br i1 %288, label %341, label %340

340:                                              ; preds = %335
  store volatile i16 %287, ptr %286, align 4
  call fastcc void @__register_prot_hook(ptr noundef %0) #19
  br label %341

341:                                              ; preds = %340, %335
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %342 = load i16, ptr %283, align 4
  %343 = add i16 %342, 1
  store i16 %343, ptr %283, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %344 = icmp eq ptr %339, null
  br i1 %344, label %378, label %345

345:                                              ; preds = %341
  %346 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 16
  %347 = load i32, ptr %346, align 4
  %348 = icmp ult i32 %347, 2
  %349 = or i1 %7, %348
  br i1 %349, label %355, label %350

350:                                              ; preds = %345
  %351 = getelementptr inbounds %struct.sk_buff_head, ptr %13, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %351) #19
  %352 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 3, i32 9, i32 0, i32 4
  store i8 1, ptr %352, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %351) #19
  %353 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 3, i32 9, i32 0, i32 21
  %354 = call i32 @del_timer_sync(ptr noundef %353) #19
  br label %355

355:                                              ; preds = %350, %345, %271, %266, %262, %258
  %356 = phi i32 [ %336, %350 ], [ %336, %345 ], [ %108, %271 ], [ %108, %266 ], [ %108, %262 ], [ %108, %258 ]
  %357 = phi i32 [ %337, %350 ], [ %337, %345 ], [ -12, %271 ], [ -22, %266 ], [ -22, %262 ], [ -22, %258 ]
  %358 = phi ptr [ %338, %350 ], [ %338, %345 ], [ null, %271 ], [ null, %266 ], [ null, %262 ], [ null, %258 ]
  %359 = phi ptr [ %339, %350 ], [ %339, %345 ], [ %113, %271 ], [ %113, %266 ], [ %113, %262 ], [ %113, %258 ]
  call void @bitmap_free(ptr noundef %358) #19
  %360 = load i32, ptr %43, align 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %377, label %362

362:                                              ; preds = %374, %355
  %363 = phi i32 [ %375, %374 ], [ 0, %355 ]
  %364 = getelementptr %struct.pgv, ptr %359, i32 %363
  %365 = load ptr, ptr %364, align 4
  %366 = icmp eq ptr %365, null
  br i1 %366, label %374, label %367, !prof !23

367:                                              ; preds = %362
  %368 = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %365) #19
  %369 = load ptr, ptr %364, align 4
  br i1 %368, label %370, label %371

370:                                              ; preds = %367
  call void @vfree(ptr noundef %369) #19
  br label %373

371:                                              ; preds = %367
  %372 = ptrtoint ptr %369 to i32
  call void @free_pages(i32 noundef %372, i32 noundef %356) #19
  br label %373

373:                                              ; preds = %371, %370
  store ptr null, ptr %364, align 4
  br label %374

374:                                              ; preds = %373, %362
  %375 = add nuw i32 %363, 1
  %376 = icmp eq i32 %375, %360
  br i1 %376, label %377, label %362

377:                                              ; preds = %374, %355
  call void @kfree(ptr noundef nonnull %359) #19
  br label %378

378:                                              ; preds = %377, %341, %275, %143, %111, %101, %96, %92, %88, %81, %70, %57, %46, %40, %15
  %379 = phi i32 [ %357, %377 ], [ -22, %275 ], [ -16, %15 ], [ -16, %40 ], [ %337, %341 ], [ -22, %96 ], [ -22, %92 ], [ -22, %88 ], [ -22, %81 ], [ -22, %70 ], [ -22, %57 ], [ -16, %46 ], [ -12, %111 ], [ -12, %143 ], [ -12, %101 ]
  ret i32 %379
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpacket_rcv(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #2 {
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca %struct.timespec64, align 8
  %8 = alloca %struct.timespec64, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false), !annotation !32
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 7
  %16 = icmp eq i16 %15, 5
  br i1 %16, label %698, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.packet_type, ptr %2, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %21 = load ptr, ptr %20, align 16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %54, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %21, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %54, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 45
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %28, 2
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = getelementptr i8, ptr %32, i32 %35
  %37 = ptrtoint ptr %10 to i32
  %38 = ptrtoint ptr %36 to i32
  %39 = sub i32 %37, %38
  %40 = tail call ptr @skb_push(ptr noundef %0, i32 noundef %39) #19
  br label %54

41:                                               ; preds = %26
  %42 = icmp eq i16 %15, 4
  br i1 %42, label %43, label %54

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %47 = load i16, ptr %46, align 4
  %48 = zext i16 %47 to i32
  %49 = getelementptr i8, ptr %45, i32 %48
  %50 = ptrtoint ptr %49 to i32
  %51 = ptrtoint ptr %10 to i32
  %52 = sub i32 %50, %51
  %53 = tail call ptr @skb_pull(ptr noundef %0, i32 noundef %52) #19
  br label %54

54:                                               ; preds = %43, %41, %30, %23, %17
  %55 = load i32, ptr %11, align 8
  %56 = tail call fastcc i32 @run_filter(ptr noundef %0, ptr noundef %19, i32 noundef %55)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %687, label %58

58:                                               ; preds = %54
  %59 = tail call fastcc i32 @__packet_rcv_has_room(ptr noundef %19, ptr noundef %0)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #19, !srcloc !21
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %62, ptr %62, i32 1, ptr elementtype(i32) %62) #19, !srcloc !31
  br label %687

64:                                               ; preds = %58
  %65 = load i16, ptr %13, align 8
  %66 = lshr i16 %65, 5
  %67 = and i16 %66, 3
  %68 = icmp eq i16 %67, 3
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = and i16 %65, 7
  %71 = icmp eq i16 %70, 4
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  %73 = icmp eq i16 %67, 2
  br i1 %73, label %79, label %74

74:                                               ; preds = %72
  %75 = icmp ne i16 %67, 1
  %76 = icmp sgt i16 %65, -1
  %77 = select i1 %75, i1 %76, i1 false
  %78 = select i1 %77, i32 1, i32 129
  br label %79

79:                                               ; preds = %74, %72, %69, %64
  %80 = phi i32 [ 1, %69 ], [ 9, %64 ], [ 129, %72 ], [ %78, %74 ]
  %81 = tail call i32 @llvm.umin.i32(i32 %55, i32 %56)
  %82 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 45
  %83 = load i16, ptr %82, align 2
  %84 = icmp eq i16 %83, 2
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 17
  %87 = load i32, ptr %86, align 8
  %88 = add i32 %87, 31
  %89 = and i32 %88, -16
  %90 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 18
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %89, %91
  br label %121

93:                                               ; preds = %79
  %94 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %97 = load i16, ptr %96, align 4
  %98 = zext i16 %97 to i32
  %99 = getelementptr i8, ptr %95, i32 %98
  %100 = load ptr, ptr %9, align 4
  %101 = ptrtoint ptr %99 to i32
  %102 = ptrtoint ptr %100 to i32
  %103 = sub i32 %101, %102
  %104 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 17
  %105 = load i32, ptr %104, align 8
  %106 = tail call i32 @llvm.umax.i32(i32 %103, i32 16)
  %107 = add i32 %105, 15
  %108 = add i32 %107, %106
  %109 = and i32 %108, -16
  %110 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 18
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %109, %111
  %113 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 9
  %114 = load i8, ptr %113, align 8
  %115 = and i8 %114, 4
  %116 = icmp eq i8 %115, 0
  %117 = add i32 %112, 10
  %118 = select i1 %116, i32 %112, i32 %117
  %119 = xor i1 %116, true
  %120 = sub i32 %118, %103
  br label %121

121:                                              ; preds = %93, %85
  %122 = phi i32 [ %92, %85 ], [ %120, %93 ]
  %123 = phi i32 [ %92, %85 ], [ %118, %93 ]
  %124 = phi i1 [ false, %85 ], [ %119, %93 ]
  %125 = icmp ugt i32 %123, 65535
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %127) #19, !srcloc !21
  %128 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %127, ptr %127, i32 1, ptr elementtype(i32) %127) #19, !srcloc !31
  br label %687

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 16
  %131 = load i32, ptr %130, align 4
  %132 = icmp ult i32 %131, 2
  %133 = and i32 %122, 65535
  %134 = add i32 %133, %81
  br i1 %132, label %135, label %172

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 3
  %137 = load i32, ptr %136, align 4
  %138 = icmp ugt i32 %134, %137
  br i1 %138, label %139, label %186

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 5
  %141 = load i32, ptr %140, align 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %164, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 9
  %145 = load volatile i32, ptr %144, align 4
  %146 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 15
  %147 = load i32, ptr %146, align 4
  %148 = icmp slt i32 %145, %147
  br i1 %148, label %149, label %164

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %151 = load volatile i32, ptr %150, align 4
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #19
  br label %158

155:                                              ; preds = %149
  %156 = tail call fastcc ptr @skb_get(ptr noundef %0)
  %157 = load ptr, ptr %9, align 4
  br label %158

158:                                              ; preds = %155, %153
  %159 = phi ptr [ %10, %153 ], [ %157, %155 ]
  %160 = phi ptr [ %154, %153 ], [ %0, %155 ]
  %161 = icmp eq ptr %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.sk_buff, ptr %160, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(20) %163, i8 0, i32 20, i1 false)
  tail call fastcc void @skb_set_owner_r(ptr noundef nonnull %160, ptr noundef %19)
  br label %164

164:                                              ; preds = %162, %158, %143, %139
  %165 = phi ptr [ %159, %162 ], [ %159, %158 ], [ %10, %143 ], [ %10, %139 ]
  %166 = phi ptr [ %160, %162 ], [ null, %158 ], [ null, %143 ], [ null, %139 ]
  %167 = load i32, ptr %136, align 4
  %168 = sub i32 %167, %133
  %169 = icmp sgt i32 %168, -1
  %170 = tail call i32 @llvm.smax.i32(i32 %168, i32 0)
  %171 = select i1 %169, i1 %124, i1 false
  br label %186

172:                                              ; preds = %129
  %173 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 11
  %174 = load i32, ptr %173, align 8
  %175 = icmp ugt i32 %134, %174
  br i1 %175, label %176, label %186, !prof !23

176:                                              ; preds = %172
  %177 = sub i32 %174, %133
  %178 = load i1, ptr @tpacket_rcv.__already_done, align 1
  br i1 %178, label %181, label %179, !prof !27

179:                                              ; preds = %176
  store i1 true, ptr @tpacket_rcv.__already_done, align 1
  %180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %81, i32 noundef %177, i32 noundef %133) #21
  br label %181

181:                                              ; preds = %179, %176
  %182 = icmp slt i32 %177, 0
  br i1 %182, label %183, label %186, !prof !23

183:                                              ; preds = %181
  %184 = load i32, ptr %173, align 8
  %185 = and i32 %184, 65535
  br label %186

186:                                              ; preds = %183, %181, %172, %164, %135
  %187 = phi i32 [ %133, %164 ], [ %133, %181 ], [ %185, %183 ], [ %133, %172 ], [ %133, %135 ]
  %188 = phi ptr [ %165, %164 ], [ %10, %181 ], [ %10, %183 ], [ %10, %172 ], [ %10, %135 ]
  %189 = phi i32 [ %170, %164 ], [ %177, %181 ], [ 0, %183 ], [ %81, %172 ], [ %81, %135 ]
  %190 = phi i32 [ %122, %164 ], [ %122, %181 ], [ %184, %183 ], [ %122, %172 ], [ %122, %135 ]
  %191 = phi ptr [ %166, %164 ], [ null, %181 ], [ null, %183 ], [ null, %172 ], [ null, %135 ]
  %192 = phi i1 [ %171, %164 ], [ %124, %181 ], [ false, %183 ], [ %124, %172 ], [ %124, %135 ]
  %193 = trunc i32 %190 to i16
  %194 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 8
  %195 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock(ptr noundef %195) #19
  %196 = add i32 %187, %189
  %197 = load i32, ptr %130, align 4
  switch i32 %197, label %398 [
    i32 0, label %198
    i32 1, label %198
    i32 2, label %218
  ]

198:                                              ; preds = %186, %186
  %199 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3
  %200 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 1
  %201 = load i32, ptr %200, align 4
  %202 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 2
  %203 = load i32, ptr %202, align 8
  %204 = freeze i32 %201
  %205 = freeze i32 %203
  %206 = udiv i32 %204, %205
  %207 = mul i32 %206, %205
  %208 = sub i32 %204, %207
  %209 = load ptr, ptr %199, align 8
  %210 = getelementptr %struct.pgv, ptr %209, i32 %206
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 3
  %213 = load i32, ptr %212, align 4
  %214 = mul i32 %213, %208
  %215 = getelementptr i8, ptr %211, i32 %214
  %216 = tail call fastcc i32 @__packet_get_status(ptr noundef %19, ptr noundef %215) #19
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %399, label %701

218:                                              ; preds = %186
  %219 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9
  %220 = load ptr, ptr %219, align 8
  %221 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 5
  %222 = load i16, ptr %221, align 2
  %223 = zext i16 %222 to i32
  %224 = getelementptr %struct.pgv, ptr %220, i32 %223
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 3
  %227 = load i8, ptr %226, align 4
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %281, label %229

229:                                              ; preds = %218
  %230 = getelementptr inbounds %struct.tpacket_block_desc, ptr %225, i32 0, i32 2
  %231 = load i32, ptr %230, align 8
  %232 = and i32 %231, 1
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %701

234:                                              ; preds = %229
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false) #19, !annotation !32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !53
  %235 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 13
  %236 = load i64, ptr %235, align 8
  %237 = add i64 %236, 1
  store i64 %237, ptr %235, align 8
  %238 = getelementptr inbounds %struct.tpacket_block_desc, ptr %225, i32 0, i32 2, i32 0, i32 4
  store i64 %236, ptr %238, align 8
  %239 = getelementptr inbounds %struct.tpacket_block_desc, ptr %225, i32 0, i32 2, i32 0, i32 1
  store i32 0, ptr %239, align 4
  %240 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 6
  %241 = load i16, ptr %240, align 8
  %242 = zext i16 %241 to i32
  %243 = add nuw nsw i32 %242, 7
  %244 = and i32 %243, 131064
  %245 = add nuw nsw i32 %244, 48
  %246 = getelementptr inbounds %struct.tpacket_block_desc, ptr %225, i32 0, i32 2, i32 0, i32 3
  store i32 %245, ptr %246, align 4
  call void @ktime_get_real_ts64(ptr noundef nonnull %7) #19
  %247 = load i64, ptr %7, align 8
  %248 = trunc i64 %247 to i32
  %249 = getelementptr inbounds %struct.tpacket_block_desc, ptr %225, i32 0, i32 2, i32 0, i32 5
  store i32 %248, ptr %249, align 8
  %250 = getelementptr inbounds %struct.timespec64, ptr %7, i32 0, i32 1
  %251 = load i32, ptr %250, align 8
  %252 = getelementptr inbounds %struct.tpacket_block_desc, ptr %225, i32 0, i32 2, i32 0, i32 5, i32 1
  store i32 %251, ptr %252, align 4
  %253 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 8
  store ptr %225, ptr %253, align 4
  %254 = load i16, ptr %240, align 8
  %255 = zext i16 %254 to i32
  %256 = add nuw nsw i32 %255, 7
  %257 = and i32 %256, 131064
  %258 = add nuw nsw i32 %257, 48
  %259 = getelementptr i8, ptr %225, i32 %258
  %260 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 15
  store ptr %259, ptr %260, align 4
  %261 = getelementptr inbounds %struct.tpacket_block_desc, ptr %225, i32 0, i32 2, i32 0, i32 2
  store i32 %258, ptr %261, align 8
  %262 = getelementptr inbounds %struct.tpacket_block_desc, ptr %225, i32 0, i32 1
  store i32 48, ptr %262, align 4
  %263 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 19
  %264 = load i16, ptr %263, align 2
  %265 = zext i16 %264 to i32
  store i32 %265, ptr %225, align 8
  %266 = load ptr, ptr %260, align 4
  %267 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 14
  store ptr %266, ptr %267, align 8
  %268 = load ptr, ptr %253, align 4
  %269 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 10
  %270 = load i32, ptr %269, align 4
  %271 = getelementptr i8, ptr %268, i32 %270
  %272 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 9
  store ptr %271, ptr %272, align 8
  store i8 0, ptr %226, align 4
  %273 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 21
  %274 = load volatile i32, ptr @jiffies, align 64
  %275 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 20
  %276 = load i32, ptr %275, align 4
  %277 = add i32 %276, %274
  %278 = call i32 @mod_timer(ptr noundef %273, i32 noundef %277) #19
  %279 = load i16, ptr %221, align 2
  %280 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 7
  store i16 %279, ptr %280, align 2
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  br label %281

281:                                              ; preds = %234, %218
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !55
  %282 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 15
  %283 = load ptr, ptr %282, align 4
  %284 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 16
  store ptr %0, ptr %284, align 8
  %285 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 10
  %286 = load i32, ptr %285, align 4
  %287 = getelementptr i8, ptr %225, i32 %286
  %288 = add i32 %196, 7
  %289 = and i32 %288, -8
  %290 = getelementptr i8, ptr %283, i32 %289
  %291 = icmp ult ptr %290, %287
  br i1 %291, label %292, label %335

292:                                              ; preds = %281
  store i32 %289, ptr %283, align 4
  %293 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 14
  store ptr %283, ptr %293, align 8
  %294 = load ptr, ptr %282, align 4
  %295 = getelementptr i8, ptr %294, i32 %289
  store ptr %295, ptr %282, align 4
  %296 = getelementptr inbounds %struct.tpacket_block_desc, ptr %225, i32 0, i32 2, i32 0, i32 3
  %297 = load i32, ptr %296, align 4
  %298 = add i32 %297, %289
  store i32 %298, ptr %296, align 4
  %299 = getelementptr inbounds %struct.tpacket_block_desc, ptr %225, i32 0, i32 2, i32 0, i32 1
  %300 = load i32, ptr %299, align 4
  %301 = add i32 %300, 1
  store i32 %301, ptr %299, align 4
  %302 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 17
  call void @_raw_read_lock(ptr noundef %302) #19
  %303 = getelementptr inbounds %struct.tpacket3_hdr, ptr %283, i32 0, i32 8, i32 0, i32 3
  store i16 0, ptr %303, align 2
  %304 = load ptr, ptr %284, align 8
  %305 = getelementptr inbounds %struct.sk_buff, ptr %304, i32 0, i32 13, i32 0, i32 3
  %306 = load i16, ptr %305, align 2
  %307 = and i16 %306, 1
  %308 = icmp eq i16 %307, 0
  br i1 %308, label %318, label %309

309:                                              ; preds = %292
  %310 = getelementptr inbounds %struct.sk_buff, ptr %304, i32 0, i32 13, i32 0, i32 9
  %311 = load i16, ptr %310, align 2
  %312 = zext i16 %311 to i32
  %313 = getelementptr inbounds %struct.tpacket3_hdr, ptr %283, i32 0, i32 8, i32 0, i32 1
  store i32 %312, ptr %313, align 4
  %314 = load ptr, ptr %284, align 8
  %315 = getelementptr inbounds %struct.sk_buff, ptr %314, i32 0, i32 13, i32 0, i32 8
  %316 = load i16, ptr %315, align 4
  %317 = call i16 @llvm.bswap.i16(i16 %316) #19
  br label %320

318:                                              ; preds = %292
  %319 = getelementptr inbounds %struct.tpacket3_hdr, ptr %283, i32 0, i32 8, i32 0, i32 1
  store i32 0, ptr %319, align 4
  br label %320

320:                                              ; preds = %318, %309
  %321 = phi i16 [ 0, %318 ], [ %317, %309 ]
  %322 = phi i32 [ 0, %318 ], [ 80, %309 ]
  %323 = getelementptr inbounds %struct.tpacket3_hdr, ptr %283, i32 0, i32 8, i32 0, i32 2
  store i16 %321, ptr %323, align 4
  %324 = getelementptr inbounds %struct.tpacket3_hdr, ptr %283, i32 0, i32 5
  store i32 %322, ptr %324, align 4
  %325 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 1
  %326 = load i32, ptr %325, align 4
  %327 = and i32 %326, 1
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %394, label %329

329:                                              ; preds = %320
  %330 = load ptr, ptr %284, align 8
  %331 = getelementptr inbounds %struct.sk_buff, ptr %330, i32 0, i32 13
  %332 = load i16, ptr %331, align 8
  %333 = and i16 %332, 768
  %334 = icmp eq i16 %333, 0
  br i1 %334, label %386, label %389

335:                                              ; preds = %281
  call fastcc void @prb_retire_current_block(ptr noundef %219, ptr noundef %19, i32 noundef 0) #19
  %336 = call fastcc ptr @prb_dispatch_next_block(ptr noundef %219, ptr noundef %19) #19
  %337 = icmp eq ptr %336, null
  br i1 %337, label %701, label %338

338:                                              ; preds = %335
  %339 = load ptr, ptr %219, align 8
  %340 = load i16, ptr %221, align 2
  %341 = zext i16 %340 to i32
  %342 = getelementptr %struct.pgv, ptr %339, i32 %341
  %343 = load ptr, ptr %342, align 4
  store i32 %289, ptr %336, align 4
  %344 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 14
  store ptr %336, ptr %344, align 8
  %345 = load ptr, ptr %282, align 4
  %346 = getelementptr i8, ptr %345, i32 %289
  store ptr %346, ptr %282, align 4
  %347 = getelementptr inbounds %struct.tpacket_block_desc, ptr %343, i32 0, i32 2, i32 0, i32 3
  %348 = load i32, ptr %347, align 4
  %349 = add i32 %348, %289
  store i32 %349, ptr %347, align 4
  %350 = getelementptr inbounds %struct.tpacket_block_desc, ptr %343, i32 0, i32 2, i32 0, i32 1
  %351 = load i32, ptr %350, align 4
  %352 = add i32 %351, 1
  store i32 %352, ptr %350, align 4
  %353 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 17
  call void @_raw_read_lock(ptr noundef %353) #19
  %354 = getelementptr inbounds %struct.tpacket3_hdr, ptr %336, i32 0, i32 8, i32 0, i32 3
  store i16 0, ptr %354, align 2
  %355 = load ptr, ptr %284, align 8
  %356 = getelementptr inbounds %struct.sk_buff, ptr %355, i32 0, i32 13, i32 0, i32 3
  %357 = load i16, ptr %356, align 2
  %358 = and i16 %357, 1
  %359 = icmp eq i16 %358, 0
  br i1 %359, label %369, label %360

360:                                              ; preds = %338
  %361 = getelementptr inbounds %struct.sk_buff, ptr %355, i32 0, i32 13, i32 0, i32 9
  %362 = load i16, ptr %361, align 2
  %363 = zext i16 %362 to i32
  %364 = getelementptr inbounds %struct.tpacket3_hdr, ptr %336, i32 0, i32 8, i32 0, i32 1
  store i32 %363, ptr %364, align 4
  %365 = load ptr, ptr %284, align 8
  %366 = getelementptr inbounds %struct.sk_buff, ptr %365, i32 0, i32 13, i32 0, i32 8
  %367 = load i16, ptr %366, align 4
  %368 = call i16 @llvm.bswap.i16(i16 %367) #19
  br label %371

369:                                              ; preds = %338
  %370 = getelementptr inbounds %struct.tpacket3_hdr, ptr %336, i32 0, i32 8, i32 0, i32 1
  store i32 0, ptr %370, align 4
  br label %371

371:                                              ; preds = %369, %360
  %372 = phi i16 [ 0, %369 ], [ %368, %360 ]
  %373 = phi i32 [ 0, %369 ], [ 80, %360 ]
  %374 = getelementptr inbounds %struct.tpacket3_hdr, ptr %336, i32 0, i32 8, i32 0, i32 2
  store i16 %372, ptr %374, align 4
  %375 = getelementptr inbounds %struct.tpacket3_hdr, ptr %336, i32 0, i32 5
  store i32 %373, ptr %375, align 4
  %376 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 1
  %377 = load i32, ptr %376, align 4
  %378 = and i32 %377, 1
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %394, label %380

380:                                              ; preds = %371
  %381 = load ptr, ptr %284, align 8
  %382 = getelementptr inbounds %struct.sk_buff, ptr %381, i32 0, i32 13
  %383 = load i16, ptr %382, align 8
  %384 = and i16 %383, 768
  %385 = icmp eq i16 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %380, %329
  %387 = phi ptr [ %330, %329 ], [ %381, %380 ]
  %388 = phi ptr [ %283, %329 ], [ %336, %380 ]
  call void @__skb_get_hash(ptr noundef %387) #19
  br label %389

389:                                              ; preds = %386, %380, %329
  %390 = phi ptr [ %330, %329 ], [ %381, %380 ], [ %387, %386 ]
  %391 = phi ptr [ %283, %329 ], [ %336, %380 ], [ %388, %386 ]
  %392 = getelementptr inbounds %struct.sk_buff, ptr %390, i32 0, i32 13, i32 0, i32 7
  %393 = load i32, ptr %392, align 8
  br label %394

394:                                              ; preds = %389, %371, %320
  %395 = phi ptr [ %283, %320 ], [ %336, %371 ], [ %391, %389 ]
  %396 = phi i32 [ 0, %320 ], [ 0, %371 ], [ %393, %389 ]
  %397 = getelementptr inbounds %struct.tpacket3_hdr, ptr %395, i32 0, i32 8
  store i32 %396, ptr %397, align 4
  br label %399

398:                                              ; preds = %186
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1125, i32 noundef 9, ptr noundef nonnull @.str.11) #19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/packet/af_packet.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1126, 0\0A.popsection", ""() #19, !srcloc !56
  unreachable

399:                                              ; preds = %394, %198
  %400 = phi ptr [ %395, %394 ], [ %215, %198 ]
  %401 = icmp eq ptr %400, null
  br i1 %401, label %701, label %402

402:                                              ; preds = %399
  %403 = load i32, ptr %130, align 4
  %404 = icmp ult i32 %403, 2
  br i1 %404, label %405, label %419

405:                                              ; preds = %402
  %406 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 1
  %407 = load i32, ptr %406, align 4
  %408 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9
  %409 = load ptr, ptr %408, align 8
  %410 = lshr i32 %407, 5
  %411 = getelementptr i32, ptr %409, i32 %410
  %412 = load volatile i32, ptr %411, align 4
  %413 = and i32 %407, 31
  %414 = shl nuw i32 1, %413
  %415 = and i32 %412, %414
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %701

417:                                              ; preds = %405
  %418 = or i32 %412, %414
  store i32 %418, ptr %411, align 4
  br label %419

419:                                              ; preds = %417, %402
  %420 = phi i32 [ %407, %417 ], [ 0, %402 ]
  br i1 %192, label %421, label %484

421:                                              ; preds = %419
  %422 = getelementptr i8, ptr %400, i32 %187
  %423 = getelementptr i8, ptr %422, i32 -10
  call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(10) %423, i8 0, i32 10, i1 false) #19
  %424 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %425 = load ptr, ptr %424, align 4
  %426 = getelementptr inbounds %struct.skb_shared_info, ptr %425, i32 0, i32 4
  %427 = load i16, ptr %426, align 4
  %428 = icmp eq i16 %427, 0
  br i1 %428, label %453, label %429

429:                                              ; preds = %421
  %430 = load i32, ptr %11, align 8
  %431 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %432 = load i32, ptr %431, align 4
  %433 = sub i32 %430, %432
  %434 = trunc i32 %433 to i16
  %435 = getelementptr inbounds %struct.virtio_net_hdr, ptr %423, i32 0, i32 2
  store i16 %434, ptr %435, align 2
  %436 = load i16, ptr %426, align 4
  %437 = getelementptr inbounds %struct.virtio_net_hdr, ptr %423, i32 0, i32 3
  store i16 %436, ptr %437, align 2
  %438 = getelementptr inbounds %struct.skb_shared_info, ptr %425, i32 0, i32 8
  %439 = load i32, ptr %438, align 8
  %440 = and i32 %439, 1
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %442, label %445

442:                                              ; preds = %429
  %443 = and i32 %439, 16
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %474, label %445

445:                                              ; preds = %442, %429
  %446 = phi i8 [ 1, %429 ], [ 4, %442 ]
  %447 = phi i8 [ -127, %429 ], [ -124, %442 ]
  %448 = getelementptr inbounds %struct.virtio_net_hdr, ptr %423, i32 0, i32 1
  store i8 %446, ptr %448, align 1
  %449 = load i32, ptr %438, align 8
  %450 = and i32 %449, 4
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %453, label %452

452:                                              ; preds = %445
  store i8 %447, ptr %448, align 1
  br label %453

453:                                              ; preds = %452, %445, %421
  %454 = load i16, ptr %13, align 8
  %455 = lshr i16 %454, 5
  %456 = trunc i16 %455 to i2
  switch i2 %456, label %484 [
    i2 -1, label %457
    i2 1, label %473
  ]

457:                                              ; preds = %453
  store i8 1, ptr %423, align 2
  %458 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %459 = load i16, ptr %458, align 4
  %460 = zext i16 %459 to i32
  %461 = load ptr, ptr %9, align 4
  %462 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %463 = load ptr, ptr %462, align 8
  %464 = ptrtoint ptr %461 to i32
  %465 = ptrtoint ptr %463 to i32
  %466 = sub i32 %460, %464
  %467 = add i32 %466, %465
  %468 = trunc i32 %467 to i16
  %469 = getelementptr inbounds %struct.virtio_net_hdr, ptr %423, i32 0, i32 4
  store i16 %468, ptr %469, align 2
  %470 = getelementptr inbounds %struct.anon.148, ptr %458, i32 0, i32 1
  %471 = load i16, ptr %470, align 2
  %472 = getelementptr inbounds %struct.virtio_net_hdr, ptr %423, i32 0, i32 5
  store i16 %471, ptr %472, align 2
  br label %484

473:                                              ; preds = %453
  store i8 2, ptr %423, align 2
  br label %484

474:                                              ; preds = %442
  %475 = load i32, ptr %130, align 4
  %476 = icmp eq i32 %475, 2
  br i1 %476, label %477, label %701

477:                                              ; preds = %474
  %478 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 17
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !57
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %478) #19, !srcloc !21
  %479 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %478) #19, !srcloc !58
  %480 = extractvalue { i32, i32 } %479, 0
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %482, label %483

482:                                              ; preds = %477
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  br label %483

483:                                              ; preds = %482, %477
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !59
  br label %701

484:                                              ; preds = %473, %457, %453, %419
  %485 = load i32, ptr %130, align 4
  %486 = icmp ult i32 %485, 2
  br i1 %486, label %487, label %494

487:                                              ; preds = %484
  %488 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3
  call fastcc void @packet_increment_rx_head(ptr noundef %19, ptr noundef %488)
  %489 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 26
  %490 = load volatile i32, ptr %489, align 4
  %491 = icmp eq i32 %490, 0
  %492 = or i32 %80, 4
  %493 = select i1 %491, i32 %80, i32 %492
  br label %494

494:                                              ; preds = %487, %484
  %495 = phi i32 [ %80, %484 ], [ %493, %487 ]
  %496 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 2
  %497 = load i32, ptr %496, align 4
  %498 = add i32 %497, 1
  store i32 %498, ptr %496, align 4
  %499 = icmp eq ptr %191, null
  br i1 %499, label %508, label %500

500:                                              ; preds = %494
  %501 = or i32 %495, 2
  %502 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 8, i32 0, i32 0, i32 1
  %503 = load ptr, ptr %502, align 4
  store volatile ptr %194, ptr %191, align 8
  %504 = getelementptr inbounds %struct.anon.76, ptr %191, i32 0, i32 1
  store volatile ptr %503, ptr %504, align 4
  store volatile ptr %191, ptr %502, align 4
  store volatile ptr %191, ptr %503, align 4
  %505 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 8, i32 1
  %506 = load i32, ptr %505, align 4
  %507 = add i32 %506, 1
  store volatile i32 %507, ptr %505, align 4
  br label %508

508:                                              ; preds = %500, %494
  %509 = phi i32 [ %501, %500 ], [ %495, %494 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %510 = load i16, ptr %195, align 4
  %511 = add i16 %510, 1
  store i16 %511, ptr %195, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %512 = getelementptr i8, ptr %400, i32 %187
  %513 = call i32 @skb_copy_bits(ptr noundef %0, i32 noundef 0, ptr noundef %512, i32 noundef %189) #19
  %514 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 19
  %515 = load i32, ptr %514, align 16
  %516 = and i32 %515, 64
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %525, label %518

518:                                              ; preds = %508
  %519 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %520 = load ptr, ptr %519, align 4
  %521 = getelementptr inbounds %struct.skb_shared_info, ptr %520, i32 0, i32 7
  %522 = load i64, ptr %521, align 8
  %523 = icmp eq i64 %522, 0
  br i1 %523, label %525, label %524

524:                                              ; preds = %518
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %6, i64 noundef %522) #19
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  br label %531

525:                                              ; preds = %518, %508
  %526 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 2
  %527 = load i64, ptr %526, align 8
  %528 = icmp eq i64 %527, 0
  br i1 %528, label %530, label %529

529:                                              ; preds = %525
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %5, i64 noundef %527) #19
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  br label %531

530:                                              ; preds = %525
  call void @ktime_get_real_ts64(ptr noundef nonnull %8) #19
  br label %531

531:                                              ; preds = %530, %529, %524
  %532 = phi i32 [ 0, %530 ], [ 536870912, %529 ], [ -2147483648, %524 ]
  %533 = or i32 %532, %509
  %534 = load i32, ptr %130, align 4
  switch i32 %534, label %598 [
    i32 0, label %535
    i32 1, label %549
    i32 2, label %581
  ]

535:                                              ; preds = %531
  %536 = load i32, ptr %11, align 8
  %537 = getelementptr inbounds %struct.tpacket_hdr, ptr %400, i32 0, i32 1
  store i32 %536, ptr %537, align 4
  %538 = getelementptr inbounds %struct.tpacket_hdr, ptr %400, i32 0, i32 2
  store i32 %189, ptr %538, align 4
  %539 = getelementptr inbounds %struct.tpacket_hdr, ptr %400, i32 0, i32 3
  store i16 %193, ptr %539, align 4
  %540 = trunc i32 %123 to i16
  %541 = getelementptr inbounds %struct.tpacket_hdr, ptr %400, i32 0, i32 4
  store i16 %540, ptr %541, align 2
  %542 = load i64, ptr %8, align 8
  %543 = trunc i64 %542 to i32
  %544 = getelementptr inbounds %struct.tpacket_hdr, ptr %400, i32 0, i32 5
  store i32 %543, ptr %544, align 4
  %545 = getelementptr inbounds %struct.timespec64, ptr %8, i32 0, i32 1
  %546 = load i32, ptr %545, align 8
  %547 = sdiv i32 %546, 1000
  %548 = getelementptr inbounds %struct.tpacket_hdr, ptr %400, i32 0, i32 6
  store i32 %547, ptr %548, align 4
  br label %599

549:                                              ; preds = %531
  %550 = load i32, ptr %11, align 8
  %551 = getelementptr inbounds %struct.tpacket2_hdr, ptr %400, i32 0, i32 1
  store i32 %550, ptr %551, align 4
  %552 = getelementptr inbounds %struct.tpacket2_hdr, ptr %400, i32 0, i32 2
  store i32 %189, ptr %552, align 4
  %553 = getelementptr inbounds %struct.tpacket2_hdr, ptr %400, i32 0, i32 3
  store i16 %193, ptr %553, align 4
  %554 = trunc i32 %123 to i16
  %555 = getelementptr inbounds %struct.tpacket2_hdr, ptr %400, i32 0, i32 4
  store i16 %554, ptr %555, align 2
  %556 = load i64, ptr %8, align 8
  %557 = trunc i64 %556 to i32
  %558 = getelementptr inbounds %struct.tpacket2_hdr, ptr %400, i32 0, i32 5
  store i32 %557, ptr %558, align 4
  %559 = getelementptr inbounds %struct.timespec64, ptr %8, i32 0, i32 1
  %560 = load i32, ptr %559, align 8
  %561 = getelementptr inbounds %struct.tpacket2_hdr, ptr %400, i32 0, i32 6
  store i32 %560, ptr %561, align 4
  %562 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %563 = load i16, ptr %562, align 2
  %564 = and i16 %563, 1
  %565 = icmp eq i16 %564, 0
  br i1 %565, label %574, label %566

566:                                              ; preds = %549
  %567 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 9
  %568 = load i16, ptr %567, align 2
  %569 = getelementptr inbounds %struct.tpacket2_hdr, ptr %400, i32 0, i32 7
  store i16 %568, ptr %569, align 4
  %570 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 8
  %571 = load i16, ptr %570, align 4
  %572 = call i16 @llvm.bswap.i16(i16 %571)
  %573 = or i32 %533, 80
  br label %576

574:                                              ; preds = %549
  %575 = getelementptr inbounds %struct.tpacket2_hdr, ptr %400, i32 0, i32 7
  store i16 0, ptr %575, align 4
  br label %576

576:                                              ; preds = %574, %566
  %577 = phi i16 [ 0, %574 ], [ %572, %566 ]
  %578 = phi i32 [ %533, %574 ], [ %573, %566 ]
  %579 = getelementptr inbounds %struct.tpacket2_hdr, ptr %400, i32 0, i32 8
  store i16 %577, ptr %579, align 2
  %580 = getelementptr inbounds %struct.tpacket2_hdr, ptr %400, i32 0, i32 9
  store i32 0, ptr %580, align 4
  br label %599

581:                                              ; preds = %531
  %582 = getelementptr inbounds %struct.tpacket3_hdr, ptr %400, i32 0, i32 5
  %583 = load i32, ptr %582, align 4
  %584 = or i32 %583, %533
  store i32 %584, ptr %582, align 4
  %585 = load i32, ptr %11, align 8
  %586 = getelementptr inbounds %struct.tpacket3_hdr, ptr %400, i32 0, i32 4
  store i32 %585, ptr %586, align 4
  %587 = getelementptr inbounds %struct.tpacket3_hdr, ptr %400, i32 0, i32 3
  store i32 %189, ptr %587, align 4
  %588 = getelementptr inbounds %struct.tpacket3_hdr, ptr %400, i32 0, i32 6
  store i16 %193, ptr %588, align 4
  %589 = trunc i32 %123 to i16
  %590 = getelementptr inbounds %struct.tpacket3_hdr, ptr %400, i32 0, i32 7
  store i16 %589, ptr %590, align 2
  %591 = load i64, ptr %8, align 8
  %592 = trunc i64 %591 to i32
  %593 = getelementptr inbounds %struct.tpacket3_hdr, ptr %400, i32 0, i32 1
  store i32 %592, ptr %593, align 4
  %594 = getelementptr inbounds %struct.timespec64, ptr %8, i32 0, i32 1
  %595 = load i32, ptr %594, align 8
  %596 = getelementptr inbounds %struct.tpacket3_hdr, ptr %400, i32 0, i32 2
  store i32 %595, ptr %596, align 4
  %597 = getelementptr inbounds %struct.tpacket3_hdr, ptr %400, i32 0, i32 9
  store i64 0, ptr %597, align 4
  br label %599

598:                                              ; preds = %531
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/packet/af_packet.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2442, 0\0A.popsection", ""() #19, !srcloc !60
  unreachable

599:                                              ; preds = %581, %576, %535
  %600 = phi i32 [ %533, %581 ], [ %578, %576 ], [ %533, %535 ]
  %601 = phi i32 [ 48, %581 ], [ 32, %576 ], [ 32, %535 ]
  %602 = getelementptr i8, ptr %400, i32 %601
  %603 = getelementptr inbounds %struct.sockaddr_ll, ptr %602, i32 0, i32 6
  %604 = getelementptr inbounds %struct.anon.76, ptr %0, i32 0, i32 2
  %605 = load ptr, ptr %604, align 8
  %606 = getelementptr inbounds %struct.net_device, ptr %605, i32 0, i32 44
  %607 = load ptr, ptr %606, align 16
  %608 = icmp eq ptr %607, null
  br i1 %608, label %616, label %609

609:                                              ; preds = %599
  %610 = getelementptr inbounds %struct.header_ops, ptr %607, i32 0, i32 1
  %611 = load ptr, ptr %610, align 4
  %612 = icmp eq ptr %611, null
  br i1 %612, label %616, label %613

613:                                              ; preds = %609
  %614 = call i32 %611(ptr noundef %0, ptr noundef %603) #19
  %615 = trunc i32 %614 to i8
  br label %616

616:                                              ; preds = %613, %609, %599
  %617 = phi i8 [ %615, %613 ], [ 0, %609 ], [ 0, %599 ]
  %618 = getelementptr inbounds %struct.sockaddr_ll, ptr %602, i32 0, i32 5
  store i8 %617, ptr %618, align 1
  store i16 17, ptr %602, align 4
  %619 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %620 = load i16, ptr %619, align 16
  %621 = getelementptr inbounds %struct.sockaddr_ll, ptr %602, i32 0, i32 3
  store i16 %620, ptr %621, align 4
  %622 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %623 = load i16, ptr %622, align 8
  %624 = getelementptr inbounds %struct.sockaddr_ll, ptr %602, i32 0, i32 1
  store i16 %623, ptr %624, align 2
  %625 = load i16, ptr %13, align 8
  %626 = trunc i16 %625 to i8
  %627 = and i8 %626, 7
  %628 = getelementptr inbounds %struct.sockaddr_ll, ptr %602, i32 0, i32 4
  store i8 %627, ptr %628, align 2
  %629 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 9
  %630 = load i8, ptr %629, align 8
  %631 = and i8 %630, 2
  %632 = icmp eq i8 %631, 0
  %633 = select i1 %632, ptr %1, ptr %3, !prof !27
  %634 = getelementptr inbounds %struct.net_device, ptr %633, i32 0, i32 17
  %635 = load i32, ptr %634, align 4
  %636 = getelementptr inbounds %struct.sockaddr_ll, ptr %602, i32 0, i32 2
  store i32 %635, ptr %636, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !61
  %637 = load i32, ptr %130, align 4
  %638 = icmp ult i32 %637, 2
  br i1 %638, label %639, label %661

639:                                              ; preds = %616
  %640 = ptrtoint ptr %400 to i32
  %641 = add i32 %196, 4095
  %642 = add i32 %641, %640
  %643 = and i32 %642, -4096
  %644 = inttoptr i32 %643 to ptr
  %645 = icmp ult ptr %400, %644
  br i1 %645, label %646, label %661

646:                                              ; preds = %657, %639
  %647 = phi ptr [ %659, %657 ], [ %400, %639 ]
  %648 = call zeroext i1 @is_vmalloc_addr(ptr noundef %647) #19
  br i1 %648, label %649, label %651

649:                                              ; preds = %646
  %650 = call ptr @vmalloc_to_page(ptr noundef %647) #19
  br label %657

651:                                              ; preds = %646
  %652 = load ptr, ptr @mem_map, align 4
  %653 = ptrtoint ptr %647 to i32
  %654 = add i32 %653, 1073741824
  %655 = lshr i32 %654, 12
  %656 = getelementptr %struct.page, ptr %652, i32 %655
  br label %657

657:                                              ; preds = %651, %649
  %658 = phi ptr [ %650, %649 ], [ %656, %651 ]
  call void @flush_dcache_page(ptr noundef %658) #19
  %659 = getelementptr i8, ptr %647, i32 4096
  %660 = icmp ult ptr %659, %644
  br i1 %660, label %646, label %661

661:                                              ; preds = %657, %639, %616
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !62
  %662 = load i32, ptr %130, align 4
  %663 = icmp ult i32 %662, 2
  br i1 %663, label %664, label %678

664:                                              ; preds = %661
  call void @_raw_spin_lock(ptr noundef %195) #19
  call fastcc void @__packet_set_status(ptr noundef %19, ptr noundef nonnull %400, i32 noundef %600)
  %665 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9
  %666 = load ptr, ptr %665, align 8
  %667 = and i32 %420, 31
  %668 = shl nuw i32 1, %667
  %669 = lshr i32 %420, 5
  %670 = getelementptr i32, ptr %666, i32 %669
  %671 = xor i32 %668, -1
  %672 = load i32, ptr %670, align 4
  %673 = and i32 %672, %671
  store i32 %673, ptr %670, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %674 = load i16, ptr %195, align 4
  %675 = add i16 %674, 1
  store i16 %675, ptr %195, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %676 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 76
  %677 = load ptr, ptr %676, align 8
  call void %677(ptr noundef %19) #19
  br label %687

678:                                              ; preds = %661
  %679 = icmp eq i32 %662, 2
  br i1 %679, label %680, label %687

680:                                              ; preds = %678
  %681 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 3, i32 9, i32 0, i32 17
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !57
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %681) #19, !srcloc !21
  %682 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %681) #19, !srcloc !58
  %683 = extractvalue { i32, i32 } %682, 0
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %685, label %686

685:                                              ; preds = %680
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  br label %686

686:                                              ; preds = %685, %680
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !59
  br label %687

687:                                              ; preds = %701, %686, %678, %664, %126, %61, %54
  %688 = phi ptr [ %10, %61 ], [ %10, %126 ], [ %188, %701 ], [ %188, %664 ], [ %188, %686 ], [ %188, %678 ], [ %10, %54 ]
  %689 = phi i1 [ false, %61 ], [ false, %126 ], [ true, %701 ], [ false, %664 ], [ false, %686 ], [ false, %678 ], [ false, %54 ]
  %690 = load ptr, ptr %9, align 4
  %691 = icmp eq ptr %688, %690
  br i1 %691, label %697, label %692

692:                                              ; preds = %687
  %693 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %694 = load volatile i32, ptr %693, align 4
  %695 = icmp eq i32 %694, 1
  br i1 %695, label %697, label %696

696:                                              ; preds = %692
  store ptr %688, ptr %9, align 4
  store i32 %12, ptr %11, align 8
  br label %697

697:                                              ; preds = %696, %692, %687
  br i1 %689, label %699, label %698

698:                                              ; preds = %697, %4
  call void @consume_skb(ptr noundef %0) #19
  br label %700

699:                                              ; preds = %697
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #19
  br label %700

700:                                              ; preds = %699, %698
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  ret i32 0

701:                                              ; preds = %483, %474, %405, %399, %335, %229, %198
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %702 = load i16, ptr %195, align 4
  %703 = add i16 %702, 1
  store i16 %703, ptr %195, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %704 = getelementptr inbounds %struct.packet_sock, ptr %19, i32 0, i32 26
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %704) #19, !srcloc !21
  %705 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %704, ptr %704, i32 1, ptr elementtype(i32) %704) #19, !srcloc !31
  %706 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 76
  %707 = load ptr, ptr %706, align 8
  call void %707(ptr noundef %19) #19
  call void @kfree_skb_reason(ptr noundef %191, i32 noundef 0) #19
  br label %687
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_pg_vec(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %17, %3
  %6 = phi i32 [ %18, %17 ], [ 0, %3 ]
  %7 = getelementptr %struct.pgv, ptr %0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10, !prof !23

10:                                               ; preds = %5
  %11 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %8) #19
  %12 = load ptr, ptr %7, align 4
  br i1 %11, label %13, label %14

13:                                               ; preds = %10
  tail call void @vfree(ptr noundef %12) #19
  br label %16

14:                                               ; preds = %10
  %15 = ptrtoint ptr %12 to i32
  tail call void @free_pages(i32 noundef %15, i32 noundef %1) #19
  br label %16

16:                                               ; preds = %14, %13
  store ptr null, ptr %7, align 4
  br label %17

17:                                               ; preds = %16, %5
  %18 = add nuw i32 %6, 1
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %20, label %5

20:                                               ; preds = %17, %3
  tail call void @kfree(ptr noundef %0) #19
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @prb_retire_rx_blk_timer_expired(ptr noundef %0) #2 {
  %2 = alloca %struct.timespec64, align 8
  %3 = getelementptr i8, ptr %0, i32 -648
  %4 = getelementptr i8, ptr %0, i32 -72
  %5 = getelementptr i8, ptr %0, i32 -468
  tail call void @_raw_spin_lock(ptr noundef %5) #19
  %6 = getelementptr i8, ptr %0, i32 -60
  %7 = load i8, ptr %6, align 4
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr i8, ptr %0, i32 -58
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr %struct.pgv, ptr %8, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 -59
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %93, !prof !27

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.tpacket_block_desc, ptr %13, i32 0, i32 2, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %0, i32 -12
  tail call void @_raw_write_lock(ptr noundef %22) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !63
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %22, i32 0) #19, !srcloc !64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !65
  %23 = load i16, ptr %9, align 2
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i16 [ %23, %21 ], [ %10, %17 ]
  %26 = getelementptr i8, ptr %0, i32 -54
  %27 = load i16, ptr %26, align 2
  %28 = icmp eq i16 %27, %25
  br i1 %28, label %29, label %86

29:                                               ; preds = %24
  %30 = icmp eq i8 %7, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %29
  %32 = load i32, ptr %18, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %86, label %34

34:                                               ; preds = %31
  tail call fastcc void @prb_retire_current_block(ptr noundef %4, ptr noundef %3, i32 noundef 32)
  %35 = tail call fastcc ptr @prb_dispatch_next_block(ptr noundef %4, ptr noundef %3)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %86, label %93

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.tpacket_block_desc, ptr %13, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %86

42:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false) #19, !annotation !32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !53
  %43 = getelementptr i8, ptr %0, i32 -32
  %44 = load i64, ptr %43, align 8
  %45 = add i64 %44, 1
  store i64 %45, ptr %43, align 8
  %46 = getelementptr inbounds %struct.tpacket_block_desc, ptr %13, i32 0, i32 2, i32 0, i32 4
  store i64 %44, ptr %46, align 8
  store i32 0, ptr %18, align 4
  %47 = getelementptr i8, ptr %0, i32 -56
  %48 = load i16, ptr %47, align 8
  %49 = zext i16 %48 to i32
  %50 = add nuw nsw i32 %49, 7
  %51 = and i32 %50, 131064
  %52 = add nuw nsw i32 %51, 48
  %53 = getelementptr inbounds %struct.tpacket_block_desc, ptr %13, i32 0, i32 2, i32 0, i32 3
  store i32 %52, ptr %53, align 4
  call void @ktime_get_real_ts64(ptr noundef nonnull %2) #19
  %54 = load i64, ptr %2, align 8
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.tpacket_block_desc, ptr %13, i32 0, i32 2, i32 0, i32 5
  store i32 %55, ptr %56, align 8
  %57 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr inbounds %struct.tpacket_block_desc, ptr %13, i32 0, i32 2, i32 0, i32 5, i32 1
  store i32 %58, ptr %59, align 4
  %60 = getelementptr i8, ptr %0, i32 -52
  store ptr %13, ptr %60, align 4
  %61 = load i16, ptr %47, align 8
  %62 = zext i16 %61 to i32
  %63 = add nuw nsw i32 %62, 7
  %64 = and i32 %63, 131064
  %65 = add nuw nsw i32 %64, 48
  %66 = getelementptr i8, ptr %13, i32 %65
  %67 = getelementptr i8, ptr %0, i32 -20
  store ptr %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.tpacket_block_desc, ptr %13, i32 0, i32 2, i32 0, i32 2
  store i32 %65, ptr %68, align 8
  %69 = getelementptr inbounds %struct.tpacket_block_desc, ptr %13, i32 0, i32 1
  store i32 48, ptr %69, align 4
  %70 = getelementptr i8, ptr %0, i32 -6
  %71 = load i16, ptr %70, align 2
  %72 = zext i16 %71 to i32
  store i32 %72, ptr %13, align 8
  %73 = load ptr, ptr %67, align 4
  %74 = getelementptr i8, ptr %0, i32 -24
  store ptr %73, ptr %74, align 8
  %75 = load ptr, ptr %60, align 4
  %76 = getelementptr i8, ptr %0, i32 -44
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr i8, ptr %75, i32 %77
  %79 = getelementptr i8, ptr %0, i32 -48
  store ptr %78, ptr %79, align 8
  store i8 0, ptr %6, align 4
  %80 = load volatile i32, ptr @jiffies, align 64
  %81 = getelementptr i8, ptr %0, i32 -4
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, %80
  %84 = call i32 @mod_timer(ptr noundef %0, i32 noundef %83) #19
  %85 = load i16, ptr %9, align 2
  store i16 %85, ptr %26, align 2
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  br label %93

86:                                               ; preds = %37, %34, %31, %24
  %87 = load volatile i32, ptr @jiffies, align 64
  %88 = getelementptr i8, ptr %0, i32 -4
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, %87
  %91 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %90) #19
  %92 = load i16, ptr %9, align 2
  store i16 %92, ptr %26, align 2
  br label %93

93:                                               ; preds = %86, %42, %34, %1
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %94 = load i16, ptr %5, align 4
  %95 = add i16 %94, 1
  store i16 %95, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @prb_retire_current_block(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.timespec64, align 8
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.tpacket_kbdq_core, ptr %0, i32 0, i32 5
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr %struct.pgv, ptr %5, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tpacket_block_desc, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %90, !prof !27

14:                                               ; preds = %3
  %15 = and i32 %2, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tpacket_kbdq_core, ptr %0, i32 0, i32 17
  tail call void @_raw_write_lock(ptr noundef %18) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !63
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %18, i32 0) #19, !srcloc !64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !65
  br label %19

19:                                               ; preds = %17, %14
  %20 = getelementptr inbounds %struct.packet_sock, ptr %1, i32 0, i32 26
  %21 = load volatile i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 1, i32 5
  %24 = or i32 %23, %2
  %25 = getelementptr inbounds %struct.tpacket_kbdq_core, ptr %0, i32 0, i32 14
  %26 = load ptr, ptr %25, align 8
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.tpacket_block_desc, ptr %10, i32 0, i32 2, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.tpacket3_hdr, ptr %26, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.tpacket_block_desc, ptr %10, i32 0, i32 2, i32 0, i32 6
  store i32 %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.tpacket3_hdr, ptr %26, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  br label %42

36:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #19, !annotation !32
  call void @ktime_get_real_ts64(ptr noundef nonnull %4) #19
  %37 = load i64, ptr %4, align 8
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.tpacket_block_desc, ptr %10, i32 0, i32 2, i32 0, i32 6
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.timespec64, ptr %4, i32 0, i32 1
  %41 = load i32, ptr %40, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  br label %42

42:                                               ; preds = %36, %30
  %43 = phi i32 [ %41, %36 ], [ %35, %30 ]
  %44 = getelementptr inbounds %struct.tpacket_block_desc, ptr %10, i32 0, i32 2, i32 0, i32 6, i32 1
  store i32 %43, ptr %44, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !66
  %45 = getelementptr inbounds %struct.tpacket_kbdq_core, ptr %0, i32 0, i32 9
  %46 = load ptr, ptr %45, align 8
  %47 = ptrtoint ptr %46 to i32
  %48 = add i32 %47, 4095
  %49 = and i32 %48, -4096
  %50 = inttoptr i32 %49 to ptr
  %51 = getelementptr i8, ptr %10, i32 4096
  %52 = icmp ult ptr %51, %50
  br i1 %52, label %53, label %68

53:                                               ; preds = %64, %42
  %54 = phi ptr [ %66, %64 ], [ %51, %42 ]
  %55 = call zeroext i1 @is_vmalloc_addr(ptr noundef %54) #19
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call ptr @vmalloc_to_page(ptr noundef %54) #19
  br label %64

58:                                               ; preds = %53
  %59 = load ptr, ptr @mem_map, align 4
  %60 = ptrtoint ptr %54 to i32
  %61 = add i32 %60, 1073741824
  %62 = lshr i32 %61, 12
  %63 = getelementptr %struct.page, ptr %59, i32 %62
  br label %64

64:                                               ; preds = %58, %56
  %65 = phi ptr [ %57, %56 ], [ %63, %58 ]
  call void @flush_dcache_page(ptr noundef %65) #19
  %66 = getelementptr i8, ptr %54, i32 4096
  %67 = icmp ult ptr %66, %50
  br i1 %67, label %53, label %68

68:                                               ; preds = %64, %42
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !67
  store i32 %24, ptr %11, align 8
  %69 = call zeroext i1 @is_vmalloc_addr(ptr noundef %10) #19
  br i1 %69, label %70, label %72

70:                                               ; preds = %68
  %71 = call ptr @vmalloc_to_page(ptr noundef %10) #19
  br label %78

72:                                               ; preds = %68
  %73 = load ptr, ptr @mem_map, align 4
  %74 = ptrtoint ptr %10 to i32
  %75 = add i32 %74, 1073741824
  %76 = lshr i32 %75, 12
  %77 = getelementptr %struct.page, ptr %73, i32 %76
  br label %78

78:                                               ; preds = %72, %70
  %79 = phi ptr [ %71, %70 ], [ %77, %72 ]
  call void @flush_dcache_page(ptr noundef %79) #19
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !68
  %80 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %81 = load ptr, ptr %80, align 8
  call void %81(ptr noundef %1) #19
  %82 = load i16, ptr %6, align 2
  %83 = zext i16 %82 to i32
  %84 = getelementptr inbounds %struct.tpacket_kbdq_core, ptr %0, i32 0, i32 12
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, -1
  %87 = icmp ugt i32 %86, %83
  %88 = add i16 %82, 1
  %89 = select i1 %87, i16 %88, i16 0
  store i16 %89, ptr %6, align 2
  br label %90

90:                                               ; preds = %78, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @prb_dispatch_next_block(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.timespec64, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !69
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.tpacket_kbdq_core, ptr %0, i32 0, i32 5
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr %struct.pgv, ptr %4, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tpacket_block_desc, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.tpacket_kbdq_core, ptr %0, i32 0, i32 3
  store i8 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.packet_sock, ptr %1, i32 0, i32 2, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  br label %68

19:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #19, !annotation !32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !53
  %20 = getelementptr inbounds %struct.tpacket_kbdq_core, ptr %0, i32 0, i32 13
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %21, 1
  store i64 %22, ptr %20, align 8
  %23 = getelementptr inbounds %struct.tpacket_block_desc, ptr %9, i32 0, i32 2, i32 0, i32 4
  store i64 %21, ptr %23, align 8
  %24 = getelementptr inbounds %struct.tpacket_block_desc, ptr %9, i32 0, i32 2, i32 0, i32 1
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.tpacket_kbdq_core, ptr %0, i32 0, i32 6
  %26 = load i16, ptr %25, align 8
  %27 = zext i16 %26 to i32
  %28 = add nuw nsw i32 %27, 7
  %29 = and i32 %28, 131064
  %30 = add nuw nsw i32 %29, 48
  %31 = getelementptr inbounds %struct.tpacket_block_desc, ptr %9, i32 0, i32 2, i32 0, i32 3
  store i32 %30, ptr %31, align 4
  call void @ktime_get_real_ts64(ptr noundef nonnull %3) #19
  %32 = load i64, ptr %3, align 8
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.tpacket_block_desc, ptr %9, i32 0, i32 2, i32 0, i32 5
  store i32 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.timespec64, ptr %3, i32 0, i32 1
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.tpacket_block_desc, ptr %9, i32 0, i32 2, i32 0, i32 5, i32 1
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.tpacket_kbdq_core, ptr %0, i32 0, i32 8
  store ptr %9, ptr %38, align 4
  %39 = load i16, ptr %25, align 8
  %40 = zext i16 %39 to i32
  %41 = add nuw nsw i32 %40, 7
  %42 = and i32 %41, 131064
  %43 = add nuw nsw i32 %42, 48
  %44 = getelementptr i8, ptr %9, i32 %43
  %45 = getelementptr inbounds %struct.tpacket_kbdq_core, ptr %0, i32 0, i32 15
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.tpacket_block_desc, ptr %9, i32 0, i32 2, i32 0, i32 2
  store i32 %43, ptr %46, align 8
  %47 = getelementptr inbounds %struct.tpacket_block_desc, ptr %9, i32 0, i32 1
  store i32 48, ptr %47, align 4
  %48 = getelementptr inbounds %struct.tpacket_kbdq_core, ptr %0, i32 0, i32 19
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  store i32 %50, ptr %9, align 8
  %51 = load ptr, ptr %45, align 4
  %52 = getelementptr inbounds %struct.tpacket_kbdq_core, ptr %0, i32 0, i32 14
  store ptr %51, ptr %52, align 8
  %53 = load ptr, ptr %38, align 4
  %54 = getelementptr inbounds %struct.tpacket_kbdq_core, ptr %0, i32 0, i32 10
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr i8, ptr %53, i32 %55
  %57 = getelementptr inbounds %struct.tpacket_kbdq_core, ptr %0, i32 0, i32 9
  store ptr %56, ptr %57, align 8
  %58 = getelementptr inbounds %struct.tpacket_kbdq_core, ptr %0, i32 0, i32 3
  store i8 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.tpacket_kbdq_core, ptr %0, i32 0, i32 21
  %60 = load volatile i32, ptr @jiffies, align 64
  %61 = getelementptr inbounds %struct.tpacket_kbdq_core, ptr %0, i32 0, i32 20
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %60
  %64 = call i32 @mod_timer(ptr noundef %59, i32 noundef %63) #19
  %65 = load i16, ptr %5, align 2
  %66 = getelementptr inbounds %struct.tpacket_kbdq_core, ptr %0, i32 0, i32 7
  store i16 %65, ptr %66, align 2
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  %67 = load ptr, ptr %45, align 4
  br label %68

68:                                               ; preds = %19, %14
  %69 = phi ptr [ null, %14 ], [ %67, %19 ]
  ret ptr %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @run_filter(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %4 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 16
  %5 = load volatile ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sk_filter, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bpf_prog, ptr %9, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = and i16 %11, 8
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14, !prof !27

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(20) %15, i8 0, i32 20, i1 false) #19
  br label %16

16:                                               ; preds = %14, %7
  tail call void @migrate_disable() #19
  %17 = load volatile i32, ptr @bpf_stats_enabled_key, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %47, !prof !23

19:                                               ; preds = %16
  %20 = tail call i64 @sched_clock() #19
  %21 = getelementptr inbounds %struct.bpf_prog, ptr %9, i32 1
  %22 = getelementptr inbounds %struct.bpf_prog, ptr %9, i32 0, i32 9
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %0, ptr noundef %21) #19
  %25 = getelementptr inbounds %struct.bpf_prog, ptr %9, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %29 = inttoptr i32 %28 to ptr
  %30 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #4, !srcloc !11
  %31 = add i32 %30, %27
  %32 = inttoptr i32 %31 to ptr
  %33 = getelementptr inbounds %struct.bpf_prog_stats, ptr %32, i32 0, i32 3
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !10
  %35 = load i32, ptr %33, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %33, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !70
  %37 = load i64, ptr %32, align 8
  %38 = add i64 %37, 1
  store i64 %38, ptr %32, align 8
  %39 = getelementptr inbounds %struct.bpf_prog_stats, ptr %32, i32 0, i32 1
  %40 = tail call i64 @sched_clock() #19
  %41 = sub i64 %40, %20
  %42 = and i64 %41, 4294967295
  %43 = load i64, ptr %39, align 8
  %44 = add i64 %42, %43
  store i64 %44, ptr %39, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !71
  %45 = load i32, ptr %33, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %33, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #19, !srcloc !12
  br label %52

47:                                               ; preds = %16
  %48 = getelementptr inbounds %struct.bpf_prog, ptr %9, i32 1
  %49 = getelementptr inbounds %struct.bpf_prog, ptr %9, i32 0, i32 9
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 %50(ptr noundef %0, ptr noundef %48) #19
  br label %52

52:                                               ; preds = %47, %19
  %53 = phi i32 [ %24, %19 ], [ %51, %47 ]
  tail call void @migrate_enable() #19
  br label %54

54:                                               ; preds = %52, %3
  %55 = phi i32 [ %53, %52 ], [ %2, %3 ]
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !17
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__packet_rcv_has_room(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 24, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @tpacket_rcv
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %8 = load volatile i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp eq ptr %1, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %14 = load i32, ptr %13, align 8
  br label %15

15:                                               ; preds = %12, %6
  %16 = phi i32 [ %14, %12 ], [ 0, %6 ]
  %17 = add i32 %10, %16
  %18 = sub i32 %8, %17
  %19 = ashr i32 %8, 2
  %20 = icmp sgt i32 %18, %19
  %21 = icmp sgt i32 %18, 0
  %22 = zext i1 %21 to i32
  %23 = select i1 %20, i32 2, i32 %22
  br label %117

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 16
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %63

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 3, i32 9, i32 0, i32 12
  %30 = load volatile i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 3, i32 9, i32 0, i32 5
  %32 = load volatile i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = ashr i32 %30, 2
  %35 = add nsw i32 %34, %33
  %36 = icmp slt i32 %35, %30
  %37 = select i1 %36, i32 0, i32 %30
  %38 = sub i32 %35, %37
  %39 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 3, i32 9
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr %struct.pgv, ptr %40, i32 %38
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.tpacket_block_desc, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, 0
  %46 = icmp ne ptr %42, null
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %117, label %48

48:                                               ; preds = %28
  %49 = load volatile i32, ptr %29, align 4
  %50 = load volatile i16, ptr %31, align 2
  %51 = zext i16 %50 to i32
  %52 = icmp sgt i32 %49, %51
  %53 = select i1 %52, i32 0, i32 %49
  %54 = sub i32 %51, %53
  %55 = getelementptr %struct.pgv, ptr %40, i32 %54
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.tpacket_block_desc, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = icmp eq i32 %58, 0
  %60 = icmp ne ptr %56, null
  %61 = select i1 %59, i1 %60, i1 false
  %62 = zext i1 %61 to i32
  br label %117

63:                                               ; preds = %24
  %64 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 3, i32 4
  %65 = load volatile i32, ptr %64, align 8
  %66 = add i32 %65, 1
  %67 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 3, i32 1
  %68 = load volatile i32, ptr %67, align 4
  %69 = ashr i32 %66, 2
  %70 = add i32 %69, %68
  %71 = icmp slt i32 %70, %66
  %72 = select i1 %71, i32 0, i32 %66
  %73 = sub i32 %70, %72
  %74 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 3
  %75 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 3, i32 2
  %76 = load i32, ptr %75, align 8
  %77 = freeze i32 %73
  %78 = freeze i32 %76
  %79 = udiv i32 %77, %78
  %80 = mul i32 %79, %78
  %81 = sub i32 %77, %80
  %82 = load ptr, ptr %74, align 8
  %83 = getelementptr %struct.pgv, ptr %82, i32 %79
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 3, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = mul i32 %86, %81
  %88 = getelementptr i8, ptr %84, i32 %87
  %89 = tail call fastcc i32 @__packet_get_status(ptr noundef %0, ptr noundef %88) #19
  %90 = icmp eq i32 %89, 0
  %91 = icmp ne ptr %88, null
  %92 = and i1 %90, %91
  br i1 %92, label %117, label %93

93:                                               ; preds = %63
  %94 = load volatile i32, ptr %64, align 8
  %95 = add i32 %94, 1
  %96 = load volatile i32, ptr %67, align 4
  %97 = icmp slt i32 %96, %95
  %98 = select i1 %97, i32 0, i32 %95
  %99 = sub i32 %96, %98
  %100 = load i32, ptr %75, align 8
  %101 = freeze i32 %99
  %102 = freeze i32 %100
  %103 = udiv i32 %101, %102
  %104 = mul i32 %103, %102
  %105 = sub i32 %101, %104
  %106 = load ptr, ptr %74, align 8
  %107 = getelementptr %struct.pgv, ptr %106, i32 %103
  %108 = load ptr, ptr %107, align 4
  %109 = load i32, ptr %85, align 4
  %110 = mul i32 %109, %105
  %111 = getelementptr i8, ptr %108, i32 %110
  %112 = tail call fastcc i32 @__packet_get_status(ptr noundef %0, ptr noundef %111) #19
  %113 = icmp eq i32 %112, 0
  %114 = icmp ne ptr %111, null
  %115 = and i1 %113, %114
  %116 = zext i1 %115 to i32
  br label %117

117:                                              ; preds = %93, %63, %48, %28, %15
  %118 = phi i32 [ %23, %15 ], [ 2, %28 ], [ %62, %48 ], [ 2, %63 ], [ %116, %93 ]
  ret i32 %118
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc i32 @skb_csum_unnecessary(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %3 = load i16, ptr %2, align 8
  %4 = lshr i16 %3, 5
  %5 = and i16 %4, 3
  %6 = icmp ne i16 %5, 1
  %7 = icmp sgt i16 %3, -1
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = icmp eq i16 %5, 3
  br i1 %10, label %11, label %25

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %18 = load ptr, ptr %17, align 8
  %19 = ptrtoint ptr %16 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %14, %19
  %22 = add i32 %21, %20
  %23 = xor i32 %22, -1
  %24 = lshr i32 %23, 31
  br label %25

25:                                               ; preds = %11, %9, %1
  %26 = phi i32 [ 1, %1 ], [ 0, %9 ], [ %24, %11 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @skb_get(ptr noundef returned %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #19, !srcloc !21
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #19, !srcloc !26
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !23

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !27

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #19
  br label %12

12:                                               ; preds = %10, %6
  ret ptr %0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @skb_set_owner_r(ptr noundef %0, ptr noundef %1) unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void %4(ptr noundef %0) #19
  br label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !27

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #19, !srcloc !30
  unreachable

12:                                               ; preds = %7, %6
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  store ptr %1, ptr %13, align 4
  store ptr @sock_rfree, ptr %3, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #19, !srcloc !21
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 %15, ptr elementtype(i32) %16) #19, !srcloc !31
  %18 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.proto, ptr %19, i32 0, i32 30
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %12
  %24 = load i32, ptr %14, align 8
  %25 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 11
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 %26, %24
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %23, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @packet_increment_rx_head(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.packet_ring_buffer, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.packet_ring_buffer, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %8, %10
  %12 = add i32 %8, 1
  %13 = select i1 %11, i32 0, i32 %12
  store i32 %13, ptr %7, align 4
  ret void

14:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1182, i32 noundef 9, ptr noundef nonnull @.str.10) #19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/packet/af_packet.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1183, 0\0A.popsection", ""() #19, !srcloc !72
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__packet_set_status(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %37 [
    i32 0, label %6
    i32 1, label %16
    i32 2, label %26
  ]

6:                                                ; preds = %3
  store i32 %2, ptr %1, align 4
  %7 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #19
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call ptr @vmalloc_to_page(ptr noundef %1) #19
  br label %38

10:                                               ; preds = %6
  %11 = load ptr, ptr @mem_map, align 4
  %12 = ptrtoint ptr %1 to i32
  %13 = add i32 %12, 1073741824
  %14 = lshr i32 %13, 12
  %15 = getelementptr %struct.page, ptr %11, i32 %14
  br label %38

16:                                               ; preds = %3
  store i32 %2, ptr %1, align 4
  %17 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #19
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = tail call ptr @vmalloc_to_page(ptr noundef %1) #19
  br label %38

20:                                               ; preds = %16
  %21 = load ptr, ptr @mem_map, align 4
  %22 = ptrtoint ptr %1 to i32
  %23 = add i32 %22, 1073741824
  %24 = lshr i32 %23, 12
  %25 = getelementptr %struct.page, ptr %21, i32 %24
  br label %38

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.tpacket3_hdr, ptr %1, i32 0, i32 5
  store i32 %2, ptr %27, align 4
  %28 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %27) #19
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call ptr @vmalloc_to_page(ptr noundef %27) #19
  br label %38

31:                                               ; preds = %26
  %32 = load ptr, ptr @mem_map, align 4
  %33 = ptrtoint ptr %27 to i32
  %34 = add i32 %33, 1073741824
  %35 = lshr i32 %34, 12
  %36 = getelementptr %struct.page, ptr %32, i32 %35
  br label %38

37:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 421, i32 noundef 9, ptr noundef nonnull @.str.10) #19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/packet/af_packet.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #19, !srcloc !73
  unreachable

38:                                               ; preds = %31, %29, %20, %18, %10, %8
  %39 = phi ptr [ %9, %8 ], [ %15, %10 ], [ %19, %18 ], [ %25, %20 ], [ %30, %29 ], [ %36, %31 ]
  tail call void @flush_dcache_page(ptr noundef %39) #19
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !74
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__packet_get_status(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !75
  %3 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 16
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %36 [
    i32 0, label %5
    i32 1, label %15
    i32 2, label %25
  ]

5:                                                ; preds = %2
  %6 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #19
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = tail call ptr @vmalloc_to_page(ptr noundef %1) #19
  br label %37

9:                                                ; preds = %5
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %1 to i32
  %12 = add i32 %11, 1073741824
  %13 = lshr i32 %12, 12
  %14 = getelementptr %struct.page, ptr %10, i32 %13
  br label %37

15:                                               ; preds = %2
  %16 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #19
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = tail call ptr @vmalloc_to_page(ptr noundef %1) #19
  br label %37

19:                                               ; preds = %15
  %20 = load ptr, ptr @mem_map, align 4
  %21 = ptrtoint ptr %1 to i32
  %22 = add i32 %21, 1073741824
  %23 = lshr i32 %22, 12
  %24 = getelementptr %struct.page, ptr %20, i32 %23
  br label %37

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.tpacket3_hdr, ptr %1, i32 0, i32 5
  %27 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %26) #19
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call ptr @vmalloc_to_page(ptr noundef %26) #19
  br label %37

30:                                               ; preds = %25
  %31 = load ptr, ptr @mem_map, align 4
  %32 = ptrtoint ptr %26 to i32
  %33 = add i32 %32, 1073741824
  %34 = lshr i32 %33, 12
  %35 = getelementptr %struct.page, ptr %31, i32 %34
  br label %37

36:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 446, i32 noundef 9, ptr noundef nonnull @.str.10) #19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/packet/af_packet.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 447, 0\0A.popsection", ""() #19, !srcloc !76
  unreachable

37:                                               ; preds = %30, %28, %19, %17, %9, %7
  %38 = phi ptr [ %8, %7 ], [ %14, %9 ], [ %18, %17 ], [ %24, %19 ], [ %29, %28 ], [ %35, %30 ]
  %39 = phi ptr [ %1, %7 ], [ %1, %9 ], [ %1, %17 ], [ %1, %19 ], [ %26, %28 ], [ %26, %30 ]
  tail call void @flush_dcache_page(ptr noundef %38) #19
  %40 = load i32, ptr %39, align 4
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_get_hash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @packet_do_bind(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) unnamed_addr #2 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #19
  %5 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %5) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %6 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %130

9:                                                ; preds = %4
  %10 = icmp eq ptr %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = tail call ptr @dev_get_by_name_rcu(ptr noundef nonnull @init_net, ptr noundef nonnull %1) #19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %130, label %19

14:                                               ; preds = %9
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = tail call ptr @dev_get_by_index_rcu(ptr noundef nonnull @init_net, i32 noundef %2) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %130, label %19

19:                                               ; preds = %16, %14, %11
  %20 = phi ptr [ %12, %11 ], [ %17, %16 ], [ null, %14 ]
  %21 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 24
  %22 = load i16, ptr %21, align 64
  %23 = icmp eq i16 %22, %3
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 24, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %20
  br i1 %27, label %130, label %28

28:                                               ; preds = %24, %19
  %29 = icmp eq ptr %20, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %28
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !10
  %32 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 99
  %33 = load ptr, ptr %32, align 8
  %34 = ptrtoint ptr %33 to i32
  %35 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %36 = inttoptr i32 %35 to ptr
  %37 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %36) #4, !srcloc !11
  %38 = add i32 %37, %34
  %39 = inttoptr i32 %38 to ptr
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #19, !srcloc !12
  br label %42

42:                                               ; preds = %30, %28
  %43 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 8
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %42
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !17
  %47 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 12
  store volatile i16 0, ptr %47, align 4
  tail call fastcc void @__unregister_prot_hook(ptr noundef %0, i1 noundef zeroext true)
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  br i1 %29, label %53, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 17
  %50 = load i32, ptr %49, align 4
  %51 = tail call ptr @dev_get_by_index_rcu(ptr noundef nonnull @init_net, i32 noundef %50) #19
  %52 = icmp eq ptr %51, null
  br label %53

53:                                               ; preds = %48, %46
  %54 = phi i1 [ false, %46 ], [ %52, %48 ]
  %55 = load i32, ptr %43, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57, !prof !27

57:                                               ; preds = %53
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/packet/af_packet.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3217, 0\0A.popsection", ""() #19, !srcloc !77
  unreachable

58:                                               ; preds = %53, %42
  %59 = phi i1 [ %54, %53 ], [ false, %42 ]
  %60 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 12
  store volatile i16 %3, ptr %60, align 4
  store i16 %3, ptr %21, align 64
  %61 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 24, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %76, label %64

64:                                               ; preds = %58
  %65 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !10
  %66 = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 99
  %67 = load ptr, ptr %66, align 8
  %68 = ptrtoint ptr %67 to i32
  %69 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %70 = inttoptr i32 %69 to ptr
  %71 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %70) #4, !srcloc !11
  %72 = add i32 %71, %68
  %73 = inttoptr i32 %72 to ptr
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, -1
  store i32 %75, ptr %73, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %65) #19, !srcloc !12
  br label %76

76:                                               ; preds = %64, %58
  br i1 %59, label %77, label %79, !prof !23

77:                                               ; preds = %76
  store ptr null, ptr %61, align 4
  %78 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 11
  store volatile i32 -1, ptr %78, align 16
  br label %98

79:                                               ; preds = %76
  br i1 %29, label %80, label %81

80:                                               ; preds = %79
  store ptr null, ptr %61, align 4
  br label %95

81:                                               ; preds = %79
  %82 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !10
  %83 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 99
  %84 = load ptr, ptr %83, align 8
  %85 = ptrtoint ptr %84 to i32
  %86 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %87 = inttoptr i32 %86 to ptr
  %88 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %87) #4, !srcloc !11
  %89 = add i32 %88, %85
  %90 = inttoptr i32 %89 to ptr
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %82) #19, !srcloc !12
  store ptr %20, ptr %61, align 4
  %93 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 17
  %94 = load i32, ptr %93, align 4
  br label %95

95:                                               ; preds = %81, %80
  %96 = phi i32 [ %94, %81 ], [ 0, %80 ]
  %97 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 11
  store volatile i32 %96, ptr %97, align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !78
  br label %98

98:                                               ; preds = %95, %77
  %99 = phi ptr [ %20, %95 ], [ null, %77 ]
  %100 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 21
  store volatile ptr %99, ptr %100, align 4
  br i1 %29, label %113, label %101

101:                                              ; preds = %98
  %102 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !10
  %103 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 99
  %104 = load ptr, ptr %103, align 8
  %105 = ptrtoint ptr %104 to i32
  %106 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %107 = inttoptr i32 %106 to ptr
  %108 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %107) #4, !srcloc !11
  %109 = add i32 %108, %105
  %110 = inttoptr i32 %109 to ptr
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %111, -1
  store i32 %112, ptr %110, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %102) #19, !srcloc !12
  br label %113

113:                                              ; preds = %101, %98
  %114 = icmp eq i16 %3, 0
  br i1 %114, label %130, label %115

115:                                              ; preds = %113
  br i1 %59, label %123, label %116

116:                                              ; preds = %115
  br i1 %29, label %122, label %117

117:                                              ; preds = %116
  %118 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 14
  %119 = load i32, ptr %118, align 8
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117, %116
  tail call fastcc void @__register_prot_hook(ptr noundef %0) #19
  br label %130

123:                                              ; preds = %117, %115
  %124 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  store i32 100, ptr %124, align 4
  %125 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %126 = load volatile i32, ptr %125, align 4
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  tail call void @sk_error_report(ptr noundef %0) #19
  br label %130

130:                                              ; preds = %129, %123, %122, %113, %24, %16, %11, %4
  %131 = phi i32 [ 0, %113 ], [ 0, %123 ], [ 0, %129 ], [ 0, %122 ], [ -22, %4 ], [ -19, %11 ], [ -19, %16 ], [ 0, %24 ]
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %132 = load i16, ptr %5, align 4
  %133 = add i16 %132, 1
  store i16 %133, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  tail call void @release_sock(ptr noundef %0) #19
  ret i32 %131
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @copy_from_sockptr(ptr noundef %0, [2 x i32] %1, i32 noundef %2) unnamed_addr #14 {
  %4 = extractvalue [2 x i32] %1, 0
  %5 = inttoptr i32 %4 to ptr
  %6 = extractvalue [2 x i32] %1, 1
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  %10 = icmp slt i32 %2, 0
  %11 = load i1, ptr @check_copy_size.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !23

14:                                               ; preds = %9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #19
  br label %15

15:                                               ; preds = %14, %9
  br i1 %10, label %34, label %16, !prof !23

16:                                               ; preds = %15
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 %2, i32 -1090519040) #22, !srcloc !40
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27, !prof !27

20:                                               ; preds = %16
  %21 = tail call ptr @llvm.thread.pointer() #19
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #4, !srcloc !35
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #19, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !37
  %26 = tail call i32 @arm_copy_from_user(ptr noundef %0, ptr noundef %5, i32 noundef %2) #19
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #19, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !37
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi i32 [ %26, %20 ], [ %2, %16 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !27

30:                                               ; preds = %27
  %31 = sub i32 %2, %28
  %32 = getelementptr i8, ptr %0, i32 %31
  tail call void @llvm.memset.p0.i32(ptr align 1 %32, i8 0, i32 %28, i1 false) #19
  br label %34

33:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %0, ptr align 1 %5, i32 %2, i1 false) #19
  br label %34

34:                                               ; preds = %33, %30, %27, %15
  %35 = phi i32 [ 0, %33 ], [ %2, %15 ], [ 0, %27 ], [ %28, %30 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @packet_mc_add(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  tail call void @rtnl_lock() #19
  %3 = load i32, ptr %1, align 4
  %4 = tail call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %3) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %94, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.packet_mreq_max, ptr %1, i32 0, i32 2
  %8 = load i16, ptr %7, align 2
  %9 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 51
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i16
  %12 = icmp ugt i16 %8, %11
  br i1 %12, label %94, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 48) #24
  %16 = icmp eq ptr %15, null
  br i1 %16, label %94, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 14
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = load i32, ptr %1, align 4
  br i1 %20, label %52, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.packet_mreq_max, ptr %1, i32 0, i32 1
  %24 = getelementptr inbounds %struct.packet_mreq_max, ptr %1, i32 0, i32 3
  br label %25

25:                                               ; preds = %49, %22
  %26 = phi ptr [ %19, %22 ], [ %50, %49 ]
  %27 = getelementptr inbounds %struct.packet_mclist, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %21
  br i1 %29, label %30, label %49

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.packet_mclist, ptr %26, i32 0, i32 3
  %32 = load i16, ptr %31, align 4
  %33 = load i16, ptr %23, align 4
  %34 = icmp eq i16 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.packet_mclist, ptr %26, i32 0, i32 4
  %37 = load i16, ptr %36, align 2
  %38 = load i16, ptr %7, align 2
  %39 = icmp eq i16 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = zext i16 %37 to i32
  %42 = getelementptr inbounds %struct.packet_mclist, ptr %26, i32 0, i32 5
  %43 = tail call i32 @bcmp(ptr %42, ptr %24, i32 %41)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.packet_mclist, ptr %26, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  br label %92

49:                                               ; preds = %40, %35, %30, %25
  %50 = load ptr, ptr %26, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %25

52:                                               ; preds = %49, %17
  %53 = getelementptr inbounds %struct.packet_mreq_max, ptr %1, i32 0, i32 1
  %54 = load i16, ptr %53, align 4
  %55 = getelementptr inbounds %struct.packet_mclist, ptr %15, i32 0, i32 3
  store i16 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.packet_mclist, ptr %15, i32 0, i32 1
  store i32 %21, ptr %56, align 4
  %57 = load i16, ptr %7, align 2
  %58 = getelementptr inbounds %struct.packet_mclist, ptr %15, i32 0, i32 4
  store i16 %57, ptr %58, align 2
  %59 = getelementptr inbounds %struct.packet_mclist, ptr %15, i32 0, i32 5
  %60 = getelementptr inbounds %struct.packet_mreq_max, ptr %1, i32 0, i32 3
  %61 = zext i16 %57 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %59, ptr align 4 %60, i32 %61, i1 false)
  %62 = getelementptr i8, ptr %59, i32 %61
  %63 = sub nsw i32 32, %61
  tail call void @llvm.memset.p0.i32(ptr align 1 %62, i8 0, i32 %63, i1 false)
  %64 = getelementptr inbounds %struct.packet_mclist, ptr %15, i32 0, i32 2
  store i32 1, ptr %64, align 8
  store ptr %19, ptr %15, align 8
  store ptr %15, ptr %18, align 4
  %65 = load i16, ptr %55, align 4
  switch i16 %65, label %94 [
    i16 0, label %66
    i16 1, label %73
    i16 2, label %75
    i16 3, label %77
  ]

66:                                               ; preds = %52
  %67 = load i16, ptr %58, align 2
  %68 = load i8, ptr %9, align 1
  %69 = zext i8 %68 to i16
  %70 = icmp eq i16 %67, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %66
  %72 = tail call i32 @dev_mc_add(ptr noundef nonnull %4, ptr noundef %59) #19
  br label %84

73:                                               ; preds = %52
  %74 = tail call i32 @dev_set_promiscuity(ptr noundef nonnull %4, i32 noundef 1) #19
  br label %84

75:                                               ; preds = %52
  %76 = tail call i32 @dev_set_allmulti(ptr noundef nonnull %4, i32 noundef 1) #19
  br label %84

77:                                               ; preds = %52
  %78 = load i16, ptr %58, align 2
  %79 = load i8, ptr %9, align 1
  %80 = zext i8 %79 to i16
  %81 = icmp eq i16 %78, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = tail call i32 @dev_uc_add(ptr noundef nonnull %4, ptr noundef %59) #19
  br label %84

84:                                               ; preds = %82, %75, %73, %71
  %85 = phi i32 [ %83, %82 ], [ %76, %75 ], [ %74, %73 ], [ %72, %71 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %15, align 8
  br label %89

89:                                               ; preds = %87, %77, %66
  %90 = phi ptr [ %88, %87 ], [ %19, %66 ], [ %19, %77 ]
  %91 = phi i32 [ %85, %87 ], [ -22, %66 ], [ -22, %77 ]
  store ptr %90, ptr %18, align 4
  br label %92

92:                                               ; preds = %89, %45
  %93 = phi i32 [ %91, %89 ], [ 0, %45 ]
  tail call void @kfree(ptr noundef nonnull %15) #19
  br label %94

94:                                               ; preds = %92, %84, %52, %13, %6, %2
  %95 = phi i32 [ -22, %6 ], [ -105, %13 ], [ 0, %84 ], [ -19, %2 ], [ 0, %52 ], [ %93, %92 ]
  tail call void @rtnl_unlock() #19
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @packet_mc_drop(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  tail call void @rtnl_lock() #19
  %3 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %71, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr inbounds %struct.packet_mreq_max, ptr %1, i32 0, i32 1
  %9 = getelementptr inbounds %struct.packet_mreq_max, ptr %1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.packet_mreq_max, ptr %1, i32 0, i32 3
  br label %11

11:                                               ; preds = %68, %6
  %12 = phi ptr [ %4, %6 ], [ %69, %68 ]
  %13 = phi ptr [ %3, %6 ], [ %12, %68 ]
  %14 = getelementptr inbounds %struct.packet_mclist, ptr %12, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %7
  br i1 %16, label %17, label %68

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.packet_mclist, ptr %12, i32 0, i32 3
  %19 = load i16, ptr %18, align 4
  %20 = load i16, ptr %8, align 4
  %21 = icmp eq i16 %19, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.packet_mclist, ptr %12, i32 0, i32 4
  %24 = load i16, ptr %23, align 2
  %25 = load i16, ptr %9, align 2
  %26 = icmp eq i16 %24, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %22
  %28 = zext i16 %24 to i32
  %29 = getelementptr inbounds %struct.packet_mclist, ptr %12, i32 0, i32 5
  %30 = tail call i32 @bcmp(ptr %29, ptr %10, i32 %28)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.packet_mclist, ptr %12, i32 0, i32 3
  %34 = getelementptr inbounds %struct.packet_mclist, ptr %12, i32 0, i32 4
  %35 = getelementptr inbounds %struct.packet_mclist, ptr %12, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, -1
  store i32 %37, ptr %35, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.packet_mclist, ptr %12, i32 0, i32 1
  %41 = load ptr, ptr %12, align 4
  store ptr %41, ptr %13, align 4
  %42 = load i32, ptr %40, align 4
  %43 = tail call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %42) #19
  %44 = icmp eq ptr %43, null
  br i1 %44, label %67, label %45

45:                                               ; preds = %39
  %46 = load i16, ptr %33, align 4
  switch i16 %46, label %67 [
    i16 0, label %47
    i16 1, label %55
    i16 2, label %57
    i16 3, label %59
  ]

47:                                               ; preds = %45
  %48 = load i16, ptr %34, align 2
  %49 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 51
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i16
  %52 = icmp eq i16 %48, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = tail call i32 @dev_mc_del(ptr noundef nonnull %43, ptr noundef %29) #19
  br label %67

55:                                               ; preds = %45
  %56 = tail call i32 @dev_set_promiscuity(ptr noundef nonnull %43, i32 noundef -1) #19
  br label %67

57:                                               ; preds = %45
  %58 = tail call i32 @dev_set_allmulti(ptr noundef nonnull %43, i32 noundef -1) #19
  br label %67

59:                                               ; preds = %45
  %60 = load i16, ptr %34, align 2
  %61 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 51
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i16
  %64 = icmp eq i16 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = tail call i32 @dev_uc_del(ptr noundef nonnull %43, ptr noundef %29) #19
  br label %67

67:                                               ; preds = %65, %59, %57, %55, %53, %47, %45, %39
  tail call void @kfree(ptr noundef nonnull %12) #19
  br label %71

68:                                               ; preds = %27, %22, %17, %11
  %69 = load ptr, ptr %12, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %11

71:                                               ; preds = %68, %67, %32, %2
  tail call void @rtnl_unlock() #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fanout_add(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.fanout_args, ptr %1, i32 0, i32 1
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  %6 = trunc i16 %4 to i8
  %7 = lshr i16 %4, 8
  %8 = trunc i16 %7 to i8
  %9 = load i16, ptr %1, align 4
  %10 = and i16 %4, 255
  switch i8 %6, label %172 [
    i8 3, label %11
    i8 0, label %14
    i8 1, label %14
    i8 2, label %14
    i8 4, label %14
    i8 5, label %14
    i8 6, label %14
    i8 7, label %14
  ]

11:                                               ; preds = %2
  %12 = and i32 %5, 4096
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %172

14:                                               ; preds = %11, %2, %2, %2, %2, %2, %2, %2
  tail call void @mutex_lock(ptr noundef nonnull @fanout_mutex) #19
  %15 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %169

18:                                               ; preds = %14
  %19 = icmp ne i16 %10, 3
  %20 = and i32 %5, 4096
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 128) #24
  %26 = icmp eq ptr %25, null
  br i1 %26, label %169, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.packet_rollover, ptr %25, i32 0, i32 1
  store volatile i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.packet_rollover, ptr %25, i32 0, i32 2
  store volatile i32 0, ptr %29, align 8
  %30 = getelementptr inbounds %struct.packet_rollover, ptr %25, i32 0, i32 3
  store volatile i32 0, ptr %30, align 4
  br label %31

31:                                               ; preds = %27, %18
  %32 = phi ptr [ %25, %27 ], [ null, %18 ]
  %33 = and i32 %5, 8192
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %31
  %36 = icmp eq i16 %9, 0
  br i1 %36, label %37, label %169

37:                                               ; preds = %35
  %38 = load i16, ptr @fanout_next_id, align 2
  br label %39

39:                                               ; preds = %49, %37
  %40 = phi i16 [ %38, %37 ], [ %50, %49 ]
  br label %41

41:                                               ; preds = %45, %39
  %42 = phi ptr [ @fanout_list, %39 ], [ %43, %45 ]
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, @fanout_list
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = getelementptr i8, ptr %43, i32 -8
  %47 = load i16, ptr %46, align 8
  %48 = icmp eq i16 %47, %40
  br i1 %48, label %49, label %41

49:                                               ; preds = %45
  %50 = add i16 %40, 1
  %51 = icmp eq i16 %50, %38
  br i1 %51, label %169, label %39

52:                                               ; preds = %41
  %53 = add i16 %40, 1
  store i16 %53, ptr @fanout_next_id, align 2
  %54 = and i8 %8, -33
  br label %55

55:                                               ; preds = %52, %31
  %56 = phi i16 [ %9, %31 ], [ %40, %52 ]
  %57 = phi i8 [ %8, %31 ], [ %54, %52 ]
  br label %58

58:                                               ; preds = %62, %55
  %59 = phi ptr [ @fanout_list, %55 ], [ %60, %62 ]
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, @fanout_list
  br i1 %61, label %81, label %62

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %60, i32 -8
  %64 = load i16, ptr %63, align 8
  %65 = icmp eq i16 %64, %56
  br i1 %65, label %66, label %58

66:                                               ; preds = %62
  %67 = getelementptr i8, ptr %60, i32 -16
  %68 = icmp eq ptr %67, null
  br i1 %68, label %81, label %69

69:                                               ; preds = %66
  %70 = getelementptr i8, ptr %60, i32 -5
  %71 = load i8, ptr %70, align 1
  %72 = icmp eq i8 %71, %57
  br i1 %72, label %73, label %169

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.fanout_args, ptr %1, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %121, label %77

77:                                               ; preds = %73
  %78 = getelementptr i8, ptr %60, i32 -12
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %75, %79
  br i1 %80, label %121, label %169

81:                                               ; preds = %66, %58
  %82 = getelementptr inbounds %struct.fanout_args, ptr %1, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = icmp ugt i32 %83, 65536
  br i1 %84, label %169, label %85

85:                                               ; preds = %81
  %86 = icmp eq i32 %83, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %85
  store i32 256, ptr %82, align 4
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i32 [ 256, %87 ], [ %83, %85 ]
  %90 = shl nuw nsw i32 %89, 2
  %91 = add nuw nsw i32 %90, 128
  %92 = tail call noalias ptr @kvmalloc_node(i32 noundef %91, i32 noundef 3520, i32 noundef -1) #20
  %93 = icmp eq ptr %92, null
  br i1 %93, label %169, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.packet_fanout, ptr %92, i32 0, i32 3
  store i16 %56, ptr %95, align 8
  %96 = getelementptr inbounds %struct.packet_fanout, ptr %92, i32 0, i32 4
  store i8 %6, ptr %96, align 2
  %97 = getelementptr inbounds %struct.packet_fanout, ptr %92, i32 0, i32 5
  store i8 %57, ptr %97, align 1
  %98 = getelementptr inbounds %struct.packet_fanout, ptr %92, i32 0, i32 7
  store volatile ptr %98, ptr %98, align 4
  %99 = getelementptr inbounds %struct.packet_fanout, ptr %92, i32 0, i32 7, i32 1
  store ptr %98, ptr %99, align 4
  %100 = getelementptr inbounds %struct.packet_fanout, ptr %92, i32 0, i32 8
  store i32 0, ptr %100, align 8
  %101 = getelementptr inbounds %struct.packet_fanout, ptr %92, i32 0, i32 9
  store volatile i32 0, ptr %101, align 4
  switch i8 %6, label %106 [
    i8 1, label %102
    i8 6, label %104
    i8 7, label %104
  ]

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.packet_fanout, ptr %92, i32 0, i32 6
  store volatile i32 0, ptr %103, align 4
  br label %106

104:                                              ; preds = %94, %94
  %105 = getelementptr inbounds %struct.packet_fanout, ptr %92, i32 0, i32 6
  store volatile ptr null, ptr %105, align 4
  br label %106

106:                                              ; preds = %104, %102, %94
  %107 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 24
  %108 = load i16, ptr %107, align 64
  %109 = getelementptr inbounds %struct.packet_fanout, ptr %92, i32 0, i32 11
  store i16 %108, ptr %109, align 64
  %110 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 24, i32 2
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.packet_fanout, ptr %92, i32 0, i32 11, i32 2
  store ptr %111, ptr %112, align 4
  %113 = getelementptr inbounds %struct.packet_fanout, ptr %92, i32 0, i32 11, i32 4
  store ptr @packet_rcv_fanout, ptr %113, align 8
  %114 = getelementptr inbounds %struct.packet_fanout, ptr %92, i32 0, i32 11, i32 8
  store ptr %92, ptr %114, align 8
  %115 = getelementptr inbounds %struct.packet_fanout, ptr %92, i32 0, i32 11, i32 7
  store ptr @init_net, ptr %115, align 4
  %116 = getelementptr inbounds %struct.packet_fanout, ptr %92, i32 0, i32 11, i32 6
  store ptr @match_fanout_group, ptr %116, align 16
  %117 = load i32, ptr %82, align 4
  %118 = getelementptr inbounds %struct.packet_fanout, ptr %92, i32 0, i32 2
  store i32 %117, ptr %118, align 4
  %119 = load ptr, ptr @fanout_list, align 4
  %120 = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  store ptr %98, ptr %120, align 4
  store ptr %119, ptr %98, align 4
  store ptr @fanout_list, ptr %99, align 4
  store volatile ptr %98, ptr @fanout_list, align 4
  br label %121

121:                                              ; preds = %106, %77, %73
  %122 = phi ptr [ %67, %77 ], [ %67, %73 ], [ %92, %106 ]
  %123 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %123) #19
  %124 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 8
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %153, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.packet_fanout, ptr %122, i32 0, i32 4
  %129 = load i8, ptr %128, align 2
  %130 = icmp eq i8 %129, %6
  br i1 %130, label %131, label %153

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.packet_fanout, ptr %122, i32 0, i32 11
  %133 = load i16, ptr %132, align 64
  %134 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 24
  %135 = load i16, ptr %134, align 64
  %136 = icmp eq i16 %133, %135
  br i1 %136, label %137, label %153

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.packet_fanout, ptr %122, i32 0, i32 11, i32 2
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 24, i32 2
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %139, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.packet_fanout, ptr %122, i32 0, i32 9
  %145 = load volatile i32, ptr %144, align 4
  %146 = getelementptr inbounds %struct.packet_fanout, ptr %122, i32 0, i32 2
  %147 = load i32, ptr %146, align 4
  %148 = icmp ult i32 %145, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  tail call void @__dev_remove_pack(ptr noundef %134) #19
  store volatile ptr %122, ptr %15, align 8
  %150 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 13
  store ptr %32, ptr %150, align 8
  %151 = load volatile i32, ptr %144, align 4
  %152 = add i32 %151, 1
  store volatile i32 %152, ptr %144, align 4
  tail call fastcc void @__fanout_link(ptr noundef %0, ptr noundef %0)
  br label %153

153:                                              ; preds = %149, %143, %137, %131, %127, %121
  %154 = phi i1 [ false, %143 ], [ true, %149 ], [ false, %137 ], [ false, %131 ], [ false, %127 ], [ false, %121 ]
  %155 = phi i32 [ -28, %143 ], [ 0, %149 ], [ -22, %137 ], [ -22, %131 ], [ -22, %127 ], [ -22, %121 ]
  %156 = phi ptr [ %32, %143 ], [ null, %149 ], [ %32, %137 ], [ %32, %131 ], [ %32, %127 ], [ %32, %121 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %157 = load i16, ptr %123, align 4
  %158 = add i16 %157, 1
  store i16 %158, ptr %123, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br i1 %154, label %169, label %159

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.packet_fanout, ptr %122, i32 0, i32 9
  %161 = load volatile i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.packet_fanout, ptr %122, i32 0, i32 7
  %165 = getelementptr inbounds %struct.packet_fanout, ptr %122, i32 0, i32 7, i32 1
  %166 = load ptr, ptr %165, align 4
  %167 = load ptr, ptr %164, align 4
  %168 = getelementptr inbounds %struct.list_head, ptr %167, i32 0, i32 1
  store ptr %166, ptr %168, align 4
  store volatile ptr %167, ptr %166, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %164, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %165, align 4
  tail call void @kvfree(ptr noundef nonnull %122) #19
  br label %169

169:                                              ; preds = %163, %159, %153, %88, %81, %77, %69, %49, %35, %23, %14
  %170 = phi i32 [ -114, %14 ], [ -22, %69 ], [ -22, %77 ], [ %155, %159 ], [ %155, %163 ], [ 0, %153 ], [ -22, %81 ], [ -12, %88 ], [ -12, %23 ], [ -22, %35 ], [ -12, %49 ]
  %171 = phi ptr [ null, %14 ], [ %32, %69 ], [ %32, %77 ], [ %156, %159 ], [ %156, %163 ], [ %156, %153 ], [ %32, %81 ], [ %32, %88 ], [ null, %23 ], [ %32, %35 ], [ %32, %49 ]
  tail call void @kfree(ptr noundef %171) #19
  tail call void @mutex_unlock(ptr noundef nonnull @fanout_mutex) #19
  br label %172

172:                                              ; preds = %169, %11, %2
  %173 = phi i32 [ %170, %169 ], [ -22, %11 ], [ -22, %2 ]
  ret i32 %173
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fanout_set_data(ptr noundef %0, [2 x i32] %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.sock_fprog, align 8
  %7 = getelementptr inbounds %struct.packet_sock, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.packet_fanout, ptr %8, i32 0, i32 4
  %10 = load i8, ptr %9, align 2
  switch i8 %10, label %65 [
    i8 6, label %11
    i8 7, label %34
  ]

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store ptr null, ptr %5, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  store i64 0, ptr %6, align 8, !annotation !32
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 2097152
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %11
  %17 = call i32 @copy_bpf_fprog_from_user(ptr noundef nonnull %6, [2 x i32] %1, i32 noundef %2) #19
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = call i32 @bpf_prog_create_from_user(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, i1 noundef zeroext false) #19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr inbounds %struct.packet_fanout, ptr %23, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %25) #19
  %26 = getelementptr inbounds %struct.packet_fanout, ptr %23, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !34
  store volatile ptr %24, ptr %26, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %28 = load i16, ptr %25, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %25, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %30 = icmp eq ptr %27, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  call void @synchronize_net() #19
  call void @bpf_prog_destroy(ptr noundef nonnull %27) #19
  br label %32

32:                                               ; preds = %31, %22, %19, %16, %11
  %33 = phi i32 [ -1, %11 ], [ %17, %16 ], [ %20, %19 ], [ 0, %22 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  br label %65

34:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 0, ptr %4, align 4, !annotation !32
  %35 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 2097152
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = icmp eq i32 %2, 4
  br i1 %40, label %41, label %63

41:                                               ; preds = %39
  %42 = extractvalue [2 x i32] %1, 0
  %43 = inttoptr i32 %42 to ptr
  %44 = extractvalue [2 x i32] %1, 1
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %43, i32 4, i32 -1090519040) #22, !srcloc !40
  %49 = extractvalue { i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59, !prof !27

51:                                               ; preds = %47
  %52 = tail call ptr @llvm.thread.pointer() #19
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %54 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %53) #4, !srcloc !35
  %55 = and i32 %54, -13
  %56 = or i32 %55, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #19, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !37
  %57 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %43, i32 noundef 4) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #19, !srcloc !36
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !37
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59, !prof !27

59:                                               ; preds = %51, %47
  %60 = phi i32 [ %57, %51 ], [ 4, %47 ]
  %61 = sub i32 4, %60
  %62 = getelementptr i8, ptr %4, i32 %61
  call void @llvm.memset.p0.i32(ptr align 1 %62, i8 0, i32 %60, i1 false) #19
  br label %63

63:                                               ; preds = %59, %51, %41, %39, %34
  %64 = phi i32 [ -1, %34 ], [ -22, %39 ], [ -14, %59 ], [ -95, %51 ], [ -95, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  br label %65

65:                                               ; preds = %63, %32, %3
  %66 = phi i32 [ %64, %63 ], [ %33, %32 ], [ -22, %3 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @packet_direct_xmit(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.anon.76, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @llvm.thread.pointer() #19
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, 1
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 10
  store i32 %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 89
  %12 = load i32, ptr %11, align 8
  %13 = urem i32 %8, %12
  %14 = trunc i32 %13 to i16
  %15 = add i16 %14, 1
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  store i16 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.net_device_ops, ptr %5, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %1
  %21 = tail call zeroext i16 %18(ptr noundef %3, ptr noundef %0, ptr noundef null) #19
  %22 = zext i16 %21 to i32
  %23 = load i32, ptr %11, align 8
  %24 = icmp ugt i32 %23, %22
  br i1 %24, label %33, label %25, !prof !27

25:                                               ; preds = %20
  %26 = tail call i32 @net_ratelimit() #19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %11, align 8
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %3, i32 noundef %22, i32 noundef %29) #21
  br label %33

31:                                               ; preds = %1
  %32 = tail call zeroext i16 @netdev_pick_tx(ptr noundef %3, ptr noundef %0, ptr noundef null) #19
  br label %33

33:                                               ; preds = %31, %28, %25, %20
  %34 = phi i16 [ %32, %31 ], [ 0, %25 ], [ 0, %28 ], [ %21, %20 ]
  %35 = tail call i32 @__dev_direct_xmit(ptr noundef %0, i16 noundef zeroext %34) #19
  %36 = icmp slt i32 %35, 15
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #19
  br label %38

38:                                               ; preds = %37, %33
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @packet_rcv_fanout(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #2 {
  %5 = getelementptr inbounds %struct.packet_type, ptr %2, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.packet_fanout, ptr %6, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #19
  br label %314

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.packet_fanout, ptr %6, i32 0, i32 5
  %13 = load i8, ptr %12, align 1
  %14 = icmp sgt i8 %13, -1
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @ip_check_defrag(ptr noundef nonnull @init_net, ptr noundef %0, i32 noundef 196613) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %314, label %18

18:                                               ; preds = %15, %11
  %19 = phi ptr [ %16, %15 ], [ %0, %11 ]
  %20 = getelementptr inbounds %struct.packet_fanout, ptr %6, i32 0, i32 4
  %21 = load i8, ptr %20, align 2
  switch i8 %21, label %22 [
    i8 7, label %94
    i8 1, label %29
    i8 2, label %34
    i8 4, label %39
    i8 5, label %46
    i8 3, label %51
    i8 6, label %94
  ]

22:                                               ; preds = %18
  %23 = tail call i32 @__skb_get_hash_symmetric(ptr noundef %19) #19
  %24 = zext i32 %23 to i64
  %25 = zext i32 %8 to i64
  %26 = mul nuw i64 %24, %25
  %27 = lshr i64 %26, 32
  %28 = trunc i64 %27 to i32
  br label %146

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.packet_fanout, ptr %6, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !48
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #19, !srcloc !21
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #19, !srcloc !49
  %32 = extractvalue { i32, i32 } %31, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !50
  %33 = urem i32 %32, %8
  br label %146

34:                                               ; preds = %18
  %35 = tail call ptr @llvm.thread.pointer() #19
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = urem i32 %37, %8
  br label %146

39:                                               ; preds = %18
  %40 = tail call i32 @prandom_u32() #19
  %41 = zext i32 %40 to i64
  %42 = zext i32 %8 to i64
  %43 = mul nuw i64 %41, %42
  %44 = lshr i64 %43, 32
  %45 = trunc i64 %44 to i32
  br label %146

46:                                               ; preds = %18
  %47 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 9
  %48 = load i16, ptr %47, align 4
  %49 = zext i16 %48 to i32
  %50 = urem i32 %49, %8
  br label %146

51:                                               ; preds = %18
  %52 = getelementptr %struct.packet_fanout, ptr %6, i32 0, i32 12, i32 0
  %53 = load volatile ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.packet_sock, ptr %53, i32 0, i32 13
  %55 = load ptr, ptr %54, align 8
  %56 = load i32, ptr %55, align 64
  %57 = add i32 %8, -1
  %58 = tail call i32 @llvm.smin.i32(i32 %56, i32 %57) #19
  br label %59

59:                                               ; preds = %85, %51
  %60 = phi i32 [ %58, %51 ], [ %88, %85 ]
  %61 = getelementptr %struct.packet_fanout, ptr %6, i32 0, i32 12, i32 %60
  %62 = load volatile ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %85, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.packet_sock, ptr %62, i32 0, i32 10
  %66 = load volatile i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = tail call fastcc i32 @__packet_rcv_has_room(ptr noundef nonnull %62, ptr noundef %19) #19
  %70 = icmp ne i32 %69, 2
  %71 = zext i1 %70 to i32
  %72 = load volatile i32, ptr %65, align 4
  %73 = icmp eq i32 %72, %71
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  store volatile i32 %71, ptr %65, align 4
  br label %75

75:                                               ; preds = %74, %68
  %76 = icmp eq i32 %69, 2
  br i1 %76, label %77, label %85

77:                                               ; preds = %75
  %78 = icmp eq i32 %60, %58
  br i1 %78, label %81, label %79

79:                                               ; preds = %77
  %80 = load ptr, ptr %54, align 8
  store i32 %60, ptr %80, align 64
  br label %81

81:                                               ; preds = %79, %77
  %82 = load ptr, ptr %54, align 8
  %83 = getelementptr inbounds %struct.packet_rollover, ptr %82, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %83) #19, !srcloc !21
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 1, ptr elementtype(i32) %83) #19, !srcloc !31
  br label %146

85:                                               ; preds = %75, %64, %59
  %86 = add i32 %60, 1
  %87 = icmp eq i32 %86, %8
  %88 = select i1 %87, i32 0, i32 %86
  %89 = icmp eq i32 %88, %58
  br i1 %89, label %90, label %59

90:                                               ; preds = %85
  %91 = load ptr, ptr %54, align 8
  %92 = getelementptr inbounds %struct.packet_rollover, ptr %91, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %92) #19, !srcloc !21
  %93 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %92, ptr %92, i32 1, ptr elementtype(i32) %92) #19, !srcloc !31
  br label %146

94:                                               ; preds = %18, %18
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %95 = getelementptr inbounds %struct.packet_fanout, ptr %6, i32 0, i32 6
  %96 = load volatile ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %144, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.bpf_prog, ptr %96, i32 0, i32 1
  %100 = load i16, ptr %99, align 2
  %101 = and i16 %100, 8
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %105, label %103, !prof !27

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(20) %104, i8 0, i32 20, i1 false) #19
  br label %105

105:                                              ; preds = %103, %98
  tail call void @migrate_disable() #19
  %106 = load volatile i32, ptr @bpf_stats_enabled_key, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %136, !prof !23

108:                                              ; preds = %105
  %109 = tail call i64 @sched_clock() #19
  %110 = getelementptr inbounds %struct.bpf_prog, ptr %96, i32 1
  %111 = getelementptr inbounds %struct.bpf_prog, ptr %96, i32 0, i32 9
  %112 = load ptr, ptr %111, align 4
  %113 = tail call i32 %112(ptr noundef %19, ptr noundef %110) #19
  %114 = getelementptr inbounds %struct.bpf_prog, ptr %96, i32 0, i32 7
  %115 = load ptr, ptr %114, align 4
  %116 = ptrtoint ptr %115 to i32
  %117 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %118 = inttoptr i32 %117 to ptr
  %119 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %118) #4, !srcloc !11
  %120 = add i32 %119, %116
  %121 = inttoptr i32 %120 to ptr
  %122 = getelementptr inbounds %struct.bpf_prog_stats, ptr %121, i32 0, i32 3
  %123 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !10
  %124 = load i32, ptr %122, align 4
  %125 = add i32 %124, 1
  store i32 %125, ptr %122, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !70
  %126 = load i64, ptr %121, align 8
  %127 = add i64 %126, 1
  store i64 %127, ptr %121, align 8
  %128 = getelementptr inbounds %struct.bpf_prog_stats, ptr %121, i32 0, i32 1
  %129 = tail call i64 @sched_clock() #19
  %130 = sub i64 %129, %109
  %131 = and i64 %130, 4294967295
  %132 = load i64, ptr %128, align 8
  %133 = add i64 %131, %132
  store i64 %133, ptr %128, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !71
  %134 = load i32, ptr %122, align 4
  %135 = add i32 %134, 1
  store i32 %135, ptr %122, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %123) #19, !srcloc !12
  br label %141

136:                                              ; preds = %105
  %137 = getelementptr inbounds %struct.bpf_prog, ptr %96, i32 1
  %138 = getelementptr inbounds %struct.bpf_prog, ptr %96, i32 0, i32 9
  %139 = load ptr, ptr %138, align 4
  %140 = tail call i32 %139(ptr noundef %19, ptr noundef %137) #19
  br label %141

141:                                              ; preds = %136, %108
  %142 = phi i32 [ %113, %108 ], [ %140, %136 ]
  tail call void @migrate_enable() #19
  %143 = urem i32 %142, %8
  br label %144

144:                                              ; preds = %141, %94
  %145 = phi i32 [ %143, %141 ], [ 0, %94 ]
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !17
  br label %146

146:                                              ; preds = %144, %90, %81, %46, %39, %34, %29, %22
  %147 = phi i32 [ %28, %22 ], [ %50, %46 ], [ %45, %39 ], [ %38, %34 ], [ %33, %29 ], [ %145, %144 ], [ 0, %90 ], [ %60, %81 ]
  %148 = load i8, ptr %12, align 1
  %149 = and i8 %148, 16
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %306, label %151

151:                                              ; preds = %146
  %152 = getelementptr %struct.packet_fanout, ptr %6, i32 0, i32 12, i32 %147
  %153 = load volatile ptr, ptr %152, align 4
  %154 = tail call fastcc i32 @__packet_rcv_has_room(ptr noundef %153, ptr noundef %19) #19
  %155 = icmp ne i32 %154, 2
  %156 = zext i1 %155 to i32
  %157 = getelementptr inbounds %struct.packet_sock, ptr %153, i32 0, i32 10
  %158 = load volatile i32, ptr %157, align 4
  %159 = icmp eq i32 %158, %156
  br i1 %159, label %161, label %160

160:                                              ; preds = %151
  store volatile i32 %156, ptr %157, align 4
  br label %161

161:                                              ; preds = %160, %151
  switch i32 %154, label %260 [
    i32 2, label %306
    i32 1, label %162
  ]

162:                                              ; preds = %161
  %163 = getelementptr inbounds %struct.packet_sock, ptr %153, i32 0, i32 13
  %164 = load ptr, ptr %163, align 8
  %165 = getelementptr inbounds %struct.packet_rollover, ptr %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13
  %167 = load i16, ptr %166, align 8
  %168 = and i16 %167, 768
  %169 = icmp eq i16 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  tail call void @__skb_get_hash(ptr noundef %19) #19
  br label %171

171:                                              ; preds = %170, %162
  %172 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13, i32 0, i32 7
  %173 = load i32, ptr %172, align 8
  %174 = load volatile i32, ptr %165, align 4
  %175 = getelementptr %struct.packet_rollover, ptr %164, i32 0, i32 5, i32 1
  %176 = load volatile i32, ptr %175, align 4
  %177 = getelementptr %struct.packet_rollover, ptr %164, i32 0, i32 5, i32 2
  %178 = load volatile i32, ptr %177, align 4
  %179 = getelementptr %struct.packet_rollover, ptr %164, i32 0, i32 5, i32 3
  %180 = load volatile i32, ptr %179, align 4
  %181 = getelementptr %struct.packet_rollover, ptr %164, i32 0, i32 5, i32 4
  %182 = load volatile i32, ptr %181, align 4
  %183 = getelementptr %struct.packet_rollover, ptr %164, i32 0, i32 5, i32 5
  %184 = load volatile i32, ptr %183, align 4
  %185 = getelementptr %struct.packet_rollover, ptr %164, i32 0, i32 5, i32 6
  %186 = load volatile i32, ptr %185, align 4
  %187 = getelementptr %struct.packet_rollover, ptr %164, i32 0, i32 5, i32 7
  %188 = load volatile i32, ptr %187, align 4
  %189 = getelementptr %struct.packet_rollover, ptr %164, i32 0, i32 5, i32 8
  %190 = load volatile i32, ptr %189, align 4
  %191 = getelementptr %struct.packet_rollover, ptr %164, i32 0, i32 5, i32 9
  %192 = load volatile i32, ptr %191, align 4
  %193 = getelementptr %struct.packet_rollover, ptr %164, i32 0, i32 5, i32 10
  %194 = load volatile i32, ptr %193, align 4
  %195 = getelementptr %struct.packet_rollover, ptr %164, i32 0, i32 5, i32 11
  %196 = load volatile i32, ptr %195, align 4
  %197 = getelementptr %struct.packet_rollover, ptr %164, i32 0, i32 5, i32 12
  %198 = load volatile i32, ptr %197, align 4
  %199 = getelementptr %struct.packet_rollover, ptr %164, i32 0, i32 5, i32 13
  %200 = load volatile i32, ptr %199, align 4
  %201 = getelementptr %struct.packet_rollover, ptr %164, i32 0, i32 5, i32 14
  %202 = load volatile i32, ptr %201, align 4
  %203 = getelementptr %struct.packet_rollover, ptr %164, i32 0, i32 5, i32 15
  %204 = load volatile i32, ptr %203, align 4
  %205 = tail call i32 @prandom_u32() #19
  %206 = and i32 %205, 15
  %207 = getelementptr i32, ptr %165, i32 %206
  %208 = load volatile i32, ptr %207, align 4
  %209 = icmp eq i32 %208, %173
  br i1 %209, label %211, label %210

210:                                              ; preds = %171
  store volatile i32 %173, ptr %207, align 4
  br label %211

211:                                              ; preds = %210, %171
  %212 = icmp eq i32 %174, %173
  %213 = zext i1 %212 to i32
  %214 = icmp eq i32 %176, %173
  %215 = zext i1 %214 to i32
  %216 = add nuw nsw i32 %215, %213
  %217 = icmp eq i32 %178, %173
  %218 = zext i1 %217 to i32
  %219 = add nuw nsw i32 %216, %218
  %220 = icmp eq i32 %180, %173
  %221 = zext i1 %220 to i32
  %222 = add nuw nsw i32 %219, %221
  %223 = icmp eq i32 %182, %173
  %224 = zext i1 %223 to i32
  %225 = add nuw nsw i32 %222, %224
  %226 = icmp eq i32 %184, %173
  %227 = zext i1 %226 to i32
  %228 = add nuw nsw i32 %225, %227
  %229 = icmp eq i32 %186, %173
  %230 = zext i1 %229 to i32
  %231 = add nuw nsw i32 %228, %230
  %232 = icmp eq i32 %188, %173
  %233 = zext i1 %232 to i32
  %234 = add nuw nsw i32 %231, %233
  %235 = icmp eq i32 %190, %173
  %236 = zext i1 %235 to i32
  %237 = add nuw nsw i32 %234, %236
  %238 = icmp eq i32 %192, %173
  %239 = zext i1 %238 to i32
  %240 = add nuw nsw i32 %237, %239
  %241 = icmp eq i32 %194, %173
  %242 = zext i1 %241 to i32
  %243 = add nuw nsw i32 %240, %242
  %244 = icmp eq i32 %196, %173
  %245 = zext i1 %244 to i32
  %246 = add nuw nsw i32 %243, %245
  %247 = icmp eq i32 %198, %173
  %248 = zext i1 %247 to i32
  %249 = add nuw nsw i32 %246, %248
  %250 = icmp eq i32 %200, %173
  %251 = zext i1 %250 to i32
  %252 = add nuw nsw i32 %249, %251
  %253 = icmp eq i32 %202, %173
  %254 = zext i1 %253 to i32
  %255 = add nuw nsw i32 %252, %254
  %256 = icmp eq i32 %204, %173
  %257 = zext i1 %256 to i32
  %258 = add nuw nsw i32 %255, %257
  %259 = icmp ugt i32 %258, 8
  br i1 %259, label %260, label %306

260:                                              ; preds = %211, %161
  %261 = getelementptr inbounds %struct.packet_sock, ptr %153, i32 0, i32 13
  %262 = load ptr, ptr %261, align 8
  %263 = load i32, ptr %262, align 64
  %264 = add i32 %8, -1
  %265 = tail call i32 @llvm.smin.i32(i32 %263, i32 %264) #19
  br label %266

266:                                              ; preds = %297, %260
  %267 = phi i32 [ %265, %260 ], [ %300, %297 ]
  %268 = getelementptr %struct.packet_fanout, ptr %6, i32 0, i32 12, i32 %267
  %269 = load volatile ptr, ptr %268, align 4
  %270 = icmp eq ptr %269, %153
  br i1 %270, label %297, label %271

271:                                              ; preds = %266
  %272 = getelementptr inbounds %struct.packet_sock, ptr %269, i32 0, i32 10
  %273 = load volatile i32, ptr %272, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %297

275:                                              ; preds = %271
  %276 = tail call fastcc i32 @__packet_rcv_has_room(ptr noundef %269, ptr noundef %19) #19
  %277 = icmp ne i32 %276, 2
  %278 = zext i1 %277 to i32
  %279 = load volatile i32, ptr %272, align 4
  %280 = icmp eq i32 %279, %278
  br i1 %280, label %282, label %281

281:                                              ; preds = %275
  store volatile i32 %278, ptr %272, align 4
  br label %282

282:                                              ; preds = %281, %275
  %283 = icmp eq i32 %276, 2
  br i1 %283, label %284, label %297

284:                                              ; preds = %282
  %285 = icmp eq i32 %267, %265
  br i1 %285, label %288, label %286

286:                                              ; preds = %284
  %287 = load ptr, ptr %261, align 8
  store i32 %267, ptr %287, align 64
  br label %288

288:                                              ; preds = %286, %284
  %289 = load ptr, ptr %261, align 8
  %290 = getelementptr inbounds %struct.packet_rollover, ptr %289, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %290) #19, !srcloc !21
  %291 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %290, ptr %290, i32 1, ptr elementtype(i32) %290) #19, !srcloc !31
  %292 = icmp eq i32 %154, 1
  br i1 %292, label %293, label %306

293:                                              ; preds = %288
  %294 = load ptr, ptr %261, align 8
  %295 = getelementptr inbounds %struct.packet_rollover, ptr %294, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %295) #19, !srcloc !21
  %296 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %295, ptr %295, i32 1, ptr elementtype(i32) %295) #19, !srcloc !31
  br label %306

297:                                              ; preds = %282, %271, %266
  %298 = add i32 %267, 1
  %299 = icmp eq i32 %298, %8
  %300 = select i1 %299, i32 0, i32 %298
  %301 = icmp eq i32 %300, %265
  br i1 %301, label %302, label %266

302:                                              ; preds = %297
  %303 = load ptr, ptr %261, align 8
  %304 = getelementptr inbounds %struct.packet_rollover, ptr %303, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %304) #19, !srcloc !21
  %305 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %304, ptr %304, i32 1, ptr elementtype(i32) %304) #19, !srcloc !31
  br label %306

306:                                              ; preds = %302, %293, %288, %211, %161, %146
  %307 = phi i32 [ %147, %146 ], [ %147, %302 ], [ %147, %161 ], [ %147, %211 ], [ %267, %293 ], [ %267, %288 ]
  %308 = getelementptr %struct.packet_fanout, ptr %6, i32 0, i32 12, i32 %307
  %309 = load volatile ptr, ptr %308, align 4
  %310 = getelementptr inbounds %struct.packet_sock, ptr %309, i32 0, i32 24
  %311 = getelementptr inbounds %struct.packet_sock, ptr %309, i32 0, i32 24, i32 4
  %312 = load ptr, ptr %311, align 8
  %313 = tail call i32 %312(ptr noundef %19, ptr noundef %1, ptr noundef %310, ptr noundef %3) #19
  br label %314

314:                                              ; preds = %306, %15, %10
  %315 = phi i32 [ %313, %306 ], [ 0, %10 ], [ 0, %15 ]
  ret i32 %315
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @match_fanout_group(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #16 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 3
  %4 = load i16, ptr %3, align 8
  %5 = icmp eq i16 %4, 17
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.packet_type, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.packet_sock, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %8, %10
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i1 [ %11, %6 ], [ false, %2 ]
  ret i1 %13
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_check_defrag(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_get_hash_symmetric(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_bpf_fprog_from_user(ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_create_from_user(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dev_direct_xmit(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @netdev_pick_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_cmsg_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @virtio_net_hdr_to_skb(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #14 {
  %3 = alloca %struct.flow_keys_basic, align 4
  %4 = getelementptr inbounds %struct.virtio_net_hdr, ptr %1, i32 0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = and i8 %5, 127
  %9 = zext i8 %8 to i32
  switch i32 %9, label %205 [
    i32 1, label %12
    i32 4, label %10
    i32 3, label %11
  ]

10:                                               ; preds = %7
  br label %12

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11, %10, %7
  %13 = phi i32 [ 17, %11 ], [ 6, %10 ], [ 6, %7 ]
  %14 = phi i32 [ 8, %11 ], [ 20, %10 ], [ 20, %7 ]
  %15 = phi i32 [ 65536, %11 ], [ 16, %10 ], [ %9, %7 ]
  %16 = or i32 %15, 4
  %17 = icmp slt i8 %5, 0
  %18 = select i1 %17, i32 %16, i32 %15
  %19 = getelementptr inbounds %struct.virtio_net_hdr, ptr %1, i32 0, i32 3
  %20 = load i16, ptr %19, align 2
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %205, label %22

22:                                               ; preds = %12, %2
  %23 = phi i32 [ %13, %12 ], [ 0, %2 ]
  %24 = phi i32 [ %14, %12 ], [ 0, %2 ]
  %25 = phi i32 [ %18, %12 ], [ 0, %2 ]
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %29 = load ptr, ptr %28, align 8
  %30 = ptrtoint ptr %27 to i32
  %31 = ptrtoint ptr %29 to i32
  %32 = sub i32 %30, %31
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  store i16 %33, ptr %34, align 2
  %35 = load i8, ptr %1, align 2
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %83, label %38

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.virtio_net_hdr, ptr %1, i32 0, i32 4
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds %struct.virtio_net_hdr, ptr %1, i32 0, i32 5
  %43 = load i16, ptr %42, align 2
  %44 = zext i16 %43 to i32
  %45 = add nuw nsw i32 %44, 2
  %46 = tail call i32 @llvm.umax.i32(i32 %24, i32 %45)
  %47 = add nuw nsw i32 %46, %41
  %48 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %49 = load i32, ptr %48, align 8
  %50 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = sub i32 %49, %51
  %53 = icmp ugt i32 %47, %52
  br i1 %53, label %54, label %60, !prof !23

54:                                               ; preds = %38
  %55 = icmp ult i32 %49, %47
  br i1 %55, label %205, label %56, !prof !23

56:                                               ; preds = %54
  %57 = sub i32 %47, %52
  %58 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %57) #19
  %59 = icmp eq ptr %58, null
  br i1 %59, label %205, label %60

60:                                               ; preds = %56, %38
  %61 = tail call zeroext i1 @skb_partial_csum_set(ptr noundef %0, i16 noundef zeroext %40, i16 noundef zeroext %43) #19
  br i1 %61, label %62, label %205

62:                                               ; preds = %60
  %63 = load ptr, ptr %28, align 8
  %64 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %65 = load i16, ptr %64, align 2
  %66 = zext i16 %65 to i32
  %67 = getelementptr i8, ptr %63, i32 %66
  %68 = load ptr, ptr %26, align 4
  %69 = ptrtoint ptr %67 to i32
  %70 = ptrtoint ptr %68 to i32
  %71 = sub i32 %69, %70
  %72 = add i32 %71, %24
  %73 = load i32, ptr %48, align 8
  %74 = load i32, ptr %50, align 4
  %75 = sub i32 %73, %74
  %76 = icmp ugt i32 %72, %75
  br i1 %76, label %77, label %182, !prof !23

77:                                               ; preds = %62
  %78 = icmp ult i32 %73, %72
  br i1 %78, label %205, label %79, !prof !23

79:                                               ; preds = %77
  %80 = sub i32 %72, %75
  %81 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %80) #19
  %82 = icmp eq ptr %81, null
  br i1 %82, label %205, label %182

83:                                               ; preds = %22
  %84 = icmp eq i32 %25, 0
  br i1 %84, label %182, label %85

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %87 = load i16, ptr %86, align 4
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %169, label %89

89:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  %90 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %91 = load i16, ptr %90, align 8
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %125

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.anon.76, ptr %0, i32 0, i32 2
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 44
  %97 = load ptr, ptr %96, align 16
  %98 = icmp eq ptr %97, null
  br i1 %98, label %109, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.header_ops, ptr %97, i32 0, i32 5
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %99
  %104 = tail call zeroext i16 %101(ptr noundef %0) #19
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load i16, ptr %90, align 8
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %106, %99, %93
  %110 = load i8, ptr %4, align 1
  %111 = and i8 %110, 127
  %112 = zext i8 %111 to i32
  switch i32 %112, label %125 [
    i32 1, label %123
    i32 3, label %123
    i32 4, label %113
  ]

113:                                              ; preds = %109
  br label %123

114:                                              ; preds = %103
  %115 = load i8, ptr %4, align 1
  %116 = and i8 %115, 127
  %117 = zext i8 %116 to i32
  switch i32 %117, label %158 [
    i32 1, label %121
    i32 4, label %118
    i32 3, label %120
  ]

118:                                              ; preds = %114
  %119 = icmp eq i16 %104, -8826
  br i1 %119, label %123, label %158

120:                                              ; preds = %114
  switch i16 %104, label %158 [
    i16 -8826, label %123
    i16 8, label %123
  ]

121:                                              ; preds = %114
  %122 = icmp eq i16 %104, 8
  br i1 %122, label %123, label %158

123:                                              ; preds = %121, %120, %120, %118, %113, %109, %109
  %124 = phi i16 [ -8826, %113 ], [ 8, %109 ], [ 8, %109 ], [ %104, %120 ], [ %104, %120 ], [ %104, %118 ], [ %104, %121 ]
  store i16 %124, ptr %90, align 8
  br label %125

125:                                              ; preds = %123, %109, %106, %89
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false) #19
  %126 = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %0, ptr noundef nonnull @flow_keys_basic_dissector, ptr noundef nonnull %3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #19
  br i1 %126, label %135, label %127

127:                                              ; preds = %125
  %128 = and i32 %25, 65536
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %158, label %130

130:                                              ; preds = %133, %127
  %131 = load i16, ptr %90, align 8
  %132 = icmp eq i16 %131, 8
  br i1 %132, label %133, label %158

133:                                              ; preds = %130
  store i16 -8826, ptr %90, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false) #19
  %134 = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %0, ptr noundef nonnull @flow_keys_basic_dissector, ptr noundef nonnull %3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #19
  br i1 %134, label %135, label %130

135:                                              ; preds = %133, %125
  %136 = load i16, ptr %3, align 4
  %137 = zext i16 %136 to i32
  %138 = add nsw i32 %24, %137
  %139 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %140 = load i32, ptr %139, align 8
  %141 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %142 = load i32, ptr %141, align 4
  %143 = sub i32 %140, %142
  %144 = icmp ugt i32 %138, %143
  br i1 %144, label %145, label %151, !prof !23

145:                                              ; preds = %135
  %146 = icmp ult i32 %140, %138
  br i1 %146, label %158, label %147, !prof !23

147:                                              ; preds = %145
  %148 = sub i32 %138, %143
  %149 = call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %148) #19
  %150 = icmp ne ptr %149, null
  br label %151

151:                                              ; preds = %147, %135
  %152 = phi i1 [ %150, %147 ], [ true, %135 ]
  %153 = getelementptr inbounds %struct.flow_keys_basic, ptr %3, i32 0, i32 1, i32 1
  %154 = load i8, ptr %153, align 2
  %155 = zext i8 %154 to i32
  %156 = icmp eq i32 %23, %155
  %157 = select i1 %152, i1 %156, i1 false
  br i1 %157, label %159, label %158

158:                                              ; preds = %151, %145, %130, %127, %121, %120, %118, %114
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  br label %205

159:                                              ; preds = %151
  %160 = load i16, ptr %3, align 4
  %161 = load ptr, ptr %26, align 4
  %162 = load ptr, ptr %28, align 8
  %163 = ptrtoint ptr %161 to i32
  %164 = ptrtoint ptr %162 to i32
  %165 = sub i32 %163, %164
  %166 = trunc i32 %165 to i16
  %167 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %168 = add i16 %160, %166
  store i16 %168, ptr %167, align 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  br label %182

169:                                              ; preds = %85
  %170 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %171 = load i32, ptr %170, align 8
  %172 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %173 = load i32, ptr %172, align 4
  %174 = sub i32 %171, %173
  %175 = icmp ugt i32 %24, %174
  br i1 %175, label %176, label %182, !prof !23

176:                                              ; preds = %169
  %177 = icmp ult i32 %171, %24
  br i1 %177, label %205, label %178, !prof !23

178:                                              ; preds = %176
  %179 = sub i32 %24, %174
  %180 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %179) #19
  %181 = icmp eq ptr %180, null
  br i1 %181, label %205, label %182

182:                                              ; preds = %178, %169, %159, %83, %79, %62
  %183 = phi i32 [ %72, %79 ], [ %138, %159 ], [ %24, %178 ], [ 0, %83 ], [ %72, %62 ], [ %24, %169 ]
  %184 = load i8, ptr %4, align 1
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %205, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.virtio_net_hdr, ptr %1, i32 0, i32 3
  %188 = load i16, ptr %187, align 2
  %189 = and i32 %25, 65536
  %190 = icmp eq i32 %189, 0
  %191 = select i1 %190, i32 0, i32 %24
  %192 = sub i32 %191, %183
  %193 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %194 = load i32, ptr %193, align 8
  %195 = add i32 %192, %194
  %196 = zext i16 %188 to i32
  %197 = icmp ugt i32 %195, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %186
  %199 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %200 = load ptr, ptr %199, align 4
  %201 = getelementptr inbounds %struct.skb_shared_info, ptr %200, i32 0, i32 4
  store i16 %188, ptr %201, align 4
  %202 = getelementptr inbounds %struct.skb_shared_info, ptr %200, i32 0, i32 8
  %203 = or i32 %25, 2
  store i32 %203, ptr %202, align 8
  %204 = getelementptr inbounds %struct.skb_shared_info, ptr %200, i32 0, i32 5
  store i16 0, ptr %204, align 2
  br label %205

205:                                              ; preds = %198, %186, %182, %178, %176, %158, %79, %77, %60, %56, %54, %12, %7
  %206 = phi i32 [ -22, %79 ], [ -22, %7 ], [ -22, %12 ], [ -22, %178 ], [ 0, %186 ], [ 0, %198 ], [ 0, %182 ], [ -22, %158 ], [ -22, %56 ], [ -22, %60 ], [ -22, %77 ], [ -22, %54 ], [ -22, %176 ]
  ret i32 %206
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tpacket_destruct_skb(ptr noundef %0) #2 {
  %2 = alloca %struct.timespec64, align 8
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 32
  %8 = icmp eq ptr %7, null
  br i1 %8, label %109, label %9, !prof !23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = and i32 %14, -2
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !10
  %18 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 4, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = ptrtoint ptr %19 to i32
  %21 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %22) #4, !srcloc !11
  %24 = add i32 %23, %20
  %25 = inttoptr i32 %24 to ptr
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  store i32 %27, ptr %25, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #19, !srcloc !12
  %28 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 19
  %29 = load i32, ptr %28, align 16
  %30 = and i32 %29, 64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %9
  %33 = load ptr, ptr %10, align 4
  %34 = getelementptr inbounds %struct.skb_shared_info, ptr %33, i32 0, i32 7
  %35 = load i64, ptr %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %35) #19
  %38 = load i64, ptr %3, align 8
  %39 = getelementptr inbounds i8, ptr %3, i32 8
  %40 = load i32, ptr %39, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  %41 = trunc i64 %38 to i32
  br label %54

42:                                               ; preds = %32, %9
  %43 = and i32 %29, 16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %84, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 2
  %47 = load i64, ptr %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %84, label %49

49:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %2, i64 noundef %47) #19
  %50 = load i64, ptr %2, align 8
  %51 = getelementptr inbounds i8, ptr %2, i32 8
  %52 = load i32, ptr %51, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  %53 = trunc i64 %50 to i32
  br label %54

54:                                               ; preds = %49, %37
  %55 = phi i32 [ %53, %49 ], [ %41, %37 ]
  %56 = phi i32 [ %52, %49 ], [ %40, %37 ]
  %57 = phi i32 [ 536870912, %49 ], [ -2147483648, %37 ]
  %58 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 16
  %59 = load i32, ptr %58, align 4
  switch i32 %59, label %70 [
    i32 0, label %60
    i32 1, label %64
    i32 2, label %67
  ]

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.tpacket_hdr, ptr %16, i32 0, i32 5
  store i32 %55, ptr %61, align 4
  %62 = sdiv i32 %56, 1000
  %63 = getelementptr inbounds %struct.tpacket_hdr, ptr %16, i32 0, i32 6
  store i32 %62, ptr %63, align 4
  br label %71

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.tpacket2_hdr, ptr %16, i32 0, i32 5
  store i32 %55, ptr %65, align 4
  %66 = getelementptr inbounds %struct.tpacket2_hdr, ptr %16, i32 0, i32 6
  store i32 %56, ptr %66, align 4
  br label %71

67:                                               ; preds = %54
  %68 = getelementptr inbounds %struct.tpacket3_hdr, ptr %16, i32 0, i32 1
  store i32 %55, ptr %68, align 4
  %69 = getelementptr inbounds %struct.tpacket3_hdr, ptr %16, i32 0, i32 2
  store i32 %56, ptr %69, align 4
  br label %71

70:                                               ; preds = %54
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 501, i32 noundef 9, ptr noundef nonnull @.str.10) #19
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/packet/af_packet.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 502, 0\0A.popsection", ""() #19, !srcloc !79
  unreachable

71:                                               ; preds = %67, %64, %60
  %72 = getelementptr inbounds %struct.tpacket_hdr, ptr %16, i32 0, i32 5
  %73 = call zeroext i1 @is_vmalloc_addr(ptr noundef %72) #19
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call ptr @vmalloc_to_page(ptr noundef %72) #19
  br label %82

76:                                               ; preds = %71
  %77 = load ptr, ptr @mem_map, align 4
  %78 = ptrtoint ptr %72 to i32
  %79 = add i32 %78, 1073741824
  %80 = lshr i32 %79, 12
  %81 = getelementptr %struct.page, ptr %77, i32 %80
  br label %82

82:                                               ; preds = %76, %74
  %83 = phi ptr [ %75, %74 ], [ %81, %76 ]
  call void @flush_dcache_page(ptr noundef %83) #19
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !80
  br label %84

84:                                               ; preds = %82, %45, %42
  %85 = phi i32 [ %57, %82 ], [ 0, %45 ], [ 0, %42 ]
  call fastcc void @__packet_set_status(ptr noundef %5, ptr noundef %16, i32 noundef %85)
  %86 = load ptr, ptr %18, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %107, label %88

88:                                               ; preds = %84
  %89 = load i32, ptr @nr_cpu_ids, align 4
  %90 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  %91 = icmp ult i32 %90, %89
  br i1 %91, label %92, label %107

92:                                               ; preds = %88
  %93 = ptrtoint ptr %86 to i32
  br label %94

94:                                               ; preds = %94, %92
  %95 = phi i32 [ %90, %92 ], [ %103, %94 ]
  %96 = phi i32 [ 0, %92 ], [ %102, %94 ]
  %97 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %95
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %98, %93
  %100 = inttoptr i32 %99 to ptr
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %101, %96
  %103 = call i32 @cpumask_next(i32 noundef %95, ptr noundef nonnull @__cpu_possible_mask) #23
  %104 = icmp ult i32 %103, %89
  br i1 %104, label %94, label %105

105:                                              ; preds = %94
  %106 = icmp eq i32 %102, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %105, %88, %84
  %108 = getelementptr inbounds %struct.packet_sock, ptr %5, i32 0, i32 20
  call void @complete(ptr noundef %108) #19
  br label %109

109:                                              ; preds = %107, %105, %1
  call void @sock_wfree(ptr noundef %0) #19
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @skb_setup_tx_timestamp(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 9
  %9 = icmp eq i16 %1, 0
  br i1 %9, label %24, label %10, !prof !27

10:                                               ; preds = %2
  tail call void @__sock_tx_timestamp(i16 noundef zeroext %1, ptr noundef %7) #19
  %11 = zext i16 %1 to i32
  %12 = and i32 %11, 128
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq ptr %8, null
  %15 = or i1 %13, %14
  %16 = and i32 %11, 771
  %17 = icmp eq i32 %16, 0
  %18 = or i1 %17, %15
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 67
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !48
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #19, !srcloc !21
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #19, !srcloc !49
  %22 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !50
  %23 = add i32 %22, -1
  store i32 %23, ptr %8, align 4
  br label %24

24:                                               ; preds = %19, %10, %2
  %25 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 13
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 524288
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29, !prof !27

29:                                               ; preds = %24
  %30 = load i8, ptr %7, align 1
  %31 = or i8 %30, 16
  store i8 %31, ptr %7, align 1
  br label %32

32:                                               ; preds = %29, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_store_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @packet_parse_headers(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca %struct.flow_keys_basic, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %5 = load i16, ptr %4, align 8
  switch i16 %5, label %33 [
    i16 0, label %6
    i16 768, label %6
  ]

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, 3
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %14 = load ptr, ptr %13, align 8
  %15 = ptrtoint ptr %12 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %15, %16
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  store i16 %18, ptr %19, align 2
  %20 = getelementptr inbounds %struct.anon.76, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 44
  %23 = load ptr, ptr %22, align 16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.header_ops, ptr %23, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call zeroext i16 %27(ptr noundef %0) #19
  br label %31

31:                                               ; preds = %29, %25, %10
  %32 = phi i16 [ %30, %29 ], [ 0, %25 ], [ 0, %10 ]
  store i16 %32, ptr %4, align 8
  br label %33

33:                                               ; preds = %31, %6, %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %35 = load i16, ptr %34, align 2
  %36 = icmp eq i16 %35, -1
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false) #19
  %38 = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %0, ptr noundef nonnull @flow_keys_basic_dissector, ptr noundef nonnull %3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #19
  br i1 %38, label %39, label %50

39:                                               ; preds = %37
  %40 = load i16, ptr %3, align 4
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %44 = load ptr, ptr %43, align 8
  %45 = ptrtoint ptr %42 to i32
  %46 = ptrtoint ptr %44 to i32
  %47 = sub i32 %45, %46
  %48 = trunc i32 %47 to i16
  %49 = add i16 %40, %48
  store i16 %49, ptr %34, align 2
  br label %50

50:                                               ; preds = %39, %37, %33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_tx_timestamp(i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_partial_csum_set(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_wfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_from_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_pskb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_recv_errqueue(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_ts_and_drops(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sock_write_timestamp(ptr noundef %0, i64 noundef %1) unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %4) #19
  %5 = load i32, ptr %3, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %3, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !70
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 63
  store i64 %1, ptr %7, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !71
  %8 = load i32, ptr %3, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %10 = load i16, ptr %4, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_insert_page(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @packet_mm_open(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.packet_sock, ptr %7, i32 0, i32 15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #19, !srcloc !21
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #19, !srcloc !31
  br label %12

12:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @packet_mm_close(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.packet_sock, ptr %7, i32 0, i32 15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #19, !srcloc !21
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #19, !srcloc !81
  br label %12

12:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @packet_bind_spkt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = alloca [15 x i8], align 1
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %4) #19
  %7 = icmp eq i32 %2, 16
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %4, ptr noundef align 2 dereferenceable(14) %9, i32 14, i1 false)
  %10 = getelementptr inbounds [15 x i8], ptr %4, i32 0, i32 14
  store i8 0, ptr %10, align 1
  %11 = getelementptr inbounds %struct.packet_sock, ptr %6, i32 0, i32 12
  %12 = load i16, ptr %11, align 4
  %13 = call fastcc i32 @packet_do_bind(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 0, i16 noundef zeroext %12)
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %4) #19
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @packet_getname_spkt(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  store i16 17, ptr %1, align 2
  %8 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(14) %8, i8 0, i32 14, i1 false)
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %9 = getelementptr inbounds %struct.packet_sock, ptr %7, i32 0, i32 11
  %10 = load volatile i32, ptr %9, align 16
  %11 = tail call ptr @dev_get_by_index_rcu(ptr noundef nonnull @init_net, i32 noundef %10) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = tail call i32 @strlcpy(ptr noundef %8, ptr noundef nonnull %11, i32 noundef 14) #19
  br label %15

15:                                               ; preds = %13, %5
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !17
  br label %16

16:                                               ; preds = %15, %3
  %17 = phi i32 [ 16, %15 ], [ -95, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @packet_sendmsg_spkt(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.sockcm_cookie, align 8
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !32
  %8 = icmp eq ptr %7, null
  br i1 %8, label %203, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 16
  br i1 %12, label %203, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 18
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.sockaddr_pkt, ptr %7, i32 0, i32 2
  %17 = load i16, ptr %16, align 2
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi i16 [ %17, %15 ], [ 0, %13 ]
  %20 = getelementptr inbounds %struct.sockaddr_pkt, ptr %7, i32 0, i32 1
  %21 = getelementptr %struct.sockaddr_pkt, ptr %7, i32 0, i32 1, i32 13
  store i8 0, ptr %21, align 1
  %22 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 13
  %23 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %24 = icmp slt i32 %2, 0
  br label %25

25:                                               ; preds = %108, %18
  %26 = phi ptr [ null, %18 ], [ %73, %108 ]
  %27 = phi i32 [ 0, %18 ], [ %45, %108 ]
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  %28 = tail call ptr @dev_get_by_name_rcu(ptr noundef nonnull @init_net, ptr noundef %20) #19
  %29 = icmp eq ptr %28, null
  br i1 %29, label %198, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 14
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %198, label %35

35:                                               ; preds = %30
  %36 = load volatile i32, ptr %22, align 4
  %37 = and i32 %36, 1048576
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39, !prof !27

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 15
  %41 = load i64, ptr %40, align 16
  %42 = and i64 %41, 16384
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %198, label %44

44:                                               ; preds = %39, %35
  %45 = phi i32 [ %27, %35 ], [ 4, %39 ]
  %46 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 20
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 19
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = add i32 %45, 4
  %52 = add i32 %51, %47
  %53 = add i32 %52, %50
  %54 = icmp ult i32 %53, %2
  br i1 %54, label %198, label %55

55:                                               ; preds = %44
  %56 = icmp eq ptr %26, null
  br i1 %56, label %57, label %112

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 21
  %59 = load i16, ptr %58, align 8
  %60 = zext i16 %59 to i32
  %61 = add nuw nsw i32 %60, %50
  %62 = and i32 %61, 131056
  %63 = add nuw nsw i32 %62, 16
  %64 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 22
  %65 = load i16, ptr %64, align 2
  %66 = zext i16 %65 to i32
  %67 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 44
  %68 = load ptr, ptr %67, align 16
  %69 = icmp eq ptr %68, null
  %70 = select i1 %69, i32 0, i32 %50
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !17
  %71 = add i32 %66, %2
  %72 = add i32 %71, %63
  %73 = tail call ptr @sock_wmalloc(ptr noundef %6, i32 noundef %72, i32 noundef 0, i32 noundef 3264) #19
  %74 = icmp eq ptr %73, null
  br i1 %74, label %203, label %75

75:                                               ; preds = %57
  %76 = getelementptr inbounds %struct.sk_buff, ptr %73, i32 0, i32 17
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 %63
  store ptr %78, ptr %76, align 4
  %79 = getelementptr inbounds %struct.sk_buff, ptr %73, i32 0, i32 14
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr i8, ptr %80, i32 %63
  store ptr %81, ptr %79, align 8
  %82 = getelementptr inbounds %struct.sk_buff, ptr %73, i32 0, i32 16
  %83 = load ptr, ptr %82, align 8
  %84 = ptrtoint ptr %78 to i32
  %85 = ptrtoint ptr %83 to i32
  %86 = sub i32 %84, %85
  %87 = trunc i32 %86 to i16
  %88 = getelementptr inbounds %struct.sk_buff, ptr %73, i32 0, i32 13, i32 0, i32 18
  store i16 %87, ptr %88, align 4
  %89 = icmp eq i32 %70, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %75
  %91 = sub nsw i32 0, %70
  %92 = getelementptr i8, ptr %78, i32 %91
  store ptr %92, ptr %76, align 4
  %93 = getelementptr i8, ptr %81, i32 %91
  store ptr %93, ptr %79, align 8
  %94 = icmp ugt i32 %70, %2
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = ptrtoint ptr %92 to i32
  %97 = sub i32 %96, %85
  %98 = trunc i32 %97 to i16
  store i16 %98, ptr %88, align 4
  br label %99

99:                                               ; preds = %95, %90, %75
  %100 = tail call ptr @skb_put(ptr noundef nonnull %73, i32 noundef %2) #19
  %101 = load i1, ptr @check_copy_size.__already_done, align 1
  %102 = xor i1 %101, true
  %103 = select i1 %24, i1 %102, i1 false
  br i1 %103, label %104, label %105, !prof !23

104:                                              ; preds = %99
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #19
  br label %105

105:                                              ; preds = %104, %99
  br i1 %24, label %108, label %106, !prof !23

106:                                              ; preds = %105
  %107 = tail call i32 @_copy_from_iter(ptr noundef %100, i32 noundef %2, ptr noundef %23) #19
  br label %108

108:                                              ; preds = %106, %105
  %109 = phi i32 [ %107, %106 ], [ 0, %105 ]
  %110 = icmp eq i32 %109, %2
  br i1 %110, label %25, label %111, !prof !27

111:                                              ; preds = %108
  tail call void @iov_iter_revert(ptr noundef %23, i32 noundef %109) #19
  br label %200

112:                                              ; preds = %55
  %113 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 20
  %114 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 19
  %115 = zext i16 %49 to i32
  %116 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 17
  %117 = load ptr, ptr %116, align 4
  %118 = icmp sgt i32 %115, %2
  br i1 %118, label %119, label %141, !prof !23

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 33
  %121 = load i8, ptr %120, align 2
  %122 = zext i8 %121 to i32
  %123 = icmp sgt i32 %122, %2
  br i1 %123, label %198, label %124

124:                                              ; preds = %119
  %125 = tail call zeroext i1 @capable(i32 noundef 17) #19
  br i1 %125, label %126, label %131

126:                                              ; preds = %124
  %127 = getelementptr i8, ptr %117, i32 %2
  %128 = load i16, ptr %114, align 2
  %129 = zext i16 %128 to i32
  %130 = sub i32 %129, %2
  tail call void @llvm.memset.p0.i32(ptr align 1 %127, i8 0, i32 %130, i1 false) #19
  br label %141

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 44
  %133 = load ptr, ptr %132, align 16
  %134 = icmp eq ptr %133, null
  br i1 %134, label %198, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.header_ops, ptr %133, i32 0, i32 4
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %198, label %139

139:                                              ; preds = %135
  %140 = tail call zeroext i1 %137(ptr noundef %117, i32 noundef %2) #19
  br i1 %140, label %141, label %198

141:                                              ; preds = %139, %126, %112
  %142 = load i32, ptr %113, align 4
  %143 = load i16, ptr %114, align 2
  %144 = zext i16 %143 to i32
  %145 = add i32 %142, %45
  %146 = add i32 %145, %144
  %147 = icmp ult i32 %146, %2
  br i1 %147, label %148, label %166

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 32
  %150 = load i16, ptr %149, align 16
  %151 = icmp eq i16 %150, 1
  br i1 %151, label %152, label %198, !prof !27

152:                                              ; preds = %148
  %153 = load ptr, ptr %116, align 4
  %154 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 16
  %155 = load ptr, ptr %154, align 8
  %156 = ptrtoint ptr %153 to i32
  %157 = ptrtoint ptr %155 to i32
  %158 = sub i32 %156, %157
  %159 = trunc i32 %158 to i16
  %160 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 13, i32 0, i32 19
  store i16 %159, ptr %160, align 2
  %161 = and i32 %158, 65535
  %162 = getelementptr i8, ptr %155, i32 %161
  %163 = getelementptr inbounds %struct.ethhdr, ptr %162, i32 0, i32 2
  %164 = load i16, ptr %163, align 1
  %165 = icmp eq i16 %164, 129
  br i1 %165, label %166, label %198

166:                                              ; preds = %152, %141
  %167 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 65
  %168 = load i16, ptr %167, align 8
  store i64 0, ptr %4, align 8
  %169 = getelementptr inbounds i8, ptr %4, i32 8
  store i32 0, ptr %169, align 8
  %170 = getelementptr inbounds i8, ptr %4, i32 12
  store i16 %168, ptr %170, align 4
  %171 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 5
  %172 = load i32, ptr %171, align 8
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %166
  %175 = call i32 @sock_cmsg_send(ptr noundef %6, ptr noundef %1, ptr noundef nonnull %4) #19
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %198, !prof !27

177:                                              ; preds = %174
  %178 = load i64, ptr %4, align 8
  br label %179

179:                                              ; preds = %177, %166
  %180 = phi i64 [ %178, %177 ], [ 0, %166 ]
  %181 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 13, i32 0, i32 16
  store i16 %19, ptr %181, align 8
  %182 = getelementptr inbounds %struct.anon.76, ptr %26, i32 0, i32 2
  store ptr %28, ptr %182, align 8
  %183 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 33
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 13, i32 0, i32 5
  store i32 %184, ptr %185, align 8
  %186 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 34
  %187 = load i32, ptr %186, align 8
  %188 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 13, i32 0, i32 11
  store i32 %187, ptr %188, align 4
  %189 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 2
  store i64 %180, ptr %189, align 8
  %190 = load i16, ptr %170, align 4
  call fastcc void @skb_setup_tx_timestamp(ptr noundef nonnull %26, i16 noundef zeroext %190)
  %191 = icmp eq i32 %45, 4
  br i1 %191, label %192, label %196, !prof !23

192:                                              ; preds = %179
  %193 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 13
  %194 = load i16, ptr %193, align 8
  %195 = or i16 %194, 4096
  store i16 %195, ptr %193, align 8
  br label %196

196:                                              ; preds = %192, %179
  call fastcc void @packet_parse_headers(ptr noundef nonnull %26, ptr noundef %0)
  %197 = call i32 @dev_queue_xmit(ptr noundef nonnull %26) #19
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !17
  br label %203

198:                                              ; preds = %174, %152, %148, %139, %135, %131, %119, %44, %39, %30, %25
  %199 = phi i32 [ %175, %174 ], [ -22, %139 ], [ -90, %152 ], [ -22, %119 ], [ -22, %135 ], [ -22, %131 ], [ -90, %148 ], [ -93, %39 ], [ -100, %30 ], [ -90, %44 ], [ -19, %25 ]
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !17
  br label %200

200:                                              ; preds = %198, %111
  %201 = phi ptr [ %26, %198 ], [ %73, %111 ]
  %202 = phi i32 [ %199, %198 ], [ -14, %111 ]
  call void @kfree_skb_reason(ptr noundef %201, i32 noundef 0) #19
  br label %203

203:                                              ; preds = %200, %196, %57, %9, %3
  %204 = phi i32 [ %202, %200 ], [ %2, %196 ], [ -22, %9 ], [ -107, %3 ], [ -105, %57 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret i32 %204
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_wmalloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind readnone }
attributes #23 = { nounwind readonly willreturn }
attributes #24 = { nounwind allocsize(2) }

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
!9 = !{i64 2149240554}
!10 = !{i64 426145, i64 426206}
!11 = !{i64 444845}
!12 = !{i64 429162}
!13 = !{i64 2149048687}
!14 = !{i64 2149044511}
!15 = !{i64 2149044586, i64 2149044613, i64 2149044660, i64 2149044682, i64 2149044710, i64 2149044730}
!16 = !{i64 2149071690}
!17 = !{i64 2149240771}
!18 = !{i64 2157158804, i64 2157159292, i64 2157158841, i64 2157158897, i64 2157158931, i64 2157158955, i64 2157158996, i64 2157159017, i64 2157159045, i64 2157159079}
!19 = !{i64 2157165261}
!20 = !{i64 2148134745}
!21 = !{i64 530906, i64 2148020877, i64 2148020903, i64 2148020950, i64 2148020972, i64 2148021000, i64 2148021020}
!22 = !{i64 2148036904, i64 2148036936, i64 2148036965, i64 2148036999, i64 2148037030, i64 2148037053}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2157155275}
!25 = !{i64 2157158083}
!26 = !{i64 2148034547, i64 2148034579, i64 2148034608, i64 2148034642, i64 2148034673, i64 2148034696}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2149938134}
!29 = !{i64 2149919032}
!30 = !{i64 2153491364, i64 2153491852, i64 2153491401, i64 2153491457, i64 2153491491, i64 2153491515, i64 2153491556, i64 2153491577, i64 2153491605, i64 2153491639}
!31 = !{i64 2148033089, i64 2148033115, i64 2148033144, i64 2148033178, i64 2148033209, i64 2148033232}
!32 = !{!"auto-init"}
!33 = !{i64 2149277455}
!34 = !{i64 2157179438}
!35 = !{i64 3702058}
!36 = !{i64 3702255}
!37 = !{i64 2151187534}
!38 = !{i64 2157319081, i64 2157319361, i64 2157319695, i64 2157320029}
!39 = !{i64 2157327288, i64 2157327568, i64 2157327902, i64 2157328236}
!40 = !{i64 2151205946, i64 2151205971}
!41 = !{i64 2157278855, i64 2157279135, i64 2157279469, i64 2157279803}
!42 = !{i64 2148317103}
!43 = !{i64 540353, i64 540370, i64 540394, i64 540420, i64 540438}
!44 = !{i64 2148317447}
!45 = !{i8 0, i8 2}
!46 = !{i64 2157287819, i64 2157288099, i64 2157288433, i64 2157288767}
!47 = !{i64 2151206524, i64 2151206549}
!48 = !{i64 2148130911}
!49 = !{i64 2148033773, i64 2148033805, i64 2148033834, i64 2148033868, i64 2148033899, i64 2148033922}
!50 = !{i64 2148131114}
!51 = !{!"branch_weights", i32 4000000, i32 4001}
!52 = !{i32 0, i32 33}
!53 = !{i64 2157063287}
!54 = !{i64 2157066592}
!55 = !{i64 2157068894}
!56 = !{i64 2157070005, i64 2157070493, i64 2157070042, i64 2157070098, i64 2157070132, i64 2157070156, i64 2157070197, i64 2157070218, i64 2157070246, i64 2157070280}
!57 = !{i64 2149056569}
!58 = !{i64 1559993, i64 1560016, i64 1560036, i64 1560060, i64 1560076}
!59 = !{i64 2149094172}
!60 = !{i64 2157207008, i64 2157207496, i64 2157207045, i64 2157207101, i64 2157207135, i64 2157207159, i64 2157207200, i64 2157207221, i64 2157207249, i64 2157207283}
!61 = !{i64 2157207950}
!62 = !{i64 2157208784}
!63 = !{i64 2149055764}
!64 = !{i64 1558978}
!65 = !{i64 2149093733}
!66 = !{i64 2157063049}
!67 = !{i64 2157062703}
!68 = !{i64 2157062870}
!69 = !{i64 2157066733}
!70 = !{i64 2149584276}
!71 = !{i64 2149584577}
!72 = !{i64 2157071626, i64 2157072114, i64 2157071663, i64 2157071719, i64 2157071753, i64 2157071777, i64 2157071818, i64 2157071839, i64 2157071867, i64 2157071901}
!73 = !{i64 2157054508, i64 2157054995, i64 2157054545, i64 2157054601, i64 2157054635, i64 2157054659, i64 2157054700, i64 2157054721, i64 2157054749, i64 2157054783}
!74 = !{i64 2157055347}
!75 = !{i64 2157055488}
!76 = !{i64 2157056224, i64 2157056711, i64 2157056261, i64 2157056317, i64 2157056351, i64 2157056375, i64 2157056416, i64 2157056437, i64 2157056465, i64 2157056499}
!77 = !{i64 2157243153, i64 2157243641, i64 2157243190, i64 2157243246, i64 2157243280, i64 2157243304, i64 2157243345, i64 2157243366, i64 2157243394, i64 2157243428}
!78 = !{i64 2157048020}
!79 = !{i64 2157057696, i64 2157058183, i64 2157057733, i64 2157057789, i64 2157057823, i64 2157057847, i64 2157057888, i64 2157057909, i64 2157057937, i64 2157057971}
!80 = !{i64 2157058535}
!81 = !{i64 2148035446, i64 2148035472, i64 2148035501, i64 2148035535, i64 2148035566, i64 2148035589}
