; ModuleID = '/llk/IR/net/xfrm/xfrm_input.c_pt.bc'
source_filename = "../net/xfrm/xfrm_input.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_input_register_afinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_input_register_afinfo\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_input_register_afinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_input_unregister_afinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_input_unregister_afinfo\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_input_unregister_afinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_secpath_set:\09\09\09\09\09"
module asm "\09.asciz \09\22secpath_set\22\09\09\09\09\09"
module asm "__kstrtabns_secpath_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_parse_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_parse_spi\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_parse_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_input:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_input\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_input:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_input_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_input_resume\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_input_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_trans_queue_net:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_trans_queue_net\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_trans_queue_net:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_trans_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_trans_queue\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_trans_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gro_cells = type { ptr }
%struct.xfrm_trans_tasklet = type { %struct.tasklet_struct, %struct.sk_buff_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.154, i32 }
%struct.atomic_t = type { i32 }
%union.anon.154 = type { ptr }
%struct.sk_buff_head = type { %union.anon.5, i32, %struct.spinlock }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.126 = type { ptr }
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
%struct.cpumask = type { [1 x i32] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.70, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.70 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.xfrm_input_afinfo = type { i8, i8, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.127, %union.anon.128, [48 x i8], %union.anon.129, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.131, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.127 = type { ptr }
%union.anon.128 = type { i64 }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { i32, ptr }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.133, i32, i32, i32, i16, i16, %union.anon.135, %union.anon.136, %union.anon.137, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.133 = type { i32 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i16 }
%struct.skb_ext = type { %struct.refcount_struct, [1 x i8], i8, [2 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.148, i32, i32, i8, i8 }
%struct.anon.148 = type { i32, i32 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.55, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.56, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.55 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.56 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_state_offload = type { ptr, %struct.netdevice_tracker, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.ip_tunnel = type { ptr, %struct.hlist_node, ptr, %struct.netdevice_tracker, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i16, %struct.dst_cache, %struct.ip_tunnel_parm, i32, i32, i32, %struct.ip_tunnel_encap, ptr, i32, i32, %struct.gro_cells, i32, i8, i8 }
%struct.dst_cache = type { ptr, i32 }
%struct.ip_tunnel_parm = type { [16 x i8], i32, i16, i16, i32, i32, %struct.iphdr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ip_tunnel_encap = type { i16, i16, i16, i16 }
%struct.ip6_tnl = type { ptr, ptr, %struct.netdevice_tracker, ptr, %struct.__ip6_tnl_parm, %struct.flowi, %struct.dst_cache, %struct.gro_cells, i32, i32, i32, i32, i32, i32, i32, %struct.ip_tunnel_encap, i32 }
%struct.__ip6_tnl_parm = type { [16 x i8], i32, i8, i8, i8, i8, i32, i32, %struct.in6_addr, %struct.in6_addr, i16, i16, i32, i32, i32, i32, i8, i8, i16 }
%struct.in6_addr = type { %union.anon.54 }
%union.anon.54 = type { [4 x i32] }
%struct.flowi = type { %union.anon.57 }
%union.anon.57 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.callback_head = type { ptr, ptr }
%struct.xfrm_type_offload = type { ptr, i8, ptr, ptr, ptr }
%struct.xfrm_type = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.ip_beet_phdr = type { i8, i8, i8, i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.xfrm_state_afinfo = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [22 x i8] c"net/xfrm/xfrm_input.c\00", align 1
@xfrm_input_afinfo_lock = internal global %struct.spinlock zeroinitializer, align 4
@xfrm_input_afinfo = internal global [2 x [11 x ptr]] zeroinitializer, align 4
@__kstrtab_xfrm_input_register_afinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_input_register_afinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_input_register_afinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_input_register_afinfo to i32), ptr @__kstrtab_xfrm_input_register_afinfo, ptr @__kstrtabns_xfrm_input_register_afinfo }, section "___ksymtab+xfrm_input_register_afinfo", align 4
@__kstrtab_xfrm_input_unregister_afinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_input_unregister_afinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_input_unregister_afinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_input_unregister_afinfo to i32), ptr @__kstrtab_xfrm_input_unregister_afinfo, ptr @__kstrtabns_xfrm_input_unregister_afinfo }, section "___ksymtab+xfrm_input_unregister_afinfo", align 4
@__kstrtab_secpath_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_secpath_set = external dso_local constant [0 x i8], align 1
@__ksymtab_secpath_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @secpath_set to i32), ptr @__kstrtab_secpath_set, ptr @__kstrtabns_secpath_set }, section "___ksymtab+secpath_set", align 4
@__kstrtab_xfrm_parse_spi = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_parse_spi = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_parse_spi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_parse_spi to i32), ptr @__kstrtab_xfrm_parse_spi, ptr @__kstrtabns_xfrm_parse_spi }, section "___ksymtab+xfrm_parse_spi", align 4
@gro_cells = internal global %struct.gro_cells zeroinitializer, align 4
@__kstrtab_xfrm_input = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_input = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_input = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_input to i32), ptr @__kstrtab_xfrm_input, ptr @__kstrtabns_xfrm_input }, section "___ksymtab+xfrm_input", align 4
@__kstrtab_xfrm_input_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_input_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_input_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_input_resume to i32), ptr @__kstrtab_xfrm_input_resume, ptr @__kstrtabns_xfrm_input_resume }, section "___ksymtab+xfrm_input_resume", align 4
@xfrm_trans_tasklet = internal global %struct.xfrm_trans_tasklet zeroinitializer, section ".data..percpu", align 4
@netdev_max_backlog = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_xfrm_trans_queue_net = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_trans_queue_net = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_trans_queue_net = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_trans_queue_net to i32), ptr @__kstrtab_xfrm_trans_queue_net, ptr @__kstrtabns_xfrm_trans_queue_net }, section "___ksymtab+xfrm_trans_queue_net", align 4
@__kstrtab_xfrm_trans_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_trans_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_trans_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_trans_queue to i32), ptr @__kstrtab_xfrm_trans_queue, ptr @__kstrtabns_xfrm_trans_queue }, section "___ksymtab+xfrm_trans_queue", align 4
@xfrm_napi_dev = internal global %struct.net_device zeroinitializer, align 64
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@init_net = external dso_local global %struct.net, align 64
@xfrm_inner_mode_input.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xfrm_inner_mode_input.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@xfrm_prepare_input.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xfrm_prepare_input.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@xfrm_inner_mode_encap_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xfrm_input_get_afinfo.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_secpath_set, ptr @__ksymtab_xfrm_input, ptr @__ksymtab_xfrm_input_register_afinfo, ptr @__ksymtab_xfrm_input_resume, ptr @__ksymtab_xfrm_input_unregister_afinfo, ptr @__ksymtab_xfrm_parse_spi, ptr @__ksymtab_xfrm_trans_queue, ptr @__ksymtab_xfrm_trans_queue_net], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_input_register_afinfo(ptr noundef %0) #0 {
  %2 = load i8, ptr %0, align 4
  %3 = icmp ugt i8 %2, 10
  br i1 %3, label %4, label %5, !prof !9

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef null) #11
  br label %22

5:                                                ; preds = %1
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm_input_afinfo_lock) #11
  %6 = getelementptr inbounds %struct.xfrm_input_afinfo, ptr %0, i32 0, i32 1
  %7 = load i8, ptr %6, align 1, !range !10
  %8 = zext i8 %7 to i32
  %9 = load i8, ptr %0, align 4
  %10 = zext i8 %9 to i32
  %11 = getelementptr [2 x [11 x ptr]], ptr @xfrm_input_afinfo, i32 0, i32 %8, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20, !prof !11

14:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %15 = load i8, ptr %6, align 1, !range !10
  %16 = zext i8 %15 to i32
  %17 = load i8, ptr %0, align 4
  %18 = zext i8 %17 to i32
  %19 = getelementptr [2 x [11 x ptr]], ptr @xfrm_input_afinfo, i32 0, i32 %16, i32 %18
  store volatile ptr %0, ptr %19, align 4
  br label %20

20:                                               ; preds = %14, %5
  %21 = phi i32 [ 0, %14 ], [ -17, %5 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm_input_afinfo_lock) #11
  br label %22

22:                                               ; preds = %20, %4
  %23 = phi i32 [ -97, %4 ], [ %21, %20 ]
  ret i32 %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_input_unregister_afinfo(ptr noundef readonly %0) #0 {
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm_input_afinfo_lock) #11
  %2 = getelementptr inbounds %struct.xfrm_input_afinfo, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 1, !range !10
  %4 = zext i8 %3 to i32
  %5 = load i8, ptr %0, align 4
  %6 = zext i8 %5 to i32
  %7 = getelementptr [2 x [11 x ptr]], ptr @xfrm_input_afinfo, i32 0, i32 %4, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !9

10:                                               ; preds = %1
  %11 = icmp eq ptr %8, %0
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %10
  store volatile ptr null, ptr %7, align 4
  br label %13

13:                                               ; preds = %12, %10, %1
  %14 = phi i32 [ 0, %12 ], [ 0, %1 ], [ -22, %10 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm_input_afinfo_lock) #11
  tail call void @synchronize_rcu() #11
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @secpath_set(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.skb_ext, ptr %8, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = tail call ptr @skb_ext_add(ptr noundef %0, i32 noundef 0) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %16

13:                                               ; preds = %1
  %14 = tail call ptr @skb_ext_add(ptr noundef %0, i32 noundef 0) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %21

16:                                               ; preds = %6
  %17 = zext i8 %10 to i32
  %18 = shl nuw nsw i32 %17, 3
  %19 = getelementptr i8, ptr %8, i32 %18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %13
  %22 = phi ptr [ %11, %16 ], [ %14, %13 ]
  %23 = getelementptr inbounds %struct.sec_path, ptr %22, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %23, i8 0, i32 20, i1 false)
  %24 = getelementptr inbounds %struct.sec_path, ptr %22, i32 0, i32 1
  store i32 0, ptr %24, align 4
  store i32 0, ptr %22, align 4
  br label %25

25:                                               ; preds = %21, %16, %13, %6
  %26 = phi ptr [ %22, %21 ], [ null, %6 ], [ %11, %16 ], [ null, %13 ]
  ret ptr %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_ext_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_parse_spi(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  switch i8 %1, label %64 [
    i8 51, label %31
    i8 50, label %5
    i8 108, label %6
  ]

5:                                                ; preds = %4
  br label %31

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %8, %10
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %19, !prof !9

13:                                               ; preds = %6
  %14 = icmp ult i32 %8, 4
  br i1 %14, label %64, label %15, !prof !9

15:                                               ; preds = %13
  %16 = sub nuw nsw i32 4, %11
  %17 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %16) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %64, label %19

19:                                               ; preds = %15, %6
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  %25 = getelementptr i8, ptr %21, i32 %24
  %26 = getelementptr i8, ptr %25, i32 2
  %27 = load i16, ptr %26, align 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %29 = zext i16 %28 to i32
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  store i32 %30, ptr %2, align 4
  br label %62

31:                                               ; preds = %5, %4
  %32 = phi i32 [ 0, %5 ], [ 4, %4 ]
  %33 = phi i32 [ 4, %5 ], [ 8, %4 ]
  %34 = phi i32 [ 8, %5 ], [ 12, %4 ]
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = sub i32 %36, %38
  %40 = icmp ugt i32 %34, %39
  br i1 %40, label %41, label %47, !prof !9

41:                                               ; preds = %31
  %42 = icmp ult i32 %36, %34
  br i1 %42, label %64, label %43, !prof !9

43:                                               ; preds = %41
  %44 = sub i32 %34, %39
  %45 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %44) #11
  %46 = icmp eq ptr %45, null
  br i1 %46, label %64, label %47

47:                                               ; preds = %43, %31
  %48 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  %53 = getelementptr i8, ptr %49, i32 %52
  %54 = getelementptr i8, ptr %53, i32 %32
  %55 = load i32, ptr %54, align 4
  store i32 %55, ptr %2, align 4
  %56 = load ptr, ptr %48, align 8
  %57 = load i16, ptr %50, align 2
  %58 = zext i16 %57 to i32
  %59 = getelementptr i8, ptr %56, i32 %58
  %60 = getelementptr i8, ptr %59, i32 %33
  %61 = load i32, ptr %60, align 4
  br label %62

62:                                               ; preds = %47, %19
  %63 = phi i32 [ %61, %47 ], [ 0, %19 ]
  store i32 %63, ptr %3, align 4
  br label %64

64:                                               ; preds = %62, %43, %41, %15, %13, %4
  %65 = phi i32 [ -22, %15 ], [ 1, %4 ], [ -22, %43 ], [ -22, %13 ], [ -22, %41 ], [ 0, %62 ]
  ret i32 %65
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pskb_may_pull(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = icmp ult i32 %7, %1
  br i1 %8, label %9, label %15, !prof !9

9:                                                ; preds = %2
  %10 = icmp ult i32 %4, %1
  br i1 %10, label %15, label %11, !prof !9

11:                                               ; preds = %9
  %12 = sub i32 %1, %7
  %13 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %12) #11
  %14 = icmp ne ptr %13, null
  br label %15

15:                                               ; preds = %11, %9, %2
  %16 = phi i1 [ %14, %11 ], [ true, %2 ], [ false, %9 ]
  ret i1 %16
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_input(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %2, ptr %5, align 4
  %7 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.skb_ext, ptr %16, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 3
  %21 = getelementptr i8, ptr %16, i32 %20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.sec_path, ptr %21, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %21, align 4
  %29 = icmp eq i32 %28, %25
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = add i32 %25, -1
  %32 = getelementptr %struct.sec_path, ptr %21, i32 0, i32 3, i32 %31
  br label %33

33:                                               ; preds = %30, %27, %23, %14
  %34 = phi ptr [ %32, %30 ], [ null, %27 ], [ null, %23 ], [ null, %14 ]
  %35 = icmp slt i32 %3, 0
  br i1 %35, label %38, label %100

36:                                               ; preds = %4
  %37 = icmp slt i32 %3, 0
  br i1 %37, label %38, label %100

38:                                               ; preds = %36, %33
  %39 = phi ptr [ null, %36 ], [ %34, %33 ]
  %40 = phi ptr [ null, %36 ], [ %21, %33 ]
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, -1
  %43 = getelementptr %struct.sec_path, ptr %40, i32 0, i32 2, i32 %42
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 13, i32 1
  %46 = load i8, ptr %45, align 4
  %47 = icmp eq i8 %46, 2
  br i1 %47, label %65, label %48, !prof !13

48:                                               ; preds = %38
  %49 = icmp eq i32 %3, -1
  br i1 %49, label %50, label %1165

50:                                               ; preds = %48
  %51 = load ptr, ptr %7, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %1165, label %53

53:                                               ; preds = %50
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !14
  %55 = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 99
  %56 = load ptr, ptr %55, align 8
  %57 = ptrtoint ptr %56 to i32
  %58 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %59 = inttoptr i32 %58 to ptr
  %60 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %59) #10, !srcloc !15
  %61 = add i32 %60, %57
  %62 = inttoptr i32 %61 to ptr
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, -1
  store i32 %64, ptr %62, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %54) #11, !srcloc !16
  br label %1165

65:                                               ; preds = %38
  %66 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 48, i32 1
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %3, -1
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  %72 = load i32, ptr %71, align 4
  store i32 %72, ptr %6, align 4
  br label %321

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 36
  %75 = load i32, ptr %74, align 4
  store i32 %75, ptr %6, align 4
  %76 = icmp eq ptr %39, null
  br i1 %76, label %243, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.xfrm_offload, ptr %39, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %243, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  %84 = load i32, ptr %83, align 8
  %85 = getelementptr inbounds %struct.xfrm_offload, ptr %39, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = and i32 %86, 60
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %1165, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.xfrm_state, ptr %44, i32 0, i32 38, i32 2
  %94 = load i32, ptr %93, align 8
  %95 = add i32 %94, 1
  store i32 %95, ptr %93, align 8
  br label %1165

96:                                               ; preds = %82
  %97 = trunc i32 %1 to i8
  %98 = call i32 @xfrm_parse_spi(ptr noundef %0, i8 noundef zeroext %97, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %243, label %1165

100:                                              ; preds = %36, %33
  %101 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  %102 = load i32, ptr %101, align 8
  switch i32 %102, label %119 [
    i32 2, label %103
    i32 10, label %109
  ]

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  %105 = load ptr, ptr %104, align 8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %119, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.ip_tunnel, ptr %105, i32 0, i32 15, i32 4
  br label %115

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  %111 = load ptr, ptr %110, align 8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.ip6_tnl, ptr %111, i32 0, i32 4, i32 12
  br label %115

115:                                              ; preds = %113, %107
  %116 = phi ptr [ %114, %113 ], [ %108, %107 ]
  %117 = load i32, ptr %116, align 4
  %118 = tail call i32 @llvm.bswap.i32(i32 %117)
  br label %119

119:                                              ; preds = %115, %109, %103, %100
  %120 = phi i32 [ %9, %100 ], [ %9, %109 ], [ %9, %103 ], [ %118, %115 ]
  br i1 %13, label %128, label %121

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.skb_ext, ptr %123, i32 0, i32 1
  %125 = load i8, ptr %124, align 1
  %126 = tail call ptr @skb_ext_add(ptr noundef %0, i32 noundef 0) #11
  %127 = icmp eq ptr %126, null
  br i1 %127, label %1181, label %131

128:                                              ; preds = %119
  %129 = tail call ptr @skb_ext_add(ptr noundef %0, i32 noundef 0) #11
  %130 = icmp eq ptr %129, null
  br i1 %130, label %1181, label %136

131:                                              ; preds = %121
  %132 = zext i8 %125 to i32
  %133 = shl nuw nsw i32 %132, 3
  %134 = getelementptr i8, ptr %123, i32 %133
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %131, %128
  %137 = phi ptr [ %126, %131 ], [ %129, %128 ]
  %138 = getelementptr inbounds %struct.sec_path, ptr %137, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %138, i8 0, i32 20, i1 false) #11
  %139 = getelementptr inbounds %struct.sec_path, ptr %137, i32 0, i32 1
  store i32 0, ptr %139, align 4
  store i32 0, ptr %137, align 4
  br label %140

140:                                              ; preds = %136, %131
  store i32 0, ptr %6, align 4
  %141 = icmp eq i32 %2, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %140
  %143 = trunc i32 %1 to i8
  %144 = call i32 @xfrm_parse_spi(ptr noundef %0, i8 noundef zeroext %143, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %142
  %147 = load i8, ptr %10, align 1
  %148 = and i8 %147, 1
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %1181, label %150

150:                                              ; preds = %146
  tail call void @__skb_ext_del(ptr noundef %0, i32 noundef 0) #11
  br label %1181

151:                                              ; preds = %142, %140
  %152 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %153 = load ptr, ptr %152, align 8
  %154 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %155 = load i16, ptr %154, align 4
  %156 = zext i16 %155 to i32
  %157 = getelementptr i8, ptr %153, i32 %156
  %158 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr i8, ptr %157, i32 %159
  br label %161

161:                                              ; preds = %1046, %151
  %162 = phi i32 [ %323, %1046 ], [ %1, %151 ]
  %163 = phi i32 [ 0, %1046 ], [ %3, %151 ]
  %164 = phi ptr [ %324, %1046 ], [ null, %151 ]
  %165 = phi ptr [ %1047, %1046 ], [ %160, %151 ]
  %166 = phi i32 [ %325, %1046 ], [ %120, %151 ]
  %167 = phi i32 [ %1043, %1046 ], [ %102, %151 ]
  %168 = phi i32 [ %327, %1046 ], [ 0, %151 ]
  %169 = load i8, ptr %10, align 1
  %170 = and i8 %169, 1
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %161
  %173 = load i32, ptr null, align 2147483648
  %174 = icmp eq i32 %173, 6
  br i1 %174, label %1165, label %186

175:                                              ; preds = %161
  %176 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %177 = load ptr, ptr %176, align 8
  %178 = getelementptr inbounds %struct.skb_ext, ptr %177, i32 0, i32 1
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i32
  %181 = shl nuw nsw i32 %180, 3
  %182 = getelementptr i8, ptr %177, i32 %181
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 6
  br i1 %184, label %185, label %186

185:                                              ; preds = %175
  tail call void @__skb_ext_del(ptr noundef %0, i32 noundef 0) #11
  br label %1165

186:                                              ; preds = %175, %172
  %187 = phi ptr [ %182, %175 ], [ null, %172 ]
  %188 = load i32, ptr %5, align 4
  %189 = trunc i32 %162 to i8
  %190 = trunc i32 %167 to i16
  %191 = tail call ptr @xfrm_state_lookup(ptr noundef nonnull @init_net, i32 noundef %166, ptr noundef %165, i32 noundef %188, i8 noundef zeroext %189, i16 noundef zeroext %190) #11
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %198

193:                                              ; preds = %186
  %194 = load i8, ptr %10, align 1
  %195 = and i8 %194, 1
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %1181, label %197

197:                                              ; preds = %193
  tail call void @__skb_ext_del(ptr noundef %0, i32 noundef 0) #11
  br label %1181

198:                                              ; preds = %186
  %199 = load i32, ptr %8, align 4
  %200 = getelementptr inbounds %struct.xfrm_state, ptr %191, i32 0, i32 14, i32 12
  %201 = load i32, ptr %200, align 4
  %202 = getelementptr inbounds %struct.xfrm_state, ptr %191, i32 0, i32 14, i32 12, i32 1
  %203 = load i32, ptr %202, align 4
  %204 = and i32 %203, %201
  %205 = xor i32 %203, -1
  %206 = and i32 %199, %205
  %207 = or i32 %204, %206
  store i32 %207, ptr %8, align 4
  %208 = load i32, ptr %187, align 4
  %209 = add i32 %208, 1
  store i32 %209, ptr %187, align 4
  %210 = getelementptr %struct.sec_path, ptr %187, i32 0, i32 2, i32 %208
  store ptr %191, ptr %210, align 4
  %211 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %212 = load i32, ptr %211, align 8
  %213 = and i32 %212, 1
  %214 = icmp ne i32 %213, 0
  %215 = icmp ugt i32 %212, 1
  %216 = and i1 %215, %214
  br i1 %216, label %217, label %240

217:                                              ; preds = %198
  %218 = and i32 %212, -2
  %219 = inttoptr i32 %218 to ptr
  %220 = getelementptr inbounds %struct.dst_entry, ptr %219, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %220) #11, !srcloc !18
  %221 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %220, ptr %220, i32 0, i32 1, ptr elementtype(i32) %220) #11, !srcloc !19
  %222 = extractvalue { i32, i32, i32 } %221, 0
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %217
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  br label %225

225:                                              ; preds = %224, %217
  %226 = phi ptr [ null, %217 ], [ %219, %224 ]
  %227 = ptrtoint ptr %226 to i32
  store i32 %227, ptr %211, align 8
  %228 = icmp ne ptr %226, null
  %229 = zext i1 %228 to i8
  %230 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %231 = load i16, ptr %230, align 2
  %232 = lshr i16 %231, 14
  %233 = trunc i16 %232 to i8
  %234 = and i8 %233, 1
  %235 = or i8 %234, %229
  %236 = zext i8 %235 to i16
  %237 = shl nuw nsw i16 %236, 14
  %238 = and i16 %231, -16385
  %239 = or i16 %237, %238
  store i16 %239, ptr %230, align 2
  br label %240

240:                                              ; preds = %225, %198
  %241 = phi i32 [ %212, %198 ], [ %227, %225 ]
  %242 = icmp ult i32 %241, 2
  br i1 %242, label %1170, label %243

243:                                              ; preds = %240, %96, %77, %73
  %244 = phi i32 [ %162, %240 ], [ %1, %96 ], [ %1, %77 ], [ %1, %73 ]
  %245 = phi i32 [ %163, %240 ], [ 0, %96 ], [ 0, %77 ], [ 0, %73 ]
  %246 = phi ptr [ %191, %240 ], [ %44, %96 ], [ %44, %77 ], [ %44, %73 ]
  %247 = phi i32 [ %166, %240 ], [ %9, %96 ], [ %9, %77 ], [ %9, %73 ]
  %248 = phi i32 [ %167, %240 ], [ %84, %96 ], [ %68, %77 ], [ %68, %73 ]
  %249 = phi i32 [ %168, %240 ], [ 0, %96 ], [ 0, %77 ], [ 0, %73 ]
  %250 = phi i1 [ false, %240 ], [ true, %96 ], [ false, %77 ], [ false, %73 ]
  %251 = getelementptr inbounds %struct.xfrm_state, ptr %246, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %251) #11
  %252 = getelementptr inbounds %struct.xfrm_state, ptr %246, i32 0, i32 13, i32 1
  %253 = load i8, ptr %252, align 4
  %254 = icmp eq i8 %253, 2
  br i1 %254, label %255, label %1158, !prof !13

255:                                              ; preds = %243
  %256 = getelementptr inbounds %struct.xfrm_state, ptr %246, i32 0, i32 24
  %257 = load ptr, ptr %256, align 8
  %258 = icmp eq ptr %257, null
  br i1 %258, label %262, label %259

259:                                              ; preds = %255
  %260 = load i16, ptr %257, align 4
  %261 = zext i16 %260 to i32
  br label %262

262:                                              ; preds = %259, %255
  %263 = phi i32 [ %261, %259 ], [ 0, %255 ]
  %264 = icmp eq i32 %263, %245
  br i1 %264, label %265, label %1158

265:                                              ; preds = %262
  %266 = load i32, ptr %6, align 4
  %267 = tail call i32 @xfrm_replay_check(ptr noundef %246, ptr noundef %0, i32 noundef %266) #11
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %1158

269:                                              ; preds = %265
  %270 = tail call i32 @xfrm_state_check_expire(ptr noundef %246) #11
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %1158

272:                                              ; preds = %269
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !21
  %273 = load i16, ptr %251, align 4
  %274 = add i16 %273, 1
  store i16 %274, ptr %251, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  switch i32 %248, label %288 [
    i32 2, label %275
    i32 10, label %279
  ]

275:                                              ; preds = %272
  %276 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  %277 = load ptr, ptr %276, align 8
  %278 = icmp eq ptr %277, null
  br i1 %278, label %288, label %283

279:                                              ; preds = %272
  %280 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  %281 = load ptr, ptr %280, align 8
  %282 = icmp eq ptr %281, null
  br i1 %282, label %288, label %283

283:                                              ; preds = %279, %275
  %284 = getelementptr inbounds %struct.xfrm_state, ptr %246, i32 0, i32 48, i32 2
  %285 = load i8, ptr %284, align 2
  %286 = and i8 %285, 1
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %1165, label %288

288:                                              ; preds = %283, %279, %275, %272
  %289 = tail call i32 @xfrm_replay_seqhi(ptr noundef %246, i32 noundef %266) #11
  %290 = tail call i32 @llvm.bswap.i32(i32 %289)
  %291 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  store i32 %266, ptr %291, align 4
  %292 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  store i32 %290, ptr %292, align 4
  %293 = load ptr, ptr %7, align 8
  %294 = icmp eq ptr %293, null
  br i1 %294, label %307, label %295

295:                                              ; preds = %288
  %296 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !14
  %297 = getelementptr inbounds %struct.net_device, ptr %293, i32 0, i32 99
  %298 = load ptr, ptr %297, align 8
  %299 = ptrtoint ptr %298 to i32
  %300 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %301 = inttoptr i32 %300 to ptr
  %302 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %301) #10, !srcloc !15
  %303 = add i32 %302, %299
  %304 = inttoptr i32 %303 to ptr
  %305 = load i32, ptr %304, align 4
  %306 = add i32 %305, 1
  store i32 %306, ptr %304, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %296) #11, !srcloc !16
  br label %307

307:                                              ; preds = %295, %288
  br i1 %250, label %308, label %312

308:                                              ; preds = %307
  %309 = getelementptr inbounds %struct.xfrm_state, ptr %246, i32 0, i32 49
  %310 = load ptr, ptr %309, align 8
  %311 = getelementptr inbounds %struct.xfrm_type_offload, ptr %310, i32 0, i32 3
  br label %316

312:                                              ; preds = %307
  %313 = getelementptr inbounds %struct.xfrm_state, ptr %246, i32 0, i32 45
  %314 = load ptr, ptr %313, align 8
  %315 = getelementptr inbounds %struct.xfrm_type, ptr %314, i32 0, i32 5
  br label %316

316:                                              ; preds = %312, %308
  %317 = phi ptr [ %315, %312 ], [ %311, %308 ]
  %318 = load ptr, ptr %317, align 4
  %319 = tail call i32 %318(ptr noundef %246, ptr noundef %0) #11
  %320 = icmp eq i32 %319, -115
  br i1 %320, label %1207, label %321

321:                                              ; preds = %316, %70
  %322 = phi i32 [ %72, %70 ], [ %266, %316 ]
  %323 = phi i32 [ %1, %70 ], [ %319, %316 ]
  %324 = phi ptr [ %44, %70 ], [ %246, %316 ]
  %325 = phi i32 [ %9, %70 ], [ %247, %316 ]
  %326 = phi i32 [ %68, %70 ], [ %248, %316 ]
  %327 = phi i32 [ 1, %70 ], [ %249, %316 ]
  %328 = load ptr, ptr %7, align 8
  %329 = icmp eq ptr %328, null
  br i1 %329, label %342, label %330

330:                                              ; preds = %321
  %331 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !14
  %332 = getelementptr inbounds %struct.net_device, ptr %328, i32 0, i32 99
  %333 = load ptr, ptr %332, align 8
  %334 = ptrtoint ptr %333 to i32
  %335 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %336 = inttoptr i32 %335 to ptr
  %337 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %336) #10, !srcloc !15
  %338 = add i32 %337, %334
  %339 = inttoptr i32 %338 to ptr
  %340 = load i32, ptr %339, align 4
  %341 = add i32 %340, -1
  store i32 %341, ptr %339, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %331) #11, !srcloc !16
  br label %342

342:                                              ; preds = %330, %321
  %343 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %343) #11
  %344 = icmp slt i32 %323, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %342
  %346 = icmp eq i32 %323, -74
  br i1 %346, label %347, label %1158

347:                                              ; preds = %345
  %348 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 38, i32 2
  %349 = load i32, ptr %348, align 8
  %350 = add i32 %349, 1
  store i32 %350, ptr %348, align 8
  br label %1158

351:                                              ; preds = %342
  %352 = tail call i32 @xfrm_replay_recheck(ptr noundef %324, ptr noundef %0, i32 noundef %322) #11
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %1158

354:                                              ; preds = %351
  tail call void @xfrm_replay_advance(ptr noundef %324, i32 noundef %322) #11
  %355 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %356 = load i32, ptr %355, align 8
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 39
  %359 = load i64, ptr %358, align 8
  %360 = add i64 %359, %357
  store i64 %360, ptr %358, align 8
  %361 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 39, i32 1
  %362 = load i64, ptr %361, align 8
  %363 = add i64 %362, 1
  store i64 %363, ptr %361, align 8
  %364 = tail call i64 @ktime_get_real_seconds() #11
  %365 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 39, i32 3
  store i64 %364, ptr %365, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !21
  %366 = load i16, ptr %343, align 4
  %367 = add i16 %366, 1
  store i16 %367, ptr %343, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  %368 = trunc i32 %323 to i8
  %369 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 35
  store i8 %368, ptr %369, align 1
  %370 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 46
  %371 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 8, i32 6
  %372 = load i16, ptr %371, align 8
  %373 = icmp eq i16 %372, 0
  br i1 %373, label %374, label %388

374:                                              ; preds = %354
  switch i8 %368, label %383 [
    i8 4, label %375
    i8 41, label %379
  ]

375:                                              ; preds = %374
  %376 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 14, i32 7
  %377 = load i16, ptr %376, align 2
  %378 = icmp eq i16 %377, 2
  br i1 %378, label %385, label %383

379:                                              ; preds = %374
  %380 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 14, i32 7
  %381 = load i16, ptr %380, align 2
  %382 = icmp eq i16 %381, 10
  br i1 %382, label %385, label %383

383:                                              ; preds = %379, %375, %374
  %384 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 47
  br label %385

385:                                              ; preds = %383, %379, %375
  %386 = phi ptr [ %384, %383 ], [ %370, %379 ], [ %370, %375 ]
  %387 = icmp eq ptr %386, null
  br i1 %387, label %1165, label %388

388:                                              ; preds = %385, %354
  %389 = phi ptr [ %386, %385 ], [ %370, %354 ]
  %390 = load i8, ptr %389, align 1
  switch i8 %390, label %1032 [
    i8 4, label %391
    i8 1, label %391
    i8 0, label %953
    i8 2, label %1029
  ]

391:                                              ; preds = %388, %388
  %392 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 48, i32 1
  %393 = load i8, ptr %392, align 1
  switch i8 %393, label %441 [
    i8 2, label %394
    i8 10, label %420
  ]

394:                                              ; preds = %391
  %395 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %396 = load ptr, ptr %395, align 8
  %397 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %398 = load i16, ptr %397, align 4
  %399 = zext i16 %398 to i32
  %400 = getelementptr i8, ptr %396, i32 %399
  %401 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  store i8 20, ptr %401, align 8
  %402 = getelementptr inbounds %struct.iphdr, ptr %400, i32 0, i32 3
  %403 = load i16, ptr %402, align 4
  %404 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  store i16 %403, ptr %404, align 4
  %405 = getelementptr inbounds %struct.iphdr, ptr %400, i32 0, i32 4
  %406 = load i16, ptr %405, align 2
  %407 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 30
  store i16 %406, ptr %407, align 2
  %408 = getelementptr inbounds %struct.iphdr, ptr %400, i32 0, i32 1
  %409 = load i8, ptr %408, align 1
  %410 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 33
  store i8 %409, ptr %410, align 1
  %411 = getelementptr inbounds %struct.iphdr, ptr %400, i32 0, i32 5
  %412 = load i8, ptr %411, align 4
  %413 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 34
  store i8 %412, ptr %413, align 2
  %414 = load i8, ptr %400, align 4
  %415 = shl i8 %414, 2
  %416 = and i8 %415, 60
  %417 = add nsw i8 %416, -20
  %418 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 36
  store i8 %417, ptr %418, align 4
  %419 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 37
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(3) %419, i8 0, i32 3, i1 false) #11
  br label %444

420:                                              ; preds = %391
  %421 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %422 = load ptr, ptr %421, align 8
  %423 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %424 = load i16, ptr %423, align 4
  %425 = zext i16 %424 to i32
  %426 = getelementptr i8, ptr %422, i32 %425
  %427 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  store i8 40, ptr %427, align 8
  %428 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  store i16 0, ptr %428, align 4
  %429 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 30
  store i16 64, ptr %429, align 2
  %430 = load i16, ptr %426, align 2
  %431 = tail call i16 @llvm.bswap.i16(i16 %430) #11
  %432 = lshr i16 %431, 4
  %433 = trunc i16 %432 to i8
  %434 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 33
  store i8 %433, ptr %434, align 1
  %435 = getelementptr inbounds %struct.ipv6hdr, ptr %426, i32 0, i32 4
  %436 = load i8, ptr %435, align 1
  %437 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 34
  store i8 %436, ptr %437, align 2
  %438 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 36
  store i8 0, ptr %438, align 4
  %439 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 37
  %440 = getelementptr inbounds %struct.ipv6hdr, ptr %426, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %439, ptr noundef align 1 dereferenceable(3) %440, i32 3, i1 false) #11
  br label %444

441:                                              ; preds = %391
  %442 = load i1, ptr @xfrm_prepare_input.__already_done, align 1
  br i1 %442, label %1165, label %443, !prof !11

443:                                              ; preds = %441
  store i1 true, ptr @xfrm_prepare_input.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 367, i32 noundef 9, ptr noundef null) #11
  br label %1165

444:                                              ; preds = %420, %394
  %445 = load i16, ptr %371, align 8
  %446 = icmp eq i16 %445, 0
  br i1 %446, label %447, label %461

447:                                              ; preds = %444
  switch i8 %368, label %456 [
    i8 4, label %448
    i8 41, label %452
  ]

448:                                              ; preds = %447
  %449 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 14, i32 7
  %450 = load i16, ptr %449, align 2
  %451 = icmp eq i16 %450, 2
  br i1 %451, label %458, label %456

452:                                              ; preds = %447
  %453 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 14, i32 7
  %454 = load i16, ptr %453, align 2
  %455 = icmp eq i16 %454, 10
  br i1 %455, label %458, label %456

456:                                              ; preds = %452, %448, %447
  %457 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 47
  br label %458

458:                                              ; preds = %456, %452, %448
  %459 = phi ptr [ %457, %456 ], [ %370, %452 ], [ %370, %448 ]
  %460 = icmp eq ptr %459, null
  br i1 %460, label %1165, label %461

461:                                              ; preds = %458, %444
  %462 = phi ptr [ %459, %458 ], [ %370, %444 ]
  %463 = getelementptr inbounds %struct.xfrm_mode, ptr %462, i32 0, i32 1
  %464 = load i8, ptr %463, align 1
  switch i8 %464, label %469 [
    i8 2, label %465
    i8 10, label %467
  ]

465:                                              ; preds = %461
  %466 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  store i16 8, ptr %466, align 8
  br label %472

467:                                              ; preds = %461
  %468 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  store i16 -8826, ptr %468, align 8
  br label %472

469:                                              ; preds = %461
  %470 = load i1, ptr @xfrm_prepare_input.__already_done.4, align 1
  br i1 %470, label %472, label %471, !prof !11

471:                                              ; preds = %469
  store i1 true, ptr @xfrm_prepare_input.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 385, i32 noundef 9, ptr noundef null) #11
  br label %472

472:                                              ; preds = %471, %469, %467, %465
  %473 = load i8, ptr %462, align 1
  switch i8 %473, label %950 [
    i8 4, label %474
    i8 1, label %691
  ]

474:                                              ; preds = %472
  %475 = load i8, ptr %463, align 1
  switch i8 %475, label %950 [
    i8 2, label %476
    i8 10, label %591
  ]

476:                                              ; preds = %474
  %477 = load i8, ptr %369, align 1
  %478 = icmp eq i8 %477, 94
  br i1 %478, label %479, label %515, !prof !9

479:                                              ; preds = %476
  %480 = tail call fastcc zeroext i1 @pskb_may_pull(ptr noundef %0, i32 noundef 4) #11
  br i1 %480, label %481, label %1165

481:                                              ; preds = %479
  %482 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %483 = load ptr, ptr %482, align 4
  %484 = getelementptr inbounds %struct.ip_beet_phdr, ptr %483, i32 0, i32 2
  %485 = load i8, ptr %484, align 1
  %486 = zext i8 %485 to i32
  %487 = add nuw nsw i32 %486, 4
  %488 = getelementptr inbounds %struct.ip_beet_phdr, ptr %483, i32 0, i32 1
  %489 = load i8, ptr %488, align 1
  %490 = zext i8 %489 to i32
  %491 = shl nuw nsw i32 %490, 3
  %492 = sub nsw i32 4, %486
  %493 = add nsw i32 %491, %492
  %494 = icmp slt i32 %493, 0
  br i1 %494, label %1165, label %495

495:                                              ; preds = %481
  %496 = and i32 %493, 3
  %497 = icmp ne i32 %496, 0
  %498 = icmp ugt i32 %493, 250
  %499 = or i1 %498, %497
  br i1 %499, label %1165, label %500

500:                                              ; preds = %495
  %501 = load i8, ptr %483, align 1
  store i8 %501, ptr %369, align 1
  %502 = tail call fastcc zeroext i1 @pskb_may_pull(ptr noundef %0, i32 noundef %487) #11
  br i1 %502, label %503, label %1165

503:                                              ; preds = %500
  %504 = load i32, ptr %355, align 8
  %505 = sub i32 %504, %487
  store i32 %505, ptr %355, align 8
  %506 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %507 = load i32, ptr %506, align 4
  %508 = icmp ult i32 %505, %507
  br i1 %508, label %509, label %510, !prof !9

509:                                              ; preds = %503
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #11, !srcloc !25
  unreachable

510:                                              ; preds = %503
  %511 = load ptr, ptr %482, align 4
  %512 = getelementptr i8, ptr %511, i32 %487
  store ptr %512, ptr %482, align 4
  %513 = trunc i32 %493 to i8
  %514 = lshr i8 %513, 2
  br label %515

515:                                              ; preds = %510, %476
  %516 = phi i8 [ %514, %510 ], [ 0, %476 ]
  %517 = tail call ptr @skb_push(ptr noundef %0, i32 noundef 20) #11
  %518 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %519 = load ptr, ptr %518, align 4
  %520 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %521 = load ptr, ptr %520, align 8
  %522 = ptrtoint ptr %519 to i32
  %523 = ptrtoint ptr %521 to i32
  %524 = sub i32 %522, %523
  %525 = trunc i32 %524 to i16
  %526 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  store i16 %525, ptr %526, align 4
  %527 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %528 = load i16, ptr %527, align 2
  %529 = icmp eq i16 %528, -1
  br i1 %529, label %541, label %530

530:                                              ; preds = %515
  %531 = zext i16 %528 to i32
  %532 = getelementptr i8, ptr %521, i32 %531
  %533 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %534 = load i16, ptr %533, align 8
  %535 = zext i16 %534 to i32
  %536 = sub i16 %525, %534
  store i16 %536, ptr %527, align 2
  %537 = zext i16 %536 to i32
  %538 = getelementptr i8, ptr %521, i32 %537
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %538, ptr align 1 %532, i32 %535, i1 false) #11
  %539 = load ptr, ptr %520, align 8
  %540 = load i16, ptr %526, align 4
  br label %541

541:                                              ; preds = %530, %515
  %542 = phi i16 [ %525, %515 ], [ %540, %530 ]
  %543 = phi ptr [ %521, %515 ], [ %539, %530 ]
  %544 = zext i16 %542 to i32
  %545 = getelementptr i8, ptr %543, i32 %544
  store i8 69, ptr %545, align 4
  %546 = load i8, ptr %369, align 1
  %547 = getelementptr inbounds %struct.iphdr, ptr %545, i32 0, i32 6
  store i8 %546, ptr %547, align 1
  %548 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 33
  %549 = load i8, ptr %548, align 1
  %550 = getelementptr inbounds %struct.iphdr, ptr %545, i32 0, i32 1
  store i8 %549, ptr %550, align 1
  %551 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  %552 = load i16, ptr %551, align 4
  %553 = getelementptr inbounds %struct.iphdr, ptr %545, i32 0, i32 3
  store i16 %552, ptr %553, align 4
  %554 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 30
  %555 = load i16, ptr %554, align 2
  %556 = getelementptr inbounds %struct.iphdr, ptr %545, i32 0, i32 4
  store i16 %555, ptr %556, align 2
  %557 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 34
  %558 = load i8, ptr %557, align 2
  %559 = getelementptr inbounds %struct.iphdr, ptr %545, i32 0, i32 5
  store i8 %558, ptr %559, align 4
  %560 = load ptr, ptr %520, align 8
  %561 = load i16, ptr %526, align 4
  %562 = zext i16 %561 to i32
  %563 = getelementptr i8, ptr %560, i32 %562
  %564 = load i8, ptr %563, align 4
  %565 = add i8 %564, %516
  %566 = and i8 %565, 15
  %567 = and i8 %564, -16
  %568 = or i8 %566, %567
  store i8 %568, ptr %563, align 4
  %569 = load i32, ptr %355, align 8
  %570 = trunc i32 %569 to i16
  %571 = tail call i16 @llvm.bswap.i16(i16 %570) #11
  %572 = getelementptr inbounds %struct.iphdr, ptr %563, i32 0, i32 2
  store i16 %571, ptr %572, align 2
  %573 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 8
  %574 = load i32, ptr %573, align 8
  %575 = getelementptr inbounds %struct.iphdr, ptr %563, i32 0, i32 9
  store i32 %574, ptr %575, align 4
  %576 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 8, i32 1
  %577 = load i32, ptr %576, align 8
  %578 = getelementptr inbounds %struct.iphdr, ptr %563, i32 0, i32 8
  store i32 %577, ptr %578, align 4
  %579 = getelementptr inbounds %struct.iphdr, ptr %563, i32 0, i32 7
  store i16 0, ptr %579, align 2
  %580 = load ptr, ptr %520, align 8
  %581 = load i16, ptr %526, align 4
  %582 = zext i16 %581 to i32
  %583 = getelementptr i8, ptr %580, i32 %582
  %584 = zext i8 %566 to i32
  %585 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %583, i32 %584) #11, !srcloc !26
  %586 = extractvalue { i32, ptr, i32, i32 } %585, 0
  %587 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %586) #12, !srcloc !27
  %588 = xor i32 %587, -1
  %589 = lshr i32 %588, 16
  %590 = trunc i32 %589 to i16
  store i16 %590, ptr %579, align 2
  br label %1035

591:                                              ; preds = %474
  %592 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %593 = load i16, ptr %592, align 8
  %594 = zext i16 %593 to i32
  %595 = add nuw nsw i32 %594, 40
  %596 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %597 = load i8, ptr %596, align 2
  %598 = and i8 %597, 1
  %599 = icmp eq i8 %598, 0
  br i1 %599, label %610, label %600

600:                                              ; preds = %591
  %601 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %602 = load ptr, ptr %601, align 4
  %603 = getelementptr inbounds %struct.skb_shared_info, ptr %602, i32 0, i32 10
  %604 = load volatile i32, ptr %603, align 4
  %605 = and i32 %604, 65535
  %606 = ashr i32 %604, 16
  %607 = sub nsw i32 %605, %606
  %608 = icmp ne i32 %607, 1
  %609 = zext i1 %608 to i32
  br label %610

610:                                              ; preds = %600, %591
  %611 = phi i32 [ %609, %600 ], [ 0, %591 ]
  %612 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %613 = load ptr, ptr %612, align 4
  %614 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %615 = load ptr, ptr %614, align 8
  %616 = ptrtoint ptr %613 to i32
  %617 = ptrtoint ptr %615 to i32
  %618 = sub i32 %616, %617
  %619 = tail call i32 @llvm.usub.sat.i32(i32 %595, i32 %618) #11
  %620 = or i32 %619, %611
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %631, label %622

622:                                              ; preds = %610
  %623 = add nuw nsw i32 %619, 63
  %624 = and i32 %623, 262080
  %625 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef %624, i32 noundef 0, i32 noundef 2592) #11
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %627, label %1165

627:                                              ; preds = %622
  %628 = load ptr, ptr %612, align 4
  %629 = load ptr, ptr %614, align 8
  %630 = ptrtoint ptr %629 to i32
  br label %631

631:                                              ; preds = %627, %610
  %632 = phi i32 [ %630, %627 ], [ %617, %610 ]
  %633 = phi ptr [ %629, %627 ], [ %615, %610 ]
  %634 = phi ptr [ %628, %627 ], [ %613, %610 ]
  %635 = getelementptr i8, ptr %634, i32 -40
  store ptr %635, ptr %612, align 4
  %636 = load i32, ptr %355, align 8
  %637 = add i32 %636, 40
  store i32 %637, ptr %355, align 8
  %638 = ptrtoint ptr %635 to i32
  %639 = sub i32 %638, %632
  %640 = trunc i32 %639 to i16
  %641 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  store i16 %640, ptr %641, align 4
  %642 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %643 = load i16, ptr %642, align 2
  %644 = icmp eq i16 %643, -1
  br i1 %644, label %655, label %645

645:                                              ; preds = %631
  %646 = zext i16 %643 to i32
  %647 = getelementptr i8, ptr %633, i32 %646
  %648 = load i16, ptr %592, align 8
  %649 = zext i16 %648 to i32
  %650 = sub i16 %640, %648
  store i16 %650, ptr %642, align 2
  %651 = zext i16 %650 to i32
  %652 = getelementptr i8, ptr %633, i32 %651
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %652, ptr align 1 %647, i32 %649, i1 false) #11
  %653 = load ptr, ptr %614, align 8
  %654 = load i16, ptr %641, align 4
  br label %655

655:                                              ; preds = %645, %631
  %656 = phi i16 [ %640, %631 ], [ %654, %645 ]
  %657 = phi ptr [ %633, %631 ], [ %653, %645 ]
  %658 = zext i16 %656 to i32
  %659 = getelementptr i8, ptr %657, i32 %658
  %660 = load i8, ptr %659, align 4
  %661 = and i8 %660, 15
  %662 = or i8 %661, 96
  store i8 %662, ptr %659, align 4
  %663 = getelementptr inbounds %struct.ipv6hdr, ptr %659, i32 0, i32 1
  %664 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 37
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %663, ptr noundef align 1 dereferenceable(3) %664, i32 3, i1 false) #11
  %665 = load i8, ptr %369, align 1
  %666 = getelementptr inbounds %struct.ipv6hdr, ptr %659, i32 0, i32 3
  store i8 %665, ptr %666, align 2
  %667 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 33
  %668 = load i8, ptr %667, align 1
  %669 = load i16, ptr %659, align 2
  %670 = and i16 %669, 4080
  %671 = zext i8 %668 to i16
  %672 = shl nuw nsw i16 %671, 4
  %673 = tail call i16 @llvm.bswap.i16(i16 %672) #11
  %674 = or i16 %673, %670
  store i16 %674, ptr %659, align 2
  %675 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 34
  %676 = load i8, ptr %675, align 2
  %677 = getelementptr inbounds %struct.ipv6hdr, ptr %659, i32 0, i32 4
  store i8 %676, ptr %677, align 1
  %678 = load ptr, ptr %614, align 8
  %679 = load i16, ptr %641, align 4
  %680 = zext i16 %679 to i32
  %681 = getelementptr i8, ptr %678, i32 %680
  %682 = load i32, ptr %355, align 8
  %683 = trunc i32 %682 to i16
  %684 = add i16 %683, -40
  %685 = tail call i16 @llvm.bswap.i16(i16 %684) #11
  %686 = getelementptr inbounds %struct.ipv6hdr, ptr %681, i32 0, i32 2
  store i16 %685, ptr %686, align 4
  %687 = getelementptr inbounds %struct.ipv6hdr, ptr %681, i32 0, i32 6
  %688 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %687, ptr noundef align 8 dereferenceable(16) %688, i32 16, i1 false) #11
  %689 = getelementptr inbounds %struct.ipv6hdr, ptr %681, i32 0, i32 5
  %690 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 8, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %689, ptr noundef align 8 dereferenceable(16) %690, i32 16, i1 false) #11
  br label %1035

691:                                              ; preds = %472
  %692 = load i8, ptr %463, align 1
  switch i8 %692, label %950 [
    i8 2, label %693
    i8 10, label %826
  ]

693:                                              ; preds = %691
  %694 = load i8, ptr %369, align 1
  %695 = icmp eq i8 %694, 4
  br i1 %695, label %696, label %1165

696:                                              ; preds = %693
  %697 = load i32, ptr %355, align 8
  %698 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %699 = load i32, ptr %698, align 4
  %700 = sub i32 %697, %699
  %701 = icmp ult i32 %700, 20
  br i1 %701, label %702, label %708, !prof !9

702:                                              ; preds = %696
  %703 = icmp ult i32 %697, 20
  br i1 %703, label %1165, label %704, !prof !9

704:                                              ; preds = %702
  %705 = sub nuw nsw i32 20, %700
  %706 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %705) #11
  %707 = icmp eq ptr %706, null
  br i1 %707, label %1165, label %708

708:                                              ; preds = %704, %696
  %709 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %710 = load i8, ptr %709, align 2
  %711 = and i8 %710, 1
  %712 = icmp eq i8 %711, 0
  br i1 %712, label %723, label %713

713:                                              ; preds = %708
  %714 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %715 = load ptr, ptr %714, align 4
  %716 = getelementptr inbounds %struct.skb_shared_info, ptr %715, i32 0, i32 10
  %717 = load volatile i32, ptr %716, align 4
  %718 = and i32 %717, 65535
  %719 = icmp eq i32 %718, 1
  br i1 %719, label %723, label %720

720:                                              ; preds = %713
  %721 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #11
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %1165

723:                                              ; preds = %720, %713, %708
  %724 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 14, i32 6
  %725 = load i8, ptr %724, align 1
  %726 = and i8 %725, 2
  %727 = icmp eq i8 %726, 0
  br i1 %727, label %759, label %728

728:                                              ; preds = %723
  %729 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 33
  %730 = load i8, ptr %729, align 1
  %731 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %732 = load ptr, ptr %731, align 8
  %733 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %734 = load i16, ptr %733, align 2
  %735 = zext i16 %734 to i32
  %736 = getelementptr i8, ptr %732, i32 %735
  %737 = and i8 %730, -4
  %738 = getelementptr inbounds %struct.iphdr, ptr %736, i32 0, i32 7
  %739 = load i16, ptr %738, align 2
  %740 = tail call i16 @llvm.bswap.i16(i16 %739) #11
  %741 = zext i16 %740 to i32
  %742 = getelementptr inbounds %struct.iphdr, ptr %736, i32 0, i32 1
  %743 = load i8, ptr %742, align 1
  %744 = zext i8 %743 to i32
  %745 = add nuw nsw i32 %741, %744
  %746 = icmp ult i32 %745, 65535
  %747 = add nuw nsw i32 %745, 1
  %748 = and i32 %747, 65535
  %749 = select i1 %746, i32 %745, i32 %748
  %750 = and i8 %743, 3
  %751 = or i8 %750, %737
  %752 = zext i8 %751 to i32
  %753 = sub nsw i32 %749, %752
  %754 = lshr i32 %753, 16
  %755 = add nsw i32 %754, %753
  %756 = trunc i32 %755 to i16
  %757 = tail call i16 @llvm.bswap.i16(i16 %756) #11
  store i16 %757, ptr %738, align 2
  store i8 %751, ptr %742, align 1
  %758 = load i8, ptr %724, align 1
  br label %759

759:                                              ; preds = %728, %723
  %760 = phi i8 [ %758, %728 ], [ %725, %723 ]
  %761 = and i8 %760, 1
  %762 = icmp eq i8 %761, 0
  br i1 %762, label %763, label %792

763:                                              ; preds = %759
  %764 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %765 = load ptr, ptr %764, align 8
  %766 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %767 = load i16, ptr %766, align 2
  %768 = zext i16 %767 to i32
  %769 = getelementptr i8, ptr %765, i32 %768
  %770 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 33
  %771 = load i8, ptr %770, align 1
  %772 = and i8 %771, 3
  %773 = icmp eq i8 %772, 3
  br i1 %773, label %774, label %792

774:                                              ; preds = %763
  %775 = getelementptr inbounds %struct.iphdr, ptr %769, i32 0, i32 1
  %776 = load i8, ptr %775, align 1
  %777 = add i8 %776, 1
  %778 = and i8 %777, 2
  %779 = icmp eq i8 %778, 0
  br i1 %779, label %792, label %780

780:                                              ; preds = %774
  %781 = and i8 %777, 3
  %782 = zext i8 %781 to i16
  %783 = shl nuw nsw i16 %782, 8
  %784 = add nuw nsw i16 %783, -1025
  %785 = getelementptr inbounds %struct.iphdr, ptr %769, i32 0, i32 7
  %786 = load i16, ptr %785, align 2
  %787 = add i16 %786, %784
  %788 = icmp ult i16 %787, %784
  %789 = zext i1 %788 to i16
  %790 = add i16 %787, %789
  store i16 %790, ptr %785, align 2
  %791 = or i8 %776, 3
  store i8 %791, ptr %775, align 1
  br label %792

792:                                              ; preds = %780, %774, %763, %759
  %793 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %794 = load ptr, ptr %793, align 4
  %795 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %796 = load ptr, ptr %795, align 8
  %797 = ptrtoint ptr %794 to i32
  %798 = ptrtoint ptr %796 to i32
  %799 = sub i32 %797, %798
  %800 = trunc i32 %799 to i16
  %801 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  store i16 %800, ptr %801, align 4
  %802 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %803 = load i16, ptr %802, align 2
  %804 = icmp eq i16 %803, -1
  br i1 %804, label %814, label %805

805:                                              ; preds = %792
  %806 = zext i16 %803 to i32
  %807 = getelementptr i8, ptr %796, i32 %806
  %808 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %809 = load i16, ptr %808, align 8
  %810 = zext i16 %809 to i32
  %811 = sub i16 %800, %809
  store i16 %811, ptr %802, align 2
  %812 = zext i16 %811 to i32
  %813 = getelementptr i8, ptr %796, i32 %812
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %813, ptr align 1 %807, i32 %810, i1 false) #11
  br label %814

814:                                              ; preds = %805, %792
  %815 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %816 = load i16, ptr %815, align 8
  %817 = icmp eq i16 %816, 0
  br i1 %817, label %1035, label %818

818:                                              ; preds = %814
  %819 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %820 = load i16, ptr %819, align 8
  %821 = load ptr, ptr %795, align 8
  %822 = load i16, ptr %802, align 2
  %823 = zext i16 %822 to i32
  %824 = getelementptr i8, ptr %821, i32 %823
  %825 = getelementptr inbounds %struct.ethhdr, ptr %824, i32 0, i32 2
  store i16 %820, ptr %825, align 1
  br label %1035

826:                                              ; preds = %691
  %827 = load i8, ptr %369, align 1
  %828 = icmp eq i8 %827, 41
  br i1 %828, label %829, label %1165

829:                                              ; preds = %826
  %830 = load i32, ptr %355, align 8
  %831 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %832 = load i32, ptr %831, align 4
  %833 = sub i32 %830, %832
  %834 = icmp ult i32 %833, 40
  br i1 %834, label %835, label %841, !prof !9

835:                                              ; preds = %829
  %836 = icmp ult i32 %830, 40
  br i1 %836, label %1165, label %837, !prof !9

837:                                              ; preds = %835
  %838 = sub nuw nsw i32 40, %833
  %839 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %838) #11
  %840 = icmp eq ptr %839, null
  br i1 %840, label %1165, label %841

841:                                              ; preds = %837, %829
  %842 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %843 = load i8, ptr %842, align 2
  %844 = and i8 %843, 1
  %845 = icmp eq i8 %844, 0
  br i1 %845, label %856, label %846

846:                                              ; preds = %841
  %847 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %848 = load ptr, ptr %847, align 4
  %849 = getelementptr inbounds %struct.skb_shared_info, ptr %848, i32 0, i32 10
  %850 = load volatile i32, ptr %849, align 4
  %851 = and i32 %850, 65535
  %852 = icmp eq i32 %851, 1
  br i1 %852, label %856, label %853

853:                                              ; preds = %846
  %854 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #11
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %856, label %1165

856:                                              ; preds = %853, %846, %841
  %857 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 14, i32 6
  %858 = load i8, ptr %857, align 1
  %859 = and i8 %858, 2
  %860 = icmp eq i8 %859, 0
  br i1 %860, label %878, label %861

861:                                              ; preds = %856
  %862 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %863 = load ptr, ptr %862, align 8
  %864 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %865 = load i16, ptr %864, align 4
  %866 = zext i16 %865 to i32
  %867 = getelementptr i8, ptr %863, i32 %866
  %868 = load i16, ptr %867, align 2
  %869 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %870 = load i16, ptr %869, align 2
  %871 = zext i16 %870 to i32
  %872 = getelementptr i8, ptr %863, i32 %871
  %873 = load i16, ptr %872, align 2
  %874 = and i16 %873, 16368
  %875 = and i16 %868, -16369
  %876 = or i16 %874, %875
  store i16 %876, ptr %872, align 2
  %877 = load i8, ptr %857, align 1
  br label %878

878:                                              ; preds = %861, %856
  %879 = phi i8 [ %877, %861 ], [ %858, %856 ]
  %880 = and i8 %879, 1
  %881 = icmp eq i8 %880, 0
  br i1 %881, label %882, label %916

882:                                              ; preds = %878
  %883 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %884 = load ptr, ptr %883, align 8
  %885 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %886 = load i16, ptr %885, align 2
  %887 = zext i16 %886 to i32
  %888 = getelementptr i8, ptr %884, i32 %887
  %889 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 33
  %890 = load i8, ptr %889, align 1
  %891 = and i8 %890, 3
  %892 = icmp eq i8 %891, 3
  br i1 %892, label %893, label %916

893:                                              ; preds = %882
  %894 = load i16, ptr %888, align 2
  %895 = and i16 %894, 12288
  %896 = icmp eq i16 %895, 0
  br i1 %896, label %916, label %897

897:                                              ; preds = %893
  %898 = load i32, ptr %888, align 4
  %899 = or i32 %898, 12288
  store i32 %899, ptr %888, align 4
  %900 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %901 = load i16, ptr %900, align 8
  %902 = and i16 %901, 96
  %903 = icmp eq i16 %902, 64
  br i1 %903, label %904, label %916

904:                                              ; preds = %897
  %905 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %906 = load i32, ptr %905, align 4
  %907 = xor i32 %898, -1
  %908 = add i32 %906, %907
  %909 = icmp ult i32 %908, %907
  %910 = zext i1 %909 to i32
  %911 = add i32 %908, %899
  %912 = add i32 %911, %910
  %913 = icmp ult i32 %912, %899
  %914 = zext i1 %913 to i32
  %915 = add i32 %912, %914
  store i32 %915, ptr %905, align 4
  br label %916

916:                                              ; preds = %904, %897, %893, %882, %878
  %917 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %918 = load ptr, ptr %917, align 4
  %919 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %920 = load ptr, ptr %919, align 8
  %921 = ptrtoint ptr %918 to i32
  %922 = ptrtoint ptr %920 to i32
  %923 = sub i32 %921, %922
  %924 = trunc i32 %923 to i16
  %925 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  store i16 %924, ptr %925, align 4
  %926 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %927 = load i16, ptr %926, align 2
  %928 = icmp eq i16 %927, -1
  br i1 %928, label %938, label %929

929:                                              ; preds = %916
  %930 = zext i16 %927 to i32
  %931 = getelementptr i8, ptr %920, i32 %930
  %932 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %933 = load i16, ptr %932, align 8
  %934 = zext i16 %933 to i32
  %935 = sub i16 %924, %933
  store i16 %935, ptr %926, align 2
  %936 = zext i16 %935 to i32
  %937 = getelementptr i8, ptr %920, i32 %936
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %937, ptr align 1 %931, i32 %934, i1 false) #11
  br label %938

938:                                              ; preds = %929, %916
  %939 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %940 = load i16, ptr %939, align 8
  %941 = icmp eq i16 %940, 0
  br i1 %941, label %1035, label %942

942:                                              ; preds = %938
  %943 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %944 = load i16, ptr %943, align 8
  %945 = load ptr, ptr %919, align 8
  %946 = load i16, ptr %926, align 2
  %947 = zext i16 %946 to i32
  %948 = getelementptr i8, ptr %945, i32 %947
  %949 = getelementptr inbounds %struct.ethhdr, ptr %948, i32 0, i32 2
  store i16 %944, ptr %949, align 1
  br label %1035

950:                                              ; preds = %691, %474, %472
  %951 = load i1, ptr @xfrm_inner_mode_encap_remove.__already_done, align 1
  br i1 %951, label %1165, label %952, !prof !11

952:                                              ; preds = %950
  store i1 true, ptr @xfrm_inner_mode_encap_remove.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 351, i32 noundef 9, ptr noundef null) #11
  br label %1165

953:                                              ; preds = %388
  %954 = getelementptr inbounds %struct.xfrm_mode, ptr %389, i32 0, i32 1
  %955 = load i8, ptr %954, align 1
  switch i8 %955, label %1165 [
    i8 2, label %956
    i8 10, label %992
  ]

956:                                              ; preds = %953
  %957 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %958 = load ptr, ptr %957, align 4
  %959 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %960 = load ptr, ptr %959, align 8
  %961 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %962 = load i16, ptr %961, align 2
  %963 = zext i16 %962 to i32
  %964 = getelementptr i8, ptr %960, i32 %963
  %965 = ptrtoint ptr %958 to i32
  %966 = ptrtoint ptr %964 to i32
  %967 = sub i32 %965, %966
  %968 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %969 = load i16, ptr %968, align 4
  %970 = icmp eq i16 %962, %969
  br i1 %970, label %977, label %971

971:                                              ; preds = %956
  %972 = zext i16 %969 to i32
  %973 = getelementptr i8, ptr %960, i32 %972
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %964, ptr align 1 %973, i32 %967, i1 false) #11
  %974 = load i16, ptr %961, align 2
  store i16 %974, ptr %968, align 4
  %975 = load ptr, ptr %959, align 8
  %976 = zext i16 %974 to i32
  br label %977

977:                                              ; preds = %971, %956
  %978 = phi i32 [ %976, %971 ], [ %963, %956 ]
  %979 = phi ptr [ %975, %971 ], [ %960, %956 ]
  %980 = load i32, ptr %355, align 8
  %981 = add i32 %980, %967
  %982 = trunc i32 %981 to i16
  %983 = tail call i16 @llvm.bswap.i16(i16 %982) #11
  %984 = getelementptr i8, ptr %979, i32 %978
  %985 = getelementptr inbounds %struct.iphdr, ptr %984, i32 0, i32 2
  store i16 %983, ptr %985, align 2
  %986 = load ptr, ptr %957, align 4
  %987 = load ptr, ptr %959, align 8
  %988 = ptrtoint ptr %986 to i32
  %989 = ptrtoint ptr %987 to i32
  %990 = sub i32 %988, %989
  %991 = trunc i32 %990 to i16
  store i16 %991, ptr %961, align 2
  br label %1035

992:                                              ; preds = %953
  %993 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %994 = load ptr, ptr %993, align 4
  %995 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %996 = load ptr, ptr %995, align 8
  %997 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %998 = load i16, ptr %997, align 2
  %999 = zext i16 %998 to i32
  %1000 = getelementptr i8, ptr %996, i32 %999
  %1001 = ptrtoint ptr %994 to i32
  %1002 = ptrtoint ptr %1000 to i32
  %1003 = sub i32 %1001, %1002
  %1004 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %1005 = load i16, ptr %1004, align 4
  %1006 = icmp eq i16 %998, %1005
  br i1 %1006, label %1013, label %1007

1007:                                             ; preds = %992
  %1008 = zext i16 %1005 to i32
  %1009 = getelementptr i8, ptr %996, i32 %1008
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %1000, ptr align 1 %1009, i32 %1003, i1 false) #11
  %1010 = load i16, ptr %997, align 2
  store i16 %1010, ptr %1004, align 4
  %1011 = load ptr, ptr %995, align 8
  %1012 = zext i16 %1010 to i32
  br label %1013

1013:                                             ; preds = %1007, %992
  %1014 = phi i32 [ %1012, %1007 ], [ %999, %992 ]
  %1015 = phi ptr [ %1011, %1007 ], [ %996, %992 ]
  %1016 = load i32, ptr %355, align 8
  %1017 = add i32 %1016, %1003
  %1018 = trunc i32 %1017 to i16
  %1019 = add i16 %1018, -40
  %1020 = tail call i16 @llvm.bswap.i16(i16 %1019) #11
  %1021 = getelementptr i8, ptr %1015, i32 %1014
  %1022 = getelementptr inbounds %struct.ipv6hdr, ptr %1021, i32 0, i32 2
  store i16 %1020, ptr %1022, align 4
  %1023 = load ptr, ptr %993, align 4
  %1024 = load ptr, ptr %995, align 8
  %1025 = ptrtoint ptr %1023 to i32
  %1026 = ptrtoint ptr %1024 to i32
  %1027 = sub i32 %1025, %1026
  %1028 = trunc i32 %1027 to i16
  store i16 %1028, ptr %997, align 2
  br label %1035

1029:                                             ; preds = %388
  %1030 = load i1, ptr @xfrm_inner_mode_input.__already_done, align 1
  br i1 %1030, label %1165, label %1031, !prof !11

1031:                                             ; preds = %1029
  store i1 true, ptr @xfrm_inner_mode_input.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 449, i32 noundef 9, ptr noundef null) #11
  br label %1165

1032:                                             ; preds = %388
  %1033 = load i1, ptr @xfrm_inner_mode_input.__already_done.3, align 1
  br i1 %1033, label %1165, label %1034, !prof !11

1034:                                             ; preds = %1032
  store i1 true, ptr @xfrm_inner_mode_input.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 452, i32 noundef 9, ptr noundef null) #11
  br label %1165

1035:                                             ; preds = %1013, %977, %942, %938, %818, %814, %655, %541
  %1036 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 48, i32 2
  %1037 = load i8, ptr %1036, align 2
  %1038 = and i8 %1037, 1
  %1039 = icmp eq i8 %1038, 0
  br i1 %1039, label %1040, label %1049

1040:                                             ; preds = %1035
  %1041 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 48, i32 1
  %1042 = load i8, ptr %1041, align 1
  %1043 = zext i8 %1042 to i32
  %1044 = call i32 @xfrm_parse_spi(ptr noundef %0, i8 noundef zeroext %368, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %1045 = icmp slt i32 %1044, 0
  br i1 %1045, label %1165, label %1046

1046:                                             ; preds = %1040
  %1047 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 7
  %1048 = icmp eq i32 %1044, 0
  br i1 %1048, label %161, label %1049

1049:                                             ; preds = %1046, %1035
  %1050 = phi i32 [ %1043, %1046 ], [ %326, %1035 ]
  %1051 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 45
  %1052 = load ptr, ptr %1051, align 8
  %1053 = getelementptr inbounds %struct.xfrm_type, ptr %1052, i32 0, i32 1
  %1054 = load i8, ptr %1053, align 4
  %1055 = icmp eq i8 %1054, 4
  %1056 = icmp eq i8 %1054, 41
  %1057 = or i1 %1055, %1056
  %1058 = trunc i32 %1050 to i8
  %1059 = and i32 %1050, 255
  %1060 = icmp ugt i8 %1058, 10
  %1061 = load i1, ptr @xfrm_input_get_afinfo.__already_done, align 1
  %1062 = xor i1 %1061, true
  %1063 = select i1 %1060, i1 %1062, i1 false
  br i1 %1063, label %1064, label %1065, !prof !9

1064:                                             ; preds = %1049
  store i1 true, ptr @xfrm_input_get_afinfo.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 90, i32 noundef 9, ptr noundef null) #11
  br label %1065

1065:                                             ; preds = %1064, %1049
  br i1 %1060, label %1165, label %1066

1066:                                             ; preds = %1065
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !28
  %1067 = zext i1 %1057 to i32
  %1068 = getelementptr [2 x [11 x ptr]], ptr @xfrm_input_afinfo, i32 0, i32 %1067, i32 %1059
  %1069 = load volatile ptr, ptr %1068, align 4
  %1070 = icmp eq ptr %1069, null
  br i1 %1070, label %1071, label %1072, !prof !9

1071:                                             ; preds = %1066
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  br label %1165

1072:                                             ; preds = %1066
  %1073 = getelementptr inbounds %struct.xfrm_input_afinfo, ptr %1069, i32 0, i32 2
  %1074 = load ptr, ptr %1073, align 4
  %1075 = tail call i32 %1074(ptr noundef %0, i8 noundef zeroext %1054, i32 noundef 0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %1076 = icmp eq i32 %1075, 0
  br i1 %1076, label %1077, label %1165

1077:                                             ; preds = %1072
  br i1 %1039, label %1106, label %1078

1078:                                             ; preds = %1077
  %1079 = load i8, ptr %10, align 1
  %1080 = and i8 %1079, 1
  %1081 = icmp eq i8 %1080, 0
  br i1 %1081, label %1093, label %1082

1082:                                             ; preds = %1078
  %1083 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %1084 = load ptr, ptr %1083, align 8
  %1085 = getelementptr inbounds %struct.skb_ext, ptr %1084, i32 0, i32 1
  %1086 = load i8, ptr %1085, align 1
  %1087 = zext i8 %1086 to i32
  %1088 = shl nuw nsw i32 %1087, 3
  %1089 = getelementptr i8, ptr %1084, i32 %1088
  %1090 = icmp eq ptr %1089, null
  br i1 %1090, label %1093, label %1091

1091:                                             ; preds = %1082
  %1092 = getelementptr inbounds %struct.sec_path, ptr %1089, i32 0, i32 1
  store i32 0, ptr %1092, align 4
  br label %1093

1093:                                             ; preds = %1091, %1082, %1078
  %1094 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %1095 = load i32, ptr %1094, align 8
  %1096 = icmp eq i32 %1095, 0
  br i1 %1096, label %1104, label %1097

1097:                                             ; preds = %1093
  %1098 = and i32 %1095, 1
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1100, label %1103

1100:                                             ; preds = %1097
  %1101 = and i32 %1095, -2
  %1102 = inttoptr i32 %1101 to ptr
  tail call void @dst_release(ptr noundef %1102) #11
  br label %1103

1103:                                             ; preds = %1100, %1097
  store i32 0, ptr %1094, align 8
  br label %1104

1104:                                             ; preds = %1103, %1093
  %1105 = tail call i32 @gro_cells_receive(ptr noundef nonnull @gro_cells, ptr noundef %0) #11
  br label %1207

1106:                                             ; preds = %1077
  %1107 = tail call fastcc ptr @xfrm_offload(ptr noundef %0)
  %1108 = icmp eq ptr %1107, null
  br i1 %1108, label %1114, label %1109

1109:                                             ; preds = %1106
  %1110 = getelementptr inbounds %struct.xfrm_offload, ptr %1107, i32 0, i32 1
  %1111 = load i32, ptr %1110, align 4
  %1112 = and i32 %1111, 32
  %1113 = icmp ne i32 %1112, 0
  br label %1114

1114:                                             ; preds = %1109, %1106
  %1115 = phi i1 [ %1113, %1109 ], [ false, %1106 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !28
  %1116 = getelementptr inbounds %struct.xfrm_state, ptr %324, i32 0, i32 46, i32 1
  %1117 = load i8, ptr %1116, align 1
  %1118 = zext i8 %1117 to i32
  %1119 = tail call ptr @xfrm_state_afinfo_get_rcu(i32 noundef %1118) #11
  %1120 = icmp eq ptr %1119, null
  br i1 %1120, label %1128, label %1121, !prof !9

1121:                                             ; preds = %1114
  %1122 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %1119, i32 0, i32 11
  %1123 = load ptr, ptr %1122, align 4
  %1124 = icmp ne i32 %327, 0
  %1125 = select i1 %1115, i1 true, i1 %1124
  %1126 = zext i1 %1125 to i32
  %1127 = tail call i32 %1123(ptr noundef %0, i32 noundef %1126) #11
  br label %1128

1128:                                             ; preds = %1121, %1114
  %1129 = phi i32 [ %1127, %1121 ], [ -97, %1114 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  br i1 %1115, label %1130, label %1207

1130:                                             ; preds = %1128
  %1131 = load i8, ptr %10, align 1
  %1132 = and i8 %1131, 1
  %1133 = icmp eq i8 %1132, 0
  br i1 %1133, label %1145, label %1134

1134:                                             ; preds = %1130
  %1135 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %1136 = load ptr, ptr %1135, align 8
  %1137 = getelementptr inbounds %struct.skb_ext, ptr %1136, i32 0, i32 1
  %1138 = load i8, ptr %1137, align 1
  %1139 = zext i8 %1138 to i32
  %1140 = shl nuw nsw i32 %1139, 3
  %1141 = getelementptr i8, ptr %1136, i32 %1140
  %1142 = icmp eq ptr %1141, null
  br i1 %1142, label %1145, label %1143

1143:                                             ; preds = %1134
  %1144 = getelementptr inbounds %struct.sec_path, ptr %1141, i32 0, i32 1
  store i32 0, ptr %1144, align 4
  br label %1145

1145:                                             ; preds = %1143, %1134, %1130
  %1146 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %1147 = load i32, ptr %1146, align 8
  %1148 = icmp eq i32 %1147, 0
  br i1 %1148, label %1156, label %1149

1149:                                             ; preds = %1145
  %1150 = and i32 %1147, 1
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1152, label %1155

1152:                                             ; preds = %1149
  %1153 = and i32 %1147, -2
  %1154 = inttoptr i32 %1153 to ptr
  tail call void @dst_release(ptr noundef %1154) #11
  br label %1155

1155:                                             ; preds = %1152, %1149
  store i32 0, ptr %1146, align 8
  br label %1156

1156:                                             ; preds = %1155, %1145
  %1157 = tail call i32 @gro_cells_receive(ptr noundef nonnull @gro_cells, ptr noundef %0) #11
  br label %1207

1158:                                             ; preds = %351, %347, %345, %269, %265, %262, %243
  %1159 = phi i32 [ %244, %243 ], [ %244, %262 ], [ %244, %265 ], [ %244, %269 ], [ -74, %347 ], [ %323, %345 ], [ %323, %351 ]
  %1160 = phi ptr [ %246, %243 ], [ %246, %262 ], [ %246, %265 ], [ %246, %269 ], [ %324, %347 ], [ %324, %345 ], [ %324, %351 ]
  %1161 = phi i32 [ %248, %243 ], [ %248, %262 ], [ %248, %265 ], [ %248, %269 ], [ %326, %347 ], [ %326, %345 ], [ %326, %351 ]
  %1162 = getelementptr inbounds %struct.xfrm_state, ptr %1160, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !21
  %1163 = load i16, ptr %1162, align 4
  %1164 = add i16 %1163, 1
  store i16 %1164, ptr %1162, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  br label %1165

1165:                                             ; preds = %1158, %1072, %1071, %1065, %1040, %1034, %1032, %1031, %1029, %953, %952, %950, %853, %837, %835, %826, %720, %704, %702, %693, %622, %500, %495, %481, %479, %458, %443, %441, %385, %283, %185, %172, %96, %92, %89, %53, %50, %48
  %1166 = phi i32 [ %1, %48 ], [ %1159, %1158 ], [ %323, %1072 ], [ %1, %92 ], [ %1, %89 ], [ %1, %96 ], [ %323, %385 ], [ %323, %1040 ], [ %1, %50 ], [ %1, %53 ], [ %162, %172 ], [ %162, %185 ], [ %244, %283 ], [ %323, %1032 ], [ %323, %1034 ], [ %323, %1029 ], [ %323, %1031 ], [ %323, %953 ], [ %323, %443 ], [ %323, %441 ], [ %323, %458 ], [ %323, %952 ], [ %323, %950 ], [ %323, %479 ], [ %323, %495 ], [ %323, %481 ], [ %323, %500 ], [ %323, %622 ], [ %323, %693 ], [ %323, %720 ], [ %323, %704 ], [ %323, %702 ], [ %323, %826 ], [ %323, %853 ], [ %323, %837 ], [ %323, %835 ], [ %323, %1065 ], [ %323, %1071 ]
  %1167 = phi ptr [ %44, %48 ], [ %1160, %1158 ], [ %324, %1072 ], [ %44, %92 ], [ %44, %89 ], [ %44, %96 ], [ %324, %385 ], [ %324, %1040 ], [ %44, %50 ], [ %44, %53 ], [ %164, %172 ], [ %164, %185 ], [ %246, %283 ], [ %324, %1032 ], [ %324, %1034 ], [ %324, %1029 ], [ %324, %1031 ], [ %324, %953 ], [ %324, %443 ], [ %324, %441 ], [ %324, %458 ], [ %324, %952 ], [ %324, %950 ], [ %324, %479 ], [ %324, %495 ], [ %324, %481 ], [ %324, %500 ], [ %324, %622 ], [ %324, %693 ], [ %324, %720 ], [ %324, %704 ], [ %324, %702 ], [ %324, %826 ], [ %324, %853 ], [ %324, %837 ], [ %324, %835 ], [ %324, %1065 ], [ %324, %1071 ]
  %1168 = phi i32 [ 0, %48 ], [ %1161, %1158 ], [ %1050, %1072 ], [ %84, %92 ], [ %84, %89 ], [ %84, %96 ], [ %326, %385 ], [ %1043, %1040 ], [ 0, %50 ], [ 0, %53 ], [ %167, %172 ], [ %167, %185 ], [ %248, %283 ], [ %326, %1032 ], [ %326, %1034 ], [ %326, %1029 ], [ %326, %1031 ], [ %326, %953 ], [ %326, %443 ], [ %326, %441 ], [ %326, %458 ], [ %326, %952 ], [ %326, %950 ], [ %326, %479 ], [ %326, %495 ], [ %326, %481 ], [ %326, %500 ], [ %326, %622 ], [ %326, %693 ], [ %326, %720 ], [ %326, %704 ], [ %326, %702 ], [ %326, %826 ], [ %326, %853 ], [ %326, %837 ], [ %326, %835 ], [ %1050, %1065 ], [ %1050, %1071 ]
  %1169 = icmp eq ptr %1167, null
  br i1 %1169, label %1181, label %1170

1170:                                             ; preds = %1165, %240
  %1171 = phi i32 [ %1168, %1165 ], [ %167, %240 ]
  %1172 = phi ptr [ %1167, %1165 ], [ %191, %240 ]
  %1173 = phi i32 [ %1166, %1165 ], [ %162, %240 ]
  %1174 = getelementptr inbounds %struct.xfrm_state, ptr %1172, i32 0, i32 45
  %1175 = load ptr, ptr %1174, align 8
  %1176 = icmp eq ptr %1175, null
  br i1 %1176, label %1181, label %1177

1177:                                             ; preds = %1170
  %1178 = getelementptr inbounds %struct.xfrm_type, ptr %1175, i32 0, i32 1
  %1179 = load i8, ptr %1178, align 4
  %1180 = zext i8 %1179 to i32
  br label %1181

1181:                                             ; preds = %1177, %1170, %1165, %197, %193, %150, %146, %128, %121
  %1182 = phi i32 [ %1171, %1177 ], [ %1171, %1170 ], [ %1168, %1165 ], [ %167, %197 ], [ %167, %193 ], [ %102, %150 ], [ %102, %146 ], [ %102, %121 ], [ %102, %128 ]
  %1183 = phi i32 [ %1180, %1177 ], [ %1173, %1170 ], [ %1166, %1165 ], [ %162, %197 ], [ %162, %193 ], [ %1, %150 ], [ %1, %146 ], [ %1, %121 ], [ %1, %128 ]
  %1184 = trunc i32 %1183 to i8
  %1185 = icmp eq i8 %1184, 4
  %1186 = icmp eq i8 %1184, 41
  %1187 = or i1 %1185, %1186
  %1188 = trunc i32 %1182 to i8
  %1189 = and i32 %1182, 255
  %1190 = icmp ugt i8 %1188, 10
  %1191 = load i1, ptr @xfrm_input_get_afinfo.__already_done, align 1
  %1192 = xor i1 %1191, true
  %1193 = select i1 %1190, i1 %1192, i1 false
  br i1 %1193, label %1194, label %1195, !prof !9

1194:                                             ; preds = %1181
  store i1 true, ptr @xfrm_input_get_afinfo.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 90, i32 noundef 9, ptr noundef null) #11
  br label %1195

1195:                                             ; preds = %1194, %1181
  br i1 %1190, label %1206, label %1196

1196:                                             ; preds = %1195
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !28
  %1197 = zext i1 %1187 to i32
  %1198 = getelementptr [2 x [11 x ptr]], ptr @xfrm_input_afinfo, i32 0, i32 %1197, i32 %1189
  %1199 = load volatile ptr, ptr %1198, align 4
  %1200 = icmp eq ptr %1199, null
  br i1 %1200, label %1201, label %1202, !prof !9

1201:                                             ; preds = %1196
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  br label %1206

1202:                                             ; preds = %1196
  %1203 = getelementptr inbounds %struct.xfrm_input_afinfo, ptr %1199, i32 0, i32 2
  %1204 = load ptr, ptr %1203, align 4
  %1205 = tail call i32 %1204(ptr noundef %0, i8 noundef zeroext %1184, i32 noundef -1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  br label %1206

1206:                                             ; preds = %1202, %1201, %1195
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #11
  br label %1207

1207:                                             ; preds = %1206, %1156, %1128, %1104, %316
  %1208 = phi i32 [ 0, %1206 ], [ 0, %1104 ], [ %1129, %1156 ], [ 0, %316 ], [ %1129, %1128 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret i32 %1208
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc ptr @xfrm_offload(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.skb_ext, ptr %8, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 3
  %13 = getelementptr i8, ptr %8, i32 %12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.sec_path, ptr %13, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %13, align 4
  %21 = icmp eq i32 %20, %17
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = add i32 %17, -1
  %24 = getelementptr %struct.sec_path, ptr %13, i32 0, i32 3, i32 %23
  br label %25

25:                                               ; preds = %22, %19, %15, %6, %1
  %26 = phi ptr [ %24, %22 ], [ null, %19 ], [ null, %15 ], [ null, %6 ], [ null, %1 ]
  ret ptr %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_lookup(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_replay_check(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_check_expire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_replay_seqhi(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_replay_recheck(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_replay_advance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gro_cells_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_afinfo_get_rcu(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_input_resume(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @xfrm_input(ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef -1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_trans_queue_net(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %5) #10, !srcloc !15
  %7 = add i32 %6, ptrtoint (ptr @xfrm_trans_tasklet to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.xfrm_trans_tasklet, ptr %8, i32 0, i32 1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr @netdev_max_backlog, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.xfrm_trans_tasklet, ptr %8, i32 0, i32 1
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  store ptr %2, ptr %15, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  store ptr %0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.xfrm_trans_tasklet, ptr %8, i32 0, i32 1, i32 0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  store volatile ptr %14, ptr %1, align 8
  %19 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  store volatile ptr %18, ptr %19, align 4
  store volatile ptr %1, ptr %17, align 4
  store volatile ptr %1, ptr %18, align 4
  %20 = load i32, ptr %9, align 4
  %21 = add i32 %20, 1
  store volatile i32 %21, ptr %9, align 4
  %22 = getelementptr inbounds %struct.tasklet_struct, ptr %8, i32 0, i32 1
  %23 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %22) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  tail call void @__tasklet_schedule(ptr noundef %8) #11
  br label %26

26:                                               ; preds = %25, %13, %3
  %27 = phi i32 [ -105, %3 ], [ 0, %13 ], [ 0, %25 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_trans_queue(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #10, !srcloc !15
  %6 = add i32 %5, ptrtoint (ptr @xfrm_trans_tasklet to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.xfrm_trans_tasklet, ptr %7, i32 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr @netdev_max_backlog, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.xfrm_trans_tasklet, ptr %7, i32 0, i32 1
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store ptr %1, ptr %14, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  store ptr @init_net, ptr %15, align 4
  %16 = getelementptr inbounds %struct.xfrm_trans_tasklet, ptr %7, i32 0, i32 1, i32 0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  store volatile ptr %13, ptr %0, align 8
  %18 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  store volatile ptr %17, ptr %18, align 4
  store volatile ptr %0, ptr %16, align 4
  store volatile ptr %0, ptr %17, align 4
  %19 = load i32, ptr %8, align 4
  %20 = add i32 %19, 1
  store volatile i32 %20, ptr %8, align 4
  %21 = getelementptr inbounds %struct.tasklet_struct, ptr %7, i32 0, i32 1
  %22 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %21) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  tail call void @__tasklet_schedule(ptr noundef %7) #11
  br label %25

25:                                               ; preds = %24, %12, %2
  %26 = phi i32 [ -105, %2 ], [ 0, %12 ], [ 0, %24 ]
  ret i32 %26
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @xfrm_input_init() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call i32 @init_dummy_netdev(ptr noundef nonnull @xfrm_napi_dev) #11
  %2 = tail call i32 @gro_cells_init(ptr noundef nonnull @gro_cells, ptr noundef nonnull @xfrm_napi_dev) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store ptr null, ptr @gro_cells, align 4
  br label %5

5:                                                ; preds = %4, %0
  %6 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %9, %5
  %10 = phi i32 [ %18, %9 ], [ %6, %5 ]
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, ptrtoint (ptr @xfrm_trans_tasklet to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.xfrm_trans_tasklet, ptr %14, i32 0, i32 1
  store ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.xfrm_trans_tasklet, ptr %14, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.xfrm_trans_tasklet, ptr %14, i32 0, i32 1, i32 1
  store i32 0, ptr %17, align 4
  tail call void @tasklet_setup(ptr noundef %14, ptr noundef nonnull @xfrm_trans_reinject) #11
  %18 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef nonnull @__cpu_possible_mask) #13
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %9, label %21

21:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_dummy_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gro_cells_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xfrm_trans_reinject(ptr noundef %0) #0 {
  %2 = alloca %struct.sk_buff_head, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %3 = getelementptr inbounds i8, ptr %2, i32 12
  store i32 0, ptr %3, align 4, !annotation !30
  %4 = getelementptr inbounds %struct.sk_buff_head, ptr %2, i32 0, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.xfrm_trans_tasklet, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %41, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.anon.6, ptr %2, i32 0, i32 1
  %10 = getelementptr inbounds %struct.xfrm_trans_tasklet, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 1
  store volatile ptr %2, ptr %12, align 4
  store volatile ptr %6, ptr %2, align 8
  store volatile ptr %2, ptr %11, align 8
  store volatile ptr %11, ptr %9, align 4
  %13 = getelementptr inbounds %struct.xfrm_trans_tasklet, ptr %0, i32 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %4, align 4
  store ptr %5, ptr %5, align 4
  store ptr %5, ptr %10, align 4
  store i32 0, ptr %13, align 4
  %16 = load ptr, ptr %2, align 4
  %17 = icmp eq ptr %16, %2
  %18 = icmp eq ptr %16, null
  %19 = or i1 %17, %18
  br i1 %19, label %41, label %20

20:                                               ; preds = %8
  %21 = add i32 %15, %14
  br label %22

22:                                               ; preds = %39, %20
  %23 = phi i32 [ %40, %39 ], [ %21, %20 ]
  %24 = phi ptr [ %35, %39 ], [ %16, %20 ]
  %25 = add i32 %23, -1
  store volatile i32 %25, ptr %4, align 4
  %26 = load ptr, ptr %24, align 8
  %27 = getelementptr inbounds %struct.anon, ptr %24, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  store ptr null, ptr %27, align 4
  store ptr null, ptr %24, align 8
  %29 = getelementptr inbounds %struct.anon, ptr %26, i32 0, i32 1
  store volatile ptr %28, ptr %29, align 4
  store volatile ptr %26, ptr %28, align 8
  %30 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 3, i32 24
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 3, i32 28
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 %31(ptr noundef %33, ptr noundef null, ptr noundef nonnull %24) #11
  %35 = load ptr, ptr %2, align 4
  %36 = icmp eq ptr %35, %2
  %37 = icmp eq ptr %35, null
  %38 = or i1 %36, %37
  br i1 %38, label %41, label %39

39:                                               ; preds = %22
  %40 = load i32, ptr %4, align 4
  br label %22

41:                                               ; preds = %22, %8, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_ext_del(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readonly willreturn }

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
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2156685337}
!13 = !{!"branch_weights", i32 4000, i32 2}
!14 = !{i64 562862, i64 562923}
!15 = !{i64 581562}
!16 = !{i64 565879}
!17 = !{i64 2148158077}
!18 = !{i64 657184, i64 2148147155, i64 2148147181, i64 2148147228, i64 2148147250, i64 2148147278, i64 2148147298}
!19 = !{i64 643753, i64 643778, i64 643800, i64 643816, i64 643828, i64 643848, i64 643872, i64 643888, i64 643900}
!20 = !{i64 2148158203}
!21 = !{i64 2149249327}
!22 = !{i64 2149245151}
!23 = !{i64 2149245226, i64 2149245253, i64 2149245300, i64 2149245322, i64 2149245350, i64 2149245370}
!24 = !{i64 2149272330}
!25 = !{i64 2153738026, i64 2153738514, i64 2153738063, i64 2153738119, i64 2153738153, i64 2153738177, i64 2153738218, i64 2153738239, i64 2153738267, i64 2153738301}
!26 = !{i64 5819463, i64 5819502, i64 5819528, i64 5819552, i64 5819577, i64 5819603, i64 5819628, i64 5819654, i64 5819681, i64 5819707, i64 5819746, i64 5819790, i64 5819821, i64 5819846}
!27 = !{i64 5819080}
!28 = !{i64 2149023128}
!29 = !{i64 2149023345}
!30 = !{!"auto-init"}
