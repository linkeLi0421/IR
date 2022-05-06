; ModuleID = '/llk/IR/net/ipv6/esp6.c_pt.bc'
source_filename = "../net/ipv6/esp6.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_esp6_output_head:\09\09\09\09\09"
module asm "\09.asciz \09\22esp6_output_head\22\09\09\09\09\09"
module asm "__kstrtabns_esp6_output_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_esp6_output_tail:\09\09\09\09\09"
module asm "\09.asciz \09\22esp6_output_tail\22\09\09\09\09\09"
module asm "__kstrtabns_esp6_output_tail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_esp6_input_done2:\09\09\09\09\09"
module asm "\09.asciz \09\22esp6_input_done2\22\09\09\09\09\09"
module asm "__kstrtabns_esp6_input_done2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.28, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.139, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.139 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.xfrm_type = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.xfrm6_protocol = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.esp_info = type { ptr, i64, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type {}
%union.anon = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.xfrm_state_offload = type { ptr, %struct.netdevice_tracker, ptr, i32, i32, i8 }
%struct.netdevice_tracker = type {}
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.xfrm_encap_tmpl = type { i16, i16, i16, %union.xfrm_address_t }
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
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.10, %union.anon.171, %struct.atomic_t }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.171 = type { %struct.atomic_t }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.176, [0 x i32], %union.anon.177, i16, i16, %union.anon.178, %struct.refcount_struct, [0 x i32], %union.anon.179 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.2 }
%union.anon.2 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { %struct.hlist_node }
%union.anon.178 = type { i32 }
%union.anon.179 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.180, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.181, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.182, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.180 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.181 = type { ptr }
%union.anon.182 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.crypto_aead = type { i32, i32, [56 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.188, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.188 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [20 x i8], [0 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.skb_ext = type { %struct.refcount_struct, [1 x i8], i8, [2 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.194, i32, i32, i8, i8 }
%struct.anon.194 = type { i32, i32 }
%struct.esp_output_extra = type { i32, i32 }
%struct.ip_esp_hdr = type { i32, i32, [0 x i8] }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.xfrm_algo_aead = type { [64 x i8], i32, i32, [0 x i8] }
%struct.xfrm_algo_auth = type { [64 x i8], i32, i32, [0 x i8] }
%struct.xfrm_algo = type { [64 x i8], i32, [0 x i8] }
%struct.rtattr = type { i16, i16 }
%struct.xfrm_algo_desc = type { ptr, ptr, i8, %union.anon.197, %struct.sadb_alg }
%union.anon.197 = type { %struct.xfrm_algo_aead_info }
%struct.xfrm_algo_aead_info = type { ptr, i16 }
%struct.sadb_alg = type { i8, i8, i16, i16, i16 }
%struct.xfrm_algo_auth_info = type { i16, i16 }
%struct.xfrm_dst = type { %union.anon.198, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.198 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.44, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.130, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.44 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.130 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@__kstrtab_esp6_output_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_esp6_output_head = external dso_local constant [0 x i8], align 1
@__ksymtab_esp6_output_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @esp6_output_head to i32), ptr @__kstrtab_esp6_output_head, ptr @__kstrtabns_esp6_output_head }, section "___ksymtab_gpl+esp6_output_head", align 4
@__kstrtab_esp6_output_tail = external dso_local constant [0 x i8], align 1
@__kstrtabns_esp6_output_tail = external dso_local constant [0 x i8], align 1
@__ksymtab_esp6_output_tail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @esp6_output_tail to i32), ptr @__kstrtab_esp6_output_tail, ptr @__kstrtabns_esp6_output_tail }, section "___ksymtab_gpl+esp6_output_tail", align 4
@esp6_input_done2.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [16 x i8] c"net/ipv6/esp6.c\00", align 1
@__kstrtab_esp6_input_done2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_esp6_input_done2 = external dso_local constant [0 x i8], align 1
@__ksymtab_esp6_input_done2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @esp6_input_done2 to i32), ptr @__kstrtab_esp6_input_done2, ptr @__kstrtabns_esp6_input_done2 }, section "___ksymtab_gpl+esp6_input_done2", align 4
@__UNIQUE_ID_license622 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias623 = internal constant [22 x i8] c"alias=xfrm-type-10-50\00", section ".modinfo", align 1
@init_net = external dso_local global %struct.net, align 64
@esp6_type = internal constant %struct.xfrm_type { ptr @__this_module, i8 50, i8 2, ptr @esp6_init_state, ptr @esp6_destroy, ptr @esp6_input, ptr @esp6_output, ptr null }, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"\016IPv6: %s: can't add xfrm type\0A\00", align 1
@__func__.esp6_init = private unnamed_addr constant [10 x i8] c"esp6_init\00", align 1
@esp6_protocol = internal global %struct.xfrm6_protocol { ptr @xfrm6_rcv, ptr @xfrm_input, ptr @esp6_rcv_cb, ptr @esp6_err, ptr null, i32 0 }, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"\016IPv6: %s: can't add protocol\0A\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.4 = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%s%sauthencesn(%s,%s)%s\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"digest_null\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"%s%sauthenc(%s,%s)%s\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"\016IPv6: ESP: %s digestsize %u != %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"\016IPv6: %s: can't remove protocol\0A\00", align 1
@__func__.esp6_fini = private unnamed_addr constant [10 x i8] c"esp6_fini\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_alias623, ptr @__UNIQUE_ID_license622, ptr @__ksymtab_esp6_input_done2, ptr @__ksymtab_esp6_output_head, ptr @__ksymtab_esp6_output_tail], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @esp6_output_head(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.esp_info, ptr %2, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 24
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %63, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %11) #12
  %12 = getelementptr inbounds %struct.xfrm_encap_tmpl, ptr %8, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = getelementptr inbounds %struct.xfrm_encap_tmpl, ptr %8, i32 0, i32 2
  %15 = load i16, ptr %14, align 4
  %16 = load i16, ptr %8, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %11) #12
  %17 = icmp eq i16 %16, 7
  br i1 %17, label %57, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = load i32, ptr %5, align 4
  %22 = add i32 %21, %20
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = getelementptr i8, ptr %24, i32 %27
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = ptrtoint ptr %28 to i32
  %32 = ptrtoint ptr %30 to i32
  %33 = sub i32 %32, %31
  %34 = add i32 %22, %33
  %35 = icmp ugt i32 %34, 65535
  br i1 %35, label %57, label %36

36:                                               ; preds = %18
  %37 = load ptr, ptr %2, align 8
  store i16 %13, ptr %37, align 2
  %38 = getelementptr inbounds %struct.udphdr, ptr %37, i32 0, i32 1
  store i16 %15, ptr %38, align 2
  %39 = trunc i32 %34 to i16
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #12
  %41 = getelementptr inbounds %struct.udphdr, ptr %37, i32 0, i32 2
  store i16 %40, ptr %41, align 2
  %42 = getelementptr inbounds %struct.udphdr, ptr %37, i32 0, i32 3
  store i16 0, ptr %42, align 2
  %43 = load ptr, ptr %23, align 8
  %44 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  %45 = load i16, ptr %44, align 2
  %46 = zext i16 %45 to i32
  %47 = getelementptr i8, ptr %43, i32 %46
  store i8 17, ptr %47, align 1
  %48 = icmp eq i16 %16, 1
  %49 = getelementptr %struct.udphdr, ptr %37, i32 1
  br i1 %48, label %50, label %53

50:                                               ; preds = %36
  %51 = getelementptr %struct.udphdr, ptr %37, i32 1, i32 2
  store i32 0, ptr %51, align 4
  store i32 0, ptr %49, align 4
  %52 = getelementptr %struct.udphdr, ptr %37, i32 2
  br label %53

53:                                               ; preds = %50, %36
  %54 = phi ptr [ %52, %50 ], [ %49, %36 ]
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  store ptr %54, ptr %2, align 8
  br label %63

57:                                               ; preds = %18, %10
  %58 = phi ptr [ inttoptr (i32 -90 to ptr), %18 ], [ inttoptr (i32 -95 to ptr), %10 ]
  %59 = ptrtoint ptr %58 to i32
  br label %265

60:                                               ; preds = %53
  %61 = ptrtoint ptr %54 to i32
  %62 = icmp slt ptr %54, null
  br i1 %62, label %265, label %63

63:                                               ; preds = %60, %56, %3
  %64 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %6, 63
  %67 = add i32 %66, %65
  %68 = and i32 %67, -64
  %69 = icmp ugt i32 %68, 32768
  br i1 %69, label %214, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %72 = load i8, ptr %71, align 2
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.skb_shared_info, ptr %77, i32 0, i32 10
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %214

82:                                               ; preds = %75, %70
  %83 = icmp eq i32 %65, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %88 = load ptr, ptr %87, align 8
  %89 = ptrtoint ptr %86 to i32
  %90 = ptrtoint ptr %88 to i32
  %91 = sub i32 %89, %90
  br label %92

92:                                               ; preds = %84, %82
  %93 = phi i32 [ %91, %84 ], [ 0, %82 ]
  %94 = icmp sgt i32 %6, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  store ptr %1, ptr %4, align 4
  %96 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %97 = load ptr, ptr %96, align 8
  br label %236

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.skb_shared_info, ptr %100, i32 0, i32 2
  %102 = load i8, ptr %101, align 2
  %103 = icmp ult i8 %102, 17
  br i1 %103, label %104, label %214

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.skb_shared_info, ptr %100, i32 0, i32 6
  %106 = load ptr, ptr %105, align 8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %214

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 44
  %112 = getelementptr inbounds %struct.esp_info, ptr %2, i32 0, i32 9
  store i8 0, ptr %112, align 1
  %113 = and i32 %66, -64
  %114 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %114) #12
  %115 = tail call zeroext i1 @skb_page_frag_refill(i32 noundef %113, ptr noundef %111, i32 noundef 2592) #12
  br i1 %115, label %116, label %213, !prof !9

116:                                              ; preds = %108
  %117 = load ptr, ptr %111, align 4
  %118 = getelementptr inbounds %struct.page, ptr %117, i32 0, i32 1
  %119 = load volatile i32, ptr %118, align 4
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122, !prof !9

122:                                              ; preds = %116
  %123 = add i32 %119, -1
  br label %126

124:                                              ; preds = %116
  %125 = ptrtoint ptr %117 to i32
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  %128 = inttoptr i32 %127 to ptr
  %129 = getelementptr inbounds %struct.page, ptr %128, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %129) #12, !srcloc !10
  %130 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %129, ptr %129, i32 1, ptr elementtype(i32) %129) #12, !srcloc !11
  %131 = tail call ptr @page_address(ptr noundef %117) #12
  %132 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 44, i32 1
  %133 = load i16, ptr %132, align 4
  %134 = zext i16 %133 to i32
  %135 = getelementptr i8, ptr %131, i32 %134
  %136 = getelementptr inbounds %struct.esp_info, ptr %2, i32 0, i32 2
  %137 = load i32, ptr %136, align 8
  %138 = getelementptr inbounds %struct.esp_info, ptr %2, i32 0, i32 4
  %139 = load i32, ptr %138, align 8
  %140 = getelementptr inbounds %struct.esp_info, ptr %2, i32 0, i32 8
  %141 = load i8, ptr %140, align 8
  %142 = icmp eq i32 %137, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %126
  tail call void @llvm.memset.p0.i32(ptr align 1 %135, i8 0, i32 %137, i1 false) #12
  %144 = getelementptr i8, ptr %135, i32 %137
  br label %145

145:                                              ; preds = %143, %126
  %146 = phi ptr [ %144, %143 ], [ %135, %126 ]
  %147 = add i32 %139, -2
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %149, %145
  %150 = phi i32 [ %151, %149 ], [ 0, %145 ]
  %151 = add nuw nsw i32 %150, 1
  %152 = trunc i32 %151 to i8
  %153 = getelementptr i8, ptr %146, i32 %150
  store i8 %152, ptr %153, align 1
  %154 = icmp eq i32 %151, %147
  br i1 %154, label %155, label %149

155:                                              ; preds = %149, %145
  %156 = trunc i32 %147 to i8
  %157 = getelementptr i8, ptr %146, i32 %147
  store i8 %156, ptr %157, align 1
  %158 = add i32 %139, -1
  %159 = getelementptr i8, ptr %146, i32 %158
  store i8 %141, ptr %159, align 1
  %160 = load ptr, ptr %99, align 4
  %161 = getelementptr inbounds %struct.skb_shared_info, ptr %160, i32 0, i32 2
  %162 = load i8, ptr %161, align 2
  %163 = zext i8 %162 to i32
  %164 = load i16, ptr %132, align 4
  %165 = zext i16 %164 to i32
  %166 = getelementptr %struct.skb_shared_info, ptr %160, i32 0, i32 12, i32 %163
  store ptr %117, ptr %166, align 4
  %167 = getelementptr %struct.skb_shared_info, ptr %160, i32 0, i32 12, i32 %163, i32 2
  store i32 %165, ptr %167, align 4
  %168 = getelementptr %struct.skb_shared_info, ptr %160, i32 0, i32 12, i32 %163, i32 1
  store i32 %6, ptr %168, align 4
  %169 = load volatile i32, ptr %118, align 4
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172, !prof !9

172:                                              ; preds = %155
  %173 = add i32 %169, -1
  br label %176

174:                                              ; preds = %155
  %175 = ptrtoint ptr %117 to i32
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i32 [ %173, %172 ], [ %175, %174 ]
  %178 = inttoptr i32 %177 to ptr
  %179 = getelementptr inbounds %struct.page, ptr %178, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = ptrtoint ptr %180 to i32
  %182 = and i32 %181, 2
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %176
  %185 = load i8, ptr %71, align 2
  %186 = or i8 %185, 64
  store i8 %186, ptr %71, align 2
  br label %187

187:                                              ; preds = %184, %176
  %188 = add i8 %162, 1
  %189 = load ptr, ptr %99, align 4
  %190 = getelementptr inbounds %struct.skb_shared_info, ptr %189, i32 0, i32 2
  store i8 %188, ptr %190, align 2
  %191 = load i16, ptr %132, align 4
  %192 = trunc i32 %113 to i16
  %193 = add i16 %191, %192
  store i16 %193, ptr %132, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %114) #12
  %194 = add nuw nsw i32 %163, 2
  %195 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %196 = load i32, ptr %195, align 8
  %197 = add i32 %196, %6
  store i32 %197, ptr %195, align 8
  %198 = load i32, ptr %64, align 4
  %199 = add i32 %198, %6
  store i32 %199, ptr %64, align 4
  %200 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %201 = load i32, ptr %200, align 8
  %202 = add i32 %201, %6
  store i32 %202, ptr %200, align 8
  %203 = icmp eq ptr %110, null
  br i1 %203, label %265, label %204

204:                                              ; preds = %187
  %205 = getelementptr inbounds %struct.sock_common, ptr %110, i32 0, i32 4
  %206 = load volatile i8, ptr %205, align 2
  %207 = zext i8 %206 to i32
  %208 = shl nuw i32 1, %207
  %209 = and i32 %208, -4161
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %265, label %211

211:                                              ; preds = %204
  %212 = getelementptr inbounds %struct.sock, ptr %110, i32 0, i32 23
  tail call fastcc void @refcount_add(i32 noundef %6, ptr noundef %212)
  br label %265

213:                                              ; preds = %108
  tail call void @_raw_spin_unlock_bh(ptr noundef %114) #12
  br label %214

214:                                              ; preds = %213, %104, %98, %75, %63
  %215 = load ptr, ptr %2, align 8
  %216 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %217 = load ptr, ptr %216, align 8
  %218 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %219 = load i16, ptr %218, align 2
  %220 = call i32 @skb_cow_data(ptr noundef %1, i32 noundef %6, ptr noundef nonnull %4) #12
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %265, label %222

222:                                              ; preds = %214
  %223 = zext i16 %219 to i32
  %224 = getelementptr i8, ptr %217, i32 %223
  %225 = ptrtoint ptr %215 to i32
  %226 = ptrtoint ptr %224 to i32
  %227 = sub i32 %225, %226
  %228 = load ptr, ptr %4, align 4
  %229 = getelementptr inbounds %struct.sk_buff, ptr %228, i32 0, i32 14
  %230 = load ptr, ptr %229, align 8
  %231 = load ptr, ptr %216, align 8
  %232 = load i16, ptr %218, align 2
  %233 = zext i16 %232 to i32
  %234 = getelementptr i8, ptr %231, i32 %233
  %235 = getelementptr i8, ptr %234, i32 %227
  store ptr %235, ptr %2, align 8
  br label %236

236:                                              ; preds = %222, %95
  %237 = phi ptr [ %230, %222 ], [ %97, %95 ]
  %238 = phi i32 [ %220, %222 ], [ 1, %95 ]
  %239 = getelementptr inbounds %struct.esp_info, ptr %2, i32 0, i32 2
  %240 = load i32, ptr %239, align 8
  %241 = getelementptr inbounds %struct.esp_info, ptr %2, i32 0, i32 4
  %242 = load i32, ptr %241, align 8
  %243 = getelementptr inbounds %struct.esp_info, ptr %2, i32 0, i32 8
  %244 = load i8, ptr %243, align 8
  %245 = icmp eq i32 %240, 0
  br i1 %245, label %248, label %246

246:                                              ; preds = %236
  call void @llvm.memset.p0.i32(ptr align 1 %237, i8 0, i32 %240, i1 false) #12
  %247 = getelementptr i8, ptr %237, i32 %240
  br label %248

248:                                              ; preds = %246, %236
  %249 = phi ptr [ %247, %246 ], [ %237, %236 ]
  %250 = add i32 %242, -2
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %252, %248
  %253 = phi i32 [ %254, %252 ], [ 0, %248 ]
  %254 = add nuw nsw i32 %253, 1
  %255 = trunc i32 %254 to i8
  %256 = getelementptr i8, ptr %249, i32 %253
  store i8 %255, ptr %256, align 1
  %257 = icmp eq i32 %254, %250
  br i1 %257, label %258, label %252

258:                                              ; preds = %252, %248
  %259 = trunc i32 %250 to i8
  %260 = getelementptr i8, ptr %249, i32 %250
  store i8 %259, ptr %260, align 1
  %261 = add i32 %242, -1
  %262 = getelementptr i8, ptr %249, i32 %261
  store i8 %244, ptr %262, align 1
  %263 = load ptr, ptr %4, align 4
  %264 = call ptr @pskb_put(ptr noundef %1, ptr noundef %263, i32 noundef %6) #12
  br label %265

265:                                              ; preds = %258, %214, %211, %204, %187, %60, %57
  %266 = phi i32 [ %61, %60 ], [ %220, %214 ], [ %238, %258 ], [ %194, %211 ], [ %194, %204 ], [ %194, %187 ], [ %59, %57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %266
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_page_frag_refill(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @refcount_add(i32 noundef %0, ptr noundef %1) unnamed_addr #3 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #12, !srcloc !10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 %0, ptr elementtype(i32) %1) #12, !srcloc !12
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !13

6:                                                ; preds = %2
  %7 = add i32 %4, %0
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !9

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 2, %2 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %11) #12
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_cow_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pskb_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @esp6_output_tail(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 6
  %5 = load i8, ptr %4, align 1
  %6 = icmp sgt i8 %5, -1
  %7 = lshr i8 %5, 4
  %8 = and i8 %7, 8
  %9 = zext i8 %8 to i32
  %10 = select i1 %6, i32 8, i32 12
  %11 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 51
  %12 = load ptr, ptr %11, align 8
  %13 = load i32, ptr %12, align 64
  %14 = getelementptr inbounds %struct.crypto_aead, ptr %12, i32 0, i32 3, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 -40
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.esp_info, ptr %2, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %17, %9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.crypto_alg, ptr %15, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, -64
  %26 = add i32 %20, 63
  %27 = add i32 %26, %25
  %28 = and i32 %27, -64
  %29 = add i32 %28, 67
  br label %30

30:                                               ; preds = %22, %3
  %31 = phi i32 [ %29, %22 ], [ 67, %3 ]
  %32 = getelementptr inbounds %struct.crypto_aead, ptr %12, i32 0, i32 1
  %33 = mul i32 %19, 20
  %34 = add i32 %33, 40
  %35 = load i32, ptr %32, align 4
  %36 = add i32 %35, %31
  %37 = and i32 %36, -4
  %38 = add i32 %34, %37
  %39 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %38, i32 noundef 2592) #13
  %40 = icmp eq ptr %39, null
  br i1 %40, label %323, label %41

41:                                               ; preds = %30
  %42 = load ptr, ptr %14, align 4
  %43 = getelementptr i8, ptr %42, i32 -40
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr i8, ptr %39, i32 %9
  br i1 %45, label %55, label %47

47:                                               ; preds = %41
  %48 = ptrtoint ptr %46 to i32
  %49 = getelementptr inbounds %struct.crypto_alg, ptr %42, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, %48
  %52 = xor i32 %50, -1
  %53 = and i32 %51, %52
  %54 = inttoptr i32 %53 to ptr
  br label %55

55:                                               ; preds = %47, %41
  %56 = phi ptr [ %54, %47 ], [ %46, %41 ]
  %57 = getelementptr i8, ptr %56, i32 %44
  %58 = ptrtoint ptr %57 to i32
  %59 = add i32 %58, 63
  %60 = and i32 %59, -64
  %61 = inttoptr i32 %60 to ptr
  %62 = getelementptr inbounds %struct.crypto_aead, ptr %12, i32 0, i32 3
  %63 = getelementptr inbounds %struct.crypto_async_request, ptr %61, i32 0, i32 3
  store ptr %62, ptr %63, align 16
  %64 = getelementptr %struct.aead_request, ptr %61, i32 1
  %65 = ptrtoint ptr %64 to i32
  %66 = load i32, ptr %32, align 4
  %67 = add i32 %66, 3
  %68 = add i32 %67, %65
  %69 = and i32 %68, -4
  %70 = inttoptr i32 %69 to ptr
  %71 = getelementptr inbounds %struct.esp_info, ptr %2, i32 0, i32 9
  %72 = load i8, ptr %71, align 1, !range !14
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %55
  %75 = load i32, ptr %18, align 4
  %76 = getelementptr %struct.scatterlist, ptr %70, i32 %75
  br label %77

77:                                               ; preds = %74, %55
  %78 = phi ptr [ %76, %74 ], [ %70, %55 ]
  %79 = load ptr, ptr %2, align 8
  %80 = load i8, ptr %4, align 1
  %81 = icmp sgt i8 %80, -1
  br i1 %81, label %126, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 12
  %84 = load i8, ptr %83, align 1
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %106, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 20
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.skb_ext, ptr %89, i32 0, i32 1
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl nuw nsw i32 %92, 3
  %94 = getelementptr i8, ptr %89, i32 %93
  %95 = icmp eq ptr %94, null
  br i1 %95, label %106, label %96

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.sec_path, ptr %94, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %96
  %101 = load i32, ptr %94, align 4
  %102 = icmp eq i32 %101, %98
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = add i32 %98, -1
  %105 = getelementptr %struct.sec_path, ptr %94, i32 0, i32 3, i32 %104
  br label %106

106:                                              ; preds = %103, %100, %96, %87, %82
  %107 = phi ptr [ %105, %103 ], [ null, %100 ], [ null, %96 ], [ null, %87 ], [ null, %82 ]
  %108 = icmp eq ptr %107, null
  %109 = getelementptr inbounds %struct.anon.194, ptr %107, i32 0, i32 1
  %110 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 32
  %111 = select i1 %108, ptr %110, ptr %109
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %114 = load ptr, ptr %113, align 8
  %115 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %116 = load i16, ptr %115, align 2
  %117 = zext i16 %116 to i32
  %118 = getelementptr i8, ptr %114, i32 %117
  %119 = ptrtoint ptr %79 to i32
  %120 = ptrtoint ptr %118 to i32
  %121 = sub i32 %119, %120
  %122 = getelementptr inbounds %struct.esp_output_extra, ptr %39, i32 0, i32 1
  store i32 %121, ptr %122, align 4
  %123 = getelementptr i8, ptr %79, i32 -4
  %124 = load i32, ptr %123, align 4
  store i32 %124, ptr %39, align 64
  %125 = tail call i32 @llvm.bswap.i32(i32 %112) #12
  store i32 %125, ptr %79, align 4
  br label %126

126:                                              ; preds = %106, %77
  %127 = phi ptr [ %123, %106 ], [ %79, %77 ]
  %128 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 1
  %129 = load i32, ptr %128, align 8
  store i32 %129, ptr %127, align 4
  store ptr %127, ptr %2, align 8
  %130 = load i32, ptr %18, align 4
  tail call void @sg_init_table(ptr noundef %70, i32 noundef %130) #12
  %131 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %132 = load ptr, ptr %131, align 4
  %133 = ptrtoint ptr %127 to i32
  %134 = ptrtoint ptr %132 to i32
  %135 = sub i32 %133, %134
  %136 = add i32 %17, %10
  %137 = getelementptr inbounds %struct.esp_info, ptr %2, i32 0, i32 5
  %138 = load i32, ptr %137, align 4
  %139 = add i32 %136, %13
  %140 = add i32 %139, %138
  %141 = tail call i32 @skb_to_sgvec(ptr noundef %1, ptr noundef %70, i32 noundef %135, i32 noundef %140) #12
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %321, label %143, !prof !13

143:                                              ; preds = %126
  %144 = load i8, ptr %71, align 1, !range !14
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %216

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 44
  %148 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %149 = load i32, ptr %148, align 4
  %150 = add i32 %149, 63
  %151 = and i32 %150, -64
  %152 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %152) #12
  %153 = tail call zeroext i1 @skb_page_frag_refill(i32 noundef %151, ptr noundef %147, i32 noundef 2592) #12
  br i1 %153, label %155, label %154, !prof !9

154:                                              ; preds = %146
  tail call void @_raw_spin_unlock_bh(ptr noundef %152) #12
  br label %321

155:                                              ; preds = %146
  %156 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.skb_shared_info, ptr %157, i32 0, i32 2
  store i8 1, ptr %158, align 2
  %159 = load ptr, ptr %147, align 4
  %160 = getelementptr inbounds %struct.page, ptr %159, i32 0, i32 1
  %161 = load volatile i32, ptr %160, align 4
  %162 = and i32 %161, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164, !prof !9

164:                                              ; preds = %155
  %165 = add i32 %161, -1
  br label %168

166:                                              ; preds = %155
  %167 = ptrtoint ptr %159 to i32
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ]
  %170 = inttoptr i32 %169 to ptr
  %171 = getelementptr inbounds %struct.page, ptr %170, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %171) #12, !srcloc !10
  %172 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %171, ptr %171, i32 1, ptr elementtype(i32) %171) #12, !srcloc !11
  %173 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 44, i32 1
  %174 = load i16, ptr %173, align 4
  %175 = zext i16 %174 to i32
  %176 = load i32, ptr %148, align 4
  %177 = load ptr, ptr %156, align 4
  %178 = getelementptr %struct.skb_shared_info, ptr %177, i32 0, i32 12, i32 0
  store ptr %159, ptr %178, align 4
  %179 = getelementptr %struct.skb_shared_info, ptr %177, i32 0, i32 12, i32 0, i32 2
  store i32 %175, ptr %179, align 4
  %180 = getelementptr %struct.skb_shared_info, ptr %177, i32 0, i32 12, i32 0, i32 1
  store i32 %176, ptr %180, align 4
  %181 = load volatile i32, ptr %160, align 4
  %182 = and i32 %181, 1
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %186, label %184, !prof !9

184:                                              ; preds = %168
  %185 = add i32 %181, -1
  br label %188

186:                                              ; preds = %168
  %187 = ptrtoint ptr %159 to i32
  br label %188

188:                                              ; preds = %186, %184
  %189 = phi i32 [ %185, %184 ], [ %187, %186 ]
  %190 = inttoptr i32 %189 to ptr
  %191 = getelementptr inbounds %struct.page, ptr %190, i32 0, i32 1
  %192 = load ptr, ptr %191, align 4
  %193 = ptrtoint ptr %192 to i32
  %194 = and i32 %193, 2
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %188
  %197 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %198 = load i8, ptr %197, align 2
  %199 = or i8 %198, 64
  store i8 %199, ptr %197, align 2
  br label %200

200:                                              ; preds = %196, %188
  %201 = load i16, ptr %173, align 4
  %202 = trunc i32 %151 to i16
  %203 = add i16 %201, %202
  store i16 %203, ptr %173, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %152) #12
  %204 = load ptr, ptr %156, align 4
  %205 = getelementptr inbounds %struct.skb_shared_info, ptr %204, i32 0, i32 2
  %206 = load i8, ptr %205, align 2
  %207 = zext i8 %206 to i32
  %208 = add nuw nsw i32 %207, 1
  tail call void @sg_init_table(ptr noundef %78, i32 noundef %208) #12
  %209 = load ptr, ptr %131, align 4
  %210 = ptrtoint ptr %209 to i32
  %211 = sub i32 %133, %210
  %212 = load i32, ptr %137, align 4
  %213 = add i32 %139, %212
  %214 = tail call i32 @skb_to_sgvec(ptr noundef %1, ptr noundef %78, i32 noundef %211, i32 noundef %213) #12
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %321, label %216

216:                                              ; preds = %200, %143
  %217 = load i8, ptr %4, align 1
  %218 = icmp sgt i8 %217, -1
  %219 = select i1 %218, ptr @esp_output_done, ptr @esp_output_done_esn
  %220 = getelementptr inbounds %struct.crypto_async_request, ptr %61, i32 0, i32 1
  store ptr %219, ptr %220, align 8
  %221 = getelementptr inbounds %struct.crypto_async_request, ptr %61, i32 0, i32 2
  store ptr %1, ptr %221, align 4
  %222 = getelementptr inbounds %struct.crypto_async_request, ptr %61, i32 0, i32 4
  store i32 0, ptr %222, align 4
  %223 = load i32, ptr %137, align 4
  %224 = add i32 %223, %17
  %225 = getelementptr inbounds %struct.aead_request, ptr %61, i32 0, i32 4
  store ptr %70, ptr %225, align 4
  %226 = getelementptr inbounds %struct.aead_request, ptr %61, i32 0, i32 5
  store ptr %78, ptr %226, align 8
  %227 = getelementptr inbounds %struct.aead_request, ptr %61, i32 0, i32 2
  store i32 %224, ptr %227, align 4
  %228 = getelementptr inbounds %struct.aead_request, ptr %61, i32 0, i32 3
  store ptr %56, ptr %228, align 32
  %229 = getelementptr inbounds %struct.aead_request, ptr %61, i32 0, i32 1
  store i32 %10, ptr %229, align 8
  tail call void @llvm.memset.p0.i32(ptr align 1 %56, i8 0, i32 %17, i1 false)
  %230 = getelementptr i8, ptr %56, i32 %17
  %231 = tail call i32 @llvm.smin.i32(i32 %17, i32 8)
  %232 = sub i32 0, %231
  %233 = getelementptr i8, ptr %230, i32 %232
  %234 = getelementptr %struct.esp_info, ptr %2, i32 0, i32 2
  %235 = getelementptr i8, ptr %234, i32 %232
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %233, ptr align 1 %235, i32 %231, i1 false)
  %236 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  store ptr %39, ptr %236, align 4
  %237 = tail call i32 @crypto_aead_encrypt(ptr noundef %61) #12
  switch i32 %237, label %307 [
    i32 -115, label %323
    i32 -28, label %238
    i32 0, label %239
  ]

238:                                              ; preds = %216
  br label %307

239:                                              ; preds = %216
  %240 = load i8, ptr %4, align 1
  %241 = icmp sgt i8 %240, -1
  br i1 %241, label %266, label %242

242:                                              ; preds = %239
  %243 = load ptr, ptr %236, align 4
  %244 = ptrtoint ptr %243 to i32
  %245 = add i32 %244, 3
  %246 = and i32 %245, -4
  %247 = inttoptr i32 %246 to ptr
  %248 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %249 = load ptr, ptr %248, align 8
  %250 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %251 = load i16, ptr %250, align 2
  %252 = zext i16 %251 to i32
  %253 = getelementptr i8, ptr %249, i32 %252
  %254 = load ptr, ptr %131, align 4
  %255 = ptrtoint ptr %253 to i32
  %256 = ptrtoint ptr %254 to i32
  %257 = getelementptr inbounds %struct.esp_output_extra, ptr %247, i32 0, i32 1
  %258 = load i32, ptr %257, align 4
  %259 = sub i32 -4, %256
  %260 = add i32 %259, %258
  %261 = add i32 %260, %255
  %262 = getelementptr i8, ptr %254, i32 %261
  %263 = load i32, ptr %262, align 4
  %264 = getelementptr inbounds %struct.ip_esp_hdr, ptr %262, i32 0, i32 1
  store i32 %263, ptr %264, align 4
  %265 = load i32, ptr %247, align 4
  store i32 %265, ptr %262, align 4
  br label %266

266:                                              ; preds = %242, %239
  %267 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %268 = load ptr, ptr %267, align 8
  %269 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  %270 = load i16, ptr %269, align 2
  %271 = zext i16 %270 to i32
  %272 = getelementptr i8, ptr %268, i32 %271
  %273 = load i8, ptr %272, align 1
  %274 = icmp eq i8 %273, 17
  br i1 %274, label %275, label %307

275:                                              ; preds = %266
  %276 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %277 = load i16, ptr %276, align 2
  %278 = zext i16 %277 to i32
  %279 = getelementptr i8, ptr %268, i32 %278
  %280 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %281 = load i16, ptr %280, align 4
  %282 = zext i16 %281 to i32
  %283 = getelementptr i8, ptr %268, i32 %282
  %284 = getelementptr inbounds %struct.udphdr, ptr %279, i32 0, i32 2
  %285 = load i16, ptr %284, align 2
  %286 = tail call i16 @llvm.bswap.i16(i16 %285) #12
  %287 = zext i16 %286 to i32
  %288 = load ptr, ptr %131, align 4
  %289 = ptrtoint ptr %279 to i32
  %290 = ptrtoint ptr %288 to i32
  %291 = sub i32 %289, %290
  %292 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %293 = load i32, ptr %292, align 8
  %294 = sub i32 %293, %291
  %295 = tail call i32 @skb_checksum(ptr noundef %1, i32 noundef %291, i32 noundef %294, i32 noundef 0) #12
  %296 = getelementptr inbounds %struct.ipv6hdr, ptr %283, i32 0, i32 5
  %297 = getelementptr inbounds %struct.ipv6hdr, ptr %283, i32 0, i32 6
  %298 = tail call i32 @llvm.bswap.i32(i32 %287) #12
  %299 = tail call i32 @__csum_ipv6_magic(ptr noundef %296, ptr noundef %297, i32 noundef %298, i32 noundef 285212672, i32 noundef %295) #12
  %300 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %299) #14, !srcloc !15
  %301 = xor i32 %300, -1
  %302 = lshr i32 %301, 16
  %303 = trunc i32 %302 to i16
  %304 = getelementptr inbounds %struct.udphdr, ptr %279, i32 0, i32 3
  %305 = icmp eq i16 %303, 0
  %306 = select i1 %305, i16 -1, i16 %303
  store i16 %306, ptr %304, align 2
  br label %307

307:                                              ; preds = %275, %266, %238, %216
  %308 = phi i32 [ %237, %216 ], [ 1, %238 ], [ 0, %266 ], [ 0, %275 ]
  %309 = icmp eq ptr %78, %70
  br i1 %309, label %311, label %310

310:                                              ; preds = %307
  tail call fastcc void @esp_ssg_unref(ptr noundef %0, ptr noundef nonnull %39)
  br label %311

311:                                              ; preds = %310, %307
  %312 = icmp eq i32 %308, 0
  br i1 %312, label %313, label %321

313:                                              ; preds = %311
  %314 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 24
  %315 = load ptr, ptr %314, align 8
  %316 = icmp eq ptr %315, null
  br i1 %316, label %321, label %317

317:                                              ; preds = %313
  %318 = load i16, ptr %315, align 4
  %319 = icmp eq i16 %318, 7
  br i1 %319, label %320, label %321

320:                                              ; preds = %317
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #12
  br label %321

321:                                              ; preds = %320, %317, %313, %311, %200, %154, %126
  %322 = phi i32 [ %141, %126 ], [ %308, %311 ], [ -95, %320 ], [ 0, %317 ], [ 0, %313 ], [ %141, %154 ], [ %214, %200 ]
  tail call void @kfree(ptr noundef nonnull %39) #12
  br label %323

323:                                              ; preds = %321, %216, %30
  %324 = phi i32 [ %322, %321 ], [ %237, %216 ], [ -12, %30 ]
  ret i32 %324
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_to_sgvec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esp_output_done_esn(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 36
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = add i32 %7, 3
  %9 = and i32 %8, -4
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 16
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 13, i32 0, i32 17
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = ptrtoint ptr %16 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = getelementptr inbounds %struct.esp_output_extra, ptr %10, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 -4, %20
  %24 = add i32 %23, %22
  %25 = add i32 %24, %19
  %26 = getelementptr i8, ptr %18, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ip_esp_hdr, ptr %26, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = load i32, ptr %10, align 4
  store i32 %29, ptr %26, align 4
  tail call void @esp_output_done(ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esp_output_done(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 12
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 20
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.skb_ext, ptr %11, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 3
  %16 = getelementptr i8, ptr %11, i32 %15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.sec_path, ptr %16, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %16, align 4
  %24 = icmp eq i32 %23, %20
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = add i32 %20, -1
  %27 = getelementptr %struct.sec_path, ptr %16, i32 0, i32 3, i32 %26
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.xfrm_offload, ptr %27, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 128
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = getelementptr %struct.sec_path, ptr %16, i32 0, i32 2, i32 %26
  br label %44

36:                                               ; preds = %29, %25, %22, %18, %9, %2
  %37 = phi i1 [ false, %29 ], [ true, %25 ], [ true, %22 ], [ true, %18 ], [ true, %9 ], [ true, %2 ]
  %38 = phi ptr [ %27, %29 ], [ null, %25 ], [ null, %22 ], [ null, %18 ], [ null, %9 ], [ null, %2 ]
  %39 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 4
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, -2
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr inbounds %struct.dst_entry, ptr %42, i32 0, i32 4
  br label %44

44:                                               ; preds = %36, %34
  %45 = phi i1 [ false, %34 ], [ %37, %36 ]
  %46 = phi ptr [ %27, %34 ], [ %38, %36 ]
  %47 = phi ptr [ %35, %34 ], [ %43, %36 ]
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 36
  %50 = load ptr, ptr %49, align 4
  tail call fastcc void @esp_ssg_unref(ptr noundef %48, ptr noundef %50)
  tail call void @kfree(ptr noundef %50) #12
  %51 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 16
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 13, i32 0, i32 19
  %54 = load i16, ptr %53, align 2
  %55 = zext i16 %54 to i32
  %56 = getelementptr i8, ptr %52, i32 %55
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 17
  br i1 %58, label %59, label %92

59:                                               ; preds = %44
  %60 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 13, i32 0, i32 17
  %61 = load i16, ptr %60, align 2
  %62 = zext i16 %61 to i32
  %63 = getelementptr i8, ptr %52, i32 %62
  %64 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 13, i32 0, i32 18
  %65 = load i16, ptr %64, align 4
  %66 = zext i16 %65 to i32
  %67 = getelementptr i8, ptr %52, i32 %66
  %68 = getelementptr inbounds %struct.udphdr, ptr %63, i32 0, i32 2
  %69 = load i16, ptr %68, align 2
  %70 = tail call i16 @llvm.bswap.i16(i16 %69) #12
  %71 = zext i16 %70 to i32
  %72 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %73 = load ptr, ptr %72, align 4
  %74 = ptrtoint ptr %63 to i32
  %75 = ptrtoint ptr %73 to i32
  %76 = sub i32 %74, %75
  %77 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 5
  %78 = load i32, ptr %77, align 8
  %79 = sub i32 %78, %76
  %80 = tail call i32 @skb_checksum(ptr noundef %4, i32 noundef %76, i32 noundef %79, i32 noundef 0) #12
  %81 = getelementptr inbounds %struct.ipv6hdr, ptr %67, i32 0, i32 5
  %82 = getelementptr inbounds %struct.ipv6hdr, ptr %67, i32 0, i32 6
  %83 = tail call i32 @llvm.bswap.i32(i32 %71) #12
  %84 = tail call i32 @__csum_ipv6_magic(ptr noundef %81, ptr noundef %82, i32 noundef %83, i32 noundef 285212672, i32 noundef %80) #12
  %85 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %84) #14, !srcloc !15
  %86 = xor i32 %85, -1
  %87 = lshr i32 %86, 16
  %88 = trunc i32 %87 to i16
  %89 = getelementptr inbounds %struct.udphdr, ptr %63, i32 0, i32 3
  %90 = icmp eq i16 %88, 0
  %91 = select i1 %90, i16 -1, i16 %88
  store i16 %91, ptr %89, align 2
  br label %92

92:                                               ; preds = %59, %44
  br i1 %45, label %116, label %93

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.xfrm_offload, ptr %46, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 128
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %116, label %98

98:                                               ; preds = %93
  %99 = icmp eq i32 %1, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %98
  tail call void @kfree_skb_reason(ptr noundef %4, i32 noundef 0) #12
  br label %130

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %103 = load ptr, ptr %102, align 4
  %104 = load ptr, ptr %51, align 8
  %105 = load i16, ptr %53, align 2
  %106 = zext i16 %105 to i32
  %107 = getelementptr i8, ptr %104, i32 %106
  %108 = ptrtoint ptr %103 to i32
  %109 = ptrtoint ptr %107 to i32
  %110 = sub i32 %108, %109
  %111 = tail call ptr @skb_push(ptr noundef %4, i32 noundef %110) #12
  %112 = load i8, ptr %5, align 1
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %130, label %115

115:                                              ; preds = %101
  tail call void @__skb_ext_del(ptr noundef %4, i32 noundef 0) #12
  br label %130

116:                                              ; preds = %93, %92
  %117 = icmp eq i32 %1, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.xfrm_state, ptr %48, i32 0, i32 24
  %120 = load ptr, ptr %119, align 8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i16, ptr %120, align 4
  %124 = icmp eq i16 %123, 7
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  tail call void @kfree_skb_reason(ptr noundef %4, i32 noundef 0) #12
  br label %130

126:                                              ; preds = %122, %118, %116
  %127 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = tail call i32 @xfrm_output_resume(ptr noundef %128, ptr noundef %4, i32 noundef %1) #12
  br label %130

130:                                              ; preds = %126, %125, %115, %101, %100
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @esp_ssg_unref(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 51
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 6
  %6 = load i8, ptr %5, align 1
  %7 = lshr i8 %6, 4
  %8 = and i8 %7, 8
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.crypto_aead, ptr %4, i32 0, i32 3, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -40
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr i8, ptr %1, i32 %9
  br i1 %14, label %24, label %16

16:                                               ; preds = %2
  %17 = ptrtoint ptr %15 to i32
  %18 = getelementptr inbounds %struct.crypto_alg, ptr %11, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %17
  %21 = xor i32 %19, -1
  %22 = and i32 %20, %21
  %23 = inttoptr i32 %22 to ptr
  br label %24

24:                                               ; preds = %16, %2
  %25 = phi ptr [ %23, %16 ], [ %15, %2 ]
  %26 = getelementptr i8, ptr %25, i32 %13
  %27 = ptrtoint ptr %26 to i32
  %28 = add i32 %27, 63
  %29 = and i32 %28, -64
  %30 = inttoptr i32 %29 to ptr
  %31 = getelementptr inbounds %struct.crypto_aead, ptr %4, i32 0, i32 3
  %32 = getelementptr inbounds %struct.crypto_async_request, ptr %30, i32 0, i32 3
  store ptr %31, ptr %32, align 16
  %33 = getelementptr inbounds %struct.aead_request, ptr %30, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.aead_request, ptr %30, i32 0, i32 5
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %34, %36
  br i1 %37, label %63, label %38

38:                                               ; preds = %24
  %39 = tail call ptr @sg_next(ptr noundef %34) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %63, label %41

41:                                               ; preds = %60, %38
  %42 = phi ptr [ %61, %60 ], [ %39, %38 ]
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, -4
  %45 = inttoptr i32 %44 to ptr
  %46 = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 1
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50, !prof !9

50:                                               ; preds = %41
  %51 = add i32 %47, -1
  %52 = inttoptr i32 %51 to ptr
  br label %53

53:                                               ; preds = %50, %41
  %54 = phi ptr [ %45, %41 ], [ %52, %50 ]
  %55 = getelementptr inbounds %struct.page, ptr %54, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #12, !srcloc !10
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %55, ptr %55, i32 1, ptr elementtype(i32) %55) #12, !srcloc !17
  %57 = extractvalue { i32, i32 } %56, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  tail call void @__put_page(ptr noundef %54) #12
  br label %60

60:                                               ; preds = %59, %53
  %61 = tail call ptr @sg_next(ptr noundef nonnull %42) #12
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %41

63:                                               ; preds = %60, %38, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @esp6_input_done2(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca %union.xfrm_address_t, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, ptr null, align 2147483648
  %13 = add i32 %12, -1
  %14 = getelementptr %struct.sec_path, ptr null, i32 0, i32 2, i32 %13
  %15 = load ptr, ptr %14, align 4
  br label %37

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.skb_ext, ptr %18, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 3
  %23 = getelementptr i8, ptr %18, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -1
  %26 = getelementptr %struct.sec_path, ptr %23, i32 0, i32 2, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %23, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.sec_path, ptr %23, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = icmp eq i32 %24, %31
  %34 = select i1 %32, i1 %33, i1 false
  %35 = getelementptr %struct.sec_path, ptr %23, i32 0, i32 3, i32 %25
  %36 = select i1 %34, ptr %35, ptr null
  br label %37

37:                                               ; preds = %29, %16, %11
  %38 = phi ptr [ %27, %16 ], [ %15, %11 ], [ %27, %29 ]
  %39 = phi ptr [ null, %16 ], [ null, %11 ], [ %36, %29 ]
  %40 = getelementptr inbounds %struct.xfrm_state, ptr %38, i32 0, i32 51
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.crypto_aead, ptr %41, i32 0, i32 3, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 -40
  %45 = load i32, ptr %44, align 8
  %46 = add i32 %45, 8
  %47 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %48 = load i16, ptr %47, align 2
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %51 = load i16, ptr %50, align 4
  %52 = zext i16 %51 to i32
  %53 = sub nsw i32 %49, %52
  %54 = icmp eq ptr %39, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %37
  %56 = getelementptr inbounds %struct.xfrm_offload, ptr %39, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55, %37
  %61 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 36
  %62 = load ptr, ptr %61, align 4
  tail call void @kfree(ptr noundef %62) #12
  br label %63

63:                                               ; preds = %60, %55
  %64 = icmp eq i32 %1, 0
  br i1 %64, label %65, label %295, !prof !9

65:                                               ; preds = %63
  %66 = load i8, ptr %7, align 1
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32, ptr null, align 2147483648
  %71 = add i32 %70, -1
  %72 = getelementptr %struct.sec_path, ptr null, i32 0, i32 2, i32 %71
  %73 = load ptr, ptr %72, align 4
  br label %95

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.skb_ext, ptr %76, i32 0, i32 1
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 3
  %81 = getelementptr i8, ptr %76, i32 %80
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, -1
  %84 = getelementptr %struct.sec_path, ptr %81, i32 0, i32 2, i32 %83
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %81, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %74
  %88 = getelementptr inbounds %struct.sec_path, ptr %81, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = icmp ne i32 %89, 0
  %91 = icmp eq i32 %82, %89
  %92 = select i1 %90, i1 %91, i1 false
  %93 = getelementptr %struct.sec_path, ptr %81, i32 0, i32 3, i32 %83
  %94 = select i1 %92, ptr %93, ptr null
  br label %95

95:                                               ; preds = %87, %74, %69
  %96 = phi ptr [ %85, %74 ], [ %73, %69 ], [ %85, %87 ]
  %97 = phi ptr [ null, %74 ], [ null, %69 ], [ %94, %87 ]
  %98 = getelementptr inbounds %struct.xfrm_state, ptr %96, i32 0, i32 51
  %99 = load ptr, ptr %98, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 0, ptr %3, align 2, !annotation !8
  %100 = load i32, ptr %99, align 64
  %101 = getelementptr inbounds %struct.crypto_aead, ptr %99, i32 0, i32 3, i32 3
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %102, i32 -40
  %104 = load i32, ptr %103, align 8
  %105 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %106 = load i32, ptr %105, align 8
  %107 = sub i32 -8, %104
  %108 = add i32 %107, %106
  %109 = icmp eq ptr %97, null
  br i1 %109, label %118, label %110

110:                                              ; preds = %95
  %111 = getelementptr inbounds %struct.xfrm_offload, ptr %97, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 64
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.xfrm_offload, ptr %97, i32 0, i32 3
  %117 = load i8, ptr %116, align 4
  br label %171

118:                                              ; preds = %110, %95
  %119 = sub i32 -2, %100
  %120 = add i32 %119, %106
  %121 = call i32 @skb_copy_bits(ptr noundef %0, i32 noundef %120, ptr noundef nonnull %3, i32 noundef 2) #12
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %124, label %123, !prof !9

123:                                              ; preds = %118
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/esp6.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 763, 0\0A.popsection", ""() #12, !srcloc !19
  unreachable

124:                                              ; preds = %118
  %125 = load i8, ptr %3, align 2
  %126 = zext i8 %125 to i32
  %127 = add i32 %100, 2
  %128 = add i32 %127, %126
  %129 = icmp slt i32 %128, %108
  br i1 %129, label %130, label %170

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %132 = load i16, ptr %131, align 8
  %133 = and i16 %132, 96
  %134 = icmp eq i16 %133, 64
  %135 = load i32, ptr %105, align 8
  %136 = sub i32 %135, %128
  br i1 %134, label %137, label %152

137:                                              ; preds = %130
  %138 = call i32 @skb_checksum(ptr noundef %0, i32 noundef %136, i32 noundef %128, i32 noundef 0) #12
  %139 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %140 = load i32, ptr %139, align 4
  %141 = load i32, ptr %105, align 8
  %142 = sub i32 %141, %128
  %143 = xor i32 %138, -1
  %144 = and i32 %142, 1
  %145 = icmp eq i32 %144, 0
  %146 = call i32 @llvm.fshl.i32(i32 %143, i32 %143, i32 24) #12
  %147 = select i1 %145, i32 %143, i32 %146
  %148 = add i32 %147, %140
  %149 = icmp ult i32 %148, %147
  %150 = zext i1 %149 to i32
  %151 = add i32 %148, %150
  store i32 %151, ptr %139, align 4
  br label %152

152:                                              ; preds = %137, %130
  %153 = phi i32 [ %142, %137 ], [ %136, %130 ]
  %154 = phi i32 [ %141, %137 ], [ %135, %130 ]
  %155 = icmp ugt i32 %154, %153
  br i1 %155, label %156, label %167

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %158 = load i32, ptr %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %156
  %161 = call i32 @___pskb_trim(ptr noundef %0, i32 noundef %153) #12
  br label %167

162:                                              ; preds = %156
  store i32 %153, ptr %105, align 8
  %163 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr i8, ptr %164, i32 %153
  %166 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  store ptr %165, ptr %166, align 8
  br label %167

167:                                              ; preds = %162, %160, %152
  %168 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %169 = load i8, ptr %168, align 1
  br label %171

170:                                              ; preds = %124
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  br label %295

171:                                              ; preds = %167, %115
  %172 = phi i8 [ %169, %167 ], [ %117, %115 ]
  %173 = zext i8 %172 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  %174 = getelementptr inbounds %struct.xfrm_state, ptr %38, i32 0, i32 24
  %175 = load ptr, ptr %174, align 8
  %176 = icmp eq ptr %175, null
  br i1 %176, label %245, label %177

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %179 = load ptr, ptr %178, align 8
  %180 = load i16, ptr %50, align 4
  %181 = zext i16 %180 to i32
  %182 = getelementptr i8, ptr %179, i32 %181
  %183 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %184 = load ptr, ptr %183, align 4
  %185 = ptrtoint ptr %182 to i32
  %186 = ptrtoint ptr %184 to i32
  %187 = sub i32 40, %186
  %188 = add i32 %187, %185
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  %189 = getelementptr inbounds %struct.ipv6hdr, ptr %182, i32 0, i32 3
  %190 = load i8, ptr %189, align 2
  store i8 %190, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 0, ptr %5, align 2, !annotation !8
  %191 = call i32 @ipv6_skip_exthdr(ptr noundef %0, i32 noundef %188, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %243, label %193

193:                                              ; preds = %177
  %194 = add i32 %191, %53
  %195 = load ptr, ptr %174, align 8
  %196 = load i16, ptr %195, align 4
  switch i16 %196, label %197 [
    i16 7, label %200
    i16 2, label %200
    i16 1, label %200
  ]

197:                                              ; preds = %193
  %198 = load i1, ptr @esp6_input_done2.__already_done, align 1
  br i1 %198, label %243, label %199, !prof !9

199:                                              ; preds = %197
  store i1 true, ptr @esp6_input_done2.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 833, i32 noundef 9, ptr noundef null) #12
  br label %243

200:                                              ; preds = %193, %193, %193
  %201 = load ptr, ptr %183, align 4
  %202 = getelementptr i8, ptr %201, i32 %191
  %203 = load i16, ptr %202, align 2
  %204 = getelementptr inbounds %struct.ipv6hdr, ptr %182, i32 0, i32 5
  %205 = getelementptr inbounds %struct.xfrm_state, ptr %38, i32 0, i32 14, i32 8
  %206 = load i32, ptr %204, align 4
  %207 = load i32, ptr %205, align 4
  %208 = xor i32 %207, %206
  %209 = getelementptr [4 x i32], ptr %204, i32 0, i32 1
  %210 = load i32, ptr %209, align 4
  %211 = getelementptr %struct.xfrm_state, ptr %38, i32 0, i32 14, i32 8, i32 0, i32 1
  %212 = load i32, ptr %211, align 4
  %213 = xor i32 %212, %210
  %214 = or i32 %213, %208
  %215 = getelementptr [4 x i32], ptr %204, i32 0, i32 2
  %216 = load i32, ptr %215, align 4
  %217 = getelementptr %struct.xfrm_state, ptr %38, i32 0, i32 14, i32 8, i32 0, i32 2
  %218 = load i32, ptr %217, align 4
  %219 = xor i32 %218, %216
  %220 = or i32 %214, %219
  %221 = getelementptr [4 x i32], ptr %204, i32 0, i32 3
  %222 = load i32, ptr %221, align 4
  %223 = getelementptr %struct.xfrm_state, ptr %38, i32 0, i32 14, i32 8, i32 0, i32 3
  %224 = load i32, ptr %223, align 4
  %225 = xor i32 %224, %222
  %226 = or i32 %220, %225
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %200
  %229 = getelementptr inbounds %struct.xfrm_encap_tmpl, ptr %175, i32 0, i32 1
  %230 = load i16, ptr %229, align 2
  %231 = icmp eq i16 %203, %230
  br i1 %231, label %234, label %232

232:                                              ; preds = %228, %200
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef align 4 dereferenceable(16) %204, i32 16, i1 false)
  %233 = call i32 @km_new_mapping(ptr noundef %38, ptr noundef nonnull %6, i16 noundef zeroext %203) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  br label %234

234:                                              ; preds = %232, %228
  %235 = getelementptr inbounds %struct.xfrm_state, ptr %38, i32 0, i32 14, i32 1
  %236 = load i8, ptr %235, align 4
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %240 = load i16, ptr %239, align 8
  %241 = and i16 %240, -97
  %242 = or i16 %241, 32
  store i16 %242, ptr %239, align 8
  br label %244

243:                                              ; preds = %199, %197, %177
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  br label %295

244:                                              ; preds = %238, %234
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  br label %245

245:                                              ; preds = %244, %171
  %246 = phi i32 [ %194, %244 ], [ %53, %171 ]
  %247 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %248 = load ptr, ptr %247, align 8
  %249 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %250 = load i16, ptr %249, align 8
  %251 = lshr i16 %250, 5
  %252 = trunc i16 %251 to i2
  switch i2 %252, label %278 [
    i2 -2, label %253
    i2 -1, label %265
  ]

253:                                              ; preds = %245
  %254 = load i16, ptr %47, align 2
  %255 = zext i16 %254 to i32
  %256 = load i16, ptr %50, align 4
  %257 = zext i16 %256 to i32
  %258 = sub nsw i32 %255, %257
  %259 = getelementptr i8, ptr %248, i32 %257
  %260 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %261 = load i32, ptr %260, align 4
  %262 = sub i32 0, %261
  %263 = call i32 @csum_partial(ptr noundef %259, i32 noundef %258, i32 noundef %262) #12
  %264 = sub i32 0, %263
  store i32 %264, ptr %260, align 4
  br label %278

265:                                              ; preds = %245
  %266 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %267 = load i16, ptr %266, align 4
  %268 = zext i16 %267 to i32
  %269 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %270 = load ptr, ptr %269, align 4
  %271 = ptrtoint ptr %270 to i32
  %272 = ptrtoint ptr %248 to i32
  %273 = add i32 %268, %272
  %274 = sub i32 %273, %271
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %265
  %277 = and i16 %250, -97
  store i16 %277, ptr %249, align 8
  br label %278

278:                                              ; preds = %276, %265, %253, %245
  %279 = call ptr @skb_pull_rcsum(ptr noundef %0, i32 noundef %46) #12
  %280 = getelementptr inbounds %struct.xfrm_state, ptr %38, i32 0, i32 14, i32 1
  %281 = load i8, ptr %280, align 4
  %282 = icmp eq i8 %281, 1
  %283 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %284 = load ptr, ptr %283, align 4
  %285 = load ptr, ptr %247, align 8
  %286 = ptrtoint ptr %284 to i32
  %287 = ptrtoint ptr %285 to i32
  %288 = sub i32 %286, %287
  %289 = trunc i32 %288 to i16
  %290 = trunc i32 %246 to i16
  %291 = select i1 %282, i16 0, i16 %290
  %292 = sub i16 %289, %291
  store i16 %292, ptr %47, align 2
  %293 = icmp eq i8 %172, 59
  %294 = select i1 %293, i32 -22, i32 %173
  br label %295

295:                                              ; preds = %278, %243, %170, %63
  %296 = phi i32 [ %1, %63 ], [ -22, %170 ], [ %294, %278 ], [ -22, %243 ]
  ret i32 %296
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @km_new_mapping(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #6 section ".init.text" {
  %1 = tail call i32 @xfrm_register_type(ptr noundef nonnull @esp6_type, i16 noundef zeroext 10) #12
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.esp6_init) #15
  br label %10

5:                                                ; preds = %0
  %6 = tail call i32 @xfrm6_protocol_register(ptr noundef nonnull @esp6_protocol, i8 noundef zeroext 50) #12
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.esp6_init) #15
  tail call void @xfrm_unregister_type(ptr noundef nonnull @esp6_type, i16 noundef zeroext 10) #12
  br label %10

10:                                               ; preds = %8, %5, %3
  %11 = phi i32 [ -11, %3 ], [ -11, %8 ], [ 0, %5 ]
  ret i32 %11
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #6 section ".exit.text" {
  %1 = tail call i32 @xfrm6_protocol_deregister(ptr noundef nonnull @esp6_protocol, i8 noundef zeroext 50) #12
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.esp6_fini) #15
  br label %5

5:                                                ; preds = %3, %0
  tail call void @xfrm_unregister_type(ptr noundef nonnull @esp6_type, i16 noundef zeroext 10) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_output_resume(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_ext_del(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_register_type(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_protocol_register(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_unregister_type(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @esp6_init_state(ptr nocapture noundef %0) #0 {
  %2 = alloca [128 x i8], align 1
  %3 = alloca [128 x i8], align 1
  %4 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 51
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %3, i8 0, i32 128, i1 false) #12, !annotation !8
  %9 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 20
  %10 = load ptr, ptr %9, align 8
  %11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull @.str.4, ptr noundef %10, ptr noundef nonnull %6) #12
  %12 = icmp sgt i32 %11, 127
  br i1 %12, label %32, label %13

13:                                               ; preds = %8
  %14 = call ptr @crypto_alloc_aead(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0) #12
  %15 = ptrtoint ptr %14 to i32
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %32, label %17

17:                                               ; preds = %13
  store ptr %14, ptr %4, align 8
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.xfrm_algo_aead, ptr %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.xfrm_algo_aead, ptr %18, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 7
  %23 = lshr i32 %22, 3
  %24 = call i32 @crypto_aead_setkey(ptr noundef %14, ptr noundef %19, i32 noundef %23) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr inbounds %struct.xfrm_algo_aead, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 3
  %31 = call i32 @crypto_aead_setauthsize(ptr noundef %14, i32 noundef %30) #12
  br label %32

32:                                               ; preds = %26, %17, %13, %8
  %33 = phi i32 [ -36, %8 ], [ %15, %13 ], [ %24, %17 ], [ %31, %26 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #12
  br label %134

34:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %2, i8 0, i32 128, i1 false) #12, !annotation !8
  %35 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %132, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 6
  %40 = load i8, ptr %39, align 1
  %41 = icmp sgt i8 %40, -1
  %42 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 20
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, ptr @.str.6, ptr %43
  %46 = select i1 %44, ptr @.str.6, ptr @.str.7
  %47 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 16
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr @.str.8, ptr %48
  %51 = select i1 %44, ptr @.str.6, ptr @.str.9
  br i1 %41, label %55, label %52

52:                                               ; preds = %38
  %53 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 128, ptr noundef nonnull @.str.5, ptr noundef %45, ptr noundef nonnull %46, ptr noundef nonnull %50, ptr noundef nonnull %36, ptr noundef nonnull %51) #12
  %54 = icmp sgt i32 %53, 127
  br i1 %54, label %132, label %58

55:                                               ; preds = %38
  %56 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 128, ptr noundef nonnull @.str.10, ptr noundef %45, ptr noundef nonnull %46, ptr noundef nonnull %50, ptr noundef nonnull %36, ptr noundef nonnull %51) #12
  %57 = icmp sgt i32 %56, 127
  br i1 %57, label %132, label %58

58:                                               ; preds = %55, %52
  %59 = call ptr @crypto_alloc_aead(ptr noundef nonnull %2, i32 noundef 0, i32 noundef 0) #12
  %60 = ptrtoint ptr %59 to i32
  %61 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %132, label %62

62:                                               ; preds = %58
  store ptr %59, ptr %4, align 8
  %63 = load ptr, ptr %47, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.xfrm_algo_auth, ptr %63, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, 7
  %69 = lshr i32 %68, 3
  br label %70

70:                                               ; preds = %65, %62
  %71 = phi i32 [ %69, %65 ], [ 0, %62 ]
  %72 = load ptr, ptr %35, align 4
  %73 = getelementptr inbounds %struct.xfrm_algo, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, 7
  %76 = lshr i32 %75, 3
  %77 = add nuw nsw i32 %76, %71
  %78 = add nuw nsw i32 %77, 8
  %79 = call noalias align 64 ptr @__kmalloc(i32 noundef %78, i32 noundef 3264) #13
  %80 = icmp eq ptr %79, null
  br i1 %80, label %132, label %81

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct.rtattr, ptr %79, i32 0, i32 1
  store i16 1, ptr %82, align 2
  store i16 8, ptr %79, align 64
  %83 = getelementptr i8, ptr %79, i32 4
  %84 = getelementptr i8, ptr %79, i32 8
  %85 = load ptr, ptr %47, align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %117, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.xfrm_algo_auth, ptr %85, i32 0, i32 3
  %89 = getelementptr inbounds %struct.xfrm_algo_auth, ptr %85, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, 7
  %92 = lshr i32 %91, 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %84, ptr align 4 %88, i32 %92, i1 false) #12
  %93 = load i32, ptr %89, align 4
  %94 = add i32 %93, 7
  %95 = lshr i32 %94, 3
  %96 = getelementptr i8, ptr %84, i32 %95
  %97 = call ptr @xfrm_aalg_get_byname(ptr noundef nonnull %85, i32 noundef 0) #12
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %100, !prof !13

99:                                               ; preds = %87
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/esp6.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1154, 0\0A.popsection", ""() #12, !srcloc !20
  unreachable

100:                                              ; preds = %87
  %101 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %97, i32 0, i32 3
  %102 = getelementptr inbounds %struct.xfrm_algo_auth_info, ptr %101, i32 0, i32 1
  %103 = load i16, ptr %102, align 2
  %104 = lshr i16 %103, 3
  %105 = zext i16 %104 to i32
  %106 = load i32, ptr %59, align 64
  %107 = icmp eq i32 %106, %105
  %108 = load ptr, ptr %47, align 8
  br i1 %107, label %111, label %109

109:                                              ; preds = %100
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %108, i32 noundef %106, i32 noundef %105) #15
  br label %130

111:                                              ; preds = %100
  %112 = getelementptr inbounds %struct.xfrm_algo_auth, ptr %108, i32 0, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = lshr i32 %113, 3
  %115 = call i32 @crypto_aead_setauthsize(ptr noundef %59, i32 noundef %114) #12
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %111, %81
  %118 = phi ptr [ %84, %81 ], [ %96, %111 ]
  %119 = load ptr, ptr %35, align 4
  %120 = getelementptr inbounds %struct.xfrm_algo, ptr %119, i32 0, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = add i32 %121, 7
  %123 = lshr i32 %122, 3
  %124 = call i32 @llvm.bswap.i32(i32 %123) #12
  store i32 %124, ptr %83, align 4
  %125 = getelementptr inbounds %struct.xfrm_algo, ptr %119, i32 0, i32 2
  %126 = load i32, ptr %120, align 4
  %127 = add i32 %126, 7
  %128 = lshr i32 %127, 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %118, ptr align 4 %125, i32 %128, i1 false) #12
  %129 = call i32 @crypto_aead_setkey(ptr noundef %59, ptr noundef nonnull %79, i32 noundef %78) #12
  br label %130

130:                                              ; preds = %117, %111, %109
  %131 = phi i32 [ %129, %117 ], [ %115, %111 ], [ -22, %109 ]
  call void @kfree(ptr noundef nonnull %79) #12
  br label %132

132:                                              ; preds = %130, %70, %58, %55, %52, %34
  %133 = phi i32 [ -36, %52 ], [ %60, %58 ], [ %131, %130 ], [ -12, %70 ], [ -36, %55 ], [ -22, %34 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #12
  br label %134

134:                                              ; preds = %132, %32
  %135 = phi i32 [ %33, %32 ], [ %133, %132 ]
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %175

137:                                              ; preds = %134
  %138 = load ptr, ptr %4, align 8
  %139 = getelementptr inbounds %struct.crypto_aead, ptr %138, i32 0, i32 3, i32 3
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr i8, ptr %140, i32 -40
  %142 = load i32, ptr %141, align 8
  %143 = add i32 %142, 8
  %144 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 9
  store i32 %143, ptr %144, align 4
  %145 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 1
  %146 = load i8, ptr %145, align 4
  switch i8 %146, label %154 [
    i8 4, label %147
    i8 1, label %151
  ]

147:                                              ; preds = %137
  %148 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 8, i32 6
  %149 = load i16, ptr %148, align 8
  %150 = icmp eq i16 %149, 10
  br i1 %150, label %154, label %151

151:                                              ; preds = %147, %137
  %152 = phi i32 [ 36, %147 ], [ 48, %137 ]
  %153 = add i32 %142, %152
  store i32 %153, ptr %144, align 4
  br label %154

154:                                              ; preds = %151, %147, %137
  %155 = phi i32 [ %143, %137 ], [ %143, %147 ], [ %153, %151 ]
  %156 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 24
  %157 = load ptr, ptr %156, align 8
  %158 = icmp eq ptr %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %154
  %160 = load i16, ptr %157, align 4
  switch i16 %160, label %175 [
    i16 2, label %162
    i16 1, label %161
  ]

161:                                              ; preds = %159
  br label %162

162:                                              ; preds = %161, %159
  %163 = phi i32 [ 16, %161 ], [ 8, %159 ]
  %164 = add i32 %155, %163
  store i32 %164, ptr %144, align 4
  br label %165

165:                                              ; preds = %162, %154
  %166 = load ptr, ptr %139, align 4
  %167 = getelementptr inbounds %struct.crypto_alg, ptr %166, i32 0, i32 3
  %168 = load i32, ptr %167, align 4
  %169 = add i32 %168, 3
  %170 = and i32 %169, -4
  %171 = load i32, ptr %138, align 64
  %172 = add i32 %171, 1
  %173 = add i32 %172, %170
  %174 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 10
  store i32 %173, ptr %174, align 8
  br label %175

175:                                              ; preds = %165, %159, %134
  %176 = phi i32 [ %135, %134 ], [ 0, %165 ], [ -22, %159 ]
  ret i32 %176
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esp6_destroy(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 51
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.crypto_aead, ptr %3, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %3, ptr noundef %6) #12
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @esp6_input(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 51
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store ptr null, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.crypto_aead, ptr %5, i32 0, i32 3, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -40
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, -8
  %13 = add i32 %9, 8
  %14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 %11, %15
  %17 = icmp ugt i32 %13, %16
  br i1 %17, label %18, label %24, !prof !13

18:                                               ; preds = %2
  %19 = icmp ult i32 %11, %13
  br i1 %19, label %195, label %20, !prof !13

20:                                               ; preds = %18
  %21 = sub i32 %13, %16
  %22 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %21) #12
  %23 = icmp eq ptr %22, null
  br label %24

24:                                               ; preds = %20, %2
  %25 = phi i1 [ %23, %20 ], [ false, %2 ]
  %26 = sub i32 %12, %9
  %27 = icmp slt i32 %26, 1
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %195, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 6
  %31 = load i8, ptr %30, align 1
  %32 = icmp sgt i8 %31, -1
  %33 = select i1 %32, i32 8, i32 12
  %34 = lshr i8 %31, 5
  %35 = and i8 %34, 4
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %38 = load i8, ptr %37, align 2
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.skb_shared_info, ptr %43, i32 0, i32 10
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %62

48:                                               ; preds = %41, %29
  %49 = load i32, ptr %14, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.skb_shared_info, ptr %53, i32 0, i32 6
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.skb_shared_info, ptr %53, i32 0, i32 2
  %59 = load i8, ptr %58, align 2
  %60 = zext i8 %59 to i32
  %61 = add nuw nsw i32 %60, 1
  br label %65

62:                                               ; preds = %51, %41
  %63 = call i32 @skb_cow_data(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #12
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %195, label %65

65:                                               ; preds = %62, %57, %48
  %66 = phi i32 [ %63, %62 ], [ %61, %57 ], [ 1, %48 ]
  %67 = load ptr, ptr %6, align 4
  %68 = getelementptr i8, ptr %67, i32 -40
  %69 = load i32, ptr %68, align 8
  %70 = add i32 %69, %36
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.crypto_alg, ptr %67, i32 0, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, -64
  %76 = add i32 %70, 63
  %77 = add i32 %76, %75
  %78 = and i32 %77, -64
  %79 = add i32 %78, 67
  br label %80

80:                                               ; preds = %72, %65
  %81 = phi i32 [ %79, %72 ], [ 67, %65 ]
  %82 = getelementptr inbounds %struct.crypto_aead, ptr %5, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, %81
  %85 = and i32 %84, -4
  %86 = mul i32 %66, 20
  %87 = add i32 %85, %86
  %88 = call noalias align 64 ptr @__kmalloc(i32 noundef %87, i32 noundef 2592) #13
  %89 = icmp eq ptr %88, null
  br i1 %89, label %195, label %90

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  store ptr %88, ptr %91, align 4
  %92 = load ptr, ptr %6, align 4
  %93 = getelementptr i8, ptr %92, i32 -40
  %94 = load i32, ptr %93, align 8
  %95 = icmp eq i32 %94, 0
  %96 = getelementptr i8, ptr %88, i32 %36
  br i1 %95, label %105, label %97

97:                                               ; preds = %90
  %98 = ptrtoint ptr %96 to i32
  %99 = getelementptr inbounds %struct.crypto_alg, ptr %92, i32 0, i32 5
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, %98
  %102 = xor i32 %100, -1
  %103 = and i32 %101, %102
  %104 = inttoptr i32 %103 to ptr
  br label %105

105:                                              ; preds = %97, %90
  %106 = phi ptr [ %104, %97 ], [ %96, %90 ]
  %107 = getelementptr i8, ptr %106, i32 %94
  %108 = ptrtoint ptr %107 to i32
  %109 = add i32 %108, 63
  %110 = and i32 %109, -64
  %111 = inttoptr i32 %110 to ptr
  %112 = getelementptr inbounds %struct.crypto_aead, ptr %5, i32 0, i32 3
  %113 = getelementptr inbounds %struct.crypto_async_request, ptr %111, i32 0, i32 3
  store ptr %112, ptr %113, align 16
  %114 = getelementptr %struct.aead_request, ptr %111, i32 1
  %115 = ptrtoint ptr %114 to i32
  %116 = load i32, ptr %82, align 4
  %117 = add i32 %116, 3
  %118 = add i32 %117, %115
  %119 = and i32 %118, -4
  %120 = inttoptr i32 %119 to ptr
  %121 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 12
  %122 = load i8, ptr %121, align 1
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %105
  %126 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 20
  %127 = load ptr, ptr %126, align 8
  %128 = getelementptr inbounds %struct.skb_ext, ptr %127, i32 0, i32 1
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = shl nuw nsw i32 %130, 3
  %132 = getelementptr i8, ptr %127, i32 %131
  br label %133

133:                                              ; preds = %125, %105
  %134 = phi ptr [ %132, %125 ], [ null, %105 ]
  %135 = load i32, ptr %134, align 4
  %136 = add i32 %135, -1
  %137 = getelementptr %struct.sec_path, ptr %134, i32 0, i32 2, i32 %136
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.xfrm_state, ptr %138, i32 0, i32 14, i32 6
  %140 = load i8, ptr %139, align 1
  %141 = icmp sgt i8 %140, -1
  br i1 %141, label %149, label %142

142:                                              ; preds = %133
  %143 = call ptr @skb_push(ptr noundef %1, i32 noundef 4) #12
  %144 = load i32, ptr %143, align 4
  store i32 %144, ptr %88, align 64
  %145 = getelementptr inbounds %struct.ip_esp_hdr, ptr %143, i32 0, i32 1
  %146 = load i32, ptr %145, align 4
  store i32 %146, ptr %143, align 4
  %147 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 32
  %148 = load i32, ptr %147, align 4
  store i32 %148, ptr %145, align 4
  br label %149

149:                                              ; preds = %142, %133
  call void @sg_init_table(ptr noundef %120, i32 noundef %66) #12
  %150 = load i32, ptr %10, align 8
  %151 = call i32 @skb_to_sgvec(ptr noundef %1, ptr noundef %120, i32 noundef 0, i32 noundef %150) #12
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154, !prof !13

153:                                              ; preds = %149
  call void @kfree(ptr noundef nonnull %88) #12
  br label %195

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %156 = load i16, ptr %155, align 8
  %157 = and i16 %156, -97
  store i16 %157, ptr %155, align 8
  %158 = load i8, ptr %30, align 1
  %159 = icmp sgt i8 %158, -1
  %160 = select i1 %159, ptr @esp_input_done, ptr @esp_input_done_esn
  %161 = getelementptr inbounds %struct.crypto_async_request, ptr %111, i32 0, i32 1
  store ptr %160, ptr %161, align 8
  %162 = getelementptr inbounds %struct.crypto_async_request, ptr %111, i32 0, i32 2
  store ptr %1, ptr %162, align 4
  %163 = getelementptr inbounds %struct.crypto_async_request, ptr %111, i32 0, i32 4
  store i32 0, ptr %163, align 4
  %164 = getelementptr inbounds %struct.aead_request, ptr %111, i32 0, i32 4
  store ptr %120, ptr %164, align 4
  %165 = getelementptr inbounds %struct.aead_request, ptr %111, i32 0, i32 5
  store ptr %120, ptr %165, align 8
  %166 = getelementptr inbounds %struct.aead_request, ptr %111, i32 0, i32 2
  store i32 %12, ptr %166, align 4
  %167 = getelementptr inbounds %struct.aead_request, ptr %111, i32 0, i32 3
  store ptr %106, ptr %167, align 32
  %168 = getelementptr inbounds %struct.aead_request, ptr %111, i32 0, i32 1
  store i32 %33, ptr %168, align 8
  %169 = call i32 @crypto_aead_decrypt(ptr noundef %111) #12
  %170 = icmp eq i32 %169, -115
  br i1 %170, label %195, label %171

171:                                              ; preds = %154
  %172 = load i8, ptr %30, align 1
  %173 = icmp sgt i8 %172, -1
  br i1 %173, label %193, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %176 = load ptr, ptr %175, align 4
  %177 = load ptr, ptr %91, align 4
  %178 = ptrtoint ptr %177 to i32
  %179 = add i32 %178, 3
  %180 = and i32 %179, -4
  %181 = inttoptr i32 %180 to ptr
  %182 = load i32, ptr %176, align 4
  %183 = getelementptr inbounds %struct.ip_esp_hdr, ptr %176, i32 0, i32 1
  store i32 %182, ptr %183, align 4
  %184 = load i32, ptr %181, align 4
  store i32 %184, ptr %176, align 4
  %185 = load i32, ptr %10, align 8
  %186 = add i32 %185, -4
  store i32 %186, ptr %10, align 8
  %187 = load i32, ptr %14, align 4
  %188 = icmp ult i32 %186, %187
  br i1 %188, label %189, label %190, !prof !13

189:                                              ; preds = %174
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #12, !srcloc !21
  unreachable

190:                                              ; preds = %174
  %191 = load ptr, ptr %175, align 4
  %192 = getelementptr i8, ptr %191, i32 4
  store ptr %192, ptr %175, align 4
  br label %193

193:                                              ; preds = %190, %171
  %194 = call i32 @esp6_input_done2(ptr noundef %1, i32 noundef %169)
  br label %195

195:                                              ; preds = %193, %154, %153, %80, %62, %24, %18
  %196 = phi i32 [ %151, %153 ], [ -115, %154 ], [ %194, %193 ], [ -12, %80 ], [ -22, %24 ], [ -22, %62 ], [ -22, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %196
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @esp6_output(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.esp_info, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i32 48, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.esp_info, ptr %3, i32 0, i32 9
  store i8 1, ptr %4, align 1
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr inbounds %struct.esp_info, ptr %3, i32 0, i32 8
  store i8 %11, ptr %12, align 8
  store i8 50, ptr %10, align 1
  %13 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 51
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 64
  %16 = getelementptr inbounds %struct.esp_info, ptr %3, i32 0, i32 2
  %17 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %22 = load i32, ptr %21, align 8
  br label %37

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, -2
  %27 = inttoptr i32 %26 to ptr
  %28 = getelementptr inbounds %struct.xfrm_dst, ptr %27, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @xfrm_state_mtu(ptr noundef %0, i32 noundef %29) #12
  %31 = tail call i32 @llvm.umin.i32(i32 %18, i32 %30)
  %32 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = icmp ugt i32 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = sub i32 %31, %33
  store i32 %36, ptr %16, align 8
  br label %37

37:                                               ; preds = %35, %23, %20
  %38 = phi i32 [ 0, %20 ], [ 0, %23 ], [ %36, %35 ]
  %39 = phi i32 [ %22, %20 ], [ %33, %23 ], [ %33, %35 ]
  %40 = getelementptr inbounds %struct.crypto_aead, ptr %14, i32 0, i32 3, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.crypto_alg, ptr %41, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 3
  %45 = and i32 %44, -4
  %46 = add i32 %38, %39
  %47 = add i32 %46, 1
  %48 = add i32 %47, %45
  %49 = sub i32 0, %45
  %50 = and i32 %48, %49
  %51 = getelementptr inbounds %struct.esp_info, ptr %3, i32 0, i32 5
  store i32 %50, ptr %51, align 4
  %52 = sub i32 %50, %46
  %53 = getelementptr inbounds %struct.esp_info, ptr %3, i32 0, i32 4
  store i32 %52, ptr %53, align 8
  %54 = add i32 %38, %15
  %55 = add i32 %54, %52
  %56 = getelementptr inbounds %struct.esp_info, ptr %3, i32 0, i32 3
  store i32 %55, ptr %56, align 4
  %57 = load ptr, ptr %5, align 8
  %58 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = getelementptr i8, ptr %57, i32 %60
  store ptr %61, ptr %3, align 8
  %62 = call i32 @esp6_output_head(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %63 = getelementptr inbounds %struct.esp_info, ptr %3, i32 0, i32 7
  store i32 %62, ptr %63, align 4
  %64 = icmp slt i32 %62, 0
  br i1 %64, label %94, label %65

65:                                               ; preds = %37
  %66 = load ptr, ptr %3, align 8
  %67 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 1
  %68 = load i32, ptr %67, align 8
  store i32 %68, ptr %66, align 4
  %69 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %72 = getelementptr inbounds %struct.ip_esp_hdr, ptr %66, i32 0, i32 1
  store i32 %71, ptr %72, align 4
  %73 = load i32, ptr %69, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 32
  %76 = load i32, ptr %75, align 4
  %77 = zext i32 %76 to i64
  %78 = shl nuw i64 %77, 32
  %79 = or i64 %78, %74
  %80 = tail call i64 @llvm.bswap.i64(i64 %79)
  %81 = getelementptr inbounds %struct.esp_info, ptr %3, i32 0, i32 1
  store i64 %80, ptr %81, align 8
  %82 = load ptr, ptr %5, align 8
  %83 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %84 = load i16, ptr %83, align 4
  %85 = zext i16 %84 to i32
  %86 = getelementptr i8, ptr %82, i32 %85
  %87 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %88 = load ptr, ptr %87, align 4
  %89 = ptrtoint ptr %86 to i32
  %90 = ptrtoint ptr %88 to i32
  %91 = sub i32 %90, %89
  %92 = tail call ptr @skb_push(ptr noundef %1, i32 noundef %91) #12
  %93 = call i32 @esp6_output_tail(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  br label %94

94:                                               ; preds = %65, %37
  %95 = phi i32 [ %93, %65 ], [ %62, %37 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #12
  ret i32 %95
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_aalg_get_byname(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esp_input_done_esn(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 36
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = add i32 %9, 3
  %11 = and i32 %10, -4
  %12 = inttoptr i32 %11 to ptr
  %13 = load i32, ptr %6, align 4
  %14 = getelementptr inbounds %struct.ip_esp_hdr, ptr %6, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %12, align 4
  store i32 %15, ptr %6, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = add i32 %17, -4
  store i32 %18, ptr %16, align 8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %23, !prof !13

22:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #12, !srcloc !21
  unreachable

23:                                               ; preds = %2
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  store ptr %25, ptr %5, align 4
  %26 = load ptr, ptr %3, align 4
  %27 = tail call i32 @esp6_input_done2(ptr noundef %26, i32 noundef %1) #12
  %28 = tail call i32 @xfrm_input_resume(ptr noundef %26, i32 noundef %27) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @esp_input_done(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @esp6_input_done2(ptr noundef %4, i32 noundef %1)
  %6 = tail call i32 @xfrm_input_resume(ptr noundef %4, i32 noundef %5) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_rcv(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @esp6_rcv_cb(ptr nocapture noundef readnone %0, i32 noundef %1) #11 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @esp6_err(ptr noundef %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.anon.46, ptr %0, i32 0, i32 2
  switch i8 %2, label %34 [
    i8 -119, label %8
    i8 2, label %8
  ]

8:                                                ; preds = %6, %6
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ipv6hdr, ptr %10, i32 0, i32 6
  %15 = load i32, ptr %11, align 4
  %16 = tail call ptr @xfrm_state_lookup(ptr noundef nonnull @init_net, i32 noundef %13, ptr noundef %14, i32 noundef %15, i8 noundef zeroext 50, i16 noundef zeroext 10) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %8
  %19 = icmp eq i8 %2, -119
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 17
  %23 = load i32, ptr %22, align 4
  tail call void @ip6_redirect(ptr noundef %0, ptr noundef nonnull @init_net, i32 noundef %23, i32 noundef 0, [1 x i32] zeroinitializer) #12
  br label %25

24:                                               ; preds = %18
  tail call void @ip6_update_pmtu(ptr noundef %0, ptr noundef nonnull @init_net, i32 noundef %5, i32 noundef 0, i32 noundef 0, [1 x i32] zeroinitializer) #12
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.xfrm_state, ptr %16, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #12, !srcloc !10
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #12, !srcloc !23
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %34, label %32, !prof !9

32:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #12
  br label %34

33:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %16, i1 noundef zeroext false) #12
  br label %34

34:                                               ; preds = %33, %32, %30, %8, %6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_lookup(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_redirect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_update_pmtu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfrm_state_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_protocol_deregister(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }
attributes #15 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 335629, i64 2147837195, i64 2147837221, i64 2147837268, i64 2147837290, i64 2147837318, i64 2147837338}
!11 = !{i64 2147910896, i64 2147910922, i64 2147910951, i64 2147910985, i64 2147911016, i64 2147911039}
!12 = !{i64 2147912354, i64 2147912386, i64 2147912415, i64 2147912449, i64 2147912480, i64 2147912503}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i8 0, i8 2}
!15 = !{i64 5407114}
!16 = !{i64 2148011551}
!17 = !{i64 2147913937, i64 2147913969, i64 2147913998, i64 2147914032, i64 2147914063, i64 2147914086}
!18 = !{i64 2148011754}
!19 = !{i64 2157614401, i64 2157614881, i64 2157614438, i64 2157614494, i64 2157614528, i64 2157614552, i64 2157614593, i64 2157614614, i64 2157614642, i64 2157614676}
!20 = !{i64 2157620015, i64 2157620496, i64 2157620052, i64 2157620108, i64 2157620142, i64 2157620166, i64 2157620207, i64 2157620228, i64 2157620256, i64 2157620290}
!21 = !{i64 2153382101, i64 2153382589, i64 2153382138, i64 2153382194, i64 2153382228, i64 2153382252, i64 2153382293, i64 2153382314, i64 2153382342, i64 2153382376}
!22 = !{i64 2148012552}
!23 = !{i64 2147914711, i64 2147914743, i64 2147914772, i64 2147914806, i64 2147914837, i64 2147914860}
!24 = !{i64 2148610698}
