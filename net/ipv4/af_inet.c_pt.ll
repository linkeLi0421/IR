; ModuleID = '/llk/IR/net/ipv4/af_inet.c_pt.bc'
source_filename = "../net/ipv4/af_inet.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_sock_destruct:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_sock_destruct\22\09\09\09\09\09"
module asm "__kstrtabns_inet_sock_destruct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_listen:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_listen\22\09\09\09\09\09"
module asm "__kstrtabns_inet_listen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_release:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_release\22\09\09\09\09\09"
module asm "__kstrtabns_inet_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_bind\22\09\09\09\09\09"
module asm "__kstrtabns_inet_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_dgram_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_dgram_connect\22\09\09\09\09\09"
module asm "__kstrtabns_inet_dgram_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___inet_stream_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22__inet_stream_connect\22\09\09\09\09\09"
module asm "__kstrtabns___inet_stream_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_stream_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_stream_connect\22\09\09\09\09\09"
module asm "__kstrtabns_inet_stream_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_accept:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_accept\22\09\09\09\09\09"
module asm "__kstrtabns_inet_accept:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_getname:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_getname\22\09\09\09\09\09"
module asm "__kstrtabns_inet_getname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_send_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_send_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_inet_send_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_sendmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_sendmsg\22\09\09\09\09\09"
module asm "__kstrtabns_inet_sendmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_sendpage:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_sendpage\22\09\09\09\09\09"
module asm "__kstrtabns_inet_sendpage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_recvmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_recvmsg\22\09\09\09\09\09"
module asm "__kstrtabns_inet_recvmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_inet_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_inet_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_stream_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_stream_ops\22\09\09\09\09\09"
module asm "__kstrtabns_inet_stream_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_dgram_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_dgram_ops\22\09\09\09\09\09"
module asm "__kstrtabns_inet_dgram_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_register_protosw:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_register_protosw\22\09\09\09\09\09"
module asm "__kstrtabns_inet_register_protosw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_unregister_protosw:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_unregister_protosw\22\09\09\09\09\09"
module asm "__kstrtabns_inet_unregister_protosw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_sk_rebuild_header:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_sk_rebuild_header\22\09\09\09\09\09"
module asm "__kstrtabns_inet_sk_rebuild_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_sk_set_state:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_sk_set_state\22\09\09\09\09\09"
module asm "__kstrtabns_inet_sk_set_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_current_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_current_timestamp\22\09\09\09\09\09"
module asm "__kstrtabns_inet_current_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_ctl_sock_create:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_ctl_sock_create\22\09\09\09\09\09"
module asm "__kstrtabns_inet_ctl_sock_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snmp_fold_field:\09\09\09\09\09"
module asm "\09.asciz \09\22snmp_fold_field\22\09\09\09\09\09"
module asm "__kstrtabns_snmp_fold_field:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snmp_get_cpu_field64:\09\09\09\09\09"
module asm "\09.asciz \09\22snmp_get_cpu_field64\22\09\09\09\09\09"
module asm "__kstrtabns_snmp_get_cpu_field64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snmp_fold_field64:\09\09\09\09\09"
module asm "\09.asciz \09\22snmp_fold_field64\22\09\09\09\09\09"
module asm "__kstrtabns_snmp_fold_field64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.pingv6_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
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
%struct.ctl_table_header = type { %union.anon.25, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.140, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.140 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.packet_offload = type { i16, i16, %struct.offload_callbacks, %struct.list_head }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.net_offload = type { %struct.offload_callbacks, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.178, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.178 = type { ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.net_protocol = type { ptr, ptr, ptr, ptr, i8 }
%struct.inet_protosw = type { %struct.list_head, i16, i16, ptr, ptr, i8 }
%struct.packet_type = type { i16, i8, ptr, %struct.netdevice_tracker, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.netdevice_tracker = type {}
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.183, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.184, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.185, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.179, [0 x i32], %union.anon.180, i16, i16, %union.anon.181, %struct.refcount_struct, [0 x i32], %union.anon.182 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.115 }
%union.anon.115 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.179 = type { i32 }
%union.anon.180 = type { %struct.hlist_node }
%union.anon.181 = type { i32 }
%union.anon.182 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.183 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.184 = type { ptr }
%union.anon.185 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.122 }
%union.anon.122 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.194, %struct.anon.195, i32, i32, [13 x i64] }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.194 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.195 = type { i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.158, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%union.anon.34 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.158 = type { %struct.callback_head }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.anon.2 = type { i16, i16 }
%struct.anon = type { i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.196, %struct.anon.197, %struct.anon.198, i32, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.196 = type { i32, i32, i64 }
%struct.anon.197 = type { i32, i32, i64 }
%struct.anon.198 = type { i32, i32 }
%struct.tcp_fastopen_request = type { %struct.tcp_fastopen_cookie, ptr, i32, i32, ptr }
%struct.tcp_fastopen_cookie = type { [2 x i64], i8, i8 }
%struct.socket_alloc = type { %struct.socket, %struct.inode, [56 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.187, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.188, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.189, ptr, %struct.address_space, %struct.list_head, %union.anon.190, i32, i32, ptr, ptr }
%union.anon.187 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.188 = type { %struct.callback_head }
%union.anon.189 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.190 = type { ptr }
%struct.rps_sock_flow_table = type { i32, [60 x i8], [0 x i32] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.177, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.175 }
%union.anon.4 = type { ptr }
%union.anon.175 = type { i64 }
%union.anon.177 = type { ptr }
%struct.ifreq = type { %union.anon.62, %union.anon.63 }
%union.anon.62 = type { [16 x i8] }
%union.anon.63 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.rtentry = type { i32, %struct.sockaddr, %struct.sockaddr, %struct.sockaddr, i16, i16, i32, ptr, i16, ptr, i32, i32, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.anon.123 = type { i16, i16 }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.41, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.136, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.41 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.136 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }

@.str = private unnamed_addr constant [54 x i8] c"\013IPv4: Attempt to release TCP socket in state %d %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"\013IPv4: Attempt to release alive inet socket %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"net/ipv4/af_inet.c\00", align 1
@__kstrtab_inet_sock_destruct = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_sock_destruct = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_sock_destruct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_sock_destruct to i32), ptr @__kstrtab_inet_sock_destruct, ptr @__kstrtabns_inet_sock_destruct }, section "___ksymtab+inet_sock_destruct", align 4
@__kstrtab_inet_listen = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_listen = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_listen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_listen to i32), ptr @__kstrtab_inet_listen, ptr @__kstrtabns_inet_listen }, section "___ksymtab+inet_listen", align 4
@__kstrtab_inet_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_release = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_release to i32), ptr @__kstrtab_inet_release, ptr @__kstrtabns_inet_release }, section "___ksymtab+inet_release", align 4
@__kstrtab_inet_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_bind to i32), ptr @__kstrtab_inet_bind, ptr @__kstrtabns_inet_bind }, section "___ksymtab+inet_bind", align 4
@__kstrtab_inet_dgram_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_dgram_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_dgram_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_dgram_connect to i32), ptr @__kstrtab_inet_dgram_connect, ptr @__kstrtabns_inet_dgram_connect }, section "___ksymtab+inet_dgram_connect", align 4
@__kstrtab___inet_stream_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns___inet_stream_connect = external dso_local constant [0 x i8], align 1
@__ksymtab___inet_stream_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__inet_stream_connect to i32), ptr @__kstrtab___inet_stream_connect, ptr @__kstrtabns___inet_stream_connect }, section "___ksymtab+__inet_stream_connect", align 4
@__kstrtab_inet_stream_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_stream_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_stream_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_stream_connect to i32), ptr @__kstrtab_inet_stream_connect, ptr @__kstrtabns_inet_stream_connect }, section "___ksymtab+inet_stream_connect", align 4
@__kstrtab_inet_accept = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_accept = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_accept = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_accept to i32), ptr @__kstrtab_inet_accept, ptr @__kstrtabns_inet_accept }, section "___ksymtab+inet_accept", align 4
@__kstrtab_inet_getname = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_getname = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_getname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_getname to i32), ptr @__kstrtab_inet_getname, ptr @__kstrtabns_inet_getname }, section "___ksymtab+inet_getname", align 4
@__kstrtab_inet_send_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_send_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_send_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_send_prepare to i32), ptr @__kstrtab_inet_send_prepare, ptr @__kstrtabns_inet_send_prepare }, section "___ksymtab_gpl+inet_send_prepare", align 4
@__kstrtab_inet_sendmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_sendmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_sendmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_sendmsg to i32), ptr @__kstrtab_inet_sendmsg, ptr @__kstrtabns_inet_sendmsg }, section "___ksymtab+inet_sendmsg", align 4
@__kstrtab_inet_sendpage = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_sendpage = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_sendpage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_sendpage to i32), ptr @__kstrtab_inet_sendpage, ptr @__kstrtabns_inet_sendpage }, section "___ksymtab+inet_sendpage", align 4
@__kstrtab_inet_recvmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_recvmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_recvmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_recvmsg to i32), ptr @__kstrtab_inet_recvmsg, ptr @__kstrtabns_inet_recvmsg }, section "___ksymtab+inet_recvmsg", align 4
@__kstrtab_inet_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_shutdown to i32), ptr @__kstrtab_inet_shutdown, ptr @__kstrtabns_inet_shutdown }, section "___ksymtab+inet_shutdown", align 4
@__kstrtab_inet_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_ioctl to i32), ptr @__kstrtab_inet_ioctl, ptr @__kstrtabns_inet_ioctl }, section "___ksymtab+inet_ioctl", align 4
@inet_stream_ops = dso_local constant %struct.proto_ops { i32 2, ptr null, ptr @inet_release, ptr @inet_bind, ptr @inet_stream_connect, ptr @sock_no_socketpair, ptr @inet_accept, ptr @inet_getname, ptr @tcp_poll, ptr @inet_ioctl, ptr @sock_gettstamp, ptr @inet_listen, ptr @inet_shutdown, ptr @sock_common_setsockopt, ptr @sock_common_getsockopt, ptr null, ptr @inet_sendmsg, ptr @inet_recvmsg, ptr @tcp_mmap, ptr @inet_sendpage, ptr @tcp_splice_read, ptr null, ptr @tcp_peek_len, ptr @tcp_read_sock, ptr @tcp_sendpage_locked, ptr @tcp_sendmsg_locked, ptr @tcp_set_rcvlowat }, align 4
@__kstrtab_inet_stream_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_stream_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_stream_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_stream_ops to i32), ptr @__kstrtab_inet_stream_ops, ptr @__kstrtabns_inet_stream_ops }, section "___ksymtab+inet_stream_ops", align 4
@inet_dgram_ops = dso_local constant %struct.proto_ops { i32 2, ptr null, ptr @inet_release, ptr @inet_bind, ptr @inet_dgram_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @inet_getname, ptr @udp_poll, ptr @inet_ioctl, ptr @sock_gettstamp, ptr @sock_no_listen, ptr @inet_shutdown, ptr @sock_common_setsockopt, ptr @sock_common_getsockopt, ptr null, ptr @inet_sendmsg, ptr @inet_recvmsg, ptr @sock_no_mmap, ptr @inet_sendpage, ptr null, ptr @sk_set_peek_off, ptr null, ptr @udp_read_sock, ptr null, ptr null, ptr null }, align 4
@__kstrtab_inet_dgram_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_dgram_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_dgram_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_dgram_ops to i32), ptr @__kstrtab_inet_dgram_ops, ptr @__kstrtabns_inet_dgram_ops }, section "___ksymtab+inet_dgram_ops", align 4
@inetsw_lock = internal global %struct.spinlock zeroinitializer, align 4
@inetsw = internal global [11 x %struct.list_head] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"\013IPv4: Attempt to override permanent protocol %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"\013IPv4: Ignoring attempt to register invalid socket type %d\0A\00", align 1
@__kstrtab_inet_register_protosw = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_register_protosw = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_register_protosw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_register_protosw to i32), ptr @__kstrtab_inet_register_protosw, ptr @__kstrtabns_inet_register_protosw }, section "___ksymtab+inet_register_protosw", align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"\013IPv4: Attempt to unregister permanent protocol %d\0A\00", align 1
@__kstrtab_inet_unregister_protosw = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_unregister_protosw = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_unregister_protosw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_unregister_protosw to i32), ptr @__kstrtab_inet_unregister_protosw, ptr @__kstrtabns_inet_unregister_protosw }, section "___ksymtab+inet_unregister_protosw", align 4
@__kstrtab_inet_sk_rebuild_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_sk_rebuild_header = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_sk_rebuild_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_sk_rebuild_header to i32), ptr @__kstrtab_inet_sk_rebuild_header, ptr @__kstrtabns_inet_sk_rebuild_header }, section "___ksymtab+inet_sk_rebuild_header", align 4
@__kstrtab_inet_sk_set_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_sk_set_state = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_sk_set_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_sk_set_state to i32), ptr @__kstrtab_inet_sk_set_state, ptr @__kstrtabns_inet_sk_set_state }, section "___ksymtab+inet_sk_set_state", align 4
@inet_offloads = external dso_local global [256 x ptr], align 4
@__kstrtab_inet_current_timestamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_current_timestamp = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_current_timestamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_current_timestamp to i32), ptr @__kstrtab_inet_current_timestamp, ptr @__kstrtabns_inet_current_timestamp }, section "___ksymtab+inet_current_timestamp", align 4
@pingv6_ops = external dso_local local_unnamed_addr global %struct.pingv6_ops, align 4
@__kstrtab_inet_ctl_sock_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_ctl_sock_create = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_ctl_sock_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_ctl_sock_create to i32), ptr @__kstrtab_inet_ctl_sock_create, ptr @__kstrtabns_inet_ctl_sock_create }, section "___ksymtab_gpl+inet_ctl_sock_create", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_snmp_fold_field = external dso_local constant [0 x i8], align 1
@__kstrtabns_snmp_fold_field = external dso_local constant [0 x i8], align 1
@__ksymtab_snmp_fold_field = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snmp_fold_field to i32), ptr @__kstrtab_snmp_fold_field, ptr @__kstrtabns_snmp_fold_field }, section "___ksymtab_gpl+snmp_fold_field", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab_snmp_get_cpu_field64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_snmp_get_cpu_field64 = external dso_local constant [0 x i8], align 1
@__ksymtab_snmp_get_cpu_field64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snmp_get_cpu_field64 to i32), ptr @__kstrtab_snmp_get_cpu_field64, ptr @__kstrtabns_snmp_get_cpu_field64 }, section "___ksymtab_gpl+snmp_get_cpu_field64", align 4
@__kstrtab_snmp_fold_field64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_snmp_fold_field64 = external dso_local constant [0 x i8], align 1
@__ksymtab_snmp_fold_field64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snmp_fold_field64 to i32), ptr @__kstrtab_snmp_fold_field64, ptr @__kstrtabns_snmp_fold_field64 }, section "___ksymtab_gpl+snmp_fold_field64", align 4
@__initcall__kmod_af_inet__644_1917_ipv4_offload_init5 = internal global ptr @ipv4_offload_init, section ".initcall5.init", align 4
@__initcall__kmod_af_inet__646_2048_inet_init5 = internal global ptr @inet_init, section ".initcall5.init", align 4
@init_net = external dso_local global %struct.net, align 64
@rfs_needed = external dso_local global %struct.static_key_false, align 4
@rps_sock_flow_table = external dso_local global ptr, align 4
@rps_cpu_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"include/net/sock.h\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"\016IPv4: %s(): shifting inet->saddr from %pI4 to %pI4\0A\00", align 1
@__func__.inet_sk_reselect_saddr = private unnamed_addr constant [23 x i8] c"inet_sk_reselect_saddr\00", align 1
@__tracepoint_inet_sock_set_state = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.11 = private unnamed_addr constant [45 x i8] c"\012IPv4: %s: Cannot add UDP protocol offload\0A\00", align 1
@__func__.ipv4_offload_init = private unnamed_addr constant [18 x i8] c"ipv4_offload_init\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"\012IPv4: %s: Cannot add TCP protocol offload\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"\012IPv4: %s: Cannot add IPIP protocol offload\0A\00", align 1
@ip_packet_offload = internal global %struct.packet_offload { i16 8, i16 0, %struct.offload_callbacks { ptr @inet_gso_segment, ptr @inet_gro_receive, ptr @inet_gro_complete }, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@ipip_offload = internal constant %struct.net_offload { %struct.offload_callbacks { ptr @ipip_gso_segment, ptr @ipip_gro_receive, ptr @ipip_gro_complete }, i32 0 }, align 4
@tcp_prot = external dso_local global %struct.proto, align 4
@udp_prot = external dso_local global %struct.proto, align 4
@raw_prot = external dso_local global %struct.proto, align 4
@ping_prot = external dso_local global %struct.proto, align 4
@inet_family_ops = internal constant %struct.net_proto_family { i32 2, ptr @inet_create, ptr null }, align 4
@icmp_protocol = internal constant %struct.net_protocol { ptr null, ptr null, ptr @icmp_rcv, ptr @icmp_err, i8 1 }, align 4
@.str.14 = private unnamed_addr constant [38 x i8] c"\012IPv4: %s: Cannot add ICMP protocol\0A\00", align 1
@__func__.inet_init = private unnamed_addr constant [10 x i8] c"inet_init\00", align 1
@udp_protocol = internal global %struct.net_protocol { ptr @udp_v4_early_demux, ptr @udp_v4_early_demux, ptr @udp_rcv, ptr @udp_err, i8 1 }, align 4
@.str.15 = private unnamed_addr constant [37 x i8] c"\012IPv4: %s: Cannot add UDP protocol\0A\00", align 1
@tcp_protocol = internal global %struct.net_protocol { ptr @tcp_v4_early_demux, ptr @tcp_v4_early_demux, ptr @tcp_v4_rcv, ptr @tcp_v4_err, i8 3 }, align 4
@.str.16 = private unnamed_addr constant [37 x i8] c"\012IPv4: %s: Cannot add TCP protocol\0A\00", align 1
@inetsw_array = internal global [4 x %struct.inet_protosw] [%struct.inet_protosw { %struct.list_head zeroinitializer, i16 1, i16 6, ptr @tcp_prot, ptr @inet_stream_ops, i8 6 }, %struct.inet_protosw { %struct.list_head zeroinitializer, i16 2, i16 17, ptr @udp_prot, ptr @inet_dgram_ops, i8 2 }, %struct.inet_protosw { %struct.list_head zeroinitializer, i16 2, i16 1, ptr @ping_prot, ptr @inet_sockraw_ops, i8 1 }, %struct.inet_protosw { %struct.list_head zeroinitializer, i16 3, i16 0, ptr @raw_prot, ptr @inet_sockraw_ops, i8 1 }], align 4
@.str.17 = private unnamed_addr constant [27 x i8] c"%s: Cannot init ipv4 mibs\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"Failed to create the ICMP control socket.\0A\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"\012IPv4: %s: Cannot init ipv4 inet pernet ops\0A\00", align 1
@ip_packet_type = internal global %struct.packet_type { i16 8, i8 0, ptr null, %struct.netdevice_tracker zeroinitializer, ptr @ip_rcv, ptr @ip_list_rcv, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@.str.20 = private unnamed_addr constant [27 x i8] c"net-pf-%d-proto-%d-type-%d\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"net-pf-%d-proto-%d\00", align 1
@inet_sockraw_ops = internal constant %struct.proto_ops { i32 2, ptr null, ptr @inet_release, ptr @inet_bind, ptr @inet_dgram_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @inet_getname, ptr @datagram_poll, ptr @inet_ioctl, ptr @sock_gettstamp, ptr @sock_no_listen, ptr @inet_shutdown, ptr @sock_common_setsockopt, ptr @sock_common_getsockopt, ptr null, ptr @inet_sendmsg, ptr @inet_recvmsg, ptr @sock_no_mmap, ptr @inet_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ipv4_mib_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ipv4_mib_init_net, ptr null, ptr @ipv4_mib_exit_net, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@af_inet_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @inet_init_net, ptr null, ptr null, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@llvm.compiler.used = appending global [28 x ptr] [ptr @__initcall__kmod_af_inet__644_1917_ipv4_offload_init5, ptr @__initcall__kmod_af_inet__646_2048_inet_init5, ptr @__ksymtab___inet_stream_connect, ptr @__ksymtab_inet_accept, ptr @__ksymtab_inet_bind, ptr @__ksymtab_inet_ctl_sock_create, ptr @__ksymtab_inet_current_timestamp, ptr @__ksymtab_inet_dgram_connect, ptr @__ksymtab_inet_dgram_ops, ptr @__ksymtab_inet_getname, ptr @__ksymtab_inet_ioctl, ptr @__ksymtab_inet_listen, ptr @__ksymtab_inet_recvmsg, ptr @__ksymtab_inet_register_protosw, ptr @__ksymtab_inet_release, ptr @__ksymtab_inet_send_prepare, ptr @__ksymtab_inet_sendmsg, ptr @__ksymtab_inet_sendpage, ptr @__ksymtab_inet_shutdown, ptr @__ksymtab_inet_sk_rebuild_header, ptr @__ksymtab_inet_sk_set_state, ptr @__ksymtab_inet_sock_destruct, ptr @__ksymtab_inet_stream_connect, ptr @__ksymtab_inet_stream_ops, ptr @__ksymtab_inet_unregister_protosw, ptr @__ksymtab_snmp_fold_field, ptr @__ksymtab_snmp_fold_field64, ptr @__ksymtab_snmp_get_cpu_field64], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_sock_destruct(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  %5 = icmp eq ptr %3, null
  %6 = or i1 %4, %5
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi ptr [ %3, %7 ], [ %17, %9 ]
  %11 = load i32, ptr %8, align 4
  %12 = add i32 %11, -1
  store volatile i32 %12, ptr %8, align 4
  %13 = load ptr, ptr %10, align 8
  %14 = getelementptr inbounds %struct.anon.43, ptr %10, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr null, ptr %14, align 4
  store ptr null, ptr %10, align 8
  %16 = getelementptr inbounds %struct.anon.43, ptr %13, i32 0, i32 1
  store volatile ptr %15, ptr %16, align 4
  store volatile ptr %13, ptr %15, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %10, i32 noundef 0) #17
  %17 = load ptr, ptr %2, align 4
  %18 = icmp eq ptr %17, %2
  %19 = icmp eq ptr %17, null
  %20 = or i1 %18, %19
  br i1 %20, label %21, label %9

21:                                               ; preds = %9, %1
  %22 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  %25 = icmp eq ptr %23, null
  %26 = or i1 %24, %25
  br i1 %26, label %41, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 7, i32 1
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi ptr [ %23, %27 ], [ %37, %29 ]
  %31 = load i32, ptr %28, align 4
  %32 = add i32 %31, -1
  store volatile i32 %32, ptr %28, align 4
  %33 = load ptr, ptr %30, align 8
  %34 = getelementptr inbounds %struct.anon.43, ptr %30, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  store ptr null, ptr %34, align 4
  store ptr null, ptr %30, align 8
  %36 = getelementptr inbounds %struct.anon.43, ptr %33, i32 0, i32 1
  store volatile ptr %35, ptr %36, align 4
  store volatile ptr %33, ptr %35, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %30, i32 noundef 0) #17
  %37 = load ptr, ptr %22, align 4
  %38 = icmp eq ptr %37, %22
  %39 = icmp eq ptr %37, null
  %40 = or i1 %38, %39
  br i1 %40, label %41, label %29

41:                                               ; preds = %29, %21
  %42 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  store i32 0, ptr %42, align 8
  %43 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.proto, ptr %44, i32 0, i32 30
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %50 = load i32, ptr %49, align 4
  %51 = icmp sgt i32 %50, 4095
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef %50) #17
  br label %53

53:                                               ; preds = %52, %48, %41
  %54 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %55 = load i16, ptr %54, align 2
  %56 = icmp eq i16 %55, 1
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %59 = load volatile i8, ptr %58, align 2
  %60 = icmp eq i8 %59, 7
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load volatile i8, ptr %58, align 2
  %63 = zext i8 %62 to i32
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %63, ptr noundef %0) #18
  br label %99

65:                                               ; preds = %57, %53
  %66 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #18
  br label %99

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %74 = load volatile i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76, !prof !9

76:                                               ; preds = %72
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 151, i32 noundef 9, ptr noundef null) #17
  br label %77

77:                                               ; preds = %76, %72
  %78 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %79 = load volatile i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81, !prof !9

81:                                               ; preds = %77
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 152, i32 noundef 9, ptr noundef null) #17
  br label %82

82:                                               ; preds = %81, %77
  %83 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86, !prof !9

86:                                               ; preds = %82
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 153, i32 noundef 9, ptr noundef null) #17
  br label %87

87:                                               ; preds = %86, %82
  %88 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91, !prof !9

91:                                               ; preds = %87
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 154, i32 noundef 9, ptr noundef null) #17
  br label %92

92:                                               ; preds = %91, %87
  %93 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 5
  %94 = load ptr, ptr %93, align 4
  tail call void @kfree(ptr noundef %94) #17
  %95 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %96 = load ptr, ptr %95, align 8
  tail call void @dst_release(ptr noundef %96) #17
  %97 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 1
  %98 = load ptr, ptr %97, align 8
  tail call void @dst_release(ptr noundef %98) #17
  br label %99

99:                                               ; preds = %92, %70, %61
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_listen(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 16
  tail call void @lock_sock_nested(ptr noundef %4, i32 noundef 0) #17
  %5 = load i32, ptr %0, align 64
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %37

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 4
  %13 = load volatile i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, 1152
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 54
  store volatile i32 %1, ptr %19, align 8
  %20 = icmp eq i8 %13, 10
  br i1 %20, label %37, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 101), align 8
  %23 = and i32 %22, 1026
  %24 = icmp eq i32 %23, 1026
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.inet_connection_sock, ptr %4, i32 0, i32 1, i32 7, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 1), align 16
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %1) #17
  store i32 %31, ptr %26, align 4
  tail call void @tcp_fastopen_init_key_once(ptr noundef nonnull @init_net) #17
  br label %32

32:                                               ; preds = %29, %25, %21
  %33 = tail call i32 @inet_csk_listen_start(ptr noundef %4) #17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load volatile i8, ptr %12, align 2
  br label %37

37:                                               ; preds = %35, %32, %18, %11, %7, %2
  %38 = phi i32 [ -22, %2 ], [ -22, %7 ], [ %33, %32 ], [ -22, %11 ], [ 0, %35 ], [ 0, %18 ]
  tail call void @release_sock(ptr noundef %4) #17
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_fastopen_init_key_once(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_csk_listen_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  tail call void @ip_mc_drop_socket(ptr noundef nonnull %3) #17
  %6 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  %11 = tail call ptr @llvm.thread.pointer() #17
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 48
  %18 = load i32, ptr %17, align 8
  br label %19

19:                                               ; preds = %16, %10, %5
  %20 = phi i32 [ 0, %10 ], [ %18, %16 ], [ 0, %5 ]
  %21 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 8
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef nonnull %3, i32 noundef %20) #17
  store ptr null, ptr %2, align 16
  br label %24

24:                                               ; preds = %19, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_mc_drop_socket(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_bind(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.proto, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call i32 %9(ptr noundef %5, ptr noundef %1, i32 noundef %2) #17
  br label %17

13:                                               ; preds = %3
  %14 = icmp ult i32 %2, 16
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = tail call i32 @__inet_bind(ptr noundef %5, ptr noundef %1, i32 undef, i32 noundef 2)
  br label %17

17:                                               ; preds = %15, %13, %11
  %18 = phi i32 [ %12, %11 ], [ %16, %15 ], [ -22, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__inet_bind(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i16, ptr %1, align 4
  switch i16 %5, label %110 [
    i16 2, label %6
    i16 0, label %9
  ]

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  br label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %110

13:                                               ; preds = %9, %6
  %14 = phi i32 [ %8, %6 ], [ 0, %9 ]
  %15 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  %16 = tail call i32 @inet_addr_type_table(ptr noundef nonnull @init_net, i32 noundef %14, i32 noundef 255) #17
  %17 = load i32, ptr %15, align 4
  %18 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 35), align 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %22 = load i16, ptr %21, align 8
  %23 = and i16 %22, 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = and i16 %22, 32
  %27 = icmp ne i16 %26, 0
  br label %28

28:                                               ; preds = %25, %20, %13
  %29 = phi i1 [ true, %20 ], [ true, %13 ], [ %27, %25 ]
  %30 = icmp eq i32 %17, 0
  %31 = or i1 %30, %29
  %32 = icmp eq i32 %16, 2
  %33 = or i1 %32, %31
  %34 = icmp eq i32 %16, 5
  %35 = or i1 %34, %33
  %36 = icmp eq i32 %16, 3
  %37 = or i1 %36, %35
  br i1 %37, label %38, label %110

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 1
  %40 = load i16, ptr %39, align 2
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %42 = and i32 %3, 8
  %43 = icmp eq i32 %42, 0
  %44 = icmp ne i16 %40, 0
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = zext i16 %41 to i32
  %48 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 117), align 16
  %49 = icmp sgt i32 %48, %47
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %52 = tail call zeroext i1 @ns_capable(ptr noundef %51, i32 noundef 10) #17
  br i1 %52, label %53, label %110

53:                                               ; preds = %50, %46, %38
  %54 = and i32 %3, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #17
  br label %57

57:                                               ; preds = %56, %53
  %58 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %59 = load volatile i8, ptr %58, align 2
  %60 = icmp eq i8 %59, 7
  br i1 %60, label %61, label %107

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %63 = getelementptr inbounds %struct.anon.2, ptr %62, i32 0, i32 1
  %64 = load i16, ptr %63, align 2
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %107

66:                                               ; preds = %61
  %67 = load i32, ptr %15, align 4
  %68 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  store i32 %67, ptr %69, align 4
  switch i32 %16, label %71 [
    i32 5, label %70
    i32 3, label %70
  ]

70:                                               ; preds = %66, %66
  store i32 0, ptr %68, align 4
  br label %71

71:                                               ; preds = %70, %66
  br i1 %44, label %80, label %72

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %74 = load i16, ptr %73, align 8
  %75 = and i16 %74, 256
  %76 = icmp eq i16 %75, 0
  %77 = and i32 %3, 1
  %78 = icmp eq i32 %77, 0
  %79 = and i1 %78, %76
  br i1 %79, label %80, label %90

80:                                               ; preds = %72, %71
  %81 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.proto, ptr %82, i32 0, i32 23
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 %84(ptr noundef %0, i16 noundef zeroext %41) #17
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, ptr %69, align 4
  br label %90

89:                                               ; preds = %80
  store i32 0, ptr %69, align 4
  store i32 0, ptr %68, align 4
  br label %107

90:                                               ; preds = %87, %72
  %91 = phi i32 [ %88, %87 ], [ %67, %72 ]
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %95 = load i8, ptr %94, align 8
  %96 = or i8 %95, 64
  store i8 %96, ptr %94, align 8
  br label %97

97:                                               ; preds = %93, %90
  %98 = icmp eq i16 %40, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %101 = load i8, ptr %100, align 8
  %102 = or i8 %101, -128
  store i8 %102, ptr %100, align 8
  br label %103

103:                                              ; preds = %99, %97
  %104 = load i16, ptr %63, align 2
  %105 = tail call i16 @llvm.bswap.i16(i16 %104)
  %106 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  store i16 %105, ptr %106, align 8
  store i32 0, ptr %0, align 8
  store i16 0, ptr %62, align 4
  tail call fastcc void @sk_dst_reset(ptr noundef %0)
  br label %107

107:                                              ; preds = %103, %89, %61, %57
  %108 = phi i32 [ -22, %57 ], [ -22, %61 ], [ -98, %89 ], [ 0, %103 ]
  br i1 %55, label %110, label %109

109:                                              ; preds = %107
  tail call void @release_sock(ptr noundef %0) #17
  br label %110

110:                                              ; preds = %109, %107, %50, %28, %9, %4
  %111 = phi i32 [ -97, %9 ], [ %108, %109 ], [ %108, %107 ], [ -13, %50 ], [ -99, %28 ], [ -97, %4 ]
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_type_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sk_dst_reset(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %2, align 4
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #17, !srcloc !11
  %5 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %4) #17, !srcloc !12
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = inttoptr i32 %6 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !13
  tail call void @dst_release(ptr noundef %7) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_dgram_connect(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = icmp ult i32 %2, 2
  br i1 %7, label %44, label %8

8:                                                ; preds = %4
  %9 = load i16, ptr %1, align 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.proto, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %6, i32 noundef %3) #17
  br label %44

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 2
  %19 = getelementptr inbounds %struct.anon.2, ptr %18, i32 0, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #17
  %23 = load i16, ptr %19, align 2
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 8
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.proto, ptr %27, i32 0, i32 23
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %6, i16 noundef zeroext 0) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i16, ptr %19, align 2
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #17
  %35 = getelementptr inbounds %struct.inet_sock, ptr %6, i32 0, i32 6
  store i16 %34, ptr %35, align 8
  br label %36

36:                                               ; preds = %32, %22
  tail call void @release_sock(ptr noundef %6) #17
  br label %38

37:                                               ; preds = %25
  tail call void @release_sock(ptr noundef %6) #17
  br label %44

38:                                               ; preds = %36, %17
  %39 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 8
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.proto, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 %42(ptr noundef %6, ptr noundef %1, i32 noundef %2) #17
  br label %44

44:                                               ; preds = %38, %37, %11, %4
  %45 = phi i32 [ %16, %11 ], [ %43, %38 ], [ -22, %4 ], [ -11, %37 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__inet_stream_connect(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 16
  %9 = icmp eq ptr %1, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %5
  %11 = icmp ult i32 %2, 2
  br i1 %11, label %151, label %12

12:                                               ; preds = %10
  %13 = load i16, ptr %1, align 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 8
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.proto, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %8, i32 noundef %3) #17
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 1, i32 4
  store i32 %22, ptr %0, align 64
  br label %151

23:                                               ; preds = %12, %5
  %24 = load i32, ptr %0, align 64
  switch i32 %24, label %151 [
    i32 3, label %25
    i32 2, label %26
    i32 1, label %34
  ]

25:                                               ; preds = %23
  br label %151

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.inet_sock, ptr %8, i32 0, i32 12
  %28 = load i16, ptr %27, align 8
  %29 = and i16 %28, 1024
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %26
  %32 = icmp eq i32 %4, 0
  %33 = select i1 %32, i32 -106, i32 -115
  br label %52

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 4
  %36 = load volatile i8, ptr %35, align 2
  %37 = icmp eq i8 %36, 7
  br i1 %37, label %38, label %151

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 8
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.proto, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 %42(ptr noundef %8, ptr noundef %1, i32 noundef %2) #17
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %151, label %45

45:                                               ; preds = %38
  store i32 2, ptr %0, align 64
  %46 = icmp eq i32 %43, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.inet_sock, ptr %8, i32 0, i32 12
  %49 = load i16, ptr %48, align 8
  %50 = and i16 %49, 1024
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %151

52:                                               ; preds = %47, %45, %31, %26
  %53 = phi i32 [ %33, %31 ], [ -114, %26 ], [ -115, %47 ], [ -115, %45 ]
  %54 = and i32 %3, 2048
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 31
  %58 = load i32, ptr %57, align 4
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i32 [ %58, %56 ], [ 0, %52 ]
  %61 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 4
  %62 = load volatile i8, ptr %61, align 2
  %63 = zext i8 %62 to i32
  %64 = shl nuw i32 1, %63
  %65 = and i32 %64, 12
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %128, label %67

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 46
  %69 = load i16, ptr %68, align 4
  %70 = icmp eq i16 %69, 6
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.tcp_sock, ptr %8, i32 0, i32 115
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.tcp_fastopen_request, ptr %73, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8
  %78 = icmp ne ptr %77, null
  %79 = zext i1 %78 to i32
  br label %80

80:                                               ; preds = %75, %71, %67
  %81 = phi i32 [ 0, %71 ], [ 0, %67 ], [ %79, %75 ]
  %82 = icmp eq i32 %60, 0
  br i1 %82, label %151, label %83

83:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #17
  %84 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 1
  %85 = tail call ptr @llvm.thread.pointer() #17
  store i32 0, ptr %6, align 4
  store ptr %85, ptr %84, align 4
  %86 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 2
  store ptr @woken_wake_function, ptr %86, align 4
  %87 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 3
  store ptr %87, ptr %87, align 4
  %88 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 3, i32 1
  store ptr %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 17
  %90 = load volatile ptr, ptr %89, align 4
  call void @add_wait_queue(ptr noundef %90, ptr noundef nonnull %6) #17
  %91 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 28
  %92 = load i32, ptr %91, align 8
  %93 = add i32 %92, %81
  store i32 %93, ptr %91, align 8
  br label %94

94:                                               ; preds = %106, %83
  %95 = phi i32 [ %60, %83 ], [ %102, %106 ]
  %96 = load volatile i8, ptr %61, align 2
  %97 = zext i8 %96 to i32
  %98 = shl nuw i32 1, %97
  %99 = and i32 %98, 12
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %94
  call void @release_sock(ptr noundef %8) #17
  %102 = call i32 @wait_woken(ptr noundef nonnull %6, i32 noundef 1, i32 noundef %95) #17
  call void @lock_sock_nested(ptr noundef %8, i32 noundef 0) #17
  %103 = load volatile i32, ptr %85, align 4
  %104 = and i32 %103, 256
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %112, !prof !9

106:                                              ; preds = %101
  %107 = load volatile i32, ptr %85, align 4
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  %110 = icmp ne i32 %102, 0
  %111 = select i1 %109, i1 %110, i1 false
  br i1 %111, label %94, label %112

112:                                              ; preds = %106, %101, %94
  %113 = phi i32 [ %102, %106 ], [ %95, %94 ], [ %102, %101 ]
  %114 = load volatile ptr, ptr %89, align 4
  call void @remove_wait_queue(ptr noundef %114, ptr noundef nonnull %6) #17
  %115 = load i32, ptr %91, align 8
  %116 = sub i32 %115, %81
  store i32 %116, ptr %91, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #17
  %117 = icmp eq i32 %113, 0
  br i1 %117, label %151, label %118

118:                                              ; preds = %112
  %119 = icmp eq i32 %60, 2147483647
  %120 = select i1 %119, i32 -512, i32 -4
  %121 = load volatile i32, ptr %85, align 4
  %122 = and i32 %121, 256
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %151, !prof !9

124:                                              ; preds = %118
  %125 = load volatile i32, ptr %85, align 4
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %151

128:                                              ; preds = %124, %59
  %129 = load volatile i8, ptr %61, align 2
  %130 = icmp eq i8 %129, 7
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  store i32 3, ptr %0, align 64
  br label %151

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 51
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %141, label %136, !prof !9

136:                                              ; preds = %132
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %133) #17, !srcloc !11
  %137 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %133) #17, !srcloc !12
  %138 = extractvalue { i32, i32 } %137, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  %139 = sub i32 0, %138
  %140 = icmp eq i32 %138, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136, %132
  br label %142

142:                                              ; preds = %141, %136
  %143 = phi i32 [ -103, %141 ], [ %139, %136 ]
  store i32 1, ptr %0, align 64
  %144 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 8
  %145 = load ptr, ptr %144, align 8
  %146 = getelementptr inbounds %struct.proto, ptr %145, i32 0, i32 3
  %147 = load ptr, ptr %146, align 4
  %148 = call i32 %147(ptr noundef %8, i32 noundef %3) #17
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %142
  store i32 4, ptr %0, align 64
  br label %151

151:                                              ; preds = %150, %142, %131, %124, %118, %112, %80, %47, %38, %34, %25, %23, %15, %10
  %152 = phi i32 [ -22, %10 ], [ %20, %15 ], [ -106, %34 ], [ %43, %38 ], [ %143, %150 ], [ %143, %142 ], [ 0, %131 ], [ 0, %47 ], [ -106, %25 ], [ -22, %23 ], [ %120, %124 ], [ %53, %80 ], [ %53, %112 ], [ %120, %118 ]
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_stream_connect(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #17
  %7 = tail call i32 @__inet_stream_connect(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0)
  %8 = load ptr, ptr %5, align 16
  tail call void @release_sock(ptr noundef %8) #17
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_accept(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 -22, ptr %5, align 4
  %8 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.proto, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = call ptr %11(ptr noundef %7, i32 noundef %2, ptr noundef nonnull %5, i1 noundef zeroext %3) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %45, label %14

14:                                               ; preds = %4
  call void @lock_sock_nested(ptr noundef nonnull %12, i32 noundef 0) #17
  %15 = load volatile i32, ptr @rfs_needed, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %24, !prof !16

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 4
  %19 = load volatile i8, ptr %18, align 2
  %20 = icmp eq i8 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 21
  %23 = load i32, ptr %22, align 8
  call fastcc void @sock_rps_record_flow_hash(i32 noundef %23) #17
  br label %24

24:                                               ; preds = %21, %17, %14
  %25 = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 4
  %26 = load volatile i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, 394
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32, !prof !16

31:                                               ; preds = %24
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 749, i32 noundef 9, ptr noundef null) #17
  br label %32

32:                                               ; preds = %31, %24
  %33 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %34 = load ptr, ptr %33, align 16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36, !prof !9

36:                                               ; preds = %32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2024, i32 noundef 9, ptr noundef null) #17
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %38) #17
  %39 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 7
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %40 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 17
  store volatile ptr %39, ptr %40, align 4
  store ptr %12, ptr %33, align 16
  %41 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 71
  store ptr %1, ptr %41, align 8
  %42 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 55
  %43 = getelementptr inbounds %struct.socket_alloc, ptr %1, i32 0, i32 1, i32 2
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %42, align 4
  call void @_raw_write_unlock_bh(ptr noundef %38) #17
  store i32 3, ptr %1, align 64
  store i32 0, ptr %5, align 4
  call void @release_sock(ptr noundef nonnull %12) #17
  br label %45

45:                                               ; preds = %37, %4
  %46 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_getname(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  store i16 2, ptr %1, align 4
  tail call void @lock_sock_nested(ptr noundef %5, i32 noundef 0) #17
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 2
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %13 = load volatile i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, 132
  %17 = icmp ne i32 %16, 0
  %18 = icmp eq i32 %2, 1
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %21

20:                                               ; preds = %11, %7
  tail call void @release_sock(ptr noundef %5) #17
  br label %40

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 1
  store i16 %9, ptr %22, align 2
  %23 = load i32, ptr %5, align 8
  br label %36

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.inet_sock, ptr %5, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i32 [ %26, %24 ], [ %30, %28 ]
  %33 = getelementptr inbounds %struct.inet_sock, ptr %5, i32 0, i32 6
  %34 = load i16, ptr %33, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 1
  store i16 %34, ptr %35, align 2
  br label %36

36:                                               ; preds = %31, %21
  %37 = phi i32 [ %32, %31 ], [ %23, %21 ]
  %38 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  tail call void @release_sock(ptr noundef %5) #17
  %39 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 3
  store i64 0, ptr %39, align 4
  br label %40

40:                                               ; preds = %36, %20
  %41 = phi i32 [ -107, %20 ], [ 16, %36 ]
  ret i32 %41
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_send_prepare(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr @rfs_needed, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %11, !prof !16

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %6 = load volatile i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 21
  %10 = load i32, ptr %9, align 8
  tail call fastcc void @sock_rps_record_flow_hash(i32 noundef %10) #17
  br label %11

11:                                               ; preds = %8, %4, %1
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %13 = getelementptr inbounds %struct.anon.2, ptr %12, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.proto, ptr %18, i32 0, i32 39
  %20 = load i8, ptr %19, align 4, !range !18
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #17
  %23 = load i16, ptr %13, align 2
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load ptr, ptr %17, align 8
  %27 = getelementptr inbounds %struct.proto, ptr %26, i32 0, i32 23
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %0, i16 noundef zeroext 0) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i16, ptr %13, align 2
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #17
  %34 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  store i16 %33, ptr %34, align 8
  br label %35

35:                                               ; preds = %31, %25, %22
  %36 = phi i32 [ 0, %31 ], [ 0, %22 ], [ -11, %25 ]
  tail call void @release_sock(ptr noundef %0) #17
  br label %37

37:                                               ; preds = %35, %16, %11
  %38 = phi i32 [ 0, %16 ], [ 0, %11 ], [ %36, %35 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_sendmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = load volatile i32, ptr @rfs_needed, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %34, !prof !16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %10 = load volatile i8, ptr %9, align 2
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 21
  %14 = load i32, ptr %13, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !19
  %15 = load volatile ptr, ptr @rps_sock_flow_table, align 4
  %16 = icmp ne ptr %15, null
  %17 = icmp ne i32 %14, 0
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %33

19:                                               ; preds = %12
  %20 = load i32, ptr %15, align 64
  %21 = and i32 %20, %14
  %22 = load i32, ptr @rps_cpu_mask, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %14, %23
  %25 = tail call ptr @llvm.thread.pointer() #17
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = or i32 %27, %24
  %29 = getelementptr %struct.rps_sock_flow_table, ptr %15, i32 0, i32 2, i32 %21
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %28
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  store i32 %28, ptr %29, align 4
  br label %33

33:                                               ; preds = %32, %19, %12
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !20
  br label %34

34:                                               ; preds = %33, %8, %3
  %35 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 2
  %36 = getelementptr inbounds %struct.anon.2, ptr %35, i32 0, i32 1
  %37 = load i16, ptr %36, align 2
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 8
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.proto, ptr %41, i32 0, i32 39
  %43 = load i8, ptr %42, align 4, !range !18
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  tail call void @lock_sock_nested(ptr noundef %5, i32 noundef 0) #17
  %46 = load i16, ptr %36, align 2
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load ptr, ptr %40, align 8
  %50 = getelementptr inbounds %struct.proto, ptr %49, i32 0, i32 23
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 %51(ptr noundef %5, i16 noundef zeroext 0) #17
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i16, ptr %36, align 2
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #17
  %57 = getelementptr inbounds %struct.inet_sock, ptr %5, i32 0, i32 6
  store i16 %56, ptr %57, align 8
  br label %58

58:                                               ; preds = %54, %45
  tail call void @release_sock(ptr noundef %5) #17
  br label %60

59:                                               ; preds = %48
  tail call void @release_sock(ptr noundef %5) #17
  br label %66

60:                                               ; preds = %58, %39, %34
  %61 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 8
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.proto, ptr %62, i32 0, i32 12
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 %64(ptr noundef %5, ptr noundef %1, i32 noundef %2) #17
  br label %66

66:                                               ; preds = %60, %59
  %67 = phi i32 [ %65, %60 ], [ -11, %59 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_sendpage(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = load volatile i32, ptr @rfs_needed, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %36, !prof !16

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 4
  %12 = load volatile i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 21
  %16 = load i32, ptr %15, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !19
  %17 = load volatile ptr, ptr @rps_sock_flow_table, align 4
  %18 = icmp ne ptr %17, null
  %19 = icmp ne i32 %16, 0
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load i32, ptr %17, align 64
  %23 = and i32 %22, %16
  %24 = load i32, ptr @rps_cpu_mask, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %16, %25
  %27 = tail call ptr @llvm.thread.pointer() #17
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = or i32 %29, %26
  %31 = getelementptr %struct.rps_sock_flow_table, ptr %17, i32 0, i32 2, i32 %23
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %30
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  store i32 %30, ptr %31, align 4
  br label %35

35:                                               ; preds = %34, %21, %14
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !20
  br label %36

36:                                               ; preds = %35, %10, %5
  %37 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 2
  %38 = getelementptr inbounds %struct.anon.2, ptr %37, i32 0, i32 1
  %39 = load i16, ptr %38, align 2
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 8
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.proto, ptr %43, i32 0, i32 39
  %45 = load i8, ptr %44, align 4, !range !18
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  tail call void @lock_sock_nested(ptr noundef %7, i32 noundef 0) #17
  %48 = load i16, ptr %38, align 2
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load ptr, ptr %42, align 8
  %52 = getelementptr inbounds %struct.proto, ptr %51, i32 0, i32 23
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 %53(ptr noundef %7, i16 noundef zeroext 0) #17
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i16, ptr %38, align 2
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #17
  %59 = getelementptr inbounds %struct.inet_sock, ptr %7, i32 0, i32 6
  store i16 %58, ptr %59, align 8
  br label %60

60:                                               ; preds = %56, %47
  tail call void @release_sock(ptr noundef %7) #17
  br label %62

61:                                               ; preds = %50
  tail call void @release_sock(ptr noundef %7) #17
  br label %72

62:                                               ; preds = %60, %41, %36
  %63 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 8
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.proto, ptr %64, i32 0, i32 14
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = tail call i32 %66(ptr noundef %7, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #17
  br label %72

70:                                               ; preds = %62
  %71 = tail call i32 @sock_no_sendpage(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #17
  br label %72

72:                                               ; preds = %70, %68, %61
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ], [ -11, %61 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_recvmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4
  %8 = and i32 %3, 8192
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %39, !prof !9

10:                                               ; preds = %4
  %11 = load volatile i32, ptr @rfs_needed, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %39, !prof !16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 4
  %15 = load volatile i8, ptr %14, align 2
  %16 = icmp eq i8 %15, 1
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 21
  %19 = load i32, ptr %18, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !19
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
  %30 = tail call ptr @llvm.thread.pointer() #17
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !20
  br label %39

39:                                               ; preds = %38, %13, %10, %4
  %40 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 8
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.proto, ptr %41, i32 0, i32 13
  %43 = load ptr, ptr %42, align 4
  %44 = and i32 %3, 64
  %45 = and i32 %3, -65
  %46 = call i32 %43(ptr noundef %7, ptr noundef %1, i32 noundef %2, i32 noundef %44, i32 noundef %45, ptr noundef nonnull %5) #17
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, ptr %5, align 4
  %50 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  store i32 %49, ptr %50, align 4
  br label %51

51:                                               ; preds = %48, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_shutdown(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 16
  %5 = add i32 %1, 1
  %6 = icmp ult i32 %1, 3
  br i1 %6, label %7, label %49

7:                                                ; preds = %2
  tail call void @lock_sock_nested(ptr noundef %4, i32 noundef 0) #17
  %8 = load i32, ptr %0, align 64
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 4
  %12 = load volatile i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, 140
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 3, i32 4
  store i32 %17, ptr %0, align 64
  br label %18

18:                                               ; preds = %10, %7
  %19 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 4
  %20 = load volatile i8, ptr %19, align 2
  switch i8 %20, label %22 [
    i8 7, label %21
    i8 10, label %34
    i8 2, label %37
  ]

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi i32 [ 0, %18 ], [ -107, %21 ]
  %24 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 66
  %25 = load i8, ptr %24, align 2
  %26 = trunc i32 %5 to i8
  %27 = or i8 %25, %26
  store i8 %27, ptr %24, align 2
  %28 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 8
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.proto, ptr %29, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %22
  tail call void %31(ptr noundef %4, i32 noundef %5) #17
  br label %45

34:                                               ; preds = %18
  %35 = and i32 %5, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %34, %18
  %38 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 8
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.proto, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 %41(ptr noundef %4, i32 noundef 2048) #17
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 1, i32 4
  store i32 %44, ptr %0, align 64
  br label %45

45:                                               ; preds = %37, %34, %33, %22
  %46 = phi i32 [ %23, %33 ], [ %23, %22 ], [ %42, %37 ], [ 0, %34 ]
  %47 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 75
  %48 = load ptr, ptr %47, align 4
  tail call void %48(ptr noundef %4) #17
  tail call void @release_sock(ptr noundef %4) #17
  br label %49

49:                                               ; preds = %45, %2
  %50 = phi i32 [ %46, %45 ], [ -22, %2 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ifreq, align 4
  %5 = alloca %struct.rtentry, align 4
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !21
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %5, i8 0, i32 84, i1 false), !annotation !21
  switch i32 %1, label %44 [
    i32 35083, label %9
    i32 35084, label %9
    i32 35085, label %52
    i32 35155, label %27
    i32 35156, label %27
    i32 35157, label %27
    i32 35093, label %29
    i32 35097, label %29
    i32 35099, label %29
    i32 35095, label %29
    i32 35125, label %29
    i32 35094, label %39
    i32 35098, label %39
    i32 35100, label %39
    i32 35096, label %39
    i32 35124, label %39
    i32 35092, label %39
  ]

9:                                                ; preds = %3, %3
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 84, i32 -1090519040) #19, !srcloc !22
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21, !prof !9

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #17
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #15, !srcloc !23
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #17, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !25
  %19 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %8, i32 noundef 84) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #17, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !25
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !9

21:                                               ; preds = %13, %9
  %22 = phi i32 [ %19, %13 ], [ 84, %9 ]
  %23 = sub i32 84, %22
  %24 = getelementptr i8, ptr %5, i32 %23
  call void @llvm.memset.p0.i32(ptr align 1 %24, i8 0, i32 %22, i1 false) #17
  br label %52

25:                                               ; preds = %13
  %26 = call i32 @ip_rt_ioctl(ptr noundef nonnull @init_net, i32 noundef %1, ptr noundef nonnull %5) #17
  br label %52

27:                                               ; preds = %3, %3, %3
  %28 = tail call i32 @arp_ioctl(ptr noundef nonnull @init_net, i32 noundef %1, ptr noundef %8) #17
  br label %52

29:                                               ; preds = %3, %3, %3, %3, %3
  %30 = call i32 @get_user_ifreq(ptr noundef nonnull %4, ptr noundef null, ptr noundef %8) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = call i32 @devinet_ioctl(ptr noundef nonnull @init_net, i32 noundef %1, ptr noundef nonnull %4) #17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = call i32 @put_user_ifreq(ptr noundef nonnull %4, ptr noundef %8) #17
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 0, i32 -14
  br label %52

39:                                               ; preds = %3, %3, %3, %3, %3, %3
  %40 = call i32 @get_user_ifreq(ptr noundef nonnull %4, ptr noundef null, ptr noundef %8) #17
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = call i32 @devinet_ioctl(ptr noundef nonnull @init_net, i32 noundef %1, ptr noundef nonnull %4) #17
  br label %52

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 8
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.proto, ptr %46, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = tail call i32 %48(ptr noundef %7, i32 noundef %1, i32 noundef %2) #17
  br label %52

52:                                               ; preds = %50, %44, %42, %39, %35, %32, %29, %27, %25, %21, %3
  %53 = phi i32 [ -14, %29 ], [ -14, %39 ], [ %51, %50 ], [ %43, %42 ], [ %33, %32 ], [ %28, %27 ], [ %26, %25 ], [ -22, %3 ], [ %38, %35 ], [ -515, %44 ], [ -14, %21 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_rt_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arp_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_user_ifreq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devinet_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_user_ifreq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_poll(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_mmap(ptr noundef, ptr noundef, ptr noundef) #3

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
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_poll(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_set_peek_off(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_read_sock(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_register_protosw(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inet_protosw, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 2
  %4 = zext i16 %3 to i32
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @inetsw_lock) #17
  %5 = getelementptr inbounds %struct.inet_protosw, ptr %0, i32 0, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = icmp ugt i16 %6, 10
  br i1 %8, label %31, label %9

9:                                                ; preds = %1
  %10 = getelementptr [11 x %struct.list_head], ptr @inetsw, i32 0, i32 %7
  br label %11

11:                                               ; preds = %20, %9
  %12 = phi ptr [ %10, %9 ], [ %13, %20 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.inet_protosw, ptr %13, i32 0, i32 5
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.inet_protosw, ptr %13, i32 0, i32 2
  %22 = load i16, ptr %21, align 2
  %23 = icmp eq i16 %3, %22
  br i1 %23, label %29, label %11

24:                                               ; preds = %15, %11
  %25 = phi ptr [ %13, %15 ], [ %10, %11 ]
  store ptr %25, ptr %0, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %12, ptr %26, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !26
  store volatile ptr %0, ptr %12, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %0, ptr %27, align 4
  br label %28

28:                                               ; preds = %31, %29, %24
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @inetsw_lock) #17
  ret void

29:                                               ; preds = %20
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %4) #18
  br label %28

31:                                               ; preds = %1
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %7) #18
  br label %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_unregister_protosw(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inet_protosw, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.inet_protosw, ptr %0, i32 0, i32 2
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %9) #18
  br label %16

11:                                               ; preds = %1
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @inetsw_lock) #17
  %12 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @inetsw_lock) #17
  tail call void @synchronize_net() #17
  br label %16

16:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_sk_rebuild_header(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = tail call ptr @__sk_dst_check(ptr noundef %0, i32 noundef 0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %162

6:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !19
  %7 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 5
  %8 = load volatile ptr, ptr %7, align 4
  %9 = load i32, ptr %0, align 8
  %10 = icmp eq ptr %8, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ip_options_rcu, ptr %8, i32 0, i32 1, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ip_options_rcu, ptr %8, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %11, %6
  %19 = phi i32 [ %17, %15 ], [ %9, %11 ], [ %9, %6 ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !20
  %20 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1
  %21 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %24 = load i16, ptr %23, align 4
  %25 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  %26 = load i16, ptr %25, align 8
  %27 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %28 = load i16, ptr %27, align 4
  %29 = trunc i16 %28 to i8
  %30 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 30
  %33 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %34 = load volatile i32, ptr %33, align 4
  %35 = lshr i32 %34, 13
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %38 = or i8 %37, %32
  %39 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq ptr %0, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %18
  %43 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %46 = load i16, ptr %45, align 8
  %47 = and i16 %46, 40
  %48 = icmp ne i16 %47, 0
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %51 = load i32, ptr %50, align 4
  store i32 %40, ptr %20, align 8
  %52 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 6
  store i8 %49, ptr %52, align 1
  %53 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 7
  store i32 0, ptr %53, align 8
  %54 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 9
  store i64 0, ptr %54, align 8
  %55 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 8
  store i32 %51, ptr %55, align 4
  br label %57

56:                                               ; preds = %18
  store i32 %40, ptr %20, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) inttoptr (i32 631 to ptr), i8 0, i64 17, i1 false) #17
  br label %57

57:                                               ; preds = %56, %42
  %58 = phi i32 [ 0, %56 ], [ %44, %42 ]
  %59 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 1
  store i32 1, ptr %59, align 4
  %60 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 2
  store i32 %58, ptr %60, align 8
  %61 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 3
  store i8 %38, ptr %61, align 4
  %62 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 4
  store i8 0, ptr %62, align 1
  %63 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 5
  store i8 %29, ptr %63, align 2
  %64 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  store i32 %19, ptr %64, align 4
  %65 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1
  store i32 %22, ptr %65, align 8
  %66 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2
  store i16 %24, ptr %66, align 8
  %67 = getelementptr inbounds %struct.anon.123, ptr %66, i32 0, i32 1
  store i16 %26, ptr %67, align 2
  %68 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 10
  store i32 0, ptr %68, align 8
  %69 = tail call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef %20, ptr noundef %0) #17
  %70 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %72, label %71

71:                                               ; preds = %57
  tail call void @sk_setup_caps(ptr noundef %0, ptr noundef %69) #17
  br label %162

72:                                               ; preds = %57
  %73 = ptrtoint ptr %69 to i32
  %74 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 38
  store i64 0, ptr %74, align 8
  %75 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 37), align 16
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %158, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %79 = load volatile i8, ptr %78, align 2
  %80 = icmp eq i8 %79, 2
  br i1 %80, label %81, label %158

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %83 = load i8, ptr %82, align 8
  %84 = and i8 %83, 64
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %158

86:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  %87 = load i32, ptr %21, align 4
  store i32 %87, ptr %2, align 4
  %88 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !annotation !21
  %89 = load ptr, ptr %7, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.ip_options_rcu, ptr %89, i32 0, i32 1, i32 3
  %93 = load i8, ptr %92, align 1
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.ip_options_rcu, ptr %89, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  br label %98

98:                                               ; preds = %95, %91, %86
  %99 = phi i32 [ %97, %95 ], [ %88, %91 ], [ %88, %86 ]
  %100 = load i8, ptr %30, align 4
  %101 = and i8 %100, 30
  %102 = load volatile i32, ptr %33, align 4
  %103 = lshr i32 %102, 13
  %104 = load i32, ptr %39, align 4
  %105 = load i16, ptr %27, align 4
  %106 = trunc i16 %105 to i8
  %107 = load i16, ptr %25, align 8
  %108 = load i16, ptr %23, align 4
  %109 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %110 = load i16, ptr %109, align 8
  %111 = trunc i16 %110 to i8
  %112 = lshr i8 %111, 5
  %113 = and i8 %112, 1
  %114 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %115 = load i32, ptr %114, align 8
  %116 = trunc i32 %103 to i8
  %117 = and i8 %116, 1
  %118 = or i8 %117, %101
  %119 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %120 = load i32, ptr %119, align 4
  store i32 %104, ptr %20, align 8
  store i32 1, ptr %59, align 4
  store i32 %115, ptr %60, align 8
  store i8 %118, ptr %61, align 4
  store i8 0, ptr %62, align 1
  store i8 %106, ptr %63, align 2
  %121 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 6
  store i8 %113, ptr %121, align 1
  %122 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 7
  store i32 0, ptr %122, align 8
  %123 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 9
  store i64 0, ptr %123, align 8
  %124 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 8
  store i32 %120, ptr %124, align 4
  store i32 %99, ptr %64, align 4
  store i32 0, ptr %65, align 8
  store i16 %108, ptr %66, align 8
  store i16 %107, ptr %67, align 2
  store i32 0, ptr %68, align 8
  %125 = tail call ptr @ip_route_output_key_hash(ptr noundef nonnull @init_net, ptr noundef %20, ptr noundef null) #17
  %126 = icmp ugt ptr %125, inttoptr (i32 -4096 to ptr)
  br i1 %126, label %129, label %127

127:                                              ; preds = %98
  tail call void @dst_release(ptr noundef %125) #17
  store i32 %104, ptr %20, align 8
  store i8 %118, ptr %61, align 4
  %128 = tail call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef %20, ptr noundef %0) #17
  br label %129

129:                                              ; preds = %127, %98
  %130 = phi ptr [ %128, %127 ], [ %125, %98 ]
  %131 = icmp ugt ptr %130, inttoptr (i32 -4096 to ptr)
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = ptrtoint ptr %130 to i32
  br label %155

134:                                              ; preds = %129
  tail call void @sk_setup_caps(ptr noundef %0, ptr noundef %130) #17
  %135 = load i32, ptr %65, align 8
  store i32 %135, ptr %3, align 4
  %136 = icmp eq i32 %135, %87
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  br label %162

138:                                              ; preds = %134
  %139 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 37), align 16
  %140 = icmp ugt i8 %139, 1
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.inet_sk_reselect_saddr, ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %143 = load i32, ptr %3, align 4
  br label %144

144:                                              ; preds = %141, %138
  %145 = phi i32 [ %143, %141 ], [ %135, %138 ]
  %146 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  store i32 %145, ptr %146, align 4
  store i32 %145, ptr %21, align 4
  %147 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %148 = load ptr, ptr %147, align 8
  %149 = getelementptr inbounds %struct.proto, ptr %148, i32 0, i32 21
  %150 = load ptr, ptr %149, align 4
  call void %150(ptr noundef %0) #17
  %151 = load ptr, ptr %147, align 8
  %152 = getelementptr inbounds %struct.proto, ptr %151, i32 0, i32 20
  %153 = load ptr, ptr %152, align 4
  %154 = call i32 %153(ptr noundef %0) #17
  br label %155

155:                                              ; preds = %144, %132
  %156 = phi i32 [ %133, %132 ], [ %154, %144 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %155, %81, %77, %72
  %159 = phi i32 [ %73, %77 ], [ %73, %81 ], [ %156, %155 ], [ %73, %72 ]
  %160 = sub i32 0, %159
  %161 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 52
  store i32 %160, ptr %161, align 8
  br label %162

162:                                              ; preds = %158, %155, %137, %71, %1
  %163 = phi i32 [ 0, %1 ], [ %159, %158 ], [ 0, %155 ], [ 0, %71 ], [ 0, %137 ]
  ret i32 %163
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__sk_dst_check(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_setup_caps(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_sk_set_state(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %4 = load volatile i8, ptr %3, align 2
  %5 = zext i8 %4 to i32
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_inet_sock_set_state, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #17
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  %20 = tail call i32 @__traceiter_inet_sock_set_state(ptr noundef null, ptr noundef %0, i32 noundef %5, i32 noundef %1) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !28
  br label %21

21:                                               ; preds = %19, %8, %2
  %22 = trunc i32 %1 to i8
  store volatile i8 %22, ptr %3, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_sk_state_store(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %4 = load volatile i8, ptr %3, align 2
  %5 = zext i8 %4 to i32
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_inet_sock_set_state, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #17
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  %20 = tail call i32 @__traceiter_inet_sock_set_state(ptr noundef null, ptr noundef %0, i32 noundef %5, i32 noundef %1) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !28
  br label %21

21:                                               ; preds = %19, %8, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  %22 = trunc i32 %1 to i8
  store volatile i8 %22, ptr %3, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet_gso_segment(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = ptrtoint ptr %4 to i32
  %8 = ptrtoint ptr %6 to i32
  %9 = sub i32 %7, %8
  %10 = trunc i32 %9 to i16
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  store i16 %10, ptr %11, align 4
  %12 = and i32 %9, 65535
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = sub nsw i32 %12, %15
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = sub i32 %18, %20
  %22 = icmp ult i32 %21, 20
  br i1 %22, label %23, label %32, !prof !16

23:                                               ; preds = %2
  %24 = icmp ult i32 %18, 20
  br i1 %24, label %243, label %25, !prof !16

25:                                               ; preds = %23
  %26 = sub nuw nsw i32 20, %21
  %27 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %26) #17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %243, label %29, !prof !16

29:                                               ; preds = %25
  %30 = load ptr, ptr %5, align 8
  %31 = load i16, ptr %11, align 4
  br label %32

32:                                               ; preds = %29, %2
  %33 = phi i16 [ %31, %29 ], [ %10, %2 ]
  %34 = phi ptr [ %30, %29 ], [ %6, %2 ]
  %35 = zext i16 %33 to i32
  %36 = getelementptr i8, ptr %34, i32 %35
  %37 = load i8, ptr %36, align 4
  %38 = shl i8 %37, 2
  %39 = and i8 %38, 60
  %40 = zext i8 %39 to i32
  %41 = icmp ult i8 %39, 20
  br i1 %41, label %243, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.iphdr, ptr %36, i32 0, i32 3
  %44 = load i16, ptr %43, align 4
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  %46 = zext i16 %45 to i32
  %47 = getelementptr inbounds %struct.iphdr, ptr %36, i32 0, i32 6
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i32, ptr %17, align 8
  %51 = load i32, ptr %19, align 4
  %52 = sub i32 %50, %51
  %53 = icmp ult i32 %52, %40
  br i1 %53, label %54, label %63, !prof !16

54:                                               ; preds = %42
  %55 = icmp ult i32 %50, %40
  br i1 %55, label %243, label %56, !prof !16

56:                                               ; preds = %54
  %57 = sub i32 %40, %52
  %58 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %57) #17
  %59 = icmp eq ptr %58, null
  br i1 %59, label %243, label %60, !prof !16

60:                                               ; preds = %56
  %61 = load i32, ptr %17, align 8
  %62 = load i32, ptr %19, align 4
  br label %63

63:                                               ; preds = %60, %42
  %64 = phi i32 [ %62, %60 ], [ %51, %42 ]
  %65 = phi i32 [ %61, %60 ], [ %50, %42 ]
  %66 = sub i32 %65, %40
  store i32 %66, ptr %17, align 8
  %67 = icmp ult i32 %66, %64
  br i1 %67, label %68, label %69, !prof !16

68:                                               ; preds = %63
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #17, !srcloc !30
  unreachable

69:                                               ; preds = %63
  %70 = load ptr, ptr %3, align 4
  %71 = getelementptr i8, ptr %70, i32 %40
  store ptr %71, ptr %3, align 4
  %72 = getelementptr %struct.sk_buff, ptr %0, i32 0, i32 3, i32 36
  %73 = load i32, ptr %72, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 2
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.net_device, ptr %77, i32 0, i32 27
  %79 = load i64, ptr %78, align 16
  %80 = and i64 %79, %1
  br label %81

81:                                               ; preds = %75, %69
  %82 = phi i64 [ %80, %75 ], [ %1, %69 ]
  %83 = add i32 %73, %40
  store i32 %83, ptr %72, align 4
  %84 = load ptr, ptr %5, align 8
  %85 = ptrtoint ptr %71 to i32
  %86 = ptrtoint ptr %84 to i32
  %87 = sub i32 %85, %86
  %88 = trunc i32 %87 to i16
  %89 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  store i16 %88, ptr %89, align 2
  %90 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %91 = load i16, ptr %90, align 8
  %92 = and i16 %91, 8192
  %93 = icmp eq i16 %92, 0
  %94 = select i1 %93, i1 true, i1 %74
  br i1 %94, label %95, label %113

95:                                               ; preds = %81
  %96 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.skb_shared_info, ptr %97, i32 0, i32 8
  %99 = load i32, ptr %98, align 8
  %100 = and i32 %99, 65536
  %101 = icmp ne i32 %100, 0
  %102 = and i32 %99, 8
  %103 = icmp eq i32 %102, 0
  %104 = icmp ne i32 %102, 0
  br i1 %103, label %113, label %105

105:                                              ; preds = %95
  %106 = load i16, ptr %11, align 4
  %107 = zext i16 %106 to i32
  %108 = getelementptr i8, ptr %84, i32 %107
  %109 = getelementptr inbounds %struct.iphdr, ptr %108, i32 0, i32 4
  %110 = load i16, ptr %109, align 2
  %111 = and i16 %110, 64
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %243, label %113

113:                                              ; preds = %105, %95, %81
  %114 = phi i1 [ true, %105 ], [ %104, %95 ], [ false, %81 ]
  %115 = phi i1 [ %101, %105 ], [ %101, %95 ], [ false, %81 ]
  %116 = getelementptr [256 x ptr], ptr @inet_offloads, i32 0, i32 %49
  %117 = load volatile ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %243, label %119, !prof !16

119:                                              ; preds = %113
  %120 = load ptr, ptr %117, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %243, label %122, !prof !16

122:                                              ; preds = %119
  %123 = tail call ptr %120(ptr noundef %0, i64 noundef %82) #17
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load ptr, ptr %5, align 8
  %127 = load i16, ptr %13, align 2
  %128 = zext i16 %127 to i32
  %129 = getelementptr i8, ptr %126, i32 %128
  %130 = getelementptr i8, ptr %129, i32 %16
  %131 = ptrtoint ptr %130 to i32
  %132 = ptrtoint ptr %126 to i32
  %133 = sub i32 %131, %132
  %134 = trunc i32 %133 to i16
  store i16 %134, ptr %11, align 4
  br label %243

135:                                              ; preds = %122
  %136 = icmp ugt ptr %123, inttoptr (i32 -4096 to ptr)
  br i1 %136, label %243, label %137

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 15
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.skb_shared_info, ptr %139, i32 0, i32 8
  %141 = load i32, ptr %140, align 8
  %142 = and i32 %141, 4096
  %143 = icmp eq i32 %142, 0
  br label %144

144:                                              ; preds = %232, %137
  %145 = phi i32 [ 0, %137 ], [ %217, %232 ]
  %146 = phi i32 [ %46, %137 ], [ %219, %232 ]
  %147 = phi ptr [ %123, %137 ], [ %241, %232 ]
  %148 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 16
  %149 = load ptr, ptr %148, align 8
  %150 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 13, i32 0, i32 19
  %151 = load i16, ptr %150, align 2
  %152 = zext i16 %151 to i32
  %153 = getelementptr i8, ptr %149, i32 %16
  %154 = getelementptr i8, ptr %153, i32 %152
  br i1 %115, label %155, label %170

155:                                              ; preds = %144
  %156 = lshr i32 %145, 3
  %157 = trunc i32 %156 to i16
  %158 = tail call i16 @llvm.bswap.i16(i16 %157)
  %159 = getelementptr inbounds %struct.iphdr, ptr %154, i32 0, i32 4
  store i16 %158, ptr %159, align 2
  %160 = load ptr, ptr %147, align 8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %155
  %163 = or i16 %158, 32
  store i16 %163, ptr %159, align 2
  br label %164

164:                                              ; preds = %162, %155
  %165 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 5
  %166 = load i32, ptr %165, align 8
  %167 = sub i32 %166, %16
  %168 = sub i32 %145, %40
  %169 = add i32 %168, %167
  br label %216

170:                                              ; preds = %144
  %171 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 15
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.skb_shared_info, ptr %172, i32 0, i32 4
  %174 = load i16, ptr %173, align 4
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %205, label %176

176:                                              ; preds = %170
  br i1 %114, label %186, label %177

177:                                              ; preds = %176
  %178 = trunc i32 %146 to i16
  %179 = tail call i16 @llvm.bswap.i16(i16 %178)
  %180 = getelementptr inbounds %struct.iphdr, ptr %154, i32 0, i32 3
  store i16 %179, ptr %180, align 4
  %181 = load ptr, ptr %171, align 4
  %182 = getelementptr inbounds %struct.skb_shared_info, ptr %181, i32 0, i32 5
  %183 = load i16, ptr %182, align 2
  %184 = zext i16 %183 to i32
  %185 = add i32 %146, %184
  br label %186

186:                                              ; preds = %177, %176
  %187 = phi ptr [ %172, %176 ], [ %181, %177 ]
  %188 = phi i32 [ %146, %176 ], [ %185, %177 ]
  br i1 %143, label %201, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.skb_shared_info, ptr %187, i32 0, i32 4
  %191 = load i16, ptr %190, align 4
  %192 = zext i16 %191 to i32
  %193 = getelementptr %struct.sk_buff, ptr %147, i32 0, i32 3, i32 32
  %194 = load i32, ptr %193, align 4
  %195 = add i32 %194, %192
  %196 = load ptr, ptr %148, align 8
  %197 = getelementptr i8, ptr %196, i32 %195
  %198 = ptrtoint ptr %197 to i32
  %199 = ptrtoint ptr %154 to i32
  %200 = sub i32 %198, %199
  br label %216

201:                                              ; preds = %186
  %202 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 5
  %203 = load i32, ptr %202, align 8
  %204 = sub i32 %203, %16
  br label %216

205:                                              ; preds = %170
  br i1 %114, label %211, label %206

206:                                              ; preds = %205
  %207 = add i32 %146, 1
  %208 = trunc i32 %146 to i16
  %209 = tail call i16 @llvm.bswap.i16(i16 %208)
  %210 = getelementptr inbounds %struct.iphdr, ptr %154, i32 0, i32 3
  store i16 %209, ptr %210, align 4
  br label %211

211:                                              ; preds = %206, %205
  %212 = phi i32 [ %146, %205 ], [ %207, %206 ]
  %213 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 5
  %214 = load i32, ptr %213, align 8
  %215 = sub i32 %214, %16
  br label %216

216:                                              ; preds = %211, %201, %189, %164
  %217 = phi i32 [ %169, %164 ], [ %145, %189 ], [ %145, %201 ], [ %145, %211 ]
  %218 = phi i32 [ %167, %164 ], [ %200, %189 ], [ %204, %201 ], [ %215, %211 ]
  %219 = phi i32 [ %146, %164 ], [ %188, %189 ], [ %188, %201 ], [ %212, %211 ]
  %220 = trunc i32 %218 to i16
  %221 = tail call i16 @llvm.bswap.i16(i16 %220)
  %222 = getelementptr inbounds %struct.iphdr, ptr %154, i32 0, i32 2
  store i16 %221, ptr %222, align 2
  tail call void @ip_send_check(ptr noundef %154) #17
  %223 = load i16, ptr %150, align 2
  br i1 %74, label %224, label %232

224:                                              ; preds = %216
  %225 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 13, i32 0, i32 15
  store i16 %223, ptr %225, align 2
  %226 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 13, i32 0, i32 18
  %227 = load i16, ptr %226, align 4
  %228 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 13, i32 0, i32 14
  store i16 %227, ptr %228, align 4
  %229 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 13, i32 0, i32 17
  %230 = load i16, ptr %229, align 2
  %231 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 13, i32 0, i32 13
  store i16 %230, ptr %231, align 2
  br label %232

232:                                              ; preds = %224, %216
  %233 = load ptr, ptr %148, align 8
  %234 = ptrtoint ptr %154 to i32
  %235 = ptrtoint ptr %233 to i32
  %236 = sub i32 %234, %235
  %237 = trunc i32 %236 to i16
  %238 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 13, i32 0, i32 18
  store i16 %237, ptr %238, align 4
  %239 = sub i16 %237, %223
  %240 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 7
  store i16 %239, ptr %240, align 8
  %241 = load ptr, ptr %147, align 8
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %144

243:                                              ; preds = %232, %135, %125, %119, %113, %105, %56, %54, %32, %25, %23
  %244 = phi ptr [ inttoptr (i32 -22 to ptr), %25 ], [ inttoptr (i32 -22 to ptr), %32 ], [ inttoptr (i32 -22 to ptr), %56 ], [ %123, %135 ], [ inttoptr (i32 -93 to ptr), %105 ], [ inttoptr (i32 -22 to ptr), %23 ], [ inttoptr (i32 -22 to ptr), %54 ], [ inttoptr (i32 -93 to ptr), %113 ], [ inttoptr (i32 -93 to ptr), %119 ], [ null, %125 ], [ %123, %232 ]
  ret ptr %244
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet_gro_receive(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, 20
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 %4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, %5
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %14, %16
  %18 = icmp ugt i32 %5, %17
  br i1 %18, label %19, label %25, !prof !16

19:                                               ; preds = %12
  %20 = icmp ult i32 %14, %5
  br i1 %20, label %208, label %21, !prof !16

21:                                               ; preds = %19
  %22 = sub i32 %5, %17
  %23 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %22) #17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %208, label %25

25:                                               ; preds = %21, %12
  store ptr null, ptr %6, align 8
  store i32 0, ptr %9, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %208, label %30, !prof !16

30:                                               ; preds = %25, %2
  %31 = phi ptr [ %28, %25 ], [ %8, %2 ]
  %32 = getelementptr inbounds %struct.iphdr, ptr %31, i32 0, i32 6
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr [256 x ptr], ptr @inet_offloads, i32 0, i32 %34
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %208, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.offload_callbacks, ptr %36, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %208, label %42

42:                                               ; preds = %38
  %43 = load i8, ptr %31, align 1
  %44 = icmp eq i8 %43, 69
  br i1 %44, label %45, label %208

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.iphdr, ptr %31, i32 0, i32 4
  %47 = load i16, ptr %46, align 2
  %48 = and i16 %47, -193
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %208

50:                                               ; preds = %45
  %51 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %31, i32 5) #17, !srcloc !31
  %52 = extractvalue { i32, ptr, i32, i32 } %51, 0
  %53 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %52) #19, !srcloc !32
  %54 = icmp ugt i32 %53, -65537
  br i1 %54, label %55, label %208, !prof !9

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.iphdr, ptr %31, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %59 = load i32, ptr %31, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %61 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %62 = load i32, ptr %61, align 8
  %63 = load i32, ptr %3, align 8
  %64 = sub i32 %62, %63
  %65 = xor i32 %64, %60
  %66 = and i32 %58, 49151
  %67 = and i32 %65, 65535
  %68 = or i32 %67, %66
  %69 = load ptr, ptr %0, align 4
  %70 = icmp eq ptr %69, %0
  br i1 %70, label %71, label %75

71:                                               ; preds = %55
  %72 = lshr i32 %57, 16
  %73 = trunc i32 %68 to i16
  %74 = trunc i32 %72 to i8
  br label %165

75:                                               ; preds = %55
  %76 = lshr i32 %58, 16
  %77 = getelementptr inbounds %struct.iphdr, ptr %31, i32 0, i32 8
  %78 = getelementptr inbounds %struct.iphdr, ptr %31, i32 0, i32 9
  %79 = getelementptr inbounds %struct.iphdr, ptr %31, i32 0, i32 5
  %80 = getelementptr inbounds %struct.iphdr, ptr %31, i32 0, i32 1
  %81 = trunc i32 %68 to i16
  %82 = trunc i32 %76 to i16
  %83 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  br label %84

84:                                               ; preds = %158, %75
  %85 = phi ptr [ %69, %75 ], [ %159, %158 ]
  %86 = getelementptr inbounds %struct.sk_buff, ptr %85, i32 0, i32 3, i32 26
  %87 = load i16, ptr %86, align 2
  %88 = and i16 %87, 1
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %158, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.sk_buff, ptr %85, i32 0, i32 17
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr i8, ptr %92, i32 %4
  %94 = load i8, ptr %32, align 1
  %95 = getelementptr inbounds %struct.iphdr, ptr %93, i32 0, i32 6
  %96 = load i8, ptr %95, align 1
  %97 = xor i8 %96, %94
  %98 = zext i8 %97 to i32
  %99 = load i32, ptr %77, align 4
  %100 = getelementptr inbounds %struct.iphdr, ptr %93, i32 0, i32 8
  %101 = load i32, ptr %100, align 4
  %102 = xor i32 %101, %99
  %103 = or i32 %102, %98
  %104 = load i32, ptr %78, align 4
  %105 = getelementptr inbounds %struct.iphdr, ptr %93, i32 0, i32 9
  %106 = load i32, ptr %105, align 4
  %107 = xor i32 %106, %104
  %108 = or i32 %103, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %90
  %111 = and i16 %87, -2
  store i16 %111, ptr %86, align 2
  br label %158

112:                                              ; preds = %90
  %113 = load i8, ptr %79, align 4
  %114 = getelementptr inbounds %struct.iphdr, ptr %93, i32 0, i32 5
  %115 = load i8, ptr %114, align 4
  %116 = xor i8 %115, %113
  %117 = load i8, ptr %80, align 1
  %118 = getelementptr inbounds %struct.iphdr, ptr %93, i32 0, i32 1
  %119 = load i8, ptr %118, align 1
  %120 = xor i8 %119, %117
  %121 = or i8 %120, %116
  %122 = zext i8 %121 to i16
  %123 = load i16, ptr %46, align 2
  %124 = getelementptr inbounds %struct.iphdr, ptr %93, i32 0, i32 4
  %125 = load i16, ptr %124, align 2
  %126 = xor i16 %125, %123
  %127 = and i16 %126, 64
  %128 = getelementptr inbounds %struct.sk_buff, ptr %85, i32 0, i32 3, i32 12
  %129 = load i16, ptr %128, align 4
  %130 = or i16 %122, %81
  %131 = or i16 %130, %129
  %132 = or i16 %131, %127
  store i16 %132, ptr %128, align 4
  %133 = getelementptr inbounds %struct.iphdr, ptr %93, i32 0, i32 3
  %134 = load i16, ptr %133, align 4
  %135 = tail call i16 @llvm.bswap.i16(i16 %134)
  %136 = sub i16 %82, %135
  %137 = and i16 %87, 1024
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %112
  %140 = load i16, ptr %46, align 2
  %141 = and i16 %140, 64
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139, %112
  %144 = getelementptr inbounds %struct.sk_buff, ptr %85, i32 0, i32 3, i32 16
  %145 = load i16, ptr %144, align 8
  %146 = icmp ne i16 %136, %145
  %147 = sext i1 %146 to i16
  br label %148

148:                                              ; preds = %143, %139
  %149 = phi i16 [ %136, %139 ], [ %147, %143 ]
  %150 = load i16, ptr %83, align 2
  %151 = and i16 %150, 1024
  %152 = icmp eq i16 %151, 0
  %153 = getelementptr inbounds %struct.sk_buff, ptr %85, i32 0, i32 3, i32 14
  br i1 %152, label %155, label %154

154:                                              ; preds = %148
  store i16 %149, ptr %153, align 2
  br label %158

155:                                              ; preds = %148
  %156 = load i16, ptr %153, align 2
  %157 = or i16 %156, %149
  store i16 %157, ptr %153, align 2
  br label %158

158:                                              ; preds = %155, %154, %110, %84
  %159 = load ptr, ptr %85, align 4
  %160 = icmp eq ptr %159, %0
  br i1 %160, label %161, label %84

161:                                              ; preds = %158
  %162 = load i16, ptr %46, align 2
  %163 = load i32, ptr %3, align 8
  %164 = trunc i16 %162 to i8
  br label %165

165:                                              ; preds = %161, %71
  %166 = phi i16 [ %73, %71 ], [ %81, %161 ]
  %167 = phi i32 [ %63, %71 ], [ %163, %161 ]
  %168 = phi i8 [ %74, %71 ], [ %164, %161 ]
  %169 = lshr i8 %168, 6
  %170 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %171 = load i16, ptr %170, align 2
  %172 = zext i8 %169 to i16
  %173 = shl nuw nsw i16 %172, 10
  %174 = and i16 %171, -31745
  %175 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %176 = load i16, ptr %175, align 4
  %177 = or i16 %176, %166
  store i16 %177, ptr %175, align 4
  %178 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %181 = load ptr, ptr %180, align 8
  %182 = ptrtoint ptr %179 to i32
  %183 = ptrtoint ptr %181 to i32
  %184 = sub i32 %182, %183
  %185 = trunc i32 %184 to i16
  %186 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %187 = trunc i32 %4 to i16
  %188 = add i16 %185, %187
  store i16 %188, ptr %186, align 4
  %189 = add i32 %167, 20
  store i32 %189, ptr %3, align 8
  %190 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %191 = trunc i32 %189 to i16
  %192 = add i16 %191, %185
  store i16 %192, ptr %190, align 2
  %193 = lshr i16 %171, 11
  %194 = trunc i16 %193 to i8
  %195 = add nuw nsw i8 %194, 1
  %196 = and i8 %195, 15
  %197 = zext i8 %196 to i16
  %198 = shl nuw nsw i16 %197, 11
  %199 = and i16 %173, 1024
  %200 = or i16 %199, %174
  %201 = or i16 %198, %200
  store i16 %201, ptr %170, align 2
  %202 = icmp eq i8 %196, 15
  br i1 %202, label %203, label %205, !prof !16

203:                                              ; preds = %165
  %204 = or i16 %177, 1
  store i16 %204, ptr %175, align 4
  br label %208

205:                                              ; preds = %165
  %206 = load ptr, ptr %39, align 4
  %207 = tail call ptr %206(ptr noundef %0, ptr noundef %1) #17
  br label %208

208:                                              ; preds = %205, %203, %50, %45, %42, %38, %30, %25, %21, %19
  %209 = phi i32 [ 1, %25 ], [ 1, %42 ], [ 1, %45 ], [ 1, %50 ], [ 1, %38 ], [ 1, %30 ], [ %68, %205 ], [ %68, %203 ], [ 1, %21 ], [ 1, %19 ]
  %210 = phi ptr [ null, %25 ], [ null, %42 ], [ null, %45 ], [ null, %50 ], [ null, %38 ], [ null, %30 ], [ %207, %205 ], [ null, %203 ], [ null, %21 ], [ null, %19 ]
  %211 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %212 = load i16, ptr %211, align 4
  %213 = trunc i32 %209 to i16
  %214 = or i16 %212, %213
  store i16 %214, ptr %211, align 4
  ret ptr %210
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_current_timestamp() #0 {
  %1 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i32 16, i1 false), !annotation !21
  call void @ktime_get_real_ts64(ptr noundef nonnull %1) #17
  %2 = load i64, ptr %1, align 8
  %3 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -4454547087429121353, i64 %2) #19, !srcloc !33
  %4 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -4454547087429121353, i64 %2, i64 %3, i32 0) #19, !srcloc !34
  %5 = extractvalue { i64, i32 } %4, 0
  %6 = trunc i64 %2 to i32
  %7 = lshr i64 %5, 16
  %8 = trunc i64 %7 to i32
  %9 = mul i32 %8, -86400
  %10 = add i32 %9, %6
  %11 = mul i32 %10, 1000
  %12 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = udiv i32 %13, 1000000
  %15 = add i32 %11, %14
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #17
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_recv_error(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %6 = load i16, ptr %5, align 8
  switch i16 %6, label %12 [
    i16 2, label %7
    i16 10, label %9
  ]

7:                                                ; preds = %4
  %8 = tail call i32 @ip_recv_error(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #17
  br label %12

9:                                                ; preds = %4
  %10 = load ptr, ptr @pingv6_ops, align 4
  %11 = tail call i32 %10(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #17
  br label %12

12:                                               ; preds = %9, %7, %4
  %13 = phi i32 [ %8, %7 ], [ %11, %9 ], [ -22, %4 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_recv_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_gro_complete(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = sub i32 %4, %1
  %6 = trunc i32 %5 to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %1
  %11 = getelementptr inbounds %struct.iphdr, ptr %10, i32 0, i32 6
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 8192
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 12
  store i16 8, ptr %19, align 8
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %21 = load i16, ptr %20, align 2
  %22 = and i16 %21, -513
  store i16 %22, ptr %20, align 2
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %24 = load ptr, ptr %23, align 8
  %25 = ptrtoint ptr %9 to i32
  %26 = ptrtoint ptr %24 to i32
  %27 = sub i32 %25, %26
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 14
  %30 = trunc i32 %1 to i16
  %31 = add i16 %28, %30
  store i16 %31, ptr %29, align 4
  br label %32

32:                                               ; preds = %18, %2
  %33 = getelementptr inbounds %struct.iphdr, ptr %10, i32 0, i32 7
  %34 = getelementptr inbounds %struct.iphdr, ptr %10, i32 0, i32 2
  %35 = load i16, ptr %34, align 2
  %36 = load i16, ptr %33, align 2
  %37 = xor i16 %36, -1
  %38 = xor i16 %35, -1
  %39 = add i16 %37, %38
  %40 = icmp ult i16 %39, %38
  %41 = zext i1 %40 to i16
  %42 = add i16 %39, %7
  %43 = add i16 %42, %41
  %44 = icmp ult i16 %43, %7
  %45 = zext i1 %44 to i16
  %46 = add i16 %43, %45
  %47 = xor i16 %46, -1
  store i16 %47, ptr %33, align 2
  store i16 %7, ptr %34, align 2
  %48 = getelementptr [256 x ptr], ptr @inet_offloads, i32 0, i32 %13
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %32
  %52 = getelementptr inbounds %struct.offload_callbacks, ptr %49, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56, !prof !16

55:                                               ; preds = %51, %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1621, i32 noundef 9, ptr noundef null) #17
  br label %59

56:                                               ; preds = %51
  %57 = add i32 %1, 20
  %58 = tail call i32 %53(ptr noundef %0, i32 noundef %57) #17
  br label %59

59:                                               ; preds = %56, %55
  %60 = phi i32 [ %58, %56 ], [ -38, %55 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_ctl_sock_create(ptr nocapture noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store ptr null, ptr %6, align 4, !annotation !21
  %7 = zext i16 %1 to i32
  %8 = zext i16 %2 to i32
  %9 = zext i8 %3 to i32
  %10 = call i32 @sock_create_kern(ptr noundef %4, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef nonnull %6) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %5
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.socket, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 16
  store ptr %15, ptr %0, align 4
  %16 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 41
  store i32 2592, ptr %16, align 8
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.sock_common, ptr %17, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.proto, ptr %19, i32 0, i32 21
  %21 = load ptr, ptr %20, align 4
  call void %21(ptr noundef %17) #17
  br label %22

22:                                               ; preds = %12, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create_kern(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @snmp_fold_field(ptr noundef %0, i32 noundef %1) #7 {
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  %5 = icmp ult i32 %4, %3
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = ptrtoint ptr %0 to i32
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ %4, %6 ], [ %18, %8 ]
  %10 = phi i32 [ 0, %6 ], [ %17, %8 ]
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %7
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr i32, ptr %14, i32 %1
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %10
  %18 = tail call i32 @cpumask_next(i32 noundef %9, ptr noundef nonnull @__cpu_possible_mask) #20
  %19 = icmp ult i32 %18, %3
  br i1 %19, label %8, label %20

20:                                               ; preds = %8, %2
  %21 = phi i32 [ 0, %2 ], [ %17, %8 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @snmp_get_cpu_field64(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = ptrtoint ptr %0 to i32
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %5
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr i8, ptr %9, i32 %3
  %11 = getelementptr i64, ptr %9, i32 %2
  br label %12

12:                                               ; preds = %20, %4
  %13 = load volatile i32, ptr %10, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %16, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !36
  %17 = load volatile i32, ptr %10, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %16

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %13, %12 ], [ %17, %16 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !37
  %22 = load i64, ptr %11, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !38
  %23 = load volatile i32, ptr %10, align 4
  %24 = icmp eq i32 %23, %21
  br i1 %24, label %25, label %12

25:                                               ; preds = %20
  ret i64 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @snmp_fold_field64(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %36

7:                                                ; preds = %3
  %8 = ptrtoint ptr %0 to i32
  br label %9

9:                                                ; preds = %31, %7
  %10 = phi i32 [ %4, %7 ], [ %33, %31 ]
  %11 = phi i64 [ 0, %7 ], [ %32, %31 ]
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %8
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr i8, ptr %15, i32 %2
  %17 = getelementptr i64, ptr %15, i32 %1
  br label %18

18:                                               ; preds = %26, %9
  %19 = load volatile i32, ptr %16, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %22, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !36
  %23 = load volatile i32, ptr %16, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %22

26:                                               ; preds = %22, %18
  %27 = phi i32 [ %19, %18 ], [ %23, %22 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !37
  %28 = load i64, ptr %17, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !38
  %29 = load volatile i32, ptr %16, align 4
  %30 = icmp eq i32 %29, %27
  br i1 %30, label %31, label %18

31:                                               ; preds = %26
  %32 = add i64 %28, %11
  %33 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef nonnull @__cpu_possible_mask) #20
  %34 = load i32, ptr @nr_cpu_ids, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %9, label %36

36:                                               ; preds = %31, %3
  %37 = phi i64 [ 0, %3 ], [ %32, %31 ]
  ret i64 %37
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ipv4_offload_init() #9 section ".init.text" {
  %1 = tail call i32 @udpv4_offload_init() #17
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.ipv4_offload_init) #18
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call i32 @tcpv4_offload_init() #17
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ipv4_offload_init) #18
  br label %10

10:                                               ; preds = %8, %5
  %11 = tail call i32 @inet_add_offload(ptr noundef nonnull @ipip_offload, i8 noundef zeroext 4) #17
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.ipv4_offload_init) #18
  br label %15

15:                                               ; preds = %13, %10
  tail call void @dev_add_offload(ptr noundef nonnull @ip_packet_offload) #17
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @inet_init() #9 section ".init.text" {
  %1 = tail call i32 @proto_register(ptr noundef nonnull @tcp_prot, i32 noundef 1) #17
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %52

3:                                                ; preds = %0
  %4 = tail call i32 @proto_register(ptr noundef nonnull @udp_prot, i32 noundef 1) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %57

6:                                                ; preds = %3
  %7 = tail call i32 @proto_register(ptr noundef nonnull @raw_prot, i32 noundef 1) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %6
  %10 = tail call i32 @proto_register(ptr noundef nonnull @ping_prot, i32 noundef 1) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %9
  %13 = tail call i32 @sock_register(ptr noundef nonnull @inet_family_ops) #17
  tail call void @ip_static_sysctl_init() #17
  %14 = tail call i32 @inet_add_protocol(ptr noundef nonnull @icmp_protocol, i8 noundef zeroext 1) #17
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.inet_init) #18
  br label %18

18:                                               ; preds = %16, %12
  %19 = tail call i32 @inet_add_protocol(ptr noundef nonnull @udp_protocol, i8 noundef zeroext 17) #17
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.inet_init) #18
  br label %23

23:                                               ; preds = %21, %18
  %24 = tail call i32 @inet_add_protocol(ptr noundef nonnull @tcp_protocol, i8 noundef zeroext 6) #17
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.inet_init) #18
  br label %28

28:                                               ; preds = %26, %23
  br label %29

29:                                               ; preds = %29, %28
  %30 = phi ptr [ %32, %29 ], [ @inetsw, %28 ]
  store volatile ptr %30, ptr %30, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr %struct.list_head, ptr %30, i32 1
  %33 = icmp ult ptr %32, getelementptr inbounds ([11 x %struct.list_head], ptr @inetsw, i32 1, i32 0)
  br i1 %33, label %29, label %34

34:                                               ; preds = %34, %29
  %35 = phi ptr [ %36, %34 ], [ @inetsw_array, %29 ]
  tail call void @inet_register_protosw(ptr noundef %35)
  %36 = getelementptr %struct.inet_protosw, ptr %35, i32 1
  %37 = icmp ult ptr %36, getelementptr inbounds ([4 x %struct.inet_protosw], ptr @inetsw_array, i32 1, i32 0)
  br i1 %37, label %34, label %38

38:                                               ; preds = %34
  tail call void @arp_init() #17
  tail call void @ip_init() #17
  %39 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ipv4_mib_ops) #17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.inet_init) #21
  unreachable

42:                                               ; preds = %38
  tail call void @tcp_init() #17
  tail call void @udp_init() #17
  tail call void @udplite4_register() #17
  tail call void @raw_init() #17
  tail call void @ping_init() #18
  %43 = tail call i32 @icmp_init() #17
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.18) #21
  unreachable

46:                                               ; preds = %42
  %47 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @af_inet_ops) #17
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.inet_init) #18
  br label %51

51:                                               ; preds = %49, %46
  tail call fastcc void @ipv4_proc_init()
  tail call void @ipfrag_init() #17
  tail call void @dev_add_pack(ptr noundef nonnull @ip_packet_type) #17
  tail call void @ip_tunnel_core_init() #18
  br label %52

52:                                               ; preds = %57, %51, %0
  %53 = phi i32 [ %1, %0 ], [ %58, %57 ], [ 0, %51 ]
  ret i32 %53

54:                                               ; preds = %9
  tail call void @proto_unregister(ptr noundef nonnull @raw_prot) #17
  br label %55

55:                                               ; preds = %54, %6
  %56 = phi i32 [ %7, %6 ], [ %10, %54 ]
  tail call void @proto_unregister(ptr noundef nonnull @udp_prot) #17
  br label %57

57:                                               ; preds = %55, %3
  %58 = phi i32 [ %4, %3 ], [ %56, %55 ]
  tail call void @proto_unregister(ptr noundef nonnull @tcp_prot) #17
  br label %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_mem_reclaim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sock_rps_record_flow_hash(i32 noundef %0) unnamed_addr #5 {
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !19
  %2 = load volatile ptr, ptr @rps_sock_flow_table, align 4
  %3 = icmp ne ptr %2, null
  %4 = icmp ne i32 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 64
  %8 = and i32 %7, %0
  %9 = load i32, ptr @rps_cpu_mask, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %10, %0
  %12 = tail call ptr @llvm.thread.pointer() #17
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = or i32 %14, %11
  %16 = getelementptr %struct.rps_sock_flow_table, ptr %2, i32 0, i32 2, i32 %8
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %15
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  store i32 %15, ptr %16, align 4
  br label %20

20:                                               ; preds = %19, %6, %1
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_key_hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_inet_sock_set_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udpv4_offload_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcpv4_offload_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_offload(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ipip_gso_segment(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @inet_gso_segment(ptr noundef %0, i64 noundef %1)
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %10, %9 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ipip_gro_receive(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 2
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  store i16 1, ptr %8, align 4
  br label %12

9:                                                ; preds = %2
  %10 = or i16 %4, 2
  store i16 %10, ptr %3, align 2
  %11 = tail call ptr @inet_gro_receive(ptr noundef %0, ptr noundef %1)
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ null, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipip_gro_complete(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %4 = load i16, ptr %3, align 8
  %5 = or i16 %4, 8192
  store i16 %5, ptr %3, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 256
  store i32 %10, ptr %8, align 8
  %11 = tail call i32 @inet_gro_complete(ptr noundef %0, i32 noundef %1)
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_static_sysctl_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arp_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_init() local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @udplite4_register() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_init() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ping_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icmp_init() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @ipv4_proc_init() unnamed_addr #9 section ".init.text" {
  %1 = tail call i32 @raw_proc_init() #17
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %15

3:                                                ; preds = %0
  %4 = tail call i32 @tcp4_proc_init() #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call i32 @udp4_proc_init() #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = tail call i32 @ping_proc_init() #18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = tail call i32 @ip_misc_proc_init() #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %19, %12, %0
  ret void

16:                                               ; preds = %12
  tail call void @ping_proc_exit() #17
  br label %17

17:                                               ; preds = %16, %9
  tail call void @udp4_proc_exit() #17
  br label %18

18:                                               ; preds = %17, %6
  tail call void @tcp4_proc_exit() #17
  br label %19

19:                                               ; preds = %18, %3
  tail call void @raw_proc_exit() #17
  br label %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipfrag_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ip_tunnel_core_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp ugt i32 %2, 262
  br i1 %5, label %173, label %6

6:                                                ; preds = %4
  store i32 1, ptr %1, align 64
  %7 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 1
  %8 = icmp eq i32 %2, 0
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !19
  %9 = load i16, ptr %7, align 4
  %10 = sext i16 %9 to i32
  %11 = getelementptr [11 x %struct.list_head], ptr @inetsw, i32 0, i32 %10
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !20
  %28 = load i16, ptr %7, align 4
  %29 = sext i16 %28 to i32
  %30 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.20, i32 noundef 2, i32 noundef %2, i32 noundef %29) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !19
  %31 = load i16, ptr %7, align 4
  %32 = sext i16 %31 to i32
  %33 = getelementptr [11 x %struct.list_head], ptr @inetsw, i32 0, i32 %32
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !20
  %50 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.21, i32 noundef 2, i32 noundef %2) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !19
  %51 = load i16, ptr %7, align 4
  %52 = sext i16 %51 to i32
  %53 = getelementptr [11 x %struct.list_head], ptr @inetsw, i32 0, i32 %52
  %54 = load volatile ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %171, label %56

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
  br i1 %68, label %171, label %56

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
  %85 = tail call zeroext i1 @ns_capable(ptr noundef %84, i32 noundef 13) #17
  br i1 %85, label %86, label %171

86:                                               ; preds = %82, %75
  %87 = getelementptr inbounds %struct.inet_protosw, ptr %77, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 5
  store ptr %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.inet_protosw, ptr %77, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.inet_protosw, ptr %77, i32 0, i32 5
  %93 = load i8, ptr %92, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !20
  %94 = getelementptr inbounds %struct.proto, ptr %91, i32 0, i32 40
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %98, !prof !16

97:                                               ; preds = %86
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 316, i32 noundef 9, ptr noundef null) #17
  br label %98

98:                                               ; preds = %97, %86
  %99 = tail call ptr @sk_alloc(ptr noundef %0, i32 noundef 2, i32 noundef 3264, ptr noundef %91, i32 noundef %3) #17
  %100 = icmp eq ptr %99, null
  br i1 %100, label %173, label %101

101:                                              ; preds = %98
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
  %115 = and i16 %111, -131
  %116 = or i16 %115, %114
  store i16 %116, ptr %110, align 8
  %117 = load i16, ptr %7, align 4
  %118 = icmp eq i16 %117, 3
  br i1 %118, label %119, label %126

119:                                              ; preds = %109
  %120 = trunc i32 %78 to i16
  %121 = getelementptr inbounds %struct.sock_common, ptr %99, i32 0, i32 2
  %122 = getelementptr inbounds %struct.anon.2, ptr %121, i32 0, i32 1
  store i16 %120, ptr %122, align 2
  %123 = icmp eq i32 %78, 255
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = or i16 %116, 8
  store i16 %125, ptr %110, align 8
  br label %126

126:                                              ; preds = %124, %119, %109
  %127 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 32
  %128 = load i8, ptr %127, align 1
  %129 = icmp eq i8 %128, 0
  %130 = zext i1 %129 to i8
  %131 = getelementptr inbounds %struct.inet_sock, ptr %99, i32 0, i32 11
  store i8 %130, ptr %131, align 1
  %132 = getelementptr inbounds %struct.inet_sock, ptr %99, i32 0, i32 7
  store i16 0, ptr %132, align 2
  tail call void @sock_init_data(ptr noundef %1, ptr noundef nonnull %99) #17
  %133 = getelementptr inbounds %struct.sock, ptr %99, i32 0, i32 80
  store ptr @inet_sock_destruct, ptr %133, align 8
  %134 = trunc i32 %78 to i16
  %135 = getelementptr inbounds %struct.sock, ptr %99, i32 0, i32 46
  store i16 %134, ptr %135, align 4
  %136 = getelementptr inbounds %struct.sock_common, ptr %99, i32 0, i32 8
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr inbounds %struct.proto, ptr %137, i32 0, i32 17
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.sock, ptr %99, i32 0, i32 79
  store ptr %139, ptr %140, align 4
  %141 = getelementptr inbounds %struct.inet_sock, ptr %99, i32 0, i32 3
  store i16 -1, ptr %141, align 8
  %142 = load i16, ptr %110, align 8
  %143 = getelementptr inbounds %struct.inet_sock, ptr %99, i32 0, i32 10
  store i8 1, ptr %143, align 2
  %144 = or i16 %142, 80
  store i16 %144, ptr %110, align 8
  %145 = getelementptr inbounds %struct.inet_sock, ptr %99, i32 0, i32 16
  store i32 0, ptr %145, align 8
  %146 = getelementptr inbounds %struct.inet_sock, ptr %99, i32 0, i32 18
  store ptr null, ptr %146, align 8
  %147 = getelementptr inbounds %struct.inet_sock, ptr %99, i32 0, i32 13
  store i8 0, ptr %147, align 2
  %148 = getelementptr inbounds %struct.sock_common, ptr %99, i32 0, i32 2
  %149 = getelementptr inbounds %struct.anon.2, ptr %148, i32 0, i32 1
  %150 = load i16, ptr %149, align 2
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %162, label %152

152:                                              ; preds = %126
  %153 = tail call i16 @llvm.bswap.i16(i16 %150)
  %154 = getelementptr inbounds %struct.inet_sock, ptr %99, i32 0, i32 6
  store i16 %153, ptr %154, align 8
  %155 = getelementptr inbounds %struct.proto, ptr %137, i32 0, i32 20
  %156 = load ptr, ptr %155, align 4
  %157 = tail call i32 %156(ptr noundef nonnull %99) #17
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = load ptr, ptr %136, align 8
  br label %162

161:                                              ; preds = %152
  tail call void @sk_common_release(ptr noundef nonnull %99) #17
  br label %173

162:                                              ; preds = %159, %126
  %163 = phi ptr [ %160, %159 ], [ %137, %126 ]
  %164 = getelementptr inbounds %struct.proto, ptr %163, i32 0, i32 6
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %173, label %167

167:                                              ; preds = %162
  %168 = tail call i32 %165(ptr noundef nonnull %99) #17
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %167
  tail call void @sk_common_release(ptr noundef nonnull %99) #17
  br label %173

171:                                              ; preds = %82, %66, %49
  %172 = phi i32 [ -1, %82 ], [ -94, %49 ], [ -93, %66 ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !20
  br label %173

173:                                              ; preds = %171, %170, %167, %162, %161, %98, %4
  %174 = phi i32 [ -22, %4 ], [ %172, %171 ], [ %157, %161 ], [ %168, %170 ], [ -12, %98 ], [ 0, %167 ], [ 0, %162 ]
  ret i32 %174
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_common_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icmp_rcv(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icmp_err(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_v4_early_demux(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_rcv(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_err(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_v4_early_demux(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_v4_rcv(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_v4_err(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ipv4_mib_init_net(ptr nocapture noundef %0) #9 section ".init.text" {
  %2 = tail call noalias ptr @__alloc_percpu(i32 noundef 64, i32 noundef 4) #22
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 2
  store ptr %2, ptr %4, align 8
  %5 = icmp eq ptr %2, null
  br i1 %5, label %111, label %6

6:                                                ; preds = %1
  %7 = tail call noalias ptr @__alloc_percpu(i32 noundef 304, i32 noundef 8) #22
  store ptr %7, ptr %3, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %109, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  %12 = icmp ult i32 %11, %10
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = ptrtoint ptr %7 to i32
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.ipstats_mib, ptr %18, i32 0, i32 1
  store i32 0, ptr %19, align 4
  %20 = tail call i32 @cpumask_next(i32 noundef %11, ptr noundef nonnull @__cpu_possible_mask) #20
  %21 = icmp ult i32 %20, %10
  br i1 %21, label %22, label %33

22:                                               ; preds = %22, %13
  %23 = phi i32 [ %31, %22 ], [ %20, %13 ]
  %24 = load ptr, ptr %3, align 8
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.ipstats_mib, ptr %29, i32 0, i32 1
  store i32 0, ptr %30, align 4
  %31 = tail call i32 @cpumask_next(i32 noundef %23, ptr noundef nonnull @__cpu_possible_mask) #20
  %32 = icmp ult i32 %31, %10
  br i1 %32, label %22, label %33

33:                                               ; preds = %22, %13, %9
  %34 = tail call noalias ptr @__alloc_percpu(i32 noundef 504, i32 noundef 4) #22
  %35 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 3
  store ptr %34, ptr %35, align 4
  %36 = icmp eq ptr %34, null
  br i1 %36, label %107, label %37

37:                                               ; preds = %33
  %38 = tail call noalias ptr @__alloc_percpu(i32 noundef 40, i32 noundef 4) #22
  %39 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 4
  store ptr %38, ptr %39, align 8
  %40 = icmp eq ptr %38, null
  br i1 %40, label %105, label %41

41:                                               ; preds = %37
  %42 = tail call noalias ptr @__alloc_percpu(i32 noundef 40, i32 noundef 4) #22
  %43 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 6
  store ptr %42, ptr %43, align 8
  %44 = icmp eq ptr %42, null
  br i1 %44, label %103, label %45

45:                                               ; preds = %41
  %46 = tail call noalias ptr @__alloc_percpu(i32 noundef 112, i32 noundef 4) #22
  %47 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 8
  store ptr %46, ptr %47, align 8
  %48 = icmp eq ptr %46, null
  br i1 %48, label %101, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %51 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3520, i32 noundef 2048) #23
  %52 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 9
  store ptr %51, ptr %52, align 4
  %53 = icmp eq ptr %51, null
  br i1 %53, label %99, label %54

54:                                               ; preds = %49
  %55 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !39
  %56 = load ptr, ptr %4, align 8
  %57 = getelementptr [16 x i32], ptr %56, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  %59 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %60 = inttoptr i32 %59 to ptr
  %61 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %60) #15, !srcloc !40
  %62 = add i32 %61, %58
  %63 = inttoptr i32 %62 to ptr
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %55) #17, !srcloc !41
  %66 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !39
  %67 = load ptr, ptr %4, align 8
  %68 = getelementptr [16 x i32], ptr %67, i32 0, i32 2
  %69 = ptrtoint ptr %68 to i32
  %70 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %71 = inttoptr i32 %70 to ptr
  %72 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %71) #15, !srcloc !40
  %73 = add i32 %72, %69
  %74 = inttoptr i32 %73 to ptr
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, 200
  store i32 %76, ptr %74, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %66) #17, !srcloc !41
  %77 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !39
  %78 = load ptr, ptr %4, align 8
  %79 = getelementptr [16 x i32], ptr %78, i32 0, i32 3
  %80 = ptrtoint ptr %79 to i32
  %81 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %82 = inttoptr i32 %81 to ptr
  %83 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %82) #15, !srcloc !40
  %84 = add i32 %83, %80
  %85 = inttoptr i32 %84 to ptr
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, 120000
  store i32 %87, ptr %85, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %77) #17, !srcloc !41
  %88 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !39
  %89 = load ptr, ptr %4, align 8
  %90 = getelementptr [16 x i32], ptr %89, i32 0, i32 4
  %91 = ptrtoint ptr %90 to i32
  %92 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %93 = inttoptr i32 %92 to ptr
  %94 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %93) #15, !srcloc !40
  %95 = add i32 %94, %91
  %96 = inttoptr i32 %95 to ptr
  %97 = load i32, ptr %96, align 4
  %98 = add i32 %97, -1
  store i32 %98, ptr %96, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %88) #17, !srcloc !41
  br label %111

99:                                               ; preds = %49
  %100 = load ptr, ptr %47, align 8
  tail call void @free_percpu(ptr noundef %100) #17
  br label %101

101:                                              ; preds = %99, %45
  %102 = load ptr, ptr %43, align 8
  tail call void @free_percpu(ptr noundef %102) #17
  br label %103

103:                                              ; preds = %101, %41
  %104 = load ptr, ptr %39, align 8
  tail call void @free_percpu(ptr noundef %104) #17
  br label %105

105:                                              ; preds = %103, %37
  %106 = load ptr, ptr %35, align 4
  tail call void @free_percpu(ptr noundef %106) #17
  br label %107

107:                                              ; preds = %105, %33
  %108 = load ptr, ptr %3, align 8
  tail call void @free_percpu(ptr noundef %108) #17
  br label %109

109:                                              ; preds = %107, %6
  %110 = load ptr, ptr %4, align 8
  tail call void @free_percpu(ptr noundef %110) #17
  br label %111

111:                                              ; preds = %109, %54, %1
  %112 = phi i32 [ 0, %54 ], [ -12, %1 ], [ -12, %109 ]
  ret i32 %112
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipv4_mib_exit_net(ptr nocapture noundef readonly %0) #12 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 9
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %4) #17
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 8
  %6 = load ptr, ptr %5, align 8
  tail call void @free_percpu(ptr noundef %6) #17
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 6
  %8 = load ptr, ptr %7, align 8
  tail call void @free_percpu(ptr noundef %8) #17
  %9 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 4
  %10 = load ptr, ptr %9, align 8
  tail call void @free_percpu(ptr noundef %10) #17
  %11 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void @free_percpu(ptr noundef %12) #17
  %13 = load ptr, ptr %2, align 8
  tail call void @free_percpu(ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 2
  %15 = load ptr, ptr %14, align 8
  tail call void @free_percpu(ptr noundef %15) #17
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @inet_init_net(ptr noundef writeonly %0) #16 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 28
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 28, i32 0, i32 1
  store i32 0, ptr %3, align 4
  store i32 0, ptr %2, align 4
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 28, i32 1
  store i32 32768, ptr %4, align 4
  %5 = getelementptr %struct.net, ptr %0, i32 0, i32 35, i32 28, i32 1, i32 1
  store i32 60999, ptr %5, align 4
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 114
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 114, i32 0, i32 1
  store i32 0, ptr %7, align 4
  store i32 0, ptr %6, align 4
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 114, i32 1
  store i32 1, ptr %8, align 8
  %9 = getelementptr %struct.net, ptr %0, i32 0, i32 35, i32 114, i32 1, i32 1
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 31
  store i8 64, ptr %10, align 2
  %11 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 34
  store i8 1, ptr %11, align 1
  %12 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 37
  store i8 0, ptr %12, align 16
  %13 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 38
  %14 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 117
  store i32 16843009, ptr %13, align 1
  store i32 1024, ptr %14, align 16
  %15 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 111
  store i32 20, ptr %15, align 4
  %16 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 112
  store i32 10, ptr %16, align 16
  %17 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 110
  store i8 1, ptr %17, align 1
  %18 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 113
  store i32 2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 109
  store i8 0, ptr %19, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_proc_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp4_proc_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp4_proc_init() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @ping_proc_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_misc_proc_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ping_proc_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp4_proc_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp4_proc_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_proc_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_rcv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_list_rcv(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind readonly }
attributes #16 = { argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind allocsize(2) }

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
!10 = !{i64 2155393228}
!11 = !{i64 497929, i64 2147987900, i64 2147987926, i64 2147987973, i64 2147987995, i64 2147988023, i64 2147988043}
!12 = !{i64 507376, i64 507393, i64 507417, i64 507443, i64 507461}
!13 = !{i64 2155393547}
!14 = !{i64 2155413931}
!15 = !{i64 2155414248}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2155362356}
!18 = !{i8 0, i8 2}
!19 = !{i64 2149060976}
!20 = !{i64 2149061193}
!21 = !{!"auto-init"}
!22 = !{i64 2151194247, i64 2151194272}
!23 = !{i64 3690359}
!24 = !{i64 3690556}
!25 = !{i64 2151175835}
!26 = !{i64 2150218982}
!27 = !{i64 2157757826}
!28 = !{i64 2157758020}
!29 = !{i64 2157885945}
!30 = !{i64 2153484886, i64 2153485374, i64 2153484923, i64 2153484979, i64 2153485013, i64 2153485037, i64 2153485078, i64 2153485099, i64 2153485127, i64 2153485161}
!31 = !{i64 5399415, i64 5399454, i64 5399480, i64 5399504, i64 5399529, i64 5399555, i64 5399580, i64 5399606, i64 5399633, i64 5399659, i64 5399698, i64 5399742, i64 5399773, i64 5399798}
!32 = !{i64 5399032}
!33 = !{i64 927461, i64 927488}
!34 = !{i64 928156, i64 928183, i64 928216, i64 928237, i64 928264, i64 928290}
!35 = !{i64 2153819849}
!36 = !{i64 2153819691}
!37 = !{i64 2153819993}
!38 = !{i64 2149421848}
!39 = !{i64 393168, i64 393229}
!40 = !{i64 411868}
!41 = !{i64 396185}
