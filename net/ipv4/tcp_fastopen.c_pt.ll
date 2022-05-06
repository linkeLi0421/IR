; ModuleID = '/llk/IR/net/ipv4/tcp_fastopen.c_pt.bc'
source_filename = "../net/ipv4/tcp_fastopen.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_fastopen_defer_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_fastopen_defer_connect\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_fastopen_defer_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.172, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.172 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.tcp_fastopen_context = type { [2 x %struct.siphash_key_t], i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.181, %struct.anon.182, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.161, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.162, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.163, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.12, %union.anon.14, %union.anon.15, i16, i8, i8, i32, %union.anon.17, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.157, [0 x i32], %union.anon.158, i16, i16, %union.anon.159, %struct.refcount_struct, [0 x i32], %union.anon.160 }
%union.anon.12 = type { i64 }
%union.anon.14 = type { i32 }
%union.anon.15 = type { i32 }
%union.anon.17 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.132 }
%union.anon.132 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { %struct.hlist_node }
%union.anon.159 = type { i32 }
%union.anon.160 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.161 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.162 = type { ptr }
%union.anon.163 = type { ptr }
%struct.sk_buff_head = type { %union.anon.82, i32, %struct.spinlock }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.167 }
%union.anon.167 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.181 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.182 = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.75, %union.anon.138, %union.anon.139, [48 x i8], %union.anon.140, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.142, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, ptr, %union.anon.77 }
%union.anon.77 = type { ptr }
%union.anon.138 = type { ptr }
%union.anon.139 = type { i64 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { i32, ptr }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.144, i32, i32, i32, i16, i16, %union.anon.146, %union.anon.147, %union.anon.148, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.144 = type { i32 }
%union.anon.146 = type { i32 }
%union.anon.147 = type { i32 }
%union.anon.148 = type { i16 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.183, %struct.anon.184, %struct.anon.185, i32, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.183 = type { i32, i32, i64 }
%struct.anon.184 = type { i32, i32, i64 }
%struct.anon.185 = type { i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.155, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.155 = type { ptr }
%struct.tcp_fastopen_cookie = type { [2 x i64], i8, i8 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.request_sock_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.inet_connection_sock_af_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, ptr, ptr, ptr, ptr }
%struct.tcp_request_sock = type { %struct.inet_request_sock, ptr, i64, i8, i8, i32, i32, i32, i32, i32, i32, i8 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.196 }
%union.anon.196 = type { %struct.anon.197 }
%struct.anon.197 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.78, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.137, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.78 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.137 = type { ptr }
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

@__kstrtab_tcp_fastopen_defer_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_fastopen_defer_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_fastopen_defer_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_fastopen_defer_connect to i32), ptr @__kstrtab_tcp_fastopen_defer_connect, ptr @__kstrtabns_tcp_fastopen_defer_connect }, section "___ksymtab+tcp_fastopen_defer_connect", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_net = external dso_local global %struct.net, align 64
@reqsk_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"include/net/request_sock.h\00", align 1
@__const.tcp_fastopen_cookie_gen_check.search_foc = private unnamed_addr constant { [2 x i64], i8, i8, [6 x i8] } { [2 x i64] zeroinitializer, i8 -1, i8 0, [6 x i8] zeroinitializer }, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_tcp_fastopen_defer_connect], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_fastopen_init_key_once(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [16 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 103
  %4 = load volatile ptr, ptr %3, align 16
  %5 = icmp eq ptr %4, null
  tail call void asm sideeffect "", "~{memory}"() #9
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 16) #9
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 48) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = load i64, ptr %2, align 8
  store i64 %11, ptr %8, align 8
  %12 = getelementptr inbounds i8, ptr %2, i32 8
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr [2 x i64], ptr %8, i32 0, i32 1
  store i64 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.tcp_fastopen_context, ptr %8, i32 0, i32 1
  store i32 1, ptr %15, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %16 = ptrtoint ptr %8 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #9, !srcloc !12
  %17 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %16, ptr %3) #9, !srcloc !13
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %10
  %21 = inttoptr i32 %18 to ptr
  %22 = getelementptr inbounds %struct.tcp_fastopen_context, ptr %21, i32 0, i32 2
  call void @call_rcu(ptr noundef %22, ptr noundef nonnull @tcp_fastopen_ctx_free) #9
  br label %23

23:                                               ; preds = %20, %10, %6, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_fastopen_reset_cipher(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 48) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %4
  %9 = load i64, ptr %2, align 1
  store i64 %9, ptr %6, align 8
  %10 = getelementptr i8, ptr %2, i32 8
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr [2 x i64], ptr %6, i32 0, i32 1
  store i64 %11, ptr %12, align 8
  %13 = icmp eq ptr %3, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load i64, ptr %3, align 1
  %16 = getelementptr [2 x %struct.siphash_key_t], ptr %6, i32 0, i32 1
  store i64 %15, ptr %16, align 8
  %17 = getelementptr i8, ptr %3, i32 8
  %18 = load i64, ptr %17, align 1
  %19 = getelementptr [2 x %struct.siphash_key_t], ptr %6, i32 0, i32 1, i32 0, i32 1
  store i64 %18, ptr %19, align 8
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi i32 [ 2, %14 ], [ 1, %8 ]
  %22 = getelementptr inbounds %struct.tcp_fastopen_context, ptr %6, i32 0, i32 1
  store i32 %21, ptr %22, align 8
  %23 = icmp eq ptr %1, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 1, i32 7, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %26 = ptrtoint ptr %6 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #9, !srcloc !12
  %27 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %26, ptr %25) #9, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  br label %32

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 103
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %30 = ptrtoint ptr %6 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #9, !srcloc !12
  %31 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %30, ptr %29) #9, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi { i32, i32 } [ %27, %24 ], [ %31, %28 ]
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = inttoptr i32 %34 to ptr
  %38 = getelementptr inbounds %struct.tcp_fastopen_context, ptr %37, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %38, ptr noundef nonnull @tcp_fastopen_ctx_free) #9
  br label %39

39:                                               ; preds = %36, %32, %4
  %40 = phi i32 [ 0, %36 ], [ 0, %32 ], [ -12, %4 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_fastopen_destroy_cipher(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 7, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tcp_fastopen_context, ptr %3, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %6, ptr noundef nonnull @tcp_fastopen_ctx_free) #9
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_fastopen_ctx_free(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -36
  tail call void @kfree_sensitive(ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_fastopen_ctx_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 103
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #9, !srcloc !12
  %3 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %2) #9, !srcloc !13
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = inttoptr i32 %4 to ptr
  %8 = getelementptr inbounds %struct.tcp_fastopen_context, ptr %7, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %8, ptr noundef nonnull @tcp_fastopen_ctx_free) #9
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_fastopen_get_cipher(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 1, i32 7, i32 5
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 103
  %7 = select i1 %4, ptr %6, ptr %5
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tcp_fastopen_context, ptr %8, i32 0, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %14, %10
  %15 = phi i32 [ %23, %14 ], [ 0, %10 ]
  %16 = getelementptr [2 x %struct.siphash_key_t], ptr %8, i32 0, i32 %15
  %17 = load i64, ptr %16, align 8
  %18 = shl nuw i32 %15, 1
  %19 = getelementptr i64, ptr %2, i32 %18
  store i64 %17, ptr %19, align 1
  %20 = getelementptr [2 x i64], ptr %16, i32 0, i32 1
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr i64, ptr %19, i32 1
  store i64 %21, ptr %22, align 1
  %23 = add nuw nsw i32 %15, 1
  %24 = icmp eq i32 %23, %12
  br i1 %24, label %25, label %14

25:                                               ; preds = %14, %10, %3
  %26 = phi i32 [ 0, %3 ], [ %12, %10 ], [ %12, %14 ]
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_fastopen_add_skb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %123, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @skb_clone(ptr noundef %1, i32 noundef 2592) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %123, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = and i32 %13, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = and i32 %13, -2
  %20 = inttoptr i32 %19 to ptr
  tail call void @dst_release(ptr noundef %20) #9
  br label %21

21:                                               ; preds = %18, %15
  store i32 0, ptr %12, align 8
  br label %22

22:                                               ; preds = %21, %11
  %23 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 5
  store i32 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.skb_shared_info, ptr %25, i32 0, i32 5
  %27 = load i16, ptr %26, align 2
  %28 = icmp eq i16 %27, 0
  %29 = select i1 %28, i16 1, i16 %27
  %30 = zext i16 %29 to i32
  store volatile i32 %30, ptr %23, align 8
  %31 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 16
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 13, i32 0, i32 17
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = getelementptr i8, ptr %34, i32 %37
  %39 = getelementptr inbounds %struct.tcphdr, ptr %38, i32 0, i32 4
  %40 = load i16, ptr %39, align 4
  %41 = lshr i16 %40, 2
  %42 = and i16 %41, 60
  %43 = zext i16 %42 to i32
  %44 = icmp ugt i32 %32, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %22
  %46 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, %30
  store volatile i32 %48, ptr %46, align 4
  %49 = load ptr, ptr %33, align 8
  %50 = load i16, ptr %35, align 2
  %51 = zext i16 %50 to i32
  %52 = getelementptr i8, ptr %49, i32 %51
  %53 = getelementptr inbounds %struct.tcphdr, ptr %52, i32 0, i32 4
  %54 = load i16, ptr %53, align 4
  %55 = load i32, ptr %31, align 8
  %56 = lshr i16 %54, 2
  %57 = and i16 %56, 60
  %58 = zext i16 %57 to i32
  br label %59

59:                                               ; preds = %45, %22
  %60 = phi i32 [ %43, %22 ], [ %58, %45 ]
  %61 = phi i32 [ %32, %22 ], [ %55, %45 ]
  %62 = sub i32 %61, %60
  store i32 %62, ptr %31, align 8
  %63 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = icmp ult i32 %62, %64
  br i1 %65, label %66, label %67, !prof !20

66:                                               ; preds = %59
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 17
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 %60
  store ptr %70, ptr %68, align 4
  %71 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 18
  %72 = load i32, ptr %71, align 8
  tail call void @sk_forced_mem_schedule(ptr noundef %0, i32 noundef %72) #9
  %73 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 4, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %67
  tail call void %74(ptr noundef nonnull %9) #9
  br label %82

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81, !prof !22

81:                                               ; preds = %77
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #9, !srcloc !23
  unreachable

82:                                               ; preds = %77, %76
  %83 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 1
  store ptr %0, ptr %83, align 4
  store ptr @sock_rfree, ptr %73, align 4
  %84 = load i32, ptr %71, align 8
  %85 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %85) #9, !srcloc !12
  %86 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %85, ptr %85, i32 %84, ptr elementtype(i32) %85) #9, !srcloc !24
  %87 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.proto, ptr %88, i32 0, i32 30
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %82
  %93 = load i32, ptr %71, align 8
  %94 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %95 = load i32, ptr %94, align 4
  %96 = sub i32 %95, %93
  store i32 %96, ptr %94, align 4
  br label %97

97:                                               ; preds = %92, %82
  %98 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3
  %99 = load i32, ptr %98, align 8
  %100 = add i32 %99, 1
  store i32 %100, ptr %98, align 8
  %101 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 12
  %102 = load i8, ptr %101, align 4
  %103 = and i8 %102, -3
  store i8 %103, ptr %101, align 4
  %104 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 4
  %105 = load i32, ptr %104, align 4
  store i32 %105, ptr %5, align 8
  %106 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %107 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  store volatile ptr %106, ptr %9, align 8
  %109 = getelementptr inbounds %struct.anon.76, ptr %9, i32 0, i32 1
  store volatile ptr %108, ptr %109, align 4
  store volatile ptr %9, ptr %107, align 4
  store volatile ptr %9, ptr %108, align 4
  %110 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %111, 1
  store volatile i32 %112, ptr %110, align 4
  %113 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %114 = load i8, ptr %113, align 1
  %115 = or i8 %114, 64
  store i8 %115, ptr %113, align 1
  %116 = load i32, ptr %31, align 8
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 4
  store i64 %117, ptr %118, align 8
  %119 = load i8, ptr %101, align 4
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %97
  tail call void @tcp_fin(ptr noundef %0) #9
  br label %123

123:                                              ; preds = %122, %97, %8, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_forced_mem_schedule(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_fin(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tcp_try_fastopen(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca %struct.tcp_fastopen_cookie, align 8
  %8 = alloca %struct.tcp_fastopen_cookie, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr %9, align 8
  %13 = add i32 %12, 1
  %14 = icmp eq i32 %11, %13
  %15 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 101), align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) @__const.tcp_fastopen_cookie_gen_check.search_foc, i32 24, i1 false)
  %16 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %3, i32 0, i32 1
  %17 = load i8, ptr %16, align 8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %5
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !25
  %21 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %22 = getelementptr [126 x i32], ptr %21, i32 0, i32 89
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #6, !srcloc !26
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #9, !srcloc !27
  br label %31

31:                                               ; preds = %19, %5
  %32 = and i32 %15, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %114, label %34

34:                                               ; preds = %31
  br i1 %14, label %35, label %38

35:                                               ; preds = %34
  %36 = load i8, ptr %16, align 8
  %37 = icmp sgt i8 %36, -1
  br i1 %37, label %38, label %114

38:                                               ; preds = %35, %34
  %39 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 7
  %40 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 7, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %114, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 7, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = icmp slt i32 %45, %41
  br i1 %46, label %115, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 7, i32 2
  tail call void @_raw_spin_lock(ptr noundef %48) #9
  %49 = load ptr, ptr %39, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load volatile i32, ptr @jiffies, align 64
  %53 = getelementptr inbounds %struct.request_sock, ptr %49, i32 0, i32 6, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = sub i32 %52, %54
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %51, %47
  %58 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %59 = getelementptr [126 x i32], ptr %58, i32 0, i32 88
  %60 = ptrtoint ptr %59 to i32
  %61 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %62 = inttoptr i32 %61 to ptr
  %63 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %62) #6, !srcloc !26
  %64 = add i32 %63, %60
  %65 = inttoptr i32 %64 to ptr
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  %68 = load i16, ptr %48, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %48, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  br label %114

70:                                               ; preds = %51
  %71 = getelementptr inbounds %struct.request_sock, ptr %49, i32 0, i32 1
  %72 = load ptr, ptr %71, align 8
  store ptr %72, ptr %39, align 4
  %73 = load i32, ptr %44, align 4
  %74 = add i32 %73, -1
  store i32 %74, ptr %44, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  %75 = load i16, ptr %48, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr %48, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !29
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %77 = getelementptr inbounds %struct.sock_common, ptr %49, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %77) #9, !srcloc !12
  %78 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %77, ptr %77, i32 1, ptr elementtype(i32) %77) #9, !srcloc !33
  %79 = extractvalue { i32, i32, i32 } %78, 0
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %84, label %81

81:                                               ; preds = %70
  %82 = icmp sgt i32 %79, 0
  br i1 %82, label %115, label %83, !prof !22

83:                                               ; preds = %81
  tail call void @refcount_warn_saturate(ptr noundef %77, i32 noundef 3) #9
  br label %115

84:                                               ; preds = %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !34
  %85 = load volatile i32, ptr %77, align 4
  %86 = icmp ne i32 %85, 0
  %87 = load i1, ptr @reqsk_free.__already_done, align 1
  %88 = xor i1 %87, true
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %91, !prof !20

90:                                               ; preds = %84
  store i1 true, ptr @reqsk_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 126, i32 noundef 9, ptr noundef null) #9
  br label %91

91:                                               ; preds = %90, %84
  %92 = getelementptr inbounds %struct.request_sock, ptr %49, i32 0, i32 7
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.request_sock_ops, ptr %93, i32 0, i32 7
  %95 = load ptr, ptr %94, align 4
  tail call void %95(ptr noundef nonnull %49) #9
  %96 = getelementptr inbounds %struct.sock_common, ptr %49, i32 0, i32 13
  %97 = load ptr, ptr %96, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %108, label %99

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.sock_common, ptr %97, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %100) #9, !srcloc !12
  %101 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %100, ptr %100, i32 1, ptr elementtype(i32) %100) #9, !srcloc !33
  %102 = extractvalue { i32, i32, i32 } %101, 0
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = icmp sgt i32 %102, 0
  br i1 %105, label %108, label %106, !prof !22

106:                                              ; preds = %104
  tail call void @refcount_warn_saturate(ptr noundef %100, i32 noundef 3) #9
  br label %108

107:                                              ; preds = %99
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !34
  tail call void @sk_free(ptr noundef nonnull %97) #9
  br label %108

108:                                              ; preds = %107, %106, %104, %91
  %109 = getelementptr inbounds %struct.request_sock, ptr %49, i32 0, i32 9
  %110 = load ptr, ptr %109, align 8
  tail call void @kfree(ptr noundef %110) #9
  %111 = load ptr, ptr %92, align 8
  %112 = getelementptr inbounds %struct.request_sock_ops, ptr %111, i32 0, i32 2
  %113 = load ptr, ptr %112, align 4
  tail call void @kmem_cache_free(ptr noundef %113, ptr noundef nonnull %49) #9
  br label %115

114:                                              ; preds = %57, %38, %35, %31
  store i8 -1, ptr %16, align 8
  br label %326

115:                                              ; preds = %108, %83, %81, %43
  %116 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 101), align 8
  %117 = and i32 %116, 512
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %240

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %121 = load i16, ptr %120, align 4
  %122 = and i16 %121, 16
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %240

124:                                              ; preds = %119
  %125 = icmp eq ptr %4, null
  br i1 %125, label %134, label %126

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 2
  %128 = load i32, ptr %127, align 4
  %129 = and i32 %128, -4
  %130 = inttoptr i32 %129 to ptr
  %131 = getelementptr i32, ptr %130, i32 16
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %240

134:                                              ; preds = %126, %124
  %135 = load i8, ptr %16, align 8
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %171

137:                                              ; preds = %134
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  %138 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 7, i32 5
  %139 = load volatile ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 103), align 16
  %143 = icmp eq ptr %142, null
  br i1 %143, label %170, label %144

144:                                              ; preds = %141, %137
  %145 = phi ptr [ %142, %141 ], [ %139, %137 ]
  %146 = getelementptr inbounds %struct.request_sock, ptr %2, i32 0, i32 7
  %147 = load ptr, ptr %146, align 8
  %148 = load i32, ptr %147, align 4
  switch i32 %148, label %170 [
    i32 2, label %149
    i32 10, label %158
  ]

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %153 = load i16, ptr %152, align 4
  %154 = zext i16 %153 to i32
  %155 = getelementptr i8, ptr %151, i32 %154
  %156 = getelementptr inbounds %struct.iphdr, ptr %155, i32 0, i32 8
  %157 = tail call i64 @__siphash_unaligned(ptr noundef %156, i32 noundef 8, ptr noundef nonnull %145) #9
  br label %167

158:                                              ; preds = %144
  %159 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %160 = load ptr, ptr %159, align 8
  %161 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %162 = load i16, ptr %161, align 4
  %163 = zext i16 %162 to i32
  %164 = getelementptr i8, ptr %160, i32 %163
  %165 = getelementptr inbounds %struct.ipv6hdr, ptr %164, i32 0, i32 5
  %166 = tail call i64 @__siphash_unaligned(ptr noundef %165, i32 noundef 32, ptr noundef nonnull %145) #9
  br label %167

167:                                              ; preds = %158, %149
  %168 = phi i64 [ %166, %158 ], [ %157, %149 ]
  store i64 %168, ptr %8, align 8
  %169 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %8, i32 0, i32 1
  store i8 8, ptr %169, align 8
  br label %170

170:                                              ; preds = %167, %144, %141
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  br label %322

171:                                              ; preds = %134
  %172 = icmp sgt i8 %135, 0
  br i1 %172, label %173, label %322

173:                                              ; preds = %171
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) @__const.tcp_fastopen_cookie_gen_check.search_foc, i32 24, i1 false) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  %174 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 7, i32 5
  %175 = load volatile ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 103), align 16
  %179 = icmp eq ptr %178, null
  br i1 %179, label %226, label %180

180:                                              ; preds = %177, %173
  %181 = phi ptr [ %178, %177 ], [ %175, %173 ]
  %182 = getelementptr inbounds %struct.tcp_fastopen_context, ptr %181, i32 0, i32 1
  %183 = load i32, ptr %182, align 8
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %226

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.request_sock, ptr %2, i32 0, i32 7
  %187 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %188 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  br label %189

189:                                              ; preds = %222, %185
  %190 = phi i32 [ 0, %185 ], [ %223, %222 ]
  %191 = phi ptr [ %8, %185 ], [ %7, %222 ]
  %192 = getelementptr [2 x %struct.siphash_key_t], ptr %181, i32 0, i32 %190
  %193 = load ptr, ptr %186, align 8
  %194 = load i32, ptr %193, align 4
  switch i32 %194, label %212 [
    i32 2, label %195
    i32 10, label %202
  ]

195:                                              ; preds = %189
  %196 = load ptr, ptr %187, align 8
  %197 = load i16, ptr %188, align 4
  %198 = zext i16 %197 to i32
  %199 = getelementptr i8, ptr %196, i32 %198
  %200 = getelementptr inbounds %struct.iphdr, ptr %199, i32 0, i32 8
  %201 = tail call i64 @__siphash_unaligned(ptr noundef %200, i32 noundef 8, ptr noundef %192) #9
  br label %209

202:                                              ; preds = %189
  %203 = load ptr, ptr %187, align 8
  %204 = load i16, ptr %188, align 4
  %205 = zext i16 %204 to i32
  %206 = getelementptr i8, ptr %203, i32 %205
  %207 = getelementptr inbounds %struct.ipv6hdr, ptr %206, i32 0, i32 5
  %208 = tail call i64 @__siphash_unaligned(ptr noundef %207, i32 noundef 32, ptr noundef %192) #9
  br label %209

209:                                              ; preds = %202, %195
  %210 = phi i64 [ %208, %202 ], [ %201, %195 ]
  store i64 %210, ptr %191, align 8
  %211 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %191, i32 0, i32 1
  store i8 8, ptr %211, align 8
  br label %212

212:                                              ; preds = %209, %189
  %213 = load i8, ptr %16, align 8
  %214 = icmp eq i8 %213, 8
  br i1 %214, label %215, label %222

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %191, i32 0, i32 1
  %217 = load i8, ptr %216, align 8
  %218 = icmp eq i8 %217, 8
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %220 = call i32 @bcmp(ptr noundef dereferenceable(8) %3, ptr noundef nonnull dereferenceable(8) %191, i32 8) #9
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %238, label %222

222:                                              ; preds = %219, %215, %212
  %223 = add nuw nsw i32 %190, 1
  %224 = load i32, ptr %182, align 8
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %189, label %226

226:                                              ; preds = %222, %180, %177
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  %227 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !25
  %228 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %229 = getelementptr [126 x i32], ptr %228, i32 0, i32 87
  %230 = ptrtoint ptr %229 to i32
  %231 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %232 = inttoptr i32 %231 to ptr
  %233 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %232) #6, !srcloc !26
  %234 = add i32 %233, %230
  %235 = inttoptr i32 %234 to ptr
  %236 = load i32, ptr %235, align 4
  %237 = add i32 %236, 1
  store i32 %237, ptr %235, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %227) #9, !srcloc !27
  br label %322

238:                                              ; preds = %219
  %239 = add nuw nsw i32 %190, 1
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  br label %240

240:                                              ; preds = %238, %126, %119, %115
  %241 = phi i32 [ 0, %126 ], [ %239, %238 ], [ 0, %119 ], [ 0, %115 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1, !annotation !9
  %242 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  %243 = load ptr, ptr %242, align 8
  %244 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %243, i32 0, i32 5
  %245 = load ptr, ptr %244, align 4
  %246 = call ptr %245(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef nonnull %6) #9
  %247 = icmp eq ptr %246, null
  br i1 %247, label %310, label %248

248:                                              ; preds = %240
  %249 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 7, i32 2
  call void @_raw_spin_lock(ptr noundef %249) #9
  %250 = load i32, ptr %44, align 4
  %251 = add i32 %250, 1
  store i32 %251, ptr %44, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  %252 = load i16, ptr %249, align 4
  %253 = add i16 %252, 1
  store i16 %253, ptr %249, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !29
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !30
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !35
  %254 = getelementptr inbounds %struct.tcp_sock, ptr %246, i32 0, i32 116
  store volatile ptr %2, ptr %254, align 8
  %255 = getelementptr inbounds %struct.tcp_request_sock, ptr %2, i32 0, i32 3
  store i8 1, ptr %255, align 8
  %256 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %257 = load ptr, ptr %256, align 8
  %258 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %259 = load i16, ptr %258, align 2
  %260 = zext i16 %259 to i32
  %261 = getelementptr i8, ptr %257, i32 %260
  %262 = getelementptr inbounds %struct.tcphdr, ptr %261, i32 0, i32 5
  %263 = load i16, ptr %262, align 2
  %264 = call i16 @llvm.bswap.i16(i16 %263) #9
  %265 = zext i16 %264 to i32
  %266 = getelementptr inbounds %struct.tcp_sock, ptr %246, i32 0, i32 26
  store i32 %265, ptr %266, align 4
  %267 = getelementptr inbounds %struct.tcp_sock, ptr %246, i32 0, i32 27
  store i32 %265, ptr %267, align 8
  %268 = getelementptr inbounds %struct.inet_connection_sock, ptr %246, i32 0, i32 19
  store i8 1, ptr %268, align 2
  %269 = load volatile i32, ptr @jiffies, align 64
  %270 = add i32 %269, 100
  %271 = getelementptr inbounds %struct.inet_connection_sock, ptr %246, i32 0, i32 3
  store i32 %270, ptr %271, align 8
  %272 = getelementptr inbounds %struct.inet_connection_sock, ptr %246, i32 0, i32 4
  call void @sk_reset_timer(ptr noundef nonnull %246, ptr noundef %272, i32 noundef %270) #9
  %273 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 19
  store volatile i32 2, ptr %273, align 4
  call void @tcp_init_transfer(ptr noundef nonnull %246, i32 noundef 5, ptr noundef %1) #9
  %274 = load i32, ptr %9, align 8
  %275 = add i32 %274, 1
  %276 = getelementptr inbounds %struct.tcp_sock, ptr %246, i32 0, i32 7
  store i32 %275, ptr %276, align 8
  call void @tcp_fastopen_add_skb(ptr noundef nonnull %246, ptr noundef %1) #9
  %277 = load i32, ptr %276, align 8
  %278 = getelementptr inbounds %struct.tcp_request_sock, ptr %2, i32 0, i32 10
  store i32 %277, ptr %278, align 8
  %279 = load i32, ptr %276, align 8
  %280 = getelementptr inbounds %struct.tcp_sock, ptr %246, i32 0, i32 9
  store i32 %279, ptr %280, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  %281 = icmp eq i32 %241, 2
  br i1 %281, label %282, label %297

282:                                              ; preds = %248
  %283 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %3, i32 0, i32 2
  %284 = load i8, ptr %283, align 1, !range !36
  %285 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %8, i32 0, i32 2
  store i8 %284, ptr %285, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 24, i1 false)
  %286 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !25
  %287 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %288 = getelementptr [126 x i32], ptr %287, i32 0, i32 119
  %289 = ptrtoint ptr %288 to i32
  %290 = call i32 @llvm.read_register.i32(metadata !0) #9
  %291 = inttoptr i32 %290 to ptr
  %292 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %291) #6, !srcloc !26
  %293 = add i32 %292, %289
  %294 = inttoptr i32 %293 to ptr
  %295 = load i32, ptr %294, align 4
  %296 = add i32 %295, 1
  store i32 %296, ptr %294, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %286) #9, !srcloc !27
  br label %298

297:                                              ; preds = %248
  store i8 -1, ptr %16, align 8
  br label %298

298:                                              ; preds = %297, %282
  %299 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !25
  %300 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %301 = getelementptr [126 x i32], ptr %300, i32 0, i32 86
  %302 = ptrtoint ptr %301 to i32
  %303 = call i32 @llvm.read_register.i32(metadata !0) #9
  %304 = inttoptr i32 %303 to ptr
  %305 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %304) #6, !srcloc !26
  %306 = add i32 %305, %302
  %307 = inttoptr i32 %306 to ptr
  %308 = load i32, ptr %307, align 4
  %309 = add i32 %308, 1
  store i32 %309, ptr %307, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %299) #9, !srcloc !27
  br label %326

310:                                              ; preds = %240
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  %311 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !25
  %312 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %313 = getelementptr [126 x i32], ptr %312, i32 0, i32 87
  %314 = ptrtoint ptr %313 to i32
  %315 = call i32 @llvm.read_register.i32(metadata !0) #9
  %316 = inttoptr i32 %315 to ptr
  %317 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %316) #6, !srcloc !26
  %318 = add i32 %317, %314
  %319 = inttoptr i32 %318 to ptr
  %320 = load i32, ptr %319, align 4
  %321 = add i32 %320, 1
  store i32 %321, ptr %319, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %311) #9, !srcloc !27
  br label %322

322:                                              ; preds = %310, %226, %171, %170
  %323 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %3, i32 0, i32 2
  %324 = load i8, ptr %323, align 1, !range !36
  %325 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %8, i32 0, i32 2
  store i8 %324, ptr %325, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 24, i1 false)
  br label %326

326:                                              ; preds = %322, %298, %114
  %327 = phi ptr [ %246, %298 ], [ null, %322 ], [ null, %114 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  ret ptr %327
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @tcp_fastopen_cookie_check(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @tcp_fastopen_cache_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  %4 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 104), align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 105), align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !37
  %10 = add i32 %7, -1
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 6) #9
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 106), align 4
  %13 = shl i32 %4, %11
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = mul i32 %13, -100
  %16 = sub i32 %15, %12
  %17 = add i32 %16, %14
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %21 = load i8, ptr %20, align 1
  %22 = or i8 %21, 32
  store i8 %22, ptr %20, align 1
  br label %25

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %2, i32 0, i32 1
  store i8 -1, ptr %24, align 8
  br label %55

25:                                               ; preds = %19, %6, %3
  %26 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %27 = load volatile ptr, ptr %26, align 8
  %28 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 101), align 8
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %33 = load i16, ptr %32, align 4
  %34 = and i16 %33, 16
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = icmp eq ptr %27, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.dst_entry, ptr %27, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, -4
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr i32, ptr %42, i32 16
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %38, %31, %25
  %47 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %2, i32 0, i32 1
  store i8 -1, ptr %47, align 8
  br label %55

48:                                               ; preds = %38, %36
  %49 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %2, i32 0, i32 1
  %50 = load i8, ptr %49, align 8
  %51 = icmp sgt i8 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = and i16 %33, -193
  %54 = or i16 %53, 64
  store i16 %54, ptr %32, align 4
  br label %55

55:                                               ; preds = %52, %48, %46, %23
  %56 = phi i1 [ false, %23 ], [ true, %46 ], [ false, %52 ], [ true, %48 ]
  ret i1 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_fastopen_cache_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @tcp_fastopen_active_should_disable(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 104), align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 105), align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !37
  %8 = add i32 %5, -1
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 6)
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 106), align 4
  %11 = shl i32 %2, %9
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = mul i32 %11, -100
  %14 = sub i32 %13, %10
  %15 = add i32 %14, %12
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %19 = load i8, ptr %18, align 1
  %20 = or i8 %19, 32
  store i8 %20, ptr %18, align 1
  br label %21

21:                                               ; preds = %17, %7, %4, %1
  %22 = phi i1 [ false, %17 ], [ false, %1 ], [ false, %4 ], [ true, %7 ]
  ret i1 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @tcp_fastopen_defer_connect(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.tcp_fastopen_cookie, align 8
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i32 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i16 0, ptr %4, align 2, !annotation !9
  %5 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 8
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %88, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 115
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %88

13:                                               ; preds = %9
  call void @tcp_fastopen_cache_get(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3) #9
  %14 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 104), align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %13
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 105), align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %16
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !37
  %20 = add i32 %17, -1
  %21 = call i32 @llvm.smin.i32(i32 %20, i32 6) #9
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 106), align 4
  %23 = shl i32 %14, %21
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = mul i32 %23, -100
  %26 = sub i32 %25, %22
  %27 = add i32 %26, %24
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %31 = load i8, ptr %30, align 1
  %32 = or i8 %31, 32
  store i8 %32, ptr %30, align 1
  br label %35

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %3, i32 0, i32 1
  store i8 -1, ptr %34, align 8
  br label %70

35:                                               ; preds = %29, %16, %13
  %36 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %37 = load volatile ptr, ptr %36, align 8
  %38 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 101), align 8
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %35
  %42 = load i16, ptr %5, align 4
  %43 = and i16 %42, 16
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = icmp eq ptr %37, null
  br i1 %46, label %59, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.dst_entry, ptr %37, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, -4
  %51 = inttoptr i32 %50 to ptr
  %52 = getelementptr i32, ptr %51, i32 16
  %53 = load i32, ptr %52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %3, i32 0, i32 1
  %56 = load i8, ptr %55, align 8
  %57 = icmp sgt i8 %56, 0
  %58 = select i1 %54, i1 true, i1 %57
  br i1 %58, label %66, label %63

59:                                               ; preds = %45
  %60 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %3, i32 0, i32 1
  %61 = load i8, ptr %60, align 8
  %62 = icmp sgt i8 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59, %47
  %64 = and i16 %42, -193
  %65 = or i16 %64, 64
  store i16 %65, ptr %5, align 4
  br label %70

66:                                               ; preds = %59, %47, %41, %35
  %67 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %68 = load i16, ptr %67, align 8
  %69 = or i16 %68, 1024
  store i16 %69, ptr %67, align 8
  br label %88

70:                                               ; preds = %63, %33
  %71 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 17
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75, !prof !22

75:                                               ; preds = %70
  %76 = and i32 %72, 1
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, i32 1, i32 2
  br label %79

79:                                               ; preds = %75, %70
  %80 = phi i32 [ 0, %70 ], [ %78, %75 ]
  %81 = or i32 %72, 256
  %82 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %80, i32 6
  %83 = load ptr, ptr %82, align 4
  %84 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef %81, i32 noundef 40) #10
  store ptr %84, ptr %10, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %84, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 24, i1 false)
  br label %88

87:                                               ; preds = %79
  store i32 -105, ptr %1, align 4
  br label %88

88:                                               ; preds = %87, %86, %66, %9, %2
  %89 = phi i1 [ true, %66 ], [ false, %86 ], [ false, %87 ], [ false, %9 ], [ false, %2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i1 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_fastopen_active_disable(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 104), align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %5, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 106), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 105)) #9, !srcloc !12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 105), ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 105), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 105)) #9, !srcloc !24
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !25
  %8 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %9 = getelementptr [126 x i32], ptr %8, i32 0, i32 90
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #6, !srcloc !26
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #9, !srcloc !27
  br label %18

18:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_fastopen_active_disable_ofo_check(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %67, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 89
  %12 = tail call ptr @rb_first(ptr noundef %11) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %67, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @rb_next(ptr noundef nonnull %12) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %67

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 12
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  %22 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 104), align 4
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %67, label %25

25:                                               ; preds = %17
  %26 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %26, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 106), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 105)) #9, !srcloc !12
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 105), ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 105), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 105)) #9, !srcloc !24
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !25
  %29 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %30 = getelementptr [126 x i32], ptr %29, i32 0, i32 90
  %31 = ptrtoint ptr %30 to i32
  %32 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %33 = inttoptr i32 %32 to ptr
  %34 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %33) #6, !srcloc !26
  %35 = add i32 %34, %31
  %36 = inttoptr i32 %35 to ptr
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #9, !srcloc !27
  br label %67

39:                                               ; preds = %6
  %40 = and i8 %3, 32
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %67, label %42

42:                                               ; preds = %39
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 105), align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %67, label %45

45:                                               ; preds = %42
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  %46 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %47 = load volatile ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.dst_entry, ptr %47, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !39
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #9, !srcloc !12
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 0, i32 1, ptr elementtype(i32) %50) #9, !srcloc !40
  %52 = extractvalue { i32, i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %45
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  br label %63

55:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !41
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %56 = load ptr, ptr %47, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 14
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58, %55, %54
  %64 = phi ptr [ null, %54 ], [ %47, %58 ], [ %47, %55 ]
  store volatile i32 0, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 105), align 8
  br label %65

65:                                               ; preds = %63, %58
  %66 = phi ptr [ %64, %63 ], [ %47, %58 ]
  tail call void @dst_release(ptr noundef %66) #9
  br label %67

67:                                               ; preds = %65, %42, %39, %25, %17, %14, %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_fastopen_active_detect_blackhole(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 76
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 18
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 2
  %11 = icmp ult i8 %9, 2
  %12 = and i1 %11, %1
  %13 = or i1 %10, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %7
  %15 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 104), align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  %18 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %18, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 106), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 105)) #9, !srcloc !12
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 105), ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 105), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 105)) #9, !srcloc !24
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !25
  %21 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %22 = getelementptr [126 x i32], ptr %21, i32 0, i32 90
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #6, !srcloc !26
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #9, !srcloc !27
  br label %31

31:                                               ; preds = %17, %14
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !25
  %33 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %34 = getelementptr [126 x i32], ptr %33, i32 0, i32 85
  %35 = ptrtoint ptr %34 to i32
  %36 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %37 = inttoptr i32 %36 to ptr
  %38 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %37) #6, !srcloc !26
  %39 = add i32 %38, %35
  %40 = inttoptr i32 %39 to ptr
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #9, !srcloc !27
  br label %43

43:                                               ; preds = %31, %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__siphash_unaligned(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_init_transfer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_reset_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{!"auto-init"}
!10 = !{i64 2149361930}
!11 = !{i64 2156936873}
!12 = !{i64 425255, i64 2147915226, i64 2147915252, i64 2147915299, i64 2147915321, i64 2147915349, i64 2147915369}
!13 = !{i64 434702, i64 434719, i64 434743, i64 434769, i64 434787}
!14 = !{i64 2156937192}
!15 = !{i64 2156935641}
!16 = !{i64 2156935960}
!17 = !{i64 2156934257}
!18 = !{i64 2156934584}
!19 = !{i64 2149362147}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2153302962, i64 2153303450, i64 2153302999, i64 2153303055, i64 2153303089, i64 2153303113, i64 2153303154, i64 2153303175, i64 2153303203, i64 2153303237}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2153316320, i64 2153316808, i64 2153316357, i64 2153316413, i64 2153316447, i64 2153316471, i64 2153316512, i64 2153316533, i64 2153316561, i64 2153316595}
!24 = !{i64 2147927438, i64 2147927464, i64 2147927493, i64 2147927527, i64 2147927558, i64 2147927581}
!25 = !{i64 320494, i64 320555}
!26 = !{i64 339194}
!27 = !{i64 323511}
!28 = !{i64 2149209226}
!29 = !{i64 2149205050}
!30 = !{i64 2149205125, i64 2149205152, i64 2149205199, i64 2149205221, i64 2149205249, i64 2149205269}
!31 = !{i64 2149232229}
!32 = !{i64 2148029094}
!33 = !{i64 2147931253, i64 2147931285, i64 2147931314, i64 2147931348, i64 2147931379, i64 2147931402}
!34 = !{i64 2149945551}
!35 = !{i64 2156953810}
!36 = !{i8 0, i8 2}
!37 = !{i64 2157042770}
!38 = !{i64 2157031771}
!39 = !{i64 2147926945}
!40 = !{i64 411824, i64 411849, i64 411871, i64 411887, i64 411899, i64 411919, i64 411943, i64 411959, i64 411971}
!41 = !{i64 2147927071}
