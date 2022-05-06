; ModuleID = '/llk/IR/net/ipv6/xfrm6_input.c_pt.bc'
source_filename = "../net/ipv6/xfrm6_input.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm6_rcv_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm6_rcv_spi\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm6_rcv_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm6_rcv_tnl:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm6_rcv_tnl\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm6_rcv_tnl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm6_rcv:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm6_rcv\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm6_rcv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm6_input_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm6_input_addr\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm6_input_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.in6_addr = type { %union.anon.55 }
%union.anon.55 = type { [4 x i32] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.66, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.66 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.sk_buff = type { %union.anon, %union.anon.162, %union.anon.163, [48 x i8], %union.anon.164, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.166, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.162 = type { ptr }
%union.anon.163 = type { i64 }
%union.anon.164 = type { %struct.anon.165 }
%struct.anon.165 = type { i32, ptr }
%union.anon.166 = type { %struct.anon.167 }
%struct.anon.167 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.168, i32, i32, i32, i16, i16, %union.anon.170, %union.anon.171, %union.anon.172, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.168 = type { i32 }
%union.anon.170 = type { i32 }
%union.anon.171 = type { i32 }
%union.anon.172 = type { i16 }
%struct.skb_ext = type { %struct.refcount_struct, [1 x i8], i8, [2 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.185, i32, i32, i8, i8 }
%struct.anon.185 = type { i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.udp_sock = type { %struct.inet_sock, i32, i32, i8, i8, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, [20 x i8], %struct.sk_buff_head, i32, [44 x i8] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.143, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.144, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.145, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.11, %union.anon.13, %union.anon.14, i16, i8, i8, i32, %union.anon.16, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.139, [0 x i32], %union.anon.140, i16, i16, %union.anon.141, %struct.refcount_struct, [0 x i32], %union.anon.142 }
%union.anon.11 = type { i64 }
%union.anon.13 = type { i32 }
%union.anon.14 = type { i32 }
%union.anon.16 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.atomic64_t = type { i64 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { %struct.hlist_node }
%union.anon.141 = type { i32 }
%union.anon.142 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.143 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.144 = type { ptr }
%union.anon.145 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.58 }
%union.anon.58 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sk_buff_head = type { %union.anon.5, i32, %struct.spinlock }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.56, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.57, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.56 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.57 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xfrm_state_offload = type { ptr, %struct.netdevice_tracker, ptr, i32, i32, i8 }
%struct.netdevice_tracker = type {}
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.xfrm_type = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_xfrm6_rcv_spi = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm6_rcv_spi = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm6_rcv_spi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm6_rcv_spi to i32), ptr @__kstrtab_xfrm6_rcv_spi, ptr @__kstrtabns_xfrm6_rcv_spi }, section "___ksymtab+xfrm6_rcv_spi", align 4
@__kstrtab_xfrm6_rcv_tnl = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm6_rcv_tnl = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm6_rcv_tnl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm6_rcv_tnl to i32), ptr @__kstrtab_xfrm6_rcv_tnl, ptr @__kstrtabns_xfrm6_rcv_tnl }, section "___ksymtab+xfrm6_rcv_tnl", align 4
@__kstrtab_xfrm6_rcv = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm6_rcv = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm6_rcv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm6_rcv to i32), ptr @__kstrtab_xfrm6_rcv, ptr @__kstrtabns_xfrm6_rcv }, section "___ksymtab+xfrm6_rcv", align 4
@in6addr_any = external dso_local constant %struct.in6_addr, align 4
@__kstrtab_xfrm6_input_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm6_input_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm6_input_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm6_input_addr to i32), ptr @__kstrtab_xfrm6_input_addr, ptr @__kstrtabns_xfrm6_input_addr }, section "___ksymtab+xfrm6_input_addr", align 4
@init_net = external dso_local global %struct.net, align 64
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_xfrm6_input_addr, ptr @__ksymtab_xfrm6_rcv, ptr @__ksymtab_xfrm6_rcv_spi, ptr @__ksymtab_xfrm6_rcv_tnl], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm6_rcv_spi(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store ptr %3, ptr %5, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  store i32 10, ptr %6, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  store i32 24, ptr %7, align 4
  %8 = tail call i32 @xfrm_input(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0) #4
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm6_transport_finish(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.skb_ext, ptr %9, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 3
  %14 = getelementptr i8, ptr %9, i32 %13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.sec_path, ptr %14, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %14, align 4
  %22 = icmp eq i32 %21, %18
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = add i32 %18, -1
  %25 = getelementptr %struct.sec_path, ptr %14, i32 0, i32 3, i32 %24
  br label %26

26:                                               ; preds = %23, %20, %16, %7, %2
  %27 = phi ptr [ %25, %23 ], [ null, %20 ], [ null, %16 ], [ null, %7 ], [ null, %2 ]
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  %35 = getelementptr i8, ptr %31, i32 %34
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 35
  %37 = load i8, ptr %36, align 1
  %38 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 14
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = getelementptr i8, ptr %35, i32 %40
  store i8 %37, ptr %41, align 1
  %42 = icmp eq i32 %1, 0
  br i1 %42, label %115, label %43

43:                                               ; preds = %26
  %44 = ptrtoint ptr %29 to i32
  %45 = ptrtoint ptr %35 to i32
  %46 = sub i32 %44, %45
  %47 = load ptr, ptr %28, align 4
  %48 = sub i32 0, %46
  %49 = getelementptr i8, ptr %47, i32 %48
  store ptr %49, ptr %28, align 4
  %50 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %51 = load i32, ptr %50, align 8
  %52 = add i32 %51, %46
  store i32 %52, ptr %50, align 8
  %53 = trunc i32 %52 to i16
  %54 = add i16 %53, -40
  %55 = tail call i16 @llvm.bswap.i16(i16 %54)
  %56 = load ptr, ptr %30, align 8
  %57 = load i16, ptr %32, align 4
  %58 = zext i16 %57 to i32
  %59 = getelementptr i8, ptr %56, i32 %58
  %60 = getelementptr inbounds %struct.ipv6hdr, ptr %59, i32 0, i32 2
  store i16 %55, ptr %60, align 4
  %61 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %62 = load i16, ptr %61, align 8
  %63 = and i16 %62, 96
  %64 = icmp eq i16 %63, 64
  br i1 %64, label %65, label %77

65:                                               ; preds = %43
  %66 = load ptr, ptr %30, align 8
  %67 = load i16, ptr %32, align 4
  %68 = zext i16 %67 to i32
  %69 = getelementptr i8, ptr %66, i32 %68
  %70 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = tail call i32 @csum_partial(ptr noundef %69, i32 noundef %46, i32 noundef 0) #4
  %73 = add i32 %72, %71
  %74 = icmp ult i32 %73, %72
  %75 = zext i1 %74 to i32
  %76 = add i32 %73, %75
  store i32 %76, ptr %70, align 4
  br label %77

77:                                               ; preds = %65, %43
  %78 = icmp eq ptr %27, null
  br i1 %78, label %111, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.xfrm_offload, ptr %27, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %111, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %86 = load i16, ptr %85, align 2
  %87 = icmp eq i16 %86, -1
  br i1 %87, label %103, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %30, align 8
  %90 = zext i16 %86 to i32
  %91 = getelementptr i8, ptr %89, i32 %90
  %92 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %93 = load i16, ptr %92, align 8
  %94 = zext i16 %93 to i32
  %95 = load ptr, ptr %28, align 4
  %96 = ptrtoint ptr %95 to i32
  %97 = ptrtoint ptr %89 to i32
  %98 = sub i32 %96, %97
  %99 = trunc i32 %98 to i16
  %100 = sub i16 %99, %93
  store i16 %100, ptr %85, align 2
  %101 = zext i16 %100 to i32
  %102 = getelementptr i8, ptr %89, i32 %101
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %102, ptr align 1 %91, i32 %94, i1 false) #4
  br label %103

103:                                              ; preds = %88, %84
  %104 = load ptr, ptr %28, align 4
  %105 = load ptr, ptr %30, align 8
  %106 = ptrtoint ptr %104 to i32
  %107 = ptrtoint ptr %105 to i32
  %108 = sub i32 %106, %107
  %109 = trunc i32 %108 to i16
  %110 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  store i16 %109, ptr %110, align 2
  br label %115

111:                                              ; preds = %79, %77
  %112 = tail call i32 @xfrm_trans_queue(ptr noundef %0, ptr noundef nonnull @ip6_rcv_finish) #4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #4
  br label %115

115:                                              ; preds = %114, %111, %103, %26
  %116 = phi i32 [ 0, %103 ], [ 1, %26 ], [ 0, %111 ], [ 0, %114 ]
  ret i32 %116
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm6_udp_encap_rcv(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %104, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, -8
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 8)
  %11 = add nsw i32 %10, 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %8, %13
  %15 = icmp ugt i32 %11, %14
  br i1 %15, label %16, label %22, !prof !8

16:                                               ; preds = %6
  %17 = icmp ult i32 %8, %11
  br i1 %17, label %104, label %18, !prof !8

18:                                               ; preds = %16
  %19 = sub i32 %11, %14
  %20 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %19) #4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %104, label %22

22:                                               ; preds = %18, %6
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = getelementptr i8, ptr %24, i32 %27
  %29 = getelementptr i8, ptr %28, i32 8
  %30 = zext i8 %4 to i32
  %31 = icmp eq i8 %4, 1
  %32 = icmp eq i32 %9, 1
  br i1 %31, label %42, label %33

33:                                               ; preds = %22
  br i1 %32, label %34, label %37

34:                                               ; preds = %33
  %35 = load i8, ptr %29, align 1
  %36 = icmp eq i8 %35, -1
  br i1 %36, label %103, label %104

37:                                               ; preds = %33
  %38 = icmp ugt i32 %9, 8
  br i1 %38, label %39, label %104

39:                                               ; preds = %37
  %40 = load i32, ptr %29, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %104, label %55

42:                                               ; preds = %22
  br i1 %32, label %43, label %46

43:                                               ; preds = %42
  %44 = load i8, ptr %29, align 1
  %45 = icmp eq i8 %44, -1
  br i1 %45, label %103, label %104

46:                                               ; preds = %42
  %47 = icmp ugt i32 %9, 16
  br i1 %47, label %48, label %104

48:                                               ; preds = %46
  %49 = load i32, ptr %29, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %104

51:                                               ; preds = %48
  %52 = getelementptr i8, ptr %28, i32 12
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %104

55:                                               ; preds = %51, %39
  %56 = phi i32 [ 8, %39 ], [ 16, %51 ]
  %57 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %58 = load i8, ptr %57, align 2
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.skb_shared_info, ptr %63, i32 0, i32 10
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = tail call i32 @pskb_expand_head(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %103

71:                                               ; preds = %68
  %72 = load ptr, ptr %23, align 8
  br label %73

73:                                               ; preds = %71, %61, %55
  %74 = phi ptr [ %72, %71 ], [ %24, %55 ], [ %24, %61 ]
  %75 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %76 = load i16, ptr %75, align 4
  %77 = zext i16 %76 to i32
  %78 = getelementptr i8, ptr %74, i32 %77
  %79 = getelementptr inbounds %struct.ipv6hdr, ptr %78, i32 0, i32 2
  %80 = load i16, ptr %79, align 4
  %81 = tail call i16 @llvm.bswap.i16(i16 %80)
  %82 = trunc i32 %56 to i16
  %83 = sub i16 %81, %82
  %84 = tail call i16 @llvm.bswap.i16(i16 %83)
  store i16 %84, ptr %79, align 4
  %85 = load i32, ptr %7, align 8
  %86 = add nuw nsw i32 %56, 40
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %103, label %88

88:                                               ; preds = %73
  %89 = sub i32 %85, %56
  store i32 %89, ptr %7, align 8
  %90 = load i32, ptr %12, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %93, !prof !8

92:                                               ; preds = %88
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr i8, ptr %95, i32 %56
  store ptr %96, ptr %94, align 4
  %97 = load ptr, ptr %23, align 8
  %98 = ptrtoint ptr %96 to i32
  %99 = ptrtoint ptr %97 to i32
  %100 = sub i32 %98, %99
  %101 = trunc i32 %100 to i16
  store i16 %101, ptr %25, align 2
  %102 = tail call i32 @xfrm6_rcv_encap(ptr noundef %1, i32 noundef 50, i32 noundef 0, i32 noundef %30) #4
  br label %104

103:                                              ; preds = %73, %68, %43, %34
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #4
  br label %104

104:                                              ; preds = %103, %93, %51, %48, %46, %43, %39, %37, %34, %18, %16, %2
  %105 = phi i32 [ 0, %103 ], [ %102, %93 ], [ 1, %2 ], [ 1, %18 ], [ 1, %39 ], [ 1, %37 ], [ 1, %51 ], [ 1, %48 ], [ 1, %46 ], [ 1, %16 ], [ 1, %34 ], [ 1, %43 ]
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_rcv_encap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm6_rcv_tnl(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 14
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store ptr %1, ptr %15, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  store i32 10, ptr %16, align 8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  store i32 24, ptr %17, align 4
  %18 = tail call i32 @xfrm_input(ptr noundef %0, i32 noundef %14, i32 noundef 0, i32 noundef 0) #4
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm6_rcv(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 14
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  store i32 10, ptr %15, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  store i32 24, ptr %16, align 4
  %17 = tail call i32 @xfrm_input(ptr noundef %0, i32 noundef %13, i32 noundef 0, i32 noundef 0) #4
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm6_input_addr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) #0 {
  %5 = tail call ptr @secpath_set(ptr noundef %0) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %76, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %5, align 4
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %76, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  br label %12

12:                                               ; preds = %58, %10
  %13 = phi i32 [ 0, %10 ], [ %59, %58 ]
  switch i32 %13, label %15 [
    i32 0, label %16
    i32 1, label %14
  ]

14:                                               ; preds = %12
  br label %16

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %15, %14, %12
  %17 = phi ptr [ @in6addr_any, %15 ], [ %1, %14 ], [ %1, %12 ]
  %18 = phi ptr [ @in6addr_any, %15 ], [ @in6addr_any, %14 ], [ %2, %12 ]
  %19 = load i32, ptr %11, align 4
  %20 = tail call ptr @xfrm_state_lookup_byaddr(ptr noundef nonnull @init_net, i32 noundef %19, ptr noundef %17, ptr noundef %18, i8 noundef zeroext %3, i16 noundef zeroext 10) #4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %58, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.xfrm_state, ptr %20, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %23) #4
  %24 = icmp eq i32 %13, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.xfrm_state, ptr %20, i32 0, i32 14, i32 6
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %25, %22
  %31 = getelementptr inbounds %struct.xfrm_state, ptr %20, i32 0, i32 13, i32 1
  %32 = load i8, ptr %31, align 4
  %33 = icmp eq i8 %32, 2
  br i1 %33, label %34, label %46, !prof !10

34:                                               ; preds = %30
  %35 = tail call i32 @xfrm_state_check_expire(ptr noundef nonnull %20) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  %38 = load i16, ptr %23, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !14
  %40 = getelementptr inbounds %struct.xfrm_state, ptr %20, i32 0, i32 45
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.xfrm_type, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %43(ptr noundef nonnull %20, ptr noundef %0) #4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %61, label %49

46:                                               ; preds = %34, %30, %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  %47 = load i16, ptr %23, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !14
  br label %49

49:                                               ; preds = %46, %37
  %50 = getelementptr inbounds %struct.xfrm_state, ptr %20, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #4, !srcloc !16
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #4, !srcloc !17
  %52 = extractvalue { i32, i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = icmp sgt i32 %52, 0
  br i1 %55, label %58, label %56, !prof !10

56:                                               ; preds = %54
  tail call void @refcount_warn_saturate(ptr noundef %50, i32 noundef 3) #4
  br label %58

57:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !18
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %20, i1 noundef zeroext false) #4
  br label %58

58:                                               ; preds = %57, %56, %54, %16
  %59 = add nuw nsw i32 %13, 1
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %76, label %12

61:                                               ; preds = %37
  %62 = load i32, ptr %5, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %5, align 4
  %64 = getelementptr %struct.sec_path, ptr %5, i32 0, i32 2, i32 %62
  store ptr %20, ptr %64, align 4
  tail call void @_raw_spin_lock(ptr noundef %23) #4
  %65 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %66 = load i32, ptr %65, align 8
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.xfrm_state, ptr %20, i32 0, i32 39
  %69 = load i64, ptr %68, align 8
  %70 = add i64 %69, %67
  store i64 %70, ptr %68, align 8
  %71 = getelementptr inbounds %struct.xfrm_state, ptr %20, i32 0, i32 39, i32 1
  %72 = load i64, ptr %71, align 8
  %73 = add i64 %72, 1
  store i64 %73, ptr %71, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  %74 = load i16, ptr %23, align 4
  %75 = add i16 %74, 1
  store i16 %75, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !14
  br label %76

76:                                               ; preds = %61, %58, %7, %4
  %77 = phi i32 [ 1, %61 ], [ -1, %7 ], [ -1, %4 ], [ -1, %58 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @secpath_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_lookup_byaddr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_check_expire(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_trans_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_rcv_finish(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfrm_state_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }

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
!9 = !{i64 2153288388, i64 2153288876, i64 2153288425, i64 2153288481, i64 2153288515, i64 2153288539, i64 2153288580, i64 2153288601, i64 2153288629, i64 2153288663}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148930463}
!12 = !{i64 2148926287}
!13 = !{i64 2148926362, i64 2148926389, i64 2148926436, i64 2148926458, i64 2148926486, i64 2148926506}
!14 = !{i64 2148953466}
!15 = !{i64 2148149004}
!16 = !{i64 545938, i64 2148035909, i64 2148035935, i64 2148035982, i64 2148036004, i64 2148036032, i64 2148036052}
!17 = !{i64 2148051139, i64 2148051171, i64 2148051200, i64 2148051234, i64 2148051265, i64 2148051288}
!18 = !{i64 2148998451}
