; ModuleID = '/llk/IR/net/ipv4/tcp_timer.c_pt.bc'
source_filename = "../net/ipv4/tcp_timer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_syn_ack_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_syn_ack_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_syn_ack_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_set_keepalive:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_set_keepalive\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_set_keepalive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.ctl_table_header = type { %union.anon.25, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.129, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.129 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.181, %struct.anon.182, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.170, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.171, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.172, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.166, [0 x i32], %union.anon.167, i16, i16, %union.anon.168, %struct.refcount_struct, [0 x i32], %union.anon.169 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.115 }
%union.anon.115 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.166 = type { i32 }
%union.anon.167 = type { %struct.hlist_node }
%union.anon.168 = type { i32 }
%union.anon.169 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.170 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.171 = type { ptr }
%union.anon.172 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.124 }
%union.anon.124 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.181 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.182 = type { i32, i32, i32, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.165, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.165 = type { ptr }
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
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.request_sock_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@tcp_retransmit_timer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"net/ipv4/tcp_timer.c\00", align 1
@tcp_retransmit_timer.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_tcp_syn_ack_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_syn_ack_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_syn_ack_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_syn_ack_timeout to i32), ptr @__kstrtab_tcp_syn_ack_timeout, ptr @__kstrtabns_tcp_syn_ack_timeout }, section "___ksymtab+tcp_syn_ack_timeout", align 4
@__kstrtab_tcp_set_keepalive = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_set_keepalive = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_set_keepalive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_set_keepalive to i32), ptr @__kstrtab_tcp_set_keepalive, ptr @__kstrtabns_tcp_set_keepalive }, section "___ksymtab_gpl+tcp_set_keepalive", align 4
@tcp_memory_pressure = external dso_local global i32, align 4
@init_net = external dso_local local_unnamed_addr global %struct.net, align 64
@.str.4 = private unnamed_addr constant [36 x i8] c"\013Hmm... keepalive on a LISTEN ???\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_tcp_set_keepalive, ptr @__ksymtab_tcp_syn_ack_timeout], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_clamp_probe0_to_user_timeout(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 27
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 26
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = sub i32 %11, %8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15, !prof !9

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i32 [ 0, %14 ], [ %12, %10 ]
  %17 = tail call i32 @__msecs_to_jiffies(i32 noundef %4) #6
  %18 = sub i32 %17, %16
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 2)
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 %1)
  br label %21

21:                                               ; preds = %15, %6, %2
  %22 = phi i32 [ %20, %15 ], [ %1, %6 ], [ %1, %2 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_delack_timer_handler(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13, !prof !10

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %17 = load volatile i32, ptr %16, align 4
  %18 = add i32 %15, %17
  %19 = sub i32 %11, %18
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 0) #6
  br label %21

21:                                               ; preds = %13, %7
  %22 = phi i32 [ %20, %13 ], [ 0, %7 ]
  %23 = sub i32 %9, %22
  %24 = icmp sgt i32 %23, 4096
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = add nsw i32 %23, -1
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef %26) #6
  br label %27

27:                                               ; preds = %25, %21, %1
  %28 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %29 = load volatile i8, ptr %28, align 2
  %30 = zext i8 %29 to i32
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, 1152
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %75

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  %36 = load i8, ptr %35, align 4
  %37 = and i8 %36, 2
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %75, label %39

39:                                               ; preds = %34
  %40 = load volatile i32, ptr @jiffies, align 64
  %41 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = sub i32 %40, %42
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 5
  tail call void @sk_reset_timer(ptr noundef %0, ptr noundef %46, i32 noundef %42) #6
  br label %75

47:                                               ; preds = %39
  %48 = and i8 %36, -3
  store i8 %48, ptr %35, align 4
  %49 = and i8 %36, 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %75, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 2
  %53 = load i8, ptr %52, align 2
  %54 = icmp ugt i8 %53, 2
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = shl i32 %57, 1
  %59 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = tail call i32 @llvm.umin.i32(i32 %58, i32 %60)
  store i32 %61, ptr %56, align 4
  br label %64

62:                                               ; preds = %51
  store i8 0, ptr %52, align 2
  %63 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 4
  store i32 4, ptr %63, align 4
  br label %64

64:                                               ; preds = %62, %55
  tail call void @tcp_mstamp_refresh(ptr noundef %0) #6
  tail call void @tcp_send_ack(ptr noundef %0) #6
  %65 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %66 = getelementptr [126 x i32], ptr %65, i32 0, i32 16
  %67 = ptrtoint ptr %66 to i32
  %68 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %69 = inttoptr i32 %68 to ptr
  %70 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %69) #3, !srcloc !11
  %71 = add i32 %70, %67
  %72 = inttoptr i32 %71 to ptr
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 4
  br label %75

75:                                               ; preds = %64, %47, %45, %34, %27
  %76 = load volatile i32, ptr @tcp_memory_pressure, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %102, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %2, align 8
  %80 = getelementptr inbounds %struct.proto, ptr %79, i32 0, i32 30
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %102, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %87 = load i32, ptr %86, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %97, label %89, !prof !10

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %93 = load volatile i32, ptr %92, align 4
  %94 = add i32 %91, %93
  %95 = sub i32 %87, %94
  %96 = tail call i32 @llvm.smax.i32(i32 %95, i32 0) #6
  br label %97

97:                                               ; preds = %89, %83
  %98 = phi i32 [ %96, %89 ], [ 0, %83 ]
  %99 = sub i32 %85, %98
  %100 = icmp sgt i32 %99, 4095
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef %99) #6
  br label %102

102:                                              ; preds = %101, %97, %78, %75
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_reset_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_mstamp_refresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_send_ack(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sk_mem_reclaim(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13, !prof !10

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %17 = load volatile i32, ptr %16, align 4
  %18 = add i32 %15, %17
  %19 = sub i32 %11, %18
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 0) #6
  br label %21

21:                                               ; preds = %13, %7
  %22 = phi i32 [ %20, %13 ], [ 0, %7 ]
  %23 = sub i32 %9, %22
  %24 = icmp sgt i32 %23, 4095
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef %23) #6
  br label %26

26:                                               ; preds = %25, %21, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_retransmit_timer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 116
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %85, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %7 = load volatile i8, ptr %6, align 2
  %8 = icmp eq i8 %7, 3
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = load volatile i8, ptr %6, align 2
  %11 = icmp ne i8 %10, 4
  %12 = load i1, ptr @tcp_retransmit_timer.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %9
  store i1 true, ptr @tcp_retransmit_timer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 460, i32 noundef 9, ptr noundef null) #6
  br label %16

16:                                               ; preds = %15, %9, %5
  %17 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 21
  %18 = load i8, ptr %17, align 8
  %19 = zext i8 %18 to i32
  %20 = icmp eq i8 %18, 0
  %21 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 54), align 2
  %22 = zext i8 %21 to i32
  %23 = add nuw nsw i32 %22, 1
  %24 = select i1 %20, i32 %23, i32 %19
  %25 = getelementptr inbounds %struct.request_sock, ptr %3, i32 0, i32 7
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.request_sock_ops, ptr %26, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef nonnull %3) #6
  %29 = getelementptr inbounds %struct.request_sock, ptr %3, i32 0, i32 4
  %30 = load i8, ptr %29, align 1
  %31 = lshr i8 %30, 1
  %32 = zext i8 %31 to i32
  %33 = icmp ugt i32 %24, %32
  br i1 %33, label %50, label %34

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 52
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 110, i32 %36
  %39 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  store i32 %38, ptr %39, align 4
  tail call void @sk_error_report(ptr noundef %0) #6
  tail call void @tcp_write_queue_purge(ptr noundef %0) #6
  tail call void @tcp_done(ptr noundef %0) #6
  %40 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %41 = getelementptr [126 x i32], ptr %40, i32 0, i32 53
  %42 = ptrtoint ptr %41 to i32
  %43 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %44 = inttoptr i32 %43 to ptr
  %45 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %44) #3, !srcloc !11
  %46 = add i32 %45, %42
  %47 = inttoptr i32 %46 to ptr
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 4
  br label %616

50:                                               ; preds = %16
  %51 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 18
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  tail call void @tcp_enter_loss(ptr noundef %0) #6
  br label %55

55:                                               ; preds = %54, %50
  %56 = tail call i32 @inet_rtx_syn_ack(ptr noundef %0, ptr noundef nonnull %3) #6
  %57 = load i8, ptr %29, align 1
  %58 = add i8 %57, 2
  store i8 %58, ptr %29, align 1
  %59 = load i8, ptr %51, align 1
  %60 = add i8 %59, 1
  store i8 %60, ptr %51, align 1
  %61 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 98
  %62 = load i32, ptr %61, align 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %66 = load i64, ptr %65, align 8
  %67 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %66, i32 0) #7, !srcloc !12
  %68 = extractvalue { i64, i32 } %67, 0
  %69 = extractvalue { i64, i32 } %67, 1
  %70 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %66, i64 %68, i32 %69) #7, !srcloc !13
  %71 = extractvalue { i64, i32 } %70, 0
  %72 = lshr i64 %71, 9
  %73 = trunc i64 %72 to i32
  store i32 %73, ptr %61, align 8
  br label %74

74:                                               ; preds = %64, %55
  %75 = load i8, ptr %29, align 1
  %76 = lshr i8 %75, 1
  %77 = zext i8 %76 to i32
  %78 = shl i32 100, %77
  %79 = tail call i32 @llvm.umin.i32(i32 %78, i32 12000) #6
  %80 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  store i8 1, ptr %80, align 2
  %81 = load volatile i32, ptr @jiffies, align 64
  %82 = add i32 %79, %81
  %83 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 3
  store i32 %82, ptr %83, align 8
  %84 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 4
  tail call void @sk_reset_timer(ptr noundef %0, ptr noundef %84, i32 noundef %82) #6
  br label %616

85:                                               ; preds = %1
  %86 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %616, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %91 = tail call ptr @rb_first(ptr noundef %90) #6
  %92 = icmp eq ptr %91, null
  %93 = load i1, ptr @tcp_retransmit_timer.__already_done.2, align 1
  %94 = xor i1 %93, true
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %97, !prof !9

96:                                               ; preds = %89
  store i1 true, ptr @tcp_retransmit_timer.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 472, i32 noundef 9, ptr noundef null) #6
  br label %97

97:                                               ; preds = %96, %89
  br i1 %92, label %616, label %98

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 40
  store i32 0, ptr %99, align 8
  %100 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %105 = load volatile i32, ptr %104, align 4
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %110 = load volatile i8, ptr %109, align 2
  %111 = zext i8 %110 to i32
  %112 = shl nuw i32 1, %111
  %113 = and i32 %112, 12
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %108
  %116 = load volatile i32, ptr @jiffies, align 64
  %117 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 18
  %118 = load i32, ptr %117, align 4
  %119 = sub i32 %116, %118
  %120 = icmp ugt i32 %119, 12000
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  tail call void @tcp_enter_loss(ptr noundef %0) #6
  %122 = tail call i32 @tcp_retransmit_skb(ptr noundef %0, ptr noundef nonnull %91, i32 noundef 1) #6
  %123 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %123, align 4
  %124 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %124, align 4
  %125 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %126 = load ptr, ptr %125, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  store volatile ptr null, ptr %125, align 8
  tail call void @dst_release(ptr noundef %126) #6
  br label %492

127:                                              ; preds = %115
  tail call fastcc void @tcp_write_err(ptr noundef %0)
  br label %616

128:                                              ; preds = %108, %103, %98
  %129 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %130 = getelementptr [126 x i32], ptr %129, i32 0, i32 40
  %131 = ptrtoint ptr %130 to i32
  %132 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %133 = inttoptr i32 %132 to ptr
  %134 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %133) #3, !srcloc !11
  %135 = add i32 %134, %131
  %136 = inttoptr i32 %135 to ptr
  %137 = load i32, ptr %136, align 4
  %138 = add i32 %137, 1
  store i32 %138, ptr %136, align 4
  %139 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %140 = load volatile i8, ptr %139, align 2
  %141 = zext i8 %140 to i32
  %142 = shl nuw i32 1, %141
  %143 = and i32 %142, 12
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %165, label %145

145:                                              ; preds = %128
  %146 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 18
  %147 = load i8, ptr %146, align 1
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %330, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %151 = load volatile ptr, ptr %150, align 8
  %152 = icmp eq ptr %151, null
  br i1 %152, label %330, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.dst_entry, ptr %151, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.dst_ops, ptr %155, i32 0, i32 9
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %330, label %159

159:                                              ; preds = %153
  %160 = tail call ptr %157(ptr noundef nonnull %151) #6
  %161 = icmp eq ptr %160, %151
  br i1 %161, label %330, label %162

162:                                              ; preds = %159
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  store volatile ptr %160, ptr %150, align 8
  %163 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %163, align 4
  %164 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %164, align 4
  br label %330

165:                                              ; preds = %128
  %166 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 58), align 64
  %167 = zext i8 %166 to i32
  %168 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 18
  %169 = load i8, ptr %168, align 1
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %258, label %171

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 98
  %173 = load i32, ptr %172, align 8
  %174 = load volatile i8, ptr %139, align 2
  %175 = zext i8 %174 to i32
  %176 = shl nuw i32 1, %175
  %177 = and i32 %176, 12
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %171
  %180 = load volatile i8, ptr %139, align 2
  br label %181

181:                                              ; preds = %179, %171
  %182 = phi i32 [ 100, %179 ], [ 20, %171 ]
  %183 = trunc i32 %182 to i16
  %184 = udiv i16 12000, %183
  %185 = zext i16 %184 to i32
  %186 = tail call i32 @llvm.ctlz.i32(i32 %185, i1 false) #6, !range !16
  %187 = sub nsw i32 31, %186
  %188 = icmp ult i32 %187, %167
  br i1 %188, label %193, label %189

189:                                              ; preds = %181
  %190 = shl i32 2, %167
  %191 = add i32 %190, -1
  %192 = mul i32 %182, %191
  br label %200

193:                                              ; preds = %181
  %194 = shl nuw nsw i32 2, %187
  %195 = add nsw i32 %194, -1
  %196 = mul nuw nsw i32 %195, %182
  %197 = sub nsw i32 %167, %187
  %198 = mul nsw i32 %197, 12000
  %199 = add nsw i32 %196, %198
  br label %200

200:                                              ; preds = %193, %189
  %201 = phi i32 [ %192, %189 ], [ %199, %193 ]
  %202 = tail call i32 @jiffies_to_msecs(i32 noundef %201) #6
  %203 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %204 = load i64, ptr %203, align 8
  %205 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %204, i32 0) #7, !srcloc !12
  %206 = extractvalue { i64, i32 } %205, 0
  %207 = extractvalue { i64, i32 } %205, 1
  %208 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %204, i64 %206, i32 %207) #7, !srcloc !13
  %209 = extractvalue { i64, i32 } %208, 0
  %210 = lshr i64 %209, 9
  %211 = trunc i64 %210 to i32
  %212 = add i32 %202, %173
  %213 = sub i32 %211, %212
  %214 = icmp sgt i32 %213, -1
  br i1 %214, label %215, label %258

215:                                              ; preds = %200
  %216 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 44), align 1
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %242, label %218

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 2
  %220 = load i32, ptr %219, align 8
  %221 = icmp sgt i32 %220, -1
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = or i32 %220, -2147483648
  store i32 %223, ptr %219, align 8
  %224 = load volatile i32, ptr @jiffies, align 64
  %225 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 3
  store i32 %224, ptr %225, align 4
  br label %238

226:                                              ; preds = %218
  %227 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 1
  %228 = load i32, ptr %227, align 4
  %229 = tail call i32 @tcp_mtu_to_mss(ptr noundef %0, i32 noundef %228) #6
  %230 = ashr i32 %229, 1
  %231 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 46), align 4
  %232 = tail call i32 @llvm.smin.i32(i32 %231, i32 %230) #6
  %233 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 45), align 8
  %234 = tail call i32 @llvm.smax.i32(i32 %232, i32 %233) #6
  %235 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 47), align 32
  %236 = tail call i32 @llvm.smax.i32(i32 %234, i32 %235) #6
  %237 = tail call i32 @tcp_mss_to_mtu(ptr noundef %0, i32 noundef %236) #6
  store i32 %237, ptr %227, align 4
  br label %238

238:                                              ; preds = %226, %222
  %239 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %240 = load i32, ptr %239, align 8
  %241 = tail call i32 @tcp_sync_mss(ptr noundef %0, i32 noundef %240) #6
  br label %242

242:                                              ; preds = %238, %215
  %243 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %244 = load volatile ptr, ptr %243, align 8
  %245 = icmp eq ptr %244, null
  br i1 %245, label %258, label %246

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.dst_entry, ptr %244, i32 0, i32 1
  %248 = load ptr, ptr %247, align 4
  %249 = getelementptr inbounds %struct.dst_ops, ptr %248, i32 0, i32 9
  %250 = load ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, null
  br i1 %251, label %258, label %252

252:                                              ; preds = %246
  %253 = tail call ptr %250(ptr noundef nonnull %244) #6
  %254 = icmp eq ptr %253, %244
  br i1 %254, label %258, label %255

255:                                              ; preds = %252
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  store volatile ptr %253, ptr %243, align 8
  %256 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %256, align 4
  %257 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %257, align 4
  br label %258

258:                                              ; preds = %255, %252, %246, %242, %200, %165
  %259 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 59), align 1
  %260 = zext i8 %259 to i32
  %261 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %262 = load volatile i32, ptr %261, align 4
  %263 = and i32 %262, 1
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %339, label %265

265:                                              ; preds = %258
  %266 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %267 = load i32, ptr %266, align 4
  %268 = icmp ult i32 %267, 12000
  %269 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 60), align 2
  %270 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 52
  %271 = load i32, ptr %270, align 8
  %272 = icmp eq i32 %271, 0
  %273 = or i1 %268, %272
  %274 = select i1 %273, i8 %269, i8 0
  %275 = zext i8 %274 to i32
  %276 = icmp eq i8 %274, 0
  %277 = select i1 %268, i32 8, i32 0
  %278 = select i1 %276, i32 %277, i32 %275
  br i1 %268, label %326, label %279

279:                                              ; preds = %265
  %280 = load i8, ptr %168, align 1
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %326, label %282

282:                                              ; preds = %279
  %283 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 98
  %284 = load i32, ptr %283, align 8
  %285 = load volatile i8, ptr %139, align 2
  %286 = zext i8 %285 to i32
  %287 = shl nuw i32 1, %286
  %288 = and i32 %287, 12
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %292, label %290

290:                                              ; preds = %282
  %291 = load volatile i8, ptr %139, align 2
  br label %292

292:                                              ; preds = %290, %282
  %293 = phi i32 [ 100, %290 ], [ 20, %282 ]
  %294 = trunc i32 %293 to i16
  %295 = udiv i16 12000, %294
  %296 = zext i16 %295 to i32
  %297 = tail call i32 @llvm.ctlz.i32(i32 %296, i1 false) #6, !range !16
  %298 = sub nsw i32 31, %297
  %299 = icmp ugt i32 %278, %298
  br i1 %299, label %304, label %300

300:                                              ; preds = %292
  %301 = shl i32 2, %278
  %302 = add i32 %301, -1
  %303 = mul i32 %293, %302
  br label %311

304:                                              ; preds = %292
  %305 = shl nuw nsw i32 2, %298
  %306 = add nsw i32 %305, -1
  %307 = mul nuw nsw i32 %306, %293
  %308 = sub nsw i32 %278, %298
  %309 = mul nsw i32 %308, 12000
  %310 = add nsw i32 %307, %309
  br label %311

311:                                              ; preds = %304, %300
  %312 = phi i32 [ %303, %300 ], [ %310, %304 ]
  %313 = tail call i32 @jiffies_to_msecs(i32 noundef %312) #6
  %314 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %315 = load i64, ptr %314, align 8
  %316 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %315, i32 0) #7, !srcloc !12
  %317 = extractvalue { i64, i32 } %316, 0
  %318 = extractvalue { i64, i32 } %316, 1
  %319 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %315, i64 %317, i32 %318) #7, !srcloc !13
  %320 = extractvalue { i64, i32 } %319, 0
  %321 = lshr i64 %320, 9
  %322 = trunc i64 %321 to i32
  %323 = add i32 %313, %284
  %324 = sub i32 %322, %323
  %325 = icmp slt i32 %324, 0
  br label %326

326:                                              ; preds = %311, %279, %265
  %327 = phi i1 [ true, %265 ], [ %325, %311 ], [ true, %279 ]
  %328 = tail call fastcc i32 @tcp_out_of_resources(ptr noundef %0, i1 noundef zeroext %327) #6
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %339, label %616

330:                                              ; preds = %162, %159, %153, %149, %145
  %331 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 21
  %332 = load i8, ptr %331, align 8
  %333 = icmp eq i8 %332, 0
  %334 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 53), align 1
  %335 = select i1 %333, i8 %334, i8 %332
  %336 = zext i8 %335 to i32
  %337 = load i8, ptr %146, align 1
  %338 = icmp ult i8 %337, %335
  br i1 %338, label %339, label %394

339:                                              ; preds = %330, %326, %258
  %340 = phi i32 [ %336, %330 ], [ %260, %258 ], [ %278, %326 ]
  %341 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 18
  %342 = load i8, ptr %341, align 1
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %394, label %344

344:                                              ; preds = %339
  %345 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 27
  %346 = load i32, ptr %345, align 4
  %347 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 98
  %348 = load i32, ptr %347, align 8
  %349 = icmp eq i32 %346, 0
  br i1 %349, label %350, label %380, !prof !10

350:                                              ; preds = %344
  %351 = load volatile i8, ptr %139, align 2
  %352 = zext i8 %351 to i32
  %353 = shl nuw i32 1, %352
  %354 = and i32 %353, 12
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %358, label %356

356:                                              ; preds = %350
  %357 = load volatile i8, ptr %139, align 2
  br label %358

358:                                              ; preds = %356, %350
  %359 = phi i32 [ 100, %356 ], [ 20, %350 ]
  %360 = trunc i32 %359 to i16
  %361 = udiv i16 12000, %360
  %362 = zext i16 %361 to i32
  %363 = tail call i32 @llvm.ctlz.i32(i32 %362, i1 false) #6, !range !16
  %364 = sub nsw i32 31, %363
  %365 = icmp ugt i32 %340, %364
  br i1 %365, label %370, label %366

366:                                              ; preds = %358
  %367 = shl i32 2, %340
  %368 = add i32 %367, -1
  %369 = mul i32 %359, %368
  br label %377

370:                                              ; preds = %358
  %371 = shl nuw nsw i32 2, %364
  %372 = add nsw i32 %371, -1
  %373 = mul nuw nsw i32 %372, %359
  %374 = sub nsw i32 %340, %364
  %375 = mul nsw i32 %374, 12000
  %376 = add nsw i32 %373, %375
  br label %377

377:                                              ; preds = %370, %366
  %378 = phi i32 [ %369, %366 ], [ %376, %370 ]
  %379 = tail call i32 @jiffies_to_msecs(i32 noundef %378) #6
  br label %380

380:                                              ; preds = %377, %344
  %381 = phi i32 [ %379, %377 ], [ %346, %344 ]
  %382 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %383 = load i64, ptr %382, align 8
  %384 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %383, i32 0) #7, !srcloc !12
  %385 = extractvalue { i64, i32 } %384, 0
  %386 = extractvalue { i64, i32 } %384, 1
  %387 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %383, i64 %385, i32 %386) #7, !srcloc !13
  %388 = extractvalue { i64, i32 } %387, 0
  %389 = lshr i64 %388, 9
  %390 = trunc i64 %389 to i32
  %391 = add i32 %381, %348
  %392 = sub i32 %390, %391
  %393 = icmp sgt i32 %392, -1
  br label %394

394:                                              ; preds = %380, %339, %330
  %395 = phi i1 [ true, %330 ], [ %393, %380 ], [ false, %339 ]
  tail call void @tcp_fastopen_active_detect_blackhole(ptr noundef %0, i1 noundef zeroext %395) #6
  %396 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 107
  %397 = load i8, ptr %396, align 4
  %398 = and i8 %397, 1
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %402, label %400

400:                                              ; preds = %394
  %401 = load volatile i8, ptr %139, align 2
  br label %402

402:                                              ; preds = %400, %394
  br i1 %395, label %424, label %403

403:                                              ; preds = %402
  %404 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 42
  %405 = load i32, ptr %404, align 4
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %440, label %407

407:                                              ; preds = %403
  %408 = tail call i32 @prandom_u32() #6
  %409 = icmp eq i32 %408, 0
  %410 = select i1 %409, i32 1, i32 %408
  store volatile i32 %410, ptr %404, align 4
  %411 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 108
  %412 = load i16, ptr %411, align 2
  %413 = add i16 %412, 1
  store i16 %413, ptr %411, align 2
  %414 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %415 = getelementptr [126 x i32], ptr %414, i32 0, i32 120
  %416 = ptrtoint ptr %415 to i32
  %417 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %418 = inttoptr i32 %417 to ptr
  %419 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %418) #3, !srcloc !11
  %420 = add i32 %419, %416
  %421 = inttoptr i32 %420 to ptr
  %422 = load i32, ptr %421, align 4
  %423 = add i32 %422, 1
  store i32 %423, ptr %421, align 4
  br label %440

424:                                              ; preds = %402
  %425 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 52
  %426 = load i32, ptr %425, align 8
  %427 = icmp eq i32 %426, 0
  %428 = select i1 %427, i32 110, i32 %426
  %429 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  store i32 %428, ptr %429, align 4
  tail call void @sk_error_report(ptr noundef %0) #6
  tail call void @tcp_write_queue_purge(ptr noundef %0) #6
  tail call void @tcp_done(ptr noundef %0) #6
  %430 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %431 = getelementptr [126 x i32], ptr %430, i32 0, i32 53
  %432 = ptrtoint ptr %431 to i32
  %433 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %434 = inttoptr i32 %433 to ptr
  %435 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %434) #3, !srcloc !11
  %436 = add i32 %435, %432
  %437 = inttoptr i32 %436 to ptr
  %438 = load i32, ptr %437, align 4
  %439 = add i32 %438, 1
  store i32 %439, ptr %437, align 4
  br label %616

440:                                              ; preds = %407, %403
  %441 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 18
  %442 = load i8, ptr %441, align 1
  %443 = icmp eq i8 %442, 0
  br i1 %443, label %444, label %476

444:                                              ; preds = %440
  %445 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %446 = load i8, ptr %445, align 4
  %447 = trunc i8 %446 to i5
  switch i5 %447, label %454 [
    i5 3, label %448
    i5 4, label %464
    i5 1, label %458
  ]

448:                                              ; preds = %444
  %449 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %450 = load i24, ptr %449, align 4
  %451 = and i24 %450, 112
  %452 = icmp eq i24 %451, 0
  %453 = select i1 %452, i32 43, i32 44
  br label %464

454:                                              ; preds = %444
  %455 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %456 = load i32, ptr %455, align 4
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %476, label %458

458:                                              ; preds = %454, %444
  %459 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %460 = load i24, ptr %459, align 4
  %461 = and i24 %460, 112
  %462 = icmp eq i24 %461, 0
  %463 = select i1 %462, i32 35, i32 36
  br label %464

464:                                              ; preds = %458, %448, %444
  %465 = phi i32 [ %463, %458 ], [ 37, %444 ], [ %453, %448 ]
  %466 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %467 = getelementptr [126 x i32], ptr %466, i32 0, i32 %465
  %468 = ptrtoint ptr %467 to i32
  %469 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %470 = inttoptr i32 %469 to ptr
  %471 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %470) #3, !srcloc !11
  %472 = add i32 %471, %468
  %473 = inttoptr i32 %472 to ptr
  %474 = load i32, ptr %473, align 4
  %475 = add i32 %474, 1
  store i32 %475, ptr %473, align 4
  br label %476

476:                                              ; preds = %464, %454, %440
  tail call void @tcp_enter_loss(ptr noundef %0) #6
  %477 = load i8, ptr %441, align 1
  %478 = add i8 %477, 1
  store i8 %478, ptr %441, align 1
  %479 = tail call ptr @rb_first(ptr noundef %90) #6
  %480 = tail call i32 @tcp_retransmit_skb(ptr noundef %0, ptr noundef %479, i32 noundef 1) #6
  %481 = icmp sgt i32 %480, 0
  br i1 %481, label %482, label %488

482:                                              ; preds = %476
  %483 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  store i8 1, ptr %483, align 2
  %484 = load volatile i32, ptr @jiffies, align 64
  %485 = add i32 %484, 50
  %486 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 3
  store i32 %485, ptr %486, align 8
  %487 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 4
  tail call void @sk_reset_timer(ptr noundef %0, ptr noundef %487, i32 noundef %485) #6
  br label %616

488:                                              ; preds = %476
  %489 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 20
  %490 = load i8, ptr %489, align 1
  %491 = add i8 %490, 1
  store i8 %491, ptr %489, align 1
  br label %492

492:                                              ; preds = %488, %121
  %493 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %494 = load volatile i8, ptr %493, align 2
  %495 = icmp eq i8 %494, 1
  br i1 %495, label %496, label %526

496:                                              ; preds = %492
  %497 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %498 = load i16, ptr %497, align 4
  %499 = and i16 %498, 4096
  %500 = icmp eq i16 %499, 0
  %501 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 69), align 1
  %502 = icmp eq i8 %501, 0
  %503 = select i1 %500, i1 %502, i1 false
  br i1 %503, label %526, label %504

504:                                              ; preds = %496
  %505 = load i32, ptr %86, align 4
  %506 = icmp ult i32 %505, 4
  br i1 %506, label %507, label %526

507:                                              ; preds = %504
  %508 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %509 = load i32, ptr %508, align 4
  %510 = icmp ult i32 %509, 2147483647
  br i1 %510, label %511, label %526

511:                                              ; preds = %507
  %512 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 18
  %513 = load i8, ptr %512, align 1
  %514 = icmp ult i8 %513, 7
  br i1 %514, label %515, label %526

515:                                              ; preds = %511
  %516 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 20
  store i8 0, ptr %516, align 1
  %517 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 45
  %518 = load i32, ptr %517, align 8
  %519 = lshr i32 %518, 3
  %520 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 48
  %521 = load i32, ptr %520, align 4
  %522 = add i32 %519, %521
  %523 = tail call i32 @__usecs_to_jiffies(i32 noundef %522) #6
  %524 = tail call i32 @llvm.umin.i32(i32 %523, i32 12000)
  %525 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  store i32 %524, ptr %525, align 4
  br label %531

526:                                              ; preds = %511, %507, %504, %496, %492
  %527 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %528 = load i32, ptr %527, align 4
  %529 = shl i32 %528, 1
  %530 = tail call i32 @llvm.umin.i32(i32 %529, i32 12000)
  store i32 %530, ptr %527, align 4
  br label %531

531:                                              ; preds = %526, %515
  %532 = phi i32 [ %530, %526 ], [ %524, %515 ]
  %533 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 27
  %534 = load i32, ptr %533, align 4
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %554, label %536

536:                                              ; preds = %531
  %537 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 98
  %538 = load i32, ptr %537, align 8
  %539 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %540 = load i64, ptr %539, align 8
  %541 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %540, i32 0) #7, !srcloc !12
  %542 = extractvalue { i64, i32 } %541, 0
  %543 = extractvalue { i64, i32 } %541, 1
  %544 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %540, i64 %542, i32 %543) #7, !srcloc !13
  %545 = extractvalue { i64, i32 } %544, 0
  %546 = lshr i64 %545, 9
  %547 = trunc i64 %546 to i32
  %548 = sub i32 %538, %547
  %549 = add i32 %548, %534
  %550 = icmp slt i32 %549, 1
  br i1 %550, label %554, label %551

551:                                              ; preds = %536
  %552 = tail call i32 @__msecs_to_jiffies(i32 noundef %549) #6
  %553 = tail call i32 @llvm.umin.i32(i32 %532, i32 %552) #6
  br label %554

554:                                              ; preds = %551, %536, %531
  %555 = phi i32 [ %553, %551 ], [ 1, %536 ], [ %532, %531 ]
  %556 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  store i8 1, ptr %556, align 2
  %557 = load volatile i32, ptr @jiffies, align 64
  %558 = add i32 %557, %555
  %559 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 3
  store i32 %558, ptr %559, align 8
  %560 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 4
  tail call void @sk_reset_timer(ptr noundef %0, ptr noundef %560, i32 noundef %558) #6
  %561 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 58), align 64
  %562 = zext i8 %561 to i32
  %563 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 18
  %564 = load i8, ptr %563, align 1
  %565 = icmp eq i8 %564, 0
  br i1 %565, label %616, label %566

566:                                              ; preds = %554
  %567 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 98
  %568 = load i32, ptr %567, align 8
  %569 = load volatile i8, ptr %493, align 2
  %570 = zext i8 %569 to i32
  %571 = shl nuw i32 1, %570
  %572 = and i32 %571, 12
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %576, label %574

574:                                              ; preds = %566
  %575 = load volatile i8, ptr %493, align 2
  br label %576

576:                                              ; preds = %574, %566
  %577 = phi i32 [ 100, %574 ], [ 20, %566 ]
  %578 = trunc i32 %577 to i16
  %579 = udiv i16 12000, %578
  %580 = zext i16 %579 to i32
  %581 = tail call i32 @llvm.ctlz.i32(i32 %580, i1 false) #6, !range !16
  %582 = sub nsw i32 31, %581
  %583 = icmp ugt i32 %582, %562
  br i1 %583, label %584, label %588

584:                                              ; preds = %576
  %585 = shl i32 4, %562
  %586 = add i32 %585, -1
  %587 = mul i32 %577, %586
  br label %596

588:                                              ; preds = %576
  %589 = shl nuw nsw i32 2, %582
  %590 = add nsw i32 %589, -1
  %591 = mul nuw nsw i32 %590, %577
  %592 = add nuw nsw i32 %581, %562
  %593 = mul nuw nsw i32 %592, 12000
  %594 = add nsw i32 %593, -360000
  %595 = add nsw i32 %591, %594
  br label %596

596:                                              ; preds = %588, %584
  %597 = phi i32 [ %587, %584 ], [ %595, %588 ]
  %598 = tail call i32 @jiffies_to_msecs(i32 noundef %597) #6
  %599 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %600 = load i64, ptr %599, align 8
  %601 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %600, i32 0) #7, !srcloc !12
  %602 = extractvalue { i64, i32 } %601, 0
  %603 = extractvalue { i64, i32 } %601, 1
  %604 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %600, i64 %602, i32 %603) #7, !srcloc !13
  %605 = extractvalue { i64, i32 } %604, 0
  %606 = lshr i64 %605, 9
  %607 = trunc i64 %606 to i32
  %608 = add i32 %598, %568
  %609 = sub i32 %607, %608
  %610 = icmp sgt i32 %609, -1
  br i1 %610, label %611, label %616

611:                                              ; preds = %596
  %612 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %612, align 4
  %613 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %613, align 4
  %614 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %615 = load ptr, ptr %614, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  store volatile ptr null, ptr %614, align 8
  tail call void @dst_release(ptr noundef %615) #6
  br label %616

616:                                              ; preds = %611, %596, %554, %482, %424, %326, %127, %97, %85, %74, %34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_write_err(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 52
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 110, i32 %3
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  store i32 %5, ptr %6, align 4
  tail call void @sk_error_report(ptr noundef %0) #6
  tail call void @tcp_write_queue_purge(ptr noundef %0) #6
  tail call void @tcp_done(ptr noundef %0) #6
  %7 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %8 = getelementptr [126 x i32], ptr %7, i32 0, i32 53
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #3, !srcloc !11
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_enter_loss(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_retransmit_skb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_write_timer_handler(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 1, %4
  %6 = and i32 %5, 1152
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %130

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  %10 = load i8, ptr %9, align 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %130, label %12

12:                                               ; preds = %8
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = sub i32 %13, %15
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 4
  tail call void @sk_reset_timer(ptr noundef %0, ptr noundef %19, i32 noundef %15) #6
  br label %130

20:                                               ; preds = %12
  tail call void @tcp_mstamp_refresh(ptr noundef %0) #6
  %21 = load i8, ptr %9, align 2
  switch i8 %21, label %130 [
    i8 6, label %22
    i8 5, label %23
    i8 1, label %24
    i8 3, label %25
  ]

22:                                               ; preds = %20
  tail call void @tcp_rack_reo_timeout(ptr noundef %0) #6
  br label %130

23:                                               ; preds = %20
  tail call void @tcp_send_loss_probe(ptr noundef %0) #6
  br label %130

24:                                               ; preds = %20
  store i8 0, ptr %9, align 2
  tail call void @tcp_retransmit_timer(ptr noundef %0)
  br label %130

25:                                               ; preds = %20
  store i8 0, ptr %9, align 2
  %26 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %27 = load ptr, ptr %26, align 4
  %28 = icmp ne ptr %27, %26
  %29 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  %32 = icmp ne ptr %27, null
  %33 = and i1 %28, %32
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 22
  store i8 0, ptr %36, align 1
  %37 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 26
  store i32 0, ptr %37, align 8
  br label %130

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 26
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load volatile i32, ptr @jiffies, align 64
  store i32 %43, ptr %39, align 8
  br label %53

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 27
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load volatile i32, ptr @jiffies, align 64
  %50 = sub i32 %49, %40
  %51 = tail call i32 @__msecs_to_jiffies(i32 noundef %46) #6
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %113

53:                                               ; preds = %48, %44, %42
  %54 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 59), align 1
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %107, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %62 = load i32, ptr %61, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 20
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i64
  %67 = shl i64 %63, %66
  %68 = tail call i64 @llvm.umin.i64(i64 %67, i64 12000) #6
  %69 = trunc i64 %68 to i32
  %70 = icmp ult i32 %69, 12000
  %71 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 60), align 2
  %72 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 52
  %73 = load i32, ptr %72, align 8
  %74 = icmp eq i32 %73, 0
  %75 = or i1 %74, %70
  %76 = select i1 %75, i8 %71, i8 0
  %77 = zext i8 %76 to i32
  %78 = icmp eq i8 %76, 0
  %79 = select i1 %70, i32 8, i32 0
  %80 = select i1 %78, i32 %79, i32 %77
  %81 = zext i8 %65 to i32
  %82 = icmp ugt i32 %80, %81
  %83 = select i1 %70, i1 true, i1 %82
  br i1 %83, label %84, label %113

84:                                               ; preds = %60
  %85 = load volatile i32, ptr @jiffies, align 64
  %86 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 19
  %87 = load i32, ptr %86, align 8
  %88 = sub i32 %85, %87
  %89 = icmp ult i32 %88, 24001
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = select i1 %89, i32 1, i32 2
  %93 = select i1 %74, i32 %91, i32 %92
  %94 = tail call zeroext i1 @tcp_check_oom(ptr noundef %0, i32 noundef %93) #6
  br i1 %94, label %95, label %107

95:                                               ; preds = %84
  %96 = load volatile i32, ptr @jiffies, align 64
  tail call void @tcp_send_active_reset(ptr noundef %0, i32 noundef 2592) #6
  tail call void @tcp_done(ptr noundef %0) #6
  %97 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %98 = getelementptr [126 x i32], ptr %97, i32 0, i32 52
  %99 = ptrtoint ptr %98 to i32
  %100 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %101 = inttoptr i32 %100 to ptr
  %102 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %101) #3, !srcloc !11
  %103 = add i32 %102, %99
  %104 = inttoptr i32 %103 to ptr
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, 1
  store i32 %106, ptr %104, align 4
  br label %130

107:                                              ; preds = %84, %53
  %108 = phi i32 [ %55, %53 ], [ %80, %84 ]
  %109 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 22
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp ugt i32 %108, %111
  br i1 %112, label %129, label %113

113:                                              ; preds = %107, %60, %48
  %114 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 52
  %115 = load i32, ptr %114, align 8
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, i32 110, i32 %115
  %118 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  store i32 %117, ptr %118, align 4
  tail call void @sk_error_report(ptr noundef %0) #6
  tail call void @tcp_write_queue_purge(ptr noundef %0) #6
  tail call void @tcp_done(ptr noundef %0) #6
  %119 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %120 = getelementptr [126 x i32], ptr %119, i32 0, i32 53
  %121 = ptrtoint ptr %120 to i32
  %122 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %123 = inttoptr i32 %122 to ptr
  %124 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %123) #3, !srcloc !11
  %125 = add i32 %124, %121
  %126 = inttoptr i32 %125 to ptr
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, 1
  store i32 %128, ptr %126, align 4
  br label %130

129:                                              ; preds = %107
  tail call void @tcp_send_probe0(ptr noundef %0) #6
  br label %130

130:                                              ; preds = %129, %113, %95, %35, %24, %23, %22, %20, %18, %8, %1
  %131 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %132 = load ptr, ptr %131, align 8
  %133 = getelementptr inbounds %struct.proto, ptr %132, i32 0, i32 30
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %155, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %140 = load i32, ptr %139, align 8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %150, label %142, !prof !10

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %146 = load volatile i32, ptr %145, align 4
  %147 = add i32 %144, %146
  %148 = sub i32 %140, %147
  %149 = tail call i32 @llvm.smax.i32(i32 %148, i32 0) #6
  br label %150

150:                                              ; preds = %142, %136
  %151 = phi i32 [ %149, %142 ], [ 0, %136 ]
  %152 = sub i32 %138, %151
  %153 = icmp sgt i32 %152, 4095
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef %152) #6
  br label %155

155:                                              ; preds = %154, %150, %130
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_rack_reo_timeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_send_loss_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_syn_ack_timeout(ptr nocapture noundef readnone %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %3 = getelementptr [126 x i32], ptr %2, i32 0, i32 40
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %6) #3, !srcloc !11
  %8 = add i32 %7, %4
  %9 = inttoptr i32 %8 to ptr
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_set_keepalive(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %4 = load volatile i8, ptr %3, align 2
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 1, %5
  %7 = and i32 %6, 1152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 104
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 50), align 4
  %21 = select i1 %19, i32 %20, i32 %18
  tail call void @inet_csk_reset_keepalive_timer(ptr noundef %0, i32 noundef %21) #6
  br label %23

22:                                               ; preds = %9
  tail call void @inet_csk_delete_keepalive_timer(ptr noundef %0) #6
  br label %23

23:                                               ; preds = %22, %16, %11, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_reset_keepalive_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_delete_keepalive_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_init_xmit_timers(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @inet_csk_init_xmit_timers(ptr noundef %0, ptr noundef nonnull @tcp_write_timer, ptr noundef nonnull @tcp_delack_timer, ptr noundef nonnull @tcp_keepalive_timer) #6
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 85
  tail call void @hrtimer_init(ptr noundef %2, i32 noundef 1, i32 noundef 6) #6
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 85, i32 2
  store ptr @tcp_pace_kick, ptr %3, align 8
  %4 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 86
  tail call void @hrtimer_init(ptr noundef %4, i32 noundef 1, i32 noundef 7) #6
  %5 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 86, i32 2
  store ptr @tcp_compressed_ack_kick, ptr %5, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_init_xmit_timers(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_write_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -764
  %3 = getelementptr i8, ptr %0, i32 -640
  tail call void @_raw_spin_lock(ptr noundef %3) #6
  %4 = getelementptr i8, ptr %0, i32 -636
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @tcp_write_timer_handler(ptr noundef %2)
  br label %23

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -504
  %10 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %9) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 -664
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #6, !srcloc !17
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #6, !srcloc !18
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !9

17:                                               ; preds = %12
  %18 = add i32 %15, 1
  %19 = or i32 %18, %15
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %23, label %21, !prof !10

21:                                               ; preds = %17, %12
  %22 = phi i32 [ 2, %12 ], [ 1, %17 ]
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef %22) #6
  br label %23

23:                                               ; preds = %21, %17, %8, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  %24 = load i16, ptr %3, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !22
  %26 = getelementptr i8, ptr %0, i32 -664
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #6, !srcloc !17
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #6, !srcloc !24
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %34, label %32, !prof !10

32:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #6
  br label %34

33:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !25
  tail call void @sk_free(ptr noundef %2) #6
  br label %34

34:                                               ; preds = %33, %32, %30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_delack_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -784
  %3 = getelementptr i8, ptr %0, i32 -660
  tail call void @_raw_spin_lock(ptr noundef %3) #6
  %4 = getelementptr i8, ptr %0, i32 -656
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @tcp_delack_timer_handler(ptr noundef %2)
  br label %33

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %10 = getelementptr [126 x i32], ptr %9, i32 0, i32 17
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #3, !srcloc !11
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  %19 = getelementptr i8, ptr %0, i32 -524
  %20 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %19) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %8
  %23 = getelementptr i8, ptr %0, i32 -684
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #6, !srcloc !17
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #6, !srcloc !18
  %25 = extractvalue { i32, i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27, !prof !9

27:                                               ; preds = %22
  %28 = add i32 %25, 1
  %29 = or i32 %28, %25
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %33, label %31, !prof !10

31:                                               ; preds = %27, %22
  %32 = phi i32 [ 2, %22 ], [ 1, %27 ]
  tail call void @refcount_warn_saturate(ptr noundef %23, i32 noundef %32) #6
  br label %33

33:                                               ; preds = %31, %27, %8, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  %34 = load i16, ptr %3, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !22
  %36 = getelementptr i8, ptr %0, i32 -684
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #6, !srcloc !17
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #6, !srcloc !24
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = icmp sgt i32 %38, 0
  br i1 %41, label %44, label %42, !prof !10

42:                                               ; preds = %40
  tail call void @refcount_warn_saturate(ptr noundef %36, i32 noundef 3) #6
  br label %44

43:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !25
  tail call void @sk_free(ptr noundef %2) #6
  br label %44

44:                                               ; preds = %43, %42, %40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_keepalive_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -304
  %3 = getelementptr i8, ptr %0, i32 -180
  tail call void @_raw_spin_lock(ptr noundef %3) #6
  %4 = getelementptr i8, ptr %0, i32 -176
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @inet_csk_reset_keepalive_timer(ptr noundef %2, i32 noundef 5) #6
  br label %119

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -286
  %10 = load volatile i8, ptr %9, align 2
  %11 = icmp eq i8 %10, 10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %119

14:                                               ; preds = %8
  tail call void @tcp_mstamp_refresh(ptr noundef %2) #6
  %15 = load volatile i8, ptr %9, align 2
  %16 = icmp eq i8 %15, 5
  br i1 %16, label %17, label %40

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %0, i32 -224
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %0, i32 1360
  %24 = load i32, ptr %23, align 8
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = icmp eq i32 %24, 0
  %28 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 62), align 4
  %29 = select i1 %27, i32 %28, i32 %24
  %30 = getelementptr i8, ptr %0, i32 500
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 %31, 2
  %33 = ashr i32 %31, 1
  %34 = sub i32 %32, %33
  %35 = tail call i32 @llvm.smax.i32(i32 %29, i32 %34) #6
  %36 = add i32 %35, -6000
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  tail call void @tcp_time_wait(ptr noundef %2, i32 noundef 5, i32 noundef %36) #6
  br label %119

39:                                               ; preds = %26, %22
  tail call void @tcp_send_active_reset(ptr noundef %2, i32 noundef 2592) #6
  tail call void @tcp_done(ptr noundef %2) #6
  br label %119

40:                                               ; preds = %17, %14
  %41 = getelementptr i8, ptr %0, i32 -224
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %119, label %45

45:                                               ; preds = %40
  %46 = load volatile i8, ptr %9, align 2
  %47 = zext i8 %46 to i32
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, 132
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %119

51:                                               ; preds = %45
  %52 = getelementptr i8, ptr %0, i32 1352
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, 0
  %55 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 50), align 4
  %56 = select i1 %54, i32 %55, i32 %53
  %57 = getelementptr i8, ptr %0, i32 964
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %117

60:                                               ; preds = %51
  %61 = getelementptr i8, ptr %0, i32 1100
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr i8, ptr %0, i32 740
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %117

66:                                               ; preds = %60
  %67 = load volatile i32, ptr @jiffies, align 64
  %68 = getelementptr i8, ptr %0, i32 568
  %69 = load i32, ptr %68, align 4
  %70 = sub i32 %67, %69
  %71 = load volatile i32, ptr @jiffies, align 64
  %72 = getelementptr i8, ptr %0, i32 780
  %73 = load i32, ptr %72, align 4
  %74 = sub i32 %71, %73
  %75 = tail call i32 @llvm.umin.i32(i32 %70, i32 %74) #6
  %76 = icmp ugt i32 %56, %75
  br i1 %76, label %113, label %77

77:                                               ; preds = %66
  %78 = getelementptr i8, ptr %0, i32 596
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %77
  %82 = tail call i32 @__msecs_to_jiffies(i32 noundef %79) #6
  %83 = icmp ult i32 %75, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = getelementptr i8, ptr %0, i32 553
  %86 = load i8, ptr %85, align 1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %84, %81
  %89 = load i32, ptr %78, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88, %77
  %92 = getelementptr i8, ptr %0, i32 553
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i32 983
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 0
  %97 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 52), align 4
  %98 = select i1 %96, i8 %97, i8 %95
  %99 = icmp ugt i8 %98, %93
  br i1 %99, label %101, label %100

100:                                              ; preds = %91, %84
  tail call void @tcp_send_active_reset(ptr noundef %2, i32 noundef 2592) #6
  tail call fastcc void @tcp_write_err(ptr noundef %2)
  br label %119

101:                                              ; preds = %91, %88
  %102 = tail call i32 @tcp_write_wakeup(ptr noundef %2, i32 noundef 110) #6
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = getelementptr i8, ptr %0, i32 553
  %106 = load i8, ptr %105, align 1
  %107 = add i8 %106, 1
  store i8 %107, ptr %105, align 1
  %108 = getelementptr i8, ptr %0, i32 1356
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 0
  %111 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 51), align 16
  %112 = select i1 %110, i32 %111, i32 %109
  br label %115

113:                                              ; preds = %66
  %114 = sub i32 %56, %75
  br label %115

115:                                              ; preds = %113, %104, %101
  %116 = phi i32 [ %112, %104 ], [ %114, %113 ], [ 50, %101 ]
  tail call fastcc void @sk_mem_reclaim(ptr noundef %2)
  br label %117

117:                                              ; preds = %115, %60, %51
  %118 = phi i32 [ %56, %51 ], [ %116, %115 ], [ %56, %60 ]
  tail call void @inet_csk_reset_keepalive_timer(ptr noundef %2, i32 noundef %118) #6
  br label %119

119:                                              ; preds = %117, %100, %45, %40, %39, %38, %12, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  %120 = load i16, ptr %3, align 4
  %121 = add i16 %120, 1
  store i16 %121, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !22
  %122 = getelementptr i8, ptr %0, i32 -204
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %122) #6, !srcloc !17
  %123 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %122, ptr %122, i32 1, ptr elementtype(i32) %122) #6, !srcloc !24
  %124 = extractvalue { i32, i32, i32 } %123, 0
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %129, label %126

126:                                              ; preds = %119
  %127 = icmp sgt i32 %124, 0
  br i1 %127, label %130, label %128, !prof !10

128:                                              ; preds = %126
  tail call void @refcount_warn_saturate(ptr noundef %122, i32 noundef 3) #6
  br label %130

129:                                              ; preds = %119
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !25
  tail call void @sk_free(ptr noundef %2) #6
  br label %130

130:                                              ; preds = %129, %128, %126
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_pace_kick(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_compressed_ack_kick(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1472
  %3 = getelementptr i8, ptr %0, i32 -1348
  tail call void @_raw_spin_lock(ptr noundef %3) #6
  %4 = getelementptr i8, ptr %0, i32 -1344
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -302
  %9 = load i8, ptr %8, align 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = add i8 %9, -1
  store i8 %12, ptr %8, align 2
  tail call void @tcp_send_ack(ptr noundef %2) #6
  br label %28

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %0, i32 -1212
  %15 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %14) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 -1372
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #6, !srcloc !17
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #6, !srcloc !18
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !9

22:                                               ; preds = %17
  %23 = add i32 %20, 1
  %24 = or i32 %23, %20
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %28, label %26, !prof !10

26:                                               ; preds = %22, %17
  %27 = phi i32 [ 2, %17 ], [ 1, %22 ]
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef %27) #6
  br label %28

28:                                               ; preds = %26, %22, %13, %11, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  %29 = load i16, ptr %3, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !22
  %31 = getelementptr i8, ptr %0, i32 -1372
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #6, !srcloc !17
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #6, !srcloc !24
  %33 = extractvalue { i32, i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = icmp sgt i32 %33, 0
  br i1 %36, label %39, label %37, !prof !10

37:                                               ; preds = %35
  tail call void @refcount_warn_saturate(ptr noundef %31, i32 noundef 3) #6
  br label %39

38:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !25
  tail call void @sk_free(ptr noundef %2) #6
  br label %39

39:                                               ; preds = %38, %37, %35
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_mem_reclaim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_rtx_syn_ack(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_write_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tcp_out_of_resources(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 8
  %6 = sub i32 %3, %5
  %7 = icmp ult i32 %6, 24001
  %8 = and i1 %7, %1
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 52
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %8, i32 1, i32 2
  %15 = select i1 %13, i32 %10, i32 %14
  %16 = tail call zeroext i1 @tcp_check_oom(ptr noundef %0, i32 noundef %15) #6
  br i1 %16, label %17, label %44

17:                                               ; preds = %2
  %18 = load volatile i32, ptr @jiffies, align 64
  %19 = load i32, ptr %4, align 8
  %20 = sub i32 %18, %19
  %21 = icmp slt i32 %20, 6001
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = or i1 %29, %1
  br i1 %30, label %32, label %33

31:                                               ; preds = %22
  br i1 %1, label %32, label %33

32:                                               ; preds = %31, %26, %17
  tail call void @tcp_send_active_reset(ptr noundef %0, i32 noundef 2592) #6
  br label %33

33:                                               ; preds = %32, %31, %26
  tail call void @tcp_done(ptr noundef %0) #6
  %34 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %35 = getelementptr [126 x i32], ptr %34, i32 0, i32 52
  %36 = ptrtoint ptr %35 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #3, !srcloc !11
  %40 = add i32 %39, %36
  %41 = inttoptr i32 %40 to ptr
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %33, %2
  %45 = phi i32 [ 1, %33 ], [ 0, %2 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_fastopen_active_detect_blackhole(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_mtu_to_mss(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_mss_to_mtu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sync_mss(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcp_check_oom(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_send_active_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_send_probe0(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_time_wait(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_write_wakeup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { cold nounwind }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 487585}
!12 = !{i64 426065, i64 426092, i64 426114, i64 426142}
!13 = !{i64 426473, i64 426500, i64 426533, i64 426554, i64 426581, i64 426607}
!14 = !{i64 2155355510}
!15 = !{i64 2155346960}
!16 = !{i32 20, i32 33}
!17 = !{i64 563207, i64 2148053178, i64 2148053204, i64 2148053251, i64 2148053273, i64 2148053301, i64 2148053321}
!18 = !{i64 2148066051, i64 2148066083, i64 2148066112, i64 2148066146, i64 2148066177, i64 2148066200}
!19 = !{i64 2148947732}
!20 = !{i64 2148943556}
!21 = !{i64 2148943631, i64 2148943658, i64 2148943705, i64 2148943727, i64 2148943755, i64 2148943775}
!22 = !{i64 2148970735}
!23 = !{i64 2148166273}
!24 = !{i64 2148068408, i64 2148068440, i64 2148068469, i64 2148068503, i64 2148068534, i64 2148068557}
!25 = !{i64 2149015720}
