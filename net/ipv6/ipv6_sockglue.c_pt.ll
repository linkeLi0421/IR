; ModuleID = '/llk/IR/net/ipv6/ipv6_sockglue.c_pt.bc'
source_filename = "../net/ipv6/ipv6_sockglue.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_setsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_setsockopt\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_setsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_getsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_getsockopt\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_getsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.175, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.175 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inet_connection_sock_af_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, ptr, ptr, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.139, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.139 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.180, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.181, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.182, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.176, [0 x i32], %union.anon.177, i16, i16, %union.anon.178, %struct.refcount_struct, [0 x i32], %union.anon.179 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.115 }
%union.anon.115 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { %struct.hlist_node }
%union.anon.178 = type { i32 }
%union.anon.179 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.180 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.181 = type { ptr }
%union.anon.182 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.anon.2 = type { i16, i16 }
%struct.ip6_ra_chain = type { ptr, ptr, i32, ptr }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.122 }
%union.anon.122 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.191, %struct.anon.192, i32, i32, [13 x i64] }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.191 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.192 = type { i32, i32, i32, i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.188, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.188 = type { %struct.anon.189 }
%struct.anon.189 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.group_source_req = type { i32, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.194 }
%union.anon.194 = type { ptr, [124 x i8] }
%struct.group_req = type { i32, %struct.__kernel_sockaddr_storage }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.174, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.172 }
%union.anon.4 = type { ptr }
%union.anon.172 = type { i64 }
%union.anon.174 = type { ptr }
%struct.ipcm6_cookie = type { %struct.sockcm_cookie, i16, i16, i16, i8, ptr }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.ipv6_mreq = type { %struct.in6_addr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.udp_sock = type { %struct.inet_sock, i32, i32, i8, i8, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, [20 x i8], %struct.sk_buff_head, i32, [44 x i8] }
%struct.prot_inuse = type { i32, [64 x i32] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.ipv6_rt_hdr = type { i8, i8, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.41, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.135, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.41 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.135 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.anon.201 = type { i32, %struct.__kernel_sockaddr_storage, i32, i32, [0 x %struct.__kernel_sockaddr_storage] }
%struct.group_filter = type { %union.anon.199 }
%union.anon.199 = type { %struct.anon.200 }
%struct.anon.200 = type { i32, %struct.__kernel_sockaddr_storage, i32, i32, [1 x %struct.__kernel_sockaddr_storage] }
%struct.ip6_mtuinfo = type { %struct.sockaddr_in6, i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_flowlabel_req = type { %struct.in6_addr, i32, i8, i8, i16, i16, i16, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }

@ip6_ra_lock = dso_local global %struct.rwlock_t zeroinitializer, align 4
@ip6_min_hopcount = dso_local global %struct.static_key_false zeroinitializer, align 4
@ip6_ra_chain = dso_local local_unnamed_addr global ptr null, align 4
@udp_prot = external dso_local global %struct.proto, align 4
@__kstrtab_ipv6_setsockopt = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_setsockopt = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_setsockopt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_setsockopt to i32), ptr @__kstrtab_ipv6_setsockopt, ptr @__kstrtabns_ipv6_setsockopt }, section "___ksymtab+ipv6_setsockopt", align 4
@__kstrtab_ipv6_getsockopt = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_getsockopt = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_getsockopt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_getsockopt to i32), ptr @__kstrtab_ipv6_getsockopt, ptr @__kstrtabns_ipv6_getsockopt }, section "___ksymtab+ipv6_getsockopt", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@tcpv6_prot = external dso_local global %struct.proto, align 4
@tcp_prot = external dso_local global %struct.proto, align 4
@ipv4_specific = external dso_local constant %struct.inet_connection_sock_af_ops, align 4
@inet_stream_ops = external dso_local constant %struct.proto_ops, align 4
@udplite_prot = external dso_local global %struct.proto, align 4
@inet_dgram_ops = external dso_local constant %struct.proto_ops, align 4
@init_net = external dso_local global %struct.net, align 64
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@sysctl_optmem_max = external dso_local local_unnamed_addr global i32, align 4
@sysctl_mld_max_msf = external dso_local local_unnamed_addr global i32, align 4
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@static_key_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ipv6_getsockopt, ptr @__ksymtab_ipv6_setsockopt], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_ra_control(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %4 = load i16, ptr %3, align 2
  %5 = icmp eq i16 %4, 3
  br i1 %5, label %6, label %56

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.anon.2, ptr %7, i32 0, i32 1
  %9 = load i16, ptr %8, align 2
  %10 = icmp eq i16 %9, 255
  br i1 %10, label %11, label %56

11:                                               ; preds = %6
  %12 = icmp sgt i32 %1, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 16) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %56, label %17

17:                                               ; preds = %13, %11
  %18 = phi ptr [ %15, %13 ], [ null, %11 ]
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @ip6_ra_lock) #11
  br label %19

19:                                               ; preds = %23, %17
  %20 = phi ptr [ @ip6_ra_chain, %17 ], [ %21, %23 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ip6_ra_chain, ptr %21, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %27, label %19

27:                                               ; preds = %23
  br i1 %12, label %28, label %29

28:                                               ; preds = %27
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @ip6_ra_lock) #11
  tail call void @kfree(ptr noundef %18) #11
  br label %56

29:                                               ; preds = %27
  %30 = load ptr, ptr %21, align 4
  store ptr %30, ptr %20, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @ip6_ra_lock) #11
  %31 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #11, !srcloc !10
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #11, !srcloc !11
  %33 = extractvalue { i32, i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = icmp sgt i32 %33, 0
  br i1 %36, label %39, label %37, !prof !12

37:                                               ; preds = %35
  tail call void @refcount_warn_saturate(ptr noundef %31, i32 noundef 3) #11
  br label %39

38:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  tail call void @sk_free(ptr noundef %0) #11
  br label %39

39:                                               ; preds = %38, %37, %35
  tail call void @kfree(ptr noundef nonnull %21) #11
  br label %56

40:                                               ; preds = %19
  br i1 %12, label %42, label %41

41:                                               ; preds = %40
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @ip6_ra_lock) #11
  br label %56

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.ip6_ra_chain, ptr %18, i32 0, i32 1
  store ptr %0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.ip6_ra_chain, ptr %18, i32 0, i32 2
  store i32 %1, ptr %44, align 8
  store ptr null, ptr %18, align 8
  store ptr %18, ptr %20, align 4
  %45 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #11, !srcloc !10
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #11, !srcloc !14
  %47 = extractvalue { i32, i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49, !prof !15

49:                                               ; preds = %42
  %50 = add i32 %47, 1
  %51 = or i32 %50, %47
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %55, label %53, !prof !12

53:                                               ; preds = %49, %42
  %54 = phi i32 [ 2, %42 ], [ 1, %49 ]
  tail call void @refcount_warn_saturate(ptr noundef %45, i32 noundef %54) #11
  br label %55

55:                                               ; preds = %53, %49
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @ip6_ra_lock) #11
  br label %56

56:                                               ; preds = %55, %41, %39, %28, %13, %6, %2
  %57 = phi i32 [ -98, %28 ], [ 0, %39 ], [ 0, %55 ], [ -105, %41 ], [ -92, %6 ], [ -92, %2 ], [ -12, %13 ]
  ret i32 %57
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ipv6_update_options(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 2
  %6 = icmp ne i16 %5, 0
  %7 = icmp ne ptr %1, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %31

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %11 = load volatile i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, 1152
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %9
  %17 = load i32, ptr %0, align 8
  %18 = icmp eq i32 %17, 100663423
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 2
  %21 = load i16, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 3
  %23 = load i16, ptr %22, align 2
  %24 = add i16 %23, %21
  %25 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 23
  store i16 %24, ptr %25, align 2
  %26 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 16
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %29 = load i32, ptr %28, align 8
  %30 = tail call i32 %27(ptr noundef %0, i32 noundef %29) #11
  br label %31

31:                                               ; preds = %19, %16, %9, %2
  %32 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %33 = load volatile i8, ptr %32, align 2
  %34 = zext i8 %33 to i32
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, -4161
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  br label %41

41:                                               ; preds = %38, %31
  %42 = phi ptr [ %40, %38 ], [ null, %31 ]
  %43 = getelementptr inbounds %struct.ipv6_pinfo, ptr %42, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %44 = ptrtoint ptr %1 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #11, !srcloc !10
  %45 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %44, ptr %43) #11, !srcloc !17
  %46 = extractvalue { i32, i32 } %45, 0
  %47 = inttoptr i32 %46 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %48 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #11, !srcloc !10
  %51 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %50) #11, !srcloc !17
  %52 = extractvalue { i32, i32 } %51, 0
  %53 = inttoptr i32 %52 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  tail call void @dst_release(ptr noundef %53) #11
  ret ptr %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_setsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #0 {
  %6 = alloca %struct.group_source_req, align 4
  %7 = alloca %struct.group_req, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.in6_pktinfo, align 4
  %10 = alloca %struct.msghdr, align 8
  %11 = alloca %struct.flowi6, align 8
  %12 = alloca %struct.ipcm6_cookie, align 8
  %13 = alloca %struct.ipv6_mreq, align 4
  %14 = alloca %struct.ipv6_mreq, align 4
  switch i32 %1, label %1114 [
    i32 0, label %15
    i32 41, label %22
  ]

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, 3
  br i1 %18, label %1114, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr getelementptr inbounds (%struct.proto, ptr @udp_prot, i32 0, i32 9), align 4
  %21 = tail call i32 %20(ptr noundef %0, i32 noundef 0, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #11
  br label %1114

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %24 = load volatile i8, ptr %23, align 2
  %25 = zext i8 %24 to i32
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, -4161
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  br label %32

32:                                               ; preds = %29, %22
  %33 = phi ptr [ %31, %29 ], [ null, %22 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 0, ptr %8, align 4, !annotation !21
  switch i32 %2, label %34 [
    i32 1, label %35
    i32 20, label %35
    i32 21, label %35
    i32 27, label %35
    i32 28, label %35
    i32 42, label %35
    i32 45, label %35
    i32 46, label %35
    i32 47, label %35
    i32 43, label %35
    i32 44, label %35
    i32 48, label %35
  ]

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32
  %36 = phi i1 [ false, %34 ], [ true, %32 ], [ true, %32 ], [ true, %32 ], [ true, %32 ], [ true, %32 ], [ true, %32 ], [ true, %32 ], [ true, %32 ], [ true, %32 ], [ true, %32 ], [ true, %32 ], [ true, %32 ]
  %37 = extractvalue [2 x i32] %3, 0
  %38 = icmp eq i32 %37, 0
  %39 = icmp ult i32 %4, 4
  %40 = or i1 %38, %39
  br i1 %40, label %66, label %41

41:                                               ; preds = %35
  %42 = inttoptr i32 %37 to ptr
  %43 = extractvalue [2 x i32] %3, 1
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %42, i32 4, i32 -1090519040) #12, !srcloc !22
  %48 = extractvalue { i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %60, !prof !12

50:                                               ; preds = %46
  %51 = tail call ptr @llvm.thread.pointer() #11
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %53 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %52) #8, !srcloc !23
  %54 = and i32 %53, -13
  %55 = or i32 %54, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #11, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %56 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef nonnull %42, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60, !prof !12

58:                                               ; preds = %50
  %59 = load i32, ptr %8, align 4
  br label %66

60:                                               ; preds = %50, %46
  %61 = phi i32 [ %56, %50 ], [ 4, %46 ]
  %62 = sub i32 4, %61
  %63 = getelementptr i8, ptr %8, i32 %62
  call void @llvm.memset.p0.i32(ptr align 1 %63, i8 0, i32 %61, i1 false) #11
  br label %1112

64:                                               ; preds = %41
  %65 = load i32, ptr %42, align 1
  store i32 %65, ptr %8, align 4
  br label %66

66:                                               ; preds = %64, %58, %35
  %67 = phi i32 [ %59, %58 ], [ %65, %64 ], [ 0, %35 ]
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  br i1 %36, label %70, label %71

70:                                               ; preds = %66
  call void @rtnl_lock() #11
  br label %71

71:                                               ; preds = %70, %66
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #11
  switch i32 %2, label %1107 [
    i32 1, label %72
    i32 26, label %210
    i32 49, label %222
    i32 2, label %229
    i32 51, label %236
    i32 8, label %243
    i32 56, label %250
    i32 5, label %257
    i32 53, label %264
    i32 3, label %271
    i32 58, label %278
    i32 4, label %285
    i32 67, label %292
    i32 66, label %329
    i32 11, label %336
    i32 60, label %343
    i32 75, label %350
    i32 78, label %364
    i32 74, label %371
    i32 54, label %378
    i32 55, label %378
    i32 57, label %378
    i32 59, label %378
    i32 50, label %509
    i32 6, label %548
    i32 16, label %658
    i32 18, label %670
    i32 19, label %687
    i32 76, label %698
    i32 17, label %726
    i32 20, label %748
    i32 21, label %748
    i32 27, label %788
    i32 28, label %788
    i32 29, label %823
    i32 42, label %830
    i32 45, label %830
    i32 46, label %868
    i32 47, label %868
    i32 43, label %868
    i32 44, label %868
    i32 48, label %917
    i32 22, label %943
    i32 30, label %947
    i32 23, label %954
    i32 24, label %966
    i32 25, label %974
    i32 33, label %985
    i32 32, label %992
    i32 34, label %994
    i32 35, label %994
    i32 72, label %999
    i32 73, label %1052
    i32 62, label %1079
    i32 70, label %1085
    i32 77, label %1091
    i32 31, label %1097
  ]

72:                                               ; preds = %71
  %73 = icmp ugt i32 %4, 3
  %74 = load i32, ptr %8, align 4
  %75 = icmp eq i32 %74, 2
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %77, label %1110

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %79 = load i16, ptr %78, align 2
  %80 = icmp eq i16 %79, 3
  br i1 %80, label %1107, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %83 = load i16, ptr %82, align 4
  switch i16 %83, label %1107 [
    i16 17, label %84
    i16 136, label %84
    i16 6, label %88
  ]

84:                                               ; preds = %81, %81
  %85 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 1
  %86 = load i32, ptr %85, align 64
  %87 = icmp eq i32 %86, 10
  br i1 %87, label %1107, label %92

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq ptr %90, @tcpv6_prot
  br i1 %91, label %92, label %1107

92:                                               ; preds = %88, %84
  %93 = load volatile i8, ptr %23, align 2
  %94 = icmp eq i8 %93, 1
  br i1 %94, label %95, label %1107

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %97 = load i8, ptr %96, align 1
  %98 = and i8 %97, 32
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %1107

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = or i32 %104, %102
  %106 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = xor i32 %107, -65536
  %109 = or i32 %105, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %1107

111:                                              ; preds = %100
  call void @fl6_free_socklist(ptr noundef %0) #11
  call void @__ipv6_sock_mc_close(ptr noundef %0) #11
  call void @__ipv6_sock_ac_close(ptr noundef %0) #11
  %112 = load i16, ptr %82, align 4
  %113 = icmp eq i16 %112, 6
  br i1 %113, label %114, label %150

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %116 = load ptr, ptr %115, align 8
  %117 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !26
  %118 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %119 = getelementptr inbounds %struct.proto, ptr %116, i32 0, i32 25
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr %struct.prot_inuse, ptr %118, i32 0, i32 1, i32 %120
  %122 = ptrtoint ptr %121 to i32
  %123 = call i32 @llvm.read_register.i32(metadata !0) #11
  %124 = inttoptr i32 %123 to ptr
  %125 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %124) #8, !srcloc !27
  %126 = add i32 %125, %122
  %127 = inttoptr i32 %126 to ptr
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %128, -1
  store i32 %129, ptr %127, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %117) #11, !srcloc !28
  %130 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !26
  %131 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %132 = load i32, ptr getelementptr inbounds (%struct.proto, ptr @tcp_prot, i32 0, i32 25), align 4
  %133 = getelementptr %struct.prot_inuse, ptr %131, i32 0, i32 1, i32 %132
  %134 = ptrtoint ptr %133 to i32
  %135 = call i32 @llvm.read_register.i32(metadata !0) #11
  %136 = inttoptr i32 %135 to ptr
  %137 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %136) #8, !srcloc !27
  %138 = add i32 %137, %134
  %139 = inttoptr i32 %138 to ptr
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, 1
  store i32 %141, ptr %139, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %130) #11, !srcloc !28
  store ptr @tcp_prot, ptr %115, align 8
  %142 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  store ptr @ipv4_specific, ptr %142, align 8
  %143 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr inbounds %struct.socket, ptr %144, i32 0, i32 5
  store ptr @inet_stream_ops, ptr %145, align 4
  %146 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  store i16 2, ptr %146, align 8
  %147 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %148 = load i32, ptr %147, align 8
  %149 = call i32 @tcp_sync_mss(ptr noundef %0, i32 noundef %148) #11
  br label %186

150:                                              ; preds = %111
  %151 = icmp eq i16 %112, 136
  %152 = select i1 %151, ptr @udplite_prot, ptr @udp_prot
  %153 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %154 = load ptr, ptr %153, align 8
  %155 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !26
  %156 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %157 = getelementptr inbounds %struct.proto, ptr %154, i32 0, i32 25
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr %struct.prot_inuse, ptr %156, i32 0, i32 1, i32 %158
  %160 = ptrtoint ptr %159 to i32
  %161 = call i32 @llvm.read_register.i32(metadata !0) #11
  %162 = inttoptr i32 %161 to ptr
  %163 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %162) #8, !srcloc !27
  %164 = add i32 %163, %160
  %165 = inttoptr i32 %164 to ptr
  %166 = load i32, ptr %165, align 4
  %167 = add i32 %166, -1
  store i32 %167, ptr %165, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %155) #11, !srcloc !28
  %168 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !26
  %169 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %170 = load i32, ptr getelementptr inbounds (%struct.proto, ptr @udplite_prot, i32 0, i32 25), align 4
  %171 = load i32, ptr getelementptr inbounds (%struct.proto, ptr @udp_prot, i32 0, i32 25), align 4
  %172 = select i1 %151, i32 %170, i32 %171
  %173 = getelementptr %struct.prot_inuse, ptr %169, i32 0, i32 1, i32 %172
  %174 = ptrtoint ptr %173 to i32
  %175 = call i32 @llvm.read_register.i32(metadata !0) #11
  %176 = inttoptr i32 %175 to ptr
  %177 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %176) #8, !srcloc !27
  %178 = add i32 %177, %174
  %179 = inttoptr i32 %178 to ptr
  %180 = load i32, ptr %179, align 4
  %181 = add i32 %180, 1
  store i32 %181, ptr %179, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %168) #11, !srcloc !28
  store ptr %152, ptr %153, align 8
  %182 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %183 = load ptr, ptr %182, align 8
  %184 = getelementptr inbounds %struct.socket, ptr %183, i32 0, i32 5
  store ptr @inet_dgram_ops, ptr %184, align 4
  %185 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  store i16 2, ptr %185, align 8
  br label %186

186:                                              ; preds = %150, %114
  %187 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 17
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %187) #11, !srcloc !10
  %188 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %187) #11, !srcloc !17
  %189 = extractvalue { i32, i32 } %188, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !30
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %205, label %191

191:                                              ; preds = %186
  %192 = inttoptr i32 %189 to ptr
  %193 = getelementptr inbounds %struct.ipv6_txoptions, ptr %192, i32 0, i32 1
  %194 = load i32, ptr %193, align 4
  %195 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %195) #11, !srcloc !10
  %196 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %195, ptr %195, i32 %194, ptr elementtype(i32) %195) #11, !srcloc !31
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %192) #11, !srcloc !10
  %197 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %192, ptr nonnull %192, i32 1, ptr nonnull elementtype(i32) %192) #11, !srcloc !11
  %198 = extractvalue { i32, i32, i32 } %197, 0
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %203, label %200

200:                                              ; preds = %191
  %201 = icmp sgt i32 %198, 0
  br i1 %201, label %205, label %202, !prof !12

202:                                              ; preds = %200
  call void @refcount_warn_saturate(ptr noundef nonnull %192, i32 noundef 3) #11
  br label %205

203:                                              ; preds = %191
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %204 = getelementptr inbounds %struct.ipv6_txoptions, ptr %192, i32 0, i32 8
  call void @kvfree_call_rcu(ptr noundef %204, ptr noundef nonnull inttoptr (i32 28 to ptr)) #11
  br label %205

205:                                              ; preds = %203, %202, %200, %186
  %206 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 18
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %206) #11, !srcloc !10
  %207 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %206) #11, !srcloc !17
  %208 = extractvalue { i32, i32 } %207, 0
  %209 = inttoptr i32 %208 to ptr
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !33
  call void @kfree_skb_reason(ptr noundef %209, i32 noundef 0) #11
  call void @module_put(ptr noundef null) #11
  br label %1107

210:                                              ; preds = %71
  br i1 %39, label %1110, label %211

211:                                              ; preds = %210
  %212 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %213 = getelementptr inbounds %struct.anon.2, ptr %212, i32 0, i32 1
  %214 = load i16, ptr %213, align 2
  %215 = icmp eq i16 %214, 0
  br i1 %215, label %216, label %1110

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %218 = load i8, ptr %217, align 1
  %219 = select i1 %68, i8 32, i8 0
  %220 = and i8 %218, -33
  %221 = or i8 %220, %219
  store i8 %221, ptr %217, align 1
  br label %1107

222:                                              ; preds = %71
  br i1 %39, label %1110, label %223

223:                                              ; preds = %222
  %224 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 8
  %225 = load i16, ptr %224, align 4
  %226 = select i1 %68, i16 4, i16 0
  %227 = and i16 %225, -5
  %228 = or i16 %227, %226
  store i16 %228, ptr %224, align 4
  br label %1107

229:                                              ; preds = %71
  br i1 %39, label %1110, label %230

230:                                              ; preds = %229
  %231 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 8
  %232 = load i16, ptr %231, align 4
  %233 = select i1 %68, i16 8, i16 0
  %234 = and i16 %232, -9
  %235 = or i16 %234, %233
  store i16 %235, ptr %231, align 4
  br label %1107

236:                                              ; preds = %71
  br i1 %39, label %1110, label %237

237:                                              ; preds = %236
  %238 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 8
  %239 = load i16, ptr %238, align 4
  %240 = select i1 %68, i16 16, i16 0
  %241 = and i16 %239, -17
  %242 = or i16 %241, %240
  store i16 %242, ptr %238, align 4
  br label %1107

243:                                              ; preds = %71
  br i1 %39, label %1110, label %244

244:                                              ; preds = %243
  %245 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 8
  %246 = load i16, ptr %245, align 4
  %247 = select i1 %68, i16 32, i16 0
  %248 = and i16 %246, -33
  %249 = or i16 %248, %247
  store i16 %249, ptr %245, align 4
  br label %1107

250:                                              ; preds = %71
  br i1 %39, label %1110, label %251

251:                                              ; preds = %250
  %252 = zext i1 %68 to i16
  %253 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 8
  %254 = load i16, ptr %253, align 4
  %255 = and i16 %254, -2
  %256 = or i16 %255, %252
  store i16 %256, ptr %253, align 4
  br label %1107

257:                                              ; preds = %71
  br i1 %39, label %1110, label %258

258:                                              ; preds = %257
  %259 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 8
  %260 = load i16, ptr %259, align 4
  %261 = select i1 %68, i16 2, i16 0
  %262 = and i16 %260, -3
  %263 = or i16 %262, %261
  store i16 %263, ptr %259, align 4
  br label %1107

264:                                              ; preds = %71
  br i1 %39, label %1110, label %265

265:                                              ; preds = %264
  %266 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 8
  %267 = load i16, ptr %266, align 4
  %268 = select i1 %68, i16 64, i16 0
  %269 = and i16 %267, -65
  %270 = or i16 %269, %268
  store i16 %270, ptr %266, align 4
  br label %1107

271:                                              ; preds = %71
  br i1 %39, label %1110, label %272

272:                                              ; preds = %271
  %273 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 8
  %274 = load i16, ptr %273, align 4
  %275 = select i1 %68, i16 128, i16 0
  %276 = and i16 %274, -129
  %277 = or i16 %276, %275
  store i16 %277, ptr %273, align 4
  br label %1107

278:                                              ; preds = %71
  br i1 %39, label %1110, label %279

279:                                              ; preds = %278
  %280 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 8
  %281 = load i16, ptr %280, align 4
  %282 = select i1 %68, i16 256, i16 0
  %283 = and i16 %281, -257
  %284 = or i16 %283, %282
  store i16 %284, ptr %280, align 4
  br label %1107

285:                                              ; preds = %71
  br i1 %39, label %1110, label %286

286:                                              ; preds = %285
  %287 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 8
  %288 = load i16, ptr %287, align 4
  %289 = select i1 %68, i16 512, i16 0
  %290 = and i16 %288, -513
  %291 = or i16 %290, %289
  store i16 %291, ptr %287, align 4
  br label %1107

292:                                              ; preds = %71
  br i1 %39, label %1110, label %293

293:                                              ; preds = %292
  %294 = load i32, ptr %8, align 4
  %295 = add i32 %294, -256
  %296 = icmp ult i32 %295, -257
  br i1 %296, label %1110, label %297

297:                                              ; preds = %293
  %298 = icmp eq i32 %294, -1
  br i1 %298, label %299, label %300

299:                                              ; preds = %297
  store i32 0, ptr %8, align 4
  br label %300

300:                                              ; preds = %299, %297
  %301 = phi i32 [ 0, %299 ], [ %294, %297 ]
  %302 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %303 = load i16, ptr %302, align 2
  %304 = icmp eq i16 %303, 1
  br i1 %304, label %308, label %305

305:                                              ; preds = %300
  %306 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 11
  %307 = load i8, ptr %306, align 1
  br label %315

308:                                              ; preds = %300
  %309 = and i32 %301, -4
  %310 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 11
  %311 = load i8, ptr %310, align 1
  %312 = and i8 %311, 3
  %313 = zext i8 %312 to i32
  %314 = or i32 %309, %313
  store i32 %314, ptr %8, align 4
  br label %315

315:                                              ; preds = %308, %305
  %316 = phi i32 [ %301, %305 ], [ %314, %308 ]
  %317 = phi i8 [ %307, %305 ], [ %311, %308 ]
  %318 = zext i8 %317 to i32
  %319 = icmp eq i32 %316, %318
  br i1 %319, label %1107, label %320

320:                                              ; preds = %315
  %321 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 11
  %322 = trunc i32 %316 to i8
  store i8 %322, ptr %321, align 1
  %323 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %323, align 4
  %324 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %324, align 4
  %325 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %325) #11, !srcloc !10
  %326 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %325) #11, !srcloc !17
  %327 = extractvalue { i32, i32 } %326, 0
  %328 = inttoptr i32 %327 to ptr
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  call void @dst_release(ptr noundef %328) #11
  br label %1107

329:                                              ; preds = %71
  br i1 %39, label %1110, label %330

330:                                              ; preds = %329
  %331 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 8
  %332 = load i16, ptr %331, align 4
  %333 = select i1 %68, i16 2048, i16 0
  %334 = and i16 %332, -2049
  %335 = or i16 %334, %333
  store i16 %335, ptr %331, align 4
  br label %1107

336:                                              ; preds = %71
  br i1 %39, label %1110, label %337

337:                                              ; preds = %336
  %338 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 8
  %339 = load i16, ptr %338, align 4
  %340 = select i1 %68, i16 1024, i16 0
  %341 = and i16 %339, -1025
  %342 = or i16 %341, %340
  store i16 %342, ptr %338, align 4
  br label %1107

343:                                              ; preds = %71
  br i1 %39, label %1110, label %344

344:                                              ; preds = %343
  %345 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 8
  %346 = load i16, ptr %345, align 4
  %347 = select i1 %68, i16 4096, i16 0
  %348 = and i16 %346, -4097
  %349 = or i16 %348, %347
  store i16 %349, ptr %345, align 4
  br label %1107

350:                                              ; preds = %71
  br i1 %68, label %351, label %357

351:                                              ; preds = %350
  %352 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %353 = call zeroext i1 @ns_capable(ptr noundef %352, i32 noundef 13) #11
  br i1 %353, label %357, label %354

354:                                              ; preds = %351
  %355 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %356 = call zeroext i1 @ns_capable(ptr noundef %355, i32 noundef 12) #11
  br i1 %356, label %357, label %1107

357:                                              ; preds = %354, %351, %350
  br i1 %39, label %1110, label %358

358:                                              ; preds = %357
  %359 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %360 = load i16, ptr %359, align 8
  %361 = select i1 %68, i16 32, i16 0
  %362 = and i16 %360, -33
  %363 = or i16 %362, %361
  store i16 %363, ptr %359, align 8
  br label %1107

364:                                              ; preds = %71
  br i1 %39, label %1110, label %365

365:                                              ; preds = %364
  %366 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %367 = load i16, ptr %366, align 8
  %368 = select i1 %68, i16 4, i16 0
  %369 = and i16 %367, -5
  %370 = or i16 %369, %368
  store i16 %370, ptr %366, align 8
  br label %1107

371:                                              ; preds = %71
  br i1 %39, label %1110, label %372

372:                                              ; preds = %371
  %373 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 8
  %374 = load i16, ptr %373, align 4
  %375 = select i1 %68, i16 8192, i16 0
  %376 = and i16 %374, -8193
  %377 = or i16 %376, %375
  store i16 %377, ptr %373, align 4
  br label %1107

378:                                              ; preds = %71, %71, %71, %71
  %379 = load volatile i8, ptr %23, align 2
  %380 = zext i8 %379 to i32
  %381 = shl nuw i32 1, %380
  %382 = and i32 %381, -4161
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %387, label %384

384:                                              ; preds = %378
  %385 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %386 = load ptr, ptr %385, align 8
  br label %387

387:                                              ; preds = %384, %378
  %388 = phi ptr [ %386, %384 ], [ null, %378 ]
  %389 = icmp eq i32 %2, 57
  br i1 %389, label %393, label %390

390:                                              ; preds = %387
  %391 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %392 = call zeroext i1 @ns_capable(ptr noundef %391, i32 noundef 13) #11
  br i1 %392, label %393, label %1107

393:                                              ; preds = %390, %387
  %394 = icmp sgt i32 %4, 0
  br i1 %394, label %395, label %416

395:                                              ; preds = %393
  %396 = icmp eq i32 %4, 1
  %397 = or i1 %38, %396
  br i1 %397, label %1107, label %398

398:                                              ; preds = %395
  %399 = and i32 %4, 7
  %400 = icmp ne i32 %399, 0
  %401 = icmp ugt i32 %4, 2040
  %402 = or i1 %401, %400
  br i1 %402, label %1107, label %403

403:                                              ; preds = %398
  %404 = call fastcc ptr @memdup_sockptr([2 x i32] %3, i32 noundef %4) #11
  %405 = icmp ugt ptr %404, inttoptr (i32 -4096 to ptr)
  br i1 %405, label %406, label %408

406:                                              ; preds = %403
  %407 = ptrtoint ptr %404 to i32
  br label %1107

408:                                              ; preds = %403
  %409 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %404, i32 0, i32 1
  %410 = load i8, ptr %409, align 1
  %411 = zext i8 %410 to i32
  %412 = shl nuw nsw i32 %411, 3
  %413 = add nuw nsw i32 %412, 8
  %414 = icmp ugt i32 %413, %4
  br i1 %414, label %415, label %416, !prof !15

415:                                              ; preds = %408
  call void @kfree(ptr noundef %404) #11
  br label %1107

416:                                              ; preds = %408, %393
  %417 = phi ptr [ %404, %408 ], [ null, %393 ]
  %418 = getelementptr inbounds %struct.ipv6_pinfo, ptr %388, i32 0, i32 17
  %419 = load ptr, ptr %418, align 4
  %420 = call ptr @ipv6_renew_options(ptr noundef %0, ptr noundef %419, i32 noundef %2, ptr noundef %417) #11
  call void @kfree(ptr noundef %417) #11
  %421 = icmp ugt ptr %420, inttoptr (i32 -4096 to ptr)
  br i1 %421, label %422, label %424

422:                                              ; preds = %416
  %423 = ptrtoint ptr %420 to i32
  br label %1107

424:                                              ; preds = %416
  %425 = icmp ne ptr %420, null
  %426 = select i1 %389, i1 %425, i1 false
  br i1 %426, label %427, label %444

427:                                              ; preds = %424
  %428 = getelementptr inbounds %struct.ipv6_txoptions, ptr %420, i32 0, i32 6
  %429 = load ptr, ptr %428, align 4
  %430 = icmp eq ptr %429, null
  br i1 %430, label %444, label %431

431:                                              ; preds = %427
  %432 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %429, i32 0, i32 2
  %433 = load i8, ptr %432, align 1
  switch i8 %433, label %494 [
    i8 2, label %434
    i8 4, label %442
  ]

434:                                              ; preds = %431
  %435 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %429, i32 0, i32 1
  %436 = load i8, ptr %435, align 1
  %437 = icmp eq i8 %436, 2
  br i1 %437, label %438, label %494

438:                                              ; preds = %434
  %439 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %429, i32 0, i32 3
  %440 = load i8, ptr %439, align 1
  %441 = icmp eq i8 %440, 1
  br i1 %441, label %444, label %494

442:                                              ; preds = %431
  %443 = call zeroext i1 @seg6_validate_srh(ptr noundef nonnull %429, i32 noundef %4, i1 noundef zeroext false) #11
  br i1 %443, label %444, label %494

444:                                              ; preds = %442, %438, %427, %424
  %445 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %446 = load i16, ptr %445, align 8
  %447 = and i16 %446, 2
  %448 = icmp ne i16 %447, 0
  %449 = and i1 %425, %448
  br i1 %449, label %450, label %471

450:                                              ; preds = %444
  %451 = load volatile i8, ptr %23, align 2
  %452 = zext i8 %451 to i32
  %453 = shl nuw i32 1, %452
  %454 = and i32 %453, 1152
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %471

456:                                              ; preds = %450
  %457 = load i32, ptr %0, align 8
  %458 = icmp eq i32 %457, 100663423
  br i1 %458, label %471, label %459

459:                                              ; preds = %456
  %460 = getelementptr inbounds %struct.ipv6_txoptions, ptr %420, i32 0, i32 2
  %461 = load i16, ptr %460, align 4
  %462 = getelementptr inbounds %struct.ipv6_txoptions, ptr %420, i32 0, i32 3
  %463 = load i16, ptr %462, align 2
  %464 = add i16 %463, %461
  %465 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 23
  store i16 %464, ptr %465, align 2
  %466 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 16
  %467 = load ptr, ptr %466, align 8
  %468 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %469 = load i32, ptr %468, align 8
  %470 = call i32 %467(ptr noundef %0, i32 noundef %469) #11
  br label %471

471:                                              ; preds = %459, %456, %450, %444
  %472 = load volatile i8, ptr %23, align 2
  %473 = zext i8 %472 to i32
  %474 = shl nuw i32 1, %473
  %475 = and i32 %474, -4161
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %480, label %477

477:                                              ; preds = %471
  %478 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %479 = load ptr, ptr %478, align 8
  br label %480

480:                                              ; preds = %477, %471
  %481 = phi ptr [ %479, %477 ], [ null, %471 ]
  %482 = getelementptr inbounds %struct.ipv6_pinfo, ptr %481, i32 0, i32 17
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %483 = ptrtoint ptr %420 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %482) #11, !srcloc !10
  %484 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %483, ptr %482) #11, !srcloc !17
  %485 = extractvalue { i32, i32 } %484, 0
  %486 = inttoptr i32 %485 to ptr
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %487 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %487, align 4
  %488 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %488, align 4
  %489 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %489) #11, !srcloc !10
  %490 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %489) #11, !srcloc !17
  %491 = extractvalue { i32, i32 } %490, 0
  %492 = inttoptr i32 %491 to ptr
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  call void @dst_release(ptr noundef %492) #11
  %493 = icmp eq i32 %485, 0
  br i1 %493, label %1107, label %494

494:                                              ; preds = %480, %442, %438, %434, %431
  %495 = phi i32 [ 0, %480 ], [ -22, %431 ], [ -22, %434 ], [ -22, %438 ], [ -22, %442 ]
  %496 = phi ptr [ %486, %480 ], [ %420, %431 ], [ %420, %434 ], [ %420, %438 ], [ %420, %442 ]
  %497 = getelementptr inbounds %struct.ipv6_txoptions, ptr %496, i32 0, i32 1
  %498 = load i32, ptr %497, align 4
  %499 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %499) #11, !srcloc !10
  %500 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %499, ptr %499, i32 %498, ptr elementtype(i32) %499) #11, !srcloc !31
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %496) #11, !srcloc !10
  %501 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %496, ptr nonnull %496, i32 1, ptr nonnull elementtype(i32) %496) #11, !srcloc !11
  %502 = extractvalue { i32, i32, i32 } %501, 0
  %503 = icmp eq i32 %502, 1
  br i1 %503, label %507, label %504

504:                                              ; preds = %494
  %505 = icmp sgt i32 %502, 0
  br i1 %505, label %1107, label %506, !prof !12

506:                                              ; preds = %504
  call void @refcount_warn_saturate(ptr noundef nonnull %496, i32 noundef 3) #11
  br label %1107

507:                                              ; preds = %494
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %508 = getelementptr inbounds %struct.ipv6_txoptions, ptr %496, i32 0, i32 8
  call void @kvfree_call_rcu(ptr noundef %508, ptr noundef nonnull inttoptr (i32 28 to ptr)) #11
  br label %1107

509:                                              ; preds = %71
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %9, i8 0, i32 20, i1 false) #11, !annotation !21
  %510 = icmp ult i32 %4, 20
  %511 = select i1 %510, i1 true, i1 %38
  br i1 %511, label %545, label %512

512:                                              ; preds = %509
  %513 = inttoptr i32 %37 to ptr
  %514 = extractvalue [2 x i32] %3, 1
  %515 = and i32 %514, 1
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %533

517:                                              ; preds = %512
  %518 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %513, i32 20, i32 -1090519040) #12, !srcloc !22
  %519 = extractvalue { i32, i32 } %518, 0
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %521, label %529, !prof !12

521:                                              ; preds = %517
  %522 = tail call ptr @llvm.thread.pointer() #11
  %523 = getelementptr inbounds %struct.thread_info, ptr %522, i32 0, i32 3
  %524 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %523) #8, !srcloc !23
  %525 = and i32 %524, -13
  %526 = or i32 %525, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %526) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %527 = call i32 @arm_copy_from_user(ptr noundef nonnull %9, ptr noundef %513, i32 noundef 20) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %524) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %534, label %529, !prof !12

529:                                              ; preds = %521, %517
  %530 = phi i32 [ %527, %521 ], [ 20, %517 ]
  %531 = sub i32 20, %530
  %532 = getelementptr i8, ptr %9, i32 %531
  call void @llvm.memset.p0.i32(ptr align 1 %532, i8 0, i32 %530, i1 false) #11
  br label %546

533:                                              ; preds = %512
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %9, ptr noundef align 1 dereferenceable(20) %513, i32 20, i1 false) #11
  br label %534

534:                                              ; preds = %533, %521
  %535 = getelementptr inbounds %struct.in6_pktinfo, ptr %9, i32 0, i32 1
  %536 = load i32, ptr %535, align 4
  %537 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %538 = load i32, ptr %537, align 4
  %539 = icmp eq i32 %538, 0
  %540 = icmp eq i32 %538, %536
  %541 = or i1 %539, %540
  br i1 %541, label %542, label %545

542:                                              ; preds = %534
  %543 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 1
  %544 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 1, i32 1
  store i32 %536, ptr %544, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %543, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 16, i1 false) #11
  br label %546

545:                                              ; preds = %534, %509
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #11
  br label %1110

546:                                              ; preds = %542, %529
  %547 = phi i32 [ 0, %542 ], [ -14, %529 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #11
  br label %1107

548:                                              ; preds = %71
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i32 56, i1 false) #11, !annotation !21
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i32 32, i1 false) #11, !annotation !21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %11, i8 0, i32 88, i1 false) #11
  %549 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %550 = load i32, ptr %549, align 4
  store i32 %550, ptr %11, align 8
  %551 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %552 = load i32, ptr %551, align 8
  %553 = getelementptr inbounds %struct.flowi_common, ptr %11, i32 0, i32 2
  store i32 %552, ptr %553, align 8
  %554 = icmp eq i32 %4, 0
  br i1 %554, label %617, label %555

555:                                              ; preds = %548
  %556 = icmp ugt i32 %4, 65536
  br i1 %556, label %656, label %557

557:                                              ; preds = %555
  %558 = add nuw nsw i32 %4, 36
  %559 = call ptr @sock_kmalloc(ptr noundef %0, i32 noundef %558, i32 noundef 3264) #11
  %560 = icmp eq ptr %559, null
  br i1 %560, label %656, label %561

561:                                              ; preds = %557
  %562 = getelementptr inbounds i8, ptr %559, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %562, i8 0, i32 28, i1 false) #11
  store volatile i32 1, ptr %559, align 4
  %563 = getelementptr inbounds %struct.ipv6_txoptions, ptr %559, i32 0, i32 1
  store i32 %558, ptr %563, align 4
  %564 = getelementptr %struct.ipv6_txoptions, ptr %559, i32 1
  %565 = inttoptr i32 %37 to ptr
  %566 = extractvalue [2 x i32] %3, 1
  %567 = and i32 %566, 1
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %585

569:                                              ; preds = %561
  %570 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %565, i32 %4, i32 -1090519040) #12, !srcloc !22
  %571 = extractvalue { i32, i32 } %570, 0
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %581, !prof !12

573:                                              ; preds = %569
  %574 = tail call ptr @llvm.thread.pointer() #11
  %575 = getelementptr inbounds %struct.thread_info, ptr %574, i32 0, i32 3
  %576 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %575) #8, !srcloc !23
  %577 = and i32 %576, -13
  %578 = or i32 %577, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %578) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %579 = call i32 @arm_copy_from_user(ptr noundef %564, ptr noundef %565, i32 noundef %4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %576) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %586, label %581, !prof !12

581:                                              ; preds = %573, %569
  %582 = phi i32 [ %579, %573 ], [ %4, %569 ]
  %583 = sub i32 %4, %582
  %584 = getelementptr i8, ptr %564, i32 %583
  call void @llvm.memset.p0.i32(ptr align 1 %584, i8 0, i32 %582, i1 false) #11
  br label %641

585:                                              ; preds = %561
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %564, ptr align 1 %565, i32 %4, i1 false) #11
  br label %586

586:                                              ; preds = %585, %573
  %587 = getelementptr inbounds %struct.msghdr, ptr %10, i32 0, i32 5
  store i32 %4, ptr %587, align 8
  %588 = getelementptr inbounds %struct.msghdr, ptr %10, i32 0, i32 3
  store ptr %564, ptr %588, align 8
  %589 = getelementptr inbounds %struct.ipcm6_cookie, ptr %12, i32 0, i32 5
  store ptr %559, ptr %589, align 8
  %590 = call i32 @ip6_datagram_send_ctl(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #11
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %592, label %641

592:                                              ; preds = %586
  %593 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %594 = load i16, ptr %593, align 8
  %595 = and i16 %594, 2
  %596 = icmp eq i16 %595, 0
  br i1 %596, label %617, label %597

597:                                              ; preds = %592
  %598 = load volatile i8, ptr %23, align 2
  %599 = zext i8 %598 to i32
  %600 = shl nuw i32 1, %599
  %601 = and i32 %600, 1152
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %603, label %617

603:                                              ; preds = %597
  %604 = load i32, ptr %0, align 8
  %605 = icmp eq i32 %604, 100663423
  br i1 %605, label %617, label %606

606:                                              ; preds = %603
  %607 = load i16, ptr %562, align 4
  %608 = getelementptr inbounds %struct.ipv6_txoptions, ptr %559, i32 0, i32 3
  %609 = load i16, ptr %608, align 2
  %610 = add i16 %609, %607
  %611 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 23
  store i16 %610, ptr %611, align 2
  %612 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 16
  %613 = load ptr, ptr %612, align 8
  %614 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %615 = load i32, ptr %614, align 8
  %616 = call i32 %613(ptr noundef %0, i32 noundef %615) #11
  br label %617

617:                                              ; preds = %606, %603, %597, %592, %548
  %618 = phi ptr [ %559, %606 ], [ %559, %603 ], [ %559, %597 ], [ %559, %592 ], [ null, %548 ]
  %619 = load volatile i8, ptr %23, align 2
  %620 = zext i8 %619 to i32
  %621 = shl nuw i32 1, %620
  %622 = and i32 %621, -4161
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %627, label %624

624:                                              ; preds = %617
  %625 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %626 = load ptr, ptr %625, align 8
  br label %627

627:                                              ; preds = %624, %617
  %628 = phi ptr [ %626, %624 ], [ null, %617 ]
  %629 = getelementptr inbounds %struct.ipv6_pinfo, ptr %628, i32 0, i32 17
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %630 = ptrtoint ptr %618 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %629) #11, !srcloc !10
  %631 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %630, ptr %629) #11, !srcloc !17
  %632 = extractvalue { i32, i32 } %631, 0
  %633 = inttoptr i32 %632 to ptr
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %634 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %634, align 4
  %635 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %635, align 4
  %636 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %636) #11, !srcloc !10
  %637 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %636) #11, !srcloc !17
  %638 = extractvalue { i32, i32 } %637, 0
  %639 = inttoptr i32 %638 to ptr
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  call void @dst_release(ptr noundef %639) #11
  %640 = icmp eq i32 %632, 0
  br i1 %640, label %656, label %641

641:                                              ; preds = %627, %586, %581
  %642 = phi ptr [ %633, %627 ], [ %559, %586 ], [ %559, %581 ]
  %643 = phi i32 [ 0, %627 ], [ %590, %586 ], [ -14, %581 ]
  %644 = getelementptr inbounds %struct.ipv6_txoptions, ptr %642, i32 0, i32 1
  %645 = load i32, ptr %644, align 4
  %646 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %646) #11, !srcloc !10
  %647 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %646, ptr %646, i32 %645, ptr elementtype(i32) %646) #11, !srcloc !31
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %642) #11, !srcloc !10
  %648 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %642, ptr nonnull %642, i32 1, ptr nonnull elementtype(i32) %642) #11, !srcloc !11
  %649 = extractvalue { i32, i32, i32 } %648, 0
  %650 = icmp eq i32 %649, 1
  br i1 %650, label %654, label %651

651:                                              ; preds = %641
  %652 = icmp sgt i32 %649, 0
  br i1 %652, label %656, label %653, !prof !12

653:                                              ; preds = %651
  call void @refcount_warn_saturate(ptr noundef nonnull %642, i32 noundef 3) #11
  br label %656

654:                                              ; preds = %641
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %655 = getelementptr inbounds %struct.ipv6_txoptions, ptr %642, i32 0, i32 8
  call void @kvfree_call_rcu(ptr noundef %655, ptr noundef nonnull inttoptr (i32 28 to ptr)) #11
  br label %656

656:                                              ; preds = %654, %653, %651, %627, %557, %555
  %657 = phi i32 [ -22, %555 ], [ -105, %557 ], [ 0, %627 ], [ %643, %651 ], [ %643, %653 ], [ %643, %654 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #11
  br label %1107

658:                                              ; preds = %71
  br i1 %39, label %1110, label %659

659:                                              ; preds = %658
  %660 = load i32, ptr %8, align 4
  %661 = add i32 %660, -256
  %662 = icmp ult i32 %661, -257
  br i1 %662, label %1110, label %663

663:                                              ; preds = %659
  %664 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 5
  %665 = load i32, ptr %664, align 4
  %666 = shl nsw i32 %660, 7
  %667 = and i32 %666, 65408
  %668 = and i32 %665, -65409
  %669 = or i32 %668, %667
  store i32 %669, ptr %664, align 4
  br label %1107

670:                                              ; preds = %71
  %671 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %672 = load i16, ptr %671, align 2
  %673 = icmp eq i16 %672, 1
  br i1 %673, label %1107, label %674

674:                                              ; preds = %670
  br i1 %39, label %1110, label %675

675:                                              ; preds = %674
  %676 = load i32, ptr %8, align 4
  %677 = add i32 %676, -256
  %678 = icmp ult i32 %677, -257
  br i1 %678, label %1110, label %679

679:                                              ; preds = %675
  %680 = icmp eq i32 %676, -1
  %681 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 5
  %682 = load i32, ptr %681, align 4
  %683 = shl nsw i32 %676, 23
  %684 = select i1 %680, i32 8388608, i32 %683
  %685 = and i32 %682, 8388607
  %686 = or i32 %685, %684
  store i32 %686, ptr %681, align 4
  br label %1107

687:                                              ; preds = %71
  %688 = icmp ugt i32 %4, 3
  %689 = load i32, ptr %8, align 4
  %690 = icmp eq i32 %689, %69
  %691 = select i1 %688, i1 %690, i1 false
  br i1 %691, label %692, label %1110

692:                                              ; preds = %687
  %693 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 5
  %694 = load i32, ptr %693, align 4
  %695 = select i1 %68, i32 65536, i32 0
  %696 = and i32 %694, -65537
  %697 = or i32 %696, %695
  store i32 %697, ptr %693, align 4
  br label %1107

698:                                              ; preds = %71
  %699 = icmp eq i32 %4, 4
  br i1 %699, label %700, label %1110

700:                                              ; preds = %698
  %701 = load i32, ptr %8, align 4
  %702 = call i32 @llvm.bswap.i32(i32 %701) #11
  %703 = icmp eq i32 %701, 0
  br i1 %703, label %704, label %706

704:                                              ; preds = %700
  %705 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 6
  store i32 0, ptr %705, align 4
  br label %1107

706:                                              ; preds = %700
  %707 = call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %702) #11
  %708 = icmp eq ptr %707, null
  br i1 %708, label %1107, label %709

709:                                              ; preds = %706
  %710 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !26
  %711 = getelementptr inbounds %struct.net_device, ptr %707, i32 0, i32 99
  %712 = load ptr, ptr %711, align 8
  %713 = ptrtoint ptr %712 to i32
  %714 = call i32 @llvm.read_register.i32(metadata !0) #11
  %715 = inttoptr i32 %714 to ptr
  %716 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %715) #8, !srcloc !27
  %717 = add i32 %716, %713
  %718 = inttoptr i32 %717 to ptr
  %719 = load i32, ptr %718, align 4
  %720 = add i32 %719, -1
  store i32 %720, ptr %718, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %710) #11, !srcloc !28
  %721 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %722 = load i32, ptr %721, align 4
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %724, label %1107

724:                                              ; preds = %709
  %725 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 6
  store i32 %702, ptr %725, align 4
  br label %1107

726:                                              ; preds = %71
  %727 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %728 = load i16, ptr %727, align 2
  %729 = icmp eq i16 %728, 1
  br i1 %729, label %1107, label %730

730:                                              ; preds = %726
  br i1 %39, label %1110, label %731

731:                                              ; preds = %730
  %732 = load i32, ptr %8, align 4
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %745, label %734

734:                                              ; preds = %731
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !34
  %735 = load i32, ptr %8, align 4
  %736 = call ptr @dev_get_by_index_rcu(ptr noundef nonnull @init_net, i32 noundef %735) #11
  %737 = icmp eq ptr %736, null
  call void asm sideeffect "", "~{memory}"() #11
  br i1 %737, label %1107, label %738

738:                                              ; preds = %734
  %739 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %740 = load i32, ptr %739, align 4
  %741 = icmp eq i32 %740, 0
  %742 = load i32, ptr %8, align 4
  %743 = icmp eq i32 %740, %742
  %744 = select i1 %741, i1 true, i1 %743
  br i1 %744, label %745, label %1110

745:                                              ; preds = %738, %731
  %746 = phi i32 [ %742, %738 ], [ 0, %731 ]
  %747 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 7
  store i32 %746, ptr %747, align 4
  br label %1107

748:                                              ; preds = %71, %71
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %13) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %13, i8 0, i32 20, i1 false) #11, !annotation !21
  %749 = icmp ult i32 %4, 20
  br i1 %749, label %787, label %750

750:                                              ; preds = %748
  %751 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %752 = load i16, ptr %751, align 8
  %753 = and i16 %752, 2
  %754 = icmp eq i16 %753, 0
  br i1 %754, label %755, label %785

755:                                              ; preds = %750
  %756 = inttoptr i32 %37 to ptr
  %757 = extractvalue [2 x i32] %3, 1
  %758 = and i32 %757, 1
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %760, label %776

760:                                              ; preds = %755
  %761 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %756, i32 20, i32 -1090519040) #12, !srcloc !22
  %762 = extractvalue { i32, i32 } %761, 0
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %764, label %772, !prof !12

764:                                              ; preds = %760
  %765 = tail call ptr @llvm.thread.pointer() #11
  %766 = getelementptr inbounds %struct.thread_info, ptr %765, i32 0, i32 3
  %767 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %766) #8, !srcloc !23
  %768 = and i32 %767, -13
  %769 = or i32 %768, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %769) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %770 = call i32 @arm_copy_from_user(ptr noundef nonnull %13, ptr noundef %756, i32 noundef 20) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %767) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %777, label %772, !prof !12

772:                                              ; preds = %764, %760
  %773 = phi i32 [ %770, %764 ], [ 20, %760 ]
  %774 = sub i32 20, %773
  %775 = getelementptr i8, ptr %13, i32 %774
  call void @llvm.memset.p0.i32(ptr align 1 %775, i8 0, i32 %773, i1 false) #11
  br label %785

776:                                              ; preds = %755
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %13, ptr noundef align 1 dereferenceable(20) %756, i32 20, i1 false) #11
  br label %777

777:                                              ; preds = %776, %764
  %778 = icmp eq i32 %2, 20
  %779 = getelementptr inbounds %struct.ipv6_mreq, ptr %13, i32 0, i32 1
  %780 = load i32, ptr %779, align 4
  br i1 %778, label %781, label %783

781:                                              ; preds = %777
  %782 = call i32 @ipv6_sock_mc_join(ptr noundef %0, i32 noundef %780, ptr noundef nonnull %13) #11
  br label %785

783:                                              ; preds = %777
  %784 = call i32 @ipv6_sock_mc_drop(ptr noundef %0, i32 noundef %780, ptr noundef nonnull %13) #11
  br label %785

785:                                              ; preds = %783, %781, %772, %750
  %786 = phi i32 [ %784, %783 ], [ %782, %781 ], [ -71, %750 ], [ -14, %772 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %13) #11
  br label %1107

787:                                              ; preds = %748
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %13) #11
  br label %1110

788:                                              ; preds = %71, %71
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %14) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %14, i8 0, i32 20, i1 false) #11, !annotation !21
  %789 = icmp ult i32 %4, 20
  br i1 %789, label %822, label %790

790:                                              ; preds = %788
  %791 = inttoptr i32 %37 to ptr
  %792 = extractvalue [2 x i32] %3, 1
  %793 = and i32 %792, 1
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %795, label %811

795:                                              ; preds = %790
  %796 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %791, i32 20, i32 -1090519040) #12, !srcloc !22
  %797 = extractvalue { i32, i32 } %796, 0
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %799, label %807, !prof !12

799:                                              ; preds = %795
  %800 = tail call ptr @llvm.thread.pointer() #11
  %801 = getelementptr inbounds %struct.thread_info, ptr %800, i32 0, i32 3
  %802 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %801) #8, !srcloc !23
  %803 = and i32 %802, -13
  %804 = or i32 %803, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %804) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %805 = call i32 @arm_copy_from_user(ptr noundef nonnull %14, ptr noundef %791, i32 noundef 20) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %802) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %812, label %807, !prof !12

807:                                              ; preds = %799, %795
  %808 = phi i32 [ %805, %799 ], [ 20, %795 ]
  %809 = sub i32 20, %808
  %810 = getelementptr i8, ptr %14, i32 %809
  call void @llvm.memset.p0.i32(ptr align 1 %810, i8 0, i32 %808, i1 false) #11
  br label %820

811:                                              ; preds = %790
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %14, ptr noundef align 1 dereferenceable(20) %791, i32 20, i1 false) #11
  br label %812

812:                                              ; preds = %811, %799
  %813 = icmp eq i32 %2, 27
  %814 = getelementptr inbounds %struct.ipv6_mreq, ptr %14, i32 0, i32 1
  %815 = load i32, ptr %814, align 4
  br i1 %813, label %816, label %818

816:                                              ; preds = %812
  %817 = call i32 @ipv6_sock_ac_join(ptr noundef %0, i32 noundef %815, ptr noundef nonnull %14) #11
  br label %820

818:                                              ; preds = %812
  %819 = call i32 @ipv6_sock_ac_drop(ptr noundef %0, i32 noundef %815, ptr noundef nonnull %14) #11
  br label %820

820:                                              ; preds = %818, %816, %807
  %821 = phi i32 [ %819, %818 ], [ %817, %816 ], [ -14, %807 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %14) #11
  br label %1107

822:                                              ; preds = %788
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %14) #11
  br label %1110

823:                                              ; preds = %71
  br i1 %39, label %1110, label %824

824:                                              ; preds = %823
  %825 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 9
  %826 = load i16, ptr %825, align 2
  %827 = select i1 %68, i16 8192, i16 0
  %828 = and i16 %826, -8193
  %829 = or i16 %828, %827
  store i16 %829, ptr %825, align 2
  br label %1107

830:                                              ; preds = %71, %71
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(132) %7, i8 0, i32 132, i1 false) #11, !annotation !21
  %831 = icmp ult i32 %4, 132
  br i1 %831, label %866, label %832

832:                                              ; preds = %830
  %833 = inttoptr i32 %37 to ptr
  %834 = extractvalue [2 x i32] %3, 1
  %835 = and i32 %834, 1
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %837, label %853

837:                                              ; preds = %832
  %838 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %833, i32 132, i32 -1090519040) #12, !srcloc !22
  %839 = extractvalue { i32, i32 } %838, 0
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %841, label %849, !prof !12

841:                                              ; preds = %837
  %842 = tail call ptr @llvm.thread.pointer() #11
  %843 = getelementptr inbounds %struct.thread_info, ptr %842, i32 0, i32 3
  %844 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %843) #8, !srcloc !23
  %845 = and i32 %844, -13
  %846 = or i32 %845, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %846) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %847 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %833, i32 noundef 132) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %844) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %854, label %849, !prof !12

849:                                              ; preds = %841, %837
  %850 = phi i32 [ %847, %841 ], [ 132, %837 ]
  %851 = sub i32 132, %850
  %852 = getelementptr i8, ptr %7, i32 %851
  call void @llvm.memset.p0.i32(ptr align 1 %852, i8 0, i32 %850, i1 false) #11
  br label %866

853:                                              ; preds = %832
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(132) %7, ptr noundef align 1 dereferenceable(132) %833, i32 132, i1 false) #11
  br label %854

854:                                              ; preds = %853, %841
  %855 = getelementptr inbounds %struct.group_req, ptr %7, i32 0, i32 1
  %856 = load i16, ptr %855, align 4
  %857 = icmp eq i16 %856, 10
  br i1 %857, label %858, label %866

858:                                              ; preds = %854
  %859 = icmp eq i32 %2, 42
  %860 = load i32, ptr %7, align 4
  %861 = getelementptr inbounds %struct.group_req, ptr %7, i32 0, i32 1, i32 0, i32 1, i32 4
  br i1 %859, label %862, label %864

862:                                              ; preds = %858
  %863 = call i32 @ipv6_sock_mc_join(ptr noundef %0, i32 noundef %860, ptr noundef %861) #11
  br label %866

864:                                              ; preds = %858
  %865 = call i32 @ipv6_sock_mc_drop(ptr noundef %0, i32 noundef %860, ptr noundef %861) #11
  br label %866

866:                                              ; preds = %864, %862, %854, %849, %830
  %867 = phi i32 [ %863, %862 ], [ %865, %864 ], [ -22, %830 ], [ -99, %854 ], [ -14, %849 ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %7) #11
  br label %1107

868:                                              ; preds = %71, %71, %71, %71
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(260) %6, i8 0, i32 260, i1 false) #11, !annotation !21
  %869 = icmp ult i32 %4, 260
  br i1 %869, label %915, label %870

870:                                              ; preds = %868
  %871 = inttoptr i32 %37 to ptr
  %872 = extractvalue [2 x i32] %3, 1
  %873 = and i32 %872, 1
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %875, label %891

875:                                              ; preds = %870
  %876 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %871, i32 260, i32 -1090519040) #12, !srcloc !22
  %877 = extractvalue { i32, i32 } %876, 0
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %879, label %887, !prof !12

879:                                              ; preds = %875
  %880 = tail call ptr @llvm.thread.pointer() #11
  %881 = getelementptr inbounds %struct.thread_info, ptr %880, i32 0, i32 3
  %882 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %881) #8, !srcloc !23
  %883 = and i32 %882, -13
  %884 = or i32 %883, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %884) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %885 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %871, i32 noundef 260) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %882) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %892, label %887, !prof !12

887:                                              ; preds = %879, %875
  %888 = phi i32 [ %885, %879 ], [ 260, %875 ]
  %889 = sub i32 260, %888
  %890 = getelementptr i8, ptr %6, i32 %889
  call void @llvm.memset.p0.i32(ptr align 1 %890, i8 0, i32 %888, i1 false) #11
  br label %915

891:                                              ; preds = %870
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(260) %6, ptr noundef align 1 dereferenceable(260) %871, i32 260, i1 false) #11
  br label %892

892:                                              ; preds = %891, %879
  %893 = getelementptr inbounds %struct.group_source_req, ptr %6, i32 0, i32 1
  %894 = load i16, ptr %893, align 4
  %895 = icmp eq i16 %894, 10
  br i1 %895, label %896, label %915

896:                                              ; preds = %892
  %897 = getelementptr inbounds %struct.group_source_req, ptr %6, i32 0, i32 2
  %898 = load i16, ptr %897, align 4
  %899 = icmp eq i16 %898, 10
  br i1 %899, label %900, label %915

900:                                              ; preds = %896
  switch i32 %2, label %910 [
    i32 43, label %911
    i32 44, label %901
    i32 46, label %902
  ]

901:                                              ; preds = %900
  br label %911

902:                                              ; preds = %900
  %903 = load i32, ptr %6, align 4
  %904 = getelementptr inbounds %struct.group_source_req, ptr %6, i32 0, i32 1, i32 0, i32 1, i32 4
  %905 = call i32 @ipv6_sock_mc_join_ssm(ptr noundef %0, i32 noundef %903, ptr noundef %904, i32 noundef 1) #11
  %906 = icmp eq i32 %905, -98
  %907 = icmp eq i32 %905, 0
  %908 = or i1 %906, %907
  %909 = zext i1 %908 to i32
  switch i32 %905, label %915 [
    i32 -98, label %911
    i32 0, label %911
  ]

910:                                              ; preds = %900
  br label %911

911:                                              ; preds = %910, %902, %902, %901, %900
  %912 = phi i32 [ 0, %901 ], [ %909, %902 ], [ 1, %910 ], [ 0, %900 ], [ %909, %902 ]
  %913 = phi i32 [ 0, %901 ], [ %909, %902 ], [ 0, %910 ], [ 1, %900 ], [ %909, %902 ]
  %914 = call i32 @ip6_mc_source(i32 noundef %913, i32 noundef %912, ptr noundef %0, ptr noundef nonnull %6) #11
  br label %915

915:                                              ; preds = %911, %902, %896, %892, %887, %868
  %916 = phi i32 [ %914, %911 ], [ %905, %902 ], [ -99, %896 ], [ -99, %892 ], [ -14, %887 ], [ -22, %868 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %6) #11
  br label %1107

917:                                              ; preds = %71
  %918 = icmp ult i32 %4, 140
  br i1 %918, label %1107, label %919

919:                                              ; preds = %917
  %920 = load i32, ptr @sysctl_optmem_max, align 4
  %921 = icmp slt i32 %920, %4
  br i1 %921, label %1107, label %922

922:                                              ; preds = %919
  %923 = call fastcc ptr @memdup_sockptr([2 x i32] %3, i32 noundef %4) #11
  %924 = icmp ugt ptr %923, inttoptr (i32 -4096 to ptr)
  br i1 %924, label %925, label %927

925:                                              ; preds = %922
  %926 = ptrtoint ptr %923 to i32
  br label %1107

927:                                              ; preds = %922
  %928 = getelementptr inbounds %struct.anon.201, ptr %923, i32 0, i32 3
  %929 = load i32, ptr %928, align 4
  %930 = icmp ugt i32 %929, 33554430
  %931 = load i32, ptr @sysctl_mld_max_msf, align 4
  %932 = icmp ugt i32 %929, %931
  %933 = select i1 %930, i1 true, i1 %932
  br i1 %933, label %941, label %934

934:                                              ; preds = %927
  %935 = shl nuw i32 %929, 7
  %936 = add nuw i32 %935, 140
  %937 = icmp ugt i32 %936, %4
  br i1 %937, label %941, label %938

938:                                              ; preds = %934
  %939 = getelementptr inbounds %struct.anon.201, ptr %923, i32 0, i32 4
  %940 = call i32 @ip6_mc_msfilter(ptr noundef %0, ptr noundef %923, ptr noundef %939) #11
  br label %941

941:                                              ; preds = %938, %934, %927
  %942 = phi i32 [ -105, %927 ], [ -22, %934 ], [ %940, %938 ]
  call void @kfree(ptr noundef %923) #11
  br label %1107

943:                                              ; preds = %71
  br i1 %39, label %1110, label %944

944:                                              ; preds = %943
  %945 = load i32, ptr %8, align 4
  %946 = call i32 @ip6_ra_control(ptr noundef %0, i32 noundef %945) #11
  br label %1107

947:                                              ; preds = %71
  br i1 %39, label %1110, label %948

948:                                              ; preds = %947
  %949 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 9
  %950 = load i16, ptr %949, align 2
  %951 = select i1 %68, i16 -32768, i16 0
  %952 = and i16 %950, 32767
  %953 = or i16 %952, %951
  store i16 %953, ptr %949, align 2
  br label %1107

954:                                              ; preds = %71
  br i1 %39, label %1110, label %955

955:                                              ; preds = %954
  %956 = load i32, ptr %8, align 4
  %957 = icmp ugt i32 %956, 5
  br i1 %957, label %1110, label %958

958:                                              ; preds = %955
  %959 = trunc i32 %956 to i16
  %960 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 9
  %961 = load i16, ptr %960, align 2
  %962 = shl nuw nsw i16 %959, 3
  %963 = and i16 %962, 56
  %964 = and i16 %961, -57
  %965 = or i16 %964, %963
  store i16 %965, ptr %960, align 2
  br label %1107

966:                                              ; preds = %71
  br i1 %39, label %1110, label %967

967:                                              ; preds = %966
  %968 = load i32, ptr %8, align 4
  %969 = icmp ne i32 %968, 0
  %970 = icmp slt i32 %968, 1280
  %971 = and i1 %969, %970
  br i1 %971, label %1110, label %972

972:                                              ; preds = %967
  %973 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 4
  store i32 %968, ptr %973, align 4
  br label %1107

974:                                              ; preds = %71
  br i1 %39, label %1110, label %975

975:                                              ; preds = %974
  %976 = zext i1 %68 to i16
  %977 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 9
  %978 = load i16, ptr %977, align 2
  %979 = and i16 %978, -2
  %980 = or i16 %979, %976
  store i16 %980, ptr %977, align 2
  %981 = load i32, ptr %8, align 4
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %983, label %1107

983:                                              ; preds = %975
  %984 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 7
  call void @skb_queue_purge(ptr noundef %984) #11
  br label %1107

985:                                              ; preds = %71
  br i1 %39, label %1110, label %986

986:                                              ; preds = %985
  %987 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 9
  %988 = load i16, ptr %987, align 2
  %989 = select i1 %68, i16 2, i16 0
  %990 = and i16 %988, -3
  %991 = or i16 %990, %989
  store i16 %991, ptr %987, align 2
  br label %1107

992:                                              ; preds = %71
  %993 = call i32 @ipv6_flowlabel_opt(ptr noundef %0, [2 x i32] %3, i32 noundef %4) #11
  br label %1107

994:                                              ; preds = %71, %71
  %995 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %996 = call zeroext i1 @ns_capable(ptr noundef %995, i32 noundef 12) #11
  br i1 %996, label %997, label %1107

997:                                              ; preds = %994
  %998 = call i32 @xfrm_user_policy(ptr noundef %0, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #11
  br label %1107

999:                                              ; preds = %71
  br i1 %39, label %1110, label %1000

1000:                                             ; preds = %999
  %1001 = load i32, ptr %8, align 4
  %1002 = and i32 %1001, 259
  switch i32 %1002, label %1107 [
    i32 2, label %1003
    i32 1, label %1004
    i32 256, label %1005
    i32 0, label %1006
  ]

1003:                                             ; preds = %1000
  br label %1006

1004:                                             ; preds = %1000
  br label %1006

1005:                                             ; preds = %1000
  br label %1006

1006:                                             ; preds = %1005, %1004, %1003, %1000
  %1007 = phi i32 [ %1002, %1000 ], [ 0, %1005 ], [ %1002, %1004 ], [ %1002, %1003 ]
  %1008 = phi i32 [ -1, %1000 ], [ -4, %1005 ], [ -4, %1004 ], [ -4, %1003 ]
  %1009 = and i32 %1001, 1028
  switch i32 %1009, label %1107 [
    i32 1024, label %1010
    i32 4, label %1012
    i32 0, label %1014
  ]

1010:                                             ; preds = %1006
  %1011 = and i32 %1008, -5
  br label %1014

1012:                                             ; preds = %1006
  %1013 = or i32 %1007, 4
  br label %1014

1014:                                             ; preds = %1012, %1010, %1006
  %1015 = phi i32 [ %1007, %1006 ], [ %1013, %1012 ], [ %1007, %1010 ]
  %1016 = phi i32 [ %1008, %1006 ], [ %1008, %1012 ], [ %1011, %1010 ]
  %1017 = and i32 %1001, 2056
  switch i32 %1017, label %1107 [
    i32 8, label %1018
    i32 2048, label %1018
    i32 0, label %1018
  ]

1018:                                             ; preds = %1014, %1014, %1014
  %1019 = load volatile i8, ptr %23, align 2
  %1020 = zext i8 %1019 to i32
  %1021 = shl nuw i32 1, %1020
  %1022 = and i32 %1021, -4161
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1027, label %1024

1024:                                             ; preds = %1018
  %1025 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %1026 = load ptr, ptr %1025, align 8
  br label %1027

1027:                                             ; preds = %1024, %1018
  %1028 = phi ptr [ %1026, %1024 ], [ null, %1018 ]
  %1029 = getelementptr inbounds %struct.ipv6_pinfo, ptr %1028, i32 0, i32 9
  %1030 = load i16, ptr %1029, align 2
  %1031 = lshr i16 %1030, 7
  %1032 = zext i16 %1031 to i32
  %1033 = and i32 %1016, %1032
  %1034 = or i32 %1033, %1015
  %1035 = trunc i32 %1034 to i16
  %1036 = load volatile i8, ptr %23, align 2
  %1037 = zext i8 %1036 to i32
  %1038 = shl nuw i32 1, %1037
  %1039 = and i32 %1038, -4161
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1044, label %1041

1041:                                             ; preds = %1027
  %1042 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %1043 = load ptr, ptr %1042, align 8
  br label %1044

1044:                                             ; preds = %1041, %1027
  %1045 = phi ptr [ %1043, %1041 ], [ null, %1027 ]
  %1046 = getelementptr inbounds %struct.ipv6_pinfo, ptr %1045, i32 0, i32 9
  %1047 = load i16, ptr %1046, align 2
  %1048 = shl i16 %1035, 7
  %1049 = and i16 %1048, 896
  %1050 = and i16 %1047, -897
  %1051 = or i16 %1050, %1049
  store i16 %1051, ptr %1046, align 2
  br label %1107

1052:                                             ; preds = %71
  br i1 %39, label %1110, label %1053

1053:                                             ; preds = %1052
  %1054 = load i32, ptr %8, align 4
  %1055 = icmp ugt i32 %1054, 255
  br i1 %1055, label %1110, label %1056

1056:                                             ; preds = %1053
  %1057 = icmp eq i32 %1054, 0
  br i1 %1057, label %1076, label %1058

1058:                                             ; preds = %1056
  %1059 = load i8, ptr @static_key_initialized, align 1, !range !35
  %1060 = icmp eq i8 %1059, 0
  br i1 %1060, label %1061, label %1062, !prof !15

1061:                                             ; preds = %1058
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.static_key_enable, ptr noundef nonnull @ip6_min_hopcount) #11
  br label %1062

1062:                                             ; preds = %1061, %1058
  %1063 = load volatile i32, ptr @ip6_min_hopcount, align 4
  %1064 = icmp eq i32 %1063, 0
  br i1 %1064, label %1072, label %1065

1065:                                             ; preds = %1062
  %1066 = load volatile i32, ptr @ip6_min_hopcount, align 4
  %1067 = icmp ne i32 %1066, 1
  %1068 = load i1, ptr @static_key_enable.__already_done, align 1
  %1069 = xor i1 %1068, true
  %1070 = select i1 %1067, i1 %1069, i1 false
  br i1 %1070, label %1071, label %1073, !prof !15

1071:                                             ; preds = %1065
  store i1 true, ptr @static_key_enable.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 321, i32 noundef 9, ptr noundef null) #11
  br label %1073

1072:                                             ; preds = %1062
  store volatile i32 1, ptr @ip6_min_hopcount, align 4
  br label %1073

1073:                                             ; preds = %1072, %1071, %1065
  %1074 = load i32, ptr %8, align 4
  %1075 = trunc i32 %1074 to i8
  br label %1076

1076:                                             ; preds = %1073, %1056
  %1077 = phi i8 [ 0, %1056 ], [ %1075, %1073 ]
  %1078 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 10
  store volatile i8 %1077, ptr %1078, align 4
  br label %1107

1079:                                             ; preds = %71
  %1080 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 9
  %1081 = load i16, ptr %1080, align 2
  %1082 = select i1 %68, i16 1024, i16 0
  %1083 = and i16 %1081, -1025
  %1084 = or i16 %1083, %1082
  store i16 %1084, ptr %1080, align 2
  br label %1107

1085:                                             ; preds = %71
  %1086 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 9
  %1087 = load i16, ptr %1086, align 2
  %1088 = and i16 %1087, -6145
  %1089 = select i1 %68, i16 6144, i16 4096
  %1090 = or i16 %1088, %1089
  store i16 %1090, ptr %1086, align 2
  br label %1107

1091:                                             ; preds = %71
  %1092 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 8
  %1093 = load i16, ptr %1092, align 4
  %1094 = select i1 %68, i16 16384, i16 0
  %1095 = and i16 %1093, -16385
  %1096 = or i16 %1095, %1094
  store i16 %1096, ptr %1092, align 4
  br label %1107

1097:                                             ; preds = %71
  %1098 = load i32, ptr %8, align 4
  %1099 = icmp ugt i32 %1098, 1
  %1100 = select i1 %39, i1 true, i1 %1099
  br i1 %1100, label %1110, label %1101

1101:                                             ; preds = %1097
  %1102 = getelementptr inbounds %struct.ipv6_pinfo, ptr %33, i32 0, i32 9
  %1103 = load i16, ptr %1102, align 2
  %1104 = select i1 %68, i16 16384, i16 0
  %1105 = and i16 %1103, -16385
  %1106 = or i16 %1105, %1104
  store i16 %1106, ptr %1102, align 2
  br label %1107

1107:                                             ; preds = %1101, %1091, %1085, %1079, %1076, %1044, %1014, %1006, %1000, %997, %994, %992, %986, %983, %975, %972, %958, %948, %944, %941, %925, %919, %917, %915, %866, %824, %820, %785, %745, %734, %726, %724, %709, %706, %704, %692, %679, %670, %663, %656, %546, %507, %506, %504, %480, %422, %415, %406, %398, %395, %390, %372, %365, %358, %354, %344, %337, %330, %320, %315, %286, %279, %272, %265, %258, %251, %244, %237, %230, %223, %216, %205, %100, %95, %92, %88, %84, %81, %77, %71
  %1108 = phi i32 [ -92, %71 ], [ 0, %1101 ], [ 0, %1091 ], [ 0, %1085 ], [ 0, %1079 ], [ 0, %1076 ], [ %998, %997 ], [ -1, %994 ], [ %993, %992 ], [ 0, %986 ], [ 0, %972 ], [ 0, %958 ], [ 0, %948 ], [ %946, %944 ], [ %916, %915 ], [ %867, %866 ], [ 0, %824 ], [ -92, %726 ], [ 0, %745 ], [ 0, %692 ], [ -92, %670 ], [ 0, %679 ], [ 0, %663 ], [ %657, %656 ], [ %547, %546 ], [ 0, %372 ], [ 0, %365 ], [ 0, %358 ], [ 0, %344 ], [ 0, %337 ], [ 0, %330 ], [ 0, %286 ], [ 0, %279 ], [ 0, %272 ], [ 0, %265 ], [ 0, %258 ], [ 0, %251 ], [ 0, %244 ], [ 0, %237 ], [ 0, %230 ], [ 0, %223 ], [ 0, %216 ], [ 0, %205 ], [ -16, %84 ], [ -92, %77 ], [ -16, %88 ], [ -92, %81 ], [ -107, %92 ], [ -99, %100 ], [ -99, %95 ], [ 0, %320 ], [ 0, %315 ], [ -1, %354 ], [ 0, %983 ], [ 0, %975 ], [ %407, %406 ], [ -22, %415 ], [ %423, %422 ], [ -1, %390 ], [ -22, %395 ], [ -22, %398 ], [ 0, %480 ], [ %495, %504 ], [ %495, %506 ], [ %495, %507 ], [ %786, %785 ], [ %821, %820 ], [ -22, %709 ], [ -99, %706 ], [ 0, %724 ], [ 0, %704 ], [ -19, %734 ], [ %926, %925 ], [ %942, %941 ], [ -22, %917 ], [ -105, %919 ], [ 0, %1044 ], [ -22, %1000 ], [ -22, %1006 ], [ -22, %1014 ]
  call void @release_sock(ptr noundef %0) #11
  br i1 %36, label %1109, label %1112

1109:                                             ; preds = %1107
  call void @rtnl_unlock() #11
  br label %1112

1110:                                             ; preds = %1097, %1053, %1052, %999, %985, %974, %967, %966, %955, %954, %947, %943, %823, %822, %787, %738, %730, %698, %687, %675, %674, %659, %658, %545, %371, %364, %357, %343, %336, %329, %293, %292, %285, %278, %271, %264, %257, %250, %243, %236, %229, %222, %211, %210, %72
  call void @release_sock(ptr noundef %0) #11
  br i1 %36, label %1111, label %1112

1111:                                             ; preds = %1110
  call void @rtnl_unlock() #11
  br label %1112

1112:                                             ; preds = %1111, %1110, %1109, %1107, %60
  %1113 = phi i32 [ %1108, %1109 ], [ %1108, %1107 ], [ -22, %1111 ], [ -22, %1110 ], [ -14, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  br label %1114

1114:                                             ; preds = %1112, %19, %15, %5
  %1115 = phi i32 [ %21, %19 ], [ %1113, %1112 ], [ -92, %5 ], [ -92, %15 ]
  ret i32 %1115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_getsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.group_filter, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msghdr, align 8
  %9 = alloca %struct.in6_pktinfo, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.in6_pktinfo, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ip6_mtuinfo, align 4
  %16 = alloca %struct.in6_flowlabel_req, align 4
  switch i32 %1, label %571 [
    i32 0, label %17
    i32 41, label %24
  ]

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %19 = load i16, ptr %18, align 2
  %20 = icmp eq i16 %19, 3
  br i1 %20, label %571, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr getelementptr inbounds (%struct.proto, ptr @udp_prot, i32 0, i32 10), align 4
  %23 = tail call i32 %22(ptr noundef %0, i32 noundef 0, i32 noundef %2, ptr noundef %3, ptr noundef %4) #11
  br label %571

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %26 = load volatile i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, -4161
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  br label %34

34:                                               ; preds = %31, %24
  %35 = phi ptr [ %33, %31 ], [ null, %24 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !annotation !21
  %36 = tail call ptr @llvm.thread.pointer() #11
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %38 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #8, !srcloc !23
  %39 = and i32 %38, -13
  %40 = or i32 %39, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #11, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %41 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #11, !srcloc !36
  %42 = extractvalue { i32, i32 } %41, 0
  %43 = extractvalue { i32, i32 } %41, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #11, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %45, label %569

45:                                               ; preds = %34
  switch i32 %2, label %569 [
    i32 1, label %46
    i32 48, label %56
    i32 6, label %103
    i32 24, label %205
    i32 26, label %217
    i32 49, label %223
    i32 2, label %229
    i32 51, label %235
    i32 8, label %241
    i32 56, label %247
    i32 5, label %252
    i32 54, label %258
    i32 55, label %258
    i32 57, label %258
    i32 59, label %258
    i32 53, label %301
    i32 3, label %307
    i32 58, label %313
    i32 4, label %319
    i32 67, label %325
    i32 66, label %329
    i32 11, label %335
    i32 60, label %341
    i32 61, label %347
    i32 75, label %381
    i32 78, label %387
    i32 74, label %393
    i32 31, label %543
    i32 30, label %538
    i32 19, label %425
    i32 17, label %430
    i32 29, label %433
    i32 76, label %439
    i32 23, label %443
    i32 25, label %449
    i32 33, label %454
    i32 32, label %460
    i32 72, label %501
    i32 73, label %519
    i32 62, label %523
    i32 70, label %529
    i32 77, label %532
    i32 16, label %399
    i32 18, label %403
  ]

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %48 = load i16, ptr %47, align 4
  switch i16 %48, label %569 [
    i16 17, label %49
    i16 136, label %49
    i16 6, label %49
  ]

49:                                               ; preds = %46, %46, %46
  %50 = load volatile i8, ptr %25, align 2
  %51 = icmp eq i8 %50, 1
  br i1 %51, label %52, label %569

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %54 = load i16, ptr %53, align 8
  %55 = zext i16 %54 to i32
  store i32 %55, ptr %7, align 4
  br label %549

56:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(268) %6, i8 0, i32 268, i1 false) #11, !annotation !21
  %57 = icmp slt i32 %43, 140
  br i1 %57, label %101, label %58

58:                                               ; preds = %56
  %59 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 140, i32 -1090519040) #12
  %60 = extractvalue { i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68, !prof !12

62:                                               ; preds = %58
  %63 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #8, !srcloc !23
  %64 = and i32 %63, -13
  %65 = or i32 %64, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #11, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %66 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %3, i32 noundef 140) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68, !prof !12

68:                                               ; preds = %62, %58
  %69 = phi i32 [ %66, %62 ], [ 140, %58 ]
  %70 = sub i32 140, %69
  %71 = getelementptr i8, ptr %6, i32 %70
  call void @llvm.memset.p0.i32(ptr align 1 %71, i8 0, i32 %69, i1 false) #11
  br label %101

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.anon.201, ptr %6, i32 0, i32 1
  %74 = load i16, ptr %73, align 4
  %75 = icmp eq i16 %74, 10
  br i1 %75, label %76, label %101

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.anon.201, ptr %6, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #11
  %79 = getelementptr inbounds %struct.anon.201, ptr %3, i32 0, i32 4
  %80 = call i32 @ip6_mc_msfget(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %79) #11
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %76
  %83 = load i32, ptr %77, align 4
  %84 = call i32 @llvm.umin.i32(i32 %78, i32 %83) #11
  %85 = shl i32 %84, 7
  %86 = add i32 %85, 140
  %87 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #8, !srcloc !23
  %88 = and i32 %87, -13
  %89 = or i32 %88, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %90 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %86, i32 -1090519041) #11, !srcloc !37
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %87) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %82
  %93 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #8, !srcloc !23
  %94 = and i32 %93, -13
  %95 = or i32 %94, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %95) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %96 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %6, i32 noundef 140) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %93) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %92, %82
  br label %99

99:                                               ; preds = %98, %92, %76
  %100 = phi i32 [ %80, %76 ], [ -14, %98 ], [ 0, %92 ]
  call void @release_sock(ptr noundef %0) #11
  br label %101

101:                                              ; preds = %99, %72, %68, %56
  %102 = phi i32 [ %100, %99 ], [ -22, %56 ], [ -99, %72 ], [ -14, %68 ]
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %6) #11
  br label %569

103:                                              ; preds = %45
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i32 56, i1 false) #11, !annotation !21
  %104 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %105 = load i16, ptr %104, align 2
  %106 = icmp eq i16 %105, 1
  br i1 %106, label %107, label %203

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 3
  store ptr %3, ptr %108, align 8
  %109 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 5
  store i32 %43, ptr %109, align 8
  %110 = getelementptr inbounds %struct.msghdr, ptr %8, i32 0, i32 4
  store i8 1, ptr %110, align 4
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #11
  %111 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 18
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %107
  call void @ip6_datagram_recv_ctl(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %112) #11
  call void @release_sock(ptr noundef %0) #11
  br label %196

115:                                              ; preds = %107
  tail call void @release_sock(ptr noundef %0) #11
  %116 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 8
  %117 = load i16, ptr %116, align 4
  %118 = and i16 %117, 4
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %136, label %120

120:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #11
  %121 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 7
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  br label %130

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 1, i32 1
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 1
  br label %130

130:                                              ; preds = %126, %124
  %131 = phi i32 [ %128, %126 ], [ %122, %124 ]
  %132 = phi ptr [ %129, %126 ], [ %125, %124 ]
  %133 = getelementptr inbounds %struct.in6_pktinfo, ptr %9, i32 0, i32 1
  store i32 %131, ptr %133, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef align 4 dereferenceable(16) %132, i32 16, i1 false) #11
  %134 = call i32 @put_cmsg(ptr noundef nonnull %8, i32 noundef 41, i32 noundef 50, i32 noundef 20, ptr noundef nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #11
  %135 = load i16, ptr %116, align 4
  br label %136

136:                                              ; preds = %130, %115
  %137 = phi i16 [ %135, %130 ], [ %117, %115 ]
  %138 = and i16 %137, 16
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  %141 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 5
  %142 = load i32, ptr %141, align 4
  %143 = ashr i32 %142, 23
  store i32 %143, ptr %10, align 4
  %144 = call i32 @put_cmsg(ptr noundef nonnull %8, i32 noundef 41, i32 noundef 52, i32 noundef 4, ptr noundef nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  %145 = load i16, ptr %116, align 4
  br label %146

146:                                              ; preds = %140, %136
  %147 = phi i16 [ %145, %140 ], [ %137, %136 ]
  %148 = and i16 %147, 2048
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  %151 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 12
  %152 = load i32, ptr %151, align 4
  %153 = and i32 %152, 61455
  %154 = call i32 @llvm.bswap.i32(i32 %153) #11
  %155 = lshr exact i32 %154, 20
  store i32 %155, ptr %11, align 4
  %156 = call i32 @put_cmsg(ptr noundef nonnull %8, i32 noundef 41, i32 noundef 67, i32 noundef 4, ptr noundef nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  %157 = load i16, ptr %116, align 4
  br label %158

158:                                              ; preds = %150, %146
  %159 = phi i16 [ %157, %150 ], [ %147, %146 ]
  %160 = and i16 %159, 8
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %178, label %162

162:                                              ; preds = %158
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %12) #11
  %163 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 7
  %164 = load i32, ptr %163, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  br label %172

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 1, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 1
  br label %172

172:                                              ; preds = %168, %166
  %173 = phi i32 [ %170, %168 ], [ %164, %166 ]
  %174 = phi ptr [ %171, %168 ], [ %167, %166 ]
  %175 = getelementptr inbounds %struct.in6_pktinfo, ptr %12, i32 0, i32 1
  store i32 %173, ptr %175, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef align 4 dereferenceable(16) %174, i32 16, i1 false) #11
  %176 = call i32 @put_cmsg(ptr noundef nonnull %8, i32 noundef 41, i32 noundef 2, i32 noundef 20, ptr noundef nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %12) #11
  %177 = load i16, ptr %116, align 4
  br label %178

178:                                              ; preds = %172, %158
  %179 = phi i16 [ %177, %172 ], [ %159, %158 ]
  %180 = and i16 %179, 32
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #11
  %183 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 5
  %184 = load i32, ptr %183, align 4
  %185 = ashr i32 %184, 23
  store i32 %185, ptr %13, align 4
  %186 = call i32 @put_cmsg(ptr noundef nonnull %8, i32 noundef 41, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  %187 = load i16, ptr %116, align 4
  br label %188

188:                                              ; preds = %182, %178
  %189 = phi i16 [ %187, %182 ], [ %179, %178 ]
  %190 = and i16 %189, 1024
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %188
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #11
  %193 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 12
  %194 = load i32, ptr %193, align 4
  store i32 %194, ptr %14, align 4
  %195 = call i32 @put_cmsg(ptr noundef nonnull %8, i32 noundef 41, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #11
  br label %196

196:                                              ; preds = %192, %188, %114
  %197 = load i32, ptr %109, align 8
  %198 = sub i32 %43, %197
  %199 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #8, !srcloc !23
  %200 = and i32 %199, -13
  %201 = or i32 %200, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %201) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %202 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %198, i32 -1090519041) #11, !srcloc !38
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %199) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  br label %203

203:                                              ; preds = %196, %103
  %204 = phi i32 [ %202, %196 ], [ -92, %103 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #11
  br label %569

205:                                              ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !34
  %206 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %207 = load volatile ptr, ptr %206, align 8
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !39
  br label %569

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.dst_entry, ptr %207, i32 0, i32 1
  %212 = load ptr, ptr %211, align 4
  %213 = getelementptr inbounds %struct.dst_ops, ptr %212, i32 0, i32 5
  %214 = load ptr, ptr %213, align 4
  %215 = tail call i32 %214(ptr noundef nonnull %207) #11
  store i32 %215, ptr %7, align 4
  %216 = icmp eq i32 %215, 0
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !39
  br i1 %216, label %569, label %549

217:                                              ; preds = %45
  %218 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %219 = load i8, ptr %218, align 1
  %220 = lshr i8 %219, 5
  %221 = and i8 %220, 1
  %222 = zext i8 %221 to i32
  store i32 %222, ptr %7, align 4
  br label %549

223:                                              ; preds = %45
  %224 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 8
  %225 = load i16, ptr %224, align 4
  %226 = lshr i16 %225, 2
  %227 = and i16 %226, 1
  %228 = zext i16 %227 to i32
  store i32 %228, ptr %7, align 4
  br label %549

229:                                              ; preds = %45
  %230 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 8
  %231 = load i16, ptr %230, align 4
  %232 = lshr i16 %231, 3
  %233 = and i16 %232, 1
  %234 = zext i16 %233 to i32
  store i32 %234, ptr %7, align 4
  br label %549

235:                                              ; preds = %45
  %236 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 8
  %237 = load i16, ptr %236, align 4
  %238 = lshr i16 %237, 4
  %239 = and i16 %238, 1
  %240 = zext i16 %239 to i32
  store i32 %240, ptr %7, align 4
  br label %549

241:                                              ; preds = %45
  %242 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 8
  %243 = load i16, ptr %242, align 4
  %244 = lshr i16 %243, 5
  %245 = and i16 %244, 1
  %246 = zext i16 %245 to i32
  store i32 %246, ptr %7, align 4
  br label %549

247:                                              ; preds = %45
  %248 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 8
  %249 = load i16, ptr %248, align 4
  %250 = and i16 %249, 1
  %251 = zext i16 %250 to i32
  store i32 %251, ptr %7, align 4
  br label %549

252:                                              ; preds = %45
  %253 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 8
  %254 = load i16, ptr %253, align 4
  %255 = lshr i16 %254, 1
  %256 = and i16 %255, 1
  %257 = zext i16 %256 to i32
  store i32 %257, ptr %7, align 4
  br label %549

258:                                              ; preds = %45, %45, %45, %45
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #11
  %259 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 17
  %260 = load ptr, ptr %259, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %295, label %262

262:                                              ; preds = %258
  switch i32 %2, label %293 [
    i32 54, label %263
    i32 55, label %265
    i32 57, label %267
    i32 59, label %269
  ]

263:                                              ; preds = %262
  %264 = getelementptr inbounds %struct.ipv6_txoptions, ptr %260, i32 0, i32 4
  br label %271

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.ipv6_txoptions, ptr %260, i32 0, i32 5
  br label %271

267:                                              ; preds = %262
  %268 = getelementptr inbounds %struct.ipv6_txoptions, ptr %260, i32 0, i32 6
  br label %271

269:                                              ; preds = %262
  %270 = getelementptr inbounds %struct.ipv6_txoptions, ptr %260, i32 0, i32 7
  br label %271

271:                                              ; preds = %269, %267, %265, %263
  %272 = phi ptr [ %270, %269 ], [ %268, %267 ], [ %266, %265 ], [ %264, %263 ]
  %273 = load ptr, ptr %272, align 4
  %274 = icmp eq ptr %273, null
  br i1 %274, label %295, label %275

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %273, i32 0, i32 1
  %277 = load i8, ptr %276, align 1
  %278 = zext i8 %277 to i32
  %279 = shl nuw nsw i32 %278, 3
  %280 = add nuw nsw i32 %279, 8
  %281 = tail call i32 @llvm.umin.i32(i32 %280, i32 %43) #11
  %282 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %281, i32 -1090519040) #12, !srcloc !40
  %283 = extractvalue { i32, i32 } %282, 0
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %275
  %286 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #8, !srcloc !23
  %287 = and i32 %286, -13
  %288 = or i32 %287, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %288) #11, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %289 = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %273, i32 noundef %281) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %286) #11, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  br label %290

290:                                              ; preds = %285, %275
  %291 = phi i32 [ %289, %285 ], [ %281, %275 ]
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %295, label %293

293:                                              ; preds = %290, %262
  %294 = phi i32 [ -14, %290 ], [ -22, %262 ]
  tail call void @release_sock(ptr noundef %0) #11
  br label %569

295:                                              ; preds = %290, %271, %258
  %296 = phi i32 [ 0, %258 ], [ 0, %271 ], [ %281, %290 ]
  tail call void @release_sock(ptr noundef %0) #11
  %297 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #8, !srcloc !23
  %298 = and i32 %297, -13
  %299 = or i32 %298, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %299) #11, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %300 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %296, i32 -1090519041) #11, !srcloc !41
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %297) #11, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  br label %569

301:                                              ; preds = %45
  %302 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 8
  %303 = load i16, ptr %302, align 4
  %304 = lshr i16 %303, 6
  %305 = and i16 %304, 1
  %306 = zext i16 %305 to i32
  store i32 %306, ptr %7, align 4
  br label %549

307:                                              ; preds = %45
  %308 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 8
  %309 = load i16, ptr %308, align 4
  %310 = lshr i16 %309, 7
  %311 = and i16 %310, 1
  %312 = zext i16 %311 to i32
  store i32 %312, ptr %7, align 4
  br label %549

313:                                              ; preds = %45
  %314 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 8
  %315 = load i16, ptr %314, align 4
  %316 = lshr i16 %315, 8
  %317 = and i16 %316, 1
  %318 = zext i16 %317 to i32
  store i32 %318, ptr %7, align 4
  br label %549

319:                                              ; preds = %45
  %320 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 8
  %321 = load i16, ptr %320, align 4
  %322 = lshr i16 %321, 9
  %323 = and i16 %322, 1
  %324 = zext i16 %323 to i32
  store i32 %324, ptr %7, align 4
  br label %549

325:                                              ; preds = %45
  %326 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 11
  %327 = load i8, ptr %326, align 1
  %328 = zext i8 %327 to i32
  store i32 %328, ptr %7, align 4
  br label %549

329:                                              ; preds = %45
  %330 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 8
  %331 = load i16, ptr %330, align 4
  %332 = lshr i16 %331, 11
  %333 = and i16 %332, 1
  %334 = zext i16 %333 to i32
  store i32 %334, ptr %7, align 4
  br label %549

335:                                              ; preds = %45
  %336 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 8
  %337 = load i16, ptr %336, align 4
  %338 = lshr i16 %337, 10
  %339 = and i16 %338, 1
  %340 = zext i16 %339 to i32
  store i32 %340, ptr %7, align 4
  br label %549

341:                                              ; preds = %45
  %342 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 8
  %343 = load i16, ptr %342, align 4
  %344 = lshr i16 %343, 12
  %345 = and i16 %344, 1
  %346 = zext i16 %345 to i32
  store i32 %346, ptr %7, align 4
  br label %549

347:                                              ; preds = %45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #11
  %348 = icmp ult i32 %43, 32
  br i1 %348, label %379, label %349

349:                                              ; preds = %347
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %15, i8 0, i32 28, i1 false) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !34
  %350 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %351 = load volatile ptr, ptr %350, align 8
  %352 = icmp eq ptr %351, null
  br i1 %352, label %353, label %354

353:                                              ; preds = %349
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !39
  br label %379

354:                                              ; preds = %349
  %355 = getelementptr inbounds %struct.dst_entry, ptr %351, i32 0, i32 1
  %356 = load ptr, ptr %355, align 4
  %357 = getelementptr inbounds %struct.dst_ops, ptr %356, i32 0, i32 5
  %358 = load ptr, ptr %357, align 4
  %359 = tail call i32 %358(ptr noundef nonnull %351) #11
  %360 = getelementptr inbounds %struct.ip6_mtuinfo, ptr %15, i32 0, i32 1
  store i32 %359, ptr %360, align 4
  %361 = icmp eq i32 %359, 0
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !39
  br i1 %361, label %379, label %362

362:                                              ; preds = %354
  %363 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #8, !srcloc !23
  %364 = and i32 %363, -13
  %365 = or i32 %364, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %365) #11, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %366 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 32, i32 -1090519041) #11, !srcloc !42
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %363) #11, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %379

368:                                              ; preds = %362
  %369 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 32, i32 -1090519040) #12, !srcloc !40
  %370 = extractvalue { i32, i32 } %369, 0
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %379

372:                                              ; preds = %368
  %373 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #8, !srcloc !23
  %374 = and i32 %373, -13
  %375 = or i32 %374, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %375) #11, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %376 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %15, i32 noundef 32) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %373) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %377 = icmp eq i32 %376, 0
  %378 = select i1 %377, i32 0, i32 -14
  br label %379

379:                                              ; preds = %372, %368, %362, %354, %353, %347
  %380 = phi i32 [ -22, %347 ], [ -107, %354 ], [ -14, %362 ], [ -14, %368 ], [ %378, %372 ], [ -107, %353 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #11
  br label %569

381:                                              ; preds = %45
  %382 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %383 = load i16, ptr %382, align 8
  %384 = lshr i16 %383, 5
  %385 = and i16 %384, 1
  %386 = zext i16 %385 to i32
  store i32 %386, ptr %7, align 4
  br label %549

387:                                              ; preds = %45
  %388 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %389 = load i16, ptr %388, align 8
  %390 = lshr i16 %389, 2
  %391 = and i16 %390, 1
  %392 = zext i16 %391 to i32
  store i32 %392, ptr %7, align 4
  br label %549

393:                                              ; preds = %45
  %394 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 8
  %395 = load i16, ptr %394, align 4
  %396 = lshr i16 %395, 13
  %397 = and i16 %396, 1
  %398 = zext i16 %397 to i32
  store i32 %398, ptr %7, align 4
  br label %549

399:                                              ; preds = %45
  %400 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 5
  %401 = load i32, ptr %400, align 4
  %402 = shl i32 %401, 16
  br label %406

403:                                              ; preds = %45
  %404 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 5
  %405 = load i32, ptr %404, align 4
  br label %406

406:                                              ; preds = %403, %399
  %407 = phi i32 [ %405, %403 ], [ %402, %399 ]
  %408 = ashr i32 %407, 23
  store i32 %408, ptr %7, align 4
  %409 = icmp slt i32 %407, 0
  br i1 %409, label %410, label %418

410:                                              ; preds = %406
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !34
  %411 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %412 = load volatile ptr, ptr %411, align 8
  %413 = icmp eq ptr %412, null
  br i1 %413, label %416, label %414

414:                                              ; preds = %410
  %415 = tail call i32 @ip6_dst_hoplimit(ptr noundef nonnull %412) #11
  store i32 %415, ptr %7, align 4
  br label %416

416:                                              ; preds = %414, %410
  %417 = phi i32 [ %415, %414 ], [ %408, %410 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !39
  br label %418

418:                                              ; preds = %416, %406
  %419 = phi i32 [ %417, %416 ], [ %408, %406 ]
  %420 = icmp slt i32 %419, 0
  br i1 %420, label %421, label %549

421:                                              ; preds = %418
  %422 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %423 = getelementptr inbounds %struct.ipv6_devconf, ptr %422, i32 0, i32 1
  %424 = load i32, ptr %423, align 4
  store i32 %424, ptr %7, align 4
  br label %549

425:                                              ; preds = %45
  %426 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 5
  %427 = load i32, ptr %426, align 4
  %428 = lshr i32 %427, 16
  %429 = and i32 %428, 1
  store i32 %429, ptr %7, align 4
  br label %549

430:                                              ; preds = %45
  %431 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 7
  %432 = load i32, ptr %431, align 4
  store i32 %432, ptr %7, align 4
  br label %549

433:                                              ; preds = %45
  %434 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 9
  %435 = load i16, ptr %434, align 2
  %436 = lshr i16 %435, 13
  %437 = and i16 %436, 1
  %438 = zext i16 %437 to i32
  store i32 %438, ptr %7, align 4
  br label %549

439:                                              ; preds = %45
  %440 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 6
  %441 = load i32, ptr %440, align 4
  %442 = tail call i32 @llvm.bswap.i32(i32 %441) #11
  store i32 %442, ptr %7, align 4
  br label %549

443:                                              ; preds = %45
  %444 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 9
  %445 = load i16, ptr %444, align 2
  %446 = lshr i16 %445, 3
  %447 = and i16 %446, 7
  %448 = zext i16 %447 to i32
  store i32 %448, ptr %7, align 4
  br label %549

449:                                              ; preds = %45
  %450 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 9
  %451 = load i16, ptr %450, align 2
  %452 = and i16 %451, 1
  %453 = zext i16 %452 to i32
  store i32 %453, ptr %7, align 4
  br label %549

454:                                              ; preds = %45
  %455 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 9
  %456 = load i16, ptr %455, align 2
  %457 = lshr i16 %456, 1
  %458 = and i16 %457, 1
  %459 = zext i16 %458 to i32
  store i32 %459, ptr %7, align 4
  br label %549

460:                                              ; preds = %45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %16, i8 0, i32 32, i1 false) #11, !annotation !21
  %461 = icmp ult i32 %43, 32
  br i1 %461, label %499, label %462

462:                                              ; preds = %460
  %463 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 32, i32 -1090519040) #12
  %464 = extractvalue { i32, i32 } %463, 0
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %472, !prof !12

466:                                              ; preds = %462
  %467 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #8, !srcloc !23
  %468 = and i32 %467, -13
  %469 = or i32 %468, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %469) #11, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %470 = call i32 @arm_copy_from_user(ptr noundef nonnull %16, ptr noundef %3, i32 noundef 32) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %467) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %476, label %472, !prof !12

472:                                              ; preds = %466, %462
  %473 = phi i32 [ %470, %466 ], [ 32, %462 ]
  %474 = sub i32 32, %473
  %475 = getelementptr i8, ptr %16, i32 %474
  call void @llvm.memset.p0.i32(ptr align 1 %475, i8 0, i32 %473, i1 false) #11
  br label %499

476:                                              ; preds = %466
  %477 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %16, i32 0, i32 2
  %478 = load i8, ptr %477, align 4
  %479 = icmp eq i8 %478, 0
  br i1 %479, label %480, label %499

480:                                              ; preds = %476
  %481 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %16, i32 0, i32 4
  %482 = load i16, ptr %481, align 2
  %483 = zext i16 %482 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %16, i8 0, i32 32, i1 false) #11
  %484 = call i32 @ipv6_flowlabel_opt_get(ptr noundef %0, ptr noundef nonnull %16, i32 noundef %483) #11
  store i32 %484, ptr %7, align 4
  %485 = icmp slt i32 %484, 0
  br i1 %485, label %499, label %486

486:                                              ; preds = %480
  %487 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #8, !srcloc !23
  %488 = and i32 %487, -13
  %489 = or i32 %488, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %489) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %490 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 32, i32 -1090519041) #11, !srcloc !43
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %487) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %492, label %499

492:                                              ; preds = %486
  %493 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #8, !srcloc !23
  %494 = and i32 %493, -13
  %495 = or i32 %494, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %495) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %496 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %16, i32 noundef 32) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %493) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %497 = icmp eq i32 %496, 0
  %498 = select i1 %497, i32 0, i32 -14
  br label %499

499:                                              ; preds = %492, %486, %480, %476, %472, %460
  %500 = phi i32 [ -22, %460 ], [ -22, %476 ], [ %484, %480 ], [ -14, %486 ], [ -14, %472 ], [ %498, %492 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #11
  br label %569

501:                                              ; preds = %45
  %502 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 9
  %503 = load i16, ptr %502, align 2
  %504 = lshr i16 %503, 7
  %505 = and i16 %504, 7
  %506 = zext i16 %505 to i32
  %507 = and i32 %506, 1
  %508 = icmp eq i32 %507, 0
  %509 = and i32 %506, 2
  %510 = icmp eq i32 %509, 0
  %511 = select i1 %510, i32 256, i32 2
  %512 = select i1 %508, i32 %511, i32 1
  %513 = and i16 %503, 512
  %514 = icmp eq i16 %513, 0
  br i1 %514, label %517, label %515

515:                                              ; preds = %501
  %516 = or i32 %512, 4
  store i32 %516, ptr %7, align 4
  br label %549

517:                                              ; preds = %501
  %518 = or i32 %512, 1024
  store i32 %518, ptr %7, align 4
  br label %549

519:                                              ; preds = %45
  %520 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 10
  %521 = load i8, ptr %520, align 4
  %522 = zext i8 %521 to i32
  store i32 %522, ptr %7, align 4
  br label %549

523:                                              ; preds = %45
  %524 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 9
  %525 = load i16, ptr %524, align 2
  %526 = lshr i16 %525, 10
  %527 = and i16 %526, 1
  %528 = zext i16 %527 to i32
  store i32 %528, ptr %7, align 4
  br label %549

529:                                              ; preds = %45
  %530 = tail call zeroext i1 @ip6_autoflowlabel(ptr noundef nonnull @init_net, ptr noundef %35) #11
  %531 = zext i1 %530 to i32
  store i32 %531, ptr %7, align 4
  br label %549

532:                                              ; preds = %45
  %533 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 8
  %534 = load i16, ptr %533, align 4
  %535 = lshr i16 %534, 14
  %536 = and i16 %535, 1
  %537 = zext i16 %536 to i32
  store i32 %537, ptr %7, align 4
  br label %549

538:                                              ; preds = %45
  %539 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 9
  %540 = load i16, ptr %539, align 2
  %541 = lshr i16 %540, 15
  %542 = zext i16 %541 to i32
  store i32 %542, ptr %7, align 4
  br label %549

543:                                              ; preds = %45
  %544 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 9
  %545 = load i16, ptr %544, align 2
  %546 = lshr i16 %545, 14
  %547 = and i16 %546, 1
  %548 = zext i16 %547 to i32
  store i32 %548, ptr %7, align 4
  br label %549

549:                                              ; preds = %543, %538, %532, %529, %523, %519, %517, %515, %454, %449, %443, %439, %433, %430, %425, %421, %418, %393, %387, %381, %341, %335, %329, %325, %319, %313, %307, %301, %252, %247, %241, %235, %229, %223, %217, %210, %52
  %550 = tail call i32 @llvm.umin.i32(i32 %43, i32 4) #11
  %551 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #8, !srcloc !23
  %552 = and i32 %551, -13
  %553 = or i32 %552, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %553) #11, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %554 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %550, i32 -1090519041) #11, !srcloc !44
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %551) #11, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %569

556:                                              ; preds = %549
  %557 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %550, i32 -1090519040) #12, !srcloc !40
  %558 = extractvalue { i32, i32 } %557, 0
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %560, label %565

560:                                              ; preds = %556
  %561 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #8, !srcloc !23
  %562 = and i32 %561, -13
  %563 = or i32 %562, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %563) #11, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %564 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %7, i32 noundef %550) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %561) #11, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  br label %565

565:                                              ; preds = %560, %556
  %566 = phi i32 [ %564, %560 ], [ %550, %556 ]
  %567 = icmp eq i32 %566, 0
  %568 = select i1 %567, i32 0, i32 -14
  br label %569

569:                                              ; preds = %565, %549, %499, %379, %295, %293, %210, %209, %203, %101, %49, %46, %45, %34
  %570 = phi i32 [ %500, %499 ], [ %380, %379 ], [ -107, %210 ], [ %204, %203 ], [ %102, %101 ], [ -14, %34 ], [ -92, %46 ], [ -107, %49 ], [ %300, %295 ], [ -92, %45 ], [ -14, %549 ], [ %568, %565 ], [ %294, %293 ], [ -107, %209 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %571

571:                                              ; preds = %569, %21, %17, %5
  %572 = phi i32 [ %23, %21 ], [ %570, %569 ], [ -92, %5 ], [ -92, %17 ]
  ret i32 %572
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fl6_free_socklist(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ipv6_sock_mc_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ipv6_sock_ac_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sync_mss(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_datagram_send_ctl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_sock_mc_join(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_sock_mc_drop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_sock_ac_join(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_sock_ac_drop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_flowlabel_opt(ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_user_policy(ptr noundef, i32 noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @memdup_sockptr([2 x i32] %0, i32 noundef %1) unnamed_addr #9 {
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call ptr @__kmalloc_track_caller(i32 noundef %1, i32 noundef 1060032, i32 noundef %4) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %2
  %8 = extractvalue [2 x i32] %0, 0
  %9 = inttoptr i32 %8 to ptr
  %10 = extractvalue [2 x i32] %0, 1
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %7
  %14 = icmp slt i32 %1, 0
  %15 = load i1, ptr @check_copy_size.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !15

18:                                               ; preds = %13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %19

19:                                               ; preds = %18, %13
  br i1 %14, label %38, label %20, !prof !15

20:                                               ; preds = %19
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 %1, i32 -1090519040) #12, !srcloc !22
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31, !prof !12

24:                                               ; preds = %20
  %25 = tail call ptr @llvm.thread.pointer() #11
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %26) #8, !srcloc !23
  %28 = and i32 %27, -13
  %29 = or i32 %28, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #11, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  %30 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %9, i32 noundef %1) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #11, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !25
  br label %31

31:                                               ; preds = %24, %20
  %32 = phi i32 [ %30, %24 ], [ %1, %20 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34, !prof !12

34:                                               ; preds = %31
  %35 = sub i32 %1, %32
  %36 = getelementptr i8, ptr %5, i32 %35
  tail call void @llvm.memset.p0.i32(ptr align 1 %36, i8 0, i32 %32, i1 false) #11
  br label %38

37:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %5, ptr align 1 %9, i32 %1, i1 false) #11
  br label %39

38:                                               ; preds = %34, %19
  tail call void @kfree(ptr noundef nonnull %5) #11
  br label %39

39:                                               ; preds = %38, %37, %31, %2
  %40 = phi ptr [ inttoptr (i32 -14 to ptr), %38 ], [ inttoptr (i32 -12 to ptr), %2 ], [ %5, %31 ], [ %5, %37 ]
  ret ptr %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_renew_options(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @seg6_validate_srh(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_sock_mc_join_ssm(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_mc_source(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_mc_msfilter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_datagram_recv_ctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_flowlabel_opt_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ip6_autoflowlabel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_mc_msfget(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone }

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
!9 = !{i64 2148175847}
!10 = !{i64 572781, i64 2148062752, i64 2148062778, i64 2148062825, i64 2148062847, i64 2148062875, i64 2148062895}
!11 = !{i64 2148077982, i64 2148078014, i64 2148078043, i64 2148078077, i64 2148078108, i64 2148078131}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149025294}
!14 = !{i64 2148075625, i64 2148075657, i64 2148075686, i64 2148075720, i64 2148075751, i64 2148075774}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2157534484}
!17 = !{i64 581431, i64 581448, i64 581472, i64 581498, i64 581516}
!18 = !{i64 2157534803}
!19 = !{i64 2155299330}
!20 = !{i64 2155299649}
!21 = !{!"auto-init"}
!22 = !{i64 2151348808, i64 2151348833}
!23 = !{i64 3844920}
!24 = !{i64 3845117}
!25 = !{i64 2151330396}
!26 = !{i64 478459, i64 478520}
!27 = !{i64 497159}
!28 = !{i64 481476}
!29 = !{i64 2157538199}
!30 = !{i64 2157538526}
!31 = !{i64 2148076524, i64 2148076550, i64 2148076579, i64 2148076613, i64 2148076644, i64 2148076667}
!32 = !{i64 2157539387}
!33 = !{i64 2157539714}
!34 = !{i64 2149075661}
!35 = !{i8 0, i8 2}
!36 = !{i64 2157604082, i64 2157604362, i64 2157604696, i64 2157605030}
!37 = !{i64 2157556223, i64 2157556503, i64 2157556837, i64 2157557171}
!38 = !{i64 2157613193, i64 2157613473, i64 2157613807, i64 2157614141}
!39 = !{i64 2149075878}
!40 = !{i64 2151349386, i64 2151349411}
!41 = !{i64 2157621761, i64 2157622041, i64 2157622375, i64 2157622709}
!42 = !{i64 2157629923, i64 2157630203, i64 2157630537, i64 2157630871}
!43 = !{i64 2157638319, i64 2157638599, i64 2157638933, i64 2157639267}
!44 = !{i64 2157648415, i64 2157648695, i64 2157649029, i64 2157649363}
