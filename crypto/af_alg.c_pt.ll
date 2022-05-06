; ModuleID = '/llk/IR/crypto/af_alg.c_pt.bc'
source_filename = "../crypto/af_alg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_af_alg_register_type:\09\09\09\09\09"
module asm "\09.asciz \09\22af_alg_register_type\22\09\09\09\09\09"
module asm "__kstrtabns_af_alg_register_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_af_alg_unregister_type:\09\09\09\09\09"
module asm "\09.asciz \09\22af_alg_unregister_type\22\09\09\09\09\09"
module asm "__kstrtabns_af_alg_unregister_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_af_alg_release:\09\09\09\09\09"
module asm "\09.asciz \09\22af_alg_release\22\09\09\09\09\09"
module asm "__kstrtabns_af_alg_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_af_alg_release_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22af_alg_release_parent\22\09\09\09\09\09"
module asm "__kstrtabns_af_alg_release_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_af_alg_accept:\09\09\09\09\09"
module asm "\09.asciz \09\22af_alg_accept\22\09\09\09\09\09"
module asm "__kstrtabns_af_alg_accept:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_af_alg_make_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22af_alg_make_sg\22\09\09\09\09\09"
module asm "__kstrtabns_af_alg_make_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_af_alg_free_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22af_alg_free_sg\22\09\09\09\09\09"
module asm "__kstrtabns_af_alg_free_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_af_alg_count_tsgl:\09\09\09\09\09"
module asm "\09.asciz \09\22af_alg_count_tsgl\22\09\09\09\09\09"
module asm "__kstrtabns_af_alg_count_tsgl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_af_alg_pull_tsgl:\09\09\09\09\09"
module asm "\09.asciz \09\22af_alg_pull_tsgl\22\09\09\09\09\09"
module asm "__kstrtabns_af_alg_pull_tsgl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_af_alg_wmem_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22af_alg_wmem_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_af_alg_wmem_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_af_alg_wait_for_data:\09\09\09\09\09"
module asm "\09.asciz \09\22af_alg_wait_for_data\22\09\09\09\09\09"
module asm "__kstrtabns_af_alg_wait_for_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_af_alg_sendmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22af_alg_sendmsg\22\09\09\09\09\09"
module asm "__kstrtabns_af_alg_sendmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_af_alg_sendpage:\09\09\09\09\09"
module asm "\09.asciz \09\22af_alg_sendpage\22\09\09\09\09\09"
module asm "__kstrtabns_af_alg_sendpage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_af_alg_free_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22af_alg_free_resources\22\09\09\09\09\09"
module asm "__kstrtabns_af_alg_free_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_af_alg_async_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22af_alg_async_cb\22\09\09\09\09\09"
module asm "__kstrtabns_af_alg_async_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_af_alg_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22af_alg_poll\22\09\09\09\09\09"
module asm "__kstrtabns_af_alg_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_af_alg_alloc_areq:\09\09\09\09\09"
module asm "\09.asciz \09\22af_alg_alloc_areq\22\09\09\09\09\09"
module asm "__kstrtabns_af_alg_alloc_areq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_af_alg_get_rsgl:\09\09\09\09\09"
module asm "\09.asciz \09\22af_alg_get_rsgl\22\09\09\09\09\09"
module asm "__kstrtabns_af_alg_get_rsgl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.122, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.122 = type { ptr }
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
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.87 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.af_alg_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [14 x i8] }
%struct.alg_type_list = type { ptr, %struct.list_head }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
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
%struct.alg_sock = type { %struct.sock, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.127, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.128, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.129, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
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
%struct.netns_tracker = type {}
%struct.af_alg_sgl = type { [17 x %struct.scatterlist], [16 x ptr], i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.5, %union.anon.118, %struct.atomic_t }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.118 = type { %struct.atomic_t }
%struct.af_alg_tsgl = type { %struct.list_head, i32, [0 x %struct.scatterlist] }
%struct.af_alg_ctx = type { %struct.list_head, ptr, i32, %struct.crypto_wait, i32, %struct.atomic_t, i8, i8, i8, i8, i32 }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.121, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.119 }
%union.anon.4 = type { ptr }
%union.anon.119 = type { i64 }
%union.anon.121 = type { ptr }
%struct.cmsghdr = type { i32, i32, i32 }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.102 = type { %struct.callback_head }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.af_alg_iv = type { i32, [0 x i8] }
%struct.af_alg_async_req = type { ptr, ptr, %struct.af_alg_rsgl, ptr, %struct.list_head, ptr, i32, i32, i32, [56 x i8], %union.anon.135 }
%struct.af_alg_rsgl = type { %struct.af_alg_sgl, %struct.list_head, i32 }
%union.anon.135 = type { %struct.aead_request }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [20 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.sockaddr_alg_new = type { i16, [14 x i8], i32, i32, [0 x i8] }

@alg_types_sem = internal global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @alg_types_sem, i64 16), ptr getelementptr (i8, ptr @alg_types_sem, i64 16) } }, align 4
@alg_types = internal global %struct.list_head { ptr @alg_types, ptr @alg_types }, align 4
@__this_module = external dso_local global %struct.module, align 64
@__kstrtab_af_alg_register_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_af_alg_register_type = external dso_local constant [0 x i8], align 1
@__ksymtab_af_alg_register_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @af_alg_register_type to i32), ptr @__kstrtab_af_alg_register_type, ptr @__kstrtabns_af_alg_register_type }, section "___ksymtab_gpl+af_alg_register_type", align 4
@__kstrtab_af_alg_unregister_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_af_alg_unregister_type = external dso_local constant [0 x i8], align 1
@__ksymtab_af_alg_unregister_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @af_alg_unregister_type to i32), ptr @__kstrtab_af_alg_unregister_type, ptr @__kstrtabns_af_alg_unregister_type }, section "___ksymtab_gpl+af_alg_unregister_type", align 4
@__kstrtab_af_alg_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_af_alg_release = external dso_local constant [0 x i8], align 1
@__ksymtab_af_alg_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @af_alg_release to i32), ptr @__kstrtab_af_alg_release, ptr @__kstrtabns_af_alg_release }, section "___ksymtab_gpl+af_alg_release", align 4
@__kstrtab_af_alg_release_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_af_alg_release_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_af_alg_release_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @af_alg_release_parent to i32), ptr @__kstrtab_af_alg_release_parent, ptr @__kstrtabns_af_alg_release_parent }, section "___ksymtab_gpl+af_alg_release_parent", align 4
@alg_proto = internal global %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 544, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.122 zeroinitializer, ptr @__this_module, [32 x i8] c"ALG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, align 4
@__kstrtab_af_alg_accept = external dso_local constant [0 x i8], align 1
@__kstrtabns_af_alg_accept = external dso_local constant [0 x i8], align 1
@__ksymtab_af_alg_accept = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @af_alg_accept to i32), ptr @__kstrtab_af_alg_accept, ptr @__kstrtabns_af_alg_accept }, section "___ksymtab_gpl+af_alg_accept", align 4
@.str = private unnamed_addr constant [16 x i8] c"crypto/af_alg.c\00", align 1
@__kstrtab_af_alg_make_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_af_alg_make_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_af_alg_make_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @af_alg_make_sg to i32), ptr @__kstrtab_af_alg_make_sg, ptr @__kstrtabns_af_alg_make_sg }, section "___ksymtab_gpl+af_alg_make_sg", align 4
@__kstrtab_af_alg_free_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_af_alg_free_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_af_alg_free_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @af_alg_free_sg to i32), ptr @__kstrtab_af_alg_free_sg, ptr @__kstrtabns_af_alg_free_sg }, section "___ksymtab_gpl+af_alg_free_sg", align 4
@__kstrtab_af_alg_count_tsgl = external dso_local constant [0 x i8], align 1
@__kstrtabns_af_alg_count_tsgl = external dso_local constant [0 x i8], align 1
@__ksymtab_af_alg_count_tsgl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @af_alg_count_tsgl to i32), ptr @__kstrtab_af_alg_count_tsgl, ptr @__kstrtabns_af_alg_count_tsgl }, section "___ksymtab_gpl+af_alg_count_tsgl", align 4
@__kstrtab_af_alg_pull_tsgl = external dso_local constant [0 x i8], align 1
@__kstrtabns_af_alg_pull_tsgl = external dso_local constant [0 x i8], align 1
@__ksymtab_af_alg_pull_tsgl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @af_alg_pull_tsgl to i32), ptr @__kstrtab_af_alg_pull_tsgl, ptr @__kstrtabns_af_alg_pull_tsgl }, section "___ksymtab_gpl+af_alg_pull_tsgl", align 4
@__kstrtab_af_alg_wmem_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_af_alg_wmem_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_af_alg_wmem_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @af_alg_wmem_wakeup to i32), ptr @__kstrtab_af_alg_wmem_wakeup, ptr @__kstrtabns_af_alg_wmem_wakeup }, section "___ksymtab_gpl+af_alg_wmem_wakeup", align 4
@__kstrtab_af_alg_wait_for_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_af_alg_wait_for_data = external dso_local constant [0 x i8], align 1
@__ksymtab_af_alg_wait_for_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @af_alg_wait_for_data to i32), ptr @__kstrtab_af_alg_wait_for_data, ptr @__kstrtabns_af_alg_wait_for_data }, section "___ksymtab_gpl+af_alg_wait_for_data", align 4
@af_alg_sendmsg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"\016%s sent an empty control message without MSG_MORE.\0A\00", align 1
@__kstrtab_af_alg_sendmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_af_alg_sendmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_af_alg_sendmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @af_alg_sendmsg to i32), ptr @__kstrtab_af_alg_sendmsg, ptr @__kstrtabns_af_alg_sendmsg }, section "___ksymtab_gpl+af_alg_sendmsg", align 4
@__kstrtab_af_alg_sendpage = external dso_local constant [0 x i8], align 1
@__kstrtabns_af_alg_sendpage = external dso_local constant [0 x i8], align 1
@__ksymtab_af_alg_sendpage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @af_alg_sendpage to i32), ptr @__kstrtab_af_alg_sendpage, ptr @__kstrtabns_af_alg_sendpage }, section "___ksymtab_gpl+af_alg_sendpage", align 4
@__kstrtab_af_alg_free_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_af_alg_free_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_af_alg_free_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @af_alg_free_resources to i32), ptr @__kstrtab_af_alg_free_resources, ptr @__kstrtabns_af_alg_free_resources }, section "___ksymtab_gpl+af_alg_free_resources", align 4
@__kstrtab_af_alg_async_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_af_alg_async_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_af_alg_async_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @af_alg_async_cb to i32), ptr @__kstrtab_af_alg_async_cb, ptr @__kstrtabns_af_alg_async_cb }, section "___ksymtab_gpl+af_alg_async_cb", align 4
@__kstrtab_af_alg_poll = external dso_local constant [0 x i8], align 1
@__kstrtabns_af_alg_poll = external dso_local constant [0 x i8], align 1
@__ksymtab_af_alg_poll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @af_alg_poll to i32), ptr @__kstrtab_af_alg_poll, ptr @__kstrtabns_af_alg_poll }, section "___ksymtab_gpl+af_alg_poll", align 4
@__kstrtab_af_alg_alloc_areq = external dso_local constant [0 x i8], align 1
@__kstrtabns_af_alg_alloc_areq = external dso_local constant [0 x i8], align 1
@__ksymtab_af_alg_alloc_areq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @af_alg_alloc_areq to i32), ptr @__kstrtab_af_alg_alloc_areq, ptr @__kstrtabns_af_alg_alloc_areq }, section "___ksymtab_gpl+af_alg_alloc_areq", align 4
@__kstrtab_af_alg_get_rsgl = external dso_local constant [0 x i8], align 1
@__kstrtabns_af_alg_get_rsgl = external dso_local constant [0 x i8], align 1
@__ksymtab_af_alg_get_rsgl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @af_alg_get_rsgl to i32), ptr @__kstrtab_af_alg_get_rsgl, ptr @__kstrtabns_af_alg_get_rsgl }, section "___ksymtab_gpl+af_alg_get_rsgl", align 4
@__UNIQUE_ID_license444 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias445 = internal constant [16 x i8] c"alias=net-pf-38\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_net = external dso_local global %struct.net, align 64
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@alg_family = internal constant %struct.net_proto_family { i32 38, ptr @alg_create, ptr @__this_module }, align 4
@alg_proto_ops = internal constant %struct.proto_ops { i32 38, ptr @__this_module, ptr @af_alg_release, ptr @alg_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @alg_accept, ptr @sock_no_getname, ptr null, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @alg_setsockopt, ptr null, ptr null, ptr @sock_no_sendmsg, ptr @sock_no_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"algif-%s\00", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_alias445, ptr @__UNIQUE_ID_license444, ptr @__ksymtab_af_alg_accept, ptr @__ksymtab_af_alg_alloc_areq, ptr @__ksymtab_af_alg_async_cb, ptr @__ksymtab_af_alg_count_tsgl, ptr @__ksymtab_af_alg_free_resources, ptr @__ksymtab_af_alg_free_sg, ptr @__ksymtab_af_alg_get_rsgl, ptr @__ksymtab_af_alg_make_sg, ptr @__ksymtab_af_alg_poll, ptr @__ksymtab_af_alg_pull_tsgl, ptr @__ksymtab_af_alg_register_type, ptr @__ksymtab_af_alg_release, ptr @__ksymtab_af_alg_release_parent, ptr @__ksymtab_af_alg_sendmsg, ptr @__ksymtab_af_alg_sendpage, ptr @__ksymtab_af_alg_unregister_type, ptr @__ksymtab_af_alg_wait_for_data, ptr @__ksymtab_af_alg_wmem_wakeup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @af_alg_register_type(ptr noundef %0) #0 {
  tail call void @down_write(ptr noundef nonnull @alg_types_sem) #12
  %2 = getelementptr inbounds %struct.af_alg_type, ptr %0, i32 0, i32 10
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ @alg_types, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @alg_types
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.af_alg_type, ptr %9, i32 0, i32 10
  %11 = tail call i32 @strcmp(ptr noundef %10, ptr noundef %2)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %31, label %3

13:                                               ; preds = %3
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 12) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.af_alg_type, ptr %0, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.proto_ops, ptr %19, i32 0, i32 1
  store ptr @__this_module, ptr %20, align 4
  %21 = getelementptr inbounds %struct.af_alg_type, ptr %0, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.proto_ops, ptr %22, i32 0, i32 1
  store ptr @__this_module, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %17
  store ptr %0, ptr %15, align 8
  %27 = getelementptr inbounds %struct.alg_type_list, ptr %15, i32 0, i32 1
  %28 = load ptr, ptr @alg_types, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store ptr %28, ptr %27, align 4
  %30 = getelementptr inbounds %struct.alg_type_list, ptr %15, i32 0, i32 1, i32 1
  store ptr @alg_types, ptr %30, align 8
  store volatile ptr %27, ptr @alg_types, align 4
  br label %31

31:                                               ; preds = %26, %13, %7
  %32 = phi i32 [ 0, %26 ], [ -12, %13 ], [ -17, %7 ]
  tail call void @up_write(ptr noundef nonnull @alg_types_sem) #12
  ret i32 %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @af_alg_unregister_type(ptr nocapture noundef readonly %0) #0 {
  tail call void @down_write(ptr noundef nonnull @alg_types_sem) #12
  %2 = getelementptr inbounds %struct.af_alg_type, ptr %0, i32 0, i32 10
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ @alg_types, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @alg_types
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.af_alg_type, ptr %9, i32 0, i32 10
  %11 = tail call i32 @strcmp(ptr noundef %10, ptr noundef %2)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %3

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %5, i32 -4
  %15 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  tail call void @kfree(ptr noundef %14) #12
  br label %19

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %13 ], [ -2, %3 ]
  tail call void @up_write(ptr noundef nonnull @alg_types_sem) #12
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @af_alg_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #12, !srcloc !9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #12, !srcloc !10
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %14, label %12, !prof !11

12:                                               ; preds = %10
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #12
  br label %14

13:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void @sk_free(ptr noundef nonnull %3) #12
  br label %14

14:                                               ; preds = %13, %12, %10
  store ptr null, ptr %2, align 16
  br label %15

15:                                               ; preds = %14, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @af_alg_release_parent(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 3
  %3 = load volatile i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.alg_sock, ptr %5, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #12, !srcloc !9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #12, !srcloc !13
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.alg_sock, ptr %5, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #12, !srcloc !9
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #12, !srcloc !15
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #12, !srcloc !9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #12, !srcloc !10
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = icmp sgt i32 %18, 0
  br i1 %21, label %24, label %22, !prof !11

22:                                               ; preds = %20
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef 3) #12
  br label %24

23:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void @sk_free(ptr noundef %5) #12
  br label %24

24:                                               ; preds = %23, %22, %20, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @af_alg_accept(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #12
  %4 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %59, label %7

7:                                                ; preds = %3
  %8 = zext i1 %2 to i32
  %9 = tail call ptr @sk_alloc(ptr noundef nonnull @init_net, i32 noundef 38, i32 noundef 3264, ptr noundef nonnull @alg_proto, i32 noundef %8) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %59, label %11

11:                                               ; preds = %7
  tail call void @sock_init_data(ptr noundef %1, ptr noundef nonnull %9) #12
  %12 = getelementptr inbounds %struct.af_alg_type, ptr %5, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 5
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.af_alg_type, ptr %5, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 %16(ptr noundef %18, ptr noundef nonnull %9) #12
  %20 = icmp eq i32 %19, -126
  br i1 %20, label %21, label %28

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.af_alg_type, ptr %5, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %59, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %17, align 8
  %27 = tail call i32 %23(ptr noundef %26, ptr noundef nonnull %9) #12
  br label %28

28:                                               ; preds = %25, %11
  %29 = phi i32 [ %27, %25 ], [ %19, %11 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #12, !srcloc !9
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #12, !srcloc !17
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #12, !srcloc !9
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #12, !srcloc !18
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41, !prof !19

41:                                               ; preds = %36
  %42 = add i32 %39, 1
  %43 = or i32 %42, %39
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %47, label %45, !prof !11

45:                                               ; preds = %41, %36
  %46 = phi i32 [ 2, %36 ], [ 1, %41 ]
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef %46) #12
  br label %47

47:                                               ; preds = %45, %41, %31
  br i1 %20, label %48, label %56

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #12, !srcloc !9
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #12, !srcloc !20
  %51 = getelementptr inbounds %struct.alg_sock, ptr %9, i32 0, i32 3
  store volatile i32 1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.alg_sock, ptr %9, i32 0, i32 1
  store ptr %0, ptr %52, align 8
  %53 = getelementptr inbounds %struct.alg_sock, ptr %9, i32 0, i32 4
  store ptr %5, ptr %53, align 4
  store i32 3, ptr %1, align 64
  %54 = getelementptr inbounds %struct.af_alg_type, ptr %5, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  store ptr %55, ptr %14, align 4
  br label %59

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.alg_sock, ptr %9, i32 0, i32 1
  store ptr %0, ptr %57, align 8
  %58 = getelementptr inbounds %struct.alg_sock, ptr %9, i32 0, i32 4
  store ptr %5, ptr %58, align 4
  store i32 3, ptr %1, align 64
  br label %59

59:                                               ; preds = %56, %48, %28, %21, %7, %3
  %60 = phi i32 [ %29, %28 ], [ -12, %7 ], [ -22, %3 ], [ 0, %56 ], [ 0, %48 ], [ -126, %21 ]
  tail call void @release_sock(ptr noundef %0) #12
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @af_alg_make_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !21
  %5 = getelementptr %struct.af_alg_sgl, ptr %0, i32 0, i32 1
  %6 = call i32 @iov_iter_get_pages(ptr noundef %1, ptr noundef %5, i32 noundef %2, i32 noundef 16, ptr noundef nonnull %4) #12
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %61, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 4
  %10 = add nuw i32 %6, 4095
  %11 = add i32 %10, %9
  %12 = lshr i32 %11, 12
  %13 = icmp ult i32 %11, 4096
  br i1 %13, label %14, label %15, !prof !19

14:                                               ; preds = %8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 412, i32 noundef 9, ptr noundef null) #12
  br label %61

15:                                               ; preds = %8
  %16 = add nuw nsw i32 %12, 1
  call void @sg_init_table(ptr noundef %0, i32 noundef %16) #12
  %17 = call i32 @llvm.umax.i32(i32 %12, i32 1)
  %18 = load ptr, ptr %5, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = and i32 %19, 3
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %42, !prof !11

22:                                               ; preds = %15
  %23 = load i32, ptr %4, align 4
  %24 = sub i32 4096, %23
  %25 = call i32 @llvm.smin.i32(i32 %6, i32 %24)
  %26 = load i32, ptr %0, align 4
  %27 = and i32 %26, 3
  %28 = or i32 %27, %19
  store i32 %28, ptr %0, align 4
  %29 = getelementptr %struct.scatterlist, ptr %0, i32 0, i32 1
  store i32 %23, ptr %29, align 4
  %30 = getelementptr %struct.scatterlist, ptr %0, i32 0, i32 2
  store i32 %25, ptr %30, align 4
  store i32 0, ptr %4, align 4
  %31 = icmp ult i32 %11, 8192
  br i1 %31, label %54, label %32

32:                                               ; preds = %22
  %33 = sub i32 %6, %25
  br label %34

34:                                               ; preds = %43, %32
  %35 = phi i32 [ %51, %43 ], [ %33, %32 ]
  %36 = phi i32 [ %52, %43 ], [ 1, %32 ]
  %37 = getelementptr %struct.af_alg_sgl, ptr %0, i32 0, i32 1, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = and i32 %39, 3
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42, !prof !11

42:                                               ; preds = %34, %15
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

43:                                               ; preds = %34
  %44 = getelementptr %struct.scatterlist, ptr %0, i32 %36
  %45 = call i32 @llvm.smin.i32(i32 %35, i32 4096)
  %46 = load i32, ptr %44, align 4
  %47 = and i32 %46, 3
  %48 = or i32 %47, %39
  store i32 %48, ptr %44, align 4
  %49 = getelementptr %struct.scatterlist, ptr %0, i32 %36, i32 1
  store i32 0, ptr %49, align 4
  %50 = getelementptr %struct.scatterlist, ptr %0, i32 %36, i32 2
  store i32 %45, ptr %50, align 4
  store i32 0, ptr %4, align 4
  %51 = sub i32 %35, %45
  %52 = add nuw nsw i32 %36, 1
  %53 = icmp eq i32 %52, %17
  br i1 %53, label %54, label %34, !llvm.loop !23

54:                                               ; preds = %43, %22
  %55 = getelementptr %struct.scatterlist, ptr %0, i32 %12
  %56 = getelementptr %struct.scatterlist, ptr %55, i32 -1
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, -4
  %59 = or i32 %58, 2
  store i32 %59, ptr %56, align 4
  %60 = getelementptr inbounds %struct.af_alg_sgl, ptr %0, i32 0, i32 2
  store i32 %12, ptr %60, align 4
  br label %61

61:                                               ; preds = %54, %14, %3
  %62 = phi i32 [ -22, %14 ], [ %6, %54 ], [ %6, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_get_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @af_alg_free_sg(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.af_alg_sgl, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %25, %1
  %6 = phi i32 [ %26, %25 ], [ 0, %1 ]
  %7 = getelementptr %struct.af_alg_sgl, ptr %0, i32 0, i32 1, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !11

13:                                               ; preds = %5
  %14 = add i32 %10, -1
  br label %17

15:                                               ; preds = %5
  %16 = ptrtoint ptr %8 to i32
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #12, !srcloc !9
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #12, !srcloc !15
  %22 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  tail call void @__put_page(ptr noundef %19) #12
  br label %25

25:                                               ; preds = %24, %17
  %26 = add nuw i32 %6, 1
  %27 = load i32, ptr %2, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %5, label %29

29:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @af_alg_count_tsgl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %46, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %46, label %16

10:                                               ; preds = %39, %16
  %11 = phi i32 [ %20, %16 ], [ %40, %39 ]
  %12 = phi i32 [ %19, %16 ], [ %41, %39 ]
  %13 = phi i32 [ %18, %16 ], [ %43, %39 ]
  %14 = load ptr, ptr %17, align 4
  %15 = icmp eq ptr %14, %5
  br i1 %15, label %46, label %16

16:                                               ; preds = %10, %7
  %17 = phi ptr [ %14, %10 ], [ %8, %7 ]
  %18 = phi i32 [ %13, %10 ], [ %1, %7 ]
  %19 = phi i32 [ %12, %10 ], [ %2, %7 ]
  %20 = phi i32 [ %11, %10 ], [ 0, %7 ]
  %21 = getelementptr inbounds %struct.af_alg_tsgl, ptr %17, i32 0, i32 2
  %22 = getelementptr inbounds %struct.af_alg_tsgl, ptr %17, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %10, label %25

25:                                               ; preds = %39, %16
  %26 = phi i32 [ %43, %39 ], [ %18, %16 ]
  %27 = phi i32 [ %41, %39 ], [ %19, %16 ]
  %28 = phi i32 [ %40, %39 ], [ %20, %16 ]
  %29 = phi i32 [ %44, %39 ], [ 0, %16 ]
  %30 = getelementptr %struct.scatterlist, ptr %21, i32 %29, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %35, label %33

33:                                               ; preds = %25
  %34 = sub i32 %27, %31
  br label %39

35:                                               ; preds = %25
  %36 = sub i32 %31, %27
  %37 = add i32 %28, 1
  %38 = icmp ugt i32 %26, %36
  br i1 %38, label %39, label %46

39:                                               ; preds = %35, %33
  %40 = phi i32 [ %28, %33 ], [ %37, %35 ]
  %41 = phi i32 [ %34, %33 ], [ 0, %35 ]
  %42 = phi i32 [ %31, %33 ], [ %36, %35 ]
  %43 = sub i32 %26, %42
  %44 = add nuw i32 %29, 1
  %45 = icmp eq i32 %44, %23
  br i1 %45, label %10, label %25

46:                                               ; preds = %35, %10, %7, %3
  %47 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %37, %35 ], [ %11, %10 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @af_alg_pull_tsgl(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %113, label %9

9:                                                ; preds = %4
  %10 = icmp eq ptr %2, null
  %11 = getelementptr inbounds %struct.af_alg_ctx, ptr %6, i32 0, i32 4
  br label %12

12:                                               ; preds = %103, %9
  %13 = phi ptr [ %7, %9 ], [ %111, %103 ]
  %14 = phi i32 [ %1, %9 ], [ %106, %103 ]
  %15 = phi i32 [ %3, %9 ], [ %105, %103 ]
  %16 = phi i32 [ 0, %9 ], [ %104, %103 ]
  %17 = getelementptr inbounds %struct.af_alg_tsgl, ptr %13, i32 0, i32 2
  %18 = getelementptr inbounds %struct.af_alg_tsgl, ptr %13, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %103, label %21

21:                                               ; preds = %96, %12
  %22 = phi i32 [ %97, %96 ], [ %19, %12 ]
  %23 = phi i32 [ %100, %96 ], [ %14, %12 ]
  %24 = phi i32 [ %99, %96 ], [ %15, %12 ]
  %25 = phi i32 [ %98, %96 ], [ %16, %12 ]
  %26 = phi i32 [ %101, %96 ], [ 0, %12 ]
  %27 = getelementptr %struct.scatterlist, ptr %17, i32 %26
  %28 = getelementptr %struct.scatterlist, ptr %17, i32 %26, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %23, i32 %29)
  %31 = load i32, ptr %27, align 4
  %32 = and i32 %31, -4
  %33 = inttoptr i32 %32 to ptr
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %96, label %35

35:                                               ; preds = %21
  br i1 %10, label %64, label %36

36:                                               ; preds = %35
  %37 = icmp ult i32 %24, %30
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = sub i32 %24, %30
  br label %64

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 1
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45, !prof !11

45:                                               ; preds = %40
  %46 = add i32 %42, -1
  %47 = inttoptr i32 %46 to ptr
  br label %48

48:                                               ; preds = %45, %40
  %49 = phi ptr [ %33, %40 ], [ %47, %45 ]
  %50 = getelementptr inbounds %struct.page, ptr %49, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #12, !srcloc !9
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #12, !srcloc !20
  %52 = getelementptr %struct.scatterlist, ptr %2, i32 %25
  %53 = sub i32 %30, %24
  %54 = getelementptr %struct.scatterlist, ptr %17, i32 %26, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, %24
  %57 = load i32, ptr %52, align 4
  %58 = and i32 %57, 3
  %59 = or i32 %58, %32
  store i32 %59, ptr %52, align 4
  %60 = getelementptr %struct.scatterlist, ptr %2, i32 %25, i32 1
  store i32 %56, ptr %60, align 4
  %61 = getelementptr %struct.scatterlist, ptr %2, i32 %25, i32 2
  store i32 %53, ptr %61, align 4
  %62 = add i32 %25, 1
  %63 = load i32, ptr %28, align 4
  br label %64

64:                                               ; preds = %48, %38, %35
  %65 = phi i32 [ %29, %38 ], [ %63, %48 ], [ %29, %35 ]
  %66 = phi i32 [ %25, %38 ], [ %62, %48 ], [ %25, %35 ]
  %67 = phi i32 [ %39, %38 ], [ 0, %48 ], [ %24, %35 ]
  %68 = sub i32 %65, %30
  store i32 %68, ptr %28, align 4
  %69 = getelementptr %struct.scatterlist, ptr %17, i32 %26, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, %30
  store i32 %71, ptr %69, align 4
  %72 = sub i32 %23, %30
  %73 = load i32, ptr %11, align 4
  %74 = sub i32 %73, %30
  store i32 %74, ptr %11, align 4
  %75 = load i32, ptr %28, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %123

77:                                               ; preds = %64
  %78 = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 1
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82, !prof !11

82:                                               ; preds = %77
  %83 = add i32 %79, -1
  %84 = inttoptr i32 %83 to ptr
  br label %85

85:                                               ; preds = %82, %77
  %86 = phi ptr [ %33, %77 ], [ %84, %82 ]
  %87 = getelementptr inbounds %struct.page, ptr %86, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #12, !srcloc !9
  %88 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %87, ptr %87, i32 1, ptr elementtype(i32) %87) #12, !srcloc !15
  %89 = extractvalue { i32, i32 } %88, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  tail call void @__put_page(ptr noundef %86) #12
  br label %92

92:                                               ; preds = %91, %85
  %93 = load i32, ptr %27, align 4
  %94 = and i32 %93, 3
  store i32 %94, ptr %27, align 4
  %95 = load i32, ptr %18, align 4
  br label %96

96:                                               ; preds = %92, %21
  %97 = phi i32 [ %22, %21 ], [ %95, %92 ]
  %98 = phi i32 [ %25, %21 ], [ %66, %92 ]
  %99 = phi i32 [ %24, %21 ], [ %67, %92 ]
  %100 = phi i32 [ %23, %21 ], [ %72, %92 ]
  %101 = add nuw i32 %26, 1
  %102 = icmp ult i32 %101, %97
  br i1 %102, label %21, label %103

103:                                              ; preds = %96, %12
  %104 = phi i32 [ %16, %12 ], [ %98, %96 ]
  %105 = phi i32 [ %15, %12 ], [ %99, %96 ]
  %106 = phi i32 [ %14, %12 ], [ %100, %96 ]
  %107 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = load ptr, ptr %13, align 4
  %110 = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  store ptr %108, ptr %110, align 4
  store volatile ptr %109, ptr %108, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %107, align 4
  tail call void @sock_kfree_s(ptr noundef %0, ptr noundef %13, i32 noundef 4092) #12
  %111 = load volatile ptr, ptr %6, align 4
  %112 = icmp eq ptr %111, %6
  br i1 %112, label %113, label %12

113:                                              ; preds = %103, %4
  %114 = getelementptr inbounds %struct.af_alg_ctx, ptr %6, i32 0, i32 4
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.af_alg_ctx, ptr %6, i32 0, i32 7
  store i8 0, ptr %118, align 1
  br label %119

119:                                              ; preds = %117, %113
  %120 = getelementptr inbounds %struct.af_alg_ctx, ptr %6, i32 0, i32 6
  %121 = load i8, ptr %120, align 4, !range !25
  %122 = getelementptr inbounds %struct.af_alg_ctx, ptr %6, i32 0, i32 9
  store i8 %121, ptr %122, align 1
  br label %123

123:                                              ; preds = %119, %64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_kfree_s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @af_alg_wmem_wakeup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, -4096
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 4096) #12
  %8 = getelementptr inbounds %struct.af_alg_ctx, ptr %3, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 0) #12
  %12 = icmp ugt i32 %11, 4095
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  %18 = getelementptr inbounds %struct.wait_queue_head, ptr %15, i32 0, i32 1
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @__wake_up_sync_key(ptr noundef nonnull %15, i32 noundef 1, ptr noundef nonnull inttoptr (i32 193 to ptr)) #12
  br label %22

22:                                               ; preds = %21, %17, %13
  %23 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 65536
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  %28 = load volatile ptr, ptr %14, align 4
  %29 = tail call i32 @sock_wake_async(ptr noundef %28, i32 noundef 1, i32 noundef 1) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  br label %30

30:                                               ; preds = %27, %22
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  br label %31

31:                                               ; preds = %30, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_sync_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @af_alg_wait_for_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 1
  %6 = tail call ptr @llvm.thread.pointer() #12
  store i32 0, ptr %4, align 4
  store ptr %6, ptr %5, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 2
  store ptr @woken_wake_function, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3
  store ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8
  %12 = and i32 %1, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %73

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 65536
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.socket_wq, ptr %21, i32 0, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %22) #12
  br label %23

23:                                               ; preds = %19, %14
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %25 = load volatile ptr, ptr %24, align 4
  call void @add_wait_queue(ptr noundef %25, ptr noundef nonnull %4) #12
  %26 = getelementptr inbounds %struct.af_alg_ctx, ptr %11, i32 0, i32 6
  %27 = getelementptr inbounds %struct.af_alg_ctx, ptr %11, i32 0, i32 4
  %28 = load volatile i32, ptr %6, align 4
  %29 = and i32 %28, 256
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %64, !prof !11

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.af_alg_ctx, ptr %11, i32 0, i32 9
  %33 = icmp eq i32 %2, 0
  br label %34

34:                                               ; preds = %60, %31
  %35 = load volatile i32, ptr %6, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %34
  call void @release_sock(ptr noundef %0) #12
  %39 = load i8, ptr %32, align 1, !range !25
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = load i8, ptr %26, align 4, !range !25
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  br i1 %33, label %48, label %45

45:                                               ; preds = %44
  %46 = load i32, ptr %27, align 4
  %47 = icmp ult i32 %46, %2
  br i1 %47, label %48, label %50

48:                                               ; preds = %45, %44, %38
  %49 = call i32 @wait_woken(ptr noundef nonnull %4, i32 noundef 1, i32 noundef 2147483647) #12
  br label %50

50:                                               ; preds = %48, %45, %41
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #12
  %51 = load i8, ptr %32, align 1, !range !25
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = load i8, ptr %26, align 4, !range !25
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  br i1 %33, label %60, label %57

57:                                               ; preds = %56
  %58 = load i32, ptr %27, align 4
  %59 = icmp ult i32 %58, %2
  br i1 %59, label %60, label %64

60:                                               ; preds = %57, %56, %50
  %61 = load volatile i32, ptr %6, align 4
  %62 = and i32 %61, 256
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %34, label %64, !prof !11

64:                                               ; preds = %60, %57, %53, %34, %23
  %65 = phi i32 [ -512, %23 ], [ -512, %60 ], [ 0, %53 ], [ 0, %57 ], [ -512, %34 ]
  %66 = load volatile ptr, ptr %24, align 4
  call void @remove_wait_queue(ptr noundef %66, ptr noundef nonnull %4) #12
  %67 = load volatile i32, ptr %15, align 4
  %68 = and i32 %67, 65536
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load ptr, ptr %24, align 4
  %72 = getelementptr inbounds %struct.socket_wq, ptr %71, i32 0, i32 2
  call void @_clear_bit(i32 noundef 1, ptr noundef %72) #12
  br label %73

73:                                               ; preds = %70, %64, %3
  %74 = phi i32 [ -11, %3 ], [ %65, %64 ], [ %65, %70 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  ret i32 %74
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @af_alg_sendmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr inbounds %struct.alg_sock, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %11 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %76, label %14

14:                                               ; preds = %4
  %15 = icmp ugt i32 %12, 11
  br i1 %15, label %16, label %67

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %67, label %20

20:                                               ; preds = %16
  %21 = ptrtoint ptr %18 to i32
  %22 = add i32 %12, %21
  br label %23

23:                                               ; preds = %54, %20
  %24 = phi ptr [ %55, %54 ], [ null, %20 ]
  %25 = phi ptr [ %58, %54 ], [ %18, %20 ]
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %26, 12
  %28 = ptrtoint ptr %25 to i32
  %29 = sub i32 %22, %28
  %30 = icmp ugt i32 %26, %29
  %31 = select i1 %27, i1 true, i1 %30
  br i1 %31, label %328, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.cmsghdr, ptr %25, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 279
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.cmsghdr, ptr %25, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  switch i32 %38, label %328 [
    i32 2, label %39
    i32 3, label %46
    i32 4, label %48
  ]

39:                                               ; preds = %36
  %40 = icmp ult i32 %26, 16
  br i1 %40, label %328, label %41

41:                                               ; preds = %39
  %42 = getelementptr i8, ptr %25, i32 12
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 16
  %45 = icmp ult i32 %26, %44
  br i1 %45, label %328, label %54

46:                                               ; preds = %36
  %47 = icmp ult i32 %26, 16
  br i1 %47, label %328, label %50

48:                                               ; preds = %36
  %49 = icmp ult i32 %26, 16
  br i1 %49, label %328, label %50

50:                                               ; preds = %48, %46
  %51 = phi ptr [ %5, %46 ], [ %6, %48 ]
  %52 = getelementptr i8, ptr %25, i32 12
  %53 = load i32, ptr %52, align 4
  store i32 %53, ptr %51, align 4
  br label %54

54:                                               ; preds = %50, %41, %32
  %55 = phi ptr [ %24, %50 ], [ %42, %41 ], [ %24, %32 ]
  %56 = add i32 %26, 3
  %57 = and i32 %56, -4
  %58 = getelementptr i8, ptr %25, i32 %57
  %59 = getelementptr %struct.cmsghdr, ptr %58, i32 1
  %60 = ptrtoint ptr %59 to i32
  %61 = sub i32 %60, %21
  %62 = icmp ugt i32 %61, %12
  %63 = icmp eq ptr %58, null
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %65, label %23

65:                                               ; preds = %54
  %66 = load i32, ptr %5, align 4
  switch i32 %66, label %328 [
    i32 1, label %69
    i32 0, label %67
  ]

67:                                               ; preds = %65, %16, %14
  %68 = phi ptr [ %55, %65 ], [ null, %16 ], [ null, %14 ]
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi ptr [ %68, %67 ], [ %55, %65 ]
  %71 = phi i1 [ false, %67 ], [ true, %65 ]
  %72 = icmp eq ptr %70, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load i32, ptr %70, align 4
  %75 = icmp eq i32 %74, %3
  br i1 %75, label %76, label %328

76:                                               ; preds = %73, %69, %4
  %77 = phi ptr [ null, %4 ], [ null, %69 ], [ %70, %73 ]
  %78 = phi i1 [ false, %4 ], [ %71, %69 ], [ %71, %73 ]
  tail call void @lock_sock_nested(ptr noundef %8, i32 noundef 0) #12
  %79 = getelementptr inbounds %struct.af_alg_ctx, ptr %10, i32 0, i32 9
  %80 = load i8, ptr %79, align 1, !range !25
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.af_alg_ctx, ptr %10, i32 0, i32 6
  %84 = load i8, ptr %83, align 4, !range !25
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.af_alg_ctx, ptr %10, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %300

90:                                               ; preds = %86
  %91 = load i1, ptr @af_alg_sendmsg.__already_done, align 1
  br i1 %91, label %96, label %92, !prof !11

92:                                               ; preds = %90
  store i1 true, ptr @af_alg_sendmsg.__already_done, align 1
  %93 = tail call ptr @llvm.thread.pointer() #12
  %94 = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 85
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %94) #14
  br label %96

96:                                               ; preds = %92, %90, %82, %76
  store i8 1, ptr %79, align 1
  br i1 %13, label %108, label %97

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct.af_alg_ctx, ptr %10, i32 0, i32 8
  %99 = zext i1 %78 to i8
  store i8 %99, ptr %98, align 2
  %100 = icmp eq ptr %77, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.af_alg_ctx, ptr %10, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.af_alg_iv, ptr %77, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %103, ptr align 4 %104, i32 %3, i1 false)
  br label %105

105:                                              ; preds = %101, %97
  %106 = load i32, ptr %6, align 4
  %107 = getelementptr inbounds %struct.af_alg_ctx, ptr %10, i32 0, i32 2
  store i32 %106, ptr %107, align 4
  br label %108

108:                                              ; preds = %105, %96
  %109 = icmp eq i32 %2, 0
  br i1 %109, label %292, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.af_alg_ctx, ptr %10, i32 0, i32 7
  %112 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %113 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %114 = getelementptr inbounds %struct.af_alg_ctx, ptr %10, i32 0, i32 4
  %115 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 21
  %116 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %117 = load i8, ptr %111, align 1, !range !25
  br label %118

118:                                              ; preds = %287, %110
  %119 = phi i8 [ %117, %110 ], [ %288, %287 ]
  %120 = phi i32 [ %2, %110 ], [ %290, %287 ]
  %121 = phi i32 [ 0, %110 ], [ %289, %287 ]
  %122 = icmp eq i8 %119, 0
  br i1 %122, label %168, label %123

123:                                              ; preds = %118
  %124 = load ptr, ptr %112, align 4
  %125 = getelementptr inbounds %struct.af_alg_tsgl, ptr %124, i32 0, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr %struct.af_alg_tsgl, ptr %124, i32 -1, i32 0, i32 1
  %128 = getelementptr %struct.scatterlist, ptr %127, i32 %126
  %129 = getelementptr %struct.scatterlist, ptr %127, i32 %126, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr %struct.scatterlist, ptr %127, i32 %126, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = add i32 %130, %132
  %134 = sub i32 4096, %133
  %135 = tail call i32 @llvm.umin.i32(i32 %120, i32 %134)
  %136 = load i32, ptr %128, align 4
  %137 = and i32 %136, -4
  %138 = inttoptr i32 %137 to ptr
  %139 = tail call ptr @page_address(ptr noundef %138) #12
  %140 = load i32, ptr %129, align 4
  %141 = getelementptr i8, ptr %139, i32 %140
  %142 = load i32, ptr %131, align 4
  %143 = getelementptr i8, ptr %141, i32 %142
  %144 = icmp slt i32 %135, 0
  %145 = load i1, ptr @check_copy_size.__already_done, align 1
  %146 = xor i1 %145, true
  %147 = select i1 %144, i1 %146, i1 false
  br i1 %147, label %148, label %149, !prof !19

148:                                              ; preds = %123
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %149

149:                                              ; preds = %148, %123
  br i1 %144, label %152, label %150, !prof !19

150:                                              ; preds = %149
  %151 = tail call i32 @_copy_from_iter(ptr noundef %143, i32 noundef %135, ptr noundef %113) #12
  br label %152

152:                                              ; preds = %150, %149
  %153 = phi i32 [ %151, %150 ], [ 0, %149 ]
  %154 = icmp eq i32 %153, %135
  br i1 %154, label %156, label %155, !prof !11

155:                                              ; preds = %152
  tail call void @iov_iter_revert(ptr noundef %113, i32 noundef %153) #12
  br label %300

156:                                              ; preds = %152
  %157 = load i32, ptr %131, align 4
  %158 = add i32 %157, %135
  store i32 %158, ptr %131, align 4
  %159 = load i32, ptr %129, align 4
  %160 = add i32 %159, %158
  %161 = and i32 %160, 4095
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i8
  store i8 %163, ptr %111, align 1
  %164 = load i32, ptr %114, align 4
  %165 = add i32 %164, %135
  store i32 %165, ptr %114, align 4
  %166 = add i32 %135, %121
  %167 = sub i32 %120, %135
  br label %287

168:                                              ; preds = %118
  %169 = load ptr, ptr %9, align 8
  %170 = load i32, ptr %115, align 8
  %171 = and i32 %170, -4096
  %172 = tail call i32 @llvm.smax.i32(i32 %171, i32 4096) #12
  %173 = getelementptr inbounds %struct.af_alg_ctx, ptr %169, i32 0, i32 4
  %174 = load i32, ptr %173, align 4
  %175 = sub i32 %172, %174
  %176 = tail call i32 @llvm.smax.i32(i32 %175, i32 0) #12
  %177 = icmp ugt i32 %176, 4095
  br i1 %177, label %191, label %178

178:                                              ; preds = %168
  %179 = load i32, ptr %116, align 4
  %180 = tail call fastcc i32 @af_alg_wait_for_wmem(ptr noundef %8, i32 noundef %179)
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %300

182:                                              ; preds = %178
  %183 = load ptr, ptr %9, align 8
  %184 = load i32, ptr %115, align 8
  %185 = getelementptr inbounds %struct.af_alg_ctx, ptr %183, i32 0, i32 4
  %186 = load i32, ptr %185, align 4
  %187 = and i32 %184, -4096
  %188 = tail call i32 @llvm.smax.i32(i32 %187, i32 4096) #12
  %189 = sub i32 %188, %186
  %190 = tail call i32 @llvm.smax.i32(i32 %189, i32 0) #12
  br label %191

191:                                              ; preds = %182, %168
  %192 = phi i32 [ %190, %182 ], [ %176, %168 ]
  %193 = phi ptr [ %183, %182 ], [ %169, %168 ]
  %194 = tail call i32 @llvm.umin.i32(i32 %120, i32 %192)
  %195 = getelementptr inbounds %struct.list_head, ptr %193, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  %197 = load volatile ptr, ptr %193, align 4
  %198 = icmp eq ptr %197, %193
  %199 = getelementptr inbounds %struct.af_alg_tsgl, ptr %196, i32 0, i32 2
  %200 = select i1 %198, ptr null, ptr %199
  br i1 %198, label %205, label %201

201:                                              ; preds = %191
  %202 = getelementptr inbounds %struct.af_alg_tsgl, ptr %196, i32 0, i32 1
  %203 = load i32, ptr %202, align 4
  %204 = icmp ugt i32 %203, 202
  br i1 %204, label %205, label %221

205:                                              ; preds = %201, %191
  %206 = tail call ptr @sock_kmalloc(ptr noundef %8, i32 noundef 4092, i32 noundef 3264) #12
  %207 = icmp eq ptr %206, null
  br i1 %207, label %300, label %208

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.af_alg_tsgl, ptr %206, i32 0, i32 2
  tail call void @sg_init_table(ptr noundef %209, i32 noundef 204) #12
  %210 = getelementptr inbounds %struct.af_alg_tsgl, ptr %206, i32 0, i32 1
  store i32 0, ptr %210, align 4
  br i1 %198, label %218, label %211

211:                                              ; preds = %208
  %212 = getelementptr %struct.scatterlist, ptr %200, i32 203
  %213 = getelementptr %struct.scatterlist, ptr %200, i32 203, i32 1
  store i32 0, ptr %213, align 4
  %214 = getelementptr %struct.scatterlist, ptr %200, i32 203, i32 2
  store i32 0, ptr %214, align 4
  %215 = ptrtoint ptr %209 to i32
  %216 = and i32 %215, -4
  %217 = or i32 %216, 1
  store i32 %217, ptr %212, align 4
  br label %218

218:                                              ; preds = %211, %208
  %219 = load ptr, ptr %195, align 4
  store ptr %206, ptr %195, align 4
  store ptr %193, ptr %206, align 4
  %220 = getelementptr inbounds %struct.list_head, ptr %206, i32 0, i32 1
  store ptr %219, ptr %220, align 4
  store volatile ptr %206, ptr %219, align 4
  br label %221

221:                                              ; preds = %218, %201
  %222 = load ptr, ptr %112, align 4
  %223 = getelementptr inbounds %struct.af_alg_tsgl, ptr %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.af_alg_tsgl, ptr %222, i32 0, i32 1
  %225 = load i32, ptr %224, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %221
  %228 = getelementptr %struct.af_alg_tsgl, ptr %222, i32 -1, i32 0, i32 1
  %229 = getelementptr %struct.scatterlist, ptr %228, i32 %225
  %230 = load i32, ptr %229, align 4
  %231 = and i32 %230, -3
  store i32 %231, ptr %229, align 4
  %232 = load i32, ptr %224, align 4
  br label %233

233:                                              ; preds = %227, %221
  %234 = phi i32 [ 0, %221 ], [ %232, %227 ]
  br label %235

235:                                              ; preds = %264, %233
  %236 = phi i32 [ %272, %264 ], [ %234, %233 ]
  %237 = phi i32 [ %266, %264 ], [ %194, %233 ]
  %238 = phi i32 [ %269, %264 ], [ %121, %233 ]
  %239 = phi i32 [ %270, %264 ], [ %120, %233 ]
  %240 = tail call i32 @llvm.umin.i32(i32 %237, i32 4096)
  %241 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %242 = icmp eq ptr %241, null
  br i1 %242, label %300, label %243

243:                                              ; preds = %235
  %244 = ptrtoint ptr %241 to i32
  %245 = and i32 %244, 3
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %248, label %247, !prof !11

247:                                              ; preds = %243
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

248:                                              ; preds = %243
  %249 = getelementptr %struct.scatterlist, ptr %223, i32 %236
  %250 = load i32, ptr %249, align 4
  %251 = and i32 %250, 3
  %252 = or i32 %251, %244
  store i32 %252, ptr %249, align 4
  %253 = and i32 %244, -4
  %254 = inttoptr i32 %253 to ptr
  %255 = tail call ptr @page_address(ptr noundef %254) #12
  %256 = tail call i32 @_copy_from_iter(ptr noundef %255, i32 noundef %240, ptr noundef %113) #12
  %257 = icmp eq i32 %256, %240
  br i1 %257, label %264, label %258, !prof !11

258:                                              ; preds = %248
  tail call void @iov_iter_revert(ptr noundef %113, i32 noundef %256) #12
  %259 = load i32, ptr %249, align 4
  %260 = and i32 %259, -4
  %261 = inttoptr i32 %260 to ptr
  tail call void @__free_pages(ptr noundef %261, i32 noundef 0) #12
  %262 = load i32, ptr %249, align 4
  %263 = and i32 %262, 3
  store i32 %263, ptr %249, align 4
  br label %300

264:                                              ; preds = %248
  %265 = getelementptr %struct.scatterlist, ptr %223, i32 %236, i32 2
  store i32 %240, ptr %265, align 4
  %266 = sub i32 %237, %240
  %267 = load i32, ptr %114, align 4
  %268 = add i32 %267, %240
  store i32 %268, ptr %114, align 4
  %269 = add i32 %238, %240
  %270 = sub i32 %239, %240
  %271 = load i32, ptr %224, align 4
  %272 = add i32 %271, 1
  store i32 %272, ptr %224, align 4
  %273 = icmp ne i32 %266, 0
  %274 = icmp ult i32 %272, 203
  %275 = select i1 %273, i1 %274, i1 false
  br i1 %275, label %235, label %276

276:                                              ; preds = %264
  %277 = icmp eq i32 %270, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %276
  %279 = getelementptr %struct.scatterlist, ptr %223, i32 %271
  %280 = load i32, ptr %279, align 4
  %281 = and i32 %280, -4
  %282 = or i32 %281, 2
  store i32 %282, ptr %279, align 4
  br label %283

283:                                              ; preds = %278, %276
  %284 = and i32 %240, 4095
  %285 = icmp ne i32 %284, 0
  %286 = zext i1 %285 to i8
  store i8 %286, ptr %111, align 1
  br label %287

287:                                              ; preds = %283, %156
  %288 = phi i8 [ %163, %156 ], [ %286, %283 ]
  %289 = phi i32 [ %166, %156 ], [ %269, %283 ]
  %290 = phi i32 [ %167, %156 ], [ %270, %283 ]
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %118

292:                                              ; preds = %287, %108
  %293 = phi i32 [ 0, %108 ], [ %289, %287 ]
  %294 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %295 = load i32, ptr %294, align 4
  %296 = getelementptr inbounds %struct.af_alg_ctx, ptr %10, i32 0, i32 6
  %297 = lshr i32 %295, 15
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  store i8 %299, ptr %296, align 4
  br label %300

300:                                              ; preds = %292, %258, %235, %205, %178, %155, %86
  %301 = phi i32 [ 0, %292 ], [ -22, %86 ], [ -14, %155 ], [ -14, %258 ], [ -12, %235 ], [ %180, %178 ], [ -12, %205 ]
  %302 = phi i32 [ %293, %292 ], [ 0, %86 ], [ %121, %155 ], [ %238, %258 ], [ %238, %235 ], [ %121, %178 ], [ %121, %205 ]
  %303 = load ptr, ptr %9, align 8
  %304 = getelementptr inbounds %struct.af_alg_ctx, ptr %303, i32 0, i32 4
  %305 = load i32, ptr %304, align 4
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %325, label %307

307:                                              ; preds = %300
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  %308 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 17
  %309 = load volatile ptr, ptr %308, align 4
  %310 = icmp eq ptr %309, null
  br i1 %310, label %316, label %311

311:                                              ; preds = %307
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  %312 = getelementptr inbounds %struct.wait_queue_head, ptr %309, i32 0, i32 1
  %313 = load volatile ptr, ptr %312, align 4
  %314 = icmp eq ptr %313, %312
  br i1 %314, label %316, label %315

315:                                              ; preds = %311
  tail call void @__wake_up_sync_key(ptr noundef nonnull %309, i32 noundef 1, ptr noundef nonnull inttoptr (i32 196 to ptr)) #12
  br label %316

316:                                              ; preds = %315, %311, %307
  %317 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 13
  %318 = load volatile i32, ptr %317, align 4
  %319 = and i32 %318, 65536
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %316
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  %322 = load volatile ptr, ptr %308, align 4
  %323 = tail call i32 @sock_wake_async(ptr noundef %322, i32 noundef 2, i32 noundef 2) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  br label %324

324:                                              ; preds = %321, %316
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  br label %325

325:                                              ; preds = %324, %300
  tail call void @release_sock(ptr noundef %8) #12
  %326 = icmp eq i32 %302, 0
  %327 = select i1 %326, i32 %301, i32 %302
  br label %328

328:                                              ; preds = %325, %73, %65, %48, %46, %41, %39, %36, %23
  %329 = phi i32 [ %327, %325 ], [ -22, %65 ], [ -22, %73 ], [ -22, %36 ], [ -22, %48 ], [ -22, %46 ], [ -22, %41 ], [ -22, %39 ], [ -22, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  ret i32 %329
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @af_alg_wait_for_wmem(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %5 = tail call ptr @llvm.thread.pointer() #12
  store i32 0, ptr %3, align 4
  store ptr %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  store ptr @woken_wake_function, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  store ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  store ptr %7, ptr %8, align 4
  %9 = and i32 %1, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 65536
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.socket_wq, ptr %18, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %19) #12
  br label %20

20:                                               ; preds = %16, %11
  %21 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %22 = load volatile ptr, ptr %21, align 4
  call void @add_wait_queue(ptr noundef %22, ptr noundef nonnull %3) #12
  %23 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 5
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  br label %25

25:                                               ; preds = %45, %20
  %26 = load volatile i32, ptr %5, align 4
  %27 = and i32 %26, 256
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %55, !prof !11

29:                                               ; preds = %25
  %30 = load volatile i32, ptr %5, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  call void @release_sock(ptr noundef %0) #12
  %34 = load ptr, ptr %23, align 8
  %35 = load i32, ptr %24, align 8
  %36 = and i32 %35, -4096
  %37 = call i32 @llvm.smax.i32(i32 %36, i32 4096) #12
  %38 = getelementptr inbounds %struct.af_alg_ctx, ptr %34, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = sub i32 %37, %39
  %41 = call i32 @llvm.smax.i32(i32 %40, i32 0) #12
  %42 = icmp ugt i32 %41, 4095
  br i1 %42, label %45, label %43

43:                                               ; preds = %33
  %44 = call i32 @wait_woken(ptr noundef nonnull %3, i32 noundef 1, i32 noundef 2147483647) #12
  br label %45

45:                                               ; preds = %43, %33
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #12
  %46 = load ptr, ptr %23, align 8
  %47 = load i32, ptr %24, align 8
  %48 = and i32 %47, -4096
  %49 = call i32 @llvm.smax.i32(i32 %48, i32 4096) #12
  %50 = getelementptr inbounds %struct.af_alg_ctx, ptr %46, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = sub i32 %49, %51
  %53 = call i32 @llvm.smax.i32(i32 %52, i32 0) #12
  %54 = icmp ugt i32 %53, 4095
  br i1 %54, label %55, label %25

55:                                               ; preds = %45, %29, %25
  %56 = phi i32 [ -512, %29 ], [ 0, %45 ], [ -512, %25 ]
  %57 = load volatile ptr, ptr %21, align 4
  call void @remove_wait_queue(ptr noundef %57, ptr noundef nonnull %3) #12
  br label %58

58:                                               ; preds = %55, %2
  %59 = phi i32 [ %56, %55 ], [ -11, %2 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #12
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @af_alg_sendpage(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr inbounds %struct.alg_sock, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = lshr i32 %4, 2
  %11 = and i32 %10, 32768
  %12 = or i32 %11, %4
  tail call void @lock_sock_nested(ptr noundef %7, i32 noundef 0) #12
  %13 = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 6
  %14 = load i8, ptr %13, align 4, !range !25
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %123

20:                                               ; preds = %16, %5
  %21 = icmp eq i32 %3, 0
  br i1 %21, label %118, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %8, align 8
  %24 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 21
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, -4096
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 4096) #12
  %28 = getelementptr inbounds %struct.af_alg_ctx, ptr %23, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %27, %29
  %31 = tail call i32 @llvm.smax.i32(i32 %30, i32 0) #12
  %32 = icmp ugt i32 %31, 4095
  br i1 %32, label %38, label %33

33:                                               ; preds = %22
  %34 = tail call fastcc i32 @af_alg_wait_for_wmem(ptr noundef %7, i32 noundef %12)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %123

36:                                               ; preds = %33
  %37 = load ptr, ptr %8, align 8
  br label %38

38:                                               ; preds = %36, %22
  %39 = phi ptr [ %37, %36 ], [ %23, %22 ]
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = load volatile ptr, ptr %39, align 4
  %43 = icmp eq ptr %42, %39
  %44 = getelementptr inbounds %struct.af_alg_tsgl, ptr %41, i32 0, i32 2
  %45 = select i1 %43, ptr null, ptr %44
  br i1 %43, label %50, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.af_alg_tsgl, ptr %41, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp ugt i32 %48, 202
  br i1 %49, label %50, label %66

50:                                               ; preds = %46, %38
  %51 = tail call ptr @sock_kmalloc(ptr noundef %7, i32 noundef 4092, i32 noundef 3264) #12
  %52 = icmp eq ptr %51, null
  br i1 %52, label %123, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.af_alg_tsgl, ptr %51, i32 0, i32 2
  tail call void @sg_init_table(ptr noundef %54, i32 noundef 204) #12
  %55 = getelementptr inbounds %struct.af_alg_tsgl, ptr %51, i32 0, i32 1
  store i32 0, ptr %55, align 4
  br i1 %43, label %63, label %56

56:                                               ; preds = %53
  %57 = getelementptr %struct.scatterlist, ptr %45, i32 203
  %58 = getelementptr %struct.scatterlist, ptr %45, i32 203, i32 1
  store i32 0, ptr %58, align 4
  %59 = getelementptr %struct.scatterlist, ptr %45, i32 203, i32 2
  store i32 0, ptr %59, align 4
  %60 = ptrtoint ptr %54 to i32
  %61 = and i32 %60, -4
  %62 = or i32 %61, 1
  store i32 %62, ptr %57, align 4
  br label %63

63:                                               ; preds = %56, %53
  %64 = load ptr, ptr %40, align 4
  store ptr %51, ptr %40, align 4
  store ptr %39, ptr %51, align 4
  %65 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %64, ptr %65, align 4
  store volatile ptr %51, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %46
  %67 = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 7
  store i8 0, ptr %67, align 1
  %68 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.af_alg_tsgl, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.af_alg_tsgl, ptr %69, i32 0, i32 2
  %75 = getelementptr %struct.scatterlist, ptr %74, i32 %71
  %76 = getelementptr %struct.scatterlist, ptr %75, i32 -1
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, -3
  store i32 %78, ptr %76, align 4
  %79 = load i32, ptr %70, align 4
  br label %80

80:                                               ; preds = %73, %66
  %81 = phi i32 [ %79, %73 ], [ 0, %66 ]
  %82 = getelementptr inbounds %struct.af_alg_tsgl, ptr %69, i32 0, i32 2
  %83 = getelementptr %struct.scatterlist, ptr %82, i32 %81
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, -4
  %86 = or i32 %85, 2
  store i32 %86, ptr %83, align 4
  %87 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91, !prof !11

91:                                               ; preds = %80
  %92 = add i32 %88, -1
  %93 = ptrtoint ptr %1 to i32
  br label %96

94:                                               ; preds = %80
  %95 = ptrtoint ptr %1 to i32
  br label %96

96:                                               ; preds = %94, %91
  %97 = phi i32 [ %93, %91 ], [ %95, %94 ]
  %98 = phi i32 [ %92, %91 ], [ %95, %94 ]
  %99 = inttoptr i32 %98 to ptr
  %100 = getelementptr inbounds %struct.page, ptr %99, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %100) #12, !srcloc !9
  %101 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %100, ptr %100, i32 1, ptr elementtype(i32) %100) #12, !srcloc !20
  %102 = and i32 %97, 3
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104, !prof !11

104:                                              ; preds = %96
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

105:                                              ; preds = %96
  %106 = load i32, ptr %70, align 4
  %107 = getelementptr %struct.scatterlist, ptr %82, i32 %106
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, 3
  %110 = or i32 %109, %97
  store i32 %110, ptr %107, align 4
  %111 = getelementptr %struct.scatterlist, ptr %82, i32 %106, i32 1
  store i32 %2, ptr %111, align 4
  %112 = getelementptr %struct.scatterlist, ptr %82, i32 %106, i32 2
  store i32 %3, ptr %112, align 4
  %113 = load i32, ptr %70, align 4
  %114 = add i32 %113, 1
  store i32 %114, ptr %70, align 4
  %115 = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 4
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %116, %3
  store i32 %117, ptr %115, align 4
  br label %118

118:                                              ; preds = %105, %20
  %119 = phi i32 [ 0, %105 ], [ -22, %20 ]
  %120 = lshr i32 %12, 15
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  store i8 %122, ptr %13, align 4
  br label %123

123:                                              ; preds = %118, %50, %33, %16
  %124 = phi i32 [ %119, %118 ], [ %34, %33 ], [ -22, %16 ], [ -12, %50 ]
  %125 = load ptr, ptr %8, align 8
  %126 = getelementptr inbounds %struct.af_alg_ctx, ptr %125, i32 0, i32 4
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %147, label %129

129:                                              ; preds = %123
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  %130 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 17
  %131 = load volatile ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %129
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  %134 = getelementptr inbounds %struct.wait_queue_head, ptr %131, i32 0, i32 1
  %135 = load volatile ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, %134
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  tail call void @__wake_up_sync_key(ptr noundef nonnull %131, i32 noundef 1, ptr noundef nonnull inttoptr (i32 196 to ptr)) #12
  br label %138

138:                                              ; preds = %137, %133, %129
  %139 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 13
  %140 = load volatile i32, ptr %139, align 4
  %141 = and i32 %140, 65536
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  %144 = load volatile ptr, ptr %130, align 4
  %145 = tail call i32 @sock_wake_async(ptr noundef %144, i32 noundef 2, i32 noundef 2) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  br label %146

146:                                              ; preds = %143, %138
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  br label %147

147:                                              ; preds = %146, %123
  tail call void @release_sock(ptr noundef %7) #12
  %148 = icmp eq i32 %124, 0
  %149 = select i1 %148, i32 %3, i32 %124
  ret i32 %149
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @af_alg_free_resources(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.af_alg_async_req, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.af_alg_async_req, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %55, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.alg_sock, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.af_alg_async_req, ptr %0, i32 0, i32 2
  br label %12

12:                                               ; preds = %53, %7
  %13 = phi ptr [ %5, %7 ], [ %15, %53 ]
  %14 = getelementptr i8, ptr %13, i32 -408
  %15 = load ptr, ptr %13, align 4
  %16 = getelementptr i8, ptr %13, i32 8
  %17 = load i32, ptr %16, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #12, !srcloc !9
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 %17, ptr elementtype(i32) %10) #12, !srcloc !13
  %19 = getelementptr i8, ptr %13, i32 -4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %42, %12
  %23 = phi i32 [ %43, %42 ], [ 0, %12 ]
  %24 = getelementptr %struct.af_alg_sgl, ptr %14, i32 0, i32 1, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30, !prof !11

30:                                               ; preds = %22
  %31 = add i32 %27, -1
  br label %34

32:                                               ; preds = %22
  %33 = ptrtoint ptr %25 to i32
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #12, !srcloc !9
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #12, !srcloc !15
  %39 = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  tail call void @__put_page(ptr noundef %36) #12
  br label %42

42:                                               ; preds = %41, %34
  %43 = add nuw i32 %23, 1
  %44 = load i32, ptr %19, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %22, label %46

46:                                               ; preds = %42, %12
  %47 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %13, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %49, ptr %48, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %47, align 4
  %51 = icmp eq ptr %14, %11
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  tail call void @sock_kfree_s(ptr noundef %3, ptr noundef %14, i32 noundef 420) #12
  br label %53

53:                                               ; preds = %52, %46
  %54 = icmp eq ptr %15, %4
  br i1 %54, label %55, label %12

55:                                               ; preds = %53, %1
  %56 = getelementptr inbounds %struct.af_alg_async_req, ptr %0, i32 0, i32 5
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %94, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.af_alg_async_req, ptr %0, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %92, label %63

63:                                               ; preds = %85, %59
  %64 = phi ptr [ %87, %85 ], [ %57, %59 ]
  %65 = phi i32 [ %86, %85 ], [ 0, %59 ]
  %66 = load i32, ptr %64, align 4
  %67 = and i32 %66, -4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %63
  %70 = inttoptr i32 %67 to ptr
  %71 = getelementptr inbounds %struct.page, ptr %70, i32 0, i32 1
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75, !prof !11

75:                                               ; preds = %69
  %76 = add i32 %72, -1
  %77 = inttoptr i32 %76 to ptr
  br label %78

78:                                               ; preds = %75, %69
  %79 = phi ptr [ %70, %69 ], [ %77, %75 ]
  %80 = getelementptr inbounds %struct.page, ptr %79, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %80) #12, !srcloc !9
  %81 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %80, ptr %80, i32 1, ptr elementtype(i32) %80) #12, !srcloc !15
  %82 = extractvalue { i32, i32 } %81, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  tail call void @__put_page(ptr noundef %79) #12
  br label %85

85:                                               ; preds = %84, %78, %63
  %86 = add nuw i32 %65, 1
  %87 = tail call ptr @sg_next(ptr noundef %64) #12
  %88 = load i32, ptr %60, align 4
  %89 = icmp ult i32 %86, %88
  br i1 %89, label %63, label %90

90:                                               ; preds = %85
  %91 = mul i32 %88, 20
  br label %92

92:                                               ; preds = %90, %59
  %93 = phi i32 [ 0, %59 ], [ %91, %90 ]
  tail call void @sock_kfree_s(ptr noundef %3, ptr noundef nonnull %57, i32 noundef %93) #12
  br label %94

94:                                               ; preds = %92, %55
  %95 = getelementptr inbounds %struct.af_alg_async_req, ptr %0, i32 0, i32 8
  %96 = load i32, ptr %95, align 4
  tail call void @sock_kfree_s(ptr noundef %3, ptr noundef %0, i32 noundef %96) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @af_alg_async_cb(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.af_alg_async_req, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 64
  %8 = getelementptr inbounds %struct.af_alg_async_req, ptr %4, i32 0, i32 7
  %9 = load i32, ptr %8, align 64
  tail call void @af_alg_free_resources(ptr noundef %4)
  %10 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #12, !srcloc !9
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #12, !srcloc !10
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = icmp sgt i32 %12, 0
  br i1 %15, label %18, label %16, !prof !11

16:                                               ; preds = %14
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef 3) #12
  br label %18

17:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void @sk_free(ptr noundef %6) #12
  br label %18

18:                                               ; preds = %17, %16, %14
  %19 = getelementptr inbounds %struct.kiocb, ptr %7, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq i32 %1, 0
  %22 = select i1 %21, i32 %9, i32 %1
  tail call void %20(ptr noundef %7, i32 noundef %22) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @af_alg_poll(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.alg_sock, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %2, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 7
  tail call void %10(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %2) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !29
  br label %14

14:                                               ; preds = %12, %9, %3
  %15 = getelementptr inbounds %struct.af_alg_ctx, ptr %7, i32 0, i32 6
  %16 = load i8, ptr %15, align 4, !range !25
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.af_alg_ctx, ptr %7, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %14
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32 [ 65, %22 ], [ 0, %18 ]
  %25 = load ptr, ptr %6, align 8
  %26 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 21
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, -4096
  %29 = tail call i32 @llvm.smax.i32(i32 %28, i32 4096) #12
  %30 = getelementptr inbounds %struct.af_alg_ctx, ptr %25, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %29, %31
  %33 = tail call i32 @llvm.smax.i32(i32 %32, i32 0) #12
  %34 = icmp ugt i32 %33, 4095
  %35 = or i32 %24, 772
  %36 = select i1 %34, i32 %35, i32 %24
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @af_alg_alloc_areq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @sock_kmalloc(ptr noundef %0, i32 noundef %1, i32 noundef 3264) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.af_alg_async_req, ptr %3, i32 0, i32 8
  store i32 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.af_alg_async_req, ptr %3, i32 0, i32 1
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.af_alg_async_req, ptr %3, i32 0, i32 3
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.af_alg_async_req, ptr %3, i32 0, i32 4
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.af_alg_async_req, ptr %3, i32 0, i32 4, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.af_alg_async_req, ptr %3, i32 0, i32 5
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %struct.af_alg_async_req, ptr %3, i32 0, i32 6
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %5, %2
  %14 = phi ptr [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @af_alg_get_rsgl(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #0 {
  %7 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 5
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %73, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8
  %11 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2, i32 4
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %13 = getelementptr inbounds %struct.af_alg_async_req, ptr %3, i32 0, i32 4
  %14 = getelementptr inbounds %struct.af_alg_async_req, ptr %3, i32 0, i32 2
  %15 = getelementptr inbounds %struct.af_alg_async_req, ptr %3, i32 0, i32 4, i32 1
  %16 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %17 = getelementptr inbounds %struct.af_alg_async_req, ptr %3, i32 0, i32 3
  %18 = getelementptr inbounds %struct.af_alg_ctx, ptr %10, i32 0, i32 5
  br label %19

19:                                               ; preds = %68, %9
  %20 = phi i32 [ 0, %9 ], [ %69, %68 ]
  %21 = load i32, ptr %11, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %73, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %7, align 8
  %25 = load i32, ptr %12, align 4
  %26 = and i32 %25, -4096
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 4096) #12
  %28 = getelementptr inbounds %struct.af_alg_ctx, ptr %24, i32 0, i32 5
  %29 = load volatile i32, ptr %28, align 4
  %30 = sub i32 %27, %29
  %31 = tail call i32 @llvm.smax.i32(i32 %30, i32 0) #12
  %32 = icmp ugt i32 %31, 4095
  br i1 %32, label %33, label %73

33:                                               ; preds = %23
  %34 = sub i32 %4, %20
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 %21)
  %36 = load volatile ptr, ptr %13, align 4
  %37 = icmp eq ptr %36, %13
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = tail call ptr @sock_kmalloc(ptr noundef %0, i32 noundef 420, i32 noundef 3264) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %75, label %41, !prof !19

41:                                               ; preds = %38, %33
  %42 = phi ptr [ %39, %38 ], [ %14, %33 ]
  %43 = getelementptr inbounds %struct.af_alg_sgl, ptr %42, i32 0, i32 2
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.af_alg_rsgl, ptr %42, i32 0, i32 1
  %45 = load ptr, ptr %15, align 4
  store ptr %44, ptr %15, align 4
  store ptr %13, ptr %44, align 4
  %46 = getelementptr inbounds %struct.af_alg_rsgl, ptr %42, i32 0, i32 1, i32 1
  store ptr %45, ptr %46, align 4
  store volatile ptr %44, ptr %45, align 4
  %47 = tail call i32 @af_alg_make_sg(ptr noundef %42, ptr noundef %16, i32 noundef %35)
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.af_alg_rsgl, ptr %42, i32 0, i32 2
  store i32 0, ptr %50, align 4
  br label %75

51:                                               ; preds = %41
  %52 = load ptr, ptr %17, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %68, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.af_alg_sgl, ptr %52, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr %struct.scatterlist, ptr %52, i32 -1
  %58 = getelementptr %struct.scatterlist, ptr %57, i32 %56
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, -3
  store i32 %60, ptr %58, align 4
  %61 = load i32, ptr %55, align 4
  %62 = getelementptr %struct.scatterlist, ptr %52, i32 %61
  %63 = getelementptr %struct.scatterlist, ptr %52, i32 %61, i32 1
  store i32 0, ptr %63, align 4
  %64 = getelementptr %struct.scatterlist, ptr %52, i32 %61, i32 2
  store i32 0, ptr %64, align 4
  %65 = ptrtoint ptr %42 to i32
  %66 = and i32 %65, -4
  %67 = or i32 %66, 1
  store i32 %67, ptr %62, align 4
  br label %68

68:                                               ; preds = %54, %51
  store ptr %42, ptr %17, align 4
  %69 = add i32 %47, %20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #12, !srcloc !9
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 %47, ptr elementtype(i32) %18) #12, !srcloc !20
  %71 = getelementptr inbounds %struct.af_alg_rsgl, ptr %42, i32 0, i32 2
  store i32 %47, ptr %71, align 4
  tail call void @iov_iter_advance(ptr noundef %16, i32 noundef %47) #12
  %72 = icmp ult i32 %69, %4
  br i1 %72, label %19, label %73

73:                                               ; preds = %68, %23, %19, %6
  %74 = phi i32 [ 0, %6 ], [ %20, %23 ], [ %69, %68 ], [ %20, %19 ]
  store i32 %74, ptr %5, align 4
  br label %75

75:                                               ; preds = %73, %49, %38
  %76 = phi i32 [ 0, %73 ], [ %47, %49 ], [ -12, %38 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #8 section ".init.text" {
  %1 = tail call i32 @proto_register(ptr noundef nonnull @alg_proto, i32 noundef 0) #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 @sock_register(ptr noundef nonnull @alg_family) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %8, %3, %0
  %7 = phi i32 [ %1, %0 ], [ %4, %8 ], [ 0, %3 ]
  ret i32 %7

8:                                                ; preds = %3
  tail call void @proto_unregister(ptr noundef nonnull @alg_proto) #12
  br label %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #8 section ".exit.text" {
  tail call void @sock_unregister(i32 noundef 38) #12
  tail call void @proto_unregister(ptr noundef nonnull @alg_proto) #12
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_wake_async(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alg_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 5
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = tail call ptr @sk_alloc(ptr noundef %0, i32 noundef 38, i32 noundef 3264, ptr noundef nonnull @alg_proto, i32 noundef %3) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 5
  store ptr @alg_proto_ops, ptr %14, align 4
  tail call void @sock_init_data(ptr noundef %1, ptr noundef nonnull %11) #12
  %15 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 80
  store ptr @alg_sock_destruct, ptr %15, align 8
  br label %16

16:                                               ; preds = %13, %10, %8, %4
  %17 = phi i32 [ 0, %13 ], [ -94, %4 ], [ -93, %8 ], [ -12, %10 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alg_sock_destruct(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.af_alg_type, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %7) #12
  %10 = getelementptr inbounds %struct.af_alg_type, ptr %3, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  tail call void @module_put(ptr noundef %11) #12
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alg_bind(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = load i32, ptr %0, align 64
  %7 = icmp eq i32 %6, 3
  %8 = icmp ult i32 %2, 25
  %9 = or i1 %8, %7
  br i1 %9, label %100, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sockaddr_alg_new, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, -4097
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %100

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.sockaddr_alg_new, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, -4097
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %100

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.sockaddr_alg_new, ptr %1, i32 0, i32 1
  %22 = getelementptr %struct.sockaddr_alg_new, ptr %1, i32 0, i32 1, i32 13
  store i8 0, ptr %22, align 1
  %23 = getelementptr inbounds %struct.sockaddr_alg_new, ptr %1, i32 0, i32 4
  %24 = add i32 %2, -25
  %25 = getelementptr %struct.sockaddr_alg_new, ptr %1, i32 0, i32 4, i32 %24
  store i8 0, ptr %25, align 1
  tail call void @down_read(ptr noundef nonnull @alg_types_sem) #12
  br label %26

26:                                               ; preds = %30, %20
  %27 = phi ptr [ @alg_types, %20 ], [ %28, %30 ]
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, @alg_types
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %28, i32 -4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.af_alg_type, ptr %32, i32 0, i32 10
  %34 = tail call i32 @strcmp(ptr noundef %33, ptr noundef %21) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %26

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.af_alg_type, ptr %32, i32 0, i32 9
  %38 = load ptr, ptr %37, align 4
  %39 = tail call zeroext i1 @try_module_get(ptr noundef %38) #12
  br i1 %39, label %41, label %40

40:                                               ; preds = %36, %26
  tail call void @up_read(ptr noundef nonnull @alg_types_sem) #12
  br label %45

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %28, i32 -4
  %43 = load ptr, ptr %42, align 4
  tail call void @up_read(ptr noundef nonnull @alg_types_sem) #12
  %44 = icmp eq ptr %43, inttoptr (i32 -2 to ptr)
  br i1 %44, label %45, label %66

45:                                               ; preds = %41, %40
  %46 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.4, ptr noundef %21) #12
  tail call void @down_read(ptr noundef nonnull @alg_types_sem) #12
  br label %47

47:                                               ; preds = %51, %45
  %48 = phi ptr [ @alg_types, %45 ], [ %49, %51 ]
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, @alg_types
  br i1 %50, label %64, label %51

51:                                               ; preds = %47
  %52 = getelementptr i8, ptr %49, i32 -4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.af_alg_type, ptr %53, i32 0, i32 10
  %55 = tail call i32 @strcmp(ptr noundef %54, ptr noundef %21) #12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %47

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.af_alg_type, ptr %53, i32 0, i32 9
  %59 = load ptr, ptr %58, align 4
  %60 = tail call zeroext i1 @try_module_get(ptr noundef %59) #12
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = getelementptr i8, ptr %49, i32 -4
  %63 = load ptr, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %57, %47
  %65 = phi ptr [ %63, %61 ], [ inttoptr (i32 -2 to ptr), %57 ], [ inttoptr (i32 -2 to ptr), %47 ]
  tail call void @up_read(ptr noundef nonnull @alg_types_sem) #12
  br label %66

66:                                               ; preds = %64, %41
  %67 = phi ptr [ %65, %64 ], [ %43, %41 ]
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = ptrtoint ptr %67 to i32
  br label %100

71:                                               ; preds = %66
  %72 = load ptr, ptr %67, align 4
  %73 = load i32, ptr %11, align 4
  %74 = load i32, ptr %16, align 4
  %75 = tail call ptr %72(ptr noundef %23, i32 noundef %73, i32 noundef %74) #12
  %76 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.af_alg_type, ptr %67, i32 0, i32 9
  %79 = load ptr, ptr %78, align 4
  tail call void @module_put(ptr noundef %79) #12
  %80 = ptrtoint ptr %75 to i32
  br label %100

81:                                               ; preds = %71
  tail call void @lock_sock_nested(ptr noundef %5, i32 noundef 0) #12
  %82 = getelementptr inbounds %struct.alg_sock, ptr %5, i32 0, i32 2
  %83 = load volatile i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.alg_sock, ptr %5, i32 0, i32 4
  %87 = load ptr, ptr %86, align 4
  store ptr %67, ptr %86, align 4
  %88 = getelementptr inbounds %struct.alg_sock, ptr %5, i32 0, i32 5
  %89 = load ptr, ptr %88, align 8
  store ptr %75, ptr %88, align 8
  br label %90

90:                                               ; preds = %85, %81
  %91 = phi ptr [ %67, %81 ], [ %87, %85 ]
  %92 = phi ptr [ %75, %81 ], [ %89, %85 ]
  %93 = phi i32 [ -16, %81 ], [ 0, %85 ]
  tail call void @release_sock(ptr noundef %5) #12
  %94 = icmp eq ptr %91, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.af_alg_type, ptr %91, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  tail call void %97(ptr noundef %92) #12
  %98 = getelementptr inbounds %struct.af_alg_type, ptr %91, i32 0, i32 9
  %99 = load ptr, ptr %98, align 4
  tail call void @module_put(ptr noundef %99) #12
  br label %100

100:                                              ; preds = %95, %90, %77, %69, %15, %10, %3
  %101 = phi i32 [ %70, %69 ], [ %80, %77 ], [ -22, %3 ], [ -22, %15 ], [ -22, %10 ], [ %93, %90 ], [ %93, %95 ]
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alg_accept(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = tail call i32 @af_alg_accept(ptr noundef %6, ptr noundef %1, i1 noundef zeroext %3)
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_getname(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alg_setsockopt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  tail call void @lock_sock_nested(ptr noundef %7, i32 noundef 0) #12
  %8 = getelementptr inbounds %struct.alg_sock, ptr %7, i32 0, i32 2
  %9 = load volatile i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.alg_sock, ptr %7, i32 0, i32 3
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.alg_sock, ptr %7, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq i32 %1, 279
  %17 = icmp ne ptr %15, null
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %51

19:                                               ; preds = %13
  switch i32 %2, label %51 [
    i32 1, label %20
    i32 5, label %29
    i32 6, label %40
  ]

20:                                               ; preds = %19
  %21 = load i32, ptr %0, align 64
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %51, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.af_alg_type, ptr %15, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %23
  %28 = tail call fastcc i32 @alg_setkey(ptr noundef %7, [2 x i32] %3, i32 noundef %4)
  br label %51

29:                                               ; preds = %19
  %30 = load i32, ptr %0, align 64
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %51, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.af_alg_type, ptr %15, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %51, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.alg_sock, ptr %7, i32 0, i32 5
  %38 = load ptr, ptr %37, align 8
  %39 = tail call i32 %34(ptr noundef %38, i32 noundef %4) #12
  br label %51

40:                                               ; preds = %19
  %41 = load i32, ptr %0, align 64
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.af_alg_type, ptr %15, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.alg_sock, ptr %7, i32 0, i32 5
  %49 = load ptr, ptr %48, align 8
  %50 = tail call i32 %45(ptr noundef %49, [2 x i32] %3, i32 noundef %4) #12
  br label %51

51:                                               ; preds = %47, %43, %40, %36, %32, %29, %27, %23, %20, %19, %13, %5
  %52 = phi i32 [ -16, %5 ], [ -92, %19 ], [ -92, %40 ], [ %50, %47 ], [ -92, %43 ], [ -92, %29 ], [ %39, %36 ], [ -92, %32 ], [ -92, %20 ], [ %28, %27 ], [ -92, %23 ], [ -92, %13 ]
  tail call void @release_sock(ptr noundef %7) #12
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendmsg(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alg_setkey(ptr noundef %0, [2 x i32] %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @sock_kmalloc(ptr noundef %0, i32 noundef %2, i32 noundef 3264) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %3
  %9 = extractvalue [2 x i32] %1, 0
  %10 = inttoptr i32 %9 to ptr
  %11 = extractvalue [2 x i32] %1, 1
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %8
  %15 = icmp slt i32 %2, 0
  %16 = load i1, ptr @check_copy_size.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !19

19:                                               ; preds = %14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %20

20:                                               ; preds = %19, %14
  br i1 %15, label %45, label %21, !prof !19

21:                                               ; preds = %20
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 %2, i32 -1090519040) #15, !srcloc !30
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32, !prof !11

25:                                               ; preds = %21
  %26 = tail call ptr @llvm.thread.pointer() #12
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %27) #16, !srcloc !31
  %29 = and i32 %28, -13
  %30 = or i32 %29, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %31 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %10, i32 noundef %2) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  br label %32

32:                                               ; preds = %25, %21
  %33 = phi i32 [ %31, %25 ], [ %2, %21 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35, !prof !11

35:                                               ; preds = %32
  %36 = sub i32 %2, %33
  %37 = getelementptr i8, ptr %6, i32 %36
  tail call void @llvm.memset.p0.i32(ptr align 1 %37, i8 0, i32 %33, i1 false) #12
  br label %45

38:                                               ; preds = %8
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %6, ptr align 1 %10, i32 %2, i1 false) #12
  br label %39

39:                                               ; preds = %38, %32
  %40 = getelementptr inbounds %struct.af_alg_type, ptr %5, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 5
  %43 = load ptr, ptr %42, align 8
  %44 = tail call i32 %41(ptr noundef %43, ptr noundef nonnull %6, i32 noundef %2) #12
  br label %45

45:                                               ; preds = %39, %35, %20
  %46 = phi i32 [ %44, %39 ], [ -14, %20 ], [ -14, %35 ]
  tail call void @sock_kzfree_s(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %2) #12
  br label %47

47:                                               ; preds = %45, %3
  %48 = phi i32 [ %46, %45 ], [ -12, %3 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_kzfree_s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind readonly }

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
!8 = !{i64 2147948995}
!9 = !{i64 272072, i64 2147773638, i64 2147773664, i64 2147773711, i64 2147773733, i64 2147773761, i64 2147773781}
!10 = !{i64 2147851154, i64 2147851186, i64 2147851215, i64 2147851249, i64 2147851280, i64 2147851303}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149423426}
!13 = !{i64 2147849696, i64 2147849722, i64 2147849751, i64 2147849785, i64 2147849816, i64 2147849839}
!14 = !{i64 2147947994}
!15 = !{i64 2147850380, i64 2147850412, i64 2147850441, i64 2147850475, i64 2147850506, i64 2147850529}
!16 = !{i64 2147948197}
!17 = !{i64 2147848023, i64 2147848055, i64 2147848084, i64 2147848118, i64 2147848149, i64 2147848172}
!18 = !{i64 2147848797, i64 2147848829, i64 2147848858, i64 2147848892, i64 2147848923, i64 2147848946}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2147847339, i64 2147847365, i64 2147847394, i64 2147847428, i64 2147847459, i64 2147847482}
!21 = !{!"auto-init"}
!22 = !{i64 2152116346, i64 2152116838, i64 2152116383, i64 2152116439, i64 2152116473, i64 2152116497, i64 2152116538, i64 2152116559, i64 2152116587, i64 2152116621}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.peeled.count", i32 1}
!25 = !{i8 0, i8 2}
!26 = !{i64 2149472846}
!27 = !{i64 2148964569}
!28 = !{i64 2149473063}
!29 = !{i64 2155291641}
!30 = !{i64 2151553183, i64 2151553208}
!31 = !{i64 4049295}
!32 = !{i64 4049492}
!33 = !{i64 2151534771}
