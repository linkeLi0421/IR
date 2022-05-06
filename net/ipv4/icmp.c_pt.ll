; ModuleID = '/llk/IR/net/ipv4/icmp.c_pt.bc'
source_filename = "../net/ipv4/icmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icmp_err_convert:\09\09\09\09\09"
module asm "\09.asciz \09\22icmp_err_convert\22\09\09\09\09\09"
module asm "__kstrtabns_icmp_err_convert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icmp_global_allow:\09\09\09\09\09"
module asm "\09.asciz \09\22icmp_global_allow\22\09\09\09\09\09"
module asm "__kstrtabns_icmp_global_allow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___icmp_send:\09\09\09\09\09"
module asm "\09.asciz \09\22__icmp_send\22\09\09\09\09\09"
module asm "__kstrtabns___icmp_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icmp_build_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22icmp_build_probe\22\09\09\09\09\09"
module asm "__kstrtabns_icmp_build_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_icmp_error_rfc4884:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_icmp_error_rfc4884\22\09\09\09\09\09"
module asm "__kstrtabns_ip_icmp_error_rfc4884:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.icmp_err = type { i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon = type { %struct.spinlock, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.icmp_control = type { ptr, i16 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.11, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.178, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.178 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.cpumask = type { [1 x i32] }
%struct.icmp_bxm = type { ptr, i32, i32, %struct.anon.184, i32, %struct.ip_options_data }
%struct.anon.184 = type { %struct.icmphdr, [3 x i32] }
%struct.icmphdr = type { i8, i8, i16, %union.anon.185 }
%union.anon.185 = type { i32 }
%struct.ip_options_data = type { %struct.ip_options_rcu, [40 x i8] }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.callback_head = type { ptr, ptr }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.ipcm_cookie = type { %struct.sockcm_cookie, i32, i32, ptr, i8, i16, i8, i16 }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sk_buff = type { %union.anon.76, %union.anon.149, %union.anon.150, [48 x i8], %union.anon.151, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.153, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr, %union.anon.78 }
%union.anon.78 = type { ptr }
%union.anon.149 = type { ptr }
%union.anon.150 = type { i64 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, ptr }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.155, i32, i32, i32, i16, i16, %union.anon.157, %union.anon.158, %union.anon.159, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.155 = type { i32 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i16 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.143, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
%union.anon.143 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.133 }
%union.anon.133 = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.79, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.79 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.148 = type { ptr }
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
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.172, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.173, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.174, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.13, %union.anon.15, %union.anon.16, i16, i8, i8, i32, %union.anon.18, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.168, [0 x i32], %union.anon.169, i16, i16, %union.anon.170, %struct.refcount_struct, [0 x i32], %union.anon.171 }
%union.anon.13 = type { i64 }
%union.anon.15 = type { i32 }
%union.anon.16 = type { i32 }
%union.anon.18 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.168 = type { i32 }
%union.anon.169 = type { %struct.hlist_node }
%union.anon.170 = type { i32 }
%union.anon.171 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.172 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.173 = type { ptr }
%union.anon.174 = type { ptr }
%struct.sk_buff_head = type { %union.anon.83, i32, %struct.spinlock }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.138 }
%union.anon.138 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.anon.140 = type { i8, i8 }
%struct.inetpeer_addr = type { %union.anon.195, i16 }
%union.anon.195 = type { %struct.in6_addr }
%struct.ipv4_addr_key = type { i32, i32 }
%struct.icmp_ext_hdr = type { i8, i8, i16 }
%struct.icmp_ext_echo_iio = type { %struct.icmp_extobj_hdr, %union.anon.191 }
%struct.icmp_extobj_hdr = type { i16, i8, i8 }
%union.anon.191 = type { %struct.anon.192 }
%struct.anon.192 = type { %struct.icmp_ext_echo_ctype3_hdr, %union.anon.193 }
%struct.icmp_ext_echo_ctype3_hdr = type { i16, i8, i8 }
%union.anon.193 = type { %struct.in6_addr }
%struct.anon.186 = type { i16, i16 }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.in_device = type { ptr, %struct.netdevice_tracker, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.inet6_dev = type { ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.skb_ext = type { %struct.refcount_struct, [1 x i8], i8, [2 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.194, i32, i32, i8, i8 }
%struct.anon.194 = type { i32, i32 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.136, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.137, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.136 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.137 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_state_offload = type { ptr, %struct.netdevice_tracker, ptr, i32, i32, i8 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.sock_ee_data_rfc4884 = type { i16, i8, i8 }
%struct.net_protocol = type { ptr, ptr, ptr, ptr, i8 }
%struct.anon.187 = type { i16, i16 }

@icmp_err_convert = dso_local constant [16 x %struct.icmp_err] [%struct.icmp_err { i32 101, i8 0 }, %struct.icmp_err { i32 113, i8 0 }, %struct.icmp_err { i32 92, i8 1 }, %struct.icmp_err { i32 111, i8 1 }, %struct.icmp_err { i32 90, i8 0 }, %struct.icmp_err { i32 95, i8 0 }, %struct.icmp_err { i32 101, i8 1 }, %struct.icmp_err { i32 112, i8 1 }, %struct.icmp_err { i32 64, i8 1 }, %struct.icmp_err { i32 101, i8 1 }, %struct.icmp_err { i32 113, i8 1 }, %struct.icmp_err { i32 101, i8 0 }, %struct.icmp_err { i32 113, i8 0 }, %struct.icmp_err { i32 113, i8 1 }, %struct.icmp_err { i32 113, i8 1 }, %struct.icmp_err { i32 113, i8 1 }], align 4
@__kstrtab_icmp_err_convert = external dso_local constant [0 x i8], align 1
@__kstrtabns_icmp_err_convert = external dso_local constant [0 x i8], align 1
@__ksymtab_icmp_err_convert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icmp_err_convert to i32), ptr @__kstrtab_icmp_err_convert, ptr @__kstrtabns_icmp_err_convert }, section "___ksymtab+icmp_err_convert", align 4
@sysctl_icmp_msgs_per_sec = dso_local local_unnamed_addr global i32 1000, section ".data..read_mostly", align 4
@sysctl_icmp_msgs_burst = dso_local local_unnamed_addr global i32 50, section ".data..read_mostly", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@icmp_global = internal global %struct.anon zeroinitializer, align 4
@__kstrtab_icmp_global_allow = external dso_local constant [0 x i8], align 1
@__kstrtabns_icmp_global_allow = external dso_local constant [0 x i8], align 1
@__ksymtab_icmp_global_allow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icmp_global_allow to i32), ptr @__kstrtab_icmp_global_allow, ptr @__kstrtabns_icmp_global_allow }, section "___ksymtab+icmp_global_allow", align 4
@icmp_pointers = internal unnamed_addr constant [19 x %struct.icmp_control] [%struct.icmp_control { ptr @ping_rcv, i16 0 }, %struct.icmp_control { ptr @icmp_discard, i16 1 }, %struct.icmp_control { ptr @icmp_discard, i16 1 }, %struct.icmp_control { ptr @icmp_unreach, i16 1 }, %struct.icmp_control { ptr @icmp_unreach, i16 1 }, %struct.icmp_control { ptr @icmp_redirect, i16 1 }, %struct.icmp_control { ptr @icmp_discard, i16 1 }, %struct.icmp_control { ptr @icmp_discard, i16 1 }, %struct.icmp_control { ptr @icmp_echo, i16 0 }, %struct.icmp_control { ptr @icmp_discard, i16 1 }, %struct.icmp_control { ptr @icmp_discard, i16 1 }, %struct.icmp_control { ptr @icmp_unreach, i16 1 }, %struct.icmp_control { ptr @icmp_unreach, i16 1 }, %struct.icmp_control { ptr @icmp_timestamp, i16 0 }, %struct.icmp_control { ptr @icmp_discard, i16 0 }, %struct.icmp_control { ptr @icmp_discard, i16 0 }, %struct.icmp_control { ptr @icmp_discard, i16 0 }, %struct.icmp_control { ptr @icmp_discard, i16 0 }, %struct.icmp_control { ptr @icmp_discard, i16 0 }], align 4
@__kstrtab___icmp_send = external dso_local constant [0 x i8], align 1
@__kstrtabns___icmp_send = external dso_local constant [0 x i8], align 1
@__ksymtab___icmp_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__icmp_send to i32), ptr @__kstrtab___icmp_send, ptr @__kstrtabns___icmp_send }, section "___ksymtab+__icmp_send", align 4
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@__kstrtab_icmp_build_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_icmp_build_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_icmp_build_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icmp_build_probe to i32), ptr @__kstrtab_icmp_build_probe, ptr @__kstrtabns_icmp_build_probe }, section "___ksymtab_gpl+icmp_build_probe", align 4
@__kstrtab_ip_icmp_error_rfc4884 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_icmp_error_rfc4884 = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_icmp_error_rfc4884 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_icmp_error_rfc4884 to i32), ptr @__kstrtab_ip_icmp_error_rfc4884, ptr @__kstrtabns_ip_icmp_error_rfc4884 }, section "___ksymtab_gpl+ip_icmp_error_rfc4884", align 4
@icmp_sk_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @icmp_sk_init, ptr null, ptr @icmp_sk_exit, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@init_net = external dso_local global %struct.net, align 64
@.str.3 = private unnamed_addr constant [85 x i8] c"\014icmp: %pI4 sent an invalid ICMP type %u, code %u error to a broadcast: %pI4 on %s\0A\00", align 1
@inet_protos = external dso_local global [256 x ptr], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab___icmp_send, ptr @__ksymtab_icmp_build_probe, ptr @__ksymtab_icmp_err_convert, ptr @__ksymtab_icmp_global_allow, ptr @__ksymtab_ip_icmp_error_rfc4884], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @icmp_global_allow() #0 {
  %1 = load volatile i32, ptr @jiffies, align 64
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.anon, ptr @icmp_global, i32 0, i32 1), align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.anon, ptr @icmp_global, i32 0, i32 2), align 4
  %6 = sub i32 %1, %5
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 100)
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %40, label %9

9:                                                ; preds = %4, %0
  tail call void @_raw_spin_lock(ptr noundef nonnull @icmp_global) #15
  %10 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @icmp_global, i32 0, i32 2), align 4
  %11 = sub i32 %1, %10
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 100)
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i32, ptr @sysctl_icmp_msgs_per_sec, align 4
  %16 = mul i32 %15, %12
  %17 = icmp ult i32 %16, 100
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = udiv i32 %16, 100
  store volatile i32 %1, ptr getelementptr inbounds (%struct.anon, ptr @icmp_global, i32 0, i32 2), align 4
  br label %20

20:                                               ; preds = %18, %14, %9
  %21 = phi i32 [ %19, %18 ], [ 0, %14 ], [ 0, %9 ]
  %22 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @icmp_global, i32 0, i32 1), align 4
  %23 = add i32 %22, %21
  %24 = load i32, ptr @sysctl_icmp_msgs_burst, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %23, i32 %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %20
  %28 = tail call i32 @prandom_u32() #15
  %29 = zext i32 %28 to i64
  %30 = mul nuw nsw i64 %29, 3
  %31 = lshr i64 %30, 32
  %32 = trunc i64 %31 to i32
  %33 = sub i32 %25, %32
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 0)
  br label %35

35:                                               ; preds = %27, %20
  %36 = phi i32 [ %34, %27 ], [ 0, %20 ]
  %37 = xor i1 %26, true
  store volatile i32 %36, ptr getelementptr inbounds (%struct.anon, ptr @icmp_global, i32 0, i32 1), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %38 = load i16, ptr @icmp_global, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr @icmp_global, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %40

40:                                               ; preds = %35, %4
  %41 = phi i1 [ %37, %35 ], [ false, %4 ]
  ret i1 %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @icmp_out_count(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = zext i8 %1 to i32
  %6 = or i32 %5, 256
  %7 = getelementptr [512 x %struct.atomic_t], ptr %4, i32 0, i32 %6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #15, !srcloc !13
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #15, !srcloc !14
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !15
  %10 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr [28 x i32], ptr %11, i32 0, i32 14
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #8, !srcloc !16
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #15, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__icmp_send(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.icmp_bxm, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.ipcm_cookie, align 8
  %9 = alloca %struct.flowi4, align 8
  %10 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %6, i8 0, i32 100, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, -2
  %14 = inttoptr i32 %13 to ptr
  store ptr %14, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i32 40, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i32 56, i1 false), !annotation !18
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %214, label %16

16:                                               ; preds = %5
  %17 = load ptr, ptr %14, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.anon.77, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %214, label %23

23:                                               ; preds = %19, %16
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = getelementptr i8, ptr %25, i32 %28
  %30 = icmp ult ptr %29, %25
  br i1 %30, label %214, label %31

31:                                               ; preds = %23
  %32 = getelementptr i8, ptr %29, i32 20
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %34 = load ptr, ptr %33, align 8
  %35 = icmp ugt ptr %32, %34
  br i1 %35, label %214, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %38 = load i16, ptr %37, align 8
  %39 = and i16 %38, 7
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %214

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.rtable, ptr %14, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 805306368
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %214

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.iphdr, ptr %29, i32 0, i32 4
  %48 = load i16, ptr %47, align 2
  %49 = and i16 %48, -225
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %214

51:                                               ; preds = %46
  %52 = and i32 %1, 536870911
  %53 = lshr i32 516353, %52
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.iphdr, ptr %29, i32 0, i32 6
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 1
  br i1 %59, label %60, label %83

60:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #15
  store i8 0, ptr %10, align 1, !annotation !18
  %61 = load i8, ptr %29, align 4
  %62 = shl i8 %61, 2
  %63 = and i8 %62, 60
  %64 = zext i8 %63 to i32
  %65 = getelementptr i8, ptr %29, i32 %64
  %66 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %67 = load ptr, ptr %66, align 4
  %68 = ptrtoint ptr %65 to i32
  %69 = ptrtoint ptr %67 to i32
  %70 = sub i32 %68, %69
  %71 = call fastcc ptr @skb_header_pointer(ptr noundef %0, i32 noundef %70, i32 noundef 1, ptr noundef nonnull %10)
  %72 = icmp eq ptr %71, null
  br i1 %72, label %81, label %73

73:                                               ; preds = %60
  %74 = load i8, ptr %71, align 1
  %75 = icmp ugt i8 %74, 18
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = zext i8 %74 to i32
  %78 = lshr i32 516353, %77
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %73, %60
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #15
  br label %214

82:                                               ; preds = %76
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #15
  br label %83

83:                                               ; preds = %82, %56, %51
  %84 = tail call ptr @llvm.thread.pointer() #15
  %85 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %86 = load volatile i32, ptr %85, align 4
  %87 = add i32 %86, 512
  store volatile i32 %87, ptr %85, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %88 = getelementptr inbounds %struct.anon.77, ptr %0, i32 0, i32 2
  %89 = load ptr, ptr %88, align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.net_device, ptr %89, i32 0, i32 14
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91, %83
  %97 = call fastcc zeroext i1 @icmpv4_global_allow(i32 noundef %1, i32 noundef %2)
  br i1 %97, label %98, label %213

98:                                               ; preds = %96, %91
  %99 = call fastcc ptr @icmp_xmit_lock()
  %100 = icmp eq ptr %99, null
  br i1 %100, label %213, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.iphdr, ptr %29, i32 0, i32 9
  %103 = load i32, ptr %102, align 4
  %104 = load i32, ptr %42, align 4
  %105 = icmp sgt i32 %104, -1
  br i1 %105, label %106, label %135

106:                                              ; preds = %101
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  %107 = getelementptr inbounds %struct.rtable, ptr %14, i32 0, i32 4
  %108 = load i8, ptr %107, align 2
  %109 = icmp eq i8 %108, 0
  %110 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 23), align 32
  %111 = icmp eq i8 %110, 0
  %112 = select i1 %109, i1 true, i1 %111
  br i1 %112, label %133, label %113

113:                                              ; preds = %106
  %114 = load i32, ptr %11, align 8
  %115 = and i32 %114, -2
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %113
  %118 = inttoptr i32 %115 to ptr
  %119 = getelementptr inbounds %struct.rtable, ptr %118, i32 0, i32 6
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117, %113
  %123 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 6
  %124 = load i32, ptr %123, align 4
  br label %125

125:                                              ; preds = %122, %117
  %126 = phi i32 [ %124, %122 ], [ %120, %117 ]
  %127 = call ptr @dev_get_by_index_rcu(ptr noundef nonnull @init_net, i32 noundef %126) #15
  %128 = icmp eq ptr %127, null
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.iphdr, ptr %29, i32 0, i32 8
  %131 = load i32, ptr %130, align 4
  %132 = call i32 @inet_select_addr(ptr noundef nonnull %127, i32 noundef %131, i32 noundef 253) #15
  br label %133

133:                                              ; preds = %129, %125, %106
  %134 = phi i32 [ %132, %129 ], [ 0, %125 ], [ 0, %106 ]
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  br label %135

135:                                              ; preds = %133, %101
  %136 = phi i32 [ %103, %101 ], [ %134, %133 ]
  %137 = getelementptr inbounds %struct.iphdr, ptr %29, i32 0, i32 1
  %138 = load i8, ptr %137, align 1
  %139 = and i8 %138, 30
  %140 = or i8 %139, -64
  %141 = select i1 %55, i8 %140, i8 %138
  %142 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 42), align 1
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %135
  %145 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %146 = load i32, ptr %145, align 4
  br label %147

147:                                              ; preds = %144, %135
  %148 = phi i32 [ %146, %144 ], [ 0, %135 ]
  %149 = getelementptr inbounds %struct.icmp_bxm, ptr %6, i32 0, i32 5, i32 0, i32 1
  %150 = call i32 @__ip_options_echo(ptr noundef nonnull @init_net, ptr noundef %149, ptr noundef %0, ptr noundef %4) #15
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %209

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.icmp_bxm, ptr %6, i32 0, i32 5
  %154 = trunc i32 %1 to i8
  %155 = getelementptr inbounds %struct.icmp_bxm, ptr %6, i32 0, i32 3
  store i8 %154, ptr %155, align 4
  %156 = trunc i32 %2 to i8
  %157 = getelementptr inbounds %struct.icmp_bxm, ptr %6, i32 0, i32 3, i32 0, i32 1
  store i8 %156, ptr %157, align 1
  %158 = getelementptr inbounds %struct.icmp_bxm, ptr %6, i32 0, i32 3, i32 0, i32 3
  store i32 %3, ptr %158, align 4
  %159 = getelementptr inbounds %struct.icmp_bxm, ptr %6, i32 0, i32 3, i32 0, i32 2
  store i16 0, ptr %159, align 2
  store ptr %0, ptr %6, align 4
  %160 = load ptr, ptr %24, align 8
  %161 = load i16, ptr %26, align 4
  %162 = zext i16 %161 to i32
  %163 = getelementptr i8, ptr %160, i32 %162
  %164 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %165 = load ptr, ptr %164, align 4
  %166 = ptrtoint ptr %163 to i32
  %167 = ptrtoint ptr %165 to i32
  %168 = sub i32 %166, %167
  %169 = getelementptr inbounds %struct.icmp_bxm, ptr %6, i32 0, i32 1
  store i32 %168, ptr %169, align 4
  %170 = getelementptr inbounds %struct.inet_sock, ptr %99, i32 0, i32 8
  store i8 %141, ptr %170, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(30) %8, i8 0, i32 30, i1 false) #15
  %171 = getelementptr inbounds i8, ptr %8, i32 30
  store i16 -1, ptr %171, align 2
  %172 = getelementptr inbounds i8, ptr %8, i32 32
  store i64 0, ptr %172, align 8
  %173 = getelementptr inbounds %struct.iphdr, ptr %29, i32 0, i32 8
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr inbounds %struct.ipcm_cookie, ptr %8, i32 0, i32 1
  store i32 %174, ptr %175, align 8
  %176 = getelementptr inbounds %struct.ipcm_cookie, ptr %8, i32 0, i32 3
  store ptr %153, ptr %176, align 8
  %177 = getelementptr inbounds %struct.sockcm_cookie, ptr %8, i32 0, i32 1
  store i32 %148, ptr %177, align 8
  %178 = call fastcc ptr @icmp_route_lookup(ptr noundef nonnull %9, ptr noundef %0, ptr noundef %29, i32 noundef %136, i8 noundef zeroext %141, i32 noundef %148, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6)
  store ptr %178, ptr %7, align 4
  %179 = icmp ugt ptr %178, inttoptr (i32 -4096 to ptr)
  br i1 %179, label %209, label %180

180:                                              ; preds = %152
  %181 = call fastcc zeroext i1 @icmpv4_xrlim_allow(ptr noundef %178, ptr noundef nonnull %9, i32 noundef %1, i32 noundef %2)
  br i1 %181, label %182, label %207

182:                                              ; preds = %180
  %183 = getelementptr inbounds %struct.dst_entry, ptr %178, i32 0, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.dst_ops, ptr %184, i32 0, i32 5
  %186 = load ptr, ptr %185, align 4
  %187 = call i32 %186(ptr noundef %178) #15
  %188 = call i32 @llvm.smin.i32(i32 %187, i32 576)
  %189 = getelementptr inbounds %struct.icmp_bxm, ptr %6, i32 0, i32 5, i32 0, i32 1, i32 2
  %190 = load i8, ptr %189, align 4
  %191 = zext i8 %190 to i32
  %192 = add i32 %188, -28
  %193 = sub i32 %192, %191
  %194 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %195 = load i32, ptr %194, align 8
  %196 = load i32, ptr %169, align 4
  %197 = sub i32 %195, %196
  %198 = getelementptr inbounds %struct.icmp_bxm, ptr %6, i32 0, i32 2
  %199 = call i32 @llvm.smin.i32(i32 %197, i32 %193)
  store i32 %199, ptr %198, align 4
  %200 = getelementptr inbounds %struct.icmp_bxm, ptr %6, i32 0, i32 4
  store i32 8, ptr %200, align 4
  %201 = getelementptr inbounds %struct.flowi4, ptr %9, i32 0, i32 1
  %202 = load i32, ptr %201, align 8
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %182
  store i32 134217920, ptr %201, align 8
  br label %205

205:                                              ; preds = %204, %182
  call fastcc void @icmp_push_reply(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7)
  %206 = load ptr, ptr %7, align 4
  br label %207

207:                                              ; preds = %205, %180
  %208 = phi ptr [ %178, %180 ], [ %206, %205 ]
  call void @dst_release(ptr noundef %208) #15
  br label %209

209:                                              ; preds = %207, %152, %147
  %210 = getelementptr inbounds %struct.sock, ptr %99, i32 0, i32 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %211 = load i16, ptr %210, align 4
  %212 = add i16 %211, 1
  store i16 %212, ptr %210, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %213

213:                                              ; preds = %209, %98, %96
  call fastcc void @local_bh_enable()
  br label %214

214:                                              ; preds = %213, %81, %46, %41, %36, %31, %23, %19, %5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %6) #15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @skb_header_pointer(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %1
  %10 = sub i32 %6, %9
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %16, label %12, !prof !22

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %1
  br label %22

16:                                               ; preds = %4
  %17 = icmp eq ptr %0, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = tail call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3, i32 noundef %2) #15
  %20 = icmp slt i32 %19, 0
  %21 = select i1 %20, ptr null, ptr %3, !prof !22
  br label %22

22:                                               ; preds = %18, %16, %12
  %23 = phi ptr [ %15, %12 ], [ null, %16 ], [ %21, %18 ]
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @icmpv4_global_allow(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %0, 18
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 3
  %6 = icmp eq i32 %1, 4
  %7 = and i1 %5, %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = shl nuw nsw i32 1, %0
  %10 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 25), align 8
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call zeroext i1 @icmp_global_allow()
  br label %15

15:                                               ; preds = %13, %8, %4, %2
  %16 = phi i1 [ true, %8 ], [ %14, %13 ], [ true, %2 ], [ true, %4 ]
  ret i1 %16
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @icmp_xmit_lock() unnamed_addr #3 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  %1 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 14), align 8
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #8, !srcloc !16
  %6 = add i32 %5, %2
  %7 = inttoptr i32 %6 to ptr
  %8 = load volatile ptr, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  %9 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 4
  %10 = tail call i32 @_raw_spin_trylock(ptr noundef %9) #15
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, ptr null, ptr %8, !prof !22
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_select_addr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ip_options_echo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @icmp_route_lookup(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) unnamed_addr #0 {
  %10 = alloca %struct.flowi4, align 8
  %11 = alloca %struct.flowi4, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i32 56, i1 false), !annotation !18
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(56) %0, i8 0, i32 56, i1 false)
  %12 = getelementptr inbounds %struct.icmp_bxm, ptr %8, i32 0, i32 5, i32 0, i32 1, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds %struct.icmp_bxm, ptr %8, i32 0, i32 5, i32 0, i32 1
  %16 = getelementptr inbounds %struct.iphdr, ptr %2, i32 0, i32 8
  %17 = select i1 %14, ptr %16, ptr %15
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.flowi4, ptr %0, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.flowi4, ptr %0, i32 0, i32 1
  store i32 %3, ptr %20, align 8
  %21 = getelementptr inbounds %struct.flowi_common, ptr %0, i32 0, i32 2
  store i32 %5, ptr %21, align 8
  %22 = getelementptr inbounds %struct.flowi_common, ptr %0, i32 0, i32 8
  store i32 0, ptr %22, align 4
  %23 = and i8 %4, 30
  %24 = getelementptr inbounds %struct.flowi_common, ptr %0, i32 0, i32 3
  store i8 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.flowi_common, ptr %0, i32 0, i32 5
  store i8 1, ptr %25, align 2
  %26 = trunc i32 %6 to i8
  %27 = getelementptr inbounds %struct.flowi4, ptr %0, i32 0, i32 3
  store i8 %26, ptr %27, align 8
  %28 = trunc i32 %7 to i8
  %29 = getelementptr inbounds %struct.anon.140, ptr %27, i32 0, i32 1
  store i8 %28, ptr %29, align 1
  %30 = getelementptr inbounds %struct.anon.77, ptr %1, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %9
  %34 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, -2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = inttoptr i32 %36 to ptr
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %33, %9
  %42 = phi ptr [ %40, %38 ], [ null, %33 ], [ %31, %9 ]
  store i32 0, ptr %0, align 8
  %43 = tail call ptr @ip_route_output_key_hash(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef %1) #15
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %104, label %45

45:                                               ; preds = %41
  %46 = tail call ptr @xfrm_lookup(ptr noundef nonnull @init_net, ptr noundef %43, ptr noundef %0, ptr noundef null, i32 noundef 0) #15
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = icmp eq ptr %46, %43
  br i1 %49, label %52, label %104

50:                                               ; preds = %45
  %51 = icmp eq ptr %46, inttoptr (i32 -1 to ptr)
  br i1 %51, label %52, label %104

52:                                               ; preds = %50, %48
  %53 = phi ptr [ %43, %48 ], [ null, %50 ]
  %54 = call i32 @__xfrm_decode_session(ptr noundef %1, ptr noundef nonnull %10, i32 noundef 2, i32 noundef 1) #15
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %99

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.flowi4, ptr %10, i32 0, i32 1
  %58 = load i32, ptr %57, align 8
  %59 = call i32 @inet_addr_type_dev_table(ptr noundef nonnull @init_net, ptr noundef %42, i32 noundef %58) #15
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = call ptr @ip_route_output_key_hash(ptr noundef nonnull @init_net, ptr noundef nonnull %10, ptr noundef null) #15
  %63 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %88

64:                                               ; preds = %61
  %65 = ptrtoint ptr %62 to i32
  br label %84

66:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %11, i8 0, i32 56, i1 false)
  %67 = load i32, ptr %57, align 8
  %68 = getelementptr inbounds %struct.flowi4, ptr %11, i32 0, i32 2
  store i32 %67, ptr %68, align 4
  %69 = call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef nonnull %11, ptr noundef null) #15
  %70 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %82, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %73 = load i32, ptr %72, align 8
  store i32 0, ptr %72, align 8
  %74 = getelementptr inbounds %struct.flowi4, ptr %10, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = load i32, ptr %57, align 8
  %77 = load ptr, ptr %69, align 4
  %78 = call fastcc i32 @ip_route_input(ptr noundef %1, i32 noundef %75, i32 noundef %76, i8 noundef zeroext %23, ptr noundef %77)
  call void @dst_release(ptr noundef %69) #15
  %79 = load i32, ptr %72, align 8
  %80 = and i32 %79, -2
  %81 = inttoptr i32 %80 to ptr
  store i32 %73, ptr %72, align 8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #15
  br label %84

82:                                               ; preds = %66
  %83 = ptrtoint ptr %69 to i32
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #15
  br label %99

84:                                               ; preds = %71, %64
  %85 = phi ptr [ %62, %64 ], [ %81, %71 ]
  %86 = phi i32 [ %65, %64 ], [ %78, %71 ]
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %84, %61
  %89 = phi ptr [ %85, %84 ], [ %62, %61 ]
  %90 = call ptr @xfrm_lookup(ptr noundef nonnull @init_net, ptr noundef %89, ptr noundef nonnull %10, ptr noundef null, i32 noundef 1) #15
  %91 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  call void @dst_release(ptr noundef %53) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %10, i32 56, i1 false)
  br label %104

93:                                               ; preds = %88
  %94 = ptrtoint ptr %90 to i32
  %95 = icmp eq ptr %90, inttoptr (i32 -1 to ptr)
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = icmp eq ptr %53, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %96
  call void @dst_release(ptr noundef nonnull %53) #15
  br label %104

99:                                               ; preds = %93, %84, %82, %52
  %100 = phi i32 [ %54, %52 ], [ %86, %84 ], [ %83, %82 ], [ %94, %93 ]
  %101 = icmp eq ptr %53, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = inttoptr i32 %100 to ptr
  br label %104

104:                                              ; preds = %102, %99, %98, %96, %92, %50, %48, %41
  %105 = phi ptr [ %103, %102 ], [ %90, %92 ], [ %43, %41 ], [ %46, %48 ], [ %46, %50 ], [ inttoptr (i32 -1 to ptr), %98 ], [ inttoptr (i32 -1 to ptr), %96 ], [ %53, %99 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #15
  ret ptr %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @icmpv4_xrlim_allow(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.inetpeer_addr, align 4
  %6 = icmp sgt i32 %2, 18
  br i1 %6, label %36, label %7

7:                                                ; preds = %4
  %8 = icmp eq i32 %2, 3
  %9 = icmp eq i32 %3, 4
  %10 = and i1 %8, %9
  br i1 %10, label %36, label %11

11:                                               ; preds = %7
  %12 = shl nuw nsw i32 1, %2
  %13 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 25), align 8
  %14 = and i32 %13, %12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 14
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19, %16
  %25 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 16), align 16
  %26 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  %28 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %28, i8 0, i32 12, i1 false) #15, !annotation !18
  store i32 %27, ptr %5, align 4
  %29 = getelementptr inbounds %struct.ipv4_addr_key, ptr %5, i32 0, i32 1
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.inetpeer_addr, ptr %5, i32 0, i32 1
  store i16 2, ptr %30, align 4
  %31 = call ptr @inet_getpeer(ptr noundef %25, ptr noundef nonnull %5, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  %32 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 24), align 4
  %33 = call zeroext i1 @inet_peer_xrlim_allow(ptr noundef %31, i32 noundef %32) #15
  %34 = icmp eq ptr %31, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  call void @inet_putpeer(ptr noundef nonnull %31) #15
  br label %36

36:                                               ; preds = %35, %24, %19, %11, %7, %4
  %37 = phi i1 [ true, %11 ], [ true, %19 ], [ %33, %35 ], [ %33, %24 ], [ true, %4 ], [ true, %7 ]
  ret i1 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @icmp_push_reply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  %5 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 14), align 8
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #8, !srcloc !16
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load volatile ptr, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  %13 = getelementptr inbounds %struct.icmp_bxm, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.icmp_bxm, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  %18 = tail call i32 @ip_append_data(ptr noundef %12, ptr noundef %1, ptr noundef nonnull @icmp_glue_bits, ptr noundef %0, i32 noundef %17, i32 noundef %16, ptr noundef %2, ptr noundef %3, i32 noundef 64) #15
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %4
  %21 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 8), align 8
  %22 = getelementptr [28 x i32], ptr %21, i32 0, i32 15
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #8, !srcloc !16
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  tail call void @ip_flush_pending_frames(ptr noundef %12) #15
  br label %71

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 26
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  %35 = icmp eq ptr %33, null
  %36 = or i1 %34, %35
  br i1 %36, label %71, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 16
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 13, i32 0, i32 17
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = getelementptr i8, ptr %39, i32 %42
  %44 = getelementptr inbounds %struct.icmp_bxm, ptr %0, i32 0, i32 3
  %45 = load i32, ptr %15, align 4
  %46 = tail call i32 @csum_partial_copy_nocheck(ptr noundef %44, ptr noundef %43, i32 noundef %45) #15
  %47 = load ptr, ptr %32, align 4
  %48 = icmp eq ptr %47, %32
  br i1 %48, label %60, label %49

49:                                               ; preds = %49, %37
  %50 = phi ptr [ %58, %49 ], [ %47, %37 ]
  %51 = phi i32 [ %57, %49 ], [ %46, %37 ]
  %52 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 13, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, %51
  %55 = icmp ult i32 %54, %53
  %56 = zext i1 %55 to i32
  %57 = add i32 %54, %56
  %58 = load ptr, ptr %50, align 4
  %59 = icmp eq ptr %58, %32
  br i1 %59, label %60, label %49

60:                                               ; preds = %49, %37
  %61 = phi i32 [ %46, %37 ], [ %57, %49 ]
  %62 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %61) #16, !srcloc !25
  %63 = xor i32 %62, -1
  %64 = lshr i32 %63, 16
  %65 = trunc i32 %64 to i16
  %66 = getelementptr inbounds %struct.icmphdr, ptr %43, i32 0, i32 2
  store i16 %65, ptr %66, align 2
  %67 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 13
  %68 = load i16, ptr %67, align 8
  %69 = and i16 %68, -97
  store i16 %69, ptr %67, align 8
  %70 = tail call i32 @ip_push_pending_frames(ptr noundef %12, ptr noundef %1) #15
  br label %71

71:                                               ; preds = %60, %31, %20
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @icmp_build_probe(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.icmp_ext_hdr, align 4
  %4 = alloca %struct.icmp_ext_echo_iio, align 4
  %5 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !18
  %6 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 20), align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %191, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.icmphdr, ptr %1, i32 0, i32 3
  %10 = getelementptr inbounds %struct.anon.186, ptr %9, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = and i16 %11, 256
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %191, label %14

14:                                               ; preds = %8
  %15 = and i16 %11, 255
  store i16 %15, ptr %10, align 2
  %16 = load i8, ptr %1, align 4
  %17 = icmp eq i8 %16, 42
  %18 = select i1 %17, i8 43, i8 -95
  store i8 %18, ptr %1, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %28, label %25, !prof !22

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  br label %36

28:                                               ; preds = %14
  %29 = icmp eq ptr %0, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %28
  %31 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 4) #15
  %32 = icmp slt i32 %31, 0
  %33 = select i1 %32, ptr null, ptr %3, !prof !22
  %34 = load i32, ptr %19, align 8
  %35 = load i32, ptr %21, align 4
  br label %36

36:                                               ; preds = %30, %25
  %37 = phi i32 [ %22, %25 ], [ %35, %30 ]
  %38 = phi i32 [ %20, %25 ], [ %34, %30 ]
  %39 = phi ptr [ %27, %25 ], [ %33, %30 ]
  %40 = add i32 %38, -4
  %41 = sub i32 %40, %37
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %52, label %47, !prof !22

43:                                               ; preds = %28
  %44 = add i32 %20, -4
  %45 = sub i32 %44, %22
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %189, label %47, !prof !22

47:                                               ; preds = %43, %36
  %48 = phi ptr [ null, %43 ], [ %39, %36 ]
  %49 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 4
  br label %58

52:                                               ; preds = %36
  %53 = icmp eq ptr %0, null
  br i1 %53, label %189, label %54

54:                                               ; preds = %52
  %55 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull %4, i32 noundef 4) #15
  %56 = icmp slt i32 %55, 0
  %57 = select i1 %56, ptr null, ptr %4, !prof !22
  br label %58

58:                                               ; preds = %54, %47
  %59 = phi ptr [ %48, %47 ], [ %39, %54 ]
  %60 = phi ptr [ %51, %47 ], [ %57, %54 ]
  %61 = icmp ne ptr %59, null
  %62 = icmp ne ptr %60, null
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %64, label %189

64:                                               ; preds = %58
  %65 = load i16, ptr %60, align 4
  %66 = call i16 @llvm.bswap.i16(i16 %65)
  %67 = add i16 %66, -25
  %68 = icmp ult i16 %67, -20
  br i1 %68, label %189, label %69

69:                                               ; preds = %64
  %70 = add nsw i16 %66, -4
  %71 = zext i16 %70 to i32
  %72 = add nuw nsw i32 %71, 4
  %73 = load i32, ptr %19, align 8
  %74 = load i32, ptr %21, align 4
  %75 = add i32 %73, -4
  %76 = sub i32 %75, %74
  %77 = icmp slt i32 %76, %72
  br i1 %77, label %78, label %83, !prof !22

78:                                               ; preds = %69
  %79 = icmp eq ptr %0, null
  br i1 %79, label %189, label %80

80:                                               ; preds = %78
  %81 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull %4, i32 noundef %72) #15
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %189, label %88

83:                                               ; preds = %69
  %84 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr i8, ptr %85, i32 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %189, label %88

88:                                               ; preds = %83, %80
  %89 = phi ptr [ %86, %83 ], [ %4, %80 ]
  %90 = getelementptr inbounds %struct.icmp_extobj_hdr, ptr %89, i32 0, i32 2
  %91 = load i8, ptr %90, align 1
  switch i8 %91, label %189 [
    i8 1, label %92
    i8 2, label %97
    i8 3, label %104
  ]

92:                                               ; preds = %88
  %93 = icmp ugt i16 %70, 15
  br i1 %93, label %189, label %94

94:                                               ; preds = %92
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false)
  %95 = getelementptr inbounds %struct.icmp_ext_echo_iio, ptr %89, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %5, ptr align 4 %95, i32 %71, i1 false)
  %96 = call ptr @dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef nonnull %5) #15
  br label %143

97:                                               ; preds = %88
  %98 = icmp eq i16 %70, 4
  br i1 %98, label %99, label %189

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.icmp_ext_echo_iio, ptr %89, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = call i32 @llvm.bswap.i32(i32 %101)
  %103 = call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %102) #15
  br label %143

104:                                              ; preds = %88
  %105 = icmp ult i16 %70, 4
  br i1 %105, label %189, label %106

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.icmp_ext_echo_iio, ptr %89, i32 0, i32 1, i32 0, i32 0, i32 1
  %108 = load i8, ptr %107, align 2
  %109 = zext i8 %108 to i32
  %110 = add nuw nsw i32 %109, 4
  %111 = icmp eq i32 %110, %71
  br i1 %111, label %112, label %189

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.icmp_ext_echo_iio, ptr %89, i32 0, i32 1
  %114 = load i16, ptr %113, align 4
  %115 = call i16 @llvm.bswap.i16(i16 %114)
  switch i16 %115, label %189 [
    i16 1, label %116
    i16 2, label %122
  ]

116:                                              ; preds = %112
  %117 = icmp eq i8 %108, 4
  br i1 %117, label %118, label %189

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.icmp_ext_echo_iio, ptr %89, i32 0, i32 1, i32 0, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = call ptr @__ip_dev_find(ptr noundef nonnull @init_net, i32 noundef %120, i1 noundef zeroext true) #15
  br label %143

122:                                              ; preds = %112
  %123 = icmp eq i8 %108, 16
  br i1 %123, label %124, label %189

124:                                              ; preds = %122
  %125 = load ptr, ptr @ipv6_stub, align 4
  %126 = getelementptr inbounds %struct.ipv6_stub, ptr %125, i32 0, i32 22
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.icmp_ext_echo_iio, ptr %89, i32 0, i32 1, i32 0, i32 1
  %129 = call ptr %127(ptr noundef nonnull @init_net, ptr noundef %128, ptr noundef null) #15
  %130 = icmp eq ptr %129, null
  br i1 %130, label %146, label %131

131:                                              ; preds = %124
  %132 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !15
  %133 = getelementptr inbounds %struct.net_device, ptr %129, i32 0, i32 99
  %134 = load ptr, ptr %133, align 8
  %135 = ptrtoint ptr %134 to i32
  %136 = call i32 @llvm.read_register.i32(metadata !0) #15
  %137 = inttoptr i32 %136 to ptr
  %138 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %137) #8, !srcloc !16
  %139 = add i32 %138, %135
  %140 = inttoptr i32 %139 to ptr
  %141 = load i32, ptr %140, align 4
  %142 = add i32 %141, 1
  store i32 %142, ptr %140, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %132) #15, !srcloc !17
  br label %148

143:                                              ; preds = %118, %99, %94
  %144 = phi ptr [ %121, %118 ], [ %103, %99 ], [ %96, %94 ]
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %143, %124
  %147 = getelementptr inbounds %struct.icmphdr, ptr %1, i32 0, i32 1
  store i8 2, ptr %147, align 1
  br label %191

148:                                              ; preds = %143, %131
  %149 = phi ptr [ %129, %131 ], [ %144, %143 ]
  %150 = getelementptr inbounds %struct.net_device, ptr %149, i32 0, i32 14
  %151 = load i32, ptr %150, align 8
  %152 = trunc i32 %151 to i8
  %153 = shl i8 %152, 2
  %154 = and i8 %153, 4
  %155 = getelementptr inbounds %struct.net_device, ptr %149, i32 0, i32 68
  %156 = load volatile ptr, ptr %155, align 16
  %157 = icmp eq ptr %156, null
  br i1 %157, label %165, label %158

158:                                              ; preds = %148
  %159 = load volatile ptr, ptr %155, align 16
  %160 = getelementptr inbounds %struct.in_device, ptr %159, i32 0, i32 4
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, null
  %163 = or i8 %154, 2
  %164 = select i1 %162, i8 %154, i8 %163
  br label %165

165:                                              ; preds = %158, %148
  %166 = phi i8 [ %154, %148 ], [ %164, %158 ]
  %167 = getelementptr inbounds %struct.net_device, ptr %149, i32 0, i32 69
  %168 = load volatile ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.inet6_dev, ptr %168, i32 0, i32 2
  %170 = load volatile ptr, ptr %169, align 4
  %171 = icmp ne ptr %170, %169
  %172 = zext i1 %171 to i8
  %173 = or i8 %166, %172
  %174 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !15
  %175 = getelementptr inbounds %struct.net_device, ptr %149, i32 0, i32 99
  %176 = load ptr, ptr %175, align 8
  %177 = ptrtoint ptr %176 to i32
  %178 = call i32 @llvm.read_register.i32(metadata !0) #15
  %179 = inttoptr i32 %178 to ptr
  %180 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %179) #8, !srcloc !16
  %181 = add i32 %180, %177
  %182 = inttoptr i32 %181 to ptr
  %183 = load i32, ptr %182, align 4
  %184 = add i32 %183, -1
  store i32 %184, ptr %182, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %174) #15, !srcloc !17
  %185 = zext i8 %173 to i16
  %186 = shl nuw i16 %185, 8
  %187 = load i16, ptr %10, align 2
  %188 = or i16 %187, %186
  store i16 %188, ptr %10, align 2
  br label %191

189:                                              ; preds = %122, %116, %112, %106, %104, %97, %92, %88, %83, %80, %78, %64, %58, %52, %43
  %190 = getelementptr inbounds %struct.icmphdr, ptr %1, i32 0, i32 1
  store i8 1, ptr %190, align 1
  br label %191

191:                                              ; preds = %189, %165, %146, %8, %2
  %192 = phi i1 [ true, %189 ], [ true, %165 ], [ true, %146 ], [ false, %2 ], [ false, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i1 %192
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @icmp_rcv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.icmp_bxm, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -2
  %6 = inttoptr i32 %5 to ptr
  %7 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13), align 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %131, label %18

18:                                               ; preds = %13, %10
  %19 = icmp eq i32 %5, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 7
  %22 = load i16, ptr %21, align 4
  %23 = and i16 %22, 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %32, label %131

25:                                               ; preds = %1
  %26 = icmp eq i32 %5, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 7
  %29 = load i16, ptr %28, align 4
  %30 = and i16 %29, 4
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %131

32:                                               ; preds = %27, %25, %20, %18
  %33 = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 0, ptr noundef %0, i16 noundef zeroext 2) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %131

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %37 = load i8, ptr %36, align 1
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %273, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.skb_ext, ptr %42, i32 0, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 3
  %47 = getelementptr i8, ptr %42, i32 %46
  %48 = icmp eq ptr %47, null
  br i1 %48, label %273, label %49

49:                                               ; preds = %40
  %50 = load i32, ptr %47, align 4
  %51 = add i32 %50, -1
  %52 = getelementptr %struct.sec_path, ptr %47, i32 0, i32 2, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.xfrm_state, ptr %53, i32 0, i32 14, i32 6
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %55, 16
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %273, label %58

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %60 = load i32, ptr %59, align 8
  %61 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %62 = load i32, ptr %61, align 4
  %63 = sub i32 %60, %62
  %64 = icmp ult i32 %63, 28
  br i1 %64, label %65, label %71, !prof !22

65:                                               ; preds = %58
  %66 = icmp ult i32 %60, 28
  br i1 %66, label %273, label %67, !prof !22

67:                                               ; preds = %65
  %68 = sub nuw nsw i32 28, %63
  %69 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %68) #15
  %70 = icmp eq ptr %69, null
  br i1 %70, label %273, label %71

71:                                               ; preds = %67, %58
  %72 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %75 = load i16, ptr %74, align 4
  %76 = zext i16 %75 to i32
  %77 = getelementptr i8, ptr %73, i32 %76
  %78 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %79 = load ptr, ptr %78, align 4
  %80 = ptrtoint ptr %77 to i32
  %81 = ptrtoint ptr %79 to i32
  %82 = sub i32 %80, %81
  %83 = ptrtoint ptr %73 to i32
  %84 = sub i32 %81, %83
  %85 = trunc i32 %84 to i16
  %86 = add i16 %85, 8
  store i16 %86, ptr %74, align 4
  %87 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %71
  %91 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13), align 16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i8, ptr %36, align 1
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %127, label %97

97:                                               ; preds = %93, %90
  %98 = load i32, ptr %3, align 8
  %99 = and i32 %98, -2
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %117, label %101

101:                                              ; preds = %97
  %102 = inttoptr i32 %99 to ptr
  %103 = getelementptr inbounds %struct.dst_entry, ptr %102, i32 0, i32 7
  %104 = load i16, ptr %103, align 4
  %105 = and i16 %104, 4
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %117, label %127

107:                                              ; preds = %71
  %108 = load i32, ptr %3, align 8
  %109 = and i32 %108, -2
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %107
  %112 = inttoptr i32 %109 to ptr
  %113 = getelementptr inbounds %struct.dst_entry, ptr %112, i32 0, i32 7
  %114 = load i16, ptr %113, align 4
  %115 = and i16 %114, 4
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %111, %107, %101, %97
  %118 = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 4, ptr noundef %0, i16 noundef zeroext 2) #15
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %273, label %120

120:                                              ; preds = %117
  %121 = load ptr, ptr %78, align 4
  %122 = load ptr, ptr %72, align 8
  %123 = ptrtoint ptr %121 to i32
  %124 = ptrtoint ptr %122 to i32
  %125 = sub i32 %123, %124
  %126 = trunc i32 %125 to i16
  br label %127

127:                                              ; preds = %120, %111, %101, %93
  %128 = phi i16 [ %126, %120 ], [ %85, %111 ], [ %85, %93 ], [ %85, %101 ]
  %129 = trunc i32 %82 to i16
  %130 = add i16 %128, %129
  store i16 %130, ptr %74, align 4
  br label %131

131:                                              ; preds = %127, %32, %27, %20, %13
  %132 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 8), align 8
  %133 = getelementptr [28 x i32], ptr %132, i32 0, i32 1
  %134 = ptrtoint ptr %133 to i32
  %135 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %136 = inttoptr i32 %135 to ptr
  %137 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %136) #8, !srcloc !16
  %138 = add i32 %137, %134
  %139 = inttoptr i32 %138 to ptr
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, 1
  store i32 %141, ptr %139, align 4
  %142 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %143 = load i16, ptr %142, align 8
  %144 = and i16 %143, 32767
  store i16 %144, ptr %142, align 8
  %145 = lshr i16 %143, 5
  %146 = trunc i16 %145 to i2
  switch i2 %146, label %178 [
    i2 1, label %160
    i2 -1, label %147
  ]

147:                                              ; preds = %131
  %148 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %149 = load i16, ptr %148, align 4
  %150 = zext i16 %149 to i32
  %151 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %154 = load ptr, ptr %153, align 8
  %155 = ptrtoint ptr %152 to i32
  %156 = ptrtoint ptr %154 to i32
  %157 = sub i32 %150, %155
  %158 = add i32 %157, %156
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %178, label %160

160:                                              ; preds = %147, %131
  %161 = or i16 %143, -32768
  store i16 %161, ptr %142, align 8
  %162 = and i16 %143, 96
  %163 = icmp eq i16 %162, 32
  br i1 %163, label %164, label %196

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %166 = load i16, ptr %165, align 2
  %167 = trunc i16 %166 to i8
  %168 = and i8 %167, 12
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = and i16 %161, -97
  store i16 %171, ptr %142, align 8
  br label %196

172:                                              ; preds = %164
  %173 = add i8 %167, 12
  %174 = and i8 %173, 12
  %175 = zext i8 %174 to i16
  %176 = and i16 %166, -13
  %177 = or i16 %176, %175
  store i16 %177, ptr %165, align 2
  br label %196

178:                                              ; preds = %147, %131
  %179 = and i16 %143, 96
  %180 = icmp eq i16 %179, 64
  br i1 %180, label %181, label %188

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %183 = load i32, ptr %182, align 4
  %184 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %183) #16, !srcloc !25
  %185 = icmp ugt i32 %184, -65537
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = or i16 %143, -32768
  store i16 %187, ptr %142, align 8
  br label %196

188:                                              ; preds = %181, %178
  %189 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i32 0, ptr %189, align 4
  %190 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %0) #15
  %191 = icmp eq i16 %190, 0
  %192 = load i16, ptr %142, align 8
  %193 = select i1 %191, i16 -32768, i16 0
  %194 = and i16 %192, 32767
  %195 = or i16 %194, %193
  store i16 %195, ptr %142, align 8
  br i1 %191, label %196, label %274

196:                                              ; preds = %188, %186, %172, %170, %160
  %197 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %198 = load i32, ptr %197, align 8
  %199 = icmp ult i32 %198, 8
  br i1 %199, label %285, label %200, !prof !22

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %202 = load i32, ptr %201, align 4
  %203 = sub i32 %198, %202
  %204 = icmp ult i32 %203, 8
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = sub nuw nsw i32 8, %203
  %207 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %206) #15
  %208 = icmp eq ptr %207, null
  br i1 %208, label %285, label %209

209:                                              ; preds = %205
  %210 = load i32, ptr %197, align 8
  br label %211

211:                                              ; preds = %209, %200
  %212 = phi i32 [ %210, %209 ], [ %198, %200 ]
  %213 = add i32 %212, -8
  store i32 %213, ptr %197, align 8
  %214 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %215 = load ptr, ptr %214, align 4
  %216 = getelementptr i8, ptr %215, i32 8
  store ptr %216, ptr %214, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %285, label %218

218:                                              ; preds = %211
  %219 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %220 = load ptr, ptr %219, align 8
  %221 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %222 = load i16, ptr %221, align 2
  %223 = zext i16 %222 to i32
  %224 = getelementptr i8, ptr %220, i32 %223
  %225 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 9), align 4
  %226 = load i8, ptr %224, align 4
  %227 = zext i8 %226 to i32
  %228 = getelementptr [512 x %struct.atomic_t], ptr %225, i32 0, i32 %227
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %228) #15, !srcloc !13
  %229 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %228, ptr %228, i32 1, ptr elementtype(i32) %228) #15, !srcloc !14
  %230 = load i8, ptr %224, align 4
  switch i8 %230, label %255 [
    i8 42, label %231
    i8 43, label %253
  ]

231:                                              ; preds = %218
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %2) #15
  %232 = getelementptr inbounds i8, ptr %2, i32 20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %232, i8 0, i32 80, i1 false) #15, !annotation !18
  %233 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 19), align 4
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %235, label %252

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.icmp_bxm, ptr %2, i32 0, i32 3
  %237 = load ptr, ptr %219, align 8
  %238 = load i16, ptr %221, align 2
  %239 = zext i16 %238 to i32
  %240 = getelementptr i8, ptr %237, i32 %239
  %241 = load i64, ptr %240, align 4
  store i64 %241, ptr %236, align 4
  store ptr %0, ptr %2, align 4
  %242 = getelementptr inbounds %struct.icmp_bxm, ptr %2, i32 0, i32 1
  store i32 0, ptr %242, align 4
  %243 = load i32, ptr %197, align 8
  %244 = getelementptr inbounds %struct.icmp_bxm, ptr %2, i32 0, i32 2
  store i32 %243, ptr %244, align 4
  %245 = getelementptr inbounds %struct.icmp_bxm, ptr %2, i32 0, i32 4
  store i32 8, ptr %245, align 4
  %246 = trunc i64 %241 to i8
  %247 = icmp eq i8 %246, 8
  br i1 %247, label %248, label %249

248:                                              ; preds = %235
  store i8 0, ptr %236, align 4
  br label %251

249:                                              ; preds = %235
  %250 = call zeroext i1 @icmp_build_probe(ptr noundef %0, ptr noundef %236) #15
  br i1 %250, label %251, label %252

251:                                              ; preds = %249, %248
  call fastcc void @icmp_reply(ptr noundef nonnull %2, ptr noundef %0) #15
  br label %252

252:                                              ; preds = %251, %249, %231
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %2) #15
  br label %272

253:                                              ; preds = %218
  %254 = tail call zeroext i1 @ping_rcv(ptr noundef %0) #15
  br i1 %254, label %272, label %273

255:                                              ; preds = %218
  %256 = icmp ugt i8 %230, 18
  br i1 %256, label %285, label %257

257:                                              ; preds = %255
  %258 = getelementptr inbounds %struct.rtable, ptr %6, i32 0, i32 2
  %259 = load i32, ptr %258, align 4
  %260 = and i32 %259, 805306368
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %267, label %262

262:                                              ; preds = %257
  switch i8 %230, label %285 [
    i8 8, label %263
    i8 13, label %263
    i8 17, label %267
    i8 18, label %267
  ]

263:                                              ; preds = %262, %262
  %264 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 21), align 2
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %285

266:                                              ; preds = %263
  switch i8 %230, label %285 [
    i8 8, label %267
    i8 13, label %267
  ]

267:                                              ; preds = %266, %266, %262, %262, %257
  %268 = zext i8 %230 to i32
  %269 = getelementptr [19 x %struct.icmp_control], ptr @icmp_pointers, i32 0, i32 %268
  %270 = load ptr, ptr %269, align 4
  %271 = tail call zeroext i1 %270(ptr noundef %0) #15
  br i1 %271, label %272, label %273

272:                                              ; preds = %267, %253, %252
  call void @consume_skb(ptr noundef %0) #15
  br label %296

273:                                              ; preds = %285, %267, %253, %117, %67, %65, %49, %40, %35
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #15
  br label %296

274:                                              ; preds = %188
  %275 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 8), align 8
  %276 = getelementptr [28 x i32], ptr %275, i32 0, i32 27
  %277 = ptrtoint ptr %276 to i32
  %278 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %279 = inttoptr i32 %278 to ptr
  %280 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %279) #8, !srcloc !16
  %281 = add i32 %280, %277
  %282 = inttoptr i32 %281 to ptr
  %283 = load i32, ptr %282, align 4
  %284 = add i32 %283, 1
  store i32 %284, ptr %282, align 4
  br label %285

285:                                              ; preds = %274, %266, %263, %262, %255, %211, %205, %196
  %286 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 8), align 8
  %287 = getelementptr [28 x i32], ptr %286, i32 0, i32 2
  %288 = ptrtoint ptr %287 to i32
  %289 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %290 = inttoptr i32 %289 to ptr
  %291 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %290) #8, !srcloc !16
  %292 = add i32 %291, %288
  %293 = inttoptr i32 %292 to ptr
  %294 = load i32, ptr %293, align 4
  %295 = add i32 %294, 1
  store i32 %295, ptr %293, align 4
  br label %273

296:                                              ; preds = %273, %272
  %297 = phi i32 [ 1, %273 ], [ 0, %272 ]
  ret i32 %297
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @icmp_echo(ptr noundef %0) #0 {
  %2 = alloca %struct.icmp_bxm, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %2) #15
  %3 = getelementptr inbounds i8, ptr %2, i32 20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %3, i8 0, i32 80, i1 false), !annotation !18
  %4 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 19), align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.icmp_bxm, ptr %2, i32 0, i32 3
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %9, i32 %12
  %14 = load i64, ptr %13, align 4
  store i64 %14, ptr %7, align 4
  store ptr %0, ptr %2, align 4
  %15 = getelementptr inbounds %struct.icmp_bxm, ptr %2, i32 0, i32 1
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.icmp_bxm, ptr %2, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.icmp_bxm, ptr %2, i32 0, i32 4
  store i32 8, ptr %19, align 4
  %20 = trunc i64 %14 to i8
  %21 = icmp eq i8 %20, 8
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i8 0, ptr %7, align 4
  br label %25

23:                                               ; preds = %6
  %24 = call zeroext i1 @icmp_build_probe(ptr noundef %0, ptr noundef %7)
  br i1 %24, label %25, label %26

25:                                               ; preds = %23, %22
  call fastcc void @icmp_reply(ptr noundef nonnull %2, ptr noundef %0)
  br label %26

26:                                               ; preds = %25, %23, %1
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %2) #15
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ping_rcv(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_icmp_error_rfc4884(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.icmp_extobj_hdr, align 4
  %6 = alloca %struct.icmp_ext_hdr, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %12 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %15, %16
  %18 = add i32 %17, %2
  %19 = icmp slt i32 %3, 128
  %20 = sub i32 0, %18
  %21 = icmp sgt i32 %20, %3
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %99, label %23

23:                                               ; preds = %4
  %24 = add i32 %18, %3
  %25 = add i32 %24, 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = icmp ugt i32 %25, %27
  br i1 %28, label %99, label %29

29:                                               ; preds = %23
  %30 = trunc i32 %24 to i16
  store i16 %30, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !18
  %31 = load i32, ptr %26, align 8
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %24, %33
  %35 = sub i32 %31, %34
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %42, !prof !22

37:                                               ; preds = %29
  %38 = icmp eq ptr %0, null
  br i1 %38, label %92, label %39

39:                                               ; preds = %37
  %40 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %24, ptr noundef nonnull %6, i32 noundef 4) #15
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %92, label %46

42:                                               ; preds = %29
  %43 = load ptr, ptr %13, align 4
  %44 = getelementptr i8, ptr %43, i32 %24
  %45 = icmp eq ptr %44, null
  br i1 %45, label %92, label %46

46:                                               ; preds = %42, %39
  %47 = phi ptr [ %44, %42 ], [ %6, %39 ]
  %48 = load i8, ptr %47, align 2
  %49 = and i8 %48, -16
  %50 = icmp eq i8 %49, 32
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %99

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.icmp_ext_hdr, ptr %47, i32 0, i32 2
  %54 = load i16, ptr %53, align 2
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %26, align 8
  %58 = sub i32 %57, %24
  %59 = call i32 @skb_checksum(ptr noundef %0, i32 noundef %24, i32 noundef %58, i32 noundef 0) #15
  %60 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %59) #16, !srcloc !25
  %61 = icmp ugt i32 %60, -65537
  br i1 %61, label %62, label %92

62:                                               ; preds = %56, %52
  %63 = icmp eq ptr %0, null
  %64 = load i32, ptr %26, align 8
  br label %65

65:                                               ; preds = %87, %62
  %66 = phi i32 [ %64, %62 ], [ %90, %87 ]
  %67 = phi i32 [ %25, %62 ], [ %89, %87 ]
  %68 = icmp ult i32 %67, %66
  br i1 %68, label %69, label %94

69:                                               ; preds = %65
  %70 = load i32, ptr %32, align 4
  %71 = add i32 %67, %70
  %72 = sub i32 %66, %71
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %74, label %78, !prof !22

74:                                               ; preds = %69
  br i1 %63, label %93, label %75

75:                                               ; preds = %74
  %76 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %67, ptr noundef nonnull %5, i32 noundef 4) #15
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %93, label %82

78:                                               ; preds = %69
  %79 = load ptr, ptr %13, align 4
  %80 = getelementptr i8, ptr %79, i32 %67
  %81 = icmp eq ptr %80, null
  br i1 %81, label %93, label %82

82:                                               ; preds = %78, %75
  %83 = phi ptr [ %80, %78 ], [ %5, %75 ]
  %84 = load i16, ptr %83, align 2
  %85 = call i16 @llvm.bswap.i16(i16 %84) #15
  %86 = icmp ult i16 %85, 4
  br i1 %86, label %93, label %87

87:                                               ; preds = %82
  %88 = zext i16 %85 to i32
  %89 = add i32 %67, %88
  %90 = load i32, ptr %26, align 8
  %91 = icmp ugt i32 %89, %90
  br i1 %91, label %93, label %65

92:                                               ; preds = %56, %42, %39, %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %95

93:                                               ; preds = %87, %82, %78, %75, %74
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %95

94:                                               ; preds = %65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %99

95:                                               ; preds = %93, %92
  %96 = getelementptr inbounds %struct.sock_ee_data_rfc4884, ptr %1, i32 0, i32 1
  %97 = load i8, ptr %96, align 2
  %98 = or i8 %97, 1
  store i8 %98, ptr %96, align 2
  br label %99

99:                                               ; preds = %95, %94, %51, %23, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @icmp_err(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 4
  %6 = shl i8 %5, 2
  %7 = and i8 %6, 60
  %8 = zext i8 %7 to i32
  %9 = getelementptr i8, ptr %4, i32 %8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = load i8, ptr %15, align 4
  %17 = load i8, ptr %9, align 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  tail call void @ping_err(ptr noundef %0, i32 noundef %8, i32 noundef %1) #15
  br label %30

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.icmphdr, ptr %15, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %16, 3
  %24 = icmp eq i8 %22, 4
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  tail call void @ipv4_update_pmtu(ptr noundef %0, ptr noundef nonnull @init_net, i32 noundef %1, i32 noundef 0, i8 noundef zeroext 1) #15
  br label %30

27:                                               ; preds = %20
  %28 = icmp eq i8 %16, 5
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  tail call void @ipv4_redirect(ptr noundef %0, ptr noundef nonnull @init_net, i32 noundef 0, i8 noundef zeroext 1) #15
  br label %30

30:                                               ; preds = %29, %27, %26, %19
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ping_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_update_pmtu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_redirect(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @icmp_init() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @icmp_sk_ops) #15
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_key_hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_type_dev_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip_route_input(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4) unnamed_addr #3 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  %6 = tail call i32 @ip_route_input_noref(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  %13 = icmp ugt i32 %10, 1
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %38

15:                                               ; preds = %8
  %16 = and i32 %10, -2
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.dst_entry, ptr %17, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #15, !srcloc !13
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 0, i32 1, ptr elementtype(i32) %18) #15, !srcloc !27
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  br label %23

23:                                               ; preds = %22, %15
  %24 = phi ptr [ null, %15 ], [ %17, %22 ]
  %25 = ptrtoint ptr %24 to i32
  store i32 %25, ptr %9, align 8
  %26 = icmp ne ptr %24, null
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %29 = load i16, ptr %28, align 2
  %30 = lshr i16 %29, 14
  %31 = trunc i16 %30 to i8
  %32 = and i8 %31, 1
  %33 = or i8 %32, %27
  %34 = zext i8 %33 to i16
  %35 = shl nuw nsw i16 %34, 14
  %36 = and i16 %29, -16385
  %37 = or i16 %35, %36
  store i16 %37, ptr %28, align 2
  br label %38

38:                                               ; preds = %23, %8
  %39 = phi i32 [ %10, %8 ], [ %25, %23 ]
  %40 = icmp ult i32 %39, 2
  %41 = select i1 %40, i32 -22, i32 0
  br label %42

42:                                               ; preds = %38, %5
  %43 = phi i32 [ %6, %5 ], [ %41, %38 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_decode_session(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_input_noref(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_peer_xrlim_allow(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_putpeer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_getpeer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_append_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @icmp_glue_bits(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5) #0 {
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.icmp_bxm, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %2
  %11 = tail call i32 @skb_copy_and_csum_bits(ptr noundef %7, i32 noundef %10, ptr noundef %1, i32 noundef %3) #15
  %12 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 13, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %4, 1
  %15 = icmp eq i32 %14, 0
  %16 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 24) #15
  %17 = select i1 %15, i32 %11, i32 %16
  %18 = add i32 %17, %13
  %19 = icmp ult i32 %18, %17
  %20 = zext i1 %19 to i32
  %21 = add i32 %18, %20
  store i32 %21, ptr %12, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_flush_pending_frames(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial_copy_nocheck(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_push_pending_frames(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_and_csum_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ip_dev_find(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @icmp_reply(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.inetpeer_addr, align 4
  %4 = alloca %struct.ipcm_cookie, align 8
  %5 = alloca ptr, align 4
  %6 = alloca %struct.flowi4, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, -2
  %10 = inttoptr i32 %9 to ptr
  store ptr %10, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i32 56, i1 false), !annotation !18
  %11 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 42), align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i32 [ %15, %13 ], [ 0, %2 ]
  %18 = getelementptr inbounds %struct.icmp_bxm, ptr %0, i32 0, i32 3
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.icmp_bxm, ptr %0, i32 0, i32 3, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = getelementptr inbounds %struct.icmp_bxm, ptr %0, i32 0, i32 5
  %24 = getelementptr inbounds %struct.icmp_bxm, ptr %0, i32 0, i32 5, i32 0, i32 1
  %25 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %26 = tail call i32 @__ip_options_echo(ptr noundef nonnull @init_net, ptr noundef %24, ptr noundef %1, ptr noundef %25) #15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %145

28:                                               ; preds = %16
  %29 = tail call ptr @llvm.thread.pointer() #15
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %31 = load volatile i32, ptr %30, align 4
  %32 = add i32 %31, 512
  store volatile i32 %32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %33 = icmp ugt i8 %19, 18
  br i1 %33, label %45, label %34

34:                                               ; preds = %28
  %35 = icmp eq i8 %19, 3
  %36 = icmp eq i8 %22, 4
  %37 = and i1 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = shl nuw nsw i32 1, %20
  %40 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 25), align 8
  %41 = and i32 %40, %39
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = tail call zeroext i1 @icmp_global_allow() #15
  br i1 %44, label %45, label %144

45:                                               ; preds = %43, %38, %34, %28
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  %46 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 14), align 8
  %47 = ptrtoint ptr %46 to i32
  %48 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %49 = inttoptr i32 %48 to ptr
  %50 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %49) #8, !srcloc !16
  %51 = add i32 %50, %47
  %52 = inttoptr i32 %51 to ptr
  %53 = load volatile ptr, ptr %52, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  %54 = getelementptr inbounds %struct.sock, ptr %53, i32 0, i32 4
  %55 = tail call i32 @_raw_spin_trylock(ptr noundef %54) #15
  %56 = icmp eq i32 %55, 0
  %57 = icmp eq ptr %53, null
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %144, label %59

59:                                               ; preds = %45
  %60 = getelementptr inbounds %struct.icmp_bxm, ptr %0, i32 0, i32 3, i32 0, i32 2
  store i16 0, ptr %60, align 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(30) %4, i8 0, i32 30, i1 false) #15
  %61 = getelementptr inbounds i8, ptr %4, i32 30
  store i16 -1, ptr %61, align 2
  %62 = getelementptr inbounds i8, ptr %4, i32 32
  store i64 0, ptr %62, align 8
  %63 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %66 = load i16, ptr %65, align 4
  %67 = zext i16 %66 to i32
  %68 = getelementptr i8, ptr %64, i32 %67
  %69 = getelementptr inbounds %struct.iphdr, ptr %68, i32 0, i32 1
  %70 = load i8, ptr %69, align 1
  %71 = getelementptr inbounds %struct.inet_sock, ptr %53, i32 0, i32 8
  store i8 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.sockcm_cookie, ptr %4, i32 0, i32 1
  store i32 %17, ptr %72, align 8
  %73 = load ptr, ptr %63, align 8
  %74 = load i16, ptr %65, align 4
  %75 = zext i16 %74 to i32
  %76 = getelementptr i8, ptr %73, i32 %75
  %77 = getelementptr inbounds %struct.iphdr, ptr %76, i32 0, i32 8
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.ipcm_cookie, ptr %4, i32 0, i32 1
  store i32 %78, ptr %79, align 8
  %80 = tail call i32 @fib_compute_spec_dst(ptr noundef %1) #15
  %81 = getelementptr inbounds %struct.icmp_bxm, ptr %0, i32 0, i32 5, i32 0, i32 1, i32 2
  %82 = load i8, ptr %81, align 4
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %59
  %85 = getelementptr inbounds %struct.ipcm_cookie, ptr %4, i32 0, i32 3
  store ptr %23, ptr %85, align 8
  %86 = getelementptr inbounds %struct.icmp_bxm, ptr %0, i32 0, i32 5, i32 0, i32 1, i32 3
  %87 = load i8, ptr %86, align 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = load i32, ptr %24, align 4
  br label %91

91:                                               ; preds = %89, %84, %59
  %92 = phi i32 [ %90, %89 ], [ %78, %84 ], [ %78, %59 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i32 56, i1 false)
  %93 = getelementptr inbounds %struct.flowi4, ptr %6, i32 0, i32 2
  store i32 %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.flowi4, ptr %6, i32 0, i32 1
  store i32 %80, ptr %94, align 8
  %95 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 2
  store i32 %17, ptr %95, align 8
  %96 = load ptr, ptr %63, align 8
  %97 = load i16, ptr %65, align 4
  %98 = zext i16 %97 to i32
  %99 = getelementptr i8, ptr %96, i32 %98
  %100 = getelementptr inbounds %struct.iphdr, ptr %99, i32 0, i32 1
  %101 = load i8, ptr %100, align 1
  %102 = and i8 %101, 30
  %103 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 3
  store i8 %102, ptr %103, align 4
  %104 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 5
  store i8 1, ptr %104, align 2
  %105 = call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef nonnull %6, ptr noundef null) #15
  store ptr %105, ptr %5, align 4
  %106 = icmp ugt ptr %105, inttoptr (i32 -4096 to ptr)
  br i1 %106, label %141, label %107

107:                                              ; preds = %91
  br i1 %33, label %137, label %108

108:                                              ; preds = %107
  %109 = icmp eq i8 %19, 3
  %110 = icmp eq i8 %22, 4
  %111 = and i1 %109, %110
  br i1 %111, label %137, label %112

112:                                              ; preds = %108
  %113 = shl nuw nsw i32 1, %20
  %114 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 25), align 8
  %115 = and i32 %114, %113
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %137, label %117

117:                                              ; preds = %112
  %118 = load ptr, ptr %105, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %125, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.net_device, ptr %118, i32 0, i32 14
  %122 = load i32, ptr %121, align 8
  %123 = and i32 %122, 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %120, %117
  %126 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 16), align 16
  %127 = load i32, ptr %93, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #15
  %128 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %128, i8 0, i32 12, i1 false) #15, !annotation !18
  store i32 %127, ptr %3, align 4
  %129 = getelementptr inbounds %struct.ipv4_addr_key, ptr %3, i32 0, i32 1
  store i32 0, ptr %129, align 4
  %130 = getelementptr inbounds %struct.inetpeer_addr, ptr %3, i32 0, i32 1
  store i16 2, ptr %130, align 4
  %131 = call ptr @inet_getpeer(ptr noundef %126, ptr noundef nonnull %3, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  %132 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 24), align 4
  %133 = call zeroext i1 @inet_peer_xrlim_allow(ptr noundef %131, i32 noundef %132) #15
  %134 = icmp eq ptr %131, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %125
  call void @inet_putpeer(ptr noundef nonnull %131) #15
  br i1 %133, label %137, label %139

136:                                              ; preds = %125
  br i1 %133, label %137, label %139

137:                                              ; preds = %136, %135, %120, %112, %108, %107
  call fastcc void @icmp_push_reply(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %138 = load ptr, ptr %5, align 4
  br label %139

139:                                              ; preds = %137, %136, %135
  %140 = phi ptr [ %105, %135 ], [ %138, %137 ], [ %105, %136 ]
  call void @dst_release(ptr noundef %140) #15
  br label %141

141:                                              ; preds = %139, %91
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %142 = load i16, ptr %54, align 4
  %143 = add i16 %142, 1
  store i16 %143, ptr %54, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %144

144:                                              ; preds = %141, %45, %43
  call fastcc void @local_bh_enable()
  br label %145

145:                                              ; preds = %144, %16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_compute_spec_dst(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @icmp_discard(ptr nocapture noundef readnone %0) #10 {
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @icmp_unreach(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 %3, %5
  %7 = icmp ult i32 %6, 20
  br i1 %7, label %8, label %14, !prof !22

8:                                                ; preds = %1
  %9 = icmp ult i32 %3, 20
  br i1 %9, label %145, label %10, !prof !22

10:                                               ; preds = %8
  %11 = sub nuw nsw i32 20, %6
  %12 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %11) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %145, label %14

14:                                               ; preds = %10, %1
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = getelementptr i8, ptr %16, i32 %19
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 15
  %25 = icmp ult i8 %24, 5
  br i1 %25, label %145, label %26

26:                                               ; preds = %14
  %27 = load i8, ptr %20, align 4
  switch i8 %27, label %76 [
    i8 3, label %28
    i8 12, label %58
    i8 11, label %62
  ]

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.icmphdr, ptr %20, i32 0, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 15
  %32 = icmp eq i8 %31, 4
  br i1 %32, label %33, label %54

33:                                               ; preds = %28
  %34 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 32), align 1
  switch i8 %34, label %54 [
    i8 2, label %156
    i8 3, label %35
    i8 0, label %47
  ]

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.iphdr, ptr %22, i32 0, i32 6
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  %39 = getelementptr [256 x ptr], ptr @inet_protos, i32 0, i32 %38
  %40 = load volatile ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.net_protocol, ptr %40, i32 0, i32 4
  %42 = load i8, ptr %41, align 4
  %43 = and i8 %42, 2
  %44 = icmp eq i8 %43, 0
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  br i1 %44, label %156, label %45

45:                                               ; preds = %35
  %46 = load i8, ptr %29, align 1
  br label %47

47:                                               ; preds = %45, %33
  %48 = phi i8 [ %46, %45 ], [ %30, %33 ]
  %49 = getelementptr inbounds %struct.icmphdr, ptr %20, i32 0, i32 3
  %50 = getelementptr inbounds %struct.anon.187, ptr %49, i32 0, i32 1
  %51 = load i16, ptr %50, align 2
  %52 = tail call i16 @llvm.bswap.i16(i16 %51)
  %53 = zext i16 %52 to i32
  br label %54

54:                                               ; preds = %47, %33, %28
  %55 = phi i8 [ %30, %28 ], [ %48, %47 ], [ %30, %33 ]
  %56 = phi i32 [ 0, %28 ], [ %53, %47 ], [ 0, %33 ]
  %57 = icmp ugt i8 %55, 15
  br i1 %57, label %156, label %76

58:                                               ; preds = %26
  %59 = getelementptr inbounds %struct.icmphdr, ptr %20, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 255
  br label %76

62:                                               ; preds = %26
  %63 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 8), align 8
  %64 = getelementptr [28 x i32], ptr %63, i32 0, i32 4
  %65 = ptrtoint ptr %64 to i32
  %66 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %67 = inttoptr i32 %66 to ptr
  %68 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %67) #8, !srcloc !16
  %69 = add i32 %68, %65
  %70 = inttoptr i32 %69 to ptr
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 4
  %73 = getelementptr inbounds %struct.icmphdr, ptr %20, i32 0, i32 1
  %74 = load i8, ptr %73, align 1
  %75 = icmp eq i8 %74, 1
  br i1 %75, label %156, label %76

76:                                               ; preds = %62, %58, %54, %26
  %77 = phi i32 [ 0, %26 ], [ 0, %62 ], [ %61, %58 ], [ %56, %54 ]
  %78 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 22), align 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.anon.77, ptr %0, i32 0, i32 2
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.iphdr, ptr %22, i32 0, i32 9
  %84 = load i32, ptr %83, align 4
  %85 = tail call i32 @inet_addr_type_dev_table(ptr noundef nonnull @init_net, ptr noundef %82, i32 noundef %84) #15
  %86 = icmp eq i32 %85, 3
  br i1 %86, label %87, label %104

87:                                               ; preds = %80
  %88 = tail call i32 @net_ratelimit() #15
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %156, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %15, align 8
  %92 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %93 = load i16, ptr %92, align 4
  %94 = zext i16 %93 to i32
  %95 = getelementptr i8, ptr %91, i32 %94
  %96 = getelementptr inbounds %struct.iphdr, ptr %95, i32 0, i32 8
  %97 = load i8, ptr %20, align 4
  %98 = zext i8 %97 to i32
  %99 = getelementptr inbounds %struct.icmphdr, ptr %20, i32 0, i32 1
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i32
  %102 = load ptr, ptr %81, align 8
  %103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %96, i32 noundef %98, i32 noundef %101, ptr noundef %83, ptr noundef %102) #17
  br label %156

104:                                              ; preds = %80, %76
  %105 = load ptr, ptr %21, align 4
  %106 = getelementptr inbounds %struct.iphdr, ptr %105, i32 0, i32 6
  %107 = load i8, ptr %106, align 1
  %108 = load i8, ptr %105, align 4
  %109 = shl i8 %108, 2
  %110 = and i8 %109, 60
  %111 = add nuw nsw i8 %110, 8
  %112 = zext i8 %111 to i32
  %113 = load i32, ptr %2, align 8
  %114 = load i32, ptr %4, align 4
  %115 = sub i32 %113, %114
  %116 = icmp ult i32 %115, %112
  br i1 %116, label %117, label %134, !prof !22

117:                                              ; preds = %104
  %118 = icmp ult i32 %113, %112
  br i1 %118, label %123, label %119, !prof !22

119:                                              ; preds = %117
  %120 = sub i32 %112, %115
  %121 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %120) #15
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %134

123:                                              ; preds = %119, %117
  %124 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 8), align 8
  %125 = getelementptr [28 x i32], ptr %124, i32 0, i32 2
  %126 = ptrtoint ptr %125 to i32
  %127 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %128 = inttoptr i32 %127 to ptr
  %129 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %128) #8, !srcloc !16
  %130 = add i32 %129, %126
  %131 = inttoptr i32 %130 to ptr
  %132 = load i32, ptr %131, align 4
  %133 = add i32 %132, 1
  store i32 %133, ptr %131, align 4
  br label %156

134:                                              ; preds = %119, %104
  %135 = zext i8 %107 to i32
  tail call void @raw_icmp_error(ptr noundef %0, i32 noundef %135, i32 noundef %77) #15
  %136 = getelementptr [256 x ptr], ptr @inet_protos, i32 0, i32 %135
  %137 = load volatile ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %156, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.net_protocol, ptr %137, i32 0, i32 3
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %156, label %143

143:                                              ; preds = %139
  %144 = tail call i32 %141(ptr noundef %0, i32 noundef %77) #15
  br label %156

145:                                              ; preds = %14, %10, %8
  %146 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 8), align 8
  %147 = getelementptr [28 x i32], ptr %146, i32 0, i32 2
  %148 = ptrtoint ptr %147 to i32
  %149 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %150 = inttoptr i32 %149 to ptr
  %151 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %150) #8, !srcloc !16
  %152 = add i32 %151, %148
  %153 = inttoptr i32 %152 to ptr
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %154, 1
  store i32 %155, ptr %153, align 4
  br label %156

156:                                              ; preds = %145, %143, %139, %134, %123, %90, %87, %62, %54, %35, %33
  %157 = phi i1 [ false, %145 ], [ true, %87 ], [ true, %90 ], [ true, %62 ], [ true, %54 ], [ true, %35 ], [ true, %33 ], [ true, %123 ], [ true, %134 ], [ true, %139 ], [ true, %143 ]
  ret i1 %157
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @icmp_redirect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 8
  %4 = icmp ult i32 %3, 20
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 8), align 8
  %7 = getelementptr [28 x i32], ptr %6, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #8, !srcloc !16
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  br label %79

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %3, %18
  %20 = icmp ult i32 %19, 20
  br i1 %20, label %21, label %29, !prof !22

21:                                               ; preds = %16
  %22 = sub nuw nsw i32 20, %19
  %23 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %22) #15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %79, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %2, align 8
  %27 = load i32, ptr %17, align 4
  %28 = sub i32 %26, %27
  br label %29

29:                                               ; preds = %25, %16
  %30 = phi i32 [ %28, %25 ], [ %19, %16 ]
  %31 = phi i32 [ %26, %25 ], [ %3, %16 ]
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = getelementptr i8, ptr %33, i32 %36
  %38 = getelementptr inbounds %struct.icmphdr, ptr %37, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.iphdr, ptr %42, i32 0, i32 6
  %44 = load i8, ptr %43, align 1
  %45 = load i8, ptr %42, align 4
  %46 = shl i8 %45, 2
  %47 = and i8 %46, 60
  %48 = add nuw nsw i8 %47, 8
  %49 = zext i8 %48 to i32
  %50 = icmp ult i32 %30, %49
  br i1 %50, label %51, label %68, !prof !22

51:                                               ; preds = %29
  %52 = icmp ult i32 %31, %49
  br i1 %52, label %57, label %53, !prof !22

53:                                               ; preds = %51
  %54 = sub i32 %49, %30
  %55 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %54) #15
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %53, %51
  %58 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 8), align 8
  %59 = getelementptr [28 x i32], ptr %58, i32 0, i32 2
  %60 = ptrtoint ptr %59 to i32
  %61 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %62 = inttoptr i32 %61 to ptr
  %63 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %62) #8, !srcloc !16
  %64 = add i32 %63, %60
  %65 = inttoptr i32 %64 to ptr
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 4
  br label %79

68:                                               ; preds = %53, %29
  %69 = zext i8 %44 to i32
  tail call void @raw_icmp_error(ptr noundef %0, i32 noundef %69, i32 noundef %40) #15
  %70 = getelementptr [256 x ptr], ptr @inet_protos, i32 0, i32 %69
  %71 = load volatile ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.net_protocol, ptr %71, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = tail call i32 %75(ptr noundef %0, i32 noundef %40) #15
  br label %79

79:                                               ; preds = %77, %73, %68, %57, %21, %5
  %80 = phi i1 [ false, %5 ], [ false, %21 ], [ true, %57 ], [ true, %68 ], [ true, %73 ], [ true, %77 ]
  ret i1 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @icmp_timestamp(ptr noundef %0) #0 {
  %2 = alloca %struct.icmp_bxm, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %2, i8 0, i32 100, i1 false), !annotation !18
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %27, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @inet_current_timestamp() #15
  %8 = getelementptr inbounds %struct.icmp_bxm, ptr %2, i32 0, i32 3, i32 1
  %9 = getelementptr inbounds %struct.icmp_bxm, ptr %2, i32 0, i32 3, i32 1, i32 1
  store i32 %7, ptr %9, align 4
  %10 = getelementptr inbounds %struct.icmp_bxm, ptr %2, i32 0, i32 3, i32 1, i32 2
  store i32 %7, ptr %10, align 4
  %11 = call i32 @skb_copy_bits(ptr noundef %0, i32 noundef 0, ptr noundef %8, i32 noundef 4) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !29

13:                                               ; preds = %6
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/icmp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1149, 0\0A.popsection", ""() #15, !srcloc !30
  unreachable

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.icmp_bxm, ptr %2, i32 0, i32 3
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %17, i32 %20
  %22 = load i64, ptr %21, align 4
  store i64 %22, ptr %15, align 4
  store i8 14, ptr %15, align 4
  %23 = getelementptr inbounds %struct.icmp_bxm, ptr %2, i32 0, i32 3, i32 0, i32 1
  store i8 0, ptr %23, align 1
  store ptr %0, ptr %2, align 4
  %24 = getelementptr inbounds %struct.icmp_bxm, ptr %2, i32 0, i32 1
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.icmp_bxm, ptr %2, i32 0, i32 2
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.icmp_bxm, ptr %2, i32 0, i32 4
  store i32 20, ptr %26, align 4
  call fastcc void @icmp_reply(ptr noundef nonnull %2, ptr noundef %0)
  br label %38

27:                                               ; preds = %1
  %28 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 8), align 8
  %29 = getelementptr [28 x i32], ptr %28, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %32) #8, !srcloc !16
  %34 = add i32 %33, %30
  %35 = inttoptr i32 %34 to ptr
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %27, %14
  %39 = xor i1 %5, true
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %2) #15
  ret i1 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_icmp_error(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_current_timestamp() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @icmp_sk_init(ptr noundef %0) #7 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #18
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 14
  store ptr %3, ptr %4, align 8
  %5 = icmp eq ptr %3, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %1
  %7 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %14, %6
  %11 = phi i32 [ %28, %14 ], [ %7, %6 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store ptr null, ptr %2, align 4, !annotation !18
  %12 = call i32 @inet_ctl_sock_create(ptr noundef nonnull %2, i16 noundef zeroext 2, i16 noundef zeroext 3, i8 noundef zeroext 1, ptr noundef %0) #15
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %39, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = ptrtoint ptr %16 to i32
  %18 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %17
  %21 = inttoptr i32 %20 to ptr
  store ptr %15, ptr %21, align 4
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 21
  store i32 131968, ptr %23, align 8
  %24 = getelementptr inbounds %struct.sock_common, ptr %22, i32 0, i32 13
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 512
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.inet_sock, ptr %22, i32 0, i32 11
  store i8 0, ptr %27, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %28 = call i32 @cpumask_next(i32 noundef %11, ptr noundef nonnull @__cpu_possible_mask) #19
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %10, label %31

31:                                               ; preds = %14, %6
  %32 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 19
  store i8 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 20
  store i8 0, ptr %33, align 1
  %34 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 21
  store i8 1, ptr %34, align 2
  %35 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 22
  store i8 1, ptr %35, align 1
  %36 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 24
  store i32 100, ptr %36, align 4
  %37 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 25
  store i32 6168, ptr %37, align 8
  %38 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 23
  store i8 0, ptr %38, align 32
  br label %40

39:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  call void @icmp_sk_exit(ptr noundef %0)
  br label %40

40:                                               ; preds = %39, %31, %1
  %41 = phi i32 [ %12, %39 ], [ 0, %31 ], [ -12, %1 ]
  ret i32 %41
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @icmp_sk_exit(ptr nocapture noundef %0) #12 section ".ref.text" {
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 14
  br label %7

7:                                                ; preds = %22, %5
  %8 = phi i32 [ %3, %5 ], [ %23, %22 ]
  %9 = phi i32 [ %2, %5 ], [ %24, %22 ]
  %10 = load ptr, ptr %6, align 8
  %11 = ptrtoint ptr %10 to i32
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = inttoptr i32 %14 to ptr
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 71
  %20 = load ptr, ptr %19, align 8
  tail call void @sock_release(ptr noundef %20) #15
  %21 = load i32, ptr @nr_cpu_ids, align 4
  br label %22

22:                                               ; preds = %18, %7
  %23 = phi i32 [ %8, %7 ], [ %21, %18 ]
  %24 = tail call i32 @cpumask_next(i32 noundef %9, ptr noundef nonnull @__cpu_possible_mask) #19
  %25 = icmp ult i32 %24, %23
  br i1 %25, label %7, label %26

26:                                               ; preds = %22, %1
  %27 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 14
  %28 = load ptr, ptr %27, align 8
  tail call void @free_percpu(ptr noundef %28) #15
  store ptr null, ptr %27, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_ctl_sock_create(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readonly willreturn }

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
!9 = !{i64 2148962198}
!10 = !{i64 2148958022}
!11 = !{i64 2148958097, i64 2148958124, i64 2148958171, i64 2148958193, i64 2148958221, i64 2148958241}
!12 = !{i64 2148985201}
!13 = !{i64 577673, i64 2148067644, i64 2148067670, i64 2148067717, i64 2148067739, i64 2148067767, i64 2148067787}
!14 = !{i64 2148079059, i64 2148079085, i64 2148079114, i64 2148079148, i64 2148079179, i64 2148079202}
!15 = !{i64 483351, i64 483412}
!16 = !{i64 502051}
!17 = !{i64 486368}
!18 = !{!"auto-init"}
!19 = !{i64 2148894323}
!20 = !{i64 2149080553}
!21 = !{i64 2149080770}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 2157401935}
!24 = !{i64 2157417889}
!25 = !{i64 5552914}
!26 = !{i64 2148078566}
!27 = !{i64 564242, i64 564267, i64 564289, i64 564305, i64 564317, i64 564337, i64 564361, i64 564377, i64 564389}
!28 = !{i64 2148078692}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2157546113, i64 2157546594, i64 2157546150, i64 2157546206, i64 2157546240, i64 2157546264, i64 2157546305, i64 2157546326, i64 2157546354, i64 2157546388}
