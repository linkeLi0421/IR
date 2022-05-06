; ModuleID = '/llk/IR/net/bluetooth/af_bluetooth.c_pt.bc'
source_filename = "../net/bluetooth/af_bluetooth.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_sock_reclassify_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_sock_reclassify_lock\22\09\09\09\09\09"
module asm "__kstrtabns_bt_sock_reclassify_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_sock_register:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_sock_register\22\09\09\09\09\09"
module asm "__kstrtabns_bt_sock_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_sock_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_sock_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_bt_sock_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_sock_link:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_sock_link\22\09\09\09\09\09"
module asm "__kstrtabns_bt_sock_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_sock_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_sock_unlink\22\09\09\09\09\09"
module asm "__kstrtabns_bt_sock_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_accept_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_accept_enqueue\22\09\09\09\09\09"
module asm "__kstrtabns_bt_accept_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_accept_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_accept_unlink\22\09\09\09\09\09"
module asm "__kstrtabns_bt_accept_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_accept_dequeue:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_accept_dequeue\22\09\09\09\09\09"
module asm "__kstrtabns_bt_accept_dequeue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_sock_recvmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_sock_recvmsg\22\09\09\09\09\09"
module asm "__kstrtabns_bt_sock_recvmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_sock_stream_recvmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_sock_stream_recvmsg\22\09\09\09\09\09"
module asm "__kstrtabns_bt_sock_stream_recvmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_sock_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_sock_poll\22\09\09\09\09\09"
module asm "__kstrtabns_bt_sock_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_sock_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_sock_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_bt_sock_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_sock_wait_state:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_sock_wait_state\22\09\09\09\09\09"
module asm "__kstrtabns_bt_sock_wait_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_sock_wait_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_sock_wait_ready\22\09\09\09\09\09"
module asm "__kstrtabns_bt_sock_wait_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_procfs_init:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_procfs_init\22\09\09\09\09\09"
module asm "__kstrtabns_bt_procfs_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_procfs_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_procfs_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_bt_procfs_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt_debugfs:\09\09\09\09\09"
module asm "\09.asciz \09\22bt_debugfs\22\09\09\09\09\09"
module asm "__kstrtabns_bt_debugfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.87, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.87 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.127, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.128, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.129, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.123, [0 x i32], %union.anon.124, i16, i16, %union.anon.125, %struct.refcount_struct, [0 x i32], %union.anon.126 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.81 }
%union.anon.81 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { %struct.hlist_node }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.127 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.128 = type { ptr }
%union.anon.129 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.bt_sock_list = type { %struct.hlist_head, %struct.rwlock_t, ptr }
%struct.bt_sock = type { %struct.sock, %struct.list_head, ptr, i32, ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.socket_alloc = type { %struct.socket, %struct.inode, [56 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.131, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.132, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.133, ptr, %struct.address_space, %struct.list_head, %union.anon.134, i32, i32, ptr, ptr }
%union.anon.131 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.132 = type { %struct.callback_head }
%union.anon.133 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.134 = type { ptr }
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
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.121, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.119 }
%union.anon.4 = type { ptr }
%union.anon.119 = type { i64 }
%union.anon.121 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.102, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.102 = type { %struct.callback_head }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.9, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.9 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@bt_sock_reclassify_lock.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [16 x i8] c"&sk->sk_lock.wq\00", align 1
@__kstrtab_bt_sock_reclassify_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_sock_reclassify_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_sock_reclassify_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_sock_reclassify_lock to i32), ptr @__kstrtab_bt_sock_reclassify_lock, ptr @__kstrtabns_bt_sock_reclassify_lock }, section "___ksymtab+bt_sock_reclassify_lock", align 4
@bt_proto_lock = internal global %struct.rwlock_t zeroinitializer, align 4
@bt_proto = internal unnamed_addr global [8 x ptr] zeroinitializer, align 4
@__kstrtab_bt_sock_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_sock_register = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_sock_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_sock_register to i32), ptr @__kstrtab_bt_sock_register, ptr @__kstrtabns_bt_sock_register }, section "___ksymtab+bt_sock_register", align 4
@__kstrtab_bt_sock_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_sock_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_sock_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_sock_unregister to i32), ptr @__kstrtab_bt_sock_unregister, ptr @__kstrtabns_bt_sock_unregister }, section "___ksymtab+bt_sock_unregister", align 4
@__kstrtab_bt_sock_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_sock_link = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_sock_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_sock_link to i32), ptr @__kstrtab_bt_sock_link, ptr @__kstrtabns_bt_sock_link }, section "___ksymtab+bt_sock_link", align 4
@__kstrtab_bt_sock_unlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_sock_unlink = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_sock_unlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_sock_unlink to i32), ptr @__kstrtab_bt_sock_unlink, ptr @__kstrtabns_bt_sock_unlink }, section "___ksymtab+bt_sock_unlink", align 4
@__kstrtab_bt_accept_enqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_accept_enqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_accept_enqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_accept_enqueue to i32), ptr @__kstrtab_bt_accept_enqueue, ptr @__kstrtabns_bt_accept_enqueue }, section "___ksymtab+bt_accept_enqueue", align 4
@__kstrtab_bt_accept_unlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_accept_unlink = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_accept_unlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_accept_unlink to i32), ptr @__kstrtab_bt_accept_unlink, ptr @__kstrtabns_bt_accept_unlink }, section "___ksymtab+bt_accept_unlink", align 4
@__kstrtab_bt_accept_dequeue = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_accept_dequeue = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_accept_dequeue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_accept_dequeue to i32), ptr @__kstrtab_bt_accept_dequeue, ptr @__kstrtabns_bt_accept_dequeue }, section "___ksymtab+bt_accept_dequeue", align 4
@__kstrtab_bt_sock_recvmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_sock_recvmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_sock_recvmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_sock_recvmsg to i32), ptr @__kstrtab_bt_sock_recvmsg, ptr @__kstrtabns_bt_sock_recvmsg }, section "___ksymtab+bt_sock_recvmsg", align 4
@__kstrtab_bt_sock_stream_recvmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_sock_stream_recvmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_sock_stream_recvmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_sock_stream_recvmsg to i32), ptr @__kstrtab_bt_sock_stream_recvmsg, ptr @__kstrtabns_bt_sock_stream_recvmsg }, section "___ksymtab+bt_sock_stream_recvmsg", align 4
@__kstrtab_bt_sock_poll = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_sock_poll = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_sock_poll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_sock_poll to i32), ptr @__kstrtab_bt_sock_poll, ptr @__kstrtabns_bt_sock_poll }, section "___ksymtab+bt_sock_poll", align 4
@__kstrtab_bt_sock_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_sock_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_sock_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_sock_ioctl to i32), ptr @__kstrtab_bt_sock_ioctl, ptr @__kstrtabns_bt_sock_ioctl }, section "___ksymtab+bt_sock_ioctl", align 4
@__kstrtab_bt_sock_wait_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_sock_wait_state = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_sock_wait_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_sock_wait_state to i32), ptr @__kstrtab_bt_sock_wait_state, ptr @__kstrtabns_bt_sock_wait_state }, section "___ksymtab+bt_sock_wait_state", align 4
@__kstrtab_bt_sock_wait_ready = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_sock_wait_ready = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_sock_wait_ready = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_sock_wait_ready to i32), ptr @__kstrtab_bt_sock_wait_ready, ptr @__kstrtabns_bt_sock_wait_ready }, section "___ksymtab+bt_sock_wait_ready", align 4
@bt_seq_ops = internal constant %struct.seq_operations { ptr @bt_seq_start, ptr @bt_seq_stop, ptr @bt_seq_next, ptr @bt_seq_show }, align 4
@__kstrtab_bt_procfs_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_procfs_init = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_procfs_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_procfs_init to i32), ptr @__kstrtab_bt_procfs_init, ptr @__kstrtabns_bt_procfs_init }, section "___ksymtab+bt_procfs_init", align 4
@__kstrtab_bt_procfs_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_procfs_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_procfs_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_procfs_cleanup to i32), ptr @__kstrtab_bt_procfs_cleanup, ptr @__kstrtabns_bt_procfs_cleanup }, section "___ksymtab+bt_procfs_cleanup", align 4
@bt_debugfs = dso_local global ptr null, align 4
@__kstrtab_bt_debugfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt_debugfs = external dso_local constant [0 x i8], align 1
@__ksymtab_bt_debugfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt_debugfs to i32), ptr @__kstrtab_bt_debugfs, ptr @__kstrtabns_bt_debugfs }, section "___ksymtab_gpl+bt_debugfs", align 4
@__UNIQUE_ID_author431 = internal constant [45 x i8] c"author=Marcel Holtmann <marcel@holtmann.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description432 = internal constant [36 x i8] c"description=Bluetooth Core ver 2.22\00", section ".modinfo", align 1
@__UNIQUE_ID_version433 = internal constant [13 x i8] c"version=2.22\00", section ".modinfo", align 1
@__UNIQUE_ID_license434 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias435 = internal constant [16 x i8] c"alias=net-pf-31\00", section ".modinfo", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"include/net/sock.h\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"sk               RefCnt Rmem   Wmem   User   Inode  Parent\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"%pK %-6d %-6u %-6u %-6u %-6lu %-6lu\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Core ver %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"2.22\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"bluetooth\00", align 1
@bt_sock_family_ops = internal constant %struct.net_proto_family { i32 31, ptr @bt_sock_create, ptr @__this_module }, align 4
@.str.23 = private unnamed_addr constant [47 x i8] c"HCI device and connection manager initialized\0A\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@init_net = external dso_local global %struct.net, align 64
@.str.24 = private unnamed_addr constant [12 x i8] c"bt-proto-%d\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_alias435, ptr @__UNIQUE_ID_author431, ptr @__UNIQUE_ID_description432, ptr @__UNIQUE_ID_license434, ptr @__UNIQUE_ID_version433, ptr @__ksymtab_bt_accept_dequeue, ptr @__ksymtab_bt_accept_enqueue, ptr @__ksymtab_bt_accept_unlink, ptr @__ksymtab_bt_debugfs, ptr @__ksymtab_bt_procfs_cleanup, ptr @__ksymtab_bt_procfs_init, ptr @__ksymtab_bt_sock_ioctl, ptr @__ksymtab_bt_sock_link, ptr @__ksymtab_bt_sock_poll, ptr @__ksymtab_bt_sock_reclassify_lock, ptr @__ksymtab_bt_sock_recvmsg, ptr @__ksymtab_bt_sock_register, ptr @__ksymtab_bt_sock_stream_recvmsg, ptr @__ksymtab_bt_sock_unlink, ptr @__ksymtab_bt_sock_unregister, ptr @__ksymtab_bt_sock_wait_ready, ptr @__ksymtab_bt_sock_wait_state], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bt_sock_reclassify_lock(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/bluetooth/af_bluetooth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16, !prof !10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %12 = load volatile i32, ptr %11, align 4
  store volatile i32 %12, ptr %3, align 4
  %13 = lshr i32 %12, 16
  %14 = and i32 %12, 65535
  %15 = icmp eq i32 %14, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %15, label %17, label %16, !prof !11

16:                                               ; preds = %10, %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/bluetooth/af_bluetooth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 72, 0\0A.popsection", ""() #7, !srcloc !12
  unreachable

17:                                               ; preds = %10
  store i32 0, ptr %7, align 4
  %18 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @bt_sock_reclassify_lock.__key) #7
  store i32 0, ptr %11, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bt_sock_register(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp ugt i32 %0, 7
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  tail call void @_raw_write_lock(ptr noundef nonnull @bt_proto_lock) #7
  %5 = getelementptr [8 x ptr], ptr @bt_proto, i32 0, i32 %0
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store ptr %1, ptr %5, align 4
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ 0, %8 ], [ -17, %4 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @bt_proto_lock, i32 0) #7, !srcloc !14
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ %10, %9 ], [ -22, %2 ]
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bt_sock_unregister(i32 noundef %0) #0 {
  %2 = icmp ugt i32 %0, 7
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  tail call void @_raw_write_lock(ptr noundef nonnull @bt_proto_lock) #7
  %4 = getelementptr [8 x ptr], ptr @bt_proto, i32 0, i32 %0
  store ptr null, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @bt_proto_lock, i32 0) #7, !srcloc !14
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bt_sock_link(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bt_sock_list, ptr %0, i32 0, i32 1
  tail call void @_raw_write_lock(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #7, !srcloc !18
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #7, !srcloc !19
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !8

8:                                                ; preds = %2
  %9 = add i32 %6, 1
  %10 = or i32 %9, %6
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12, !prof !11

12:                                               ; preds = %8, %2
  %13 = phi i32 [ 2, %2 ], [ 1, %8 ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %13) #7
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %16 = load ptr, ptr %0, align 4
  store volatile ptr %16, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  store volatile ptr %15, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %14
  store volatile ptr %15, ptr %0, align 4
  %21 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  store volatile ptr %0, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %3, i32 0) #7, !srcloc !14
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bt_sock_unlink(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bt_sock_list, ptr %0, i32 0, i32 1
  tail call void @_raw_write_lock(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  store volatile ptr %9, ptr %5, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  store volatile ptr %5, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %7
  store ptr null, ptr %4, align 4
  %14 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %15 = load volatile i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 729, i32 noundef 9, ptr noundef null) #7
  br label %18

18:                                               ; preds = %17, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #7, !srcloc !18
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #7, !srcloc !21
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %18
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef 4) #7
  br label %23

23:                                               ; preds = %22, %18, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %3, i32 0) #7, !srcloc !14
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bt_accept_enqueue(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #7, !srcloc !18
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #7, !srcloc !19
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !8

8:                                                ; preds = %3
  %9 = add i32 %6, 1
  %10 = or i32 %9, %6
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12, !prof !11

12:                                               ; preds = %8, %3
  %13 = phi i32 [ 2, %3 ], [ 1, %8 ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %13) #7
  br label %14

14:                                               ; preds = %12, %8
  br i1 %2, label %15, label %25

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %16) #7
  %17 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 1
  %18 = getelementptr inbounds %struct.bt_sock, ptr %0, i32 0, i32 1
  %19 = getelementptr inbounds %struct.bt_sock, ptr %0, i32 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 4
  store ptr %17, ptr %19, align 4
  store ptr %18, ptr %17, align 4
  %21 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 1, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %17, ptr %20, align 4
  %22 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 2
  store ptr %0, ptr %22, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %23 = load i16, ptr %16, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  br label %32

25:                                               ; preds = %14
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 1) #7
  %26 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 1
  %27 = getelementptr inbounds %struct.bt_sock, ptr %0, i32 0, i32 1
  %28 = getelementptr inbounds %struct.bt_sock, ptr %0, i32 0, i32 1, i32 1
  %29 = load ptr, ptr %28, align 4
  store ptr %26, ptr %28, align 4
  store ptr %27, ptr %26, align 4
  %30 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 1, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %26, ptr %29, align 4
  %31 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 2
  store ptr %0, ptr %31, align 8
  tail call void @release_sock(ptr noundef %1) #7
  br label %32

32:                                               ; preds = %25, %15
  %33 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 53
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store volatile i32 %35, ptr %33, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bt_accept_unlink(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bt_sock, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.bt_sock, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %3, align 4
  %7 = getelementptr inbounds %struct.bt_sock, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 53
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  store volatile i32 %11, ptr %9, align 4
  store ptr null, ptr %7, align 8
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #7, !srcloc !18
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #7, !srcloc !21
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %20, label %18, !prof !11

18:                                               ; preds = %16
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 3) #7
  br label %20

19:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  tail call void @sk_free(ptr noundef %0) #7
  br label %20

20:                                               ; preds = %19, %18, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bt_accept_dequeue(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bt_sock, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -520
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %113, label %7

7:                                                ; preds = %2
  %8 = icmp ne ptr %1, null
  %9 = getelementptr inbounds %struct.bt_sock, ptr %0, i32 0, i32 3
  br label %10

10:                                               ; preds = %110, %7
  %11 = phi ptr [ %5, %7 ], [ %111, %110 ]
  %12 = phi ptr [ %4, %7 ], [ %112, %110 ]
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %12, i32 -420
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #7, !srcloc !18
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #7, !srcloc !19
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !8

18:                                               ; preds = %10
  %19 = add i32 %16, 1
  %20 = or i32 %19, %16
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %24, label %22, !prof !11

22:                                               ; preds = %18, %10
  %23 = phi i32 [ 2, %10 ], [ 1, %18 ]
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef %23) #7
  br label %24

24:                                               ; preds = %22, %18
  tail call void @lock_sock_nested(ptr noundef %11, i32 noundef 0) #7
  %25 = getelementptr i8, ptr %12, i32 8
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  tail call void @release_sock(ptr noundef %11) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #7, !srcloc !18
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #7, !srcloc !21
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = icmp sgt i32 %30, 0
  br i1 %33, label %36, label %34, !prof !11

34:                                               ; preds = %32
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef 3) #7
  br label %36

35:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  tail call void @sk_free(ptr noundef %11) #7
  br label %36

36:                                               ; preds = %35, %34, %32
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr i8, ptr %37, i32 -520
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %113, label %110

40:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #7, !srcloc !18
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #7, !srcloc !21
  %42 = extractvalue { i32, i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = icmp sgt i32 %42, 0
  br i1 %45, label %48, label %46, !prof !11

46:                                               ; preds = %44
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef 3) #7
  br label %48

47:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  tail call void @sk_free(ptr noundef %11) #7
  br label %48

48:                                               ; preds = %47, %46, %44
  %49 = getelementptr i8, ptr %12, i32 -502
  %50 = load volatile i8, ptr %49, align 2
  %51 = icmp eq i8 %50, 9
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %12, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %12, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  store volatile ptr %55, ptr %54, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %53, align 4
  %57 = load ptr, ptr %25, align 8
  %58 = getelementptr inbounds %struct.sock, ptr %57, i32 0, i32 53
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, -1
  store volatile i32 %60, ptr %58, align 4
  store ptr null, ptr %25, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #7, !srcloc !18
  %61 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #7, !srcloc !21
  %62 = extractvalue { i32, i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %67, label %64

64:                                               ; preds = %52
  %65 = icmp sgt i32 %62, 0
  br i1 %65, label %107, label %66, !prof !11

66:                                               ; preds = %64
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef 3) #7
  br label %107

67:                                               ; preds = %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  tail call void @sk_free(ptr noundef %11) #7
  br label %107

68:                                               ; preds = %48
  %69 = load volatile i8, ptr %49, align 2
  %70 = icmp ne i8 %69, 1
  %71 = and i1 %8, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load volatile i32, ptr %9, align 4
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %107, label %76

76:                                               ; preds = %72, %68
  %77 = getelementptr i8, ptr %12, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %12, align 4
  %80 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  store ptr %78, ptr %80, align 4
  store volatile ptr %79, ptr %78, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %77, align 4
  %81 = load ptr, ptr %25, align 8
  %82 = getelementptr inbounds %struct.sock, ptr %81, i32 0, i32 53
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, -1
  store volatile i32 %84, ptr %82, align 4
  store ptr null, ptr %25, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #7, !srcloc !18
  %85 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #7, !srcloc !21
  %86 = extractvalue { i32, i32, i32 } %85, 0
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %91, label %88

88:                                               ; preds = %76
  %89 = icmp sgt i32 %86, 0
  br i1 %89, label %92, label %90, !prof !11

90:                                               ; preds = %88
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef 3) #7
  br label %92

91:                                               ; preds = %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  tail call void @sk_free(ptr noundef %11) #7
  br label %92

92:                                               ; preds = %91, %90, %88
  br i1 %8, label %93, label %106

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %95 = load ptr, ptr %94, align 16
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97, !prof !11

97:                                               ; preds = %93
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 2024, i32 noundef 9, ptr noundef null) #7
  br label %98

98:                                               ; preds = %97, %93
  %99 = getelementptr i8, ptr %12, i32 -128
  tail call void @_raw_write_lock_bh(ptr noundef %99) #7
  %100 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !25
  %101 = getelementptr i8, ptr %12, i32 -292
  store volatile ptr %100, ptr %101, align 4
  store ptr %11, ptr %94, align 16
  %102 = getelementptr i8, ptr %12, i32 -48
  store ptr %1, ptr %102, align 8
  %103 = getelementptr i8, ptr %12, i32 -108
  %104 = getelementptr inbounds %struct.socket_alloc, ptr %1, i32 0, i32 1, i32 2
  %105 = load i32, ptr %104, align 4
  store i32 %105, ptr %103, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %99) #7
  br label %106

106:                                              ; preds = %98, %92
  tail call void @release_sock(ptr noundef %11) #7
  br label %113

107:                                              ; preds = %72, %67, %66, %64
  tail call void @release_sock(ptr noundef %11) #7
  %108 = getelementptr i8, ptr %13, i32 -520
  %109 = icmp eq ptr %108, %0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107, %36
  %111 = phi ptr [ %108, %107 ], [ %38, %36 ]
  %112 = phi ptr [ %13, %107 ], [ %37, %36 ]
  br label %10

113:                                              ; preds = %107, %106, %36, %2
  %114 = phi ptr [ %11, %106 ], [ null, %2 ], [ null, %107 ], [ null, %36 ]
  ret ptr %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bt_sock_recvmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !26
  %8 = and i32 %3, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %87

10:                                               ; preds = %4
  %11 = and i32 %3, 64
  %12 = call ptr @skb_recv_datagram(ptr noundef %7, i32 noundef %3, i32 noundef %11, ptr noundef nonnull %5) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 66
  %16 = load i8, ptr %15, align 2
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  %19 = load i32, ptr %5, align 4
  %20 = select i1 %18, i32 %19, i32 0
  br label %87

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = icmp ugt i32 %23, %2
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, 32
  store i32 %28, ptr %26, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i32 [ %2, %25 ], [ %23, %21 ]
  %31 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 16
  %34 = load ptr, ptr %33, align 8
  %35 = ptrtoint ptr %32 to i32
  %36 = ptrtoint ptr %34 to i32
  %37 = sub i32 %35, %36
  %38 = trunc i32 %37 to i16
  %39 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 13, i32 0, i32 17
  store i16 %38, ptr %39, align 2
  %40 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %41 = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %12, i32 noundef 0, ptr noundef %40, i32 noundef %30) #7
  store i32 %41, ptr %5, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %80

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 13
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 133120
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 65
  %50 = load i16, ptr %49, align 8
  %51 = and i16 %50, 80
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48, %43
  call void @__sock_recv_ts_and_drops(ptr noundef %1, ptr noundef %7, ptr noundef nonnull %12) #7
  br label %66

54:                                               ; preds = %48
  %55 = load volatile i32, ptr %44, align 4
  %56 = and i32 %55, 128
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58, !prof !11

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 2
  %60 = load i64, ptr %59, align 8
  call fastcc void @sock_write_timestamp(ptr noundef %7, i64 noundef %60) #7
  br label %66

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 63
  %63 = load i64, ptr %62, align 8
  %64 = icmp eq i64 %63, -1000000000
  br i1 %64, label %65, label %66, !prof !8

65:                                               ; preds = %61
  call fastcc void @sock_write_timestamp(ptr noundef %7, i64 noundef 0) #7
  br label %66

66:                                               ; preds = %65, %61, %58, %53
  %67 = load ptr, ptr %1, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.bt_sock, ptr %7, i32 0, i32 4
  %71 = load ptr, ptr %70, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  call void %71(ptr noundef nonnull %12, ptr noundef nonnull %67, ptr noundef %74) #7
  br label %75

75:                                               ; preds = %73, %69, %66
  %76 = getelementptr inbounds %struct.bt_sock, ptr %7, i32 0, i32 5
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  call void %77(ptr noundef nonnull %12, ptr noundef %1, ptr noundef %7) #7
  br label %80

80:                                               ; preds = %79, %75, %29
  call void @skb_free_datagram(ptr noundef %7, ptr noundef nonnull %12) #7
  %81 = and i32 %3, 32
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %82, i32 %30, i32 %23
  %84 = load i32, ptr %5, align 4
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 %83, i32 %84
  br label %87

87:                                               ; preds = %80, %14, %4
  %88 = phi i32 [ %86, %80 ], [ -95, %4 ], [ %20, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bt_sock_stream_recvmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = and i32 %3, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %237

10:                                               ; preds = %4
  tail call void @lock_sock_nested(ptr noundef %7, i32 noundef 0) #7
  %11 = and i32 %3, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 6
  %15 = load volatile i32, ptr %14, align 4
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 %2) #7
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i32 [ %16, %13 ], [ %2, %10 ]
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 1, i32 %18
  %21 = and i32 %3, 64
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 62
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi i32 [ %25, %23 ], [ 0, %17 ]
  %28 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 8
  %29 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %30 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 13
  %31 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 65
  %32 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 63
  %33 = and i32 %3, 2
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 51
  %36 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 66
  %37 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1
  %38 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 2
  %39 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3
  %40 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3, i32 1
  %41 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 17
  br label %42

42:                                               ; preds = %223, %26
  %43 = phi i32 [ 0, %26 ], [ %224, %223 ]
  %44 = phi i32 [ %27, %26 ], [ %225, %223 ]
  %45 = phi i32 [ 0, %26 ], [ %226, %223 ]
  %46 = phi i32 [ %2, %26 ], [ %227, %223 ]
  %47 = call ptr @skb_dequeue(ptr noundef %28) #7
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %119

49:                                               ; preds = %42
  %50 = icmp ult i32 %43, %20
  br i1 %50, label %51, label %232

51:                                               ; preds = %49
  %52 = load i32, ptr %35, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54, !prof !11

54:                                               ; preds = %51
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !27
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #7, !srcloc !18
  %55 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %35) #7, !srcloc !28
  %56 = extractvalue { i32, i32 } %55, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !29
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %229

58:                                               ; preds = %54, %51
  %59 = load i8, ptr %36, align 2
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %232

62:                                               ; preds = %58
  %63 = icmp eq i32 %44, 0
  br i1 %63, label %232, label %64

64:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #7
  %65 = tail call ptr @llvm.thread.pointer() #7
  store i32 0, ptr %5, align 4
  store ptr %65, ptr %37, align 4
  store ptr @default_wake_function, ptr %38, align 4
  store ptr null, ptr %39, align 4
  store ptr null, ptr %40, align 4
  %66 = load volatile ptr, ptr %41, align 4
  call void @add_wait_queue(ptr noundef %66, ptr noundef nonnull %5) #7
  %67 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 1
  store volatile i32 1, ptr %67, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !30
  %68 = load ptr, ptr %28, align 4
  %69 = icmp eq ptr %68, %28
  br i1 %69, label %70, label %106

70:                                               ; preds = %103, %64
  %71 = phi i32 [ %96, %103 ], [ %44, %64 ]
  %72 = load i32, ptr %35, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %106

74:                                               ; preds = %70
  %75 = load i8, ptr %36, align 2
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %106

78:                                               ; preds = %74
  %79 = load volatile i32, ptr %65, align 4
  %80 = and i32 %79, 256
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %106, !prof !11

82:                                               ; preds = %78
  %83 = load volatile i32, ptr %65, align 4
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  %86 = icmp ne i32 %71, 0
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %88, label %106

88:                                               ; preds = %82
  %89 = load volatile i32, ptr %30, align 4
  %90 = and i32 %89, 65536
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %41, align 4
  %94 = getelementptr inbounds %struct.socket_wq, ptr %93, i32 0, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %94) #7
  br label %95

95:                                               ; preds = %92, %88
  call void @release_sock(ptr noundef %7) #7
  %96 = call i32 @schedule_timeout(i32 noundef %71) #7
  call void @lock_sock_nested(ptr noundef %7, i32 noundef 0) #7
  %97 = load volatile i32, ptr %30, align 4
  %98 = and i32 %97, 65536
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load ptr, ptr %41, align 4
  %102 = getelementptr inbounds %struct.socket_wq, ptr %101, i32 0, i32 2
  call void @_clear_bit(i32 noundef 1, ptr noundef %102) #7
  br label %103

103:                                              ; preds = %100, %95
  store volatile i32 1, ptr %67, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !30
  %104 = load ptr, ptr %28, align 4
  %105 = icmp eq ptr %104, %28
  br i1 %105, label %70, label %106

106:                                              ; preds = %103, %82, %78, %74, %70, %64
  %107 = phi i32 [ %44, %64 ], [ %71, %82 ], [ %71, %70 ], [ %71, %74 ], [ %96, %103 ], [ %71, %78 ]
  store volatile i32 0, ptr %67, align 8
  %108 = load volatile ptr, ptr %41, align 4
  call void @remove_wait_queue(ptr noundef %108, ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #7
  %109 = load volatile i32, ptr %65, align 4
  %110 = and i32 %109, 256
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %116, !prof !11

112:                                              ; preds = %106
  %113 = load volatile i32, ptr %65, align 4
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %223, label %116

116:                                              ; preds = %112, %106
  %117 = icmp eq i32 %107, 2147483647
  %118 = select i1 %117, i32 -512, i32 -4
  br label %232

119:                                              ; preds = %42
  %120 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 5
  %121 = load i32, ptr %120, align 8
  %122 = call i32 @llvm.umin.i32(i32 %121, i32 %46)
  %123 = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %47, i32 noundef 0, ptr noundef %29, i32 noundef %122) #7
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %119
  call void @skb_queue_head(ptr noundef %28, ptr noundef nonnull %47) #7
  %126 = icmp eq i32 %43, 0
  %127 = select i1 %126, i32 -14, i32 %43
  br label %232

128:                                              ; preds = %119
  %129 = add i32 %122, %43
  %130 = sub i32 %46, %122
  %131 = load i32, ptr %30, align 8
  %132 = and i32 %131, 133120
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i16, ptr %31, align 8
  %136 = and i16 %135, 80
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %134, %128
  call void @__sock_recv_ts_and_drops(ptr noundef %1, ptr noundef %7, ptr noundef nonnull %47) #7
  br label %150

139:                                              ; preds = %134
  %140 = load volatile i32, ptr %30, align 4
  %141 = and i32 %140, 128
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %146, label %143, !prof !11

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 2
  %145 = load i64, ptr %144, align 8
  call fastcc void @sock_write_timestamp(ptr noundef %7, i64 noundef %145) #7
  br label %150

146:                                              ; preds = %139
  %147 = load i64, ptr %32, align 8
  %148 = icmp eq i64 %147, -1000000000
  br i1 %148, label %149, label %150, !prof !8

149:                                              ; preds = %146
  call fastcc void @sock_write_timestamp(ptr noundef %7, i64 noundef 0) #7
  br label %150

150:                                              ; preds = %149, %146, %143, %138
  br i1 %34, label %151, label %222

151:                                              ; preds = %150
  %152 = load i32, ptr %120, align 8
  %153 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 6
  %154 = load i32, ptr %153, align 4
  %155 = sub i32 %152, %154
  %156 = icmp sgt i32 %122, %155
  br i1 %156, label %161, label %157

157:                                              ; preds = %151
  %158 = sub i32 %152, %122
  store i32 %158, ptr %120, align 8
  %159 = icmp ult i32 %158, %154
  br i1 %159, label %160, label %211, !prof !8

160:                                              ; preds = %157
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #7, !srcloc !31
  unreachable

161:                                              ; preds = %151
  store i32 %154, ptr %120, align 8
  %162 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 17
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr i8, ptr %163, i32 %155
  store ptr %164, ptr %162, align 4
  %165 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 15
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.skb_shared_info, ptr %166, i32 0, i32 6
  %168 = load ptr, ptr %167, align 8
  %169 = icmp eq ptr %168, null
  br i1 %169, label %217, label %170

170:                                              ; preds = %161
  %171 = sub i32 %122, %155
  br label %172

172:                                              ; preds = %207, %170
  %173 = phi ptr [ %209, %207 ], [ %168, %170 ]
  %174 = phi i32 [ %208, %207 ], [ %171, %170 ]
  %175 = getelementptr inbounds %struct.sk_buff, ptr %173, i32 0, i32 5
  %176 = load i32, ptr %175, align 8
  %177 = icmp ugt i32 %174, %176
  br i1 %177, label %189, label %178

178:                                              ; preds = %172
  %179 = load i32, ptr %120, align 8
  %180 = sub i32 %179, %174
  store i32 %180, ptr %120, align 8
  %181 = load i32, ptr %153, align 4
  %182 = sub i32 %181, %174
  store i32 %182, ptr %153, align 4
  %183 = load i32, ptr %175, align 8
  %184 = sub i32 %183, %174
  store i32 %184, ptr %175, align 8
  %185 = getelementptr inbounds %struct.sk_buff, ptr %173, i32 0, i32 6
  %186 = load i32, ptr %185, align 4
  %187 = icmp ult i32 %184, %186
  br i1 %187, label %188, label %211, !prof !8

188:                                              ; preds = %178
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #7, !srcloc !31
  unreachable

189:                                              ; preds = %172
  %190 = icmp eq i32 %176, 0
  br i1 %190, label %207, label %191

191:                                              ; preds = %189
  %192 = load i32, ptr %120, align 8
  %193 = sub i32 %192, %176
  store i32 %193, ptr %120, align 8
  %194 = load i32, ptr %175, align 8
  %195 = load i32, ptr %153, align 4
  %196 = sub i32 %195, %194
  store i32 %196, ptr %153, align 4
  %197 = load i32, ptr %175, align 8
  store i32 0, ptr %175, align 8
  %198 = getelementptr inbounds %struct.sk_buff, ptr %173, i32 0, i32 6
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %202, label %201, !prof !11

201:                                              ; preds = %191
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #7, !srcloc !31
  unreachable

202:                                              ; preds = %191
  %203 = sub i32 %174, %176
  %204 = getelementptr inbounds %struct.sk_buff, ptr %173, i32 0, i32 17
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr i8, ptr %205, i32 %197
  store ptr %206, ptr %204, align 4
  br label %207

207:                                              ; preds = %202, %189
  %208 = phi i32 [ %203, %202 ], [ %174, %189 ]
  %209 = load ptr, ptr %173, align 8
  %210 = icmp eq ptr %209, null
  br i1 %210, label %217, label %172

211:                                              ; preds = %178, %157
  %212 = phi ptr [ %47, %157 ], [ %173, %178 ]
  %213 = phi i32 [ %122, %157 ], [ %174, %178 ]
  %214 = getelementptr inbounds %struct.sk_buff, ptr %212, i32 0, i32 17
  %215 = load ptr, ptr %214, align 4
  %216 = getelementptr i8, ptr %215, i32 %213
  store ptr %216, ptr %214, align 4
  br label %217

217:                                              ; preds = %211, %207, %161
  %218 = load i32, ptr %120, align 8
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %217
  call void @skb_queue_head(ptr noundef %28, ptr noundef nonnull %47) #7
  br label %232

221:                                              ; preds = %217
  call void @kfree_skb_reason(ptr noundef nonnull %47, i32 noundef 0) #7
  br label %223

222:                                              ; preds = %150
  call void @skb_queue_head(ptr noundef %28, ptr noundef nonnull %47) #7
  br label %232

223:                                              ; preds = %221, %112
  %224 = phi i32 [ %43, %112 ], [ %129, %221 ]
  %225 = phi i32 [ %107, %112 ], [ %44, %221 ]
  %226 = phi i32 [ -11, %112 ], [ %45, %221 ]
  %227 = phi i32 [ %46, %112 ], [ %130, %221 ]
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %232, label %42

229:                                              ; preds = %54
  %230 = extractvalue { i32, i32 } %55, 0
  %231 = sub i32 0, %230
  br label %232

232:                                              ; preds = %229, %223, %222, %220, %125, %116, %62, %58, %49
  %233 = phi i32 [ %45, %220 ], [ %118, %116 ], [ %45, %222 ], [ %45, %125 ], [ %231, %229 ], [ %226, %223 ], [ %45, %49 ], [ 0, %58 ], [ -11, %62 ]
  %234 = phi i32 [ %129, %220 ], [ %43, %116 ], [ %129, %222 ], [ %127, %125 ], [ %43, %229 ], [ %224, %223 ], [ %43, %49 ], [ %43, %58 ], [ %43, %62 ]
  call void @release_sock(ptr noundef %7) #7
  %235 = icmp eq i32 %234, 0
  %236 = select i1 %235, i32 %233, i32 %234
  br label %237

237:                                              ; preds = %232, %4
  %238 = phi i32 [ %236, %232 ], [ -95, %4 ]
  ret i32 %238
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bt_sock_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 17
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %2, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 4
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %7, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void %10(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %2) #7
  br label %15

15:                                               ; preds = %14, %9, %3
  %16 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %17 = load volatile i8, ptr %16, align 2
  %18 = icmp eq i8 %17, 4
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bt_sock, ptr %5, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 -520
  %23 = icmp eq ptr %22, %5
  br i1 %23, label %106, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.bt_sock, ptr %5, i32 0, i32 3
  br label %26

26:                                               ; preds = %39, %24
  %27 = phi ptr [ %21, %24 ], [ %28, %39 ]
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr i8, ptr %27, i32 -502
  %30 = load volatile i8, ptr %29, align 2
  %31 = icmp eq i8 %30, 1
  br i1 %31, label %106, label %32

32:                                               ; preds = %26
  %33 = load volatile i32, ptr %25, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load volatile i8, ptr %29, align 2
  %38 = icmp eq i8 %37, 6
  br i1 %38, label %106, label %39

39:                                               ; preds = %36, %32
  %40 = getelementptr i8, ptr %28, i32 -520
  %41 = icmp eq ptr %40, %5
  br i1 %41, label %106, label %26

42:                                               ; preds = %15
  %43 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 51
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 7
  %48 = load volatile ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %47
  br i1 %49, label %56, label %50

50:                                               ; preds = %46, %42
  %51 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 13
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %52, 4194304
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 8, i32 10
  br label %56

56:                                               ; preds = %50, %46
  %57 = phi i32 [ %55, %50 ], [ 0, %46 ]
  %58 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 66
  %59 = load i8, ptr %58, align 2
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  %62 = or i32 %57, 8257
  %63 = select i1 %61, i32 %57, i32 %62
  %64 = icmp eq i8 %59, 3
  %65 = or i32 %63, 16
  %66 = select i1 %64, i32 %65, i32 %63
  %67 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 8
  %68 = load volatile ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %67
  %70 = or i32 %66, 65
  %71 = select i1 %69, i32 %66, i32 %70
  %72 = load volatile i8, ptr %16, align 2
  %73 = icmp eq i8 %72, 9
  %74 = or i32 %71, 16
  %75 = select i1 %73, i32 %74, i32 %71
  %76 = load volatile i8, ptr %16, align 2
  %77 = icmp eq i8 %76, 5
  br i1 %77, label %106, label %78

78:                                               ; preds = %56
  %79 = load volatile i8, ptr %16, align 2
  %80 = icmp eq i8 %79, 6
  br i1 %80, label %106, label %81

81:                                               ; preds = %78
  %82 = load volatile i8, ptr %16, align 2
  %83 = icmp eq i8 %82, 7
  br i1 %83, label %106, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.bt_sock, ptr %5, i32 0, i32 3
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %86, 2
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 23
  %91 = load volatile i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 21
  %93 = load volatile i32, ptr %92, align 8
  %94 = ashr i32 %93, 1
  %95 = icmp ult i32 %91, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = or i32 %75, 772
  br label %106

98:                                               ; preds = %89, %84
  %99 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 13
  %100 = load volatile i32, ptr %99, align 4
  %101 = and i32 %100, 65536
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load ptr, ptr %6, align 4
  %105 = getelementptr inbounds %struct.socket_wq, ptr %104, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %105) #7
  br label %106

106:                                              ; preds = %103, %98, %96, %81, %78, %56, %39, %36, %26, %19
  %107 = phi i32 [ %75, %81 ], [ %75, %78 ], [ %75, %56 ], [ %97, %96 ], [ 0, %19 ], [ %75, %98 ], [ %75, %103 ], [ 65, %36 ], [ 65, %26 ], [ 0, %39 ]
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bt_sock_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  switch i32 %1, label %47 [
    i32 21521, label %6
    i32 21531, label %25
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %8 = load volatile i8, ptr %7, align 2
  %9 = icmp eq i8 %8, 4
  br i1 %9, label %47, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 21
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 23
  %14 = load volatile i32, ptr %13, align 4
  %15 = add i32 %12, 1
  %16 = sub i32 %15, %14
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 0)
  %18 = inttoptr i32 %2 to ptr
  %19 = tail call ptr @llvm.thread.pointer() #7
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #8, !srcloc !32
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #7, !srcloc !33
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !34
  %24 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %18, i32 %17, i32 -1090519041) #7, !srcloc !35
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #7, !srcloc !33
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !34
  br label %47

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %27 = load volatile i8, ptr %26, align 2
  %28 = icmp eq i8 %27, 4
  br i1 %28, label %47, label %29

29:                                               ; preds = %25
  tail call void @lock_sock_nested(ptr noundef %5, i32 noundef 0) #7
  %30 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  %33 = icmp eq ptr %31, null
  %34 = or i1 %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 5
  %37 = load i32, ptr %36, align 8
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi i32 [ %37, %35 ], [ 0, %29 ]
  tail call void @release_sock(ptr noundef %5) #7
  %40 = inttoptr i32 %2 to ptr
  %41 = tail call ptr @llvm.thread.pointer() #7
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %43 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %42) #8, !srcloc !32
  %44 = and i32 %43, -13
  %45 = or i32 %44, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #7, !srcloc !33
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !34
  %46 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %40, i32 %39, i32 -1090519041) #7, !srcloc !36
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #7, !srcloc !33
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !34
  br label %47

47:                                               ; preds = %38, %25, %10, %6, %3
  %48 = phi i32 [ -22, %6 ], [ -22, %25 ], [ %46, %38 ], [ %24, %10 ], [ -515, %3 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bt_sock_wait_state(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #7
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 1
  %6 = tail call ptr @llvm.thread.pointer() #7
  store i32 0, ptr %4, align 4
  store ptr %6, ptr %5, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 2
  store ptr @default_wake_function, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3, i32 1
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %11 = load volatile ptr, ptr %10, align 4
  call void @add_wait_queue(ptr noundef %11, ptr noundef nonnull %4) #7
  %12 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1
  store volatile i32 1, ptr %12, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !37
  %13 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  br label %15

15:                                               ; preds = %41, %3
  %16 = phi i32 [ %2, %3 ], [ %34, %41 ]
  %17 = load volatile i8, ptr %13, align 2
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %44, label %20

20:                                               ; preds = %15
  %21 = icmp eq i32 %16, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %20
  %23 = load volatile i32, ptr %6, align 4
  %24 = and i32 %23, 256
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30, !prof !11

26:                                               ; preds = %22
  %27 = load volatile i32, ptr %6, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26, %22
  %31 = icmp eq i32 %16, 2147483647
  %32 = select i1 %31, i32 -512, i32 -4
  br label %44

33:                                               ; preds = %26
  call void @release_sock(ptr noundef %0) #7
  %34 = call i32 @schedule_timeout(i32 noundef %16) #7
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #7
  store volatile i32 1, ptr %12, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !38
  %35 = load i32, ptr %14, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37, !prof !11

37:                                               ; preds = %33
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !27
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #7, !srcloc !18
  %38 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %14) #7, !srcloc !28
  %39 = extractvalue { i32, i32 } %38, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !29
  %40 = sub i32 0, %39
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i32 [ %40, %37 ], [ 0, %33 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %15, label %44

44:                                               ; preds = %41, %30, %20, %15
  %45 = phi i32 [ %32, %30 ], [ -115, %20 ], [ 0, %15 ], [ %42, %41 ]
  store volatile i32 0, ptr %12, align 8
  %46 = load volatile ptr, ptr %10, align 4
  call void @remove_wait_queue(ptr noundef %46, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #7
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bt_sock_wait_ready(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %5 = tail call ptr @llvm.thread.pointer() #7
  store i32 0, ptr %3, align 4
  store ptr %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  store ptr @default_wake_function, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  store ptr null, ptr %8, align 4
  %9 = and i32 %1, 2048
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 31
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %16 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %17 = load volatile ptr, ptr %16, align 4
  call void @add_wait_queue(ptr noundef %17, ptr noundef nonnull %3) #7
  %18 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  store volatile i32 1, ptr %18, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !39
  %19 = getelementptr inbounds %struct.bt_sock, ptr %0, i32 0, i32 3
  %20 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  br label %21

21:                                               ; preds = %47, %14
  %22 = phi i32 [ %15, %14 ], [ %40, %47 ]
  %23 = load volatile i32, ptr %19, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %50, label %26

26:                                               ; preds = %21
  %27 = icmp eq i32 %22, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %26
  %29 = load volatile i32, ptr %5, align 4
  %30 = and i32 %29, 256
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36, !prof !11

32:                                               ; preds = %28
  %33 = load volatile i32, ptr %5, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32, %28
  %37 = icmp eq i32 %22, 2147483647
  %38 = select i1 %37, i32 -512, i32 -4
  br label %50

39:                                               ; preds = %32
  call void @release_sock(ptr noundef %0) #7
  %40 = call i32 @schedule_timeout(i32 noundef %22) #7
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #7
  store volatile i32 1, ptr %18, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !40
  %41 = load i32, ptr %20, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43, !prof !11

43:                                               ; preds = %39
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !27
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #7, !srcloc !18
  %44 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %20) #7, !srcloc !28
  %45 = extractvalue { i32, i32 } %44, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !29
  %46 = sub i32 0, %45
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i32 [ %46, %43 ], [ 0, %39 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %21, label %50

50:                                               ; preds = %47, %36, %26, %21
  %51 = phi i32 [ %38, %36 ], [ -11, %26 ], [ 0, %21 ], [ %48, %47 ]
  store volatile i32 0, ptr %18, align 8
  %52 = load volatile ptr, ptr %16, align 4
  call void @remove_wait_queue(ptr noundef %52, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #7
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bt_procfs_init(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.bt_sock_list, ptr %2, i32 0, i32 2
  store ptr %3, ptr %5, align 4
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @proc_create_seq_private(ptr noundef %1, i16 noundef zeroext 0, ptr noundef %7, ptr noundef nonnull @bt_seq_ops, i32 noundef 0, ptr noundef %2) #7
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, i32 -12, i32 0
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bt_procfs_cleanup(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  tail call void @remove_proc_entry(ptr noundef %1, ptr noundef %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #7
  %1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.22, ptr noundef null) #7
  store ptr %1, ptr @bt_debugfs, align 4
  %2 = tail call i32 @bt_sysfs_init() #7
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %28, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @sock_register(ptr noundef nonnull @bt_sock_family_ops) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.23) #7
  %8 = tail call i32 @hci_sock_init() #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = tail call i32 @l2cap_init() #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = tail call i32 @sco_init() #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = tail call i32 @mgmt_init() #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  tail call void @sco_exit() #7
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi i32 [ %14, %13 ], [ %17, %19 ]
  tail call void @l2cap_exit() #7
  br label %22

22:                                               ; preds = %20, %10
  %23 = phi i32 [ %11, %10 ], [ %21, %20 ]
  tail call void @hci_sock_cleanup() #7
  br label %24

24:                                               ; preds = %22, %7
  %25 = phi i32 [ %8, %7 ], [ %23, %22 ]
  tail call void @sock_unregister(i32 noundef 31) #7
  br label %26

26:                                               ; preds = %24, %4
  %27 = phi i32 [ %5, %4 ], [ %25, %24 ]
  tail call void @bt_sysfs_cleanup() #7
  br label %28

28:                                               ; preds = %26, %16, %0
  %29 = phi i32 [ %27, %26 ], [ %2, %0 ], [ 0, %16 ]
  ret i32 %29
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @mgmt_exit() #7
  tail call void @sco_exit() #7
  tail call void @l2cap_exit() #7
  tail call void @hci_sock_cleanup() #7
  tail call void @sock_unregister(i32 noundef 31) #7
  tail call void @bt_sysfs_cleanup() #7
  %1 = load ptr, ptr @bt_debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_ts_and_drops(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sock_write_timestamp(ptr noundef %0, i64 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %4) #7
  %5 = load i32, ptr %3, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %3, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !41
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 63
  store i64 %1, ptr %7, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !42
  %8 = load i32, ptr %3, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %10 = load i16, ptr %4, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @bt_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bt_sock_list, ptr %8, i32 0, i32 1
  tail call void @_raw_read_lock(ptr noundef %9) #7
  %10 = load i64, ptr %1, align 8
  %11 = tail call ptr @seq_hlist_start_head(ptr noundef %8, i64 noundef %10) #7
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bt_seq_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bt_sock_list, ptr %8, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #7, !srcloc !18
  %10 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %9) #7, !srcloc !44
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  br label %14

14:                                               ; preds = %13, %2
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @bt_seq_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @seq_hlist_next(ptr noundef %1, ptr noundef %9, ptr noundef %2) #7
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bt_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.18) #7
  %11 = getelementptr inbounds %struct.bt_sock_list, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %41, label %14

14:                                               ; preds = %10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #7
  %15 = load ptr, ptr %11, align 4
  %16 = tail call i32 %15(ptr noundef %0, ptr noundef nonnull inttoptr (i32 1 to ptr)) #7
  br label %41

17:                                               ; preds = %2
  %18 = getelementptr i8, ptr %1, i32 -84
  %19 = getelementptr i8, ptr %1, i32 16
  %20 = load volatile i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %1, i32 100
  %22 = load volatile i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %1, i32 172
  %24 = load volatile i32, ptr %23, align 4
  %25 = add i32 %24, -1
  %26 = tail call i32 @sock_i_uid(ptr noundef %18) #7
  %27 = tail call i32 @sock_i_ino(ptr noundef %18) #7
  %28 = getelementptr i8, ptr %1, i32 444
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %17
  %32 = tail call i32 @sock_i_ino(ptr noundef nonnull %29) #7
  br label %33

33:                                               ; preds = %31, %17
  %34 = phi i32 [ %32, %31 ], [ 0, %17 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %34) #7
  %35 = getelementptr inbounds %struct.bt_sock_list, ptr %8, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #7
  %39 = load ptr, ptr %35, align 4
  %40 = tail call i32 %39(ptr noundef %0, ptr noundef %1) #7
  br label %41

41:                                               ; preds = %38, %33, %14, %10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_start_head(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sysfs_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_sock_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sco_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sco_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_sock_cleanup() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sysfs_cleanup() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bt_sock_create(ptr noundef readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = icmp eq ptr %0, @init_net
  br i1 %6, label %7, label %57

7:                                                ; preds = %4
  %8 = icmp ugt i32 %2, 7
  br i1 %8, label %57, label %9

9:                                                ; preds = %7
  %10 = getelementptr [8 x ptr], ptr @bt_proto, i32 0, i32 %2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.24, i32 noundef %2) #7
  br label %15

15:                                               ; preds = %13, %9
  tail call void @_raw_read_lock(ptr noundef nonnull @bt_proto_lock) #7
  %16 = load ptr, ptr %10, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %50, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.net_proto_family, ptr %16, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call zeroext i1 @try_module_get(ptr noundef %20) #7
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr inbounds %struct.net_proto_family, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef nonnull @init_net, ptr noundef %1, i32 noundef %2, i32 noundef %3) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %30 = load ptr, ptr %29, align 16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33, !prof !8

32:                                               ; preds = %28
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/bluetooth/af_bluetooth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.sock, ptr %30, i32 0, i32 4, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43, !prof !10

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.sock, ptr %30, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %39 = load volatile i32, ptr %38, align 4
  store volatile i32 %39, ptr %5, align 4
  %40 = lshr i32 %39, 16
  %41 = and i32 %39, 65535
  %42 = icmp eq i32 %41, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br i1 %42, label %44, label %43, !prof !11

43:                                               ; preds = %37, %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/bluetooth/af_bluetooth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 72, 0\0A.popsection", ""() #7, !srcloc !12
  unreachable

44:                                               ; preds = %37
  store i32 0, ptr %34, align 4
  %45 = getelementptr inbounds %struct.sock, ptr %30, i32 0, i32 4, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %45, ptr noundef nonnull @.str, ptr noundef nonnull @bt_sock_reclassify_lock.__key) #7
  store i32 0, ptr %38, align 4
  br label %46

46:                                               ; preds = %44, %22
  %47 = load ptr, ptr %10, align 4
  %48 = getelementptr inbounds %struct.net_proto_family, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  tail call void @module_put(ptr noundef %49) #7
  br label %50

50:                                               ; preds = %46, %18, %15
  %51 = phi i32 [ %26, %46 ], [ -93, %18 ], [ -93, %15 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @bt_proto_lock) #7, !srcloc !18
  %52 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @bt_proto_lock) #7, !srcloc !44
  %53 = extractvalue { i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  br label %56

56:                                               ; preds = %55, %50
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  br label %57

57:                                               ; preds = %56, %7, %4
  %58 = phi i32 [ %51, %56 ], [ -97, %4 ], [ -22, %7 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

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
!9 = !{i64 2155383997, i64 2155384489, i64 2155384034, i64 2155384090, i64 2155384124, i64 2155384148, i64 2155384189, i64 2155384210, i64 2155384238, i64 2155384272}
!10 = !{!"branch_weights", i32 2146410443, i32 1073205}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2155385077, i64 2155385569, i64 2155385114, i64 2155385170, i64 2155385204, i64 2155385228, i64 2155385269, i64 2155385290, i64 2155385318, i64 2155385352}
!13 = !{i64 2148948531}
!14 = !{i64 1451745}
!15 = !{i64 2148937278}
!16 = !{i64 2148937353, i64 2148937380, i64 2148937427, i64 2148937449, i64 2148937477, i64 2148937497}
!17 = !{i64 2148986500}
!18 = !{i64 557313, i64 2148047284, i64 2148047310, i64 2148047357, i64 2148047379, i64 2148047407, i64 2148047427}
!19 = !{i64 2148060157, i64 2148060189, i64 2148060218, i64 2148060252, i64 2148060283, i64 2148060306}
!20 = !{i64 2148160379}
!21 = !{i64 2148062514, i64 2148062546, i64 2148062575, i64 2148062609, i64 2148062640, i64 2148062663}
!22 = !{i64 2148941454}
!23 = !{i64 2148964457}
!24 = !{i64 2149009442}
!25 = !{i64 2155257475}
!26 = !{!"auto-init"}
!27 = !{i64 2155309050}
!28 = !{i64 565963, i64 565980, i64 566004, i64 566030, i64 566048}
!29 = !{i64 2155309367}
!30 = !{i64 2155415161}
!31 = !{i64 2153805344, i64 2153805832, i64 2153805381, i64 2153805437, i64 2153805471, i64 2153805495, i64 2153805536, i64 2153805557, i64 2153805585, i64 2153805619}
!32 = !{i64 3752390}
!33 = !{i64 3752587}
!34 = !{i64 2151237866}
!35 = !{i64 2155435090, i64 2155435370, i64 2155435704, i64 2155436038}
!36 = !{i64 2155443322, i64 2155443602, i64 2155443936, i64 2155444270}
!37 = !{i64 2155454884}
!38 = !{i64 2155457748}
!39 = !{i64 2155465142}
!40 = !{i64 2155468026}
!41 = !{i64 2149397329}
!42 = !{i64 2149397630}
!43 = !{i64 2148949336}
!44 = !{i64 1452760, i64 1452783, i64 1452803, i64 1452827, i64 1452843}
!45 = !{i64 2148986939}
