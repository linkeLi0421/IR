; ModuleID = '/llk/IR/net/ipv6/af_inet6.c_pt.bc'
source_filename = "../net/ipv6/af_inet6.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_mod_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_mod_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_mod_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_bind\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_release:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_release\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_destroy_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_destroy_sock\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_destroy_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_getname:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_getname\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_getname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_register_protosw:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_register_protosw\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_register_protosw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_unregister_protosw:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_unregister_protosw\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_unregister_protosw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_sk_rebuild_header:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_sk_rebuild_header\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_sk_rebuild_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_opt_accepted:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_opt_accepted\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_opt_accepted:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ipv6_params = type { i32, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.164 }
%union.anon.164 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.136, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.136 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.68, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.68 = type { ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipv6_bpf_stub = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.packet_type = type { i16, i8, ptr, %struct.netdevice_tracker, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.netdevice_tracker = type {}
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type {}
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.sk_buff_head = type { %union.anon.77, i32, %struct.spinlock }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.71, [0 x i32], %union.anon.72, i16, i16, %union.anon.73, %struct.refcount_struct, [0 x i32], %union.anon.74 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.70 }
%union.anon.70 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { i32 }
%union.anon.72 = type { %struct.hlist_node }
%union.anon.73 = type { i32 }
%union.anon.74 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.86, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.123, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.124, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.86 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.123 = type { ptr }
%union.anon.124 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.81 }
%union.anon.81 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.anon.42 = type { i16, i16 }
%struct.anon.39 = type { i32, i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.188, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.188 = type { %struct.anon.189 }
%struct.anon.189 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.in6_rtmsg = type { %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, i32, i16, i16, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rps_sock_flow_table = type { i32, [60 x i8], [0 x i32] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.47, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.44, %union.anon.45 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.47 = type { ptr }
%struct.inet_protosw = type { %struct.list_head, i16, i16, ptr, ptr, i8 }
%struct.anon.82 = type { i16, i16 }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.128, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.128 = type { %struct.list_head }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, %struct.netdevice_tracker, i32, i8, i8, i8, i8, ptr, %union.anon.131, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.131 = type { %struct.in6_addr }
%struct.fib6_node = type { ptr, ptr, ptr, ptr, i16, i16, i32, ptr, %struct.callback_head }
%struct.inet6_skb_parm = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }

@__UNIQUE_ID_author609 = internal constant [27 x i8] c"ipv6.author=Cast of dozens\00", section ".modinfo", align 1
@__UNIQUE_ID_description610 = internal constant [47 x i8] c"ipv6.description=IPv6 protocol stack for Linux\00", section ".modinfo", align 1
@__UNIQUE_ID_file611 = internal constant [24 x i8] c"ipv6.file=net/ipv6/ipv6\00", section ".modinfo", align 1
@__UNIQUE_ID_license612 = internal constant [17 x i8] c"ipv6.license=GPL\00", section ".modinfo", align 1
@ipv6_defaults = dso_local global %struct.ipv6_params { i32 0, i32 1 }, align 4
@__param_str_disable = internal constant [13 x i8] c"ipv6.disable\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@disable_ipv6_mod = internal global i32 0, align 4
@__param_disable = internal constant %struct.kernel_param { ptr @__param_str_disable, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @disable_ipv6_mod } }, section "__param", align 4
@__UNIQUE_ID_disabletype613 = internal constant [26 x i8] c"ipv6.parmtype=disable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable614 = internal constant [69 x i8] c"ipv6.parm=disable:Disable IPv6 module such that it is non-functional\00", section ".modinfo", align 1
@__param_str_disable_ipv6 = internal constant [18 x i8] c"ipv6.disable_ipv6\00", align 1
@__param_disable_ipv6 = internal constant %struct.kernel_param { ptr @__param_str_disable_ipv6, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @ipv6_defaults } }, section "__param", align 4
@__UNIQUE_ID_disable_ipv6type615 = internal constant [31 x i8] c"ipv6.parmtype=disable_ipv6:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_ipv6616 = internal constant [54 x i8] c"ipv6.parm=disable_ipv6:Disable IPv6 on all interfaces\00", section ".modinfo", align 1
@__param_str_autoconf = internal constant [14 x i8] c"ipv6.autoconf\00", align 1
@__param_autoconf = internal constant %struct.kernel_param { ptr @__param_str_autoconf, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.164 { ptr getelementptr (i8, ptr @ipv6_defaults, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_autoconftype617 = internal constant [27 x i8] c"ipv6.parmtype=autoconf:int\00", section ".modinfo", align 1
@__UNIQUE_ID_autoconf618 = internal constant [75 x i8] c"ipv6.parm=autoconf:Enable IPv6 address autoconfiguration on all interfaces\00", section ".modinfo", align 1
@__kstrtab_ipv6_mod_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_mod_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_mod_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_mod_enabled to i32), ptr @__kstrtab_ipv6_mod_enabled, ptr @__kstrtabns_ipv6_mod_enabled }, section "___ksymtab_gpl+ipv6_mod_enabled", align 4
@__kstrtab_inet6_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_bind to i32), ptr @__kstrtab_inet6_bind, ptr @__kstrtabns_inet6_bind }, section "___ksymtab+inet6_bind", align 4
@__kstrtab_inet6_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_release = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_release to i32), ptr @__kstrtab_inet6_release, ptr @__kstrtabns_inet6_release }, section "___ksymtab+inet6_release", align 4
@__kstrtab_inet6_destroy_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_destroy_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_destroy_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_destroy_sock to i32), ptr @__kstrtab_inet6_destroy_sock, ptr @__kstrtabns_inet6_destroy_sock }, section "___ksymtab_gpl+inet6_destroy_sock", align 4
@__kstrtab_inet6_getname = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_getname = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_getname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_getname to i32), ptr @__kstrtab_inet6_getname, ptr @__kstrtabns_inet6_getname }, section "___ksymtab+inet6_getname", align 4
@__kstrtab_inet6_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_ioctl to i32), ptr @__kstrtab_inet6_ioctl, ptr @__kstrtabns_inet6_ioctl }, section "___ksymtab+inet6_ioctl", align 4
@inet6_stream_ops = dso_local local_unnamed_addr constant %struct.proto_ops { i32 10, ptr null, ptr @inet6_release, ptr @inet6_bind, ptr @inet_stream_connect, ptr @sock_no_socketpair, ptr @inet_accept, ptr @inet6_getname, ptr @tcp_poll, ptr @inet6_ioctl, ptr @sock_gettstamp, ptr @inet_listen, ptr @inet_shutdown, ptr @sock_common_setsockopt, ptr @sock_common_getsockopt, ptr null, ptr @inet6_sendmsg, ptr @inet6_recvmsg, ptr @tcp_mmap, ptr @inet_sendpage, ptr @tcp_splice_read, ptr null, ptr @tcp_peek_len, ptr @tcp_read_sock, ptr @tcp_sendpage_locked, ptr @tcp_sendmsg_locked, ptr @tcp_set_rcvlowat }, align 4
@inet6_dgram_ops = dso_local local_unnamed_addr constant %struct.proto_ops { i32 10, ptr null, ptr @inet6_release, ptr @inet6_bind, ptr @inet_dgram_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @inet6_getname, ptr @udp_poll, ptr @inet6_ioctl, ptr @sock_gettstamp, ptr @sock_no_listen, ptr @inet_shutdown, ptr @sock_common_setsockopt, ptr @sock_common_getsockopt, ptr null, ptr @inet6_sendmsg, ptr @inet6_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr @sk_set_peek_off, ptr null, ptr @udp_read_sock, ptr null, ptr null, ptr null }, align 4
@inetsw6_lock = internal global %struct.spinlock zeroinitializer, align 4
@inetsw6 = internal global [11 x %struct.list_head] zeroinitializer, align 4
@.str = private unnamed_addr constant [51 x i8] c"\013IPv6: Attempt to override permanent protocol %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"\013IPv6: Ignoring attempt to register invalid socket type %d\0A\00", align 1
@__kstrtab_inet6_register_protosw = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_register_protosw = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_register_protosw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_register_protosw to i32), ptr @__kstrtab_inet6_register_protosw, ptr @__kstrtabns_inet6_register_protosw }, section "___ksymtab+inet6_register_protosw", align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"\013IPv6: Attempt to unregister permanent protocol %d\0A\00", align 1
@__kstrtab_inet6_unregister_protosw = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_unregister_protosw = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_unregister_protosw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_unregister_protosw to i32), ptr @__kstrtab_inet6_unregister_protosw, ptr @__kstrtabns_inet6_unregister_protosw }, section "___ksymtab+inet6_unregister_protosw", align 4
@__kstrtab_inet6_sk_rebuild_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_sk_rebuild_header = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_sk_rebuild_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_sk_rebuild_header to i32), ptr @__kstrtab_inet6_sk_rebuild_header, ptr @__kstrtabns_inet6_sk_rebuild_header }, section "___ksymtab_gpl+inet6_sk_rebuild_header", align 4
@__kstrtab_ipv6_opt_accepted = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_opt_accepted = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_opt_accepted = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_opt_accepted to i32), ptr @__kstrtab_ipv6_opt_accepted, ptr @__kstrtabns_ipv6_opt_accepted }, section "___ksymtab_gpl+ipv6_opt_accepted", align 4
@__initcall__kmod_ipv6__625_1297_inet6_init6 = internal global ptr @inet6_init, section ".initcall6.init", align 4
@__UNIQUE_ID_alias626 = internal constant [21 x i8] c"ipv6.alias=net-pf-10\00", section ".modinfo", align 1
@init_net = external dso_local global %struct.net, align 64
@rfs_needed = external dso_local global %struct.static_key_false, align 4
@rps_sock_flow_table = external dso_local global ptr, align 4
@rps_cpu_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [74 x i8] c"\016IPv6: Loaded, but administratively disabled, reboot required to enable\0A\00", align 1
@tcpv6_prot = external dso_local global %struct.proto, align 4
@udpv6_prot = external dso_local global %struct.proto, align 4
@udplitev6_prot = external dso_local global %struct.proto, align 4
@rawv6_prot = external dso_local global %struct.proto, align 4
@pingv6_prot = external dso_local global %struct.proto, align 4
@inet6_family_ops = internal constant %struct.net_proto_family { i32 10, ptr @inet6_create, ptr null }, align 4
@inet6_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @inet6_net_init, ptr null, ptr @inet6_net_exit, ptr null, ptr null, i32 0 }, align 4
@ipv6_stub_impl = internal constant %struct.ipv6_stub { ptr @ipv6_sock_mc_join, ptr @ipv6_sock_mc_drop, ptr @ip6_dst_lookup_flow, ptr @ipv6_route_input, ptr @fib6_get_table, ptr @fib6_lookup, ptr @fib6_table_lookup, ptr @fib6_select_path, ptr @ip6_mtu_from_fib6, ptr @fib6_nh_init, ptr @fib6_nh_release, ptr @fib6_nh_release_dsts, ptr @fib6_update_sernum_stub, ptr @ip6_del_rt, ptr @fib6_rt_update, ptr @udpv6_encap_enable, ptr @ndisc_send_na, ptr @xfrm6_local_rxpmtu, ptr @xfrm6_udp_encap_rcv, ptr @xfrm6_rcv_encap, ptr @nd_tbl, ptr @ip6_fragment, ptr @ipv6_dev_find }, align 4
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@ipv6_bpf_stub_impl = internal constant %struct.ipv6_bpf_stub { ptr @__inet6_bind, ptr @__udp6_lib_lookup }, align 4
@ipv6_bpf_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"net-pf-%d-proto-%d-type-%d\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"net-pf-%d-proto-%d\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"net/ipv6/af_inet6.c\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ipv6_packet_type = internal global %struct.packet_type { i16 -8826, i8 0, ptr null, %struct.netdevice_tracker zeroinitializer, ptr @ipv6_rcv, ptr @ipv6_list_rcv, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@nd_tbl = external dso_local global %struct.neigh_table, align 4
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_alias626, ptr @__UNIQUE_ID_author609, ptr @__UNIQUE_ID_autoconf618, ptr @__UNIQUE_ID_autoconftype617, ptr @__UNIQUE_ID_description610, ptr @__UNIQUE_ID_disable614, ptr @__UNIQUE_ID_disable_ipv6616, ptr @__UNIQUE_ID_disable_ipv6type615, ptr @__UNIQUE_ID_disabletype613, ptr @__UNIQUE_ID_file611, ptr @__UNIQUE_ID_license612, ptr @__initcall__kmod_ipv6__625_1297_inet6_init6, ptr @__ksymtab_inet6_bind, ptr @__ksymtab_inet6_destroy_sock, ptr @__ksymtab_inet6_getname, ptr @__ksymtab_inet6_ioctl, ptr @__ksymtab_inet6_register_protosw, ptr @__ksymtab_inet6_release, ptr @__ksymtab_inet6_sk_rebuild_header, ptr @__ksymtab_inet6_unregister_protosw, ptr @__ksymtab_ipv6_mod_enabled, ptr @__ksymtab_ipv6_opt_accepted, ptr @__param_autoconf, ptr @__param_disable, ptr @__param_disable_ipv6], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ipv6_mod_enabled() #0 {
  %1 = load i32, ptr @disable_ipv6_mod, align 4
  %2 = icmp eq i32 %1, 0
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet6_bind(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.proto, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call i32 %9(ptr noundef %5, ptr noundef %1, i32 noundef %2) #15
  br label %17

13:                                               ; preds = %3
  %14 = icmp slt i32 %2, 24
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = tail call i32 @__inet6_bind(ptr noundef %5, ptr noundef %1, i32 noundef %2, i32 noundef 2)
  br label %17

17:                                               ; preds = %15, %13, %11
  %18 = phi i32 [ %12, %11 ], [ %16, %15 ], [ -22, %13 ]
  ret i32 %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__inet6_bind(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %6 = load volatile i8, ptr %5, align 2
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 1, %7
  %9 = and i32 %8, -4161
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi ptr [ %13, %11 ], [ null, %4 ]
  %16 = load i16, ptr %1, align 4
  %17 = icmp eq i16 %16, 10
  br i1 %17, label %18, label %203

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 3
  %20 = tail call i32 @__ipv6_addr_type(ptr noundef %19) #15
  %21 = and i32 %20, 65535
  %22 = and i32 %20, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %26 = load i16, ptr %25, align 2
  %27 = icmp eq i16 %26, 1
  br i1 %27, label %203, label %28

28:                                               ; preds = %24, %18
  %29 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 1
  %30 = load i16, ptr %29, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %32 = and i32 %3, 8
  %33 = icmp eq i32 %32, 0
  %34 = icmp ne i16 %30, 0
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = zext i16 %31 to i32
  %38 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 117), align 16
  %39 = icmp sgt i32 %38, %37
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %42 = tail call zeroext i1 @ns_capable(ptr noundef %41, i32 noundef 10) #15
  br i1 %42, label %43, label %203

43:                                               ; preds = %40, %36, %28
  %44 = and i32 %3, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #15
  br label %47

47:                                               ; preds = %46, %43
  %48 = load volatile i8, ptr %5, align 2
  %49 = icmp eq i8 %48, 7
  br i1 %49, label %50, label %198

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %52 = getelementptr inbounds %struct.anon.42, ptr %51, i32 0, i32 1
  %53 = load i16, ptr %52, align 2
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %198

55:                                               ; preds = %50
  %56 = trunc i32 %20 to i16
  switch i16 %56, label %94 [
    i16 4096, label %57
    i16 0, label %136
  ]

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %59 = load i8, ptr %58, align 1
  %60 = and i8 %59, 32
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %198

62:                                               ; preds = %57
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %63 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = tail call ptr @dev_get_by_index_rcu(ptr noundef nonnull @init_net, i32 noundef %64) #15
  %68 = icmp eq ptr %67, null
  br i1 %68, label %201, label %69

69:                                               ; preds = %66, %62
  %70 = phi ptr [ %67, %66 ], [ null, %62 ]
  %71 = getelementptr %struct.sockaddr_in6, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = tail call i32 @inet_addr_type_dev_table(ptr noundef nonnull @init_net, ptr noundef %70, i32 noundef %72) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %74 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 35), align 2
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %78 = load i16, ptr %77, align 8
  %79 = and i16 %78, 4
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = and i16 %78, 32
  %83 = icmp ne i16 %82, 0
  br label %84

84:                                               ; preds = %81, %76, %69
  %85 = phi i1 [ true, %76 ], [ true, %69 ], [ %83, %81 ]
  %86 = icmp eq i32 %72, 0
  %87 = or i1 %86, %85
  %88 = icmp eq i32 %73, 2
  %89 = or i1 %88, %87
  %90 = icmp eq i32 %73, 5
  %91 = or i1 %90, %89
  %92 = icmp eq i32 %73, 3
  %93 = or i1 %92, %91
  br i1 %93, label %136, label %198

94:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %95 = and i32 %20, 32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = icmp ne i32 %22, 0
  %99 = and i32 %20, 48
  %100 = icmp ne i32 %99, 0
  %101 = and i1 %98, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %97, %94
  %103 = icmp ugt i32 %2, 27
  br i1 %103, label %104, label %110

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 4
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  store i32 %106, ptr %109, align 4
  br label %110

110:                                              ; preds = %108, %104, %102
  %111 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %201, label %118

114:                                              ; preds = %97
  %115 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114, %110
  %119 = phi i32 [ %116, %114 ], [ %112, %110 ]
  %120 = tail call ptr @dev_get_by_index_rcu(ptr noundef nonnull @init_net, i32 noundef %119) #15
  %121 = icmp eq ptr %120, null
  br i1 %121, label %201, label %122

122:                                              ; preds = %118, %114
  %123 = phi ptr [ %120, %118 ], [ null, %114 ]
  %124 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 25), align 1
  %125 = icmp eq i8 %124, 0
  %126 = select i1 %23, i1 %125, i1 false
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %129 = load i16, ptr %128, align 8
  %130 = and i16 %129, 36
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = tail call i32 @ipv6_chk_addr(ptr noundef nonnull @init_net, ptr noundef %19, ptr noundef %123, i32 noundef 0) #15
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %201, label %135

135:                                              ; preds = %132, %127, %122
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  br label %136

136:                                              ; preds = %135, %84, %55
  %137 = phi i32 [ 100663423, %135 ], [ 0, %55 ], [ %72, %84 ]
  %138 = getelementptr inbounds %struct.anon.39, ptr %0, i32 0, i32 1
  store i32 %137, ptr %138, align 4
  %139 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  store i32 %137, ptr %139, align 4
  %140 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %140, ptr noundef align 4 dereferenceable(16) %19, i32 16, i1 false)
  br i1 %23, label %141, label %142

141:                                              ; preds = %136
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %15, ptr noundef align 4 dereferenceable(16) %19, i32 16, i1 false)
  br label %142

142:                                              ; preds = %141, %136
  %143 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %144 = load i8, ptr %143, align 1
  %145 = and i8 %144, 32
  %146 = icmp eq i32 %21, 0
  switch i16 %56, label %147 [
    i16 4096, label %149
    i16 0, label %149
  ]

147:                                              ; preds = %142
  %148 = or i8 %144, 32
  store i8 %148, ptr %143, align 1
  br label %149

149:                                              ; preds = %147, %142, %142
  br i1 %34, label %158, label %150

150:                                              ; preds = %149
  %151 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %152 = load i16, ptr %151, align 8
  %153 = and i16 %152, 256
  %154 = icmp eq i16 %153, 0
  %155 = and i32 %3, 1
  %156 = icmp eq i32 %155, 0
  %157 = and i1 %156, %154
  br i1 %157, label %158, label %183

158:                                              ; preds = %150, %149
  %159 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %160 = load ptr, ptr %159, align 8
  %161 = getelementptr inbounds %struct.proto, ptr %160, i32 0, i32 23
  %162 = load ptr, ptr %161, align 4
  %163 = tail call i32 %162(ptr noundef %0, i16 noundef zeroext %31) #15
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %183, label %165

165:                                              ; preds = %158
  %166 = load i8, ptr %143, align 1
  %167 = and i8 %166, -33
  %168 = or i8 %167, %145
  store i8 %168, ptr %143, align 1
  store i32 0, ptr %139, align 4
  store i32 0, ptr %138, align 4
  %169 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %170 = load i16, ptr %169, align 8
  %171 = icmp eq i16 %170, 10
  br i1 %171, label %172, label %198

172:                                              ; preds = %165
  %173 = load volatile i8, ptr %5, align 2
  %174 = zext i8 %173 to i32
  %175 = shl nuw i32 1, %174
  %176 = and i32 %175, -4161
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %180 = load ptr, ptr %179, align 8
  br label %181

181:                                              ; preds = %178, %172
  %182 = phi ptr [ %180, %178 ], [ null, %172 ]
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %182, i8 0, i32 16, i1 false) #15
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %140, i8 0, i32 16, i1 false) #15
  br label %198

183:                                              ; preds = %158, %150
  br i1 %146, label %188, label %184

184:                                              ; preds = %183
  %185 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %186 = load i8, ptr %185, align 8
  %187 = or i8 %186, 64
  store i8 %187, ptr %185, align 8
  br label %188

188:                                              ; preds = %184, %183
  %189 = icmp eq i16 %30, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %188
  %191 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %192 = load i8, ptr %191, align 8
  %193 = or i8 %192, -128
  store i8 %193, ptr %191, align 8
  br label %194

194:                                              ; preds = %190, %188
  %195 = load i16, ptr %52, align 2
  %196 = tail call i16 @llvm.bswap.i16(i16 %195)
  %197 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  store i16 %196, ptr %197, align 8
  store i16 0, ptr %51, align 4
  store i32 0, ptr %0, align 8
  br label %198

198:                                              ; preds = %201, %194, %181, %165, %84, %57, %50, %47
  %199 = phi i32 [ %202, %201 ], [ 0, %194 ], [ -22, %50 ], [ -22, %47 ], [ -98, %165 ], [ -98, %181 ], [ -99, %84 ], [ -22, %57 ]
  br i1 %45, label %203, label %200

200:                                              ; preds = %198
  tail call void @release_sock(ptr noundef %0) #15
  br label %203

201:                                              ; preds = %132, %118, %110, %66
  %202 = phi i32 [ -19, %66 ], [ -99, %132 ], [ -19, %118 ], [ -22, %110 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  br label %198

203:                                              ; preds = %200, %198, %40, %24, %14
  %204 = phi i32 [ -97, %14 ], [ -22, %24 ], [ -13, %40 ], [ %199, %200 ], [ %199, %198 ]
  ret i32 %204
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet6_release(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @ipv6_sock_mc_close(ptr noundef nonnull %3) #15
  tail call void @ipv6_sock_ac_close(ptr noundef nonnull %3) #15
  %6 = tail call i32 @inet_release(ptr noundef %0) #15
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ -22, %1 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_sock_mc_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_sock_ac_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet6_destroy_sock(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 1, %4
  %6 = and i32 %5, -4161
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %10, %8 ], [ null, %1 ]
  %13 = getelementptr inbounds %struct.ipv6_pinfo, ptr %12, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #15, !srcloc !11
  %14 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %13) #15, !srcloc !12
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = inttoptr i32 %15 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  tail call void @kfree_skb_reason(ptr noundef %16, i32 noundef 0) #15
  %17 = getelementptr inbounds %struct.ipv6_pinfo, ptr %12, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #15, !srcloc !11
  %18 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %17) #15, !srcloc !12
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = inttoptr i32 %19 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  tail call void @kfree_skb_reason(ptr noundef %20, i32 noundef 0) #15
  tail call void @fl6_free_socklist(ptr noundef %0) #15
  %21 = getelementptr inbounds %struct.ipv6_pinfo, ptr %12, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #15, !srcloc !11
  %22 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %21) #15, !srcloc !12
  %23 = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %11
  %26 = inttoptr i32 %23 to ptr
  %27 = getelementptr inbounds %struct.ipv6_txoptions, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #15, !srcloc !11
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 %28, ptr elementtype(i32) %29) #15, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %26) #15, !srcloc !11
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %26, ptr nonnull %26, i32 1, ptr nonnull elementtype(i32) %26) #15, !srcloc !20
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = icmp sgt i32 %32, 0
  br i1 %35, label %39, label %36, !prof !21

36:                                               ; preds = %34
  tail call void @refcount_warn_saturate(ptr noundef nonnull %26, i32 noundef 3) #15
  br label %39

37:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %38 = getelementptr inbounds %struct.ipv6_txoptions, ptr %26, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %38, ptr noundef nonnull inttoptr (i32 28 to ptr)) #15
  br label %39

39:                                               ; preds = %37, %36, %34, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fl6_free_socklist(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet6_getname(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %7 = load volatile i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = and i32 %9, -4161
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.inet_sock, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi ptr [ %14, %12 ], [ null, %3 ]
  store i16 10, ptr %1, align 4
  %17 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 2
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 4
  store i32 0, ptr %18, align 4
  tail call void @lock_sock_nested(ptr noundef %5, i32 noundef 0) #15
  %19 = icmp eq i32 %2, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 2
  %22 = load i16, ptr %21, align 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %77, label %24

24:                                               ; preds = %20
  %25 = load volatile i8, ptr %6, align 2
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, 132
  %29 = icmp ne i32 %28, 0
  %30 = icmp eq i32 %2, 1
  %31 = and i1 %30, %29
  br i1 %31, label %77, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 1
  store i16 %22, ptr %33, align 2
  %34 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 3
  %35 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %34, ptr noundef align 4 dereferenceable(16) %35, i32 16, i1 false)
  %36 = getelementptr inbounds %struct.ipv6_pinfo, ptr %16, i32 0, i32 9
  %37 = load i16, ptr %36, align 2
  %38 = and i16 %37, 2
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.ipv6_pinfo, ptr %16, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  store i32 %42, ptr %17, align 4
  br label %61

43:                                               ; preds = %15
  %44 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 11
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr %struct.sock_common, ptr %5, i32 0, i32 11, i32 0, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, %45
  %49 = getelementptr %struct.sock_common, ptr %5, i32 0, i32 11, i32 0, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %48, %50
  %52 = getelementptr %struct.sock_common, ptr %5, i32 0, i32 11, i32 0, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = or i32 %51, %53
  %55 = icmp eq i32 %54, 0
  %56 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 3
  %57 = select i1 %55, ptr %16, ptr %44
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %56, ptr noundef align 4 dereferenceable(16) %57, i32 16, i1 false)
  %58 = getelementptr inbounds %struct.inet_sock, ptr %5, i32 0, i32 6
  %59 = load i16, ptr %58, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 1
  store i16 %59, ptr %60, align 2
  br label %61

61:                                               ; preds = %43, %40, %32
  %62 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 3
  %63 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = tail call i32 @__ipv6_addr_type(ptr noundef %62) #15
  %66 = and i32 %65, 32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = and i32 %65, 2
  %70 = icmp ne i32 %69, 0
  %71 = and i32 %65, 48
  %72 = icmp ne i32 %71, 0
  %73 = and i1 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68, %61
  br label %75

75:                                               ; preds = %74, %68
  %76 = phi i32 [ %64, %74 ], [ 0, %68 ]
  store i32 %76, ptr %18, align 4
  br label %77

77:                                               ; preds = %75, %24, %20
  %78 = phi i32 [ 28, %75 ], [ -107, %24 ], [ -107, %20 ]
  tail call void @release_sock(ptr noundef %5) #15
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet6_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.in6_rtmsg, align 4
  %5 = inttoptr i32 %2 to ptr
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  switch i32 %1, label %34 [
    i32 35083, label %8
    i32 35084, label %8
    i32 35094, label %28
    i32 35126, label %30
    i32 35096, label %32
  ]

8:                                                ; preds = %3, %3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false), !annotation !23
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 72, i32 -1090519040) #16, !srcloc !24
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20, !prof !21

12:                                               ; preds = %8
  %13 = tail call ptr @llvm.thread.pointer() #15
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #17, !srcloc !25
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #15, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !27
  %18 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %5, i32 noundef 72) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #15, !srcloc !26
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !27
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !21

20:                                               ; preds = %12, %8
  %21 = phi i32 [ %18, %12 ], [ 72, %8 ]
  %22 = sub i32 72, %21
  %23 = getelementptr i8, ptr %4, i32 %22
  call void @llvm.memset.p0.i32(ptr align 1 %23, i8 0, i32 %21, i1 false) #15
  br label %26

24:                                               ; preds = %12
  %25 = call i32 @ipv6_route_ioctl(ptr noundef nonnull @init_net, i32 noundef %1, ptr noundef nonnull %4) #15
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %25, %24 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #15
  br label %42

28:                                               ; preds = %3
  %29 = tail call i32 @addrconf_add_ifaddr(ptr noundef nonnull @init_net, ptr noundef %5) #15
  br label %42

30:                                               ; preds = %3
  %31 = tail call i32 @addrconf_del_ifaddr(ptr noundef nonnull @init_net, ptr noundef %5) #15
  br label %42

32:                                               ; preds = %3
  %33 = tail call i32 @addrconf_set_dstaddr(ptr noundef nonnull @init_net, ptr noundef %5) #15
  br label %42

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 8
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.proto, ptr %36, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = tail call i32 %38(ptr noundef %7, i32 noundef %1, i32 noundef %2) #15
  br label %42

42:                                               ; preds = %40, %34, %32, %30, %28, %26
  %43 = phi i32 [ %41, %40 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], [ -515, %34 ]
  ret i32 %43
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_route_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @addrconf_add_ifaddr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @addrconf_del_ifaddr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @addrconf_set_dstaddr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet6_sendmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = tail call i32 @inet_send_prepare(ptr noundef %5) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14, !prof !21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.proto, ptr %10, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %5, ptr noundef %1, i32 noundef %2) #15
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -11, %3 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_send_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet6_recvmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4
  %8 = and i32 %3, 8192
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %39, !prof !21

10:                                               ; preds = %4
  %11 = load volatile i32, ptr @rfs_needed, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %39, !prof !28

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 4
  %15 = load volatile i8, ptr %14, align 2
  %16 = icmp eq i8 %15, 1
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 21
  %19 = load i32, ptr %18, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %20 = load volatile ptr, ptr @rps_sock_flow_table, align 4
  %21 = icmp ne ptr %20, null
  %22 = icmp ne i32 %19, 0
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %38

24:                                               ; preds = %17
  %25 = load i32, ptr %20, align 64
  %26 = and i32 %25, %19
  %27 = load i32, ptr @rps_cpu_mask, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %19, %28
  %30 = tail call ptr @llvm.thread.pointer() #15
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = or i32 %32, %29
  %34 = getelementptr %struct.rps_sock_flow_table, ptr %20, i32 0, i32 2, i32 %26
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, %33
  br i1 %36, label %38, label %37

37:                                               ; preds = %24
  store i32 %33, ptr %34, align 4
  br label %38

38:                                               ; preds = %37, %24, %17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  br label %39

39:                                               ; preds = %38, %13, %10, %4
  %40 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 8
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.proto, ptr %41, i32 0, i32 13
  %43 = load ptr, ptr %42, align 4
  %44 = and i32 %3, 64
  %45 = and i32 %3, -65
  %46 = call i32 %43(ptr noundef %7, ptr noundef %1, i32 noundef %2, i32 noundef %44, i32 noundef %45, ptr noundef nonnull %5) #15
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, ptr %5, align 4
  %50 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  store i32 %49, ptr %50, align 4
  br label %51

51:                                               ; preds = %48, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_stream_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_poll(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_listen(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_shutdown(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_mmap(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_peek_len(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_read_sock(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sendpage_locked(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sendmsg_locked(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_set_rcvlowat(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_dgram_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_poll(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_set_peek_off(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_read_sock(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet6_register_protosw(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.inet_protosw, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 2
  %4 = zext i16 %3 to i32
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @inetsw6_lock) #15
  %5 = getelementptr inbounds %struct.inet_protosw, ptr %0, i32 0, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = icmp ugt i16 %6, 10
  br i1 %8, label %39, label %9

9:                                                ; preds = %1
  %10 = getelementptr [11 x %struct.list_head], ptr @inetsw6, i32 0, i32 %7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %30, label %13

13:                                               ; preds = %24, %9
  %14 = phi ptr [ %26, %24 ], [ %11, %9 ]
  %15 = phi ptr [ %25, %24 ], [ %10, %9 ]
  %16 = getelementptr inbounds %struct.inet_protosw, ptr %14, i32 0, i32 5
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.inet_protosw, ptr %14, i32 0, i32 2
  %22 = load i16, ptr %21, align 2
  %23 = icmp eq i16 %3, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20, %13
  %25 = phi ptr [ %15, %13 ], [ %14, %20 ]
  %26 = load ptr, ptr %14, align 4
  %27 = icmp eq ptr %26, %10
  br i1 %27, label %30, label %13

28:                                               ; preds = %20
  %29 = icmp eq ptr %14, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %28, %24, %9
  %31 = phi ptr [ %15, %28 ], [ %10, %9 ], [ %25, %24 ]
  %32 = load ptr, ptr %31, align 4
  store ptr %32, ptr %0, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %31, ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !29
  store volatile ptr %0, ptr %31, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %0, ptr %34, align 4
  br label %35

35:                                               ; preds = %39, %37, %30
  %36 = phi i32 [ -22, %39 ], [ -1, %37 ], [ 0, %30 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @inetsw6_lock) #15
  ret i32 %36

37:                                               ; preds = %28
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %4) #18
  br label %35

39:                                               ; preds = %1
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %7) #18
  br label %35
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet6_unregister_protosw(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.inet_protosw, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.inet_protosw, ptr %0, i32 0, i32 2
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %9) #18
  br label %16

11:                                               ; preds = %1
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @inetsw6_lock) #15
  %12 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @inetsw6_lock) #15
  tail call void @synchronize_net() #15
  br label %16

16:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet6_sk_rebuild_header(ptr noundef %0) #1 {
  %2 = alloca %struct.in6_addr, align 4
  %3 = alloca %struct.flowi6, align 8
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %5 = load volatile i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 1, %6
  %8 = and i32 %7, -4161
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  br label %13

13:                                               ; preds = %10, %1
  %14 = phi ptr [ %12, %10 ], [ null, %1 ]
  %15 = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 13
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @__sk_dst_check(ptr noundef %0, i32 noundef %16) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %85

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !23
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #15
  %20 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i64 88, i1 false)
  %21 = load i16, ptr %20, align 4
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.flowi_common, ptr %3, i32 0, i32 5
  store i8 %22, ptr %23, align 2
  %24 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 1
  %25 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %24, ptr noundef align 4 dereferenceable(16) %25, i32 16, i1 false)
  %26 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %26, ptr noundef align 4 dereferenceable(16) %14, i32 16, i1 false)
  %27 = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 3
  store i32 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %3, align 8
  %32 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.flowi_common, ptr %3, i32 0, i32 2
  store i32 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %36 = load i16, ptr %35, align 4
  %37 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 4
  store i16 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  %39 = load i16, ptr %38, align 8
  %40 = getelementptr inbounds %struct.anon.82, ptr %37, i32 0, i32 1
  store i16 %39, ptr %40, align 2
  %41 = getelementptr inbounds %struct.flowi_common, ptr %3, i32 0, i32 8
  %42 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %43 = load i32, ptr %42, align 4
  store i32 %43, ptr %41, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %44 = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 17
  %45 = load volatile ptr, ptr %44, align 4
  %46 = call ptr @fl6_update_dst(ptr noundef nonnull %3, ptr noundef %45, ptr noundef nonnull %2) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %47 = call ptr @ip6_dst_lookup_flow(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef nonnull %3, ptr noundef %46) #15
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %54

49:                                               ; preds = %19
  %50 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 38
  store i64 0, ptr %50, align 8
  %51 = ptrtoint ptr %47 to i32
  %52 = sub i32 0, %51
  %53 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 52
  store i32 %52, ptr %53, align 8
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  br label %85

54:                                               ; preds = %19
  %55 = load volatile i8, ptr %4, align 2
  %56 = zext i8 %55 to i32
  %57 = shl nuw i32 1, %56
  %58 = and i32 %57, -4161
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8
  br label %63

63:                                               ; preds = %60, %54
  %64 = phi ptr [ %62, %60 ], [ null, %54 ]
  %65 = getelementptr inbounds %struct.rt6_info, ptr %47, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %63
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %69 = getelementptr inbounds %struct.rt6_info, ptr %47, i32 0, i32 1
  %70 = load volatile ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.fib6_info, ptr %70, i32 0, i32 2
  %74 = load volatile ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.fib6_node, ptr %74, i32 0, i32 6
  %78 = load volatile i32, ptr %77, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !30
  br label %79

79:                                               ; preds = %76, %72, %68
  %80 = phi i32 [ 0, %68 ], [ 0, %72 ], [ %78, %76 ]
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  br label %81

81:                                               ; preds = %79, %63
  %82 = phi i32 [ %80, %79 ], [ %66, %63 ]
  %83 = getelementptr inbounds %struct.ipv6_pinfo, ptr %64, i32 0, i32 13
  store i32 %82, ptr %83, align 4
  call void @sk_setup_caps(ptr noundef %0, ptr noundef %47) #15
  %84 = getelementptr inbounds %struct.ipv6_pinfo, ptr %64, i32 0, i32 2
  store ptr null, ptr %84, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  br label %85

85:                                               ; preds = %81, %49, %13
  %86 = phi i32 [ %51, %49 ], [ 0, %81 ], [ 0, %13 ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__sk_dst_check(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fl6_update_dst(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_dst_lookup_flow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ipv6_opt_accepted(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #7 {
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %5 = load volatile i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 1, %6
  %8 = and i32 %7, -4161
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %12, %10 ], [ null, %3 ]
  %15 = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 8
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %60, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.inet6_skb_parm, ptr %2, i32 0, i32 7
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 32
  %22 = icmp eq i16 %21, 0
  %23 = and i16 %16, 192
  %24 = icmp eq i16 %23, 0
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  %32 = getelementptr i8, ptr %28, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, -241
  %35 = icmp eq i32 %34, 0
  %36 = and i16 %16, 1024
  %37 = icmp eq i16 %36, 0
  %38 = select i1 %35, i1 true, i1 %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.inet6_skb_parm, ptr %2, i32 0, i32 3
  %41 = load i16, ptr %40, align 4
  %42 = icmp eq i16 %41, 0
  %43 = and i16 %16, 3
  %44 = icmp eq i16 %43, 0
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.inet6_skb_parm, ptr %2, i32 0, i32 4
  %48 = load i16, ptr %47, align 2
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.inet6_skb_parm, ptr %2, i32 0, i32 2
  %52 = load i16, ptr %51, align 2
  %53 = icmp eq i16 %52, 0
  %54 = and i16 %16, 768
  %55 = icmp eq i16 %54, 0
  %56 = select i1 %53, i1 true, i1 %55
  br i1 %56, label %60, label %61

57:                                               ; preds = %46
  %58 = and i16 %16, 768
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %50, %13
  br label %61

61:                                               ; preds = %60, %57, %50, %39, %26, %18
  %62 = phi i1 [ false, %60 ], [ true, %57 ], [ true, %26 ], [ true, %18 ], [ true, %39 ], [ true, %50 ]
  ret i1 %62
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @inet6_init() #8 section ".init.text" {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi ptr [ @inetsw6, %0 ], [ %4, %1 ]
  store volatile ptr %2, ptr %2, align 4
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr %struct.list_head, ptr %2, i32 1
  %5 = icmp ult ptr %4, getelementptr inbounds ([11 x %struct.list_head], ptr @inetsw6, i32 1, i32 0)
  br i1 %5, label %1, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @disable_ipv6_mod, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #18
  br label %105

11:                                               ; preds = %6
  %12 = tail call i32 @proto_register(ptr noundef nonnull @tcpv6_prot, i32 noundef 1) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %105

14:                                               ; preds = %11
  %15 = tail call i32 @proto_register(ptr noundef nonnull @udpv6_prot, i32 noundef 1) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %165

17:                                               ; preds = %14
  %18 = tail call i32 @proto_register(ptr noundef nonnull @udplitev6_prot, i32 noundef 1) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %163

20:                                               ; preds = %17
  %21 = tail call i32 @proto_register(ptr noundef nonnull @rawv6_prot, i32 noundef 1) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %161

23:                                               ; preds = %20
  %24 = tail call i32 @proto_register(ptr noundef nonnull @pingv6_prot, i32 noundef 1) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %159

26:                                               ; preds = %23
  %27 = tail call i32 @rawv6_init() #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %157

29:                                               ; preds = %26
  %30 = tail call i32 @sock_register(ptr noundef nonnull @inet6_family_ops) #15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %155

32:                                               ; preds = %29
  %33 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @inet6_net_ops) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %153

35:                                               ; preds = %32
  %36 = tail call i32 @icmpv6_init() #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %151

38:                                               ; preds = %35
  %39 = tail call i32 @ndisc_init() #15
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %149

41:                                               ; preds = %38
  %42 = tail call i32 @igmp6_init() #15
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %147

44:                                               ; preds = %41
  %45 = tail call i32 @raw6_proc_init() #15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %145

47:                                               ; preds = %44
  %48 = tail call i32 @udplite6_proc_init() #15
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %143

50:                                               ; preds = %47
  %51 = tail call i32 @ipv6_misc_proc_init() #15
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %141

53:                                               ; preds = %50
  %54 = tail call i32 @if6_proc_init() #15
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %139

56:                                               ; preds = %53
  %57 = tail call i32 @ip6_route_init() #15
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %137

59:                                               ; preds = %56
  %60 = tail call i32 @ndisc_late_init() #15
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %135

62:                                               ; preds = %59
  %63 = tail call i32 @ip6_flowlabel_init() #15
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %133

65:                                               ; preds = %62
  %66 = tail call i32 @ipv6_anycast_init() #15
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %131

68:                                               ; preds = %65
  %69 = tail call i32 @addrconf_init() #15
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %129

71:                                               ; preds = %68
  %72 = tail call i32 @ipv6_exthdrs_init() #15
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %127

74:                                               ; preds = %71
  %75 = tail call i32 @ipv6_frag_init() #15
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %125

77:                                               ; preds = %74
  %78 = tail call i32 @udpv6_init() #15
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %123

80:                                               ; preds = %77
  %81 = tail call i32 @udplitev6_init() #15
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %121

83:                                               ; preds = %80
  %84 = tail call i32 @udpv6_offload_init() #15
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %119

86:                                               ; preds = %83
  %87 = tail call i32 @tcpv6_init() #15
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %116

89:                                               ; preds = %86
  tail call void @dev_add_pack(ptr noundef nonnull @ipv6_packet_type) #15
  %90 = tail call i32 @pingv6_init() #18
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %114

92:                                               ; preds = %89
  %93 = tail call i32 @seg6_init() #15
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %92
  %96 = tail call i32 @ioam6_init() #15
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = tail call i32 @igmp6_late_init() #15
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = tail call i32 @ipv6_sysctl_register() #15
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !31
  tail call void @arm_heavy_mb() #15
  store ptr @ipv6_stub_impl, ptr @ipv6_stub, align 4
  store ptr @ipv6_bpf_stub_impl, ptr @ipv6_bpf_stub, align 4
  br label %105

105:                                              ; preds = %165, %104, %11, %9
  %106 = phi i32 [ 0, %9 ], [ %12, %11 ], [ %166, %165 ], [ 0, %104 ]
  ret i32 %106

107:                                              ; preds = %101
  tail call void @igmp6_late_cleanup() #15
  br label %108

108:                                              ; preds = %107, %98
  %109 = phi i32 [ %99, %98 ], [ %102, %107 ]
  tail call void @ioam6_exit() #15
  br label %110

110:                                              ; preds = %108, %95
  %111 = phi i32 [ %96, %95 ], [ %109, %108 ]
  tail call void @seg6_exit() #15
  br label %112

112:                                              ; preds = %110, %92
  %113 = phi i32 [ %93, %92 ], [ %111, %110 ]
  tail call void @pingv6_exit() #15
  br label %114

114:                                              ; preds = %112, %89
  %115 = phi i32 [ %90, %89 ], [ %113, %112 ]
  tail call void @dev_remove_pack(ptr noundef nonnull @ipv6_packet_type) #15
  tail call void @tcpv6_exit() #15
  br label %116

116:                                              ; preds = %114, %86
  %117 = phi i32 [ %87, %86 ], [ %115, %114 ]
  %118 = tail call i32 @udpv6_offload_exit() #15
  br label %119

119:                                              ; preds = %116, %83
  %120 = phi i32 [ %84, %83 ], [ %117, %116 ]
  tail call void @udplitev6_exit() #15
  br label %121

121:                                              ; preds = %119, %80
  %122 = phi i32 [ %81, %80 ], [ %120, %119 ]
  tail call void @udpv6_exit() #15
  br label %123

123:                                              ; preds = %121, %77
  %124 = phi i32 [ %78, %77 ], [ %122, %121 ]
  tail call void @ipv6_frag_exit() #15
  br label %125

125:                                              ; preds = %123, %74
  %126 = phi i32 [ %75, %74 ], [ %124, %123 ]
  tail call void @ipv6_exthdrs_exit() #15
  br label %127

127:                                              ; preds = %125, %71
  %128 = phi i32 [ %72, %71 ], [ %126, %125 ]
  tail call void @addrconf_cleanup() #15
  br label %129

129:                                              ; preds = %127, %68
  %130 = phi i32 [ %69, %68 ], [ %128, %127 ]
  tail call void @ipv6_anycast_cleanup() #15
  br label %131

131:                                              ; preds = %129, %65
  %132 = phi i32 [ %66, %65 ], [ %130, %129 ]
  tail call void @ip6_flowlabel_cleanup() #15
  br label %133

133:                                              ; preds = %131, %62
  %134 = phi i32 [ %63, %62 ], [ %132, %131 ]
  tail call void @ndisc_late_cleanup() #15
  br label %135

135:                                              ; preds = %133, %59
  %136 = phi i32 [ %60, %59 ], [ %134, %133 ]
  tail call void @ip6_route_cleanup() #15
  br label %137

137:                                              ; preds = %135, %56
  %138 = phi i32 [ %57, %56 ], [ %136, %135 ]
  tail call void @if6_proc_exit() #15
  br label %139

139:                                              ; preds = %137, %53
  %140 = phi i32 [ -12, %53 ], [ %138, %137 ]
  tail call void @ipv6_misc_proc_exit() #15
  br label %141

141:                                              ; preds = %139, %50
  %142 = phi i32 [ -12, %50 ], [ %140, %139 ]
  tail call void @udplite6_proc_exit() #15
  br label %143

143:                                              ; preds = %141, %47
  %144 = phi i32 [ -12, %47 ], [ %142, %141 ]
  tail call void @raw6_proc_exit() #15
  br label %145

145:                                              ; preds = %143, %44
  %146 = phi i32 [ -12, %44 ], [ %144, %143 ]
  tail call void @igmp6_cleanup() #15
  br label %147

147:                                              ; preds = %145, %41
  %148 = phi i32 [ %42, %41 ], [ %146, %145 ]
  tail call void @ndisc_cleanup() #15
  br label %149

149:                                              ; preds = %147, %38
  %150 = phi i32 [ %39, %38 ], [ %148, %147 ]
  tail call void @icmpv6_cleanup() #15
  br label %151

151:                                              ; preds = %149, %35
  %152 = phi i32 [ %36, %35 ], [ %150, %149 ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @inet6_net_ops) #15
  br label %153

153:                                              ; preds = %151, %32
  %154 = phi i32 [ %33, %32 ], [ %152, %151 ]
  tail call void @sock_unregister(i32 noundef 10) #15
  tail call void @rtnl_unregister_all(i32 noundef 10) #15
  br label %155

155:                                              ; preds = %153, %29
  %156 = phi i32 [ %30, %29 ], [ %154, %153 ]
  tail call void @rawv6_exit() #15
  br label %157

157:                                              ; preds = %155, %26
  %158 = phi i32 [ %27, %26 ], [ %156, %155 ]
  tail call void @proto_unregister(ptr noundef nonnull @pingv6_prot) #15
  br label %159

159:                                              ; preds = %157, %23
  %160 = phi i32 [ %24, %23 ], [ %158, %157 ]
  tail call void @proto_unregister(ptr noundef nonnull @rawv6_prot) #15
  br label %161

161:                                              ; preds = %159, %20
  %162 = phi i32 [ %21, %20 ], [ %160, %159 ]
  tail call void @proto_unregister(ptr noundef nonnull @udplitev6_prot) #15
  br label %163

163:                                              ; preds = %161, %17
  %164 = phi i32 [ %18, %17 ], [ %162, %161 ]
  tail call void @proto_unregister(ptr noundef nonnull @udpv6_prot) #15
  br label %165

165:                                              ; preds = %163, %14
  %166 = phi i32 [ %15, %14 ], [ %164, %163 ]
  tail call void @proto_unregister(ptr noundef nonnull @tcpv6_prot) #15
  br label %105
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_type_dev_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_setup_caps(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rawv6_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icmpv6_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ndisc_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igmp6_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw6_proc_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udplite6_proc_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_misc_proc_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @if6_proc_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_route_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ndisc_late_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_flowlabel_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_anycast_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @addrconf_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_exthdrs_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_frag_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udpv6_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udplitev6_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udpv6_offload_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcpv6_init() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @pingv6_init() local_unnamed_addr #6 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seg6_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ioam6_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igmp6_late_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_sysctl_register() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igmp6_late_cleanup() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ioam6_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seg6_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pingv6_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpv6_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udpv6_offload_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @udplitev6_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @udpv6_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_frag_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_exthdrs_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @addrconf_cleanup() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_anycast_cleanup() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_flowlabel_cleanup() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ndisc_late_cleanup() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_route_cleanup() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @if6_proc_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_misc_proc_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @udplite6_proc_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw6_proc_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igmp6_cleanup() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ndisc_cleanup() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmpv6_cleanup() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unregister_all(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rawv6_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet6_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = icmp ugt i32 %2, 262
  br i1 %5, label %201, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 1
  %8 = icmp eq i32 %2, 0
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %9 = load i16, ptr %7, align 4
  %10 = sext i16 %9 to i32
  %11 = getelementptr [11 x %struct.list_head], ptr @inetsw6, i32 0, i32 %10
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %27, label %14

14:                                               ; preds = %24, %6
  %15 = phi ptr [ %25, %24 ], [ %12, %6 ]
  %16 = getelementptr inbounds %struct.inet_protosw, ptr %15, i32 0, i32 2
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br i1 %8, label %24, label %75

21:                                               ; preds = %14
  br i1 %8, label %73, label %22

22:                                               ; preds = %21
  %23 = icmp eq i16 %17, 0
  br i1 %23, label %75, label %24

24:                                               ; preds = %22, %20
  %25 = load volatile ptr, ptr %15, align 4
  %26 = icmp eq ptr %25, %11
  br i1 %26, label %27, label %14

27:                                               ; preds = %24, %6
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %28 = load i16, ptr %7, align 4
  %29 = sext i16 %28 to i32
  %30 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.6, i32 noundef 10, i32 noundef %2, i32 noundef %29) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %31 = load i16, ptr %7, align 4
  %32 = sext i16 %31 to i32
  %33 = getelementptr [11 x %struct.list_head], ptr @inetsw6, i32 0, i32 %32
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %49, label %36

36:                                               ; preds = %46, %27
  %37 = phi ptr [ %47, %46 ], [ %34, %27 ]
  %38 = getelementptr inbounds %struct.inet_protosw, ptr %37, i32 0, i32 2
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp eq i32 %40, %2
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  br i1 %8, label %71, label %43

43:                                               ; preds = %42
  %44 = icmp eq i16 %39, 0
  br i1 %44, label %75, label %46

45:                                               ; preds = %36
  br i1 %8, label %46, label %75

46:                                               ; preds = %45, %43
  %47 = load volatile ptr, ptr %37, align 4
  %48 = icmp eq ptr %47, %33
  br i1 %48, label %49, label %36

49:                                               ; preds = %46, %27
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %50 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.7, i32 noundef 10, i32 noundef %2) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %51 = load i16, ptr %7, align 4
  %52 = sext i16 %51 to i32
  %53 = getelementptr [11 x %struct.list_head], ptr @inetsw6, i32 0, i32 %52
  %54 = load volatile ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %199, label %56

56:                                               ; preds = %66, %49
  %57 = phi ptr [ %67, %66 ], [ %54, %49 ]
  %58 = getelementptr inbounds %struct.inet_protosw, ptr %57, i32 0, i32 2
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = icmp eq i32 %60, %2
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  br i1 %8, label %69, label %63

63:                                               ; preds = %62
  %64 = icmp eq i16 %59, 0
  br i1 %64, label %75, label %66

65:                                               ; preds = %56
  br i1 %8, label %66, label %75

66:                                               ; preds = %65, %63
  %67 = load volatile ptr, ptr %57, align 4
  %68 = icmp eq ptr %67, %53
  br i1 %68, label %199, label %56

69:                                               ; preds = %62
  %70 = zext i16 %59 to i32
  br label %75

71:                                               ; preds = %42
  %72 = zext i16 %39 to i32
  br label %75

73:                                               ; preds = %21
  %74 = zext i16 %17 to i32
  br label %75

75:                                               ; preds = %73, %71, %69, %65, %63, %45, %43, %22, %20
  %76 = phi i16 [ %51, %69 ], [ %31, %71 ], [ %9, %73 ], [ %51, %63 ], [ %51, %65 ], [ %31, %43 ], [ %31, %45 ], [ %9, %22 ], [ %9, %20 ]
  %77 = phi ptr [ %57, %69 ], [ %37, %71 ], [ %15, %73 ], [ %57, %63 ], [ %57, %65 ], [ %37, %43 ], [ %37, %45 ], [ %15, %22 ], [ %15, %20 ]
  %78 = phi i32 [ %70, %69 ], [ %72, %71 ], [ %74, %73 ], [ %2, %63 ], [ %2, %65 ], [ %2, %43 ], [ %2, %45 ], [ %2, %22 ], [ %2, %20 ]
  %79 = icmp ne i16 %76, 3
  %80 = icmp ne i32 %3, 0
  %81 = or i1 %80, %79
  br i1 %81, label %86, label %82

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 11
  %84 = load ptr, ptr %83, align 4
  %85 = tail call zeroext i1 @ns_capable(ptr noundef %84, i32 noundef 13) #15
  br i1 %85, label %86, label %199

86:                                               ; preds = %82, %75
  %87 = getelementptr inbounds %struct.inet_protosw, ptr %77, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 5
  store ptr %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.inet_protosw, ptr %77, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.inet_protosw, ptr %77, i32 0, i32 5
  %93 = load i8, ptr %92, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %94 = getelementptr inbounds %struct.proto, ptr %91, i32 0, i32 40
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %98, !prof !28

97:                                               ; preds = %86
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 181, i32 noundef 9, ptr noundef null) #15
  br label %98

98:                                               ; preds = %97, %86
  %99 = tail call ptr @sk_alloc(ptr noundef %0, i32 noundef 10, i32 noundef 3264, ptr noundef %91, i32 noundef %3) #15
  %100 = icmp eq ptr %99, null
  br i1 %100, label %201, label %101

101:                                              ; preds = %98
  tail call void @sock_init_data(ptr noundef %1, ptr noundef nonnull %99) #15
  %102 = and i8 %93, 1
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.sock_common, ptr %99, i32 0, i32 5
  %106 = load i8, ptr %105, align 1
  %107 = and i8 %106, -16
  %108 = or i8 %107, 1
  store i8 %108, ptr %105, align 1
  br label %109

109:                                              ; preds = %104, %101
  %110 = getelementptr inbounds %struct.inet_sock, ptr %99, i32 0, i32 12
  %111 = load i16, ptr %110, align 8
  %112 = lshr i8 %93, 1
  %113 = and i8 %112, 2
  %114 = zext i8 %113 to i16
  %115 = and i16 %111, -3
  %116 = or i16 %115, %114
  store i16 %116, ptr %110, align 8
  %117 = load i16, ptr %7, align 4
  %118 = icmp eq i16 %117, 3
  br i1 %118, label %119, label %126

119:                                              ; preds = %109
  %120 = trunc i32 %78 to i16
  %121 = getelementptr inbounds %struct.sock_common, ptr %99, i32 0, i32 2
  %122 = getelementptr inbounds %struct.anon.42, ptr %121, i32 0, i32 1
  store i16 %120, ptr %122, align 2
  %123 = icmp eq i32 %78, 255
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = or i16 %116, 8
  store i16 %125, ptr %110, align 8
  br label %126

126:                                              ; preds = %124, %119, %109
  %127 = getelementptr inbounds %struct.sock, ptr %99, i32 0, i32 80
  store ptr @inet_sock_destruct, ptr %127, align 8
  %128 = getelementptr inbounds %struct.sock_common, ptr %99, i32 0, i32 3
  store i16 10, ptr %128, align 8
  %129 = trunc i32 %78 to i16
  %130 = getelementptr inbounds %struct.sock, ptr %99, i32 0, i32 46
  store i16 %129, ptr %130, align 4
  %131 = load ptr, ptr %90, align 4
  %132 = getelementptr inbounds %struct.proto, ptr %131, i32 0, i32 17
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.sock, ptr %99, i32 0, i32 79
  store ptr %133, ptr %134, align 4
  %135 = getelementptr inbounds %struct.sock_common, ptr %99, i32 0, i32 8
  %136 = load ptr, ptr %135, align 8
  %137 = getelementptr inbounds %struct.proto, ptr %136, i32 0, i32 41
  %138 = load i32, ptr %137, align 4
  %139 = add i32 %138, -108
  %140 = getelementptr i8, ptr %99, i32 %139
  %141 = getelementptr inbounds %struct.inet_sock, ptr %99, i32 0, i32 1
  store ptr %140, ptr %141, align 8
  %142 = getelementptr inbounds %struct.ipv6_pinfo, ptr %140, i32 0, i32 5
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, 8257663
  %145 = or i32 %144, 8519552
  store i32 %145, ptr %142, align 4
  %146 = getelementptr inbounds %struct.ipv6_pinfo, ptr %140, i32 0, i32 9
  %147 = load i16, ptr %146, align 2
  %148 = and i16 %147, -8249
  %149 = or i16 %148, 8200
  store i16 %149, ptr %146, align 2
  %150 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 30
  %151 = load i32, ptr %150, align 4
  %152 = trunc i32 %151 to i16
  %153 = shl i16 %152, 2
  %154 = and i16 %153, 4
  %155 = and i16 %149, -53
  %156 = or i16 %154, %155
  store i16 %156, ptr %146, align 2
  %157 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 15
  %158 = load i8, ptr %157, align 1
  %159 = getelementptr inbounds %struct.sock_common, ptr %99, i32 0, i32 5
  %160 = load i8, ptr %159, align 1
  %161 = shl i8 %158, 5
  %162 = and i8 %161, 32
  %163 = and i8 %160, -33
  %164 = or i8 %163, %162
  store i8 %164, ptr %159, align 1
  %165 = getelementptr inbounds %struct.inet_sock, ptr %99, i32 0, i32 3
  store i16 -1, ptr %165, align 8
  %166 = load i16, ptr %110, align 8
  %167 = or i16 %166, 16
  store i16 %167, ptr %110, align 8
  %168 = getelementptr inbounds %struct.inet_sock, ptr %99, i32 0, i32 10
  store i8 1, ptr %168, align 2
  %169 = getelementptr inbounds %struct.inet_sock, ptr %99, i32 0, i32 16
  store i32 0, ptr %169, align 8
  %170 = getelementptr inbounds %struct.inet_sock, ptr %99, i32 0, i32 18
  store volatile ptr null, ptr %170, align 8
  %171 = getelementptr inbounds %struct.inet_sock, ptr %99, i32 0, i32 13
  store i8 0, ptr %171, align 2
  %172 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 32
  %173 = load i8, ptr %172, align 1
  %174 = icmp eq i8 %173, 0
  %175 = zext i1 %174 to i8
  %176 = getelementptr inbounds %struct.inet_sock, ptr %99, i32 0, i32 11
  store i8 %175, ptr %176, align 1
  %177 = getelementptr inbounds %struct.sock_common, ptr %99, i32 0, i32 2
  %178 = getelementptr inbounds %struct.anon.42, ptr %177, i32 0, i32 1
  %179 = load i16, ptr %178, align 2
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %190, label %181

181:                                              ; preds = %126
  %182 = tail call i16 @llvm.bswap.i16(i16 %179)
  %183 = getelementptr inbounds %struct.inet_sock, ptr %99, i32 0, i32 6
  store i16 %182, ptr %183, align 8
  %184 = load ptr, ptr %135, align 8
  %185 = getelementptr inbounds %struct.proto, ptr %184, i32 0, i32 20
  %186 = load ptr, ptr %185, align 4
  %187 = tail call i32 %186(ptr noundef nonnull %99) #15
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %181
  tail call void @sk_common_release(ptr noundef nonnull %99) #15
  br label %201

190:                                              ; preds = %181, %126
  %191 = load ptr, ptr %135, align 8
  %192 = getelementptr inbounds %struct.proto, ptr %191, i32 0, i32 6
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %201, label %195

195:                                              ; preds = %190
  %196 = tail call i32 %193(ptr noundef nonnull %99) #15
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  tail call void @sk_common_release(ptr noundef nonnull %99) #15
  br label %201

199:                                              ; preds = %82, %66, %49
  %200 = phi i32 [ -1, %82 ], [ -94, %49 ], [ -93, %66 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  br label %201

201:                                              ; preds = %199, %198, %195, %190, %189, %98, %4
  %202 = phi i32 [ -22, %4 ], [ %200, %199 ], [ %187, %189 ], [ %196, %198 ], [ -105, %98 ], [ 0, %195 ], [ 0, %190 ]
  ret i32 %202
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_sock_destruct(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_common_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @inet6_net_init(ptr noundef %0) #8 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 15
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 18
  store i32 100, ptr %3, align 4
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 19
  store i8 0, ptr %4, align 64
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 20
  store i8 0, ptr %5, align 1
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 21
  store i8 0, ptr %6, align 2
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 22
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 22, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16) %8, i8 -1, i32 12, i1 false) #15
  store i32 -5, ptr %7, align 4
  %9 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 23
  store ptr %7, ptr %9, align 4
  %10 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 16
  store i8 1, ptr %10, align 2
  %11 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 17
  store i8 1, ptr %11, align 1
  %12 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 28
  store i32 3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 29
  store i32 100, ptr %13, align 16
  %14 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 27
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 31
  store i32 8, ptr %15, align 8
  %16 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 32
  store i32 8, ptr %16, align 4
  %17 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 33
  store i32 2147483647, ptr %17, align 64
  %18 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 34
  store i32 2147483647, ptr %18, align 4
  %19 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 39
  store i8 0, ptr %19, align 1
  %20 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 30
  store volatile i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 36
  store i32 16777215, ptr %21, align 4
  %22 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 37
  store i64 72057594037927935, ptr %22, align 16
  %23 = tail call fastcc i32 @ipv6_init_mibs(ptr noundef %0) #19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %1
  %26 = tail call i32 @udp6_proc_init(ptr noundef %0) #15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = tail call i32 @tcp6_proc_init(ptr noundef %0) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = tail call i32 @ac6_proc_init(ptr noundef %0) #15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %31
  tail call void @tcp6_proc_exit(ptr noundef %0) #15
  br label %35

35:                                               ; preds = %34, %28
  %36 = phi i32 [ %29, %28 ], [ %32, %34 ]
  tail call void @udp6_proc_exit(ptr noundef %0) #15
  br label %37

37:                                               ; preds = %35, %25
  %38 = phi i32 [ %26, %25 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 5
  %40 = load ptr, ptr %39, align 4
  tail call void @free_percpu(ptr noundef %40) #15
  %41 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 7
  %42 = load ptr, ptr %41, align 4
  tail call void @free_percpu(ptr noundef %42) #15
  %43 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 1
  %44 = load ptr, ptr %43, align 4
  tail call void @free_percpu(ptr noundef %44) #15
  %45 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 10
  %46 = load ptr, ptr %45, align 8
  tail call void @free_percpu(ptr noundef %46) #15
  %47 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 11
  %48 = load ptr, ptr %47, align 4
  tail call void @kfree(ptr noundef %48) #15
  br label %49

49:                                               ; preds = %37, %31, %1
  %50 = phi i32 [ %38, %37 ], [ %23, %1 ], [ 0, %31 ]
  ret i32 %50
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @inet6_net_exit(ptr noundef %0) #11 section ".ref.text" {
  tail call void @udp6_proc_exit(ptr noundef %0) #15
  tail call void @tcp6_proc_exit(ptr noundef %0) #15
  tail call void @ac6_proc_exit(ptr noundef %0) #15
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @free_percpu(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 7
  %5 = load ptr, ptr %4, align 4
  tail call void @free_percpu(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @free_percpu(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 10
  %9 = load ptr, ptr %8, align 8
  tail call void @free_percpu(ptr noundef %9) #15
  %10 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 11
  %11 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %11) #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @ipv6_init_mibs(ptr nocapture noundef %0) unnamed_addr #8 section ".init.text" {
  %2 = tail call noalias ptr @__alloc_percpu(i32 noundef 40, i32 noundef 4) #20
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 5
  store ptr %2, ptr %3, align 4
  %4 = icmp eq ptr %2, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %1
  %6 = tail call noalias ptr @__alloc_percpu(i32 noundef 40, i32 noundef 4) #20
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 7
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = tail call noalias ptr @__alloc_percpu(i32 noundef 304, i32 noundef 8) #20
  %11 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %50, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  %16 = icmp ult i32 %15, %14
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = ptrtoint ptr %10 to i32
  %19 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.ipstats_mib, ptr %22, i32 0, i32 1
  store i32 0, ptr %23, align 4
  %24 = tail call i32 @cpumask_next(i32 noundef %15, ptr noundef nonnull @__cpu_possible_mask) #21
  %25 = icmp ult i32 %24, %14
  br i1 %25, label %26, label %37

26:                                               ; preds = %26, %17
  %27 = phi i32 [ %35, %26 ], [ %24, %17 ]
  %28 = load ptr, ptr %11, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %29
  %33 = inttoptr i32 %32 to ptr
  %34 = getelementptr inbounds %struct.ipstats_mib, ptr %33, i32 0, i32 1
  store i32 0, ptr %34, align 4
  %35 = tail call i32 @cpumask_next(i32 noundef %27, ptr noundef nonnull @__cpu_possible_mask) #21
  %36 = icmp ult i32 %35, %14
  br i1 %36, label %26, label %37

37:                                               ; preds = %26, %17, %13
  %38 = tail call noalias ptr @__alloc_percpu(i32 noundef 24, i32 noundef 4) #20
  %39 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 10
  store ptr %38, ptr %39, align 8
  %40 = icmp eq ptr %38, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %43 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 2048) #22
  %44 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 11
  store ptr %43, ptr %44, align 4
  %45 = icmp eq ptr %43, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load ptr, ptr %39, align 8
  tail call void @free_percpu(ptr noundef %47) #15
  br label %48

48:                                               ; preds = %46, %37
  %49 = load ptr, ptr %11, align 4
  tail call void @free_percpu(ptr noundef %49) #15
  br label %50

50:                                               ; preds = %48, %9
  %51 = load ptr, ptr %7, align 4
  tail call void @free_percpu(ptr noundef %51) #15
  br label %52

52:                                               ; preds = %50, %5
  %53 = load ptr, ptr %3, align 4
  tail call void @free_percpu(ptr noundef %53) #15
  br label %54

54:                                               ; preds = %52, %41, %1
  %55 = phi i32 [ -12, %52 ], [ -12, %1 ], [ 0, %41 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp6_proc_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp6_proc_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ac6_proc_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp6_proc_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp6_proc_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ac6_proc_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_rcv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_list_rcv(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_sock_mc_join(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_sock_mc_drop(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipv6_route_input(ptr noundef %0) #1 {
  tail call void @ip6_route_input(ptr noundef %0) #15
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -2
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 15
  %7 = load i16, ptr %6, align 4
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib6_get_table(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib6_lookup(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib6_table_lookup(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib6_select_path(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_mtu_from_fib6(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib6_nh_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib6_nh_release(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib6_nh_release_dsts(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib6_update_sernum_stub(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_del_rt(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib6_rt_update(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @udpv6_encap_enable() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ndisc_send_na(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm6_local_rxpmtu(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_udp_encap_rcv(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_rcv_encap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_fragment(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_dev_find(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_route_input(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__udp6_lib_lookup(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind readonly }
attributes #18 = { cold nounwind }
attributes #19 = { cold }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { nounwind allocsize(2) }

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
!8 = !{i64 2149074350}
!9 = !{i64 2149074567}
!10 = !{i64 2157670669}
!11 = !{i64 571470, i64 2148061441, i64 2148061467, i64 2148061514, i64 2148061536, i64 2148061564, i64 2148061584}
!12 = !{i64 580120, i64 580137, i64 580161, i64 580187, i64 580205}
!13 = !{i64 2157670996}
!14 = !{i64 2157671849}
!15 = !{i64 2157672176}
!16 = !{i64 2157673091}
!17 = !{i64 2157673418}
!18 = !{i64 2148075213, i64 2148075239, i64 2148075268, i64 2148075302, i64 2148075333, i64 2148075356}
!19 = !{i64 2148174536}
!20 = !{i64 2148076671, i64 2148076703, i64 2148076732, i64 2148076766, i64 2148076797, i64 2148076820}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2149023983}
!23 = !{!"auto-init"}
!24 = !{i64 2151374811, i64 2151374836}
!25 = !{i64 3870923}
!26 = !{i64 3871120}
!27 = !{i64 2151356399}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i64 2150736834}
!30 = !{i64 2157144883}
!31 = !{i64 2157700749}
