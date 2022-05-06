; ModuleID = '/llk/IR/net/core/flow_dissector.c_pt.bc'
source_filename = "../net/core/flow_dissector.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_flow_dissector_init:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_flow_dissector_init\22\09\09\09\09\09"
module asm "__kstrtabns_skb_flow_dissector_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___skb_flow_get_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22__skb_flow_get_ports\22\09\09\09\09\09"
module asm "__kstrtabns___skb_flow_get_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_flow_get_icmp_tci:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_flow_get_icmp_tci\22\09\09\09\09\09"
module asm "__kstrtabns_skb_flow_get_icmp_tci:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_flow_dissect_meta:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_flow_dissect_meta\22\09\09\09\09\09"
module asm "__kstrtabns_skb_flow_dissect_meta:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_flow_dissect_ct:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_flow_dissect_ct\22\09\09\09\09\09"
module asm "__kstrtabns_skb_flow_dissect_ct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_flow_dissect_tunnel_info:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_flow_dissect_tunnel_info\22\09\09\09\09\09"
module asm "__kstrtabns_skb_flow_dissect_tunnel_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_flow_dissect_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_flow_dissect_hash\22\09\09\09\09\09"
module asm "__kstrtabns_skb_flow_dissect_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___skb_flow_dissect:\09\09\09\09\09"
module asm "\09.asciz \09\22__skb_flow_dissect\22\09\09\09\09\09"
module asm "__kstrtabns___skb_flow_dissect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_get_u32_src:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_get_u32_src\22\09\09\09\09\09"
module asm "__kstrtabns_flow_get_u32_src:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_get_u32_dst:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_get_u32_dst\22\09\09\09\09\09"
module asm "__kstrtabns_flow_get_u32_dst:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_hash_from_keys:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_hash_from_keys\22\09\09\09\09\09"
module asm "__kstrtabns_flow_hash_from_keys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_make_flow_keys_digest:\09\09\09\09\09"
module asm "\09.asciz \09\22make_flow_keys_digest\22\09\09\09\09\09"
module asm "__kstrtabns_make_flow_keys_digest:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___skb_get_hash_symmetric:\09\09\09\09\09"
module asm "\09.asciz \09\22__skb_get_hash_symmetric\22\09\09\09\09\09"
module asm "__kstrtabns___skb_get_hash_symmetric:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___skb_get_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22__skb_get_hash\22\09\09\09\09\09"
module asm "__kstrtabns___skb_get_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_get_hash_perturb:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_get_hash_perturb\22\09\09\09\09\09"
module asm "__kstrtabns_skb_get_hash_perturb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___get_hash_from_flowi6:\09\09\09\09\09"
module asm "\09.asciz \09\22__get_hash_from_flowi6\22\09\09\09\09\09"
module asm "__kstrtabns___get_hash_from_flowi6:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_keys_dissector:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_keys_dissector\22\09\09\09\09\09"
module asm "__kstrtabns_flow_keys_dissector:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_keys_basic_dissector:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_keys_basic_dissector\22\09\09\09\09\09"
module asm "__kstrtabns_flow_keys_basic_dissector:\09\09\09\09\09"
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
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.68, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.68 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.static_key_true = type { %struct.static_key }
%struct.flow_dissector_key = type { i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.189, %union.anon.190, [48 x i8], %union.anon.191, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.193, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.189 = type { ptr }
%union.anon.190 = type { i64 }
%union.anon.191 = type { %struct.anon.192 }
%struct.anon.192 = type { i32, ptr }
%union.anon.193 = type { %struct.anon.194 }
%struct.anon.194 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.195, i32, i32, i32, i16, i16, %union.anon.197, %union.anon.198, %union.anon.199, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.195 = type { i32 }
%union.anon.197 = type { i32 }
%union.anon.198 = type { i32 }
%union.anon.199 = type { i16 }
%struct.icmphdr = type { i8, i8, i16, %union.anon.211 }
%union.anon.211 = type { i32 }
%struct.anon.210 = type { i8, i8 }
%struct.flow_dissector_key_icmp = type { %struct.anon.210, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.callback_head = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.223 }
%union.anon.223 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.171, i16, i8, i8, i32, i16, i16 }
%union.anon.171 = type { %struct.anon.173 }
%struct.anon.173 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.54 }
%union.anon.54 = type { [4 x i32] }
%struct.dst_cache = type { ptr, i32 }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.anon.215 = type { i16, i16 }
%struct.flow_dissector_key_ip = type { i8, i8 }
%struct.flow_dissector_key_enc_opts = type { [255 x i8], i8, i16 }
%struct.bpf_flow_keys = type { i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, %union.anon.216, i32, i32 }
%union.anon.216 = type { %struct.anon.218 }
%struct.anon.218 = type { [4 x i32], [4 x i32] }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.102 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { %struct.anon.104, [0 x %struct.sock_filter] }
%struct.anon.104 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.gre_base_hdr = type { i16, i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.anon.225 = type { %struct.batadv_unicast_packet, %struct.ethhdr }
%struct.batadv_unicast_packet = type { i8, i8, i8, i8, [6 x i8] }
%struct.anon.224 = type { [6 x i8], [4 x i8], [6 x i8], [4 x i8] }
%struct.arphdr = type { i16, i16, i8, i8, i16 }
%struct.mpls_label = type { i32 }
%struct.bpf_flow_dissector = type { ptr, ptr, ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.vlan_hdr = type { i16, i16 }
%struct.anon.222 = type { %struct.pppoe_hdr, i16 }
%struct.pppoe_hdr = type { i8, i8, i16, i16, [0 x %struct.pppoe_tag] }
%struct.pppoe_tag = type { i16, i16, [0 x i8] }
%struct.tipc_basic_hdr = type { [4 x i32] }
%struct.ptp_header = type <{ i8, i8, i16, i8, i8, [2 x i8], i64, i32, %struct.port_identity, i16, i8, i8 }>
%struct.port_identity = type { %struct.clock_identity, i16 }
%struct.clock_identity = type { [8 x i8] }
%struct.frag_hdr = type { i8, i8, i16, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.188, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.188 = type { ptr }
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
%struct.dsa_port = type { %union.anon.167, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.167 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.156 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.156 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { ptr, %union.anon.107 }
%union.anon.107 = type { i64 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_vlan = type { %union.anon.220, i16 }
%union.anon.220 = type { %struct.anon.221 }
%struct.anon.221 = type { i16 }
%struct.flow_dissector_mpls_lse = type { i32 }
%struct.flow_dissector_key_mpls = type { [7 x %struct.flow_dissector_mpls_lse], i8 }
%struct.flow_dissector_key_arp = type { i32, i32, i8, [6 x i8], [6 x i8] }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.214 }
%union.anon.214 = type { i32 }
%struct.flow_dissector_key_addrs = type { %union.anon.219 }
%union.anon.219 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct._flow_keys_digest_data = type { i16, i8, i8, i32, i32, i32 }
%struct.flow_keys_basic = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.anon.64 = type { i16, i16 }

@__kstrtab_skb_flow_dissector_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_flow_dissector_init = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_flow_dissector_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_flow_dissector_init to i32), ptr @__kstrtab_skb_flow_dissector_init, ptr @__kstrtabns_skb_flow_dissector_init }, section "___ksymtab+skb_flow_dissector_init", align 4
@__kstrtab___skb_flow_get_ports = external dso_local constant [0 x i8], align 1
@__kstrtabns___skb_flow_get_ports = external dso_local constant [0 x i8], align 1
@__ksymtab___skb_flow_get_ports = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__skb_flow_get_ports to i32), ptr @__kstrtab___skb_flow_get_ports, ptr @__kstrtabns___skb_flow_get_ports }, section "___ksymtab+__skb_flow_get_ports", align 4
@__kstrtab_skb_flow_get_icmp_tci = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_flow_get_icmp_tci = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_flow_get_icmp_tci = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_flow_get_icmp_tci to i32), ptr @__kstrtab_skb_flow_get_icmp_tci, ptr @__kstrtabns_skb_flow_get_icmp_tci }, section "___ksymtab+skb_flow_get_icmp_tci", align 4
@__kstrtab_skb_flow_dissect_meta = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_flow_dissect_meta = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_flow_dissect_meta = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_flow_dissect_meta to i32), ptr @__kstrtab_skb_flow_dissect_meta, ptr @__kstrtabns_skb_flow_dissect_meta }, section "___ksymtab+skb_flow_dissect_meta", align 4
@__kstrtab_skb_flow_dissect_ct = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_flow_dissect_ct = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_flow_dissect_ct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_flow_dissect_ct to i32), ptr @__kstrtab_skb_flow_dissect_ct, ptr @__kstrtabns_skb_flow_dissect_ct }, section "___ksymtab+skb_flow_dissect_ct", align 4
@__kstrtab_skb_flow_dissect_tunnel_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_flow_dissect_tunnel_info = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_flow_dissect_tunnel_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_flow_dissect_tunnel_info to i32), ptr @__kstrtab_skb_flow_dissect_tunnel_info, ptr @__kstrtabns_skb_flow_dissect_tunnel_info }, section "___ksymtab+skb_flow_dissect_tunnel_info", align 4
@__kstrtab_skb_flow_dissect_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_flow_dissect_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_flow_dissect_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_flow_dissect_hash to i32), ptr @__kstrtab_skb_flow_dissect_hash, ptr @__kstrtabns_skb_flow_dissect_hash }, section "___ksymtab+skb_flow_dissect_hash", align 4
@__skb_flow_dissect.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [26 x i8] c"net/core/flow_dissector.c\00", align 1
@init_net = external dso_local global %struct.net, align 64
@__kstrtab___skb_flow_dissect = external dso_local constant [0 x i8], align 1
@__kstrtabns___skb_flow_dissect = external dso_local constant [0 x i8], align 1
@__ksymtab___skb_flow_dissect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__skb_flow_dissect to i32), ptr @__kstrtab___skb_flow_dissect, ptr @__kstrtabns___skb_flow_dissect }, section "___ksymtab+__skb_flow_dissect", align 4
@__kstrtab_flow_get_u32_src = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_get_u32_src = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_get_u32_src = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_get_u32_src to i32), ptr @__kstrtab_flow_get_u32_src, ptr @__kstrtabns_flow_get_u32_src }, section "___ksymtab+flow_get_u32_src", align 4
@__kstrtab_flow_get_u32_dst = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_get_u32_dst = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_get_u32_dst = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_get_u32_dst to i32), ptr @__kstrtab_flow_get_u32_dst, ptr @__kstrtabns_flow_get_u32_dst }, section "___ksymtab+flow_get_u32_dst", align 4
@hashrnd = internal global %struct.siphash_key_t zeroinitializer, align 16
@__kstrtab_flow_hash_from_keys = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_hash_from_keys = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_hash_from_keys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_hash_from_keys to i32), ptr @__kstrtab_flow_hash_from_keys, ptr @__kstrtabns_flow_hash_from_keys }, section "___ksymtab+flow_hash_from_keys", align 4
@__kstrtab_make_flow_keys_digest = external dso_local constant [0 x i8], align 1
@__kstrtabns_make_flow_keys_digest = external dso_local constant [0 x i8], align 1
@__ksymtab_make_flow_keys_digest = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @make_flow_keys_digest to i32), ptr @__kstrtab_make_flow_keys_digest, ptr @__kstrtabns_make_flow_keys_digest }, section "___ksymtab+make_flow_keys_digest", align 4
@flow_keys_dissector_symmetric = internal global %struct.flow_dissector zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab___skb_get_hash_symmetric = external dso_local constant [0 x i8], align 1
@__kstrtabns___skb_get_hash_symmetric = external dso_local constant [0 x i8], align 1
@__ksymtab___skb_get_hash_symmetric = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__skb_get_hash_symmetric to i32), ptr @__kstrtab___skb_get_hash_symmetric, ptr @__kstrtabns___skb_get_hash_symmetric }, section "___ksymtab_gpl+__skb_get_hash_symmetric", align 4
@__kstrtab___skb_get_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns___skb_get_hash = external dso_local constant [0 x i8], align 1
@__ksymtab___skb_get_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__skb_get_hash to i32), ptr @__kstrtab___skb_get_hash, ptr @__kstrtabns___skb_get_hash }, section "___ksymtab+__skb_get_hash", align 4
@__kstrtab_skb_get_hash_perturb = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_get_hash_perturb = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_get_hash_perturb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_get_hash_perturb to i32), ptr @__kstrtab_skb_get_hash_perturb, ptr @__kstrtabns_skb_get_hash_perturb }, section "___ksymtab+skb_get_hash_perturb", align 4
@__kstrtab___get_hash_from_flowi6 = external dso_local constant [0 x i8], align 1
@__kstrtabns___get_hash_from_flowi6 = external dso_local constant [0 x i8], align 1
@__ksymtab___get_hash_from_flowi6 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__get_hash_from_flowi6 to i32), ptr @__kstrtab___get_hash_from_flowi6, ptr @__kstrtabns___get_hash_from_flowi6 }, section "___ksymtab+__get_hash_from_flowi6", align 4
@flow_keys_dissector = dso_local global %struct.flow_dissector zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_flow_keys_dissector = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_keys_dissector = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_keys_dissector = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_keys_dissector to i32), ptr @__kstrtab_flow_keys_dissector, ptr @__kstrtabns_flow_keys_dissector }, section "___ksymtab+flow_keys_dissector", align 4
@flow_keys_basic_dissector = dso_local global %struct.flow_dissector zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_flow_keys_basic_dissector = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_keys_basic_dissector = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_keys_basic_dissector = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_keys_basic_dissector to i32), ptr @__kstrtab_flow_keys_basic_dissector, ptr @__kstrtabns_flow_keys_basic_dissector }, section "___ksymtab+flow_keys_basic_dissector", align 4
@__initcall__kmod_flow_dissector__600_1852_init_default_flow_dissectors1 = internal global ptr @init_default_flow_dissectors, section ".initcall1.init", align 4
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__flow_hash_secret_init.___done = internal global i8 0, section ".data.once", align 1
@__flow_hash_secret_init.___once_key = internal global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@flow_keys_dissector_keys = internal constant [9 x %struct.flow_dissector_key] [%struct.flow_dissector_key zeroinitializer, %struct.flow_dissector_key { i32 1, i32 8 }, %struct.flow_dissector_key { i32 2, i32 36 }, %struct.flow_dissector_key { i32 3, i32 36 }, %struct.flow_dissector_key { i32 8, i32 36 }, %struct.flow_dissector_key { i32 4, i32 28 }, %struct.flow_dissector_key { i32 10, i32 16 }, %struct.flow_dissector_key { i32 11, i32 12 }, %struct.flow_dissector_key { i32 12, i32 24 }], align 4
@flow_keys_dissector_symmetric_keys = internal constant [5 x %struct.flow_dissector_key] [%struct.flow_dissector_key zeroinitializer, %struct.flow_dissector_key { i32 1, i32 8 }, %struct.flow_dissector_key { i32 2, i32 36 }, %struct.flow_dissector_key { i32 3, i32 36 }, %struct.flow_dissector_key { i32 4, i32 28 }], align 4
@flow_keys_basic_dissector_keys = internal constant [2 x %struct.flow_dissector_key] [%struct.flow_dissector_key zeroinitializer, %struct.flow_dissector_key { i32 1, i32 8 }], align 4
@llvm.compiler.used = appending global [19 x ptr] [ptr @__initcall__kmod_flow_dissector__600_1852_init_default_flow_dissectors1, ptr @__ksymtab___get_hash_from_flowi6, ptr @__ksymtab___skb_flow_dissect, ptr @__ksymtab___skb_flow_get_ports, ptr @__ksymtab___skb_get_hash, ptr @__ksymtab___skb_get_hash_symmetric, ptr @__ksymtab_flow_get_u32_dst, ptr @__ksymtab_flow_get_u32_src, ptr @__ksymtab_flow_hash_from_keys, ptr @__ksymtab_flow_keys_basic_dissector, ptr @__ksymtab_flow_keys_dissector, ptr @__ksymtab_make_flow_keys_digest, ptr @__ksymtab_skb_flow_dissect_ct, ptr @__ksymtab_skb_flow_dissect_hash, ptr @__ksymtab_skb_flow_dissect_meta, ptr @__ksymtab_skb_flow_dissect_tunnel_info, ptr @__ksymtab_skb_flow_dissector_init, ptr @__ksymtab_skb_flow_get_icmp_tci, ptr @__ksymtab_skb_get_hash_perturb], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_flow_dissector_init(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(60) %0, i8 0, i32 60, i1 false)
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %19, %3
  %6 = phi i32 [ %25, %19 ], [ 0, %3 ]
  %7 = phi ptr [ %26, %19 ], [ %1, %3 ]
  %8 = getelementptr inbounds %struct.flow_dissector_key, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 65535
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/flow_dissector.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 56, 0\0A.popsection", ""() #15, !srcloc !10
  unreachable

12:                                               ; preds = %5
  %13 = load i32, ptr %7, align 4
  %14 = load i32, ptr %0, align 4
  %15 = shl nuw i32 1, %13
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18, !prof !11

18:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/flow_dissector.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 58, 0\0A.popsection", ""() #15, !srcloc !12
  unreachable

19:                                               ; preds = %12
  %20 = or i32 %14, %15
  store i32 %20, ptr %0, align 4
  %21 = load i32, ptr %8, align 4
  %22 = trunc i32 %21 to i16
  %23 = load i32, ptr %7, align 4
  %24 = getelementptr %struct.flow_dissector, ptr %0, i32 0, i32 1, i32 %23
  store i16 %22, ptr %24, align 2
  %25 = add nuw i32 %6, 1
  %26 = getelementptr %struct.flow_dissector_key, ptr %7, i32 1
  %27 = icmp eq i32 %25, %2
  br i1 %27, label %28, label %5

28:                                               ; preds = %19
  %29 = load i32, ptr %0, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33, !prof !9

32:                                               ; preds = %28, %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/flow_dissector.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 68, 0\0A.popsection", ""() #15, !srcloc !13
  unreachable

33:                                               ; preds = %28
  %34 = and i32 %29, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37, !prof !9

36:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/flow_dissector.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 70, 0\0A.popsection", ""() #15, !srcloc !14
  unreachable

37:                                               ; preds = %33
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__skb_flow_get_ports(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef readonly %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  switch i8 %2, label %8 [
    i8 6, label %9
    i8 17, label %9
    i8 33, label %9
    i8 50, label %9
    i8 -124, label %9
    i8 -120, label %9
    i8 51, label %7
  ]

7:                                                ; preds = %5
  br label %9

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %8, %7, %5, %5, %5, %5, %5, %5
  %10 = phi i1 [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %5 ], [ true, %7 ], [ false, %8 ]
  %11 = phi i32 [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 4, %7 ], [ -22, %8 ]
  %12 = icmp eq ptr %3, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %17, %19
  br label %21

21:                                               ; preds = %13, %9
  %22 = phi ptr [ %3, %9 ], [ %15, %13 ]
  %23 = phi i32 [ %4, %9 ], [ %20, %13 ]
  br i1 %10, label %24, label %40

24:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !15
  %25 = add i32 %11, %1
  %26 = sub i32 %23, %25
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %33, !prof !9

28:                                               ; preds = %24
  %29 = icmp eq ptr %0, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %28
  %31 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %25, ptr noundef nonnull %6, i32 noundef 4) #15
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %36, label %37

33:                                               ; preds = %24
  %34 = getelementptr i8, ptr %22, i32 %25
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %30, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  br label %40

37:                                               ; preds = %33, %30
  %38 = phi ptr [ %34, %33 ], [ %6, %30 ]
  %39 = load i32, ptr %38, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  br label %40

40:                                               ; preds = %37, %36, %21
  %41 = phi i32 [ %39, %37 ], [ 0, %36 ], [ 0, %21 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @skb_flow_get_icmp_tci(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.icmphdr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  store i64 0, ptr %6, align 8, !annotation !15
  %7 = sub i32 %4, %3
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %14, !prof !9

9:                                                ; preds = %5
  %10 = icmp eq ptr %0, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %9
  %12 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %3, ptr noundef nonnull %6, i32 noundef 8) #15
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %33, label %17

14:                                               ; preds = %5
  %15 = getelementptr i8, ptr %2, i32 %3
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %14, %11
  %18 = phi ptr [ %15, %14 ], [ %6, %11 ]
  %19 = load i8, ptr %18, align 4
  store i8 %19, ptr %1, align 2
  %20 = getelementptr inbounds %struct.icmphdr, ptr %18, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr inbounds %struct.anon.210, ptr %1, i32 0, i32 1
  store i8 %21, ptr %22, align 1
  %23 = load i8, ptr %18, align 4
  switch i8 %23, label %30 [
    i8 8, label %24
    i8 0, label %24
    i8 13, label %24
    i8 14, label %24
    i8 -128, label %24
    i8 -127, label %24
  ]

24:                                               ; preds = %17, %17, %17, %17, %17, %17
  %25 = getelementptr inbounds %struct.icmphdr, ptr %18, i32 0, i32 3
  %26 = load i16, ptr %25, align 4
  %27 = icmp eq i16 %26, 0
  %28 = call i16 @llvm.bswap.i16(i16 %26)
  %29 = select i1 %27, i16 1, i16 %28
  br label %30

30:                                               ; preds = %24, %17
  %31 = phi i16 [ %29, %24 ], [ 0, %17 ]
  %32 = getelementptr inbounds %struct.flow_dissector_key_icmp, ptr %1, i32 0, i32 1
  store i16 %31, ptr %32, align 2
  br label %33

33:                                               ; preds = %30, %14, %11, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @skb_flow_dissect_meta(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 25
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %2, i32 %10
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %11, align 4
  br label %14

14:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @skb_flow_dissect_ct(ptr nocapture %0, ptr nocapture %1, ptr nocapture %2, ptr nocapture %3, i32 %4, i1 zeroext %5, i16 zeroext %6) #5 {
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @skb_flow_dissect_tunnel_info(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, 25673728
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %148, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, -2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %148, label %12

12:                                               ; preds = %7
  %13 = inttoptr i32 %10 to ptr
  %14 = getelementptr inbounds %struct.dst_entry, ptr %13, i32 0, i32 7
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 128
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.metadata_dst, ptr %13, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.metadata_dst, ptr %13, i32 0, i32 2
  br label %32

24:                                               ; preds = %18, %12
  %25 = getelementptr inbounds %struct.dst_entry, ptr %13, i32 0, i32 13
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %148, label %28

28:                                               ; preds = %24
  %29 = load i16, ptr %26, align 4
  switch i16 %29, label %148 [
    i16 2, label %30
    i16 4, label %30
  ]

30:                                               ; preds = %28, %28
  %31 = getelementptr inbounds %struct.lwtunnel_state, ptr %26, i32 0, i32 7
  br label %32

32:                                               ; preds = %30, %22
  %33 = phi ptr [ %23, %22 ], [ %31, %30 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %148, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.ip_tunnel_info, ptr %33, i32 0, i32 3
  %37 = load i8, ptr %36, align 1
  %38 = and i8 %37, 2
  %39 = icmp eq i8 %38, 0
  %40 = and i32 %4, 131072
  %41 = icmp eq i32 %40, 0
  br i1 %39, label %42, label %64

42:                                               ; preds = %35
  br i1 %41, label %50, label %43

43:                                               ; preds = %42
  %44 = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 17
  %45 = load i16, ptr %44, align 2
  %46 = zext i16 %45 to i32
  %47 = getelementptr i8, ptr %2, i32 %46
  %48 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %47, i32 0, i32 1
  store i16 2, ptr %48, align 2
  %49 = load i32, ptr %1, align 4
  br label %50

50:                                               ; preds = %43, %42
  %51 = phi i32 [ %4, %42 ], [ %49, %43 ]
  %52 = and i32 %51, 32768
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %84, label %54

54:                                               ; preds = %50
  %55 = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 15
  %56 = load i16, ptr %55, align 2
  %57 = zext i16 %56 to i32
  %58 = getelementptr i8, ptr %2, i32 %57
  %59 = getelementptr inbounds %struct.ip_tunnel_key, ptr %33, i32 0, i32 1
  %60 = load i32, ptr %59, align 8
  store i32 %60, ptr %58, align 4
  %61 = getelementptr inbounds %struct.ip_tunnel_key, ptr %33, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %58, i32 0, i32 1
  store i32 %62, ptr %63, align 4
  br label %84

64:                                               ; preds = %35
  br i1 %41, label %72, label %65

65:                                               ; preds = %64
  %66 = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 17
  %67 = load i16, ptr %66, align 2
  %68 = zext i16 %67 to i32
  %69 = getelementptr i8, ptr %2, i32 %68
  %70 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %69, i32 0, i32 1
  store i16 3, ptr %70, align 2
  %71 = load i32, ptr %1, align 4
  br label %72

72:                                               ; preds = %65, %64
  %73 = phi i32 [ %4, %64 ], [ %71, %65 ]
  %74 = and i32 %73, 65536
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %72
  %77 = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 16
  %78 = load i16, ptr %77, align 2
  %79 = zext i16 %78 to i32
  %80 = getelementptr i8, ptr %2, i32 %79
  %81 = getelementptr inbounds %struct.ip_tunnel_key, ptr %33, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %80, ptr noundef align 8 dereferenceable(16) %81, i32 16, i1 false)
  %82 = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %80, i32 0, i32 1
  %83 = getelementptr inbounds %struct.ip_tunnel_key, ptr %33, i32 0, i32 1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %82, ptr noundef align 8 dereferenceable(16) %83, i32 16, i1 false)
  br label %84

84:                                               ; preds = %76, %72, %54, %50
  %85 = load i32, ptr %1, align 4
  %86 = and i32 %85, 16384
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %84
  %89 = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 14
  %90 = load i16, ptr %89, align 2
  %91 = zext i16 %90 to i32
  %92 = getelementptr i8, ptr %2, i32 %91
  %93 = load i64, ptr %33, align 8
  %94 = lshr i64 %93, 32
  %95 = trunc i64 %94 to i32
  store i32 %95, ptr %92, align 4
  %96 = load i32, ptr %1, align 4
  br label %97

97:                                               ; preds = %88, %84
  %98 = phi i32 [ %96, %88 ], [ %85, %84 ]
  %99 = and i32 %98, 262144
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %97
  %102 = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 18
  %103 = load i16, ptr %102, align 2
  %104 = zext i16 %103 to i32
  %105 = getelementptr i8, ptr %2, i32 %104
  %106 = getelementptr inbounds %struct.ip_tunnel_key, ptr %33, i32 0, i32 6
  %107 = load i16, ptr %106, align 8
  store i16 %107, ptr %105, align 4
  %108 = getelementptr inbounds %struct.ip_tunnel_key, ptr %33, i32 0, i32 7
  %109 = load i16, ptr %108, align 2
  %110 = getelementptr inbounds %struct.anon.215, ptr %105, i32 0, i32 1
  store i16 %109, ptr %110, align 2
  %111 = load i32, ptr %1, align 4
  br label %112

112:                                              ; preds = %101, %97
  %113 = phi i32 [ %111, %101 ], [ %98, %97 ]
  %114 = and i32 %113, 8388608
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %112
  %117 = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 23
  %118 = load i16, ptr %117, align 2
  %119 = zext i16 %118 to i32
  %120 = getelementptr i8, ptr %2, i32 %119
  %121 = getelementptr inbounds %struct.ip_tunnel_key, ptr %33, i32 0, i32 3
  %122 = load i8, ptr %121, align 2
  store i8 %122, ptr %120, align 1
  %123 = getelementptr inbounds %struct.ip_tunnel_key, ptr %33, i32 0, i32 4
  %124 = load i8, ptr %123, align 1
  %125 = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %120, i32 0, i32 1
  store i8 %124, ptr %125, align 1
  %126 = load i32, ptr %1, align 4
  br label %127

127:                                              ; preds = %116, %112
  %128 = phi i32 [ %126, %116 ], [ %113, %112 ]
  %129 = and i32 %128, 16777216
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %148, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.ip_tunnel_info, ptr %33, i32 0, i32 2
  %133 = load i8, ptr %132, align 8
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %148, label %135

135:                                              ; preds = %131
  %136 = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 24
  %137 = load i16, ptr %136, align 2
  %138 = zext i16 %137 to i32
  %139 = getelementptr i8, ptr %2, i32 %138
  %140 = getelementptr inbounds %struct.flow_dissector_key_enc_opts, ptr %139, i32 0, i32 1
  store i8 %133, ptr %140, align 1
  %141 = getelementptr %struct.ip_tunnel_info, ptr %33, i32 1
  %142 = load i8, ptr %132, align 8
  %143 = zext i8 %142 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %139, ptr align 8 %141, i32 %143, i1 false) #15
  %144 = getelementptr inbounds %struct.ip_tunnel_key, ptr %33, i32 0, i32 2
  %145 = load i16, ptr %144, align 8
  %146 = and i16 %145, 88
  %147 = getelementptr inbounds %struct.flow_dissector_key_enc_opts, ptr %139, i32 0, i32 2
  store i16 %146, ptr %147, align 2
  br label %148

148:                                              ; preds = %135, %131, %127, %32, %28, %24, %7, %3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @skb_flow_dissect_hash(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, 134217728
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 27
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %2, i32 %10
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 7
  %13 = load i32, ptr %12, align 8
  store i32 %13, ptr %11, align 4
  br label %14

14:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @bpf_flow_dissect(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds i8, ptr %7, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %8, i8 0, i32 52, i1 false)
  %9 = getelementptr inbounds %struct.bpf_flow_keys, ptr %7, i32 0, i32 7
  store i16 %2, ptr %9, align 2
  %10 = trunc i32 %3 to i16
  store i16 %10, ptr %7, align 4
  %11 = getelementptr inbounds %struct.bpf_flow_keys, ptr %7, i32 0, i32 1
  store i16 %10, ptr %11, align 2
  %12 = getelementptr inbounds %struct.bpf_flow_keys, ptr %7, i32 0, i32 11
  store i32 %5, ptr %12, align 4
  tail call void @migrate_disable() #15
  %13 = load volatile i32, ptr @bpf_stats_enabled_key, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %43, !prof !9

15:                                               ; preds = %6
  %16 = tail call i64 @sched_clock() #15
  %17 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 1
  %18 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %1, ptr noundef %17) #15
  %21 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #13, !srcloc !16
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.bpf_prog_stats, ptr %28, i32 0, i32 3
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !17
  %31 = load i32, ptr %29, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %29, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !18
  %33 = load i64, ptr %28, align 8
  %34 = add i64 %33, 1
  store i64 %34, ptr %28, align 8
  %35 = getelementptr inbounds %struct.bpf_prog_stats, ptr %28, i32 0, i32 1
  %36 = tail call i64 @sched_clock() #15
  %37 = sub i64 %36, %16
  %38 = and i64 %37, 4294967295
  %39 = load i64, ptr %35, align 8
  %40 = add i64 %38, %39
  store i64 %40, ptr %35, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !19
  %41 = load i32, ptr %29, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %29, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #15, !srcloc !20
  br label %48

43:                                               ; preds = %6
  %44 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 1
  %45 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 9
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %46(ptr noundef %1, ptr noundef %44) #15
  br label %48

48:                                               ; preds = %43, %15
  %49 = phi i32 [ %20, %15 ], [ %47, %43 ]
  tail call void @migrate_enable() #15
  %50 = load i16, ptr %7, align 4
  %51 = zext i16 %50 to i32
  %52 = and i32 %3, 65535
  %53 = tail call i32 @llvm.umax.i32(i32 %52, i32 %51)
  %54 = and i32 %4, 65535
  %55 = tail call i32 @llvm.umin.i32(i32 %53, i32 %54)
  %56 = trunc i32 %55 to i16
  store i16 %56, ptr %7, align 4
  %57 = load i16, ptr %11, align 2
  %58 = zext i16 %57 to i32
  %59 = tail call i32 @llvm.umax.i32(i32 %55, i32 %58)
  %60 = tail call i32 @llvm.umin.i32(i32 %59, i32 %54)
  %61 = trunc i32 %60 to i16
  store i16 %61, ptr %11, align 2
  %62 = icmp eq i32 %49, 0
  ret i1 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__skb_flow_dissect(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef %4, i16 noundef zeroext %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.icmphdr, align 8
  %12 = alloca %struct.tcphdr, align 4
  %13 = alloca %struct.gre_base_hdr, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ethhdr, align 1
  %16 = alloca [4 x i8], align 4
  %17 = alloca %struct.anon.225, align 1
  %18 = alloca %struct.anon.224, align 1
  %19 = alloca %struct.arphdr, align 8
  %20 = alloca %struct.mpls_label, align 4
  %21 = alloca i32, align 4
  %22 = alloca i16, align 2
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.bpf_flow_keys, align 4
  %26 = alloca %struct.bpf_flow_dissector, align 4
  %27 = alloca %struct.iphdr, align 4
  %28 = alloca %struct.ipv6hdr, align 4
  %29 = alloca %struct.vlan_hdr, align 4
  %30 = alloca %struct.anon.222, align 8
  %31 = alloca %struct.tipc_basic_hdr, align 4
  %32 = alloca %struct.ptp_header, align 1
  %33 = alloca [2 x i8], align 2
  %34 = alloca %struct.frag_hdr, align 8
  store i16 %5, ptr %22, align 2
  store i32 %7, ptr %23, align 4
  %35 = icmp eq ptr %4, null
  br i1 %35, label %36, label %99

36:                                               ; preds = %9
  %37 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %40 = load i16, ptr %39, align 2
  %41 = and i16 %40, 1
  %42 = icmp eq i16 %41, 0
  %43 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 8
  %44 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %45 = select i1 %42, ptr %44, ptr %43
  %46 = load i16, ptr %45, align 4
  store i16 %46, ptr %22, align 2
  %47 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %50 = load i16, ptr %49, align 4
  %51 = zext i16 %50 to i32
  %52 = getelementptr i8, ptr %48, i32 %51
  %53 = ptrtoint ptr %52 to i32
  %54 = ptrtoint ptr %38 to i32
  %55 = sub i32 %53, %54
  %56 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %57 = load i32, ptr %56, align 8
  %58 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = sub i32 %57, %59
  store i32 %60, ptr %23, align 4
  %61 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %99, label %64

64:                                               ; preds = %36
  %65 = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 67
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %99, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.dsa_port, ptr %66, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp ne ptr %70, null
  %72 = icmp eq i16 %46, -2048
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %74, label %99, !prof !21

74:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #15
  store i32 0, ptr %24, align 4
  %75 = getelementptr inbounds %struct.dsa_port, ptr %66, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.dsa_device_ops, ptr %76, i32 0, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %97, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.dsa_device_ops, ptr %76, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  call void %82(ptr noundef %1, ptr noundef nonnull %22, ptr noundef nonnull %24) #15
  %85 = load i32, ptr %24, align 4
  %86 = load i32, ptr %23, align 4
  br label %92

87:                                               ; preds = %80
  store i32 %78, ptr %24, align 4
  %88 = sdiv i32 %78, 2
  %89 = add nsw i32 %88, -1
  %90 = getelementptr i16, ptr %38, i32 %89
  %91 = load i16, ptr %90, align 2
  store i16 %91, ptr %22, align 2
  br label %92

92:                                               ; preds = %87, %84
  %93 = phi i32 [ %60, %87 ], [ %86, %84 ]
  %94 = phi i32 [ %78, %87 ], [ %85, %84 ]
  %95 = sub i32 %93, %94
  store i32 %95, ptr %23, align 4
  %96 = add i32 %94, %55
  br label %97

97:                                               ; preds = %92, %74
  %98 = phi i32 [ %55, %74 ], [ %96, %92 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #15
  br label %99

99:                                               ; preds = %97, %68, %64, %36, %9
  %100 = phi i32 [ %55, %36 ], [ %98, %97 ], [ %55, %68 ], [ %6, %9 ], [ %55, %64 ]
  %101 = phi ptr [ %38, %36 ], [ %38, %97 ], [ %38, %68 ], [ %4, %9 ], [ %38, %64 ]
  %102 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 0
  %103 = load i16, ptr %102, align 2
  %104 = zext i16 %103 to i32
  %105 = getelementptr i8, ptr %3, i32 %104
  %106 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 1
  %107 = load i16, ptr %106, align 2
  %108 = zext i16 %107 to i32
  %109 = getelementptr i8, ptr %3, i32 %108
  %110 = icmp eq ptr %1, null
  %111 = icmp ne ptr %0, null
  %112 = or i1 %111, %110
  br i1 %112, label %121, label %113

113:                                              ; preds = %99
  %114 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %115 = load ptr, ptr %114, align 8
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %117, %99
  %122 = icmp eq ptr %0, null
  %123 = load i1, ptr @__skb_flow_dissect.__already_done, align 1
  %124 = xor i1 %123, true
  %125 = select i1 %122, i1 %124, i1 false
  br i1 %125, label %126, label %127, !prof !9

126:                                              ; preds = %121
  store i1 true, ptr @__skb_flow_dissect.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 986, i32 noundef 9, ptr noundef null) #15
  br label %257

127:                                              ; preds = %121
  br i1 %122, label %257, label %128

128:                                              ; preds = %127, %117, %113
  %129 = phi ptr [ %0, %127 ], [ @init_net, %117 ], [ @init_net, %113 ]
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !22
  %130 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 38), align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.net, ptr %129, i32 0, i32 38
  %134 = load volatile ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %255, label %136

136:                                              ; preds = %132, %128
  %137 = phi ptr [ %134, %132 ], [ %130, %128 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %25) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %25, i8 0, i32 56, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #15
  store ptr %25, ptr %26, align 4
  %138 = getelementptr inbounds %struct.bpf_flow_dissector, ptr %26, i32 0, i32 1
  store ptr null, ptr %138, align 4
  %139 = getelementptr inbounds %struct.bpf_flow_dissector, ptr %26, i32 0, i32 2
  store ptr %101, ptr %139, align 4
  %140 = getelementptr inbounds %struct.bpf_flow_dissector, ptr %26, i32 0, i32 3
  %141 = load i32, ptr %23, align 4
  %142 = getelementptr i8, ptr %101, i32 %141
  store ptr %142, ptr %140, align 4
  br i1 %110, label %145, label %143

143:                                              ; preds = %136
  store ptr %1, ptr %138, align 4
  %144 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  br label %145

145:                                              ; preds = %143, %136
  %146 = phi ptr [ %144, %143 ], [ %22, %136 ]
  %147 = load i16, ptr %146, align 2
  %148 = getelementptr inbounds %struct.bpf_prog_array, ptr %137, i32 0, i32 1
  %149 = load volatile ptr, ptr %148, align 8
  %150 = call zeroext i1 @bpf_flow_dissect(ptr noundef %149, ptr noundef nonnull %26, i16 noundef zeroext %147, i32 noundef %100, i32 noundef %141, i32 noundef %8)
  %151 = load i16, ptr %102, align 2
  %152 = zext i16 %151 to i32
  %153 = getelementptr i8, ptr %3, i32 %152
  %154 = getelementptr inbounds %struct.bpf_flow_keys, ptr %25, i32 0, i32 1
  %155 = load i16, ptr %154, align 2
  store i16 %155, ptr %153, align 4
  %156 = getelementptr inbounds %struct.bpf_flow_keys, ptr %25, i32 0, i32 3
  %157 = load i8, ptr %156, align 2
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %145
  %160 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %153, i32 0, i32 2
  %161 = load i32, ptr %160, align 4
  %162 = or i32 %161, 1
  store i32 %162, ptr %160, align 4
  br label %163

163:                                              ; preds = %159, %145
  %164 = getelementptr inbounds %struct.bpf_flow_keys, ptr %25, i32 0, i32 4
  %165 = load i8, ptr %164, align 1
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %153, i32 0, i32 2
  %169 = load i32, ptr %168, align 4
  %170 = or i32 %169, 2
  store i32 %170, ptr %168, align 4
  br label %171

171:                                              ; preds = %167, %163
  %172 = getelementptr inbounds %struct.bpf_flow_keys, ptr %25, i32 0, i32 5
  %173 = load i8, ptr %172, align 4
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %153, i32 0, i32 2
  %177 = load i32, ptr %176, align 4
  %178 = or i32 %177, 4
  store i32 %178, ptr %176, align 4
  br label %179

179:                                              ; preds = %175, %171
  %180 = load i16, ptr %106, align 2
  %181 = zext i16 %180 to i32
  %182 = getelementptr i8, ptr %3, i32 %181
  %183 = getelementptr inbounds %struct.bpf_flow_keys, ptr %25, i32 0, i32 7
  %184 = load i16, ptr %183, align 2
  store i16 %184, ptr %182, align 2
  %185 = getelementptr inbounds %struct.bpf_flow_keys, ptr %25, i32 0, i32 6
  %186 = load i8, ptr %185, align 1
  %187 = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %182, i32 0, i32 1
  store i8 %186, ptr %187, align 2
  %188 = getelementptr inbounds %struct.bpf_flow_keys, ptr %25, i32 0, i32 2
  %189 = load i16, ptr %188, align 4
  switch i16 %189, label %219 [
    i16 2048, label %190
    i16 -31011, label %204
  ]

190:                                              ; preds = %179
  %191 = load i32, ptr %2, align 4
  %192 = and i32 %191, 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %219, label %194

194:                                              ; preds = %190
  %195 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 2
  %196 = load i16, ptr %195, align 2
  %197 = zext i16 %196 to i32
  %198 = getelementptr i8, ptr %3, i32 %197
  %199 = getelementptr inbounds %struct.bpf_flow_keys, ptr %25, i32 0, i32 10
  %200 = load i32, ptr %199, align 4
  store i32 %200, ptr %198, align 4
  %201 = getelementptr inbounds %struct.bpf_flow_keys, ptr %25, i32 0, i32 10, i32 0, i32 0, i32 1
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %198, i32 0, i32 1
  store i32 %202, ptr %203, align 4
  br label %216

204:                                              ; preds = %179
  %205 = load i32, ptr %2, align 4
  %206 = and i32 %205, 8
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %219, label %208

208:                                              ; preds = %204
  %209 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 3
  %210 = load i16, ptr %209, align 2
  %211 = zext i16 %210 to i32
  %212 = getelementptr i8, ptr %3, i32 %211
  %213 = getelementptr inbounds %struct.bpf_flow_keys, ptr %25, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %212, ptr noundef align 4 dereferenceable(16) %213, i32 16, i1 false) #15
  %214 = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %212, i32 0, i32 1
  %215 = getelementptr inbounds %struct.bpf_flow_keys, ptr %25, i32 0, i32 10, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %214, ptr noundef align 4 dereferenceable(16) %215, i32 16, i1 false) #15
  br label %216

216:                                              ; preds = %208, %194
  %217 = phi i16 [ 3, %208 ], [ 2, %194 ]
  %218 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %153, i32 0, i32 1
  store i16 %217, ptr %218, align 2
  br label %219

219:                                              ; preds = %216, %204, %190, %179
  %220 = load i32, ptr %2, align 4
  %221 = and i32 %220, 16
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %219
  %224 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 4
  br label %230

225:                                              ; preds = %219
  %226 = and i32 %220, 32
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %243, label %228

228:                                              ; preds = %225
  %229 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 5
  br label %230

230:                                              ; preds = %228, %223
  %231 = phi ptr [ %224, %223 ], [ %229, %228 ]
  %232 = load i16, ptr %231, align 2
  %233 = zext i16 %232 to i32
  %234 = getelementptr i8, ptr %3, i32 %233
  %235 = icmp eq ptr %234, null
  br i1 %235, label %243, label %236

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.bpf_flow_keys, ptr %25, i32 0, i32 8
  %238 = load i16, ptr %237, align 4
  store i16 %238, ptr %234, align 4
  %239 = getelementptr inbounds %struct.bpf_flow_keys, ptr %25, i32 0, i32 9
  %240 = load i16, ptr %239, align 2
  %241 = getelementptr inbounds %struct.anon.215, ptr %234, i32 0, i32 1
  store i16 %240, ptr %241, align 2
  %242 = load i32, ptr %2, align 4
  br label %243

243:                                              ; preds = %236, %230, %225
  %244 = phi i32 [ %220, %225 ], [ %242, %236 ], [ %220, %230 ]
  %245 = and i32 %244, 2048
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %256, label %247

247:                                              ; preds = %243
  %248 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 11
  %249 = load i16, ptr %248, align 2
  %250 = zext i16 %249 to i32
  %251 = getelementptr i8, ptr %3, i32 %250
  %252 = getelementptr inbounds %struct.bpf_flow_keys, ptr %25, i32 0, i32 12
  %253 = load i32, ptr %252, align 4
  %254 = call i32 @llvm.bswap.i32(i32 %253) #15
  store i32 %254, ptr %251, align 4
  br label %256

255:                                              ; preds = %132
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  br label %257

256:                                              ; preds = %247, %243
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %25) #15
  br label %1130

257:                                              ; preds = %255, %127, %126
  %258 = load i32, ptr %2, align 4
  %259 = and i32 %258, 128
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %272, label %261

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %263 = load ptr, ptr %262, align 8
  %264 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  %265 = load i16, ptr %264, align 2
  %266 = zext i16 %265 to i32
  %267 = getelementptr i8, ptr %263, i32 %266
  %268 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 7
  %269 = load i16, ptr %268, align 2
  %270 = zext i16 %269 to i32
  %271 = getelementptr i8, ptr %3, i32 %270
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %271, ptr noundef align 1 dereferenceable(12) %267, i32 12, i1 false)
  br label %272

272:                                              ; preds = %261, %257
  %273 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %105, i32 0, i32 2
  %274 = lshr i32 %8, 1
  %275 = and i32 %274, 2
  %276 = xor i32 %275, 2
  %277 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 9
  %278 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 19
  %279 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 13
  %280 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 8
  %281 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %105, i32 0, i32 1
  %282 = icmp ne ptr %1, null
  %283 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %284 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %285 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 9
  %286 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 3
  %287 = and i32 %8, 2
  %288 = icmp eq i32 %287, 0
  %289 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 11
  %290 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 21
  %291 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 2
  %292 = and i32 %8, 1
  %293 = icmp eq i32 %292, 0
  %294 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 6
  %295 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 20
  %296 = and i32 %8, 8
  %297 = icmp eq i32 %296, 0
  %298 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 12
  %299 = icmp eq ptr %101, null
  %300 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %301 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %302 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  br label %303

303:                                              ; preds = %766, %272
  %304 = phi i32 [ %100, %272 ], [ %767, %766 ]
  %305 = phi i8 [ 0, %272 ], [ %757, %766 ]
  %306 = phi i32 [ 0, %272 ], [ %768, %766 ]
  %307 = phi i8 [ 0, %272 ], [ %769, %766 ]
  %308 = phi i32 [ 0, %272 ], [ %759, %766 ]
  %309 = phi i32 [ 28, %272 ], [ %760, %766 ]
  %310 = load i16, ptr %22, align 2
  switch i16 %310, label %1127 [
    i16 8, label %311
    i16 -8826, label %377
    i16 -22392, label %442
    i16 129, label %442
    i16 25736, label %512
    i16 -13688, label %533
    i16 18312, label %564
    i16 18568, label %564
    i16 1673, label %628
    i16 1544, label %634
    i16 13696, label %634
    i16 1347, label %706
    i16 -2168, label %734
  ]

311:                                              ; preds = %303
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %27) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %27, i8 0, i32 20, i1 false), !annotation !15
  %312 = load i32, ptr %23, align 4
  %313 = sub i32 %312, %304
  %314 = icmp slt i32 %313, 20
  br i1 %314, label %315, label %319, !prof !9

315:                                              ; preds = %311
  br i1 %110, label %373, label %316

316:                                              ; preds = %315
  %317 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %304, ptr noundef nonnull %27, i32 noundef 20) #15
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %373, label %322

319:                                              ; preds = %311
  %320 = getelementptr i8, ptr %101, i32 %304
  %321 = icmp eq ptr %320, null
  br i1 %321, label %373, label %322

322:                                              ; preds = %319, %316
  %323 = phi ptr [ %320, %319 ], [ %27, %316 ]
  %324 = load i8, ptr %323, align 4
  %325 = and i8 %324, 15
  %326 = icmp ult i8 %325, 5
  br i1 %326, label %373, label %327

327:                                              ; preds = %322
  %328 = shl nuw nsw i8 %325, 2
  %329 = zext i8 %328 to i32
  %330 = add i32 %304, %329
  %331 = getelementptr inbounds %struct.iphdr, ptr %323, i32 0, i32 6
  %332 = load i8, ptr %331, align 1
  %333 = load i32, ptr %2, align 4
  %334 = and i32 %333, 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %346, label %336

336:                                              ; preds = %327
  %337 = load i16, ptr %291, align 2
  %338 = zext i16 %337 to i32
  %339 = getelementptr i8, ptr %3, i32 %338
  %340 = getelementptr inbounds %struct.iphdr, ptr %323, i32 0, i32 8
  %341 = load i32, ptr %340, align 4
  store i32 %341, ptr %339, align 4
  %342 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %339, i32 0, i32 1
  %343 = getelementptr inbounds %struct.iphdr, ptr %323, i32 0, i32 9
  %344 = load i32, ptr %343, align 4
  store i32 %344, ptr %342, align 4
  store i16 2, ptr %281, align 2
  %345 = load i32, ptr %2, align 4
  br label %346

346:                                              ; preds = %336, %327
  %347 = phi i32 [ %345, %336 ], [ %333, %327 ]
  %348 = and i32 %347, 2097152
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %359, label %350

350:                                              ; preds = %346
  %351 = load i16, ptr %290, align 2
  %352 = zext i16 %351 to i32
  %353 = getelementptr i8, ptr %3, i32 %352
  %354 = getelementptr inbounds %struct.iphdr, ptr %323, i32 0, i32 1
  %355 = load i8, ptr %354, align 1
  store i8 %355, ptr %353, align 1
  %356 = getelementptr inbounds %struct.iphdr, ptr %323, i32 0, i32 5
  %357 = load i8, ptr %356, align 4
  %358 = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %353, i32 0, i32 1
  store i8 %357, ptr %358, align 1
  br label %359

359:                                              ; preds = %350, %346
  %360 = getelementptr inbounds %struct.iphdr, ptr %323, i32 0, i32 4
  %361 = load i16, ptr %360, align 2
  %362 = and i16 %361, -193
  %363 = icmp eq i16 %362, 0
  br i1 %363, label %372, label %364

364:                                              ; preds = %359
  %365 = load i32, ptr %273, align 4
  %366 = or i32 %365, 1
  store i32 %366, ptr %273, align 4
  %367 = load i16, ptr %360, align 2
  %368 = and i16 %367, -225
  %369 = icmp eq i16 %368, 0
  br i1 %369, label %370, label %373

370:                                              ; preds = %364
  %371 = or i32 %365, 3
  store i32 %371, ptr %273, align 4
  br i1 %293, label %373, label %372

372:                                              ; preds = %370, %359
  br label %373

373:                                              ; preds = %372, %370, %364, %322, %319, %316, %315
  %374 = phi i32 [ %304, %319 ], [ %304, %322 ], [ %330, %370 ], [ %330, %372 ], [ %330, %364 ], [ %304, %315 ], [ %304, %316 ]
  %375 = phi i8 [ %307, %319 ], [ %307, %322 ], [ %332, %370 ], [ %332, %372 ], [ %332, %364 ], [ %307, %315 ], [ %307, %316 ]
  %376 = phi i32 [ 1, %319 ], [ 1, %322 ], [ 0, %370 ], [ 4, %372 ], [ 0, %364 ], [ 1, %315 ], [ 1, %316 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %27) #15
  br label %755

377:                                              ; preds = %303
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %28) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %28, i8 0, i32 40, i1 false), !annotation !15
  %378 = load i32, ptr %23, align 4
  %379 = sub i32 %378, %304
  %380 = icmp slt i32 %379, 40
  br i1 %380, label %381, label %385, !prof !9

381:                                              ; preds = %377
  br i1 %110, label %438, label %382

382:                                              ; preds = %381
  %383 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %304, ptr noundef nonnull %28, i32 noundef 40) #15
  %384 = icmp slt i32 %383, 0
  br i1 %384, label %438, label %388

385:                                              ; preds = %377
  %386 = getelementptr i8, ptr %101, i32 %304
  %387 = icmp eq ptr %386, null
  br i1 %387, label %438, label %388

388:                                              ; preds = %385, %382
  %389 = phi ptr [ %386, %385 ], [ %28, %382 ]
  %390 = getelementptr inbounds %struct.ipv6hdr, ptr %389, i32 0, i32 3
  %391 = load i8, ptr %390, align 2
  %392 = add i32 %304, 40
  %393 = load i32, ptr %2, align 4
  %394 = and i32 %393, 8
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %404, label %396

396:                                              ; preds = %388
  %397 = load i16, ptr %286, align 2
  %398 = zext i16 %397 to i32
  %399 = getelementptr i8, ptr %3, i32 %398
  %400 = getelementptr inbounds %struct.ipv6hdr, ptr %389, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %399, ptr noundef align 4 dereferenceable(16) %400, i32 16, i1 false)
  %401 = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %399, i32 0, i32 1
  %402 = getelementptr inbounds %struct.ipv6hdr, ptr %389, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %401, ptr noundef align 4 dereferenceable(16) %402, i32 16, i1 false)
  store i16 3, ptr %281, align 2
  %403 = load i32, ptr %2, align 4
  br label %404

404:                                              ; preds = %396, %388
  %405 = phi i32 [ %403, %396 ], [ %393, %388 ]
  %406 = and i32 %405, 2048
  %407 = icmp eq i32 %406, 0
  %408 = or i32 %406, %287
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %423, label %410

410:                                              ; preds = %404
  %411 = load i32, ptr %389, align 4
  %412 = and i32 %411, -61696
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %423, label %414

414:                                              ; preds = %410
  br i1 %407, label %420, label %415

415:                                              ; preds = %414
  %416 = load i16, ptr %289, align 2
  %417 = zext i16 %416 to i32
  %418 = getelementptr i8, ptr %3, i32 %417
  %419 = call i32 @llvm.bswap.i32(i32 %412)
  store i32 %419, ptr %418, align 4
  br label %420

420:                                              ; preds = %415, %414
  br i1 %288, label %421, label %438

421:                                              ; preds = %420
  %422 = load i32, ptr %2, align 4
  br label %423

423:                                              ; preds = %421, %410, %404
  %424 = phi i32 [ %422, %421 ], [ %405, %404 ], [ %405, %410 ]
  %425 = and i32 %424, 2097152
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %438, label %427

427:                                              ; preds = %423
  %428 = load i16, ptr %290, align 2
  %429 = zext i16 %428 to i32
  %430 = getelementptr i8, ptr %3, i32 %429
  %431 = load i16, ptr %389, align 2
  %432 = call i16 @llvm.bswap.i16(i16 %431) #15
  %433 = lshr i16 %432, 4
  %434 = trunc i16 %433 to i8
  store i8 %434, ptr %430, align 1
  %435 = getelementptr inbounds %struct.ipv6hdr, ptr %389, i32 0, i32 4
  %436 = load i8, ptr %435, align 1
  %437 = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %430, i32 0, i32 1
  store i8 %436, ptr %437, align 1
  br label %438

438:                                              ; preds = %427, %423, %420, %385, %382, %381
  %439 = phi i32 [ %304, %385 ], [ %392, %420 ], [ %392, %423 ], [ %392, %427 ], [ %304, %381 ], [ %304, %382 ]
  %440 = phi i8 [ %307, %385 ], [ %391, %420 ], [ %391, %423 ], [ %391, %427 ], [ %307, %381 ], [ %307, %382 ]
  %441 = phi i32 [ 1, %385 ], [ 0, %420 ], [ 4, %423 ], [ 4, %427 ], [ 1, %381 ], [ 1, %382 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %28) #15
  br label %755

442:                                              ; preds = %303, %303
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #15
  store i32 0, ptr %29, align 4, !annotation !15
  %443 = icmp eq i32 %309, 28
  %444 = and i1 %282, %443
  br i1 %444, label %445, label %449

445:                                              ; preds = %442
  %446 = load i16, ptr %283, align 2
  %447 = and i16 %446, 1
  %448 = icmp eq i16 %447, 0
  br i1 %448, label %449, label %465

449:                                              ; preds = %445, %442
  %450 = load i32, ptr %23, align 4
  %451 = sub i32 %450, %304
  %452 = icmp slt i32 %451, 4
  br i1 %452, label %453, label %457, !prof !9

453:                                              ; preds = %449
  br i1 %110, label %508, label %454

454:                                              ; preds = %453
  %455 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %304, ptr noundef nonnull %29, i32 noundef 4) #15
  %456 = icmp slt i32 %455, 0
  br i1 %456, label %508, label %460

457:                                              ; preds = %449
  %458 = getelementptr i8, ptr %101, i32 %304
  %459 = icmp eq ptr %458, null
  br i1 %459, label %508, label %460

460:                                              ; preds = %457, %454
  %461 = phi ptr [ %458, %457 ], [ %29, %454 ]
  %462 = getelementptr inbounds %struct.vlan_hdr, ptr %461, i32 0, i32 1
  %463 = load i16, ptr %462, align 2
  store i16 %463, ptr %22, align 2
  %464 = add i32 %304, 4
  br i1 %443, label %469, label %467

465:                                              ; preds = %445
  %466 = load i16, ptr %284, align 8
  store i16 %466, ptr %22, align 2
  br label %469

467:                                              ; preds = %460
  %468 = icmp eq i32 %309, 10
  br i1 %468, label %469, label %508

469:                                              ; preds = %467, %465, %460
  %470 = phi ptr [ %461, %460 ], [ %461, %467 ], [ null, %465 ]
  %471 = phi i32 [ %464, %460 ], [ %464, %467 ], [ %304, %465 ]
  %472 = phi i32 [ 10, %460 ], [ 22, %467 ], [ 10, %465 ]
  %473 = load i32, ptr %2, align 4
  %474 = shl nuw nsw i32 1, %472
  %475 = and i32 %473, %474
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %508, label %477

477:                                              ; preds = %469
  %478 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 %472
  %479 = load i16, ptr %478, align 2
  %480 = zext i16 %479 to i32
  %481 = getelementptr i8, ptr %3, i32 %480
  %482 = icmp eq ptr %470, null
  br i1 %482, label %483, label %492

483:                                              ; preds = %477
  %484 = load i16, ptr %285, align 2
  %485 = and i16 %484, 4095
  %486 = load i16, ptr %481, align 2
  %487 = and i16 %486, -4096
  %488 = or i16 %487, %485
  store i16 %488, ptr %481, align 2
  %489 = load i16, ptr %285, align 2
  %490 = and i16 %489, -8192
  %491 = and i16 %488, 8191
  br label %503

492:                                              ; preds = %477
  %493 = load i16, ptr %470, align 2
  %494 = and i16 %493, -241
  %495 = call i16 @llvm.bswap.i16(i16 %494)
  %496 = load i16, ptr %481, align 2
  %497 = and i16 %496, -4096
  %498 = or i16 %497, %495
  store i16 %498, ptr %481, align 2
  %499 = load i16, ptr %470, align 2
  %500 = shl i16 %499, 8
  %501 = and i16 %500, -8192
  %502 = and i16 %498, 8191
  br label %503

503:                                              ; preds = %492, %483
  %504 = phi i16 [ %502, %492 ], [ %490, %483 ]
  %505 = phi i16 [ %501, %492 ], [ %491, %483 ]
  %506 = or i16 %505, %504
  store i16 %506, ptr %481, align 2
  %507 = getelementptr inbounds %struct.flow_dissector_key_vlan, ptr %481, i32 0, i32 1
  store i16 %310, ptr %507, align 2
  br label %508

508:                                              ; preds = %503, %469, %467, %457, %454, %453
  %509 = phi i32 [ %304, %457 ], [ %471, %503 ], [ %471, %469 ], [ %464, %467 ], [ %304, %453 ], [ %304, %454 ]
  %510 = phi i32 [ %309, %457 ], [ %472, %503 ], [ %472, %469 ], [ %309, %467 ], [ %309, %453 ], [ %309, %454 ]
  %511 = phi i32 [ 1, %457 ], [ 2, %503 ], [ 2, %469 ], [ 2, %467 ], [ 1, %453 ], [ 1, %454 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #15
  br label %755

512:                                              ; preds = %303
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #15
  store i64 0, ptr %30, align 8, !annotation !15
  %513 = load i32, ptr %23, align 4
  %514 = sub i32 %513, %304
  %515 = icmp slt i32 %514, 8
  br i1 %515, label %516, label %520, !prof !9

516:                                              ; preds = %512
  br i1 %110, label %530, label %517

517:                                              ; preds = %516
  %518 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %304, ptr noundef nonnull %30, i32 noundef 8) #15
  %519 = icmp slt i32 %518, 0
  br i1 %519, label %530, label %523

520:                                              ; preds = %512
  %521 = getelementptr i8, ptr %101, i32 %304
  %522 = icmp eq ptr %521, null
  br i1 %522, label %530, label %523

523:                                              ; preds = %520, %517
  %524 = phi ptr [ %521, %520 ], [ %30, %517 ]
  %525 = add i32 %304, 8
  %526 = getelementptr inbounds %struct.anon.222, ptr %524, i32 0, i32 1
  %527 = load i16, ptr %526, align 2
  switch i16 %527, label %530 [
    i16 8448, label %528
    i16 22272, label %529
  ]

528:                                              ; preds = %523
  store i16 8, ptr %22, align 2
  br label %530

529:                                              ; preds = %523
  store i16 -8826, ptr %22, align 2
  br label %530

530:                                              ; preds = %529, %528, %523, %520, %517, %516
  %531 = phi i32 [ %304, %520 ], [ %525, %523 ], [ %525, %529 ], [ %525, %528 ], [ %304, %516 ], [ %304, %517 ]
  %532 = phi i32 [ 1, %520 ], [ 1, %523 ], [ 2, %529 ], [ 2, %528 ], [ 1, %516 ], [ 1, %517 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #15
  br label %755

533:                                              ; preds = %303
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %31) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %31, i8 0, i32 16, i1 false), !annotation !15
  %534 = load i32, ptr %23, align 4
  %535 = sub i32 %534, %304
  %536 = icmp slt i32 %535, 16
  br i1 %536, label %537, label %541, !prof !9

537:                                              ; preds = %533
  br i1 %110, label %562, label %538

538:                                              ; preds = %537
  %539 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %304, ptr noundef nonnull %31, i32 noundef 16) #15
  %540 = icmp slt i32 %539, 0
  br i1 %540, label %562, label %544

541:                                              ; preds = %533
  %542 = getelementptr i8, ptr %101, i32 %304
  %543 = icmp eq ptr %542, null
  br i1 %543, label %562, label %544

544:                                              ; preds = %541, %538
  %545 = phi ptr [ %542, %541 ], [ %31, %538 ]
  %546 = load i32, ptr %2, align 4
  %547 = and i32 %546, 256
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %562, label %549

549:                                              ; preds = %544
  %550 = load i16, ptr %280, align 2
  %551 = zext i16 %550 to i32
  %552 = getelementptr i8, ptr %3, i32 %551
  %553 = load i32, ptr %545, align 4
  %554 = and i32 %553, 2062
  %555 = icmp eq i32 %554, 2062
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #15
  store i32 0, ptr %21, align 4, !annotation !15
  br i1 %555, label %558, label %556, !prof !9

556:                                              ; preds = %549
  %557 = getelementptr [4 x i32], ptr %545, i32 0, i32 3
  br label %559

558:                                              ; preds = %549
  call void @get_random_bytes(ptr noundef nonnull %21, i32 noundef 4) #15
  br label %559

559:                                              ; preds = %558, %556
  %560 = phi ptr [ %557, %556 ], [ %21, %558 ]
  %561 = load i32, ptr %560, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #15
  store i32 %561, ptr %552, align 4
  store i16 8, ptr %281, align 2
  br label %562

562:                                              ; preds = %559, %544, %541, %538, %537
  %563 = phi i32 [ 1, %541 ], [ 0, %559 ], [ 0, %544 ], [ 1, %537 ], [ 1, %538 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %31) #15
  br label %755

564:                                              ; preds = %303, %303
  %565 = load i32, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #15
  store i32 0, ptr %20, align 4, !annotation !15
  %566 = load i32, ptr %2, align 4
  %567 = and i32 %566, 8192
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %574

569:                                              ; preds = %564
  %570 = and i32 %566, 524288
  %571 = icmp eq i32 %570, 0
  %572 = icmp sgt i32 %308, 6
  %573 = or i1 %572, %571
  br i1 %573, label %623, label %576

574:                                              ; preds = %564
  %575 = icmp sgt i32 %308, 6
  br i1 %575, label %623, label %576

576:                                              ; preds = %574, %569
  %577 = sub i32 %565, %304
  %578 = icmp slt i32 %577, 4
  br i1 %578, label %579, label %585, !prof !9

579:                                              ; preds = %576
  br i1 %110, label %623, label %580

580:                                              ; preds = %579
  %581 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %304, ptr noundef nonnull %20, i32 noundef 4) #15
  %582 = icmp slt i32 %581, 0
  br i1 %582, label %623, label %583

583:                                              ; preds = %580
  %584 = load i32, ptr %2, align 4
  br label %588

585:                                              ; preds = %576
  %586 = getelementptr i8, ptr %101, i32 %304
  %587 = icmp eq ptr %586, null
  br i1 %587, label %623, label %588

588:                                              ; preds = %585, %583
  %589 = phi i32 [ %566, %585 ], [ %584, %583 ]
  %590 = phi ptr [ %586, %585 ], [ %20, %583 ]
  %591 = load i32, ptr %590, align 4
  %592 = call i32 @llvm.bswap.i32(i32 %591) #15
  %593 = lshr i32 %592, 12
  %594 = and i32 %589, 524288
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %606, label %596

596:                                              ; preds = %588
  %597 = load i16, ptr %278, align 2
  %598 = zext i16 %597 to i32
  %599 = getelementptr i8, ptr %3, i32 %598
  %600 = getelementptr [7 x %struct.flow_dissector_mpls_lse], ptr %599, i32 0, i32 %308
  store i32 %592, ptr %600, align 4
  %601 = shl nuw nsw i32 1, %308
  %602 = getelementptr inbounds %struct.flow_dissector_key_mpls, ptr %599, i32 0, i32 1
  %603 = load i8, ptr %602, align 4
  %604 = trunc i32 %601 to i8
  %605 = or i8 %603, %604
  store i8 %605, ptr %602, align 4
  br label %606

606:                                              ; preds = %596, %588
  %607 = icmp eq i8 %305, 0
  br i1 %607, label %617, label %608

608:                                              ; preds = %606
  %609 = load i32, ptr %2, align 4
  %610 = and i32 %609, 8192
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %617, label %612

612:                                              ; preds = %608
  %613 = load i16, ptr %279, align 2
  %614 = zext i16 %613 to i32
  %615 = getelementptr i8, ptr %3, i32 %614
  %616 = call i32 @llvm.bswap.i32(i32 %593) #15
  store i32 %616, ptr %615, align 4
  br label %617

617:                                              ; preds = %612, %608, %606
  %618 = icmp eq i32 %593, 7
  %619 = zext i1 %618 to i8
  %620 = lshr i32 %592, 7
  %621 = and i32 %620, 2
  %622 = xor i32 %621, 2
  br label %623

623:                                              ; preds = %617, %585, %580, %579, %574, %569
  %624 = phi i8 [ %305, %569 ], [ %305, %579 ], [ %305, %580 ], [ %619, %617 ], [ %305, %585 ], [ %305, %574 ]
  %625 = phi i32 [ 0, %569 ], [ 1, %579 ], [ 1, %580 ], [ %622, %617 ], [ 1, %585 ], [ 0, %574 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #15
  %626 = add i32 %304, 4
  %627 = add i32 %308, 1
  br label %755

628:                                              ; preds = %303
  %629 = load i32, ptr %23, align 4
  %630 = sub i32 %629, %304
  %631 = icmp slt i32 %630, 38
  br i1 %631, label %1127, label %632

632:                                              ; preds = %628
  %633 = add i32 %304, 38
  br label %1115

634:                                              ; preds = %303, %303
  %635 = load i32, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %18) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %18, i8 0, i32 20, i1 false) #15, !annotation !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #15
  store i64 0, ptr %19, align 8, !annotation !15
  %636 = load i32, ptr %2, align 4
  %637 = and i32 %636, 512
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %704, label %639

639:                                              ; preds = %634
  %640 = sub i32 %635, %304
  %641 = icmp slt i32 %640, 8
  br i1 %641, label %642, label %646, !prof !9

642:                                              ; preds = %639
  br i1 %110, label %704, label %643

643:                                              ; preds = %642
  %644 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %304, ptr noundef nonnull %19, i32 noundef 8) #15
  %645 = icmp slt i32 %644, 0
  br i1 %645, label %704, label %649

646:                                              ; preds = %639
  %647 = getelementptr i8, ptr %101, i32 %304
  %648 = icmp eq ptr %647, null
  br i1 %648, label %704, label %649

649:                                              ; preds = %646, %643
  %650 = phi ptr [ %647, %646 ], [ %19, %643 ]
  %651 = load i16, ptr %650, align 2
  %652 = icmp eq i16 %651, 256
  br i1 %652, label %653, label %704

653:                                              ; preds = %649
  %654 = getelementptr inbounds %struct.arphdr, ptr %650, i32 0, i32 1
  %655 = load i16, ptr %654, align 2
  %656 = icmp eq i16 %655, 8
  br i1 %656, label %657, label %704

657:                                              ; preds = %653
  %658 = getelementptr inbounds %struct.arphdr, ptr %650, i32 0, i32 2
  %659 = load i8, ptr %658, align 2
  %660 = icmp eq i8 %659, 6
  br i1 %660, label %661, label %704

661:                                              ; preds = %657
  %662 = getelementptr inbounds %struct.arphdr, ptr %650, i32 0, i32 3
  %663 = load i8, ptr %662, align 1
  %664 = icmp eq i8 %663, 4
  br i1 %664, label %665, label %704

665:                                              ; preds = %661
  %666 = getelementptr inbounds %struct.arphdr, ptr %650, i32 0, i32 4
  %667 = load i16, ptr %666, align 2
  switch i16 %667, label %704 [
    i16 512, label %668
    i16 256, label %668
  ]

668:                                              ; preds = %665, %665
  %669 = add i32 %304, 8
  %670 = sub i32 %635, %669
  %671 = icmp slt i32 %670, 20
  br i1 %671, label %672, label %676, !prof !9

672:                                              ; preds = %668
  br i1 %110, label %704, label %673

673:                                              ; preds = %672
  %674 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %669, ptr noundef nonnull %18, i32 noundef 20) #15
  %675 = icmp slt i32 %674, 0
  br i1 %675, label %704, label %679

676:                                              ; preds = %668
  %677 = getelementptr i8, ptr %101, i32 %669
  %678 = icmp eq ptr %677, null
  br i1 %678, label %704, label %679

679:                                              ; preds = %676, %673
  %680 = phi ptr [ %677, %676 ], [ %18, %673 ]
  %681 = load i16, ptr %277, align 2
  %682 = zext i16 %681 to i32
  %683 = getelementptr i8, ptr %3, i32 %682
  %684 = getelementptr inbounds %struct.anon.224, ptr %680, i32 0, i32 1
  %685 = load i32, ptr %684, align 1
  store i32 %685, ptr %683, align 4
  %686 = getelementptr inbounds %struct.flow_dissector_key_arp, ptr %683, i32 0, i32 1
  %687 = getelementptr inbounds %struct.anon.224, ptr %680, i32 0, i32 3
  %688 = load i32, ptr %687, align 1
  store i32 %688, ptr %686, align 4
  %689 = load i16, ptr %666, align 2
  %690 = lshr i16 %689, 8
  %691 = trunc i16 %690 to i8
  %692 = getelementptr inbounds %struct.flow_dissector_key_arp, ptr %683, i32 0, i32 2
  store i8 %691, ptr %692, align 4
  %693 = getelementptr inbounds %struct.flow_dissector_key_arp, ptr %683, i32 0, i32 3
  %694 = load i32, ptr %680, align 4
  store i32 %694, ptr %693, align 4
  %695 = getelementptr i8, ptr %680, i32 4
  %696 = load i16, ptr %695, align 2
  %697 = getelementptr i8, ptr %693, i32 4
  store i16 %696, ptr %697, align 2
  %698 = getelementptr inbounds %struct.flow_dissector_key_arp, ptr %683, i32 0, i32 4
  %699 = getelementptr inbounds %struct.anon.224, ptr %680, i32 0, i32 2
  %700 = load i32, ptr %699, align 4
  store i32 %700, ptr %698, align 4
  %701 = getelementptr %struct.anon.224, ptr %680, i32 0, i32 2, i32 4
  %702 = load i16, ptr %701, align 2
  %703 = getelementptr i8, ptr %698, i32 4
  store i16 %702, ptr %703, align 2
  br label %704

704:                                              ; preds = %679, %676, %673, %672, %665, %661, %657, %653, %649, %646, %643, %642, %634
  %705 = phi i32 [ 0, %679 ], [ 0, %634 ], [ 1, %646 ], [ 1, %665 ], [ 1, %661 ], [ 1, %657 ], [ 1, %653 ], [ 1, %649 ], [ 1, %676 ], [ 1, %642 ], [ 1, %643 ], [ 1, %672 ], [ 1, %673 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %18) #15
  br label %755

706:                                              ; preds = %303
  %707 = load i32, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(24) %17, i8 0, i32 24, i1 false) #15, !annotation !15
  %708 = sub i32 %707, %304
  %709 = icmp slt i32 %708, 24
  br i1 %709, label %710, label %714, !prof !9

710:                                              ; preds = %706
  br i1 %110, label %731, label %711

711:                                              ; preds = %710
  %712 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %304, ptr noundef nonnull %17, i32 noundef 24) #15
  %713 = icmp slt i32 %712, 0
  br i1 %713, label %731, label %717

714:                                              ; preds = %706
  %715 = getelementptr i8, ptr %101, i32 %304
  %716 = icmp eq ptr %715, null
  br i1 %716, label %731, label %717

717:                                              ; preds = %714, %711
  %718 = phi ptr [ %715, %714 ], [ %17, %711 ]
  %719 = getelementptr inbounds %struct.batadv_unicast_packet, ptr %718, i32 0, i32 1
  %720 = load i8, ptr %719, align 1
  %721 = icmp eq i8 %720, 15
  br i1 %721, label %722, label %731

722:                                              ; preds = %717
  %723 = load i8, ptr %718, align 1
  %724 = icmp eq i8 %723, 64
  br i1 %724, label %725, label %731

725:                                              ; preds = %722
  %726 = getelementptr inbounds %struct.anon.225, ptr %718, i32 0, i32 1, i32 2
  %727 = load i16, ptr %726, align 1
  store i16 %727, ptr %22, align 2
  %728 = add i32 %304, 24
  %729 = load i32, ptr %273, align 4
  %730 = or i32 %729, 4
  store i32 %730, ptr %273, align 4
  br label %731

731:                                              ; preds = %725, %722, %717, %714, %711, %710
  %732 = phi i32 [ %304, %710 ], [ %304, %711 ], [ %728, %725 ], [ %304, %722 ], [ %304, %717 ], [ %304, %714 ]
  %733 = phi i32 [ 1, %710 ], [ 1, %711 ], [ %276, %725 ], [ 1, %722 ], [ 1, %717 ], [ 1, %714 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #15
  br label %755

734:                                              ; preds = %303
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %32) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(34) %32, i8 0, i32 34, i1 false), !annotation !15
  %735 = load i32, ptr %23, align 4
  %736 = sub i32 %735, %304
  %737 = icmp slt i32 %736, 34
  br i1 %737, label %738, label %742, !prof !9

738:                                              ; preds = %734
  br i1 %110, label %752, label %739

739:                                              ; preds = %738
  %740 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %304, ptr noundef nonnull %32, i32 noundef 34) #15
  %741 = icmp slt i32 %740, 0
  br i1 %741, label %752, label %745

742:                                              ; preds = %734
  %743 = getelementptr i8, ptr %101, i32 %304
  %744 = icmp eq ptr %743, null
  br i1 %744, label %752, label %745

745:                                              ; preds = %742, %739
  %746 = phi ptr [ %743, %742 ], [ %32, %739 ]
  %747 = getelementptr inbounds %struct.ptp_header, ptr %746, i32 0, i32 2
  %748 = load i16, ptr %747, align 1
  %749 = call i16 @llvm.bswap.i16(i16 %748)
  %750 = zext i16 %749 to i32
  %751 = add i32 %304, %750
  br label %752

752:                                              ; preds = %745, %742, %739, %738
  %753 = phi i32 [ %304, %742 ], [ %751, %745 ], [ %304, %738 ], [ %304, %739 ]
  %754 = phi i32 [ 1, %742 ], [ 0, %745 ], [ 1, %738 ], [ 1, %739 ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %32) #15
  br label %755

755:                                              ; preds = %752, %731, %704, %623, %562, %530, %508, %438, %373
  %756 = phi i32 [ %753, %752 ], [ %732, %731 ], [ %304, %704 ], [ %626, %623 ], [ %304, %562 ], [ %531, %530 ], [ %509, %508 ], [ %439, %438 ], [ %374, %373 ]
  %757 = phi i8 [ %305, %752 ], [ %305, %731 ], [ %305, %704 ], [ %624, %623 ], [ %305, %562 ], [ %305, %530 ], [ %305, %508 ], [ %305, %438 ], [ %305, %373 ]
  %758 = phi i8 [ %307, %752 ], [ %307, %731 ], [ %307, %704 ], [ %307, %623 ], [ %307, %562 ], [ %307, %530 ], [ %307, %508 ], [ %440, %438 ], [ %375, %373 ]
  %759 = phi i32 [ %308, %752 ], [ %308, %731 ], [ %308, %704 ], [ %627, %623 ], [ %308, %562 ], [ %308, %530 ], [ %308, %508 ], [ %308, %438 ], [ %308, %373 ]
  %760 = phi i32 [ %309, %752 ], [ %309, %731 ], [ %309, %704 ], [ %309, %623 ], [ %309, %562 ], [ %309, %530 ], [ %510, %508 ], [ %309, %438 ], [ %309, %373 ]
  %761 = phi i32 [ %754, %752 ], [ %733, %731 ], [ %705, %704 ], [ %625, %623 ], [ %563, %562 ], [ %532, %530 ], [ %511, %508 ], [ %441, %438 ], [ %376, %373 ]
  switch i32 %761, label %1127 [
    i32 0, label %1115
    i32 2, label %763
    i32 4, label %762
    i32 3, label %762
  ]

762:                                              ; preds = %755, %755
  br label %770

763:                                              ; preds = %755
  %764 = add i32 %306, 1
  %765 = icmp slt i32 %764, 16
  br i1 %765, label %766, label %1115

766:                                              ; preds = %1109, %763
  %767 = phi i32 [ %1058, %1109 ], [ %756, %763 ]
  %768 = phi i32 [ %1110, %1109 ], [ %764, %763 ]
  %769 = phi i8 [ %1059, %1109 ], [ %758, %763 ]
  br label %303

770:                                              ; preds = %1112, %762
  %771 = phi i32 [ %1058, %1112 ], [ %756, %762 ]
  %772 = phi i32 [ %1113, %1112 ], [ %306, %762 ]
  %773 = phi i8 [ %1059, %1112 ], [ %758, %762 ]
  switch i8 %773, label %1057 [
    i8 47, label %774
    i8 0, label %928
    i8 43, label %928
    i8 60, label %928
    i8 44, label %955
    i8 4, label %986
    i8 41, label %990
    i8 -119, label %994
    i8 6, label %995
    i8 1, label %1022
    i8 58, label %1022
  ]

774:                                              ; preds = %770
  br i1 %297, label %775, label %1057

775:                                              ; preds = %774
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #15
  store i32 0, ptr %13, align 4, !annotation !15
  %776 = load i32, ptr %23, align 4
  %777 = sub i32 %776, %771
  %778 = icmp slt i32 %777, 4
  br i1 %778, label %779, label %783, !prof !9

779:                                              ; preds = %775
  br i1 %110, label %925, label %780

780:                                              ; preds = %779
  %781 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %771, ptr noundef nonnull %13, i32 noundef 4) #15
  %782 = icmp slt i32 %781, 0
  br i1 %782, label %925, label %786

783:                                              ; preds = %775
  %784 = getelementptr i8, ptr %101, i32 %771
  %785 = icmp eq ptr %784, null
  br i1 %785, label %925, label %786

786:                                              ; preds = %783, %780
  %787 = phi ptr [ %784, %783 ], [ %13, %780 ]
  %788 = load i16, ptr %787, align 1
  %789 = and i16 %788, 64
  %790 = icmp eq i16 %789, 0
  br i1 %790, label %791, label %925

791:                                              ; preds = %786
  %792 = lshr i16 %788, 8
  %793 = and i16 %792, 7
  %794 = icmp ugt i16 %793, 1
  br i1 %794, label %925, label %795

795:                                              ; preds = %791
  %796 = getelementptr inbounds %struct.gre_base_hdr, ptr %787, i32 0, i32 1
  %797 = load i16, ptr %796, align 1
  store i16 %797, ptr %22, align 2
  %798 = icmp eq i16 %793, 0
  br i1 %798, label %809, label %799

799:                                              ; preds = %795
  %800 = icmp eq i16 %797, 2952
  br i1 %800, label %801, label %925

801:                                              ; preds = %799
  %802 = load i16, ptr %787, align 1
  %803 = and i16 %802, 32
  %804 = icmp eq i16 %803, 0
  br i1 %804, label %925, label %805

805:                                              ; preds = %801
  %806 = and i16 %802, 128
  %807 = icmp eq i16 %806, 0
  %808 = select i1 %807, i32 4, i32 8
  br label %821

809:                                              ; preds = %795
  %810 = load i16, ptr %787, align 1
  %811 = and i16 %810, 32
  %812 = and i16 %810, 128
  %813 = icmp eq i16 %812, 0
  %814 = select i1 %813, i32 4, i32 8
  %815 = icmp eq i16 %811, 0
  br i1 %815, label %816, label %821

816:                                              ; preds = %809
  %817 = and i16 %810, 16
  %818 = icmp eq i16 %817, 0
  %819 = add nuw nsw i32 %814, 4
  %820 = select i1 %818, i32 %814, i32 %819
  br label %864

821:                                              ; preds = %809, %805
  %822 = phi i32 [ %808, %805 ], [ %814, %809 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #15
  store i32 0, ptr %14, align 4, !annotation !15
  %823 = add i32 %822, %771
  %824 = load i32, ptr %23, align 4
  %825 = sub i32 %824, %823
  %826 = icmp slt i32 %825, 4
  br i1 %826, label %827, label %831, !prof !9

827:                                              ; preds = %821
  br i1 %110, label %857, label %828

828:                                              ; preds = %827
  %829 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %823, ptr noundef nonnull %14, i32 noundef 4) #15
  %830 = icmp slt i32 %829, 0
  br i1 %830, label %857, label %834

831:                                              ; preds = %821
  %832 = getelementptr i8, ptr %101, i32 %823
  %833 = icmp eq ptr %832, null
  br i1 %833, label %857, label %834

834:                                              ; preds = %831, %828
  %835 = phi ptr [ %832, %831 ], [ %14, %828 ]
  %836 = load i32, ptr %2, align 4
  %837 = and i32 %836, 4096
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %858, label %839

839:                                              ; preds = %834
  %840 = load i16, ptr %298, align 2
  %841 = zext i16 %840 to i32
  %842 = getelementptr i8, ptr %3, i32 %841
  %843 = load i32, ptr %835, align 4
  br i1 %798, label %844, label %850

844:                                              ; preds = %839
  store i32 %843, ptr %842, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #15
  %845 = load i16, ptr %787, align 1
  %846 = and i16 %845, 16
  %847 = icmp eq i16 %846, 0
  %848 = select i1 %847, i32 4, i32 8
  %849 = add nuw nsw i32 %848, %822
  br label %864

850:                                              ; preds = %839
  %851 = and i32 %843, -65536
  store i32 %851, ptr %842, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #15
  %852 = load i16, ptr %787, align 1
  %853 = and i16 %852, 16
  %854 = icmp eq i16 %853, 0
  %855 = select i1 %854, i32 4, i32 8
  %856 = add nuw nsw i32 %855, %822
  br label %887

857:                                              ; preds = %831, %828, %827
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #15
  br label %925

858:                                              ; preds = %834
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #15
  %859 = load i16, ptr %787, align 1
  %860 = and i16 %859, 16
  %861 = icmp eq i16 %860, 0
  %862 = select i1 %861, i32 4, i32 8
  %863 = add nuw nsw i32 %862, %822
  br i1 %798, label %864, label %887

864:                                              ; preds = %858, %844, %816
  %865 = phi i32 [ %820, %816 ], [ %863, %858 ], [ %849, %844 ]
  %866 = load i16, ptr %22, align 2
  %867 = icmp eq i16 %866, 22629
  br i1 %867, label %868, label %920

868:                                              ; preds = %864
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %15) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %15, i8 0, i32 14, i1 false) #15, !annotation !15
  %869 = add i32 %865, %771
  %870 = load i32, ptr %23, align 4
  %871 = sub i32 %870, %869
  %872 = icmp slt i32 %871, 14
  br i1 %872, label %873, label %877, !prof !9

873:                                              ; preds = %868
  br i1 %110, label %880, label %874

874:                                              ; preds = %873
  %875 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %869, ptr noundef nonnull %15, i32 noundef 14) #15
  %876 = icmp slt i32 %875, 0
  br i1 %876, label %880, label %881

877:                                              ; preds = %868
  %878 = getelementptr i8, ptr %101, i32 %869
  %879 = icmp eq ptr %878, null
  br i1 %879, label %880, label %881

880:                                              ; preds = %877, %874, %873
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %15) #15
  br label %925

881:                                              ; preds = %877, %874
  %882 = phi ptr [ %878, %877 ], [ %15, %874 ]
  %883 = getelementptr inbounds %struct.ethhdr, ptr %882, i32 0, i32 2
  %884 = load i16, ptr %883, align 1
  store i16 %884, ptr %22, align 2
  %885 = add nuw nsw i32 %865, 14
  %886 = add i32 %885, %771
  store i32 %886, ptr %23, align 4
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %15) #15
  br label %920

887:                                              ; preds = %858, %850
  %888 = phi i32 [ %856, %850 ], [ %863, %858 ]
  %889 = phi i16 [ %852, %850 ], [ %859, %858 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #15
  store i32 0, ptr %16, align 4, !annotation !15
  %890 = add nuw nsw i32 %888, 4
  %891 = icmp slt i16 %889, 0
  %892 = select i1 %891, i32 %890, i32 %888
  %893 = add i32 %892, %771
  %894 = load i32, ptr %23, align 4
  %895 = sub i32 %894, %893
  %896 = icmp slt i32 %895, 4
  br i1 %896, label %897, label %901, !prof !9

897:                                              ; preds = %887
  br i1 %110, label %915, label %898

898:                                              ; preds = %897
  %899 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %893, ptr noundef nonnull %16, i32 noundef 4) #15
  %900 = icmp slt i32 %899, 0
  br i1 %900, label %915, label %904

901:                                              ; preds = %887
  %902 = getelementptr i8, ptr %101, i32 %893
  %903 = icmp eq ptr %902, null
  br i1 %903, label %915, label %904

904:                                              ; preds = %901, %898
  %905 = phi ptr [ %902, %901 ], [ %16, %898 ]
  %906 = getelementptr i8, ptr %905, i32 2
  %907 = load i8, ptr %906, align 1
  %908 = zext i8 %907 to i16
  %909 = shl nuw i16 %908, 8
  %910 = getelementptr i8, ptr %905, i32 3
  %911 = load i8, ptr %910, align 1
  %912 = zext i8 %911 to i16
  %913 = or i16 %909, %912
  switch i16 %913, label %918 [
    i16 33, label %916
    i16 87, label %914
  ]

914:                                              ; preds = %904
  br label %916

915:                                              ; preds = %901, %898, %897
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #15
  br label %925

916:                                              ; preds = %914, %904
  %917 = phi i16 [ -8826, %914 ], [ 8, %904 ]
  store i16 %917, ptr %22, align 2
  br label %918

918:                                              ; preds = %916, %904
  %919 = add nuw nsw i32 %892, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #15
  br label %920

920:                                              ; preds = %918, %881, %864
  %921 = phi i32 [ %885, %881 ], [ %865, %864 ], [ %919, %918 ]
  %922 = add i32 %921, %771
  %923 = load i32, ptr %273, align 4
  %924 = or i32 %923, 4
  store i32 %924, ptr %273, align 4
  br label %925

925:                                              ; preds = %920, %915, %880, %857, %801, %799, %791, %786, %783, %780, %779
  %926 = phi i32 [ %771, %779 ], [ %771, %780 ], [ %771, %791 ], [ %771, %880 ], [ %922, %920 ], [ %771, %857 ], [ %771, %915 ], [ %771, %801 ], [ %771, %799 ], [ %771, %786 ], [ %771, %783 ]
  %927 = phi i32 [ 1, %779 ], [ 1, %780 ], [ 0, %791 ], [ 1, %880 ], [ %276, %920 ], [ 1, %857 ], [ 1, %915 ], [ 0, %801 ], [ 0, %799 ], [ 0, %786 ], [ 1, %783 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  br label %1057

928:                                              ; preds = %770, %770, %770
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #15
  store i16 0, ptr %33, align 2, !annotation !15
  %929 = load i16, ptr %22, align 2
  %930 = icmp eq i16 %929, -8826
  br i1 %930, label %931, label %951

931:                                              ; preds = %928
  %932 = load i32, ptr %23, align 4
  %933 = sub i32 %932, %771
  %934 = icmp slt i32 %933, 2
  br i1 %934, label %935, label %939, !prof !9

935:                                              ; preds = %931
  br i1 %110, label %951, label %936

936:                                              ; preds = %935
  %937 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %771, ptr noundef nonnull %33, i32 noundef 2) #15
  %938 = icmp slt i32 %937, 0
  br i1 %938, label %951, label %942

939:                                              ; preds = %931
  %940 = getelementptr i8, ptr %101, i32 %771
  %941 = icmp eq ptr %940, null
  br i1 %941, label %951, label %942

942:                                              ; preds = %939, %936
  %943 = phi ptr [ %940, %939 ], [ %33, %936 ]
  %944 = load i8, ptr %943, align 1
  %945 = getelementptr i8, ptr %943, i32 1
  %946 = load i8, ptr %945, align 1
  %947 = zext i8 %946 to i32
  %948 = shl nuw nsw i32 %947, 3
  %949 = add i32 %771, 8
  %950 = add i32 %949, %948
  br label %951

951:                                              ; preds = %942, %939, %936, %935, %928
  %952 = phi i32 [ %771, %939 ], [ %950, %942 ], [ %771, %928 ], [ %771, %935 ], [ %771, %936 ]
  %953 = phi i8 [ %773, %939 ], [ %944, %942 ], [ %773, %928 ], [ %773, %935 ], [ %773, %936 ]
  %954 = phi i32 [ 1, %939 ], [ 3, %942 ], [ 4, %928 ], [ 1, %935 ], [ 1, %936 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #15
  br label %1057

955:                                              ; preds = %770
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34) #15
  store i64 0, ptr %34, align 8, !annotation !15
  %956 = load i16, ptr %22, align 2
  %957 = icmp eq i16 %956, -8826
  br i1 %957, label %958, label %982

958:                                              ; preds = %955
  %959 = load i32, ptr %23, align 4
  %960 = sub i32 %959, %771
  %961 = icmp slt i32 %960, 8
  br i1 %961, label %962, label %966, !prof !9

962:                                              ; preds = %958
  br i1 %110, label %982, label %963

963:                                              ; preds = %962
  %964 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %771, ptr noundef nonnull %34, i32 noundef 8) #15
  %965 = icmp slt i32 %964, 0
  br i1 %965, label %982, label %969

966:                                              ; preds = %958
  %967 = getelementptr i8, ptr %101, i32 %771
  %968 = icmp eq ptr %967, null
  br i1 %968, label %982, label %969

969:                                              ; preds = %966, %963
  %970 = phi ptr [ %967, %966 ], [ %34, %963 ]
  %971 = load i32, ptr %273, align 4
  %972 = or i32 %971, 1
  store i32 %972, ptr %273, align 4
  %973 = add i32 %771, 8
  %974 = load i8, ptr %970, align 4
  %975 = getelementptr inbounds %struct.frag_hdr, ptr %970, i32 0, i32 2
  %976 = load i16, ptr %975, align 2
  %977 = and i16 %976, -1793
  %978 = icmp eq i16 %977, 0
  br i1 %978, label %979, label %981

979:                                              ; preds = %969
  %980 = or i32 %971, 3
  store i32 %980, ptr %273, align 4
  br i1 %293, label %981, label %982

981:                                              ; preds = %979, %969
  br label %982

982:                                              ; preds = %981, %979, %966, %963, %962, %955
  %983 = phi i32 [ %771, %966 ], [ %973, %981 ], [ %973, %979 ], [ %771, %955 ], [ %771, %962 ], [ %771, %963 ]
  %984 = phi i8 [ 44, %966 ], [ %974, %981 ], [ %974, %979 ], [ 44, %955 ], [ 44, %962 ], [ 44, %963 ]
  %985 = phi i32 [ 1, %966 ], [ 0, %981 ], [ 3, %979 ], [ 4, %955 ], [ 1, %962 ], [ 1, %963 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #15
  br label %1057

986:                                              ; preds = %770
  br i1 %297, label %987, label %1057

987:                                              ; preds = %986
  store i16 8, ptr %22, align 2
  %988 = load i32, ptr %273, align 4
  %989 = or i32 %988, 4
  store i32 %989, ptr %273, align 4
  br label %1057

990:                                              ; preds = %770
  br i1 %297, label %991, label %1057

991:                                              ; preds = %990
  store i16 -8826, ptr %22, align 2
  %992 = load i32, ptr %273, align 4
  %993 = or i32 %992, 4
  store i32 %993, ptr %273, align 4
  br label %1057

994:                                              ; preds = %770
  store i16 18312, ptr %22, align 2
  br label %1057

995:                                              ; preds = %770
  %996 = load i32, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %12) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %12, i8 0, i32 20, i1 false) #15, !annotation !15
  %997 = load i32, ptr %2, align 4
  %998 = and i32 %997, 1048576
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1021, label %1000

1000:                                             ; preds = %995
  %1001 = sub i32 %996, %771
  %1002 = icmp slt i32 %1001, 20
  br i1 %1002, label %1003, label %1007, !prof !9

1003:                                             ; preds = %1000
  br i1 %110, label %1021, label %1004

1004:                                             ; preds = %1003
  %1005 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %771, ptr noundef nonnull %12, i32 noundef 20) #15
  %1006 = icmp slt i32 %1005, 0
  br i1 %1006, label %1021, label %1010

1007:                                             ; preds = %1000
  %1008 = getelementptr i8, ptr %101, i32 %771
  %1009 = icmp eq ptr %1008, null
  br i1 %1009, label %1021, label %1010

1010:                                             ; preds = %1007, %1004
  %1011 = phi ptr [ %1008, %1007 ], [ %12, %1004 ]
  %1012 = getelementptr %struct.tcphdr, ptr %1011, i32 0, i32 4
  %1013 = load i16, ptr %1012, align 4
  %1014 = and i16 %1013, 240
  %1015 = icmp ult i16 %1014, 80
  br i1 %1015, label %1021, label %1016, !prof !9

1016:                                             ; preds = %1010
  %1017 = load i16, ptr %295, align 2
  %1018 = zext i16 %1017 to i32
  %1019 = getelementptr i8, ptr %3, i32 %1018
  %1020 = and i16 %1013, -241
  store i16 %1020, ptr %1019, align 2
  br label %1021

1021:                                             ; preds = %1016, %1010, %1007, %1004, %1003, %995
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %12) #15
  br label %1057

1022:                                             ; preds = %770, %770
  %1023 = load i32, ptr %2, align 4
  %1024 = and i32 %1023, 64
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1057, label %1026

1026:                                             ; preds = %1022
  %1027 = load i32, ptr %23, align 4
  %1028 = load i16, ptr %294, align 2
  %1029 = zext i16 %1028 to i32
  %1030 = getelementptr i8, ptr %3, i32 %1029
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  store i64 0, ptr %11, align 8, !annotation !15
  %1031 = sub i32 %1027, %771
  %1032 = icmp slt i32 %1031, 8
  br i1 %1032, label %1033, label %1037, !prof !9

1033:                                             ; preds = %1026
  br i1 %110, label %1056, label %1034

1034:                                             ; preds = %1033
  %1035 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %771, ptr noundef nonnull %11, i32 noundef 8) #15
  %1036 = icmp slt i32 %1035, 0
  br i1 %1036, label %1056, label %1040

1037:                                             ; preds = %1026
  %1038 = getelementptr i8, ptr %101, i32 %771
  %1039 = icmp eq ptr %1038, null
  br i1 %1039, label %1056, label %1040

1040:                                             ; preds = %1037, %1034
  %1041 = phi ptr [ %1038, %1037 ], [ %11, %1034 ]
  %1042 = load i8, ptr %1041, align 4
  store i8 %1042, ptr %1030, align 2
  %1043 = getelementptr inbounds %struct.icmphdr, ptr %1041, i32 0, i32 1
  %1044 = load i8, ptr %1043, align 1
  %1045 = getelementptr inbounds %struct.anon.210, ptr %1030, i32 0, i32 1
  store i8 %1044, ptr %1045, align 1
  %1046 = load i8, ptr %1041, align 4
  switch i8 %1046, label %1053 [
    i8 8, label %1047
    i8 0, label %1047
    i8 13, label %1047
    i8 14, label %1047
    i8 -128, label %1047
    i8 -127, label %1047
  ]

1047:                                             ; preds = %1040, %1040, %1040, %1040, %1040, %1040
  %1048 = getelementptr inbounds %struct.icmphdr, ptr %1041, i32 0, i32 3
  %1049 = load i16, ptr %1048, align 4
  %1050 = icmp eq i16 %1049, 0
  %1051 = call i16 @llvm.bswap.i16(i16 %1049) #15
  %1052 = select i1 %1050, i16 1, i16 %1051
  br label %1053

1053:                                             ; preds = %1047, %1040
  %1054 = phi i16 [ %1052, %1047 ], [ 0, %1040 ]
  %1055 = getelementptr inbounds %struct.flow_dissector_key_icmp, ptr %1030, i32 0, i32 1
  store i16 %1054, ptr %1055, align 2
  br label %1056

1056:                                             ; preds = %1053, %1037, %1034, %1033
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  br label %1057

1057:                                             ; preds = %1056, %1022, %1021, %994, %991, %990, %987, %986, %982, %951, %925, %774, %770
  %1058 = phi i32 [ %771, %770 ], [ %771, %1021 ], [ %771, %994 ], [ %771, %991 ], [ %771, %990 ], [ %771, %987 ], [ %771, %986 ], [ %983, %982 ], [ %952, %951 ], [ %926, %925 ], [ %771, %774 ], [ %771, %1022 ], [ %771, %1056 ]
  %1059 = phi i8 [ %773, %770 ], [ 6, %1021 ], [ -119, %994 ], [ 41, %991 ], [ 41, %990 ], [ 4, %987 ], [ 4, %986 ], [ %984, %982 ], [ %953, %951 ], [ 47, %925 ], [ 47, %774 ], [ %773, %1022 ], [ %773, %1056 ]
  %1060 = phi i32 [ 4, %770 ], [ 4, %1021 ], [ 2, %994 ], [ %276, %991 ], [ 0, %990 ], [ %276, %987 ], [ 0, %986 ], [ %985, %982 ], [ %954, %951 ], [ %927, %925 ], [ 0, %774 ], [ 4, %1022 ], [ 4, %1056 ]
  %1061 = load i32, ptr %273, align 4
  %1062 = and i32 %1061, 1
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1064, label %1108

1064:                                             ; preds = %1057
  %1065 = load i32, ptr %23, align 4
  %1066 = load i32, ptr %2, align 4
  %1067 = and i32 %1066, 16
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1069, label %1072

1069:                                             ; preds = %1064
  %1070 = and i32 %1066, 32
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1108, label %1072

1072:                                             ; preds = %1069, %1064
  %1073 = phi i32 [ 5, %1069 ], [ 4, %1064 ]
  %1074 = getelementptr %struct.flow_dissector, ptr %2, i32 0, i32 1, i32 %1073
  %1075 = load i16, ptr %1074, align 2
  %1076 = zext i16 %1075 to i32
  %1077 = getelementptr i8, ptr %3, i32 %1076
  switch i8 %1059, label %1079 [
    i8 6, label %1080
    i8 17, label %1080
    i8 33, label %1080
    i8 50, label %1080
    i8 -124, label %1080
    i8 -120, label %1080
    i8 51, label %1078
  ]

1078:                                             ; preds = %1072
  br label %1080

1079:                                             ; preds = %1072
  br label %1080

1080:                                             ; preds = %1079, %1078, %1072, %1072, %1072, %1072, %1072, %1072
  %1081 = phi i1 [ true, %1072 ], [ true, %1072 ], [ true, %1072 ], [ true, %1072 ], [ true, %1072 ], [ true, %1072 ], [ true, %1078 ], [ false, %1079 ]
  %1082 = phi i32 [ 0, %1072 ], [ 0, %1072 ], [ 0, %1072 ], [ 0, %1072 ], [ 0, %1072 ], [ 0, %1072 ], [ 4, %1078 ], [ -22, %1079 ]
  br i1 %299, label %1083, label %1088

1083:                                             ; preds = %1080
  %1084 = load ptr, ptr %300, align 4
  %1085 = load i32, ptr %301, align 8
  %1086 = load i32, ptr %302, align 4
  %1087 = sub i32 %1085, %1086
  br label %1088

1088:                                             ; preds = %1083, %1080
  %1089 = phi ptr [ %101, %1080 ], [ %1084, %1083 ]
  %1090 = phi i32 [ %1065, %1080 ], [ %1087, %1083 ]
  br i1 %1081, label %1091, label %1106

1091:                                             ; preds = %1088
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  store i32 0, ptr %10, align 4, !annotation !15
  %1092 = add i32 %1082, %1058
  %1093 = sub i32 %1090, %1092
  %1094 = icmp slt i32 %1093, 4
  br i1 %1094, label %1095, label %1099, !prof !9

1095:                                             ; preds = %1091
  br i1 %110, label %1102, label %1096

1096:                                             ; preds = %1095
  %1097 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %1092, ptr noundef nonnull %10, i32 noundef 4) #15
  %1098 = icmp slt i32 %1097, 0
  br i1 %1098, label %1102, label %1103

1099:                                             ; preds = %1091
  %1100 = getelementptr i8, ptr %1089, i32 %1092
  %1101 = icmp eq ptr %1100, null
  br i1 %1101, label %1102, label %1103

1102:                                             ; preds = %1099, %1096, %1095
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  br label %1106

1103:                                             ; preds = %1099, %1096
  %1104 = phi ptr [ %1100, %1099 ], [ %10, %1096 ]
  %1105 = load i32, ptr %1104, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  br label %1106

1106:                                             ; preds = %1103, %1102, %1088
  %1107 = phi i32 [ %1105, %1103 ], [ 0, %1102 ], [ 0, %1088 ]
  store i32 %1107, ptr %1077, align 4
  br label %1108

1108:                                             ; preds = %1106, %1069, %1057
  switch i32 %1060, label %1127 [
    i32 2, label %1109
    i32 3, label %1112
    i32 0, label %1115
    i32 4, label %1115
  ]

1109:                                             ; preds = %1108
  %1110 = add i32 %772, 1
  %1111 = icmp slt i32 %1110, 16
  br i1 %1111, label %766, label %1115

1112:                                             ; preds = %1108
  %1113 = add i32 %772, 1
  %1114 = icmp slt i32 %1113, 16
  br i1 %1114, label %770, label %1115

1115:                                             ; preds = %1127, %1112, %1109, %1108, %1108, %763, %755, %632
  %1116 = phi i32 [ %1128, %1127 ], [ %633, %632 ], [ %1058, %1112 ], [ %1058, %1108 ], [ %1058, %1108 ], [ %756, %755 ], [ %756, %763 ], [ %1058, %1109 ]
  %1117 = phi i1 [ false, %1127 ], [ true, %632 ], [ true, %1112 ], [ true, %1108 ], [ true, %1108 ], [ true, %1109 ], [ true, %763 ], [ true, %755 ]
  %1118 = phi i8 [ %1129, %1127 ], [ %307, %632 ], [ %1059, %1112 ], [ %1059, %1108 ], [ %1059, %1108 ], [ %758, %755 ], [ %758, %763 ], [ %1059, %1109 ]
  %1119 = select i1 %110, ptr %23, ptr %301
  %1120 = load i32, ptr %1119, align 4
  %1121 = and i32 %1116, 65535
  %1122 = and i32 %1120, 65535
  %1123 = call i32 @llvm.umin.i32(i32 %1121, i32 %1122)
  %1124 = trunc i32 %1123 to i16
  store i16 %1124, ptr %105, align 4
  %1125 = load i16, ptr %22, align 2
  store i16 %1125, ptr %109, align 2
  %1126 = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %109, i32 0, i32 1
  store i8 %1118, ptr %1126, align 2
  br label %1130

1127:                                             ; preds = %1108, %755, %628, %303
  %1128 = phi i32 [ %304, %628 ], [ %1058, %1108 ], [ %304, %303 ], [ %756, %755 ]
  %1129 = phi i8 [ %307, %628 ], [ %1059, %1108 ], [ %307, %303 ], [ %758, %755 ]
  br label %1115

1130:                                             ; preds = %1115, %256
  %1131 = phi i1 [ %1117, %1115 ], [ %150, %256 ]
  ret i1 %1131
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @flow_get_u32_src(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %0, i32 0, i32 1
  %3 = load i16, ptr %2, align 2
  switch i16 %3, label %22 [
    i16 2, label %4
    i16 3, label %7
    i16 8, label %19
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.flow_keys, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  br label %22

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.flow_keys, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.flow_keys, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = xor i32 %11, %9
  %13 = getelementptr %struct.flow_keys, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %12, %14
  %16 = getelementptr %struct.flow_keys, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = xor i32 %15, %17
  br label %22

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.flow_keys, ptr %0, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %7, %4, %1
  %23 = phi i32 [ %21, %19 ], [ %18, %7 ], [ %6, %4 ], [ 0, %1 ]
  ret i32 %23
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @flow_get_u32_dst(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %0, i32 0, i32 1
  %3 = load i16, ptr %2, align 2
  switch i16 %3, label %19 [
    i16 2, label %4
    i16 3, label %7
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.flow_keys, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  br label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.flow_keys, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.flow_keys, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = xor i32 %11, %9
  %13 = getelementptr %struct.flow_keys, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %12, %14
  %16 = getelementptr %struct.flow_keys, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = xor i32 %15, %17
  br label %19

19:                                               ; preds = %7, %4, %1
  %20 = phi i32 [ %18, %7 ], [ %6, %4 ], [ 0, %1 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @flow_hash_from_keys(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = load volatile i32, ptr @__flow_hash_secret_init.___once_key, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %9, !prof !9

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !15
  %6 = call zeroext i1 @__do_once_start(ptr noundef nonnull @__flow_hash_secret_init.___done, ptr noundef nonnull %2) #15
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %5
  call void @get_random_bytes(ptr noundef nonnull @hashrnd, i32 noundef 16) #15
  call void @__do_once_done(ptr noundef nonnull @__flow_hash_secret_init.___done, ptr noundef nonnull @__flow_hash_secret_init.___once_key, ptr noundef nonnull %2, ptr noundef null) #15
  br label %8

8:                                                ; preds = %7, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %0, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  switch i16 %11, label %54 [
    i16 2, label %12
    i16 3, label %27
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.flow_keys, ptr %0, i32 0, i32 8
  %14 = getelementptr inbounds %struct.flow_keys, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %13, align 4
  %17 = sub i32 %15, %16
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 %15, ptr %13, align 4
  store i32 %16, ptr %14, align 4
  br label %20

20:                                               ; preds = %19, %12
  %21 = getelementptr inbounds %struct.flow_keys, ptr %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.anon.215, ptr %21, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = load i16, ptr %21, align 4
  %25 = icmp ult i16 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %20
  store i16 %23, ptr %21, align 4
  store i16 %24, ptr %22, align 2
  br label %57

27:                                               ; preds = %9
  %28 = getelementptr inbounds %struct.flow_keys, ptr %0, i32 0, i32 8
  %29 = getelementptr inbounds %struct.flow_keys, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1
  %30 = call i32 @memcmp(ptr noundef dereferenceable(16) %29, ptr noundef dereferenceable(16) %28, i32 noundef 16) #15
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load i32, ptr %28, align 4
  %34 = load i32, ptr %29, align 4
  store i32 %34, ptr %28, align 4
  store i32 %33, ptr %29, align 4
  %35 = getelementptr %struct.flow_keys, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr %struct.flow_keys, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %35, align 4
  store i32 %36, ptr %37, align 4
  %39 = getelementptr %struct.flow_keys, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr %struct.flow_keys, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  store i32 %42, ptr %39, align 4
  store i32 %40, ptr %41, align 4
  %43 = getelementptr %struct.flow_keys, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr %struct.flow_keys, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr %43, align 4
  store i32 %44, ptr %45, align 4
  br label %47

47:                                               ; preds = %32, %27
  %48 = getelementptr inbounds %struct.flow_keys, ptr %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.anon.215, ptr %48, i32 0, i32 1
  %50 = load i16, ptr %49, align 2
  %51 = load i16, ptr %48, align 4
  %52 = icmp ult i16 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  store i16 %50, ptr %48, align 4
  store i16 %51, ptr %49, align 2
  br label %57

54:                                               ; preds = %9
  %55 = icmp eq i16 %11, 8
  %56 = select i1 %55, i32 36, i32 32
  br label %57

57:                                               ; preds = %54, %53, %47, %26, %20
  %58 = phi i32 [ %56, %54 ], [ 40, %20 ], [ 40, %26 ], [ 64, %47 ], [ 64, %53 ]
  %59 = getelementptr inbounds %struct.flow_keys, ptr %0, i32 0, i32 1
  %60 = call i64 @__siphash_unaligned(ptr noundef %59, i32 noundef %58, ptr noundef nonnull @hashrnd) #15
  %61 = trunc i64 %60 to i32
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i32 1, i32 %61
  ret i32 %63
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @make_flow_keys_digest(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #10 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16) %0, i8 0, i32 16, i1 false)
  %3 = getelementptr inbounds %struct.flow_keys, ptr %1, i32 0, i32 1
  %4 = load i16, ptr %3, align 8
  store i16 %4, ptr %0, align 4
  %5 = getelementptr inbounds %struct.flow_keys, ptr %1, i32 0, i32 1, i32 1
  %6 = load i8, ptr %5, align 2
  %7 = getelementptr inbounds %struct._flow_keys_digest_data, ptr %0, i32 0, i32 1
  store i8 %6, ptr %7, align 2
  %8 = getelementptr inbounds %struct.flow_keys, ptr %1, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct._flow_keys_digest_data, ptr %0, i32 0, i32 3
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.flow_keys, ptr %1, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct._flow_keys_digest_data, ptr %0, i32 0, i32 4
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.flow_keys, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct._flow_keys_digest_data, ptr %0, i32 0, i32 5
  store i32 %15, ptr %16, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__skb_get_hash_symmetric(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flow_keys, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #15
  %4 = load volatile i32, ptr @__flow_hash_secret_init.___once_key, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %10, !prof !9

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !15
  %7 = call zeroext i1 @__do_once_start(ptr noundef nonnull @__flow_hash_secret_init.___done, ptr noundef nonnull %2) #15
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %6
  call void @get_random_bytes(ptr noundef nonnull @hashrnd, i32 noundef 16) #15
  call void @__do_once_done(ptr noundef nonnull @__flow_hash_secret_init.___done, ptr noundef nonnull @__flow_hash_secret_init.___once_key, ptr noundef nonnull %2, ptr noundef null) #15
  br label %9

9:                                                ; preds = %8, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  br label %10

10:                                               ; preds = %9, %1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i32 72, i1 false)
  %11 = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %0, ptr noundef nonnull @flow_keys_dissector_symmetric, ptr noundef nonnull %3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 2)
  %12 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %3, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  switch i16 %13, label %56 [
    i16 2, label %14
    i16 3, label %29
  ]

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.flow_keys, ptr %3, i32 0, i32 8
  %16 = getelementptr inbounds %struct.flow_keys, ptr %3, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %17 = load i32, ptr %16, align 8
  %18 = load i32, ptr %15, align 4
  %19 = sub i32 %17, %18
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 %17, ptr %15, align 4
  store i32 %18, ptr %16, align 8
  br label %22

22:                                               ; preds = %21, %14
  %23 = getelementptr inbounds %struct.flow_keys, ptr %3, i32 0, i32 6
  %24 = getelementptr inbounds %struct.anon.215, ptr %23, i32 0, i32 1
  %25 = load i16, ptr %24, align 2
  %26 = load i16, ptr %23, align 4
  %27 = icmp ult i16 %25, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %22
  store i16 %25, ptr %23, align 4
  store i16 %26, ptr %24, align 2
  br label %59

29:                                               ; preds = %10
  %30 = getelementptr inbounds %struct.flow_keys, ptr %3, i32 0, i32 8
  %31 = getelementptr inbounds %struct.flow_keys, ptr %3, i32 0, i32 8, i32 0, i32 0, i32 1
  %32 = call i32 @memcmp(ptr noundef dereferenceable(16) %31, ptr noundef dereferenceable(16) %30, i32 noundef 16) #15
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load i32, ptr %30, align 4
  %36 = load i32, ptr %31, align 4
  store i32 %36, ptr %30, align 4
  store i32 %35, ptr %31, align 4
  %37 = getelementptr inbounds %struct.flow_keys, ptr %3, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.flow_keys, ptr %3, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %40 = load i32, ptr %39, align 8
  store i32 %40, ptr %37, align 8
  store i32 %38, ptr %39, align 8
  %41 = getelementptr inbounds %struct.flow_keys, ptr %3, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.flow_keys, ptr %3, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %41, align 4
  store i32 %42, ptr %43, align 4
  %45 = getelementptr inbounds %struct.flow_keys, ptr %3, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr inbounds %struct.flow_keys, ptr %3, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 0, i32 3
  %48 = load i32, ptr %47, align 8
  store i32 %48, ptr %45, align 8
  store i32 %46, ptr %47, align 8
  br label %49

49:                                               ; preds = %34, %29
  %50 = getelementptr inbounds %struct.flow_keys, ptr %3, i32 0, i32 6
  %51 = getelementptr inbounds %struct.anon.215, ptr %50, i32 0, i32 1
  %52 = load i16, ptr %51, align 2
  %53 = load i16, ptr %50, align 4
  %54 = icmp ult i16 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  store i16 %52, ptr %50, align 4
  store i16 %53, ptr %51, align 2
  br label %59

56:                                               ; preds = %10
  %57 = icmp eq i16 %13, 8
  %58 = select i1 %57, i32 36, i32 32
  br label %59

59:                                               ; preds = %56, %55, %49, %28, %22
  %60 = phi i32 [ %58, %56 ], [ 40, %22 ], [ 40, %28 ], [ 64, %49 ], [ 64, %55 ]
  %61 = getelementptr inbounds %struct.flow_keys, ptr %3, i32 0, i32 1
  %62 = call i64 @__siphash_unaligned(ptr noundef %61, i32 noundef %60, ptr noundef nonnull @hashrnd) #15
  %63 = trunc i64 %62 to i32
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i32 1, i32 %63
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #15
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__skb_get_hash(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flow_keys, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !15
  %4 = load volatile i32, ptr @__flow_hash_secret_init.___once_key, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %10, !prof !9

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !15
  %7 = call zeroext i1 @__do_once_start(ptr noundef nonnull @__flow_hash_secret_init.___done, ptr noundef nonnull %2) #15
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %6
  call void @get_random_bytes(ptr noundef nonnull @hashrnd, i32 noundef 16) #15
  call void @__do_once_done(ptr noundef nonnull @__flow_hash_secret_init.___done, ptr noundef nonnull @__flow_hash_secret_init.___once_key, ptr noundef nonnull %2, ptr noundef null) #15
  br label %9

9:                                                ; preds = %8, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  br label %10

10:                                               ; preds = %9, %1
  %11 = call fastcc i32 @___skb_get_hash(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @hashrnd)
  %12 = getelementptr inbounds %struct.flow_keys, ptr %3, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, -769
  br label %26

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.flow_keys, ptr %3, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, -769
  br i1 %22, label %29, label %26

26:                                               ; preds = %19, %15
  %27 = phi i16 [ %18, %15 ], [ %25, %19 ]
  %28 = phi ptr [ %16, %15 ], [ %23, %19 ]
  br label %29

29:                                               ; preds = %26, %19
  %30 = phi i16 [ %27, %26 ], [ %25, %19 ]
  %31 = phi ptr [ %28, %26 ], [ %23, %19 ]
  %32 = phi i16 [ 768, %26 ], [ 512, %19 ]
  %33 = or i16 %32, %30
  store i16 %33, ptr %31, align 8
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 7
  store i32 %11, ptr %34, align 8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @___skb_get_hash(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(72) %1, i8 0, i32 72, i1 false) #15
  %4 = tail call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %0, ptr noundef nonnull @flow_keys_dissector, ptr noundef %1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 2) #15
  %5 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 2
  switch i16 %6, label %49 [
    i16 2, label %7
    i16 3, label %22
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.flow_keys, ptr %1, i32 0, i32 8
  %9 = getelementptr inbounds %struct.flow_keys, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %8, align 4
  %12 = sub i32 %10, %11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  store i32 %10, ptr %8, align 4
  store i32 %11, ptr %9, align 4
  br label %15

15:                                               ; preds = %14, %7
  %16 = getelementptr inbounds %struct.flow_keys, ptr %1, i32 0, i32 6
  %17 = getelementptr inbounds %struct.anon.215, ptr %16, i32 0, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = load i16, ptr %16, align 4
  %20 = icmp ult i16 %18, %19
  br i1 %20, label %21, label %52

21:                                               ; preds = %15
  store i16 %18, ptr %16, align 4
  store i16 %19, ptr %17, align 2
  br label %52

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.flow_keys, ptr %1, i32 0, i32 8
  %24 = getelementptr inbounds %struct.flow_keys, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 1
  %25 = tail call i32 @memcmp(ptr noundef dereferenceable(16) %24, ptr noundef dereferenceable(16) %23, i32 noundef 16) #15
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load i32, ptr %23, align 4
  %29 = load i32, ptr %24, align 4
  store i32 %29, ptr %23, align 4
  store i32 %28, ptr %24, align 4
  %30 = getelementptr %struct.flow_keys, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr %struct.flow_keys, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %30, align 4
  store i32 %31, ptr %32, align 4
  %34 = getelementptr %struct.flow_keys, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr %struct.flow_keys, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %34, align 4
  store i32 %35, ptr %36, align 4
  %38 = getelementptr %struct.flow_keys, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr %struct.flow_keys, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr %38, align 4
  store i32 %39, ptr %40, align 4
  br label %42

42:                                               ; preds = %27, %22
  %43 = getelementptr inbounds %struct.flow_keys, ptr %1, i32 0, i32 6
  %44 = getelementptr inbounds %struct.anon.215, ptr %43, i32 0, i32 1
  %45 = load i16, ptr %44, align 2
  %46 = load i16, ptr %43, align 4
  %47 = icmp ult i16 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  store i16 %45, ptr %43, align 4
  store i16 %46, ptr %44, align 2
  br label %52

49:                                               ; preds = %3
  %50 = icmp eq i16 %6, 8
  %51 = select i1 %50, i32 36, i32 32
  br label %52

52:                                               ; preds = %49, %48, %42, %21, %15
  %53 = phi i32 [ %51, %49 ], [ 40, %15 ], [ 40, %21 ], [ 64, %42 ], [ 64, %48 ]
  %54 = getelementptr inbounds %struct.flow_keys, ptr %1, i32 0, i32 1
  %55 = tail call i64 @__siphash_unaligned(ptr noundef %54, i32 noundef %53, ptr noundef %2) #15
  %56 = trunc i64 %55 to i32
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 1, i32 %56
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_get_hash_perturb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.flow_keys, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !15
  %4 = call fastcc i32 @___skb_get_hash(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #15
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__skb_get_poff(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = load i16, ptr %2, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %2, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 3
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %48, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.flow_keys_basic, ptr %2, i32 0, i32 1, i32 1
  %14 = load i8, ptr %13, align 2
  switch i8 %14, label %48 [
    i8 6, label %15
    i8 17, label %36
    i8 -120, label %36
    i8 1, label %38
    i8 58, label %40
    i8 2, label %42
    i8 33, label %44
    i8 -124, label %46
  ]

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  store i8 0, ptr %5, align 1, !annotation !15
  %16 = add nuw nsw i32 %7, 12
  %17 = sub i32 %3, %16
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %24, !prof !9

19:                                               ; preds = %15
  %20 = icmp eq ptr %0, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %16, ptr noundef nonnull %5, i32 noundef 1) #15
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %27, label %28

24:                                               ; preds = %15
  %25 = getelementptr i8, ptr %1, i32 %16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21, %19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  br label %48

28:                                               ; preds = %24, %21
  %29 = phi ptr [ %25, %24 ], [ %5, %21 ]
  %30 = load i8, ptr %29, align 1
  %31 = lshr i8 %30, 2
  %32 = and i8 %31, 60
  %33 = call i8 @llvm.umax.i8(i8 %32, i8 20)
  %34 = zext i8 %33 to i32
  %35 = add nuw nsw i32 %34, %7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  br label %48

36:                                               ; preds = %12, %12
  %37 = add nuw nsw i32 %7, 8
  br label %48

38:                                               ; preds = %12
  %39 = add nuw nsw i32 %7, 8
  br label %48

40:                                               ; preds = %12
  %41 = add nuw nsw i32 %7, 8
  br label %48

42:                                               ; preds = %12
  %43 = add nuw nsw i32 %7, 8
  br label %48

44:                                               ; preds = %12
  %45 = add nuw nsw i32 %7, 12
  br label %48

46:                                               ; preds = %12
  %47 = add nuw nsw i32 %7, 12
  br label %48

48:                                               ; preds = %46, %44, %42, %40, %38, %36, %28, %27, %12, %4
  %49 = phi i32 [ %7, %4 ], [ %7, %27 ], [ %7, %12 ], [ %47, %46 ], [ %45, %44 ], [ %43, %42 ], [ %41, %40 ], [ %39, %38 ], [ %37, %36 ], [ %35, %28 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_get_poff(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.flow_keys_basic, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  %3 = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %0, ptr noundef nonnull @flow_keys_basic_dissector, ptr noundef nonnull %2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %8, %10
  %12 = call i32 @__skb_get_poff(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %2, i32 noundef %11)
  br label %13

13:                                               ; preds = %4, %1
  %14 = phi i32 [ %12, %4 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #15
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__get_hash_from_flowi6(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(72) %1, i8 0, i32 72, i1 false)
  %3 = getelementptr inbounds %struct.flow_keys, ptr %1, i32 0, i32 8
  %4 = getelementptr inbounds %struct.flowi6, ptr %0, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %3, ptr noundef align 8 dereferenceable(16) %4, i32 16, i1 false)
  %5 = getelementptr inbounds %struct.flow_keys, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.flowi6, ptr %0, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %5, ptr noundef align 8 dereferenceable(16) %6, i32 16, i1 false)
  %7 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %1, i32 0, i32 1
  store i16 3, ptr %7, align 2
  %8 = getelementptr inbounds %struct.flowi6, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.anon.64, ptr %8, i32 0, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = getelementptr inbounds %struct.flow_keys, ptr %1, i32 0, i32 6
  store i16 %10, ptr %11, align 4
  %12 = load i16, ptr %8, align 4
  %13 = getelementptr inbounds %struct.anon.215, ptr %11, i32 0, i32 1
  store i16 %12, ptr %13, align 2
  %14 = load i32, ptr %8, align 4
  %15 = getelementptr inbounds %struct.flow_keys, ptr %1, i32 0, i32 5
  store i32 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.flowi6, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, -61696
  %19 = getelementptr inbounds %struct.flow_keys, ptr %1, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.flowi_common, ptr %0, i32 0, i32 5
  %21 = load i8, ptr %20, align 2
  %22 = getelementptr inbounds %struct.flow_keys, ptr %1, i32 0, i32 1, i32 1
  store i8 %21, ptr %22, align 2
  %23 = tail call i32 @flow_hash_from_keys(ptr noundef %1)
  ret i32 %23
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_default_flow_dissectors() #12 section ".init.text" {
  tail call void @skb_flow_dissector_init(ptr noundef nonnull @flow_keys_dissector, ptr noundef nonnull @flow_keys_dissector_keys, i32 noundef 9)
  tail call void @skb_flow_dissector_init(ptr noundef nonnull @flow_keys_dissector_symmetric, ptr noundef nonnull @flow_keys_dissector_symmetric_keys, i32 noundef 5)
  tail call void @skb_flow_dissector_init(ptr noundef nonnull @flow_keys_basic_dissector, ptr noundef nonnull @flow_keys_basic_dissector_keys, i32 noundef 2)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__siphash_unaligned(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind readonly }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2157810561, i64 2157811050, i64 2157810598, i64 2157810654, i64 2157810688, i64 2157810712, i64 2157810753, i64 2157810774, i64 2157810802, i64 2157810836}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2157811676, i64 2157812165, i64 2157811713, i64 2157811769, i64 2157811803, i64 2157811827, i64 2157811868, i64 2157811889, i64 2157811917, i64 2157811951}
!13 = !{i64 2157812823, i64 2157813312, i64 2157812860, i64 2157812916, i64 2157812950, i64 2157812974, i64 2157813015, i64 2157813036, i64 2157813064, i64 2157813098}
!14 = !{i64 2157813966, i64 2157814455, i64 2157814003, i64 2157814059, i64 2157814093, i64 2157814117, i64 2157814158, i64 2157814179, i64 2157814207, i64 2157814241}
!15 = !{!"auto-init"}
!16 = !{i64 372654}
!17 = !{i64 353954, i64 354015}
!18 = !{i64 2149703762}
!19 = !{i64 2149704063}
!20 = !{i64 356971}
!21 = !{!"branch_weights", i32 1, i32 4001}
!22 = !{i64 2149377743}
!23 = !{i64 2149377960}
