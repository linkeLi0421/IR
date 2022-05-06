; ModuleID = '/llk/IR/net/ipv4/ip_tunnel.c_pt.bc'
source_filename = "../net/ipv4/ip_tunnel.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_rcv:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_rcv\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_rcv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_encap_add_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_encap_add_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_encap_add_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_encap_del_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_encap_del_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_encap_del_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_encap_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_encap_setup\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_encap_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_md_tunnel_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_md_tunnel_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_ip_md_tunnel_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_ctl\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_siocdevprivate:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_siocdevprivate\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_siocdevprivate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ip_tunnel_change_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22__ip_tunnel_change_mtu\22\09\09\09\09\09"
module asm "__kstrtabns___ip_tunnel_change_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_change_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_change_mtu\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_change_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_dellink:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_dellink\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_dellink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_get_link_net:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_get_link_net\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_get_link_net:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_get_iflink:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_get_iflink\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_get_iflink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_init_net:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_init_net\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_init_net:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_delete_nets:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_delete_nets\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_delete_nets:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_newlink:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_newlink\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_newlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_changelink:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_changelink\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_changelink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_init\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_uninit:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_uninit\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_uninit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_setup\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.30, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32 }
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
%struct.cpumask = type { [1 x i32] }
%struct.ip_tunnel_net = type { ptr, ptr, [128 x %struct.hlist_head], ptr, i32 }
%struct.ip_tunnel = type { ptr, %struct.hlist_node, ptr, %struct.netdevice_tracker, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i16, %struct.dst_cache, %struct.ip_tunnel_parm, i32, i32, i32, %struct.ip_tunnel_encap, ptr, i32, i32, %struct.gro_cells, i32, i8, i8 }
%struct.netdevice_tracker = type {}
%struct.dst_cache = type { ptr, i32 }
%struct.ip_tunnel_parm = type { [16 x i8], i32, i16, i16, i32, i32, %struct.iphdr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ip_tunnel_encap = type { i16, i16, i16, i16 }
%struct.gro_cells = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.144 = type { ptr }
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
%struct.vlan_hdr = type { i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.114, [48 x i8], %union.anon.115, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.117, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.114 = type { i64 }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type { i32, ptr }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.119, i32, i32, i32, i16, i16, %union.anon.121, %union.anon.122, %union.anon.123, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.119 = type { i32 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { i32 }
%union.anon.123 = type { i16 }
%struct.tnl_ptk_info = type { i16, i16, i32, i32, i32 }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync, [28 x i8] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.callback_head = type { ptr, ptr }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.149 }
%union.anon.149 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.150, i16, i8, i8, i32, i16, i16 }
%union.anon.150 = type { %struct.anon.152 }
%struct.anon.152 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.inet6_skb_parm = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.64, i32, %struct.list_head, ptr }
%union.anon.64 = type { %struct.in6_addr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [4 x i8], [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, %struct.netdevice_tracker, [0 x i8] }
%struct.sk_buff_head = type { %union.anon.58, i32, %struct.spinlock }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type { ptr, ptr }
%struct.hh_cache = type { i32, %struct.seqlock_t, [24 x i32] }
%struct.ip_tunnel_encap_ops = type { ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_ip_tunnel_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_lookup to i32), ptr @__kstrtab_ip_tunnel_lookup, ptr @__kstrtabns_ip_tunnel_lookup }, section "___ksymtab_gpl+ip_tunnel_lookup", align 4
@.str = private unnamed_addr constant [45 x i8] c"\016ip_tunnel: non-ECT from %pI4 with TOS=%#x\0A\00", align 1
@__kstrtab_ip_tunnel_rcv = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_rcv = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_rcv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_rcv to i32), ptr @__kstrtab_ip_tunnel_rcv, ptr @__kstrtabns_ip_tunnel_rcv }, section "___ksymtab_gpl+ip_tunnel_rcv", align 4
@iptun_encaps = external dso_local global [8 x ptr], align 4
@__kstrtab_ip_tunnel_encap_add_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_encap_add_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_encap_add_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_encap_add_ops to i32), ptr @__kstrtab_ip_tunnel_encap_add_ops, ptr @__kstrtabns_ip_tunnel_encap_add_ops }, section "___ksymtab+ip_tunnel_encap_add_ops", align 4
@__kstrtab_ip_tunnel_encap_del_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_encap_del_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_encap_del_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_encap_del_ops to i32), ptr @__kstrtab_ip_tunnel_encap_del_ops, ptr @__kstrtabns_ip_tunnel_encap_del_ops }, section "___ksymtab+ip_tunnel_encap_del_ops", align 4
@__kstrtab_ip_tunnel_encap_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_encap_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_encap_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_encap_setup to i32), ptr @__kstrtab_ip_tunnel_encap_setup, ptr @__kstrtabns_ip_tunnel_encap_setup }, section "___ksymtab_gpl+ip_tunnel_encap_setup", align 4
@__kstrtab_ip_md_tunnel_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_md_tunnel_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_md_tunnel_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_md_tunnel_xmit to i32), ptr @__kstrtab_ip_md_tunnel_xmit, ptr @__kstrtabns_ip_md_tunnel_xmit }, section "___ksymtab_gpl+ip_md_tunnel_xmit", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_ip_tunnel_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_xmit to i32), ptr @__kstrtab_ip_tunnel_xmit, ptr @__kstrtabns_ip_tunnel_xmit }, section "___ksymtab_gpl+ip_tunnel_xmit", align 4
@__kstrtab_ip_tunnel_ctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_ctl = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_ctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_ctl to i32), ptr @__kstrtab_ip_tunnel_ctl, ptr @__kstrtabns_ip_tunnel_ctl }, section "___ksymtab_gpl+ip_tunnel_ctl", align 4
@__kstrtab_ip_tunnel_siocdevprivate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_siocdevprivate = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_siocdevprivate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_siocdevprivate to i32), ptr @__kstrtab_ip_tunnel_siocdevprivate, ptr @__kstrtabns_ip_tunnel_siocdevprivate }, section "___ksymtab_gpl+ip_tunnel_siocdevprivate", align 4
@__kstrtab___ip_tunnel_change_mtu = external dso_local constant [0 x i8], align 1
@__kstrtabns___ip_tunnel_change_mtu = external dso_local constant [0 x i8], align 1
@__ksymtab___ip_tunnel_change_mtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ip_tunnel_change_mtu to i32), ptr @__kstrtab___ip_tunnel_change_mtu, ptr @__kstrtabns___ip_tunnel_change_mtu }, section "___ksymtab_gpl+__ip_tunnel_change_mtu", align 4
@__kstrtab_ip_tunnel_change_mtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_change_mtu = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_change_mtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_change_mtu to i32), ptr @__kstrtab_ip_tunnel_change_mtu, ptr @__kstrtabns_ip_tunnel_change_mtu }, section "___ksymtab_gpl+ip_tunnel_change_mtu", align 4
@__kstrtab_ip_tunnel_dellink = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_dellink = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_dellink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_dellink to i32), ptr @__kstrtab_ip_tunnel_dellink, ptr @__kstrtabns_ip_tunnel_dellink }, section "___ksymtab_gpl+ip_tunnel_dellink", align 4
@__kstrtab_ip_tunnel_get_link_net = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_get_link_net = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_get_link_net = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_get_link_net to i32), ptr @__kstrtab_ip_tunnel_get_link_net, ptr @__kstrtabns_ip_tunnel_get_link_net }, section "___ksymtab+ip_tunnel_get_link_net", align 4
@__kstrtab_ip_tunnel_get_iflink = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_get_iflink = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_get_iflink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_get_iflink to i32), ptr @__kstrtab_ip_tunnel_get_iflink, ptr @__kstrtabns_ip_tunnel_get_iflink }, section "___ksymtab+ip_tunnel_get_iflink", align 4
@init_net = external dso_local global %struct.net, align 64
@__kstrtab_ip_tunnel_init_net = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_init_net = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_init_net = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_init_net to i32), ptr @__kstrtab_ip_tunnel_init_net, ptr @__kstrtabns_ip_tunnel_init_net }, section "___ksymtab_gpl+ip_tunnel_init_net", align 4
@__kstrtab_ip_tunnel_delete_nets = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_delete_nets = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_delete_nets = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_delete_nets to i32), ptr @__kstrtab_ip_tunnel_delete_nets, ptr @__kstrtabns_ip_tunnel_delete_nets }, section "___ksymtab_gpl+ip_tunnel_delete_nets", align 4
@__kstrtab_ip_tunnel_newlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_newlink = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_newlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_newlink to i32), ptr @__kstrtab_ip_tunnel_newlink, ptr @__kstrtabns_ip_tunnel_newlink }, section "___ksymtab_gpl+ip_tunnel_newlink", align 4
@__kstrtab_ip_tunnel_changelink = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_changelink = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_changelink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_changelink to i32), ptr @__kstrtab_ip_tunnel_changelink, ptr @__kstrtabns_ip_tunnel_changelink }, section "___ksymtab_gpl+ip_tunnel_changelink", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab_ip_tunnel_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_init to i32), ptr @__kstrtab_ip_tunnel_init, ptr @__kstrtabns_ip_tunnel_init }, section "___ksymtab_gpl+ip_tunnel_init", align 4
@__kstrtab_ip_tunnel_uninit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_uninit = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_uninit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_uninit to i32), ptr @__kstrtab_ip_tunnel_uninit, ptr @__kstrtabns_ip_tunnel_uninit }, section "___ksymtab_gpl+ip_tunnel_uninit", align 4
@__kstrtab_ip_tunnel_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_setup to i32), ptr @__kstrtab_ip_tunnel_setup, ptr @__kstrtabns_ip_tunnel_setup }, section "___ksymtab_gpl+ip_tunnel_setup", align 4
@__UNIQUE_ID_file572 = internal constant [34 x i8] c"ip_tunnel.file=net/ipv4/ip_tunnel\00", section ".modinfo", align 1
@__UNIQUE_ID_license573 = internal constant [22 x i8] c"ip_tunnel.license=GPL\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"include/linux/if_vlan.h\00", align 1
@sysctl_fb_tunnels_only_for_init_net = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__ip_tunnel_create.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"net/ipv4/ip_tunnel.c\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_file572, ptr @__UNIQUE_ID_license573, ptr @__ksymtab___ip_tunnel_change_mtu, ptr @__ksymtab_ip_md_tunnel_xmit, ptr @__ksymtab_ip_tunnel_change_mtu, ptr @__ksymtab_ip_tunnel_changelink, ptr @__ksymtab_ip_tunnel_ctl, ptr @__ksymtab_ip_tunnel_delete_nets, ptr @__ksymtab_ip_tunnel_dellink, ptr @__ksymtab_ip_tunnel_encap_add_ops, ptr @__ksymtab_ip_tunnel_encap_del_ops, ptr @__ksymtab_ip_tunnel_encap_setup, ptr @__ksymtab_ip_tunnel_get_iflink, ptr @__ksymtab_ip_tunnel_get_link_net, ptr @__ksymtab_ip_tunnel_init, ptr @__ksymtab_ip_tunnel_init_net, ptr @__ksymtab_ip_tunnel_lookup, ptr @__ksymtab_ip_tunnel_newlink, ptr @__ksymtab_ip_tunnel_rcv, ptr @__ksymtab_ip_tunnel_setup, ptr @__ksymtab_ip_tunnel_siocdevprivate, ptr @__ksymtab_ip_tunnel_uninit, ptr @__ksymtab_ip_tunnel_xmit], section "llvm.metadata"

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ip_tunnel_lookup(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = xor i32 %5, %3
  %8 = mul i32 %7, 1640531527
  %9 = lshr i32 %8, 25
  %10 = getelementptr %struct.ip_tunnel_net, ptr %0, i32 0, i32 2, i32 %9
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = getelementptr i8, ptr %11, i32 -4
  %14 = icmp eq ptr %13, null
  %15 = or i1 %12, %14
  br i1 %15, label %60, label %16

16:                                               ; preds = %6
  %17 = and i16 %2, 1024
  br label %18

18:                                               ; preds = %52, %16
  %19 = phi ptr [ %13, %16 ], [ %57, %52 ]
  %20 = phi ptr [ null, %16 ], [ %53, %52 ]
  %21 = getelementptr inbounds %struct.ip_tunnel, ptr %19, i32 0, i32 15, i32 6, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %4
  br i1 %23, label %24, label %52

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.ip_tunnel, ptr %19, i32 0, i32 15, i32 6, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %3
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ip_tunnel, ptr %19, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 14
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.ip_tunnel, ptr %19, i32 0, i32 15, i32 2
  %37 = load i16, ptr %36, align 4
  %38 = and i16 %17, %37
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ip_tunnel, ptr %19, i32 0, i32 15, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, %5
  br i1 %43, label %48, label %52

44:                                               ; preds = %35
  %45 = or i16 %37, %2
  %46 = and i16 %45, 1024
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44, %40
  %49 = getelementptr inbounds %struct.ip_tunnel, ptr %19, i32 0, i32 15, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, %1
  br i1 %51, label %246, label %52

52:                                               ; preds = %48, %44, %40, %28, %24, %18
  %53 = phi ptr [ %20, %18 ], [ %20, %24 ], [ %20, %44 ], [ %20, %28 ], [ %19, %48 ], [ %20, %40 ]
  %54 = getelementptr inbounds %struct.ip_tunnel, ptr %19, i32 0, i32 1
  %55 = load volatile ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  %57 = getelementptr i8, ptr %55, i32 -4
  %58 = icmp eq ptr %57, null
  %59 = or i1 %56, %58
  br i1 %59, label %60, label %18

60:                                               ; preds = %52, %6
  %61 = phi ptr [ null, %6 ], [ %53, %52 ]
  %62 = load volatile ptr, ptr %10, align 4
  %63 = icmp eq ptr %62, null
  %64 = getelementptr i8, ptr %62, i32 -4
  %65 = icmp eq ptr %64, null
  %66 = or i1 %63, %65
  br i1 %66, label %114, label %67

67:                                               ; preds = %60
  %68 = and i16 %2, 1024
  br label %69

69:                                               ; preds = %106, %67
  %70 = phi ptr [ %64, %67 ], [ %111, %106 ]
  %71 = phi ptr [ %61, %67 ], [ %107, %106 ]
  %72 = getelementptr inbounds %struct.ip_tunnel, ptr %70, i32 0, i32 15, i32 6, i32 9
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, %3
  br i1 %74, label %75, label %106

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.ip_tunnel, ptr %70, i32 0, i32 15, i32 6, i32 8
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %106

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.ip_tunnel, ptr %70, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 14
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.ip_tunnel, ptr %70, i32 0, i32 15, i32 2
  %88 = load i16, ptr %87, align 4
  %89 = and i16 %68, %88
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.ip_tunnel, ptr %70, i32 0, i32 15, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, %5
  br i1 %94, label %99, label %106

95:                                               ; preds = %86
  %96 = or i16 %88, %2
  %97 = and i16 %96, 1024
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %95, %91
  %100 = getelementptr inbounds %struct.ip_tunnel, ptr %70, i32 0, i32 15, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, %1
  br i1 %102, label %246, label %103

103:                                              ; preds = %99
  %104 = icmp eq ptr %71, null
  %105 = select i1 %104, ptr %70, ptr %71
  br label %106

106:                                              ; preds = %103, %95, %91, %79, %75, %69
  %107 = phi ptr [ %71, %69 ], [ %71, %75 ], [ %71, %95 ], [ %71, %79 ], [ %105, %103 ], [ %71, %91 ]
  %108 = getelementptr inbounds %struct.ip_tunnel, ptr %70, i32 0, i32 1
  %109 = load volatile ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  %111 = getelementptr i8, ptr %109, i32 -4
  %112 = icmp eq ptr %111, null
  %113 = or i1 %110, %112
  br i1 %113, label %114, label %69

114:                                              ; preds = %106, %60
  %115 = phi ptr [ %61, %60 ], [ %107, %106 ]
  %116 = mul i32 %5, 1640531527
  %117 = lshr i32 %116, 25
  %118 = getelementptr %struct.ip_tunnel_net, ptr %0, i32 0, i32 2, i32 %117
  %119 = load volatile ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  %121 = getelementptr i8, ptr %119, i32 -4
  %122 = icmp eq ptr %121, null
  %123 = or i1 %120, %122
  br i1 %123, label %176, label %124

124:                                              ; preds = %114
  %125 = and i32 %4, 240
  %126 = icmp eq i32 %125, 224
  %127 = and i16 %2, 1024
  br label %128

128:                                              ; preds = %168, %124
  %129 = phi ptr [ %121, %124 ], [ %173, %168 ]
  %130 = phi ptr [ %115, %124 ], [ %169, %168 ]
  %131 = getelementptr inbounds %struct.ip_tunnel, ptr %129, i32 0, i32 15, i32 6, i32 8
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, %4
  %134 = getelementptr inbounds %struct.ip_tunnel, ptr %129, i32 0, i32 15, i32 6, i32 9
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 0
  %137 = select i1 %133, i1 %136, i1 false
  %138 = icmp eq i32 %135, %4
  %139 = and i1 %126, %138
  %140 = select i1 %137, i1 true, i1 %139
  br i1 %140, label %141, label %168

141:                                              ; preds = %128
  %142 = getelementptr inbounds %struct.ip_tunnel, ptr %129, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.net_device, ptr %143, i32 0, i32 14
  %145 = load i32, ptr %144, align 8
  %146 = and i32 %145, 1
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %168, label %148

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.ip_tunnel, ptr %129, i32 0, i32 15, i32 2
  %150 = load i16, ptr %149, align 4
  %151 = and i16 %127, %150
  %152 = icmp eq i16 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.ip_tunnel, ptr %129, i32 0, i32 15, i32 4
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, %5
  br i1 %156, label %161, label %168

157:                                              ; preds = %148
  %158 = or i16 %150, %2
  %159 = and i16 %158, 1024
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %157, %153
  %162 = getelementptr inbounds %struct.ip_tunnel, ptr %129, i32 0, i32 15, i32 1
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, %1
  br i1 %164, label %246, label %165

165:                                              ; preds = %161
  %166 = icmp eq ptr %130, null
  %167 = select i1 %166, ptr %129, ptr %130
  br label %168

168:                                              ; preds = %165, %157, %153, %141, %128
  %169 = phi ptr [ %130, %157 ], [ %130, %141 ], [ %167, %165 ], [ %130, %153 ], [ %130, %128 ]
  %170 = getelementptr inbounds %struct.ip_tunnel, ptr %129, i32 0, i32 1
  %171 = load volatile ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  %173 = getelementptr i8, ptr %171, i32 -4
  %174 = icmp eq ptr %173, null
  %175 = or i1 %172, %174
  br i1 %175, label %176, label %128

176:                                              ; preds = %168, %114
  %177 = phi ptr [ %115, %114 ], [ %169, %168 ]
  %178 = load volatile ptr, ptr %118, align 4
  %179 = icmp eq ptr %178, null
  %180 = getelementptr i8, ptr %178, i32 -4
  %181 = icmp eq ptr %180, null
  %182 = or i1 %179, %181
  br i1 %182, label %222, label %183

183:                                              ; preds = %176
  %184 = icmp sgt i16 %2, -1
  br label %185

185:                                              ; preds = %214, %183
  %186 = phi ptr [ %180, %183 ], [ %219, %214 ]
  %187 = phi ptr [ %177, %183 ], [ %215, %214 ]
  br i1 %184, label %188, label %192

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.ip_tunnel, ptr %186, i32 0, i32 15, i32 4
  %190 = load i32, ptr %189, align 4
  %191 = icmp eq i32 %190, %5
  br i1 %191, label %192, label %214

192:                                              ; preds = %188, %185
  %193 = getelementptr inbounds %struct.ip_tunnel, ptr %186, i32 0, i32 15, i32 6, i32 8
  %194 = load i32, ptr %193, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %214

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.ip_tunnel, ptr %186, i32 0, i32 15, i32 6, i32 9
  %198 = load i32, ptr %197, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %214

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.ip_tunnel, ptr %186, i32 0, i32 2
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.net_device, ptr %202, i32 0, i32 14
  %204 = load i32, ptr %203, align 8
  %205 = and i32 %204, 1
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %214, label %207

207:                                              ; preds = %200
  %208 = getelementptr inbounds %struct.ip_tunnel, ptr %186, i32 0, i32 15, i32 1
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %209, %1
  br i1 %210, label %246, label %211

211:                                              ; preds = %207
  %212 = icmp eq ptr %187, null
  %213 = select i1 %212, ptr %186, ptr %187
  br label %214

214:                                              ; preds = %211, %200, %196, %192, %188
  %215 = phi ptr [ %187, %192 ], [ %187, %196 ], [ %187, %200 ], [ %187, %188 ], [ %213, %211 ]
  %216 = getelementptr inbounds %struct.ip_tunnel, ptr %186, i32 0, i32 1
  %217 = load volatile ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, null
  %219 = getelementptr i8, ptr %217, i32 -4
  %220 = icmp eq ptr %219, null
  %221 = or i1 %218, %220
  br i1 %221, label %222, label %185

222:                                              ; preds = %214, %176
  %223 = phi ptr [ %177, %176 ], [ %215, %214 ]
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %246

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.ip_tunnel_net, ptr %0, i32 0, i32 3
  %227 = load volatile ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %236, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.ip_tunnel, ptr %227, i32 0, i32 2
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.net_device, ptr %231, i32 0, i32 14
  %233 = load i32, ptr %232, align 8
  %234 = and i32 %233, 1
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %229, %225
  %237 = load volatile ptr, ptr %0, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %246, label %239

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.net_device, ptr %237, i32 0, i32 14
  %241 = load i32, ptr %240, align 8
  %242 = and i32 %241, 1
  %243 = icmp eq i32 %242, 0
  %244 = getelementptr i8, ptr %237, i32 1408
  %245 = select i1 %243, ptr null, ptr %244
  br label %246

246:                                              ; preds = %239, %236, %229, %222, %207, %161, %99, %48
  %247 = phi ptr [ %223, %222 ], [ %227, %229 ], [ null, %236 ], [ %245, %239 ], [ %186, %207 ], [ %129, %161 ], [ %70, %99 ], [ %19, %48 ]
  ret ptr %247
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_tunnel_rcv(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i1 noundef zeroext %4) #2 {
  %6 = alloca %struct.vlan_hdr, align 4
  %7 = alloca %struct.vlan_hdr, align 4
  %8 = alloca %struct.vlan_hdr, align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = load i16, ptr %2, align 4
  %16 = and i16 %15, 256
  %17 = icmp eq i16 %16, 0
  %18 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 15, i32 2
  %19 = load i16, ptr %18, align 4
  %20 = and i16 %19, 256
  %21 = icmp eq i16 %20, 0
  br i1 %17, label %22, label %23

22:                                               ; preds = %5
  br i1 %21, label %30, label %24

23:                                               ; preds = %5
  br i1 %21, label %24, label %30

24:                                               ; preds = %23, %22
  %25 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 36, i32 12
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 8
  br label %438

30:                                               ; preds = %23, %22
  %31 = and i16 %19, 2048
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %55, label %33

33:                                               ; preds = %30
  %34 = and i16 %15, 2048
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = getelementptr inbounds %struct.tnl_ptk_info, ptr %2, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = sub i32 %42, %38
  %44 = icmp slt i32 %43, 0
  %45 = select i1 %39, i1 %44, i1 false
  br i1 %45, label %46, label %52

46:                                               ; preds = %36, %33
  %47 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 36, i32 14
  %50 = load i32, ptr %49, align 8
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 8
  br label %438

52:                                               ; preds = %36
  %53 = add i32 %42, 1
  store i32 %53, ptr %37, align 4
  %54 = load ptr, ptr %9, align 8
  br label %55

55:                                               ; preds = %52, %30
  %56 = phi ptr [ %54, %52 ], [ %10, %30 ]
  %57 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 32
  %60 = load i16, ptr %59, align 16
  %61 = icmp eq i16 %60, 1
  %62 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %63 = load ptr, ptr %62, align 4
  %64 = ptrtoint ptr %63 to i32
  %65 = ptrtoint ptr %56 to i32
  %66 = sub i32 %64, %65
  %67 = trunc i32 %66 to i16
  %68 = select i1 %61, i16 14, i16 0
  %69 = add i16 %68, %67
  store i16 %69, ptr %11, align 4
  %70 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %71 = load i16, ptr %70, align 8
  %72 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %73 = load i16, ptr %72, align 8
  %74 = zext i16 %73 to i32
  switch i16 %71, label %115 [
    i16 -22392, label %75
    i16 129, label %75
  ]

75:                                               ; preds = %55, %55
  %76 = icmp eq i16 %73, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %75
  %78 = icmp ult i16 %73, 4
  br i1 %78, label %79, label %80, !prof !9

79:                                               ; preds = %77
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 598, i32 noundef 9, ptr noundef null) #19
  br label %369

80:                                               ; preds = %77
  %81 = add nsw i32 %74, -4
  br label %82

82:                                               ; preds = %80, %75
  %83 = phi i32 [ %81, %80 ], [ 14, %75 ]
  %84 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %85 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %86 = icmp eq ptr %1, null
  br label %87

87:                                               ; preds = %113, %82
  %88 = phi i32 [ %83, %82 ], [ %114, %113 ]
  %89 = phi i32 [ 8, %82 ], [ %106, %113 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #19
  store i32 0, ptr %8, align 4, !annotation !10
  %90 = load i32, ptr %84, align 8
  %91 = load i32, ptr %85, align 4
  %92 = add i32 %88, %91
  %93 = sub i32 %90, %92
  %94 = icmp sgt i32 %93, 3
  br i1 %94, label %95, label %98, !prof !11

95:                                               ; preds = %87
  %96 = load ptr, ptr %62, align 4
  %97 = getelementptr i8, ptr %96, i32 %88
  br label %103

98:                                               ; preds = %87
  br i1 %86, label %109, label %99

99:                                               ; preds = %98
  %100 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %88, ptr noundef nonnull %8, i32 noundef 4) #19
  %101 = icmp slt i32 %100, 0
  %102 = select i1 %101, ptr null, ptr %8, !prof !9
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi ptr [ %97, %95 ], [ %102, %99 ]
  %105 = icmp eq ptr %104, null
  %106 = add nsw i32 %89, -1
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %105, i1 true, i1 %107, !prof !9
  br i1 %108, label %109, label %110, !prof !9

109:                                              ; preds = %103, %98
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #19
  br label %369

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.vlan_hdr, ptr %104, i32 0, i32 1
  %112 = load i16, ptr %111, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #19
  switch i16 %112, label %115 [
    i16 -22392, label %113
    i16 129, label %113
  ]

113:                                              ; preds = %110, %110
  %114 = add nsw i32 %88, 4
  br label %87

115:                                              ; preds = %110, %55
  %116 = phi i16 [ %71, %55 ], [ %112, %110 ]
  switch i16 %116, label %369 [
    i16 8, label %117
    i16 -8826, label %124
  ]

117:                                              ; preds = %115
  %118 = load ptr, ptr %9, align 8
  %119 = load i16, ptr %11, align 4
  %120 = zext i16 %119 to i32
  %121 = getelementptr i8, ptr %118, i32 %120
  %122 = getelementptr inbounds %struct.iphdr, ptr %121, i32 0, i32 1
  %123 = load i8, ptr %122, align 1
  br label %133

124:                                              ; preds = %115
  %125 = load ptr, ptr %9, align 8
  %126 = load i16, ptr %11, align 4
  %127 = zext i16 %126 to i32
  %128 = getelementptr i8, ptr %125, i32 %127
  %129 = load i16, ptr %128, align 2
  %130 = call i16 @llvm.bswap.i16(i16 %129) #19
  %131 = lshr i16 %130, 4
  %132 = trunc i16 %131 to i8
  br label %133

133:                                              ; preds = %124, %117
  %134 = phi i8 [ %132, %124 ], [ %123, %117 ]
  %135 = getelementptr inbounds %struct.iphdr, ptr %14, i32 0, i32 1
  %136 = load i8, ptr %135, align 1
  %137 = and i8 %134, 3
  %138 = icmp eq i8 %137, 0
  %139 = and i8 %136, 3
  br i1 %138, label %140, label %144

140:                                              ; preds = %133
  %141 = zext i8 %139 to i32
  switch i32 %141, label %143 [
    i32 0, label %251
    i32 2, label %353
    i32 1, label %353
    i32 3, label %142
  ]

142:                                              ; preds = %140
  br label %353

143:                                              ; preds = %140
  unreachable

144:                                              ; preds = %133
  %145 = trunc i8 %136 to i2
  switch i2 %145, label %369 [
    i2 -1, label %146
    i2 1, label %253
  ]

146:                                              ; preds = %144
  %147 = load i16, ptr %70, align 8
  %148 = load i16, ptr %72, align 8
  %149 = zext i16 %148 to i32
  switch i16 %147, label %190 [
    i16 -22392, label %150
    i16 129, label %150
  ]

150:                                              ; preds = %146, %146
  %151 = icmp eq i16 %148, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %150
  %153 = icmp ult i16 %148, 4
  br i1 %153, label %154, label %155, !prof !9

154:                                              ; preds = %152
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 598, i32 noundef 9, ptr noundef null) #19
  br label %369

155:                                              ; preds = %152
  %156 = add nsw i32 %149, -4
  br label %157

157:                                              ; preds = %155, %150
  %158 = phi i32 [ %156, %155 ], [ 14, %150 ]
  %159 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %160 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %161 = icmp eq ptr %1, null
  br label %162

162:                                              ; preds = %188, %157
  %163 = phi i32 [ %158, %157 ], [ %189, %188 ]
  %164 = phi i32 [ 8, %157 ], [ %181, %188 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  store i32 0, ptr %7, align 4, !annotation !10
  %165 = load i32, ptr %159, align 8
  %166 = load i32, ptr %160, align 4
  %167 = add i32 %163, %166
  %168 = sub i32 %165, %167
  %169 = icmp sgt i32 %168, 3
  br i1 %169, label %170, label %173, !prof !11

170:                                              ; preds = %162
  %171 = load ptr, ptr %62, align 4
  %172 = getelementptr i8, ptr %171, i32 %163
  br label %178

173:                                              ; preds = %162
  br i1 %161, label %184, label %174

174:                                              ; preds = %173
  %175 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %163, ptr noundef nonnull %7, i32 noundef 4) #19
  %176 = icmp slt i32 %175, 0
  %177 = select i1 %176, ptr null, ptr %7, !prof !9
  br label %178

178:                                              ; preds = %174, %170
  %179 = phi ptr [ %172, %170 ], [ %177, %174 ]
  %180 = icmp eq ptr %179, null
  %181 = add nsw i32 %164, -1
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %180, i1 true, i1 %182, !prof !9
  br i1 %183, label %184, label %185, !prof !9

184:                                              ; preds = %178, %173
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  br label %369

185:                                              ; preds = %178
  %186 = getelementptr inbounds %struct.vlan_hdr, ptr %179, i32 0, i32 1
  %187 = load i16, ptr %186, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  switch i16 %187, label %190 [
    i16 -22392, label %188
    i16 129, label %188
  ]

188:                                              ; preds = %185, %185
  %189 = add nsw i32 %163, 4
  br label %162

190:                                              ; preds = %185, %146
  %191 = phi i16 [ %147, %146 ], [ %187, %185 ]
  switch i16 %191, label %369 [
    i16 8, label %192
    i16 -8826, label %219
  ]

192:                                              ; preds = %190
  %193 = load ptr, ptr %9, align 8
  %194 = load i16, ptr %11, align 4
  %195 = zext i16 %194 to i32
  %196 = getelementptr i8, ptr %193, i32 %195
  %197 = getelementptr i8, ptr %196, i32 20
  %198 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %199 = load ptr, ptr %198, align 8
  %200 = icmp ugt ptr %197, %199
  br i1 %200, label %369, label %201

201:                                              ; preds = %192
  %202 = getelementptr inbounds %struct.iphdr, ptr %196, i32 0, i32 1
  %203 = load i8, ptr %202, align 1
  %204 = add i8 %203, 1
  %205 = and i8 %204, 2
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %369, label %207

207:                                              ; preds = %201
  %208 = and i8 %204, 3
  %209 = zext i8 %208 to i16
  %210 = shl nuw nsw i16 %209, 8
  %211 = add nuw nsw i16 %210, -1025
  %212 = getelementptr inbounds %struct.iphdr, ptr %196, i32 0, i32 7
  %213 = load i16, ptr %212, align 2
  %214 = add i16 %213, %211
  %215 = icmp ult i16 %214, %211
  %216 = zext i1 %215 to i16
  %217 = add i16 %214, %216
  store i16 %217, ptr %212, align 2
  %218 = or i8 %203, 3
  store i8 %218, ptr %202, align 1
  br label %369

219:                                              ; preds = %190
  %220 = load ptr, ptr %9, align 8
  %221 = load i16, ptr %11, align 4
  %222 = zext i16 %221 to i32
  %223 = getelementptr i8, ptr %220, i32 %222
  %224 = getelementptr i8, ptr %223, i32 40
  %225 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %226 = load ptr, ptr %225, align 8
  %227 = icmp ugt ptr %224, %226
  br i1 %227, label %369, label %228

228:                                              ; preds = %219
  %229 = load i16, ptr %223, align 2
  %230 = and i16 %229, 12288
  %231 = icmp eq i16 %230, 0
  br i1 %231, label %369, label %232

232:                                              ; preds = %228
  %233 = load i32, ptr %223, align 4
  %234 = or i32 %233, 12288
  store i32 %234, ptr %223, align 4
  %235 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %236 = load i16, ptr %235, align 8
  %237 = and i16 %236, 96
  %238 = icmp eq i16 %237, 64
  br i1 %238, label %239, label %369

239:                                              ; preds = %232
  %240 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %241 = load i32, ptr %240, align 4
  %242 = xor i32 %233, -1
  %243 = add i32 %241, %242
  %244 = icmp ult i32 %243, %242
  %245 = zext i1 %244 to i32
  %246 = add i32 %243, %234
  %247 = add i32 %246, %245
  %248 = icmp ult i32 %247, %234
  %249 = zext i1 %248 to i32
  %250 = add i32 %247, %249
  store i32 %250, ptr %240, align 4
  br label %369

251:                                              ; preds = %140
  %252 = icmp eq i8 %139, 1
  br i1 %252, label %253, label %369

253:                                              ; preds = %251, %144
  %254 = load i16, ptr %70, align 8
  %255 = load i16, ptr %72, align 8
  %256 = zext i16 %255 to i32
  switch i16 %254, label %297 [
    i16 -22392, label %257
    i16 129, label %257
  ]

257:                                              ; preds = %253, %253
  %258 = icmp eq i16 %255, 0
  br i1 %258, label %264, label %259

259:                                              ; preds = %257
  %260 = icmp ult i16 %255, 4
  br i1 %260, label %261, label %262, !prof !9

261:                                              ; preds = %259
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 598, i32 noundef 9, ptr noundef null) #19
  br label %369

262:                                              ; preds = %259
  %263 = add nsw i32 %256, -4
  br label %264

264:                                              ; preds = %262, %257
  %265 = phi i32 [ %263, %262 ], [ 14, %257 ]
  %266 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %267 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %268 = icmp eq ptr %1, null
  br label %269

269:                                              ; preds = %295, %264
  %270 = phi i32 [ %265, %264 ], [ %296, %295 ]
  %271 = phi i32 [ 8, %264 ], [ %288, %295 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !annotation !10
  %272 = load i32, ptr %266, align 8
  %273 = load i32, ptr %267, align 4
  %274 = add i32 %270, %273
  %275 = sub i32 %272, %274
  %276 = icmp sgt i32 %275, 3
  br i1 %276, label %277, label %280, !prof !11

277:                                              ; preds = %269
  %278 = load ptr, ptr %62, align 4
  %279 = getelementptr i8, ptr %278, i32 %270
  br label %285

280:                                              ; preds = %269
  br i1 %268, label %291, label %281

281:                                              ; preds = %280
  %282 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %270, ptr noundef nonnull %6, i32 noundef 4) #19
  %283 = icmp slt i32 %282, 0
  %284 = select i1 %283, ptr null, ptr %6, !prof !9
  br label %285

285:                                              ; preds = %281, %277
  %286 = phi ptr [ %279, %277 ], [ %284, %281 ]
  %287 = icmp eq ptr %286, null
  %288 = add nsw i32 %271, -1
  %289 = icmp eq i32 %288, 0
  %290 = select i1 %287, i1 true, i1 %289, !prof !9
  br i1 %290, label %291, label %292, !prof !9

291:                                              ; preds = %285, %280
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  br label %369

292:                                              ; preds = %285
  %293 = getelementptr inbounds %struct.vlan_hdr, ptr %286, i32 0, i32 1
  %294 = load i16, ptr %293, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  switch i16 %294, label %297 [
    i16 -22392, label %295
    i16 129, label %295
  ]

295:                                              ; preds = %292, %292
  %296 = add nsw i32 %270, 4
  br label %269

297:                                              ; preds = %292, %253
  %298 = phi i16 [ %254, %253 ], [ %294, %292 ]
  switch i16 %298, label %369 [
    i16 8, label %299
    i16 -8826, label %321
  ]

299:                                              ; preds = %297
  %300 = load ptr, ptr %9, align 8
  %301 = load i16, ptr %11, align 4
  %302 = zext i16 %301 to i32
  %303 = getelementptr i8, ptr %300, i32 %302
  %304 = getelementptr i8, ptr %303, i32 20
  %305 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %306 = load ptr, ptr %305, align 8
  %307 = icmp ugt ptr %304, %306
  br i1 %307, label %369, label %308

308:                                              ; preds = %299
  %309 = getelementptr inbounds %struct.iphdr, ptr %303, i32 0, i32 1
  %310 = load i8, ptr %309, align 1
  %311 = and i8 %310, 3
  %312 = icmp eq i8 %311, 2
  br i1 %312, label %313, label %369

313:                                              ; preds = %308
  %314 = getelementptr inbounds %struct.iphdr, ptr %303, i32 0, i32 7
  %315 = load i16, ptr %314, align 2
  %316 = add i16 %315, 256
  %317 = icmp ugt i16 %315, -257
  %318 = zext i1 %317 to i16
  %319 = add i16 %316, %318
  store i16 %319, ptr %314, align 2
  %320 = xor i8 %310, 3
  store i8 %320, ptr %309, align 1
  br label %369

321:                                              ; preds = %297
  %322 = load ptr, ptr %9, align 8
  %323 = load i16, ptr %11, align 4
  %324 = zext i16 %323 to i32
  %325 = getelementptr i8, ptr %322, i32 %324
  %326 = getelementptr i8, ptr %325, i32 40
  %327 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %328 = load ptr, ptr %327, align 8
  %329 = icmp ugt ptr %326, %328
  br i1 %329, label %369, label %330

330:                                              ; preds = %321
  %331 = load i16, ptr %325, align 2
  %332 = and i16 %331, 12288
  %333 = icmp eq i16 %332, 8192
  br i1 %333, label %334, label %369

334:                                              ; preds = %330
  %335 = load i32, ptr %325, align 4
  %336 = xor i32 %335, 12288
  store i32 %336, ptr %325, align 4
  %337 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %338 = load i16, ptr %337, align 8
  %339 = and i16 %338, 96
  %340 = icmp eq i16 %339, 64
  br i1 %340, label %341, label %369

341:                                              ; preds = %334
  %342 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %343 = load i32, ptr %342, align 4
  %344 = xor i32 %335, -1
  %345 = add i32 %343, %344
  %346 = icmp ult i32 %345, %344
  %347 = zext i1 %346 to i32
  %348 = add i32 %345, %336
  %349 = add i32 %348, %347
  %350 = icmp ult i32 %349, %336
  %351 = zext i1 %350 to i32
  %352 = add i32 %349, %351
  store i32 %352, ptr %342, align 4
  br label %369

353:                                              ; preds = %142, %140, %140
  %354 = phi i1 [ true, %142 ], [ false, %140 ], [ false, %140 ]
  br i1 %4, label %355, label %363

355:                                              ; preds = %353
  %356 = call i32 @net_ratelimit() #19
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %363, label %358

358:                                              ; preds = %355
  %359 = getelementptr inbounds %struct.iphdr, ptr %14, i32 0, i32 8
  %360 = load i8, ptr %135, align 1
  %361 = zext i8 %360 to i32
  %362 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %359, i32 noundef %361) #20
  br label %363

363:                                              ; preds = %358, %355, %353
  br i1 %354, label %364, label %369

364:                                              ; preds = %363
  %365 = load ptr, ptr %57, align 4
  %366 = getelementptr inbounds %struct.net_device, ptr %365, i32 0, i32 36, i32 13
  %367 = load i32, ptr %366, align 4
  %368 = add i32 %367, 1
  store i32 %368, ptr %366, align 4
  br label %438

369:                                              ; preds = %363, %341, %334, %330, %321, %313, %308, %299, %297, %291, %261, %251, %239, %232, %228, %219, %207, %201, %192, %190, %184, %154, %144, %115, %109, %79
  %370 = load ptr, ptr %57, align 4
  %371 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %372 = load i32, ptr %371, align 8
  %373 = getelementptr inbounds %struct.net_device, ptr %370, i32 0, i32 110
  %374 = load ptr, ptr %373, align 8
  %375 = ptrtoint ptr %374 to i32
  %376 = call i32 @llvm.read_register.i32(metadata !0) #19
  %377 = inttoptr i32 %376 to ptr
  %378 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %377) #16, !srcloc !12
  %379 = add i32 %378, %375
  %380 = inttoptr i32 %379 to ptr
  %381 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %380, i32 0, i32 4
  %382 = load i32, ptr %381, align 4
  %383 = add i32 %382, 1
  store i32 %383, ptr %381, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !13
  %384 = zext i32 %372 to i64
  %385 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %380, i32 0, i32 1
  %386 = load i64, ptr %385, align 8
  %387 = add i64 %386, %384
  store i64 %387, ptr %385, align 8
  %388 = load i64, ptr %380, align 32
  %389 = add i64 %388, 1
  store i64 %389, ptr %380, align 32
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !14
  %390 = load i32, ptr %381, align 4
  %391 = add i32 %390, 1
  store i32 %391, ptr %381, align 4
  call void @skb_scrub_packet(ptr noundef %1, i1 noundef zeroext false) #19
  %392 = load ptr, ptr %57, align 4
  %393 = getelementptr inbounds %struct.net_device, ptr %392, i32 0, i32 32
  %394 = load i16, ptr %393, align 16
  %395 = icmp eq i16 %394, 1
  br i1 %395, label %396, label %425

396:                                              ; preds = %369
  %397 = call zeroext i16 @eth_type_trans(ptr noundef %1, ptr noundef %392) #19
  store i16 %397, ptr %70, align 8
  %398 = load ptr, ptr %9, align 8
  %399 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %400 = load i16, ptr %399, align 8
  %401 = lshr i16 %400, 5
  %402 = trunc i16 %401 to i2
  switch i2 %402, label %427 [
    i2 -2, label %403
    i2 -1, label %413
  ]

403:                                              ; preds = %396
  %404 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  %405 = load i16, ptr %404, align 2
  %406 = zext i16 %405 to i32
  %407 = getelementptr i8, ptr %398, i32 %406
  %408 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %409 = load i32, ptr %408, align 4
  %410 = sub i32 0, %409
  %411 = call i32 @csum_partial(ptr noundef %407, i32 noundef 14, i32 noundef %410) #19
  %412 = sub i32 0, %411
  store i32 %412, ptr %408, align 4
  br label %427

413:                                              ; preds = %396
  %414 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %415 = load i16, ptr %414, align 4
  %416 = zext i16 %415 to i32
  %417 = load ptr, ptr %62, align 4
  %418 = ptrtoint ptr %417 to i32
  %419 = ptrtoint ptr %398 to i32
  %420 = add i32 %416, %419
  %421 = sub i32 %420, %418
  %422 = icmp slt i32 %421, 0
  br i1 %422, label %423, label %427

423:                                              ; preds = %413
  %424 = and i16 %400, -97
  store i16 %424, ptr %399, align 8
  br label %427

425:                                              ; preds = %369
  %426 = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 2
  store ptr %392, ptr %426, align 8
  br label %427

427:                                              ; preds = %425, %423, %413, %403, %396
  %428 = icmp eq ptr %3, null
  br i1 %428, label %435, label %429

429:                                              ; preds = %427
  %430 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %431 = load i16, ptr %430, align 2
  %432 = or i16 %431, 16384
  store i16 %432, ptr %430, align 2
  %433 = ptrtoint ptr %3 to i32
  %434 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  store i32 %433, ptr %434, align 8
  br label %435

435:                                              ; preds = %429, %427
  %436 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 23
  %437 = call i32 @gro_cells_receive(ptr noundef %436, ptr noundef %1) #19
  br label %447

438:                                              ; preds = %364, %46, %24
  %439 = phi ptr [ %57, %364 ], [ %47, %46 ], [ %25, %24 ]
  %440 = load ptr, ptr %439, align 4
  %441 = getelementptr inbounds %struct.net_device, ptr %440, i32 0, i32 36, i32 4
  %442 = load i32, ptr %441, align 8
  %443 = add i32 %442, 1
  store i32 %443, ptr %441, align 8
  %444 = icmp eq ptr %3, null
  br i1 %444, label %446, label %445

445:                                              ; preds = %438
  call void @dst_release(ptr noundef nonnull %3) #19
  br label %446

446:                                              ; preds = %445, %438
  call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #19
  br label %447

447:                                              ; preds = %446, %435
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_scrub_packet(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gro_cells_receive(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_tunnel_encap_add_ops(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp ugt i32 %1, 7
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr [8 x ptr], ptr @iptun_encaps, i32 0, i32 %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !15
  %6 = ptrtoint ptr %0 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #19, !srcloc !16
  br label %7

7:                                                ; preds = %7, %4
  %8 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %5, i32 0, i32 %6) #19, !srcloc !17
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %7

11:                                               ; preds = %7
  %12 = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !18
  %13 = icmp ne i32 %12, 0
  %14 = sext i1 %13 to i32
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i32 [ %14, %11 ], [ -34, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_tunnel_encap_del_ops(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp ugt i32 %1, 7
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr [8 x ptr], ptr @iptun_encaps, i32 0, i32 %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !19
  %6 = ptrtoint ptr %0 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #19, !srcloc !16
  br label %7

7:                                                ; preds = %7, %4
  %8 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %5, i32 %6, i32 0) #19, !srcloc !17
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %7

11:                                               ; preds = %7
  %12 = extractvalue { i32, i32 } %8, 1
  %13 = inttoptr i32 %12 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !20
  %14 = icmp ne ptr %13, %0
  %15 = sext i1 %14 to i32
  tail call void @synchronize_net() #19
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i32 [ %15, %11 ], [ -34, %2 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_tunnel_encap_setup(ptr nocapture noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 19
  store i64 0, ptr %3, align 4
  %4 = load i16, ptr %1, align 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = icmp ugt i16 %4, 7
  br i1 %7, label %40, label %8

8:                                                ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !21
  %9 = load i16, ptr %1, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr [8 x ptr], ptr @iptun_encaps, i32 0, i32 %10
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !9

14:                                               ; preds = %8
  %15 = load ptr, ptr %12, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %14, %8
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !22
  br label %40

18:                                               ; preds = %14
  %19 = tail call i32 %15(ptr noundef %1) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !22
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %18
  %22 = load i16, ptr %1, align 2
  br label %23

23:                                               ; preds = %21, %2
  %24 = phi i16 [ %22, %21 ], [ 0, %2 ]
  %25 = phi i32 [ %19, %21 ], [ 0, %2 ]
  store i16 %24, ptr %3, align 4
  %26 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %1, i32 0, i32 2
  %27 = load i16, ptr %26, align 2
  %28 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 19, i32 2
  store i16 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %1, i32 0, i32 3
  %30 = load i16, ptr %29, align 2
  %31 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 19, i32 3
  store i16 %30, ptr %31, align 2
  %32 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %1, i32 0, i32 1
  %33 = load i16, ptr %32, align 2
  %34 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 19, i32 1
  store i16 %33, ptr %34, align 2
  %35 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 17
  store i32 %25, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, %25
  %39 = getelementptr inbounds %struct.ip_tunnel, ptr %0, i32 0, i32 18
  store i32 %38, ptr %39, align 4
  br label %40

40:                                               ; preds = %23, %18, %17, %6
  %41 = phi i32 [ 0, %23 ], [ %19, %18 ], [ -22, %17 ], [ -22, %6 ]
  ret i32 %41
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_md_tunnel_xmit(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3) #2 {
  %5 = alloca %struct.flowi4, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i32 56, i1 false), !annotation !10
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, -2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %241, label %10

10:                                               ; preds = %4
  %11 = inttoptr i32 %8 to ptr
  %12 = getelementptr inbounds %struct.dst_entry, ptr %11, i32 0, i32 7
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 128
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.metadata_dst, ptr %11, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.metadata_dst, ptr %11, i32 0, i32 2
  br label %30

22:                                               ; preds = %16, %10
  %23 = getelementptr inbounds %struct.dst_entry, ptr %11, i32 0, i32 13
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %241, label %26

26:                                               ; preds = %22
  %27 = load i16, ptr %24, align 4
  switch i16 %27, label %241 [
    i16 2, label %28
    i16 4, label %28
  ]

28:                                               ; preds = %26, %26
  %29 = getelementptr inbounds %struct.lwtunnel_state, ptr %24, i32 0, i32 7
  br label %30

30:                                               ; preds = %28, %20
  %31 = phi ptr [ %21, %20 ], [ %29, %28 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %241, label %33, !prof !9

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.ip_tunnel_info, ptr %31, i32 0, i32 3
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 3
  %37 = icmp eq i8 %36, 1
  br i1 %37, label %38, label %241, !prof !23

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %39, i8 0, i32 16, i1 false)
  %40 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 14
  %43 = load i16, ptr %42, align 4
  %44 = zext i16 %43 to i32
  %45 = getelementptr i8, ptr %41, i32 %44
  %46 = getelementptr inbounds %struct.ip_tunnel_key, ptr %31, i32 0, i32 3
  %47 = load i8, ptr %46, align 2
  %48 = icmp eq i8 %47, 1
  br i1 %48, label %49, label %60

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %51 = load i16, ptr %50, align 8
  switch i16 %51, label %60 [
    i16 8, label %52
    i16 -8826, label %55
  ]

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.iphdr, ptr %45, i32 0, i32 1
  %54 = load i8, ptr %53, align 1
  br label %60

55:                                               ; preds = %49
  %56 = load i16, ptr %45, align 2
  %57 = tail call i16 @llvm.bswap.i16(i16 %56) #19
  %58 = lshr i16 %57, 4
  %59 = trunc i16 %58 to i8
  br label %60

60:                                               ; preds = %55, %52, %49, %38
  %61 = phi i8 [ %54, %52 ], [ %59, %55 ], [ %47, %38 ], [ 1, %49 ]
  %62 = getelementptr inbounds %struct.ip_tunnel_key, ptr %31, i32 0, i32 1
  %63 = getelementptr inbounds %struct.ip_tunnel_key, ptr %31, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %62, align 8
  %66 = load i64, ptr %31, align 8
  %67 = lshr i64 %66, 32
  %68 = trunc i64 %67 to i32
  %69 = and i8 %61, 30
  %70 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %73 = load i16, ptr %72, align 8
  %74 = and i16 %73, 768
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %60
  tail call void @__skb_get_hash(ptr noundef %0) #19
  br label %77

77:                                               ; preds = %76, %60
  %78 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 7
  %79 = load i32, ptr %78, align 8
  %80 = getelementptr inbounds %struct.flowi4, ptr %5, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  store i32 %64, ptr %80, align 4
  %81 = getelementptr inbounds %struct.flowi4, ptr %5, i32 0, i32 1
  store i32 %65, ptr %81, align 8
  %82 = getelementptr inbounds %struct.flowi_common, ptr %5, i32 0, i32 3
  store i8 %69, ptr %82, align 4
  %83 = getelementptr inbounds %struct.flowi_common, ptr %5, i32 0, i32 5
  store i8 %2, ptr %83, align 2
  %84 = getelementptr inbounds %struct.flowi4, ptr %5, i32 0, i32 3
  store i32 %68, ptr %84, align 8
  %85 = getelementptr inbounds %struct.flowi_common, ptr %5, i32 0, i32 2
  store i32 %71, ptr %85, align 8
  %86 = getelementptr inbounds %struct.flowi_common, ptr %5, i32 0, i32 10
  store i32 %79, ptr %86, align 8
  %87 = getelementptr i8, ptr %1, i32 1528
  %88 = load i16, ptr %87, align 4
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %90, label %241

90:                                               ; preds = %77
  %91 = load i32, ptr %70, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.ip_tunnel_key, ptr %31, i32 0, i32 2
  %95 = load i16, ptr %94, align 8
  %96 = and i16 %95, 32
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.ip_tunnel_info, ptr %31, i32 0, i32 1
  %100 = call ptr @dst_cache_get_ip4(ptr noundef %99, ptr noundef %81) #19
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %124

102:                                              ; preds = %98
  %103 = getelementptr i8, ptr %1, i32 1424
  %104 = load ptr, ptr %103, align 4
  %105 = call ptr @ip_route_output_flow(ptr noundef %104, ptr noundef nonnull %5, ptr noundef null) #19
  %106 = icmp ugt ptr %105, inttoptr (i32 -4096 to ptr)
  br i1 %106, label %117, label %121

107:                                              ; preds = %93
  %108 = getelementptr i8, ptr %1, i32 1424
  %109 = load ptr, ptr %108, align 4
  %110 = call ptr @ip_route_output_flow(ptr noundef %109, ptr noundef nonnull %5, ptr noundef null) #19
  %111 = icmp ugt ptr %110, inttoptr (i32 -4096 to ptr)
  br i1 %111, label %117, label %124

112:                                              ; preds = %90
  %113 = getelementptr i8, ptr %1, i32 1424
  %114 = load ptr, ptr %113, align 4
  %115 = call ptr @ip_route_output_flow(ptr noundef %114, ptr noundef nonnull %5, ptr noundef null) #19
  %116 = icmp ugt ptr %115, inttoptr (i32 -4096 to ptr)
  br i1 %116, label %117, label %124

117:                                              ; preds = %112, %107, %102
  %118 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 17
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %119, 1
  store i32 %120, ptr %118, align 4
  br label %241

121:                                              ; preds = %102
  %122 = getelementptr inbounds %struct.ip_tunnel_info, ptr %31, i32 0, i32 1
  %123 = load i32, ptr %81, align 8
  call void @dst_cache_set_ip4(ptr noundef %122, ptr noundef %105, i32 noundef %123) #19
  br label %124

124:                                              ; preds = %121, %112, %107, %98
  %125 = phi ptr [ %100, %98 ], [ %105, %121 ], [ %115, %112 ], [ %110, %107 ]
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, %1
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  call void @dst_release(ptr noundef %125) #19
  %129 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 9
  %130 = load i32, ptr %129, align 4
  %131 = add i32 %130, 1
  store i32 %131, ptr %129, align 4
  br label %241

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.ip_tunnel_key, ptr %31, i32 0, i32 2
  %134 = load i16, ptr %133, align 8
  %135 = shl i16 %134, 6
  %136 = and i16 %135, 64
  %137 = load i32, ptr %63, align 4
  %138 = call fastcc i32 @tnl_update_pmtu(ptr noundef %1, ptr noundef %0, ptr noundef %125, i16 noundef zeroext %136, ptr noundef %45, i32 noundef %3, i32 noundef %137, i1 noundef zeroext true)
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %132
  call void @dst_release(ptr noundef %125) #19
  br label %241

141:                                              ; preds = %132
  %142 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %143 = load i16, ptr %142, align 8
  switch i16 %143, label %152 [
    i16 8, label %144
    i16 -8826, label %147
  ]

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.iphdr, ptr %45, i32 0, i32 1
  %146 = load i8, ptr %145, align 1
  br label %152

147:                                              ; preds = %141
  %148 = load i16, ptr %45, align 2
  %149 = call i16 @llvm.bswap.i16(i16 %148) #19
  %150 = lshr i16 %149, 4
  %151 = trunc i16 %150 to i8
  br label %152

152:                                              ; preds = %147, %144, %141
  %153 = phi i8 [ %146, %144 ], [ %151, %147 ], [ 0, %141 ]
  %154 = and i8 %61, -4
  %155 = and i8 %153, 3
  %156 = icmp eq i8 %155, 3
  %157 = select i1 %156, i8 2, i8 %155
  %158 = or i8 %157, %154
  %159 = getelementptr inbounds %struct.ip_tunnel_key, ptr %31, i32 0, i32 4
  %160 = load i8, ptr %159, align 1
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %181

162:                                              ; preds = %152
  switch i16 %143, label %169 [
    i16 8, label %163
    i16 -8826, label %166
  ]

163:                                              ; preds = %162
  %164 = getelementptr inbounds %struct.iphdr, ptr %45, i32 0, i32 5
  %165 = load i8, ptr %164, align 4
  br label %181

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.ipv6hdr, ptr %45, i32 0, i32 4
  %168 = load i8, ptr %167, align 1
  br label %181

169:                                              ; preds = %162
  %170 = getelementptr inbounds %struct.dst_entry, ptr %125, i32 0, i32 2
  %171 = load i32, ptr %170, align 4
  %172 = and i32 %171, -4
  %173 = inttoptr i32 %172 to ptr
  %174 = getelementptr i32, ptr %173, i32 9
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, 0
  %177 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 31), align 2
  %178 = zext i8 %177 to i32
  %179 = select i1 %176, i32 %178, i32 %175
  %180 = trunc i32 %179 to i8
  br label %181

181:                                              ; preds = %169, %166, %163, %152
  %182 = phi i8 [ %165, %163 ], [ %168, %166 ], [ %180, %169 ], [ %160, %152 ]
  %183 = load ptr, ptr %125, align 4
  %184 = getelementptr inbounds %struct.net_device, ptr %183, i32 0, i32 19
  %185 = load i16, ptr %184, align 2
  %186 = zext i16 %185 to i32
  %187 = getelementptr inbounds %struct.net_device, ptr %183, i32 0, i32 21
  %188 = load i16, ptr %187, align 8
  %189 = zext i16 %188 to i32
  %190 = add nuw nsw i32 %189, %186
  %191 = and i32 %190, 131056
  %192 = getelementptr inbounds %struct.dst_entry, ptr %125, i32 0, i32 9
  %193 = load i16, ptr %192, align 4
  %194 = zext i16 %193 to i32
  %195 = add nuw nsw i32 %194, 36
  %196 = add nuw nsw i32 %195, %191
  %197 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 21
  %198 = load i16, ptr %197, align 8
  %199 = zext i16 %198 to i32
  %200 = icmp ugt i32 %196, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %181
  %202 = trunc i32 %196 to i16
  store i16 %202, ptr %197, align 8
  %203 = and i32 %196, 65535
  br label %204

204:                                              ; preds = %201, %181
  %205 = phi i32 [ %203, %201 ], [ %199, %181 ]
  %206 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %207 = load i8, ptr %206, align 2
  %208 = and i8 %207, 1
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %220, label %210

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %212 = load ptr, ptr %211, align 4
  %213 = getelementptr inbounds %struct.skb_shared_info, ptr %212, i32 0, i32 10
  %214 = load volatile i32, ptr %213, align 4
  %215 = and i32 %214, 65535
  %216 = ashr i32 %214, 16
  %217 = sub nsw i32 %215, %216
  %218 = icmp ne i32 %217, 1
  %219 = zext i1 %218 to i32
  br label %220

220:                                              ; preds = %210, %204
  %221 = phi i32 [ %219, %210 ], [ 0, %204 ]
  %222 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %223 = load ptr, ptr %222, align 4
  %224 = load ptr, ptr %40, align 8
  %225 = ptrtoint ptr %223 to i32
  %226 = ptrtoint ptr %224 to i32
  %227 = sub i32 %225, %226
  %228 = call i32 @llvm.usub.sat.i32(i32 %205, i32 %227) #19
  %229 = or i32 %228, %221
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %238, label %231

231:                                              ; preds = %220
  %232 = add nuw nsw i32 %228, 63
  %233 = and i32 %232, 131008
  %234 = call i32 @pskb_expand_head(ptr noundef %0, i32 noundef %233, i32 noundef 0, i32 noundef 2592) #19
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %231
  call void @dst_release(ptr noundef %125) #19
  %237 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  br label %243

238:                                              ; preds = %231, %220
  %239 = load i32, ptr %81, align 8
  %240 = load i32, ptr %80, align 4
  call void @iptunnel_xmit(ptr noundef null, ptr noundef %125, ptr noundef %0, i32 noundef %239, i32 noundef %240, i8 noundef zeroext %2, i8 noundef zeroext %158, i8 noundef zeroext %182, i16 noundef zeroext %136, i1 noundef zeroext false) #19
  br label %247

241:                                              ; preds = %140, %128, %117, %77, %33, %30, %26, %22, %4
  %242 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  br label %243

243:                                              ; preds = %241, %236
  %244 = phi ptr [ %237, %236 ], [ %242, %241 ]
  %245 = load i32, ptr %244, align 4
  %246 = add i32 %245, 1
  store i32 %246, ptr %244, align 4
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #19
  br label %247

247:                                              ; preds = %243, %238
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_cache_get_ip4(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_set_ip4(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tnl_update_pmtu(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) unnamed_addr #2 {
  %9 = alloca %struct.inet6_skb_parm, align 4
  %10 = alloca %struct.ip_options, align 4
  br i1 %7, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %0, i32 1524
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %13, %11 ], [ %5, %8 ]
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  %19 = load i16, ptr %18, align 16
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 19
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  br label %25

25:                                               ; preds = %21, %14
  %26 = phi i32 [ %24, %21 ], [ 0, %14 ]
  %27 = add i32 %15, %26
  %28 = sub i32 %17, %27
  %29 = icmp eq i16 %3, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.dst_entry, ptr %2, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dst_ops, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %2) #19
  %36 = load i16, ptr %18, align 16
  %37 = icmp eq i16 %36, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 19
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  br label %42

42:                                               ; preds = %38, %30
  %43 = phi i32 [ %41, %38 ], [ 0, %30 ]
  %44 = add i32 %35, -20
  %45 = add i32 %15, %43
  %46 = sub i32 %44, %45
  br label %67

47:                                               ; preds = %25
  %48 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, -2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %47
  %53 = inttoptr i32 %50 to ptr
  %54 = getelementptr inbounds %struct.dst_entry, ptr %53, i32 0, i32 7
  %55 = load i16, ptr %54, align 4
  %56 = and i16 %55, 128
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.dst_entry, ptr %53, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.dst_ops, ptr %60, i32 0, i32 5
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 %62(ptr noundef nonnull %53) #19
  br label %67

64:                                               ; preds = %52, %47
  %65 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %66 = load i32, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %58, %42
  %68 = phi i32 [ %46, %42 ], [ %63, %58 ], [ %66, %64 ]
  %69 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, -2
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %67
  %74 = inttoptr i32 %71 to ptr
  %75 = getelementptr inbounds %struct.dst_entry, ptr %74, i32 0, i32 7
  %76 = load i16, ptr %75, align 4
  %77 = and i16 %76, 128
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.dst_entry, ptr %74, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.dst_ops, ptr %81, i32 0, i32 11
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  tail call void %83(ptr noundef nonnull %74, ptr noundef null, ptr noundef %1, i32 noundef %68, i1 noundef zeroext false) #19
  br label %86

86:                                               ; preds = %85, %79, %73, %67
  %87 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %88 = load i16, ptr %87, align 8
  switch i16 %88, label %181 [
    i16 8, label %89
    i16 -8826, label %104
  ]

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.skb_shared_info, ptr %91, i32 0, i32 4
  %93 = load i16, ptr %92, align 4
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %95, label %181

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.iphdr, ptr %4, i32 0, i32 4
  %97 = load i16, ptr %96, align 2
  %98 = and i16 %97, 64
  %99 = icmp ne i16 %98, 0
  %100 = icmp slt i32 %68, %28
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %102, label %181

102:                                              ; preds = %95
  %103 = tail call i32 @llvm.bswap.i32(i32 %68)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %10, i8 0, i32 16, i1 false) #19
  call void @__icmp_send(ptr noundef %1, i32 noundef 3, i32 noundef 4, i32 noundef %103, ptr noundef nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #19
  br label %181

104:                                              ; preds = %86
  %105 = load i32, ptr %69, align 8
  %106 = and i32 %105, -2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %104
  %109 = inttoptr i32 %106 to ptr
  %110 = getelementptr inbounds %struct.dst_entry, ptr %109, i32 0, i32 7
  %111 = load i16, ptr %110, align 4
  %112 = and i16 %111, 128
  %113 = icmp eq i16 %112, 0
  %114 = select i1 %113, ptr %109, ptr null
  br label %115

115:                                              ; preds = %108, %104
  %116 = phi ptr [ null, %104 ], [ %114, %108 ]
  br i1 %7, label %120, label %117

117:                                              ; preds = %115
  %118 = getelementptr i8, ptr %0, i32 1512
  %119 = load i32, ptr %118, align 4
  br label %120

120:                                              ; preds = %117, %115
  %121 = phi i32 [ %119, %117 ], [ %6, %115 ]
  %122 = icmp eq ptr %116, null
  br i1 %122, label %170, label %123

123:                                              ; preds = %120
  %124 = inttoptr i32 %106 to ptr
  %125 = getelementptr inbounds %struct.dst_entry, ptr %124, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.dst_ops, ptr %126, i32 0, i32 5
  %128 = load ptr, ptr %127, align 4
  %129 = tail call i32 %128(ptr noundef %124) #19
  %130 = icmp ult i32 %68, %129
  %131 = icmp sgt i32 %68, 1279
  %132 = and i1 %131, %130
  br i1 %132, label %133, label %170

133:                                              ; preds = %123
  %134 = icmp eq i32 %121, 0
  %135 = and i32 %121, 240
  %136 = icmp eq i32 %135, 224
  %137 = or i1 %134, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.rt6_info, ptr %116, i32 0, i32 3, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, 128
  br i1 %141, label %142, label %170

142:                                              ; preds = %138, %133
  %143 = getelementptr inbounds %struct.rt6_info, ptr %116, i32 0, i32 7
  %144 = load i32, ptr %143, align 4
  %145 = or i32 %144, 32
  store i32 %145, ptr %143, align 4
  %146 = load i32, ptr %69, align 8
  %147 = and i32 %146, -2
  %148 = inttoptr i32 %147 to ptr
  %149 = getelementptr inbounds %struct.dst_entry, ptr %148, i32 0, i32 2
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153, !prof !9

152:                                              ; preds = %142
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/dst.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #19, !srcloc !24
  unreachable

153:                                              ; preds = %142
  %154 = and i32 %150, 1
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.dst_entry, ptr %148, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.dst_ops, ptr %158, i32 0, i32 6
  %160 = load ptr, ptr %159, align 8
  %161 = tail call ptr %160(ptr noundef %148, i32 noundef %150) #19
  br label %165

162:                                              ; preds = %153
  %163 = and i32 %150, -4
  %164 = inttoptr i32 %163 to ptr
  br label %165

165:                                              ; preds = %162, %156
  %166 = phi ptr [ %161, %156 ], [ %164, %162 ]
  %167 = icmp eq ptr %166, null
  br i1 %167, label %170, label %168

168:                                              ; preds = %165
  %169 = getelementptr i32, ptr %166, i32 1
  store i32 %68, ptr %169, align 4
  br label %170

170:                                              ; preds = %168, %165, %138, %123, %120
  %171 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.skb_shared_info, ptr %172, i32 0, i32 4
  %174 = load i16, ptr %173, align 4
  %175 = icmp eq i16 %174, 0
  %176 = icmp sgt i32 %68, 1279
  %177 = select i1 %175, i1 %176, i1 false
  %178 = icmp slt i32 %68, %28
  %179 = select i1 %177, i1 %178, i1 false
  br i1 %179, label %180, label %181

180:                                              ; preds = %170
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 24, i1 false) #19
  call void @icmp6_send(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %68, ptr noundef null, ptr noundef nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #19
  br label %181

181:                                              ; preds = %180, %170, %102, %95, %89, %86
  %182 = phi i32 [ -7, %102 ], [ -7, %180 ], [ 0, %170 ], [ 0, %86 ], [ 0, %89 ], [ 0, %95 ]
  ret i32 %182
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iptunnel_xmit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_tunnel_xmit(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) #2 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.flowi4, align 8
  store i8 %3, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i32 56, i1 false), !annotation !10
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 14
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = getelementptr i8, ptr %1, i32 1512
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %16, i8 0, i32 16, i1 false)
  %17 = getelementptr inbounds %struct.iphdr, ptr %2, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %127

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, -2
  %24 = inttoptr i32 %23 to ptr
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 8
  br label %440

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.dst_entry, ptr %24, i32 0, i32 7
  %32 = load i16, ptr %31, align 4
  %33 = and i16 %32, 128
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.metadata_dst, ptr %24, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.metadata_dst, ptr %24, i32 0, i32 2
  br label %49

41:                                               ; preds = %35, %30
  %42 = getelementptr inbounds %struct.dst_entry, ptr %24, i32 0, i32 13
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %61, label %45

45:                                               ; preds = %41
  %46 = load i16, ptr %43, align 4
  switch i16 %46, label %61 [
    i16 2, label %47
    i16 4, label %47
  ]

47:                                               ; preds = %45, %45
  %48 = getelementptr inbounds %struct.lwtunnel_state, ptr %43, i32 0, i32 7
  br label %49

49:                                               ; preds = %47, %39
  %50 = phi ptr [ %40, %39 ], [ %48, %47 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ip_tunnel_info, ptr %50, i32 0, i32 3
  %54 = load i8, ptr %53, align 1
  %55 = and i8 %54, 3
  %56 = icmp eq i8 %55, 1
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.ip_tunnel_key, ptr %50, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %120

61:                                               ; preds = %57, %52, %49, %45, %41
  %62 = phi ptr [ %50, %57 ], [ %50, %52 ], [ null, %49 ], [ null, %45 ], [ null, %41 ]
  %63 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %64 = load i16, ptr %63, align 8
  switch i16 %64, label %440 [
    i16 8, label %65
    i16 -8826, label %74
  ]

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.iphdr, ptr %12, i32 0, i32 9
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.rtable, ptr %24, i32 0, i32 7
  %69 = load i8, ptr %68, align 4
  %70 = icmp eq i8 %69, 2
  br i1 %70, label %71, label %120

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.rtable, ptr %24, i32 0, i32 8
  %73 = load i32, ptr %72, align 4
  br label %120

74:                                               ; preds = %61
  %75 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %76 = load i16, ptr %75, align 4
  %77 = zext i16 %76 to i32
  %78 = getelementptr i8, ptr %8, i32 %77
  %79 = getelementptr inbounds %struct.ipv6hdr, ptr %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.dst_entry, ptr %24, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.dst_ops, ptr %81, i32 0, i32 14
  %83 = load ptr, ptr %82, align 8
  %84 = tail call ptr %83(ptr noundef nonnull %24, ptr noundef null, ptr noundef %79) #19
  %85 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  %86 = icmp eq ptr %84, null
  %87 = or i1 %85, %86
  br i1 %87, label %440, label %88

88:                                               ; preds = %74
  %89 = getelementptr inbounds %struct.neighbour, ptr %84, i32 0, i32 28
  %90 = tail call i32 @__ipv6_addr_type(ptr noundef %89) #19
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load ptr, ptr %7, align 8
  %95 = load i16, ptr %75, align 4
  %96 = zext i16 %95 to i32
  %97 = getelementptr i8, ptr %94, i32 %96
  %98 = getelementptr inbounds %struct.ipv6hdr, ptr %97, i32 0, i32 6
  %99 = tail call i32 @__ipv6_addr_type(ptr noundef %98) #19
  %100 = and i32 %99, 65535
  br label %101

101:                                              ; preds = %93, %88
  %102 = phi ptr [ %98, %93 ], [ %89, %88 ]
  %103 = phi i32 [ %100, %93 ], [ %91, %88 ]
  %104 = and i32 %103, 128
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = getelementptr [4 x i32], ptr %102, i32 0, i32 3
  %108 = load i32, ptr %107, align 4
  br label %109

109:                                              ; preds = %106, %101
  %110 = phi i32 [ %108, %106 ], [ 0, %101 ]
  %111 = getelementptr inbounds %struct.neighbour, ptr %84, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %111) #19, !srcloc !16
  %112 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %111, ptr %111, i32 1, ptr elementtype(i32) %111) #19, !srcloc !26
  %113 = extractvalue { i32, i32, i32 } %112, 0
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %118, label %115

115:                                              ; preds = %109
  %116 = icmp sgt i32 %113, 0
  br i1 %116, label %119, label %117, !prof !11

117:                                              ; preds = %115
  tail call void @refcount_warn_saturate(ptr noundef %111, i32 noundef 3) #19
  br label %119

118:                                              ; preds = %109
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !27
  tail call void @neigh_destroy(ptr noundef nonnull %84) #19
  br label %119

119:                                              ; preds = %118, %117, %115
  br i1 %105, label %426, label %120

120:                                              ; preds = %119, %71, %65, %57
  %121 = phi ptr [ %50, %57 ], [ %62, %65 ], [ %62, %71 ], [ %62, %119 ]
  %122 = phi ptr [ null, %57 ], [ %24, %65 ], [ %24, %71 ], [ null, %119 ]
  %123 = phi i1 [ true, %57 ], [ false, %65 ], [ false, %71 ], [ false, %119 ]
  %124 = phi i1 [ true, %57 ], [ %15, %65 ], [ %15, %71 ], [ %15, %119 ]
  %125 = phi i32 [ %59, %57 ], [ %67, %65 ], [ %73, %71 ], [ %110, %119 ]
  %126 = select i1 %123, i1 %124, i1 false
  br label %127

127:                                              ; preds = %120, %4
  %128 = phi ptr [ null, %4 ], [ %121, %120 ]
  %129 = phi ptr [ null, %4 ], [ %122, %120 ]
  %130 = phi i1 [ false, %4 ], [ %123, %120 ]
  %131 = phi i1 [ %15, %4 ], [ %126, %120 ]
  %132 = phi i32 [ %18, %4 ], [ %125, %120 ]
  %133 = getelementptr inbounds %struct.iphdr, ptr %2, i32 0, i32 1
  %134 = load i8, ptr %133, align 1
  %135 = and i8 %134, 1
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %152, label %137

137:                                              ; preds = %127
  %138 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %139 = load i16, ptr %138, align 8
  %140 = icmp eq i16 %139, 8
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.iphdr, ptr %12, i32 0, i32 1
  %143 = load i8, ptr %142, align 1
  br label %152

144:                                              ; preds = %137
  %145 = and i8 %134, -2
  %146 = icmp eq i16 %139, -8826
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load i16, ptr %12, align 2
  %149 = tail call i16 @llvm.bswap.i16(i16 %148) #19
  %150 = lshr i16 %149, 4
  %151 = trunc i16 %150 to i8
  br label %152

152:                                              ; preds = %147, %144, %141, %127
  %153 = phi i1 [ false, %141 ], [ false, %147 ], [ %131, %144 ], [ %131, %127 ]
  %154 = phi i8 [ %143, %141 ], [ %151, %147 ], [ %145, %144 ], [ %134, %127 ]
  %155 = getelementptr inbounds %struct.iphdr, ptr %2, i32 0, i32 8
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr i8, ptr %1, i32 1492
  %158 = load i32, ptr %157, align 4
  %159 = and i8 %154, 30
  %160 = getelementptr i8, ptr %1, i32 1480
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr i8, ptr %1, i32 1552
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %165 = load i16, ptr %164, align 8
  %166 = and i16 %165, 768
  %167 = icmp eq i16 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %152
  tail call void @__skb_get_hash(ptr noundef %0) #19
  br label %169

169:                                              ; preds = %168, %152
  %170 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 7
  %171 = load i32, ptr %170, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i32 56, i1 false) #19
  store i32 %161, ptr %6, align 8
  %172 = getelementptr inbounds %struct.flowi4, ptr %6, i32 0, i32 2
  store i32 %132, ptr %172, align 4
  %173 = getelementptr inbounds %struct.flowi4, ptr %6, i32 0, i32 1
  store i32 %156, ptr %173, align 8
  %174 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 3
  store i8 %159, ptr %174, align 4
  %175 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 5
  store i8 %3, ptr %175, align 2
  %176 = getelementptr inbounds %struct.flowi4, ptr %6, i32 0, i32 3
  store i32 %158, ptr %176, align 8
  %177 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 2
  store i32 %163, ptr %177, align 8
  %178 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 10
  store i32 %171, ptr %178, align 8
  %179 = getelementptr i8, ptr %1, i32 1528
  %180 = load i16, ptr %179, align 4
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %198, label %182

182:                                              ; preds = %169
  %183 = icmp ugt i16 %180, 7
  br i1 %183, label %440, label %184

184:                                              ; preds = %182
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !21
  %185 = load i16, ptr %179, align 4
  %186 = zext i16 %185 to i32
  %187 = getelementptr [8 x ptr], ptr @iptun_encaps, i32 0, i32 %186
  %188 = load volatile ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %194, label %190, !prof !9

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.ip_tunnel_encap_ops, ptr %188, i32 0, i32 1
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %195, !prof !9

194:                                              ; preds = %190, %184
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !22
  br label %440

195:                                              ; preds = %190
  %196 = call i32 %192(ptr noundef %0, ptr noundef %179, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !22
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %440, label %198

198:                                              ; preds = %195, %169
  %199 = xor i1 %153, true
  %200 = and i1 %130, %153
  br i1 %200, label %201, label %214

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %203 = load i32, ptr %202, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %220

205:                                              ; preds = %201
  %206 = icmp eq ptr %128, null
  br i1 %206, label %212, label %207

207:                                              ; preds = %205
  %208 = getelementptr inbounds %struct.ip_tunnel_key, ptr %128, i32 0, i32 2
  %209 = load i16, ptr %208, align 8
  %210 = and i16 %209, 32
  %211 = icmp eq i16 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %207, %205
  %213 = getelementptr inbounds %struct.ip_tunnel_info, ptr %128, i32 0, i32 1
  br label %217

214:                                              ; preds = %198
  br i1 %153, label %215, label %229

215:                                              ; preds = %214
  %216 = getelementptr i8, ptr %1, i32 1456
  br label %217

217:                                              ; preds = %215, %212
  %218 = phi ptr [ %216, %215 ], [ %213, %212 ]
  %219 = call ptr @dst_cache_get_ip4(ptr noundef %218, ptr noundef %173) #19
  br label %220

220:                                              ; preds = %217, %207, %201
  %221 = phi ptr [ %129, %207 ], [ %129, %201 ], [ %219, %217 ]
  %222 = phi i1 [ false, %207 ], [ false, %201 ], [ %200, %217 ]
  %223 = icmp eq ptr %221, null
  br i1 %223, label %224, label %248

224:                                              ; preds = %220
  %225 = getelementptr i8, ptr %1, i32 1424
  %226 = load ptr, ptr %225, align 4
  %227 = call ptr @ip_route_output_flow(ptr noundef %226, ptr noundef nonnull %6, ptr noundef null) #19
  %228 = icmp ugt ptr %227, inttoptr (i32 -4096 to ptr)
  br i1 %228, label %234, label %238

229:                                              ; preds = %214
  %230 = getelementptr i8, ptr %1, i32 1424
  %231 = load ptr, ptr %230, align 4
  %232 = call ptr @ip_route_output_flow(ptr noundef %231, ptr noundef nonnull %6, ptr noundef null) #19
  %233 = icmp ugt ptr %232, inttoptr (i32 -4096 to ptr)
  br i1 %233, label %234, label %248

234:                                              ; preds = %229, %224
  %235 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 17
  %236 = load i32, ptr %235, align 4
  %237 = add i32 %236, 1
  store i32 %237, ptr %235, align 4
  br label %440

238:                                              ; preds = %224
  br i1 %222, label %239, label %241

239:                                              ; preds = %238
  %240 = getelementptr inbounds %struct.ip_tunnel_info, ptr %128, i32 0, i32 1
  br label %245

241:                                              ; preds = %238
  %242 = select i1 %130, i1 true, i1 %199
  br i1 %242, label %248, label %243

243:                                              ; preds = %241
  %244 = getelementptr i8, ptr %1, i32 1456
  br label %245

245:                                              ; preds = %243, %239
  %246 = phi ptr [ %240, %239 ], [ %244, %243 ]
  %247 = load i32, ptr %173, align 8
  call void @dst_cache_set_ip4(ptr noundef %246, ptr noundef %227, i32 noundef %247) #19
  br label %248

248:                                              ; preds = %245, %241, %229, %220
  %249 = phi ptr [ %221, %220 ], [ %227, %241 ], [ %232, %229 ], [ %227, %245 ]
  %250 = load ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, %1
  br i1 %251, label %252, label %256

252:                                              ; preds = %248
  call void @dst_release(ptr noundef %249) #19
  %253 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 9
  %254 = load i32, ptr %253, align 4
  %255 = add i32 %254, 1
  store i32 %255, ptr %253, align 4
  br label %440

256:                                              ; preds = %248
  %257 = getelementptr inbounds %struct.iphdr, ptr %2, i32 0, i32 4
  %258 = load i16, ptr %257, align 2
  %259 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %260 = load i16, ptr %259, align 8
  %261 = icmp eq i16 %260, 8
  br i1 %261, label %262, label %271

262:                                              ; preds = %256
  %263 = getelementptr i8, ptr %1, i32 1557
  %264 = load i8, ptr %263, align 1, !range !28
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.iphdr, ptr %12, i32 0, i32 4
  %268 = load i16, ptr %267, align 2
  %269 = and i16 %268, 64
  %270 = or i16 %269, %258
  br label %271

271:                                              ; preds = %266, %262, %256
  %272 = phi i16 [ %258, %262 ], [ %270, %266 ], [ %258, %256 ]
  %273 = call fastcc i32 @tnl_update_pmtu(ptr noundef %1, ptr noundef %0, ptr noundef %249, i16 noundef zeroext %272, ptr noundef %12, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %271
  call void @dst_release(ptr noundef %249) #19
  br label %440

276:                                              ; preds = %271
  %277 = getelementptr i8, ptr %1, i32 1432
  %278 = load i32, ptr %277, align 4
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %304

280:                                              ; preds = %276
  %281 = load volatile i32, ptr @jiffies, align 64
  %282 = getelementptr i8, ptr %1, i32 1428
  %283 = load i32, ptr %282, align 4
  %284 = add i32 %281, -3000
  %285 = sub i32 %284, %283
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %303

287:                                              ; preds = %280
  %288 = add nsw i32 %278, -1
  store i32 %288, ptr %277, align 4
  %289 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %290 = load i32, ptr %289, align 8
  %291 = and i32 %290, -2
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %304, label %293

293:                                              ; preds = %287
  %294 = inttoptr i32 %291 to ptr
  %295 = getelementptr inbounds %struct.dst_entry, ptr %294, i32 0, i32 1
  %296 = load ptr, ptr %295, align 4
  %297 = icmp eq ptr %296, null
  br i1 %297, label %304, label %298

298:                                              ; preds = %293
  %299 = getelementptr inbounds %struct.dst_ops, ptr %296, i32 0, i32 10
  %300 = load ptr, ptr %299, align 8
  %301 = icmp eq ptr %300, null
  br i1 %301, label %304, label %302

302:                                              ; preds = %298
  call void %300(ptr noundef %0) #19
  br label %304

303:                                              ; preds = %280
  store i32 0, ptr %277, align 4
  br label %304

304:                                              ; preds = %303, %302, %298, %293, %287, %276
  %305 = load i16, ptr %259, align 8
  switch i16 %305, label %314 [
    i16 8, label %306
    i16 -8826, label %309
  ]

306:                                              ; preds = %304
  %307 = getelementptr inbounds %struct.iphdr, ptr %12, i32 0, i32 1
  %308 = load i8, ptr %307, align 1
  br label %314

309:                                              ; preds = %304
  %310 = load i16, ptr %12, align 2
  %311 = call i16 @llvm.bswap.i16(i16 %310) #19
  %312 = lshr i16 %311, 4
  %313 = trunc i16 %312 to i8
  br label %314

314:                                              ; preds = %309, %306, %304
  %315 = phi i8 [ %308, %306 ], [ %313, %309 ], [ 0, %304 ]
  %316 = and i8 %154, -4
  %317 = and i8 %315, 3
  %318 = icmp eq i8 %317, 3
  %319 = select i1 %318, i8 2, i8 %317
  %320 = or i8 %319, %316
  %321 = getelementptr inbounds %struct.iphdr, ptr %2, i32 0, i32 5
  %322 = load i8, ptr %321, align 4
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %324, label %343

324:                                              ; preds = %314
  switch i16 %305, label %331 [
    i16 8, label %325
    i16 -8826, label %328
  ]

325:                                              ; preds = %324
  %326 = getelementptr inbounds %struct.iphdr, ptr %12, i32 0, i32 5
  %327 = load i8, ptr %326, align 4
  br label %343

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.ipv6hdr, ptr %12, i32 0, i32 4
  %330 = load i8, ptr %329, align 1
  br label %343

331:                                              ; preds = %324
  %332 = getelementptr inbounds %struct.dst_entry, ptr %249, i32 0, i32 2
  %333 = load i32, ptr %332, align 4
  %334 = and i32 %333, -4
  %335 = inttoptr i32 %334 to ptr
  %336 = getelementptr i32, ptr %335, i32 9
  %337 = load i32, ptr %336, align 4
  %338 = icmp eq i32 %337, 0
  %339 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 31), align 2
  %340 = zext i8 %339 to i32
  %341 = select i1 %338, i32 %340, i32 %337
  %342 = trunc i32 %341 to i8
  br label %343

343:                                              ; preds = %331, %328, %325, %314
  %344 = phi i8 [ %327, %325 ], [ %330, %328 ], [ %342, %331 ], [ %322, %314 ]
  %345 = load ptr, ptr %249, align 4
  %346 = getelementptr inbounds %struct.net_device, ptr %345, i32 0, i32 19
  %347 = load i16, ptr %346, align 2
  %348 = zext i16 %347 to i32
  %349 = getelementptr inbounds %struct.net_device, ptr %345, i32 0, i32 21
  %350 = load i16, ptr %349, align 8
  %351 = zext i16 %350 to i32
  %352 = add nuw nsw i32 %351, %348
  %353 = and i32 %352, 131056
  %354 = getelementptr inbounds %struct.dst_entry, ptr %249, i32 0, i32 9
  %355 = load i16, ptr %354, align 4
  %356 = zext i16 %355 to i32
  %357 = load i16, ptr %179, align 2
  %358 = icmp eq i16 %357, 0
  br i1 %358, label %374, label %359

359:                                              ; preds = %343
  %360 = icmp ugt i16 %357, 7
  br i1 %360, label %374, label %361

361:                                              ; preds = %359
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !21
  %362 = load i16, ptr %179, align 2
  %363 = zext i16 %362 to i32
  %364 = getelementptr [8 x ptr], ptr @iptun_encaps, i32 0, i32 %363
  %365 = load volatile ptr, ptr %364, align 4
  %366 = icmp eq ptr %365, null
  br i1 %366, label %372, label %367, !prof !9

367:                                              ; preds = %361
  %368 = load ptr, ptr %365, align 4
  %369 = icmp eq ptr %368, null
  br i1 %369, label %372, label %370, !prof !9

370:                                              ; preds = %367
  %371 = call i32 %368(ptr noundef %179) #19
  br label %372

372:                                              ; preds = %370, %367, %361
  %373 = phi i32 [ %371, %370 ], [ -22, %367 ], [ -22, %361 ]
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !22
  br label %374

374:                                              ; preds = %372, %359, %343
  %375 = phi i32 [ %373, %372 ], [ 0, %343 ], [ -22, %359 ]
  %376 = add nuw nsw i32 %356, 36
  %377 = add nuw nsw i32 %376, %353
  %378 = add i32 %377, %375
  %379 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 21
  %380 = load i16, ptr %379, align 8
  %381 = zext i16 %380 to i32
  %382 = icmp ugt i32 %378, %381
  br i1 %382, label %383, label %386

383:                                              ; preds = %374
  %384 = trunc i32 %378 to i16
  store i16 %384, ptr %379, align 8
  %385 = and i32 %378, 65535
  br label %386

386:                                              ; preds = %383, %374
  %387 = phi i32 [ %385, %383 ], [ %381, %374 ]
  %388 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %389 = load i8, ptr %388, align 2
  %390 = and i8 %389, 1
  %391 = icmp eq i8 %390, 0
  br i1 %391, label %402, label %392

392:                                              ; preds = %386
  %393 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %394 = load ptr, ptr %393, align 4
  %395 = getelementptr inbounds %struct.skb_shared_info, ptr %394, i32 0, i32 10
  %396 = load volatile i32, ptr %395, align 4
  %397 = and i32 %396, 65535
  %398 = ashr i32 %396, 16
  %399 = sub nsw i32 %397, %398
  %400 = icmp ne i32 %399, 1
  %401 = zext i1 %400 to i32
  br label %402

402:                                              ; preds = %392, %386
  %403 = phi i32 [ %401, %392 ], [ 0, %386 ]
  %404 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %405 = load ptr, ptr %404, align 4
  %406 = load ptr, ptr %7, align 8
  %407 = ptrtoint ptr %405 to i32
  %408 = ptrtoint ptr %406 to i32
  %409 = sub i32 %407, %408
  %410 = call i32 @llvm.usub.sat.i32(i32 %387, i32 %409) #19
  %411 = or i32 %410, %403
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %422, label %413

413:                                              ; preds = %402
  %414 = add nuw nsw i32 %410, 63
  %415 = and i32 %414, 131008
  %416 = call i32 @pskb_expand_head(ptr noundef %0, i32 noundef %415, i32 noundef 0, i32 noundef 2592) #19
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %422, label %418

418:                                              ; preds = %413
  call void @dst_release(ptr noundef %249) #19
  %419 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %420 = load i32, ptr %419, align 4
  %421 = add i32 %420, 1
  store i32 %421, ptr %419, align 4
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #19
  br label %444

422:                                              ; preds = %413, %402
  %423 = load i32, ptr %173, align 8
  %424 = load i32, ptr %172, align 4
  %425 = load i8, ptr %5, align 1
  call void @iptunnel_xmit(ptr noundef null, ptr noundef %249, ptr noundef %0, i32 noundef %423, i32 noundef %424, i8 noundef zeroext %425, i8 noundef zeroext %320, i8 noundef zeroext %344, i16 noundef zeroext %272, i1 noundef zeroext false) #19
  br label %444

426:                                              ; preds = %119
  %427 = load i32, ptr %21, align 8
  %428 = and i32 %427, -2
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %440, label %430

430:                                              ; preds = %426
  %431 = inttoptr i32 %428 to ptr
  %432 = getelementptr inbounds %struct.dst_entry, ptr %431, i32 0, i32 1
  %433 = load ptr, ptr %432, align 4
  %434 = icmp eq ptr %433, null
  br i1 %434, label %440, label %435

435:                                              ; preds = %430
  %436 = getelementptr inbounds %struct.dst_ops, ptr %433, i32 0, i32 10
  %437 = load ptr, ptr %436, align 8
  %438 = icmp eq ptr %437, null
  br i1 %438, label %440, label %439

439:                                              ; preds = %435
  tail call void %437(ptr noundef %0) #19
  br label %440

440:                                              ; preds = %439, %435, %430, %426, %275, %252, %234, %195, %194, %182, %74, %61, %26
  %441 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %442 = load i32, ptr %441, align 4
  %443 = add i32 %442, 1
  store i32 %443, ptr %441, align 4
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #19
  br label %444

444:                                              ; preds = %440, %422, %418
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_tunnel_ctl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 1424
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 1544
  %8 = load i32, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !21
  %9 = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 37
  %10 = load volatile ptr, ptr %9, align 64
  %11 = getelementptr [0 x ptr], ptr %10, i32 0, i32 %8
  %12 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !22
  switch i32 %2, label %362 [
    i32 35312, label %13
    i32 35313, label %90
    i32 35315, label %90
    i32 35314, label %280
  ]

13:                                               ; preds = %3
  %14 = load ptr, ptr %12, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %87

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  %18 = load i16, ptr %17, align 16
  %19 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 2
  %26 = load i16, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %20, 0
  %30 = and i32 %20, 240
  %31 = icmp eq i32 %30, 224
  %32 = or i1 %29, %31
  %33 = select i1 %32, i32 0, i32 %20
  %34 = and i16 %26, 1025
  %35 = icmp eq i16 %34, 1
  %36 = select i1 %35, i32 0, i32 %24
  %37 = xor i32 %36, %33
  %38 = mul i32 %37, 1640531527
  %39 = lshr i32 %38, 25
  %40 = getelementptr %struct.ip_tunnel_net, ptr %12, i32 0, i32 2, i32 %39
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  %43 = getelementptr i8, ptr %41, i32 -4
  %44 = icmp eq ptr %43, null
  %45 = or i1 %42, %44
  br i1 %45, label %87, label %46

46:                                               ; preds = %16
  %47 = and i16 %26, 1024
  br label %48

48:                                               ; preds = %80, %46
  %49 = phi ptr [ %43, %46 ], [ %84, %80 ]
  %50 = getelementptr inbounds %struct.ip_tunnel, ptr %49, i32 0, i32 15, i32 6, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %22, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ip_tunnel, ptr %49, i32 0, i32 15, i32 6, i32 9
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %20, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ip_tunnel, ptr %49, i32 0, i32 15, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %28, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ip_tunnel, ptr %49, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 32
  %65 = load i16, ptr %64, align 16
  %66 = icmp eq i16 %65, %18
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.ip_tunnel, ptr %49, i32 0, i32 15, i32 2
  %69 = load i16, ptr %68, align 4
  %70 = and i16 %47, %69
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.ip_tunnel, ptr %49, i32 0, i32 15, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, %24
  br i1 %75, label %87, label %80

76:                                               ; preds = %67
  %77 = or i16 %69, %26
  %78 = and i16 %77, 1024
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %76, %72, %61, %57, %53, %48
  %81 = getelementptr inbounds %struct.ip_tunnel, ptr %49, i32 0, i32 1
  %82 = load volatile ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  %84 = getelementptr i8, ptr %82, i32 -4
  %85 = icmp eq ptr %84, null
  %86 = or i1 %83, %85
  br i1 %86, label %87, label %48

87:                                               ; preds = %80, %76, %72, %16, %13
  %88 = phi ptr [ %4, %13 ], [ %4, %16 ], [ %4, %80 ], [ %49, %76 ], [ %49, %72 ]
  %89 = getelementptr inbounds %struct.ip_tunnel, ptr %88, i32 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(52) %1, ptr noundef align 4 dereferenceable(52) %89, i32 52, i1 false)
  br label %362

90:                                               ; preds = %3, %3
  %91 = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 11
  %92 = load ptr, ptr %91, align 4
  %93 = tail call zeroext i1 @ns_capable(ptr noundef %92, i32 noundef 12) #19
  br i1 %93, label %94, label %362

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 5
  %96 = load i8, ptr %95, align 4
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 4
  %100 = load i16, ptr %99, align 2
  %101 = or i16 %100, 64
  store i16 %101, ptr %99, align 2
  br label %102

102:                                              ; preds = %98, %94
  %103 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 2
  %104 = load i16, ptr %103, align 4
  %105 = zext i16 %104 to i32
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %102
  %109 = and i32 %105, 1024
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 4
  store i32 0, ptr %112, align 4
  br label %113

113:                                              ; preds = %111, %108
  %114 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 3
  %115 = load i16, ptr %114, align 2
  %116 = and i16 %115, 1024
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 5
  store i32 0, ptr %119, align 4
  br label %120

120:                                              ; preds = %118, %113, %102
  %121 = getelementptr inbounds %struct.ip_tunnel_net, ptr %12, i32 0, i32 4
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 9
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 8
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 4
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = icmp eq i32 %124, 0
  %132 = and i32 %124, 240
  %133 = icmp eq i32 %132, 224
  %134 = or i1 %131, %133
  %135 = select i1 %134, i32 0, i32 %124
  %136 = and i16 %104, 1025
  %137 = icmp eq i16 %136, 1
  %138 = select i1 %137, i32 0, i32 %128
  %139 = xor i32 %135, %138
  %140 = mul i32 %139, 1640531527
  %141 = lshr i32 %140, 25
  %142 = getelementptr %struct.ip_tunnel_net, ptr %12, i32 0, i32 2, i32 %141
  %143 = load volatile ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  %145 = getelementptr i8, ptr %143, i32 -4
  %146 = icmp eq ptr %145, null
  %147 = or i1 %144, %146
  br i1 %147, label %190, label %148

148:                                              ; preds = %120
  %149 = and i16 %104, 1024
  br label %150

150:                                              ; preds = %183, %148
  %151 = phi ptr [ %145, %148 ], [ %187, %183 ]
  %152 = getelementptr inbounds %struct.ip_tunnel, ptr %151, i32 0, i32 15, i32 6, i32 8
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %126, %153
  br i1 %154, label %155, label %183

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.ip_tunnel, ptr %151, i32 0, i32 15, i32 6, i32 9
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %124, %157
  br i1 %158, label %159, label %183

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.ip_tunnel, ptr %151, i32 0, i32 15, i32 1
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %130, %161
  br i1 %162, label %163, label %183

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.ip_tunnel, ptr %151, i32 0, i32 2
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.net_device, ptr %165, i32 0, i32 32
  %167 = load i16, ptr %166, align 16
  %168 = zext i16 %167 to i32
  %169 = icmp eq i32 %122, %168
  br i1 %169, label %170, label %183

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.ip_tunnel, ptr %151, i32 0, i32 15, i32 2
  %172 = load i16, ptr %171, align 4
  %173 = and i16 %149, %172
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.ip_tunnel, ptr %151, i32 0, i32 15, i32 4
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, %128
  br i1 %178, label %190, label %183

179:                                              ; preds = %170
  %180 = or i16 %172, %104
  %181 = and i16 %180, 1024
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %179, %175, %163, %159, %155, %150
  %184 = getelementptr inbounds %struct.ip_tunnel, ptr %151, i32 0, i32 1
  %185 = load volatile ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  %187 = getelementptr i8, ptr %185, i32 -4
  %188 = icmp eq ptr %187, null
  %189 = or i1 %186, %188
  br i1 %189, label %190, label %150

190:                                              ; preds = %183, %179, %175, %120
  %191 = phi ptr [ null, %120 ], [ null, %183 ], [ %151, %179 ], [ %151, %175 ]
  %192 = icmp eq i32 %2, 35313
  br i1 %192, label %193, label %257

193:                                              ; preds = %190
  %194 = icmp eq ptr %191, null
  br i1 %194, label %195, label %362

195:                                              ; preds = %193
  %196 = getelementptr inbounds %struct.ip_tunnel_net, ptr %12, i32 0, i32 1
  %197 = load ptr, ptr %196, align 4
  %198 = tail call fastcc ptr @__ip_tunnel_create(ptr noundef %6, ptr noundef %197, ptr noundef %1) #19
  %199 = icmp ugt ptr %198, inttoptr (i32 -4096 to ptr)
  br i1 %199, label %252, label %200

200:                                              ; preds = %195
  %201 = tail call fastcc i32 @ip_tunnel_bind_dev(ptr noundef %198) #19
  %202 = tail call i32 @dev_set_mtu(ptr noundef %198, i32 noundef %201) #19
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %250

204:                                              ; preds = %200
  %205 = getelementptr i8, ptr %198, i32 1408
  %206 = getelementptr i8, ptr %198, i32 1524
  %207 = load i32, ptr %206, align 4
  %208 = getelementptr inbounds %struct.net_device, ptr %198, i32 0, i32 30
  store i32 68, ptr %208, align 8
  %209 = sub i32 65515, %207
  %210 = getelementptr inbounds %struct.net_device, ptr %198, i32 0, i32 31
  store i32 %209, ptr %210, align 4
  %211 = getelementptr inbounds %struct.net_device, ptr %198, i32 0, i32 32
  %212 = load i16, ptr %211, align 16
  %213 = icmp eq i16 %212, 1
  br i1 %213, label %214, label %219

214:                                              ; preds = %204
  %215 = getelementptr inbounds %struct.net_device, ptr %198, i32 0, i32 19
  %216 = load i16, ptr %215, align 2
  %217 = zext i16 %216 to i32
  %218 = sub i32 %209, %217
  store i32 %218, ptr %210, align 4
  br label %219

219:                                              ; preds = %214, %204
  %220 = getelementptr i8, ptr %198, i32 1488
  %221 = load i32, ptr %220, align 4
  %222 = getelementptr i8, ptr %198, i32 1512
  %223 = load i32, ptr %222, align 4
  %224 = icmp eq i32 %223, 0
  %225 = and i32 %223, 240
  %226 = icmp eq i32 %225, 224
  %227 = or i1 %224, %226
  %228 = select i1 %227, i32 0, i32 %223
  %229 = getelementptr i8, ptr %198, i32 1484
  %230 = load i16, ptr %229, align 4
  %231 = and i16 %230, 1025
  %232 = icmp eq i16 %231, 1
  %233 = select i1 %232, i32 0, i32 %221
  %234 = xor i32 %228, %233
  %235 = mul i32 %234, 1640531527
  %236 = lshr i32 %235, 25
  %237 = getelementptr %struct.ip_tunnel_net, ptr %12, i32 0, i32 2, i32 %236
  %238 = getelementptr i8, ptr %198, i32 1556
  %239 = load i8, ptr %238, align 4, !range !28
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %219
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !29
  %242 = getelementptr inbounds %struct.ip_tunnel_net, ptr %12, i32 0, i32 3
  store volatile ptr %205, ptr %242, align 4
  br label %243

243:                                              ; preds = %241, %219
  %244 = getelementptr i8, ptr %198, i32 1412
  %245 = load ptr, ptr %237, align 4
  store ptr %245, ptr %244, align 4
  %246 = getelementptr i8, ptr %198, i32 1416
  store volatile ptr %237, ptr %246, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  store volatile ptr %244, ptr %237, align 4
  %247 = icmp eq ptr %245, null
  br i1 %247, label %252, label %248

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.hlist_node, ptr %245, i32 0, i32 1
  store volatile ptr %244, ptr %249, align 4
  br label %252

250:                                              ; preds = %200
  tail call void @unregister_netdevice_queue(ptr noundef %198, ptr noundef null) #19
  %251 = inttoptr i32 %202 to ptr
  br label %252

252:                                              ; preds = %250, %248, %243, %195
  %253 = phi ptr [ %251, %250 ], [ %198, %195 ], [ %205, %243 ], [ %205, %248 ]
  %254 = icmp ugt ptr %253, inttoptr (i32 -4096 to ptr)
  %255 = ptrtoint ptr %253 to i32
  %256 = select i1 %254, i32 %255, i32 0
  br label %362

257:                                              ; preds = %190
  %258 = load ptr, ptr %12, align 4
  %259 = icmp ne ptr %258, %0
  %260 = icmp eq i32 %2, 35315
  %261 = and i1 %260, %259
  br i1 %261, label %262, label %275

262:                                              ; preds = %257
  %263 = icmp eq ptr %191, null
  br i1 %263, label %268, label %264

264:                                              ; preds = %262
  %265 = getelementptr inbounds %struct.ip_tunnel, ptr %191, i32 0, i32 2
  %266 = load ptr, ptr %265, align 4
  %267 = icmp eq ptr %266, %0
  br i1 %267, label %278, label %362

268:                                              ; preds = %262
  %269 = select i1 %131, i32 0, i32 16
  %270 = select i1 %133, i32 2, i32 %269
  %271 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %272 = load i32, ptr %271, align 8
  %273 = and i32 %272, 18
  %274 = icmp eq i32 %273, %270
  br i1 %274, label %275, label %362

275:                                              ; preds = %268, %257
  %276 = phi ptr [ %191, %257 ], [ %4, %268 ]
  %277 = icmp eq ptr %276, null
  br i1 %277, label %362, label %278

278:                                              ; preds = %275, %264
  %279 = phi ptr [ %276, %275 ], [ %191, %264 ]
  tail call fastcc void @ip_tunnel_update(ptr noundef %12, ptr noundef nonnull %279, ptr noundef %0, ptr noundef %1, i1 noundef zeroext true, i32 noundef 0)
  br label %362

280:                                              ; preds = %3
  %281 = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 11
  %282 = load ptr, ptr %281, align 4
  %283 = tail call zeroext i1 @ns_capable(ptr noundef %282, i32 noundef 12) #19
  br i1 %283, label %284, label %362

284:                                              ; preds = %280
  %285 = load ptr, ptr %12, align 4
  %286 = icmp eq ptr %285, %0
  br i1 %286, label %287, label %360

287:                                              ; preds = %284
  %288 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  %289 = load i16, ptr %288, align 16
  %290 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 9
  %291 = load i32, ptr %290, align 4
  %292 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 6, i32 8
  %293 = load i32, ptr %292, align 4
  %294 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 4
  %295 = load i32, ptr %294, align 4
  %296 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 2
  %297 = load i16, ptr %296, align 4
  %298 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %1, i32 0, i32 1
  %299 = load i32, ptr %298, align 4
  %300 = icmp eq i32 %291, 0
  %301 = and i32 %291, 240
  %302 = icmp eq i32 %301, 224
  %303 = or i1 %300, %302
  %304 = select i1 %303, i32 0, i32 %291
  %305 = and i16 %297, 1025
  %306 = icmp eq i16 %305, 1
  %307 = select i1 %306, i32 0, i32 %295
  %308 = xor i32 %307, %304
  %309 = mul i32 %308, 1640531527
  %310 = lshr i32 %309, 25
  %311 = getelementptr %struct.ip_tunnel_net, ptr %12, i32 0, i32 2, i32 %310
  %312 = load volatile ptr, ptr %311, align 4
  %313 = icmp eq ptr %312, null
  %314 = getelementptr i8, ptr %312, i32 -4
  %315 = icmp eq ptr %314, null
  %316 = or i1 %313, %315
  br i1 %316, label %362, label %317

317:                                              ; preds = %287
  %318 = and i16 %297, 1024
  br label %319

319:                                              ; preds = %351, %317
  %320 = phi ptr [ %314, %317 ], [ %355, %351 ]
  %321 = getelementptr inbounds %struct.ip_tunnel, ptr %320, i32 0, i32 15, i32 6, i32 8
  %322 = load i32, ptr %321, align 4
  %323 = icmp eq i32 %293, %322
  br i1 %323, label %324, label %351

324:                                              ; preds = %319
  %325 = getelementptr inbounds %struct.ip_tunnel, ptr %320, i32 0, i32 15, i32 6, i32 9
  %326 = load i32, ptr %325, align 4
  %327 = icmp eq i32 %291, %326
  br i1 %327, label %328, label %351

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.ip_tunnel, ptr %320, i32 0, i32 15, i32 1
  %330 = load i32, ptr %329, align 4
  %331 = icmp eq i32 %299, %330
  br i1 %331, label %332, label %351

332:                                              ; preds = %328
  %333 = getelementptr inbounds %struct.ip_tunnel, ptr %320, i32 0, i32 2
  %334 = load ptr, ptr %333, align 4
  %335 = getelementptr inbounds %struct.net_device, ptr %334, i32 0, i32 32
  %336 = load i16, ptr %335, align 16
  %337 = icmp eq i16 %336, %289
  br i1 %337, label %338, label %351

338:                                              ; preds = %332
  %339 = getelementptr inbounds %struct.ip_tunnel, ptr %320, i32 0, i32 15, i32 2
  %340 = load i16, ptr %339, align 4
  %341 = and i16 %318, %340
  %342 = icmp eq i16 %341, 0
  br i1 %342, label %347, label %343

343:                                              ; preds = %338
  %344 = getelementptr inbounds %struct.ip_tunnel, ptr %320, i32 0, i32 15, i32 4
  %345 = load i32, ptr %344, align 4
  %346 = icmp eq i32 %345, %295
  br i1 %346, label %358, label %351

347:                                              ; preds = %338
  %348 = or i16 %340, %297
  %349 = and i16 %348, 1024
  %350 = icmp eq i16 %349, 0
  br i1 %350, label %358, label %351

351:                                              ; preds = %347, %343, %332, %328, %324, %319
  %352 = getelementptr inbounds %struct.ip_tunnel, ptr %320, i32 0, i32 1
  %353 = load volatile ptr, ptr %352, align 4
  %354 = icmp eq ptr %353, null
  %355 = getelementptr i8, ptr %353, i32 -4
  %356 = icmp eq ptr %355, null
  %357 = or i1 %354, %356
  br i1 %357, label %362, label %319

358:                                              ; preds = %347, %343
  %359 = icmp eq ptr %320, %4
  br i1 %359, label %362, label %360

360:                                              ; preds = %358, %284
  %361 = phi ptr [ %0, %284 ], [ %334, %358 ]
  tail call void @unregister_netdevice_queue(ptr noundef %361, ptr noundef null) #19
  br label %362

362:                                              ; preds = %360, %358, %351, %287, %280, %278, %275, %268, %264, %252, %193, %90, %87, %3
  %363 = phi i32 [ -1, %358 ], [ 0, %360 ], [ -1, %280 ], [ %256, %252 ], [ 0, %278 ], [ -1, %90 ], [ 0, %87 ], [ -17, %193 ], [ -17, %264 ], [ -2, %275 ], [ -22, %3 ], [ -22, %268 ], [ -2, %287 ], [ -2, %351 ]
  ret i32 %363
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ip_tunnel_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i32 noundef %5) unnamed_addr #2 {
  %7 = getelementptr inbounds %struct.ip_tunnel, ptr %1, i32 0, i32 25
  %8 = load i8, ptr %7, align 4, !range !28
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ip_tunnel_net, ptr %0, i32 0, i32 3
  store volatile ptr null, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.ip_tunnel, ptr %1, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ip_tunnel, ptr %1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  store volatile ptr %18, ptr %14, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  store volatile ptr %14, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %16
  store volatile ptr null, ptr %13, align 4
  br label %23

23:                                               ; preds = %22, %12
  %24 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %3, i32 0, i32 6, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ip_tunnel, ptr %1, i32 0, i32 15, i32 6, i32 8
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %3, i32 0, i32 6, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ip_tunnel, ptr %1, i32 0, i32 15, i32 6, i32 9
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %3, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ip_tunnel, ptr %1, i32 0, i32 15, i32 4
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %3, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ip_tunnel, ptr %1, i32 0, i32 15, i32 5
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 32
  %37 = load i16, ptr %36, align 16
  %38 = icmp eq i16 %37, 1
  br i1 %38, label %44, label %39

39:                                               ; preds = %23
  tail call void @dev_addr_mod(ptr noundef %2, i32 noundef 0, ptr noundef %24, i32 noundef 4) #19
  %40 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 83
  %41 = load i32, ptr %27, align 4
  store i32 %41, ptr %40, align 4
  %42 = load i32, ptr %32, align 4
  %43 = load i32, ptr %29, align 4
  br label %44

44:                                               ; preds = %39, %23
  %45 = phi i32 [ %43, %39 ], [ %28, %23 ]
  %46 = phi i32 [ %42, %39 ], [ %31, %23 ]
  %47 = icmp eq i32 %45, 0
  %48 = and i32 %45, 240
  %49 = icmp eq i32 %48, 224
  %50 = or i1 %47, %49
  %51 = select i1 %50, i32 0, i32 %45
  %52 = getelementptr inbounds %struct.ip_tunnel, ptr %1, i32 0, i32 15, i32 2
  %53 = load i16, ptr %52, align 4
  %54 = and i16 %53, 1025
  %55 = icmp eq i16 %54, 1
  %56 = select i1 %55, i32 0, i32 %46
  %57 = xor i32 %51, %56
  %58 = mul i32 %57, 1640531527
  %59 = lshr i32 %58, 25
  %60 = getelementptr %struct.ip_tunnel_net, ptr %0, i32 0, i32 2, i32 %59
  %61 = load i8, ptr %7, align 4, !range !28
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !29
  %64 = getelementptr inbounds %struct.ip_tunnel_net, ptr %0, i32 0, i32 3
  store volatile ptr %1, ptr %64, align 4
  br label %65

65:                                               ; preds = %63, %44
  %66 = getelementptr inbounds %struct.ip_tunnel, ptr %1, i32 0, i32 1
  %67 = load ptr, ptr %60, align 4
  store ptr %67, ptr %66, align 4
  store volatile ptr %60, ptr %13, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  store volatile ptr %66, ptr %60, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.hlist_node, ptr %67, i32 0, i32 1
  store volatile ptr %66, ptr %70, align 4
  br label %71

71:                                               ; preds = %69, %65
  %72 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %3, i32 0, i32 6, i32 5
  %73 = load i8, ptr %72, align 4
  %74 = getelementptr inbounds %struct.ip_tunnel, ptr %1, i32 0, i32 15, i32 6, i32 5
  store i8 %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %3, i32 0, i32 6, i32 1
  %76 = load i8, ptr %75, align 1
  %77 = getelementptr inbounds %struct.ip_tunnel, ptr %1, i32 0, i32 15, i32 6, i32 1
  store i8 %76, ptr %77, align 1
  %78 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %3, i32 0, i32 6, i32 4
  %79 = load i16, ptr %78, align 2
  %80 = getelementptr inbounds %struct.ip_tunnel, ptr %1, i32 0, i32 15, i32 6, i32 4
  store i16 %79, ptr %80, align 2
  %81 = getelementptr inbounds %struct.ip_tunnel, ptr %1, i32 0, i32 15, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %3, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %71
  %87 = getelementptr inbounds %struct.ip_tunnel, ptr %1, i32 0, i32 24
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, %5
  br i1 %89, label %95, label %90

90:                                               ; preds = %86, %71
  store i32 %84, ptr %81, align 4
  %91 = getelementptr inbounds %struct.ip_tunnel, ptr %1, i32 0, i32 24
  store i32 %5, ptr %91, align 4
  %92 = tail call fastcc i32 @ip_tunnel_bind_dev(ptr noundef %2)
  br i1 %4, label %93, label %95

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 20
  store i32 %92, ptr %94, align 4
  br label %95

95:                                               ; preds = %93, %90, %86
  %96 = load volatile i32, ptr @jiffies, align 64
  %97 = getelementptr inbounds %struct.ip_tunnel, ptr %1, i32 0, i32 14, i32 1
  store i32 %96, ptr %97, align 4
  tail call void @netdev_state_change(ptr noundef %2) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_tunnel_siocdevprivate(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca %struct.ip_tunnel_parm, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %5) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %5, i8 0, i32 52, i1 false), !annotation !10
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 52, i32 -1090519040) #21
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17, !prof !11

9:                                                ; preds = %4
  %10 = tail call ptr @llvm.thread.pointer() #19
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #16, !srcloc !31
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #19, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !33
  %15 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %2, i32 noundef 52) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #19, !srcloc !32
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !33
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !11

17:                                               ; preds = %9, %4
  %18 = phi i32 [ %15, %9 ], [ 52, %4 ]
  %19 = sub i32 52, %18
  %20 = getelementptr i8, ptr %5, i32 %19
  call void @llvm.memset.p0.i32(ptr align 1 %20, i8 0, i32 %18, i1 false) #19
  br label %35

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.net_device_ops, ptr %23, i32 0, i32 71
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 %25(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %3) #19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #16, !srcloc !31
  %30 = and i32 %29, -13
  %31 = or i32 %30, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #19, !srcloc !32
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !33
  %32 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 52) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #19, !srcloc !32
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !33
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %21
  br label %35

35:                                               ; preds = %34, %28, %17
  %36 = phi i32 [ %26, %34 ], [ -14, %28 ], [ -14, %17 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %5) #19
  ret i32 %36
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @__ip_tunnel_change_mtu(ptr nocapture noundef %0, i32 noundef %1, i1 noundef zeroext %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 1524
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 65515, %5
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  %8 = load i16, ptr %7, align 16
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 19
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = sub i32 %6, %13
  br label %15

15:                                               ; preds = %10, %3
  %16 = phi i32 [ %14, %10 ], [ %6, %3 ]
  %17 = icmp slt i32 %1, 68
  %18 = icmp slt i32 %16, %1
  %19 = and i1 %18, %2
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = tail call i32 @llvm.smin.i32(i32 %16, i32 %1)
  %23 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %22, ptr %23, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi i32 [ 0, %21 ], [ -22, %15 ]
  ret i32 %25
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ip_tunnel_change_mtu(ptr nocapture noundef %0, i32 noundef %1) #9 {
  %3 = getelementptr i8, ptr %0, i32 1524
  %4 = load i32, ptr %3, align 4
  %5 = sub i32 65515, %4
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  %7 = load i16, ptr %6, align 16
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 19
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = sub i32 %5, %12
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i32 [ %13, %9 ], [ %5, %2 ]
  %16 = icmp slt i32 %1, 68
  %17 = icmp slt i32 %15, %1
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi i32 [ 0, %19 ], [ -22, %14 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_tunnel_dellink(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1424
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 1544
  %6 = load i32, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !21
  %7 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 37
  %8 = load volatile ptr, ptr %7, align 64
  %9 = getelementptr [0 x ptr], ptr %8, i32 0, i32 %6
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !22
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %31, label %13

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %0, i32 1556
  %15 = load i8, ptr %14, align 4, !range !28
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ip_tunnel_net, ptr %10, i32 0, i32 3
  store volatile ptr null, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr i8, ptr %0, i32 1416
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %0, i32 1412
  %25 = load ptr, ptr %24, align 4
  store volatile ptr %25, ptr %21, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.hlist_node, ptr %25, i32 0, i32 1
  store volatile ptr %21, ptr %28, align 4
  br label %29

29:                                               ; preds = %27, %23
  store volatile ptr null, ptr %20, align 4
  br label %30

30:                                               ; preds = %29, %19
  tail call void @unregister_netdevice_queue(ptr noundef %0, ptr noundef %1) #19
  br label %31

31:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @ip_tunnel_get_link_net(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr i8, ptr %0, i32 1424
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ip_tunnel_get_iflink(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr i8, ptr %0, i32 1480
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_tunnel_init_net(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = alloca %struct.ip_tunnel_parm, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !21
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %7 = load volatile ptr, ptr %6, align 64
  %8 = getelementptr [0 x ptr], ptr %7, i32 0, i32 %1
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !22
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %5) #19
  %10 = getelementptr inbounds %struct.ip_tunnel_net, ptr %9, i32 0, i32 1
  store ptr %2, ptr %10, align 4
  %11 = getelementptr i8, ptr %9, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(512) %11, i8 0, i32 512, i1 false)
  %12 = icmp eq ptr %2, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %4
  %14 = load i32, ptr @sysctl_fb_tunnels_only_for_init_net, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = icmp eq ptr %0, @init_net
  %18 = icmp eq i32 %14, 1
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %27, label %20

20:                                               ; preds = %16, %4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !21
  %21 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %22 = getelementptr [0 x ptr], ptr %21, i32 0, i32 %1
  %23 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !22
  %24 = getelementptr inbounds %struct.ip_tunnel_net, ptr %23, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ip_tunnel_net, ptr %9, i32 0, i32 4
  store i32 %25, ptr %26, align 4
  store ptr null, ptr %9, align 4
  br label %85

27:                                               ; preds = %16, %13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %5, i8 0, i32 52, i1 false)
  %28 = icmp eq ptr %3, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = call i32 @strlcpy(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 16) #19
  br label %31

31:                                               ; preds = %29, %27
  call void @rtnl_lock() #19
  %32 = call fastcc ptr @__ip_tunnel_create(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %5)
  store ptr %32, ptr %9, align 4
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %80, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 23
  %36 = load i64, ptr %35, align 16
  %37 = or i64 %36, 8192
  store i64 %37, ptr %35, align 16
  %38 = load ptr, ptr %9, align 4
  %39 = call fastcc i32 @ip_tunnel_bind_dev(ptr noundef %38)
  %40 = load ptr, ptr %9, align 4
  %41 = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 20
  store i32 %39, ptr %41, align 4
  %42 = load ptr, ptr %9, align 4
  %43 = getelementptr i8, ptr %42, i32 1488
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %42, i32 1512
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  %48 = and i32 %46, 240
  %49 = icmp eq i32 %48, 224
  %50 = or i1 %47, %49
  %51 = select i1 %50, i32 0, i32 %46
  %52 = getelementptr i8, ptr %42, i32 1484
  %53 = load i16, ptr %52, align 4
  %54 = and i16 %53, 1025
  %55 = icmp eq i16 %54, 1
  %56 = select i1 %55, i32 0, i32 %44
  %57 = xor i32 %51, %56
  %58 = mul i32 %57, 1640531527
  %59 = lshr i32 %58, 25
  %60 = getelementptr %struct.ip_tunnel_net, ptr %9, i32 0, i32 2, i32 %59
  %61 = getelementptr i8, ptr %42, i32 1556
  %62 = load i8, ptr %61, align 4, !range !28
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %34
  %65 = getelementptr i8, ptr %42, i32 1408
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !29
  %66 = getelementptr inbounds %struct.ip_tunnel_net, ptr %9, i32 0, i32 3
  store volatile ptr %65, ptr %66, align 4
  br label %67

67:                                               ; preds = %64, %34
  %68 = getelementptr i8, ptr %42, i32 1412
  %69 = load ptr, ptr %60, align 4
  store ptr %69, ptr %68, align 4
  %70 = getelementptr i8, ptr %42, i32 1416
  store volatile ptr %60, ptr %70, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  store volatile ptr %68, ptr %60, align 4
  %71 = icmp eq ptr %69, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.hlist_node, ptr %69, i32 0, i32 1
  store volatile ptr %68, ptr %73, align 4
  br label %74

74:                                               ; preds = %72, %67
  %75 = load ptr, ptr %9, align 4
  %76 = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 32
  %77 = load i16, ptr %76, align 16
  %78 = zext i16 %77 to i32
  %79 = getelementptr inbounds %struct.ip_tunnel_net, ptr %9, i32 0, i32 4
  store i32 %78, ptr %79, align 4
  br label %80

80:                                               ; preds = %74, %31
  call void @rtnl_unlock() #19
  %81 = load ptr, ptr %9, align 4
  %82 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  %83 = ptrtoint ptr %81 to i32
  %84 = select i1 %82, i32 %83, i32 0
  br label %85

85:                                               ; preds = %80, %20
  %86 = phi i32 [ %84, %80 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %5) #19
  ret i32 %86
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__ip_tunnel_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !10
  %5 = load i8, ptr %2, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = tail call zeroext i1 @dev_valid_name(ptr noundef %2) #19
  br i1 %8, label %9, label %42

9:                                                ; preds = %7
  %10 = call i32 @strlcpy(ptr noundef nonnull %4, ptr noundef %2, i32 noundef 16) #19
  br label %20

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rtnl_link_ops, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @strlen(ptr noundef %13)
  %15 = icmp ugt i32 %14, 13
  br i1 %15, label %42, label %16

16:                                               ; preds = %11
  %17 = call ptr @strcpy(ptr noundef nonnull %4, ptr noundef %13)
  %18 = call i32 @strlen(ptr nonnull %4)
  %19 = getelementptr i8, ptr %4, i32 %18
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %19, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i32 3, i1 false)
  br label %20

20:                                               ; preds = %16, %9
  %21 = call i32 @rtnl_is_locked() #19
  %22 = icmp eq i32 %21, 0
  %23 = load i1, ptr @__ip_tunnel_create.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27, !prof !9

26:                                               ; preds = %20
  store i1 true, ptr @__ip_tunnel_create.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 253, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 253) #19
  br label %27

27:                                               ; preds = %26, %20
  %28 = getelementptr inbounds %struct.rtnl_link_ops, ptr %1, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.rtnl_link_ops, ptr %1, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = call ptr @alloc_netdev_mqs(i32 noundef %29, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef %31, i32 noundef 1, i32 noundef 1) #19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 114
  store ptr %1, ptr %35, align 4
  %36 = getelementptr i8, ptr %32, i32 1464
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(52) %36, ptr noundef align 4 dereferenceable(52) %2, i32 52, i1 false)
  %37 = getelementptr i8, ptr %32, i32 1424
  store ptr %0, ptr %37, align 4
  %38 = call i32 @register_netdevice(ptr noundef nonnull %32) #19
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  call void @free_netdev(ptr noundef nonnull %32) #19
  %41 = inttoptr i32 %38 to ptr
  br label %42

42:                                               ; preds = %40, %34, %27, %11, %7
  %43 = phi ptr [ %32, %34 ], [ %41, %40 ], [ inttoptr (i32 -7 to ptr), %7 ], [ inttoptr (i32 -7 to ptr), %11 ], [ inttoptr (i32 -12 to ptr), %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret ptr %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip_tunnel_bind_dev(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.flowi4, align 8
  %3 = getelementptr i8, ptr %0, i32 1524
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 20
  %6 = getelementptr i8, ptr %0, i32 1512
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #19
  %10 = getelementptr i8, ptr %0, i32 1505
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr i8, ptr %0, i32 1508
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 1492
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %0, i32 1497
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, 30
  %19 = getelementptr i8, ptr %0, i32 1480
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %0, i32 1552
  %22 = load i32, ptr %21, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i32 56, i1 false) #19
  store i32 %20, ptr %2, align 8
  %23 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 2
  store i32 %7, ptr %23, align 4
  %24 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 1
  store i32 %13, ptr %24, align 8
  %25 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 3
  store i8 %18, ptr %25, align 4
  %26 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 5
  store i8 %11, ptr %26, align 2
  %27 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 3
  store i32 %15, ptr %27, align 8
  %28 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 2
  store i32 %22, ptr %28, align 8
  %29 = getelementptr i8, ptr %0, i32 1424
  %30 = load ptr, ptr %29, align 4
  %31 = call ptr @ip_route_output_flow(ptr noundef %30, ptr noundef nonnull %2, ptr noundef null) #19
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %35, label %33

33:                                               ; preds = %9
  %34 = load ptr, ptr %31, align 4
  call void @dst_release(ptr noundef %31) #19
  br label %35

35:                                               ; preds = %33, %9
  %36 = phi ptr [ null, %9 ], [ %34, %33 ]
  %37 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  %38 = load i16, ptr %37, align 16
  %39 = icmp eq i16 %38, 1
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %42 = load i32, ptr %41, align 8
  %43 = or i32 %42, 16
  store i32 %43, ptr %41, align 8
  br label %44

44:                                               ; preds = %40, %35
  %45 = load volatile i32, ptr @jiffies, align 64
  %46 = getelementptr i8, ptr %0, i32 1460
  store i32 %45, ptr %46, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #19
  %47 = icmp eq ptr %36, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %44, %1
  %49 = getelementptr i8, ptr %0, i32 1480
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %0, i32 1424
  %54 = load ptr, ptr %53, align 4
  %55 = call ptr @__dev_get_by_index(ptr noundef %54, i32 noundef %50) #19
  %56 = icmp eq ptr %55, null
  br i1 %56, label %70, label %57

57:                                               ; preds = %52, %44
  %58 = phi ptr [ %55, %52 ], [ %36, %44 ]
  %59 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 19
  %60 = load i16, ptr %59, align 2
  %61 = zext i16 %60 to i32
  %62 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 21
  %63 = load i16, ptr %62, align 8
  %64 = zext i16 %63 to i32
  %65 = add nuw nsw i32 %64, %61
  %66 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 20
  %67 = load i32, ptr %66, align 4
  %68 = call i32 @llvm.umin.i32(i32 %67, i32 65535)
  %69 = add nsw i32 %68, -20
  br label %70

70:                                               ; preds = %57, %52, %48
  %71 = phi i32 [ %65, %57 ], [ 96, %52 ], [ 96, %48 ]
  %72 = phi i32 [ %69, %57 ], [ 1480, %52 ], [ 1480, %48 ]
  %73 = add i32 %71, %5
  %74 = trunc i32 %73 to i16
  %75 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 21
  store i16 %74, ptr %75, align 8
  %76 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  %77 = load i16, ptr %76, align 16
  %78 = icmp eq i16 %77, 1
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 19
  %81 = load i16, ptr %80, align 2
  %82 = zext i16 %81 to i32
  br label %83

83:                                               ; preds = %79, %70
  %84 = phi i32 [ %82, %79 ], [ 0, %70 ]
  %85 = add i32 %4, %84
  %86 = sub i32 %72, %85
  %87 = call i32 @llvm.smax.i32(i32 %86, i32 68)
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_tunnel_delete_nets(ptr noundef readonly %0, i32 noundef %1, ptr noundef readnone %2) #2 {
  %4 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store ptr %4, ptr %4, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  call void @rtnl_lock() #19
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %44, label %8

8:                                                ; preds = %41, %3
  %9 = phi ptr [ %42, %41 ], [ %6, %3 ]
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !21
  %10 = getelementptr i8, ptr %9, i32 1436
  %11 = load volatile ptr, ptr %10, align 64
  %12 = getelementptr [0 x ptr], ptr %11, i32 0, i32 %1
  %13 = load ptr, ptr %12, align 4
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !22
  %14 = getelementptr i8, ptr %9, i32 60
  %15 = load ptr, ptr %14, align 32
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %17, label %24

17:                                               ; preds = %32, %8
  %18 = getelementptr %struct.ip_tunnel_net, ptr %13, i32 0, i32 2, i32 0
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = getelementptr i8, ptr %19, i32 -4
  %22 = icmp eq ptr %21, null
  %23 = or i1 %20, %22
  br i1 %23, label %41, label %34

24:                                               ; preds = %32, %8
  %25 = phi ptr [ %26, %32 ], [ %15, %8 ]
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr i8, ptr %25, i32 1140
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %2
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = getelementptr i8, ptr %25, i32 -40
  call void @unregister_netdevice_queue(ptr noundef %31, ptr noundef nonnull %4) #19
  br label %32

32:                                               ; preds = %30, %24
  %33 = icmp eq ptr %26, %14
  br i1 %33, label %17, label %24

34:                                               ; preds = %34, %17
  %35 = phi ptr [ %36, %34 ], [ %19, %17 ]
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  %38 = getelementptr i8, ptr %36, i32 -4
  %39 = icmp eq ptr %38, null
  %40 = or i1 %37, %39
  br i1 %40, label %41, label %34

41:                                               ; preds = %34, %17
  %42 = load ptr, ptr %9, align 4
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %44, label %8

44:                                               ; preds = %41, %3
  call void @unregister_netdevice_many(ptr noundef nonnull %4) #19
  call void @rtnl_unlock() #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_tunnel_newlink(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = alloca [6 x i8], align 1
  %6 = getelementptr i8, ptr %0, i32 1408
  %7 = getelementptr i8, ptr %0, i32 1544
  %8 = load i32, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !21
  %9 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %10 = getelementptr [0 x ptr], ptr %9, i32 0, i32 %8
  %11 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !22
  %12 = getelementptr i8, ptr %0, i32 1556
  %13 = load i8, ptr %12, align 4, !range !28
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.ip_tunnel_net, ptr %11, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %90, label %166

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  %21 = load i16, ptr %20, align 16
  %22 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %2, i32 0, i32 6, i32 9
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %2, i32 0, i32 6, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %2, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %2, i32 0, i32 2
  %29 = load i16, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %2, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %23, 0
  %33 = and i32 %23, 240
  %34 = icmp eq i32 %33, 224
  %35 = or i1 %32, %34
  %36 = select i1 %35, i32 0, i32 %23
  %37 = and i16 %29, 1025
  %38 = icmp eq i16 %37, 1
  %39 = select i1 %38, i32 0, i32 %27
  %40 = xor i32 %39, %36
  %41 = mul i32 %40, 1640531527
  %42 = lshr i32 %41, 25
  %43 = getelementptr %struct.ip_tunnel_net, ptr %11, i32 0, i32 2, i32 %42
  %44 = load volatile ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  %46 = getelementptr i8, ptr %44, i32 -4
  %47 = icmp eq ptr %46, null
  %48 = or i1 %45, %47
  br i1 %48, label %90, label %49

49:                                               ; preds = %19
  %50 = and i16 %29, 1024
  br label %51

51:                                               ; preds = %83, %49
  %52 = phi ptr [ %46, %49 ], [ %87, %83 ]
  %53 = getelementptr inbounds %struct.ip_tunnel, ptr %52, i32 0, i32 15, i32 6, i32 8
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %25, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.ip_tunnel, ptr %52, i32 0, i32 15, i32 6, i32 9
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %23, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ip_tunnel, ptr %52, i32 0, i32 15, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %31, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ip_tunnel, ptr %52, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 32
  %68 = load i16, ptr %67, align 16
  %69 = icmp eq i16 %68, %21
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.ip_tunnel, ptr %52, i32 0, i32 15, i32 2
  %72 = load i16, ptr %71, align 4
  %73 = and i16 %50, %72
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.ip_tunnel, ptr %52, i32 0, i32 15, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, %27
  br i1 %78, label %166, label %83

79:                                               ; preds = %70
  %80 = or i16 %72, %29
  %81 = and i16 %80, 1024
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %166, label %83

83:                                               ; preds = %79, %75, %64, %60, %56, %51
  %84 = getelementptr inbounds %struct.ip_tunnel, ptr %52, i32 0, i32 1
  %85 = load volatile ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  %87 = getelementptr i8, ptr %85, i32 -4
  %88 = icmp eq ptr %87, null
  %89 = or i1 %86, %88
  br i1 %89, label %90, label %51

90:                                               ; preds = %83, %19, %15
  %91 = getelementptr i8, ptr %0, i32 1424
  store ptr @init_net, ptr %91, align 4
  %92 = getelementptr i8, ptr %0, i32 1464
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(52) %92, ptr noundef align 4 dereferenceable(52) %2, i32 52, i1 false)
  %93 = getelementptr i8, ptr %0, i32 1552
  store i32 %3, ptr %93, align 4
  %94 = tail call i32 @register_netdevice(ptr noundef %0) #19
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %166

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  %98 = load i16, ptr %97, align 16
  %99 = icmp eq i16 %98, 1
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = getelementptr ptr, ptr %1, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false) #19, !annotation !10
  call void @get_random_bytes(ptr noundef nonnull %5, i32 noundef 6) #19
  %105 = load i8, ptr %5, align 1
  %106 = and i8 %105, -4
  %107 = or i8 %106, 2
  store i8 %107, ptr %5, align 1
  call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 6) #19
  %108 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 50
  store i8 1, ptr %108, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #19
  br label %109

109:                                              ; preds = %104, %100, %96
  %110 = call fastcc i32 @ip_tunnel_bind_dev(ptr noundef %0)
  %111 = getelementptr ptr, ptr %1, i32 4
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %131, label %114

114:                                              ; preds = %109
  %115 = getelementptr i8, ptr %0, i32 1524
  %116 = load i32, ptr %115, align 4
  %117 = sub i32 65515, %116
  %118 = load i16, ptr %97, align 16
  %119 = icmp eq i16 %118, 1
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 19
  %122 = load i16, ptr %121, align 2
  %123 = zext i16 %122 to i32
  %124 = sub i32 %117, %123
  br label %125

125:                                              ; preds = %120, %114
  %126 = phi i32 [ %124, %120 ], [ %117, %114 ]
  %127 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %128 = load i32, ptr %127, align 4
  %129 = call i32 @llvm.umax.i32(i32 %128, i32 68)
  %130 = call i32 @llvm.umin.i32(i32 %129, i32 %126)
  br label %131

131:                                              ; preds = %125, %109
  %132 = phi i32 [ %130, %125 ], [ %110, %109 ]
  %133 = call i32 @dev_set_mtu(ptr noundef %0, i32 noundef %132) #19
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %165

135:                                              ; preds = %131
  %136 = getelementptr i8, ptr %0, i32 1488
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr i8, ptr %0, i32 1512
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  %141 = and i32 %139, 240
  %142 = icmp eq i32 %141, 224
  %143 = or i1 %140, %142
  %144 = select i1 %143, i32 0, i32 %139
  %145 = getelementptr i8, ptr %0, i32 1484
  %146 = load i16, ptr %145, align 4
  %147 = and i16 %146, 1025
  %148 = icmp eq i16 %147, 1
  %149 = select i1 %148, i32 0, i32 %137
  %150 = xor i32 %144, %149
  %151 = mul i32 %150, 1640531527
  %152 = lshr i32 %151, 25
  %153 = getelementptr %struct.ip_tunnel_net, ptr %11, i32 0, i32 2, i32 %152
  %154 = load i8, ptr %12, align 4, !range !28
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %135
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !29
  %157 = getelementptr inbounds %struct.ip_tunnel_net, ptr %11, i32 0, i32 3
  store volatile ptr %6, ptr %157, align 4
  br label %158

158:                                              ; preds = %156, %135
  %159 = getelementptr i8, ptr %0, i32 1412
  %160 = load ptr, ptr %153, align 4
  store ptr %160, ptr %159, align 4
  %161 = getelementptr i8, ptr %0, i32 1416
  store volatile ptr %153, ptr %161, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  store volatile ptr %159, ptr %153, align 4
  %162 = icmp eq ptr %160, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.hlist_node, ptr %160, i32 0, i32 1
  store volatile ptr %159, ptr %164, align 4
  br label %166

165:                                              ; preds = %131
  call void @unregister_netdevice_queue(ptr noundef %0, ptr noundef null) #19
  br label %166

166:                                              ; preds = %165, %163, %158, %90, %79, %75, %15
  %167 = phi i32 [ -17, %15 ], [ %94, %90 ], [ %133, %165 ], [ 0, %158 ], [ 0, %163 ], [ -17, %75 ], [ -17, %79 ]
  ret i32 %167
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_tunnel_changelink(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr i8, ptr %0, i32 1424
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 1544
  %9 = load i32, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !21
  %10 = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 37
  %11 = load volatile ptr, ptr %10, align 64
  %12 = getelementptr [0 x ptr], ptr %11, i32 0, i32 %9
  %13 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !22
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %103, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  %18 = load i16, ptr %17, align 16
  %19 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %2, i32 0, i32 6, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %2, i32 0, i32 6, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %2, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %2, i32 0, i32 2
  %26 = load i16, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %2, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %20, 0
  %30 = and i32 %20, 240
  %31 = icmp eq i32 %30, 224
  %32 = or i1 %29, %31
  %33 = select i1 %32, i32 0, i32 %20
  %34 = and i16 %26, 1025
  %35 = icmp eq i16 %34, 1
  %36 = select i1 %35, i32 0, i32 %24
  %37 = xor i32 %36, %33
  %38 = mul i32 %37, 1640531527
  %39 = lshr i32 %38, 25
  %40 = getelementptr %struct.ip_tunnel_net, ptr %13, i32 0, i32 2, i32 %39
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  %43 = getelementptr i8, ptr %41, i32 -4
  %44 = icmp eq ptr %43, null
  %45 = or i1 %42, %44
  br i1 %45, label %89, label %46

46:                                               ; preds = %16
  %47 = and i16 %26, 1024
  br label %48

48:                                               ; preds = %80, %46
  %49 = phi ptr [ %43, %46 ], [ %84, %80 ]
  %50 = getelementptr inbounds %struct.ip_tunnel, ptr %49, i32 0, i32 15, i32 6, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %22, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ip_tunnel, ptr %49, i32 0, i32 15, i32 6, i32 9
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %20, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ip_tunnel, ptr %49, i32 0, i32 15, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %28, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ip_tunnel, ptr %49, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 32
  %65 = load i16, ptr %64, align 16
  %66 = icmp eq i16 %65, %18
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.ip_tunnel, ptr %49, i32 0, i32 15, i32 2
  %69 = load i16, ptr %68, align 4
  %70 = and i16 %47, %69
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.ip_tunnel, ptr %49, i32 0, i32 15, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, %24
  br i1 %75, label %87, label %80

76:                                               ; preds = %67
  %77 = or i16 %69, %26
  %78 = and i16 %77, 1024
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %76, %72, %61, %57, %53, %48
  %81 = getelementptr inbounds %struct.ip_tunnel, ptr %49, i32 0, i32 1
  %82 = load volatile ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  %84 = getelementptr i8, ptr %82, i32 -4
  %85 = icmp eq ptr %84, null
  %86 = or i1 %83, %85
  br i1 %86, label %89, label %48

87:                                               ; preds = %76, %72
  %88 = icmp eq ptr %63, %0
  br i1 %88, label %98, label %103

89:                                               ; preds = %80, %16
  %90 = icmp eq i16 %18, 1
  br i1 %90, label %98, label %91

91:                                               ; preds = %89
  %92 = select i1 %29, i32 0, i32 16
  %93 = select i1 %31, i32 2, i32 %92
  %94 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 18
  %97 = icmp eq i32 %96, %93
  br i1 %97, label %98, label %103

98:                                               ; preds = %91, %89, %87
  %99 = phi ptr [ %49, %87 ], [ %5, %91 ], [ %5, %89 ]
  %100 = getelementptr ptr, ptr %1, i32 4
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  tail call fastcc void @ip_tunnel_update(ptr noundef %13, ptr noundef %99, ptr noundef %0, ptr noundef %2, i1 noundef zeroext %102, i32 noundef %3)
  br label %103

103:                                              ; preds = %98, %91, %87, %4
  %104 = phi i32 [ 0, %98 ], [ -22, %91 ], [ -22, %4 ], [ -17, %87 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_tunnel_init(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1464
  %3 = getelementptr i8, ptr %0, i32 1496
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 105
  store i8 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 106
  store ptr @ip_tunnel_dev_free, ptr %5, align 4
  %6 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %10 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  %11 = icmp ult i32 %10, %9
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = ptrtoint ptr %6 to i32
  br label %16

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 110
  store ptr null, ptr %15, align 8
  br label %49

16:                                               ; preds = %16, %12
  %17 = phi i32 [ %10, %12 ], [ %23, %16 ]
  %18 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %13
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %21, i32 0, i32 4
  store i32 0, ptr %22, align 4
  %23 = tail call i32 @cpumask_next(i32 noundef %17, ptr noundef nonnull @__cpu_possible_mask) #23
  %24 = icmp ult i32 %23, %9
  br i1 %24, label %16, label %25

25:                                               ; preds = %16, %8
  %26 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 110
  store ptr %6, ptr %26, align 8
  %27 = getelementptr i8, ptr %0, i32 1456
  %28 = tail call i32 @dst_cache_init(ptr noundef %27, i32 noundef 3264) #19
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8
  tail call void @free_percpu(ptr noundef %31) #19
  br label %49

32:                                               ; preds = %25
  %33 = getelementptr i8, ptr %0, i32 1548
  %34 = tail call i32 @gro_cells_init(ptr noundef %33, ptr noundef %0) #19
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  tail call void @dst_cache_destroy(ptr noundef %27) #19
  %37 = load ptr, ptr %26, align 8
  tail call void @free_percpu(ptr noundef %37) #19
  br label %49

38:                                               ; preds = %32
  %39 = getelementptr i8, ptr %0, i32 1420
  store ptr %0, ptr %39, align 4
  %40 = getelementptr i8, ptr %0, i32 1424
  store ptr @init_net, ptr %40, align 4
  %41 = tail call ptr @strcpy(ptr noundef %2, ptr noundef %0)
  store i8 69, ptr %3, align 4
  %42 = getelementptr i8, ptr %0, i32 1556
  %43 = load i8, ptr %42, align 4, !range !28
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %47 = load i64, ptr %46, align 16
  %48 = and i64 %47, -131105
  store i64 %48, ptr %46, align 16
  br label %49

49:                                               ; preds = %45, %38, %36, %30, %14
  %50 = phi i32 [ %28, %30 ], [ %34, %36 ], [ 0, %45 ], [ 0, %38 ], [ -12, %14 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip_tunnel_dev_free(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1548
  tail call void @gro_cells_destroy(ptr noundef %2) #19
  %3 = getelementptr i8, ptr %0, i32 1456
  tail call void @dst_cache_destroy(ptr noundef %3) #19
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 110
  %5 = load ptr, ptr %4, align 8
  tail call void @free_percpu(ptr noundef %5) #19
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_cache_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gro_cells_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_tunnel_uninit(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1424
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 1544
  %5 = load i32, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !21
  %6 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 37
  %7 = load volatile ptr, ptr %6, align 64
  %8 = getelementptr [0 x ptr], ptr %7, i32 0, i32 %5
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !22
  %10 = getelementptr i8, ptr %0, i32 1556
  %11 = load i8, ptr %10, align 4, !range !28
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ip_tunnel_net, ptr %9, i32 0, i32 3
  store volatile ptr null, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %1
  %16 = getelementptr i8, ptr %0, i32 1416
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %0, i32 1412
  %21 = load ptr, ptr %20, align 4
  store volatile ptr %21, ptr %17, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  store volatile ptr %17, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %19
  store volatile ptr null, ptr %16, align 4
  br label %26

26:                                               ; preds = %25, %15
  %27 = load ptr, ptr %9, align 4
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store volatile ptr null, ptr %9, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load volatile i32, ptr @jiffies, align 64
  %32 = getelementptr i8, ptr %0, i32 1460
  store i32 %31, ptr %32, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ip_tunnel_setup(ptr nocapture noundef writeonly %0, i32 noundef %1) #15 {
  %3 = getelementptr i8, ptr %0, i32 1544
  store i32 %1, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_get_hash(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_state_change(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dev_valid_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gro_cells_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nounwind readonly }
attributes #17 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #18 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind readnone }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind readonly willreturn }

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
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 534254}
!13 = !{i64 2149439147}
!14 = !{i64 2149439448}
!15 = !{i64 2156928451}
!16 = !{i64 609876, i64 2148099847, i64 2148099873, i64 2148099920, i64 2148099942, i64 2148099970, i64 2148099990}
!17 = !{i64 621250, i64 621271, i64 621294, i64 621313, i64 621332}
!18 = !{i64 2156928838}
!19 = !{i64 2156931273}
!20 = !{i64 2156931660}
!21 = !{i64 2149101627}
!22 = !{i64 2149101844}
!23 = !{!"branch_weights", i32 4000000, i32 4001}
!24 = !{i64 2155073218, i64 2155073700, i64 2155073255, i64 2155073311, i64 2155073345, i64 2155073369, i64 2155073410, i64 2155073431, i64 2155073459, i64 2155073493}
!25 = !{i64 2148212942}
!26 = !{i64 2148115077, i64 2148115109, i64 2148115138, i64 2148115172, i64 2148115203, i64 2148115226}
!27 = !{i64 2149051260}
!28 = !{i8 0, i8 2}
!29 = !{i64 2156887510}
!30 = !{i64 2150744565}
!31 = !{i64 3574988}
!32 = !{i64 3575185}
!33 = !{i64 2151060464}
